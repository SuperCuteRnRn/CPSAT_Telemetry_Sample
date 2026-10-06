"""Decode complete CPSat BCN packets; Python 3 standard library only.

Input is either AX.25 UI bytes after FCS removal or a complete CCSDS BCN packet.
This parser does not demodulate WAV files, check removed FCS, or reassemble fragments.
"""
import argparse
import json
import math
from pathlib import Path
import struct
import sys

from conversions import CONVERSIONS

SCHEMA=json.loads(Path(__file__).with_name('bcn_fields.json').read_text(encoding='utf-8'))
MODES={mode['mode']:mode for mode in SCHEMA['modes']}
HEADER_NAMES={'CCSDS_STREAMID','CCSDS_SEQUENCE','CCSDS_LENGTH','CCSDS_SECONDS','CCSDS_SUBSECS','SEC_HDR_ALIGN'}
CALLSIGN=bytes(value<<1 for value in b'CPSAT1')


def _scalar(data, field, offset):
    bits=field['element_bits']
    aligned=offset%8==0 and bits%8==0
    first=offset//8
    end=(offset+bits+7)//8
    if offset+bits>len(data)*8:
        raise ValueError('Field extends beyond packet')
    kind=field['type']
    if kind=='STRING':
        return data[first:end].split(b'\0',1)[0].decode('ascii',errors='replace')
    if kind=='FLOAT':
        value=struct.unpack(('>' if field['big_endian'] else '<')+{32:'f',64:'d'}[bits],data[first:end])[0]
        if not math.isfinite(value):
            raise ValueError('Non-finite float in '+field['field'])
        return value
    if aligned:
        value=int.from_bytes(data[first:end],'big' if field['big_endian'] else 'little')
    else:
        if not field['big_endian']:
            raise ValueError('Unsupported little-endian bitfield')
        value=(int.from_bytes(data[first:end],'big') >> (end*8-offset-bits)) & ((1<<bits)-1)
    if kind=='INT' and value & (1<<(bits-1)):
        value-=1<<bits
    return value


def decode_ccsds(data):
    """Return named raw/converted fields or raise ValueError on invalid BCN framing."""
    data=bytes(data)
    if len(data)<17 or len(data)>235:
        raise ValueError('Expected one complete CCSDS BCN packet (17..235 bytes)')
    mid,sequence,length=struct.unpack('>HHH',data[:6])
    if mid!=0x0903:
        raise ValueError('Only BCN MID 0x0903 is supported')
    if sequence>>14!=3:
        raise ValueError('Fragmented CCSDS packets are not supported')
    mode=data[16]
    if mode not in MODES:
        raise ValueError('Unsupported BCN mode')
    definition=MODES[mode]
    if length+7!=len(data) or len(data)!=definition['bytes_with_ccsds_header']:
        raise ValueError('CCSDS or mode-specific length mismatch')
    fields={}
    string_bytes={}
    warnings=[]
    for field in SCHEMA['fields']:
        if field['mode']!=mode or field['field'] in HEADER_NAMES:
            continue
        count=(field['array_total_bits'] or field['element_bits'])//field['element_bits']
        values=[_scalar(data,field,field['bit_offset_from_ccsds_start']+i*field['element_bits']) for i in range(count)]
        array=field['array_total_bits'] is not None
        raw=values if array else values[0]
        if field['type']=='STRING':
            start=field['bit_offset_from_ccsds_start']//8
            octets=data[start:start+field['element_bits']//8]
            string_bytes[field['field']]=octets.hex()
            if any(byte>=128 for byte in octets.split(b'\0',1)[0]):
                warnings.append(field['field']+': non-ASCII bytes; inspect string_bytes; display uses replacement characters')
        converter=CONVERSIONS.get(field['conversion'])
        converted=[converter(value) for value in values] if converter else values
        value=converted if array else converted[0]
        if not converter and field['format_string'] and not array:
            value=field['format_string'] % raw
        fields[field['field']]={'raw':raw,'value':value,'units':field['units'],
            'state':None if array else field['states'].get(str(raw)),'note':None}
    return {'profile':SCHEMA['profile'],'valid':True,'packet':definition['packet'],
            'mode':mode,'bytes':len(data),'problems':[],'field_notes':{},
            'spacecraft_seconds_raw':int.from_bytes(data[6:10],'big'),
            'spacecraft_subseconds_raw':int.from_bytes(data[10:12],'big'),
            'fields':fields,'string_bytes':string_bytes,'warnings':warnings}


def decode_ax25(data):
    """Parse the documented two-address UI envelope; input must exclude FCS."""
    data=bytes(data)
    if len(data)<33 or len(data)>251:
        raise ValueError('AX.25 frame length outside BCN limits')
    if data[:6]!=CALLSIGN or data[7:13]!=CALLSIGN:
        raise ValueError('AX.25 destination/source must be CPSAT1')
    if data[6]&0x1f!=0 or data[13]&0x1f!=1:
        raise ValueError('Expected SSID 0 and exactly two AX.25 addresses')
    if data[14:16]!=b'\x03\xf0':
        raise ValueError('Expected AX.25 UI control 0x03 and PID 0xF0')
    result=decode_ccsds(data[16:])
    result['ax25']={'destination':'CPSAT1-0','source':'CPSAT1-0','control':3,'pid':240,'fcs':'not present; must be checked by the receiver'}
    return result


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('packet',type=Path,help='One packet file; binary unless --hex is supplied')
    parser.add_argument('--hex',action='store_true',help='Read whitespace-separated hexadecimal bytes')
    parser.add_argument('--format',choices=('ax25','ccsds'),default='ax25')
    args=parser.parse_args()
    try:
        data=bytes.fromhex(args.packet.read_text(encoding='ascii')) if args.hex else args.packet.read_bytes()
        result=(decode_ax25 if args.format=='ax25' else decode_ccsds)(data)
    except (OSError,UnicodeError,ValueError) as error:
        print(json.dumps({'valid':False,'error':str(error)}),file=sys.stderr)
        return 1
    print(json.dumps(result,indent=2,allow_nan=False))
    return 0


if __name__=='__main__':
    raise SystemExit(main())
