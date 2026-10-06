"""Offline regression tests; run with Python 3, no radio or third-party packages."""
import json
from pathlib import Path
import struct
import unittest

import cpsat_bcn

ROOT=Path(__file__).resolve().parents[1]


class BeaconTests(unittest.TestCase):
    def packet(self,mode,filename='bcn_ccsds.hex'):
        return bytes.fromhex((ROOT/f'mode_{mode:02d}'/filename).read_text())

    def test_recorded_modes_against_mission_decoder(self):
        for mode in range(1,11):
            with self.subTest(mode=mode):
                expected=json.loads((ROOT/f'decoder/expected/mode_{mode:02d}.json').read_text())
                actual=cpsat_bcn.decode_ccsds(self.packet(mode))
                for key,value in expected.items():
                    self.assertEqual(actual[key],value,key)
                framed=cpsat_bcn.decode_ax25(self.packet(mode,'ax25_no_fcs.hex'))
                for key,value in actual.items():
                    self.assertEqual(framed[key],value,key)

    def test_truncations_and_extra_bytes(self):
        for mode in range(1,11):
            frame=self.packet(mode,'ax25_no_fcs.hex')
            for length in range(len(frame)):
                with self.assertRaises(ValueError):
                    cpsat_bcn.decode_ax25(frame[:length])
            for extra in (b'\0',b'\0\0'):
                with self.assertRaises(ValueError):
                    cpsat_bcn.decode_ax25(frame+extra)

    def test_reject_other_mid_mode_length_and_segmentation(self):
        frame=self.packet(2,'ax25_no_fcs.hex')
        for offset,value in ((0,0),(6,2),(13,0),(13,3),(14,0),(15,0),(16,0),(18,0),(20,1),(32,0),(32,11)):
            changed=bytearray(frame)
            changed[offset]=value
            with self.subTest(offset=offset,value=value),self.assertRaises(ValueError):
                cpsat_bcn.decode_ax25(changed)

    def test_all_trs_status_values(self):
        data=bytearray(self.packet(6))
        for status in range(256):
            data[46]=status
            fields=cpsat_bcn.decode_ccsds(data)['fields']
            for name,value in [('TRANSMITTER_STATUS_IDLE',status&1),('TRANSMITTER_STATUS_BEACON',(status>>1)&1),('TRANSMITTER_STATUS_RATE',(status>>2)&3),('TRANSMITTER_STATUS_DUMMY',status>>4)]:
                self.assertEqual(fields[name]['raw'],value)

    def test_non_ascii_string_bytes_preserved(self):
        data=self.packet(6)
        decoded=cpsat_bcn.decode_ccsds(data)
        self.assertEqual(bytes.fromhex(decoded['string_bytes']['TO_CALLSIGN']),data[104:112])
        self.assertEqual(bytes.fromhex(decoded['string_bytes']['FROM_CALLSIGN']),data[112:120])
        self.assertEqual(len(decoded['warnings']),2)

    def test_non_finite_floats_rejected(self):
        for field in cpsat_bcn.SCHEMA['fields']:
            if field['type']!='FLOAT':
                continue
            data=bytearray(self.packet(field['mode']))
            start=field['bit_offset_from_ccsds_start']//8
            for value in (float('nan'),float('inf'),-float('inf')):
                data[start:start+4]=struct.pack('>f' if field['big_endian'] else '<f',value)
                with self.assertRaises(ValueError):
                    cpsat_bcn.decode_ccsds(data)


if __name__=='__main__':
    unittest.main()
