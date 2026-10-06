# Mode 10 — BCN_EPS2_PKT

[All BCN modes](../HEX_LAYOUT.md) · [Report](../index.html)

198 AX.25 bytes without FCS; 182 CCSDS BCN bytes. Offsets are zero-based hexadecimal and inclusive.

| Field | AX.25 frame offset | CCSDS offset | Bytes | Actual hex |
|---|---|---|---:|---|
| Destination address | 0x0000–0x0006 | — | 7 | `86 A0 A6 82 A8 62 E0` |
| Source address | 0x0007–0x000D | — | 7 | `86 A0 A6 82 A8 62 61` |
| Control (UI) | 0x000E | — | 1 | `03` |
| PID | 0x000F | — | 1 | `F0` |
| CCSDS packet ID / MID | 0x0010–0x0011 | 0x0000–0x0001 | 2 | `09 03` |
| CCSDS sequence control | 0x0012–0x0013 | 0x0002–0x0003 | 2 | `C0 14` |
| CCSDS packet length | 0x0014–0x0015 | 0x0004–0x0005 | 2 | `00 AF` |
| Seconds (raw) | 0x0016–0x0019 | 0x0006–0x0009 | 4 | `57 F7 33 3E` |
| Subseconds (raw) | 0x001A–0x001B | 0x000A–0x000B | 2 | `84 BE` |
| Spare / alignment | 0x001C–0x001F | 0x000C–0x000F | 4 | `00 00 00 00` |
| BCN mode (payload byte 0) | 0x0020 | 0x0010 | 1 | `0A` |
| Remaining BCN payload | 0x0021–0x00C5 | 0x0011–0x00B5 | 165 | `00 10 00 02 00 02 00 02 00 02 00 F3 03 F8 03 02 00 02 00 02 00 02 00 02 00 F4 03 F9 03 02 00 02 00 02 00 02 00 02 00 F7 03 F4 03 02 00 02 00 FE 00 02 00 02 00 9E 02 9F 02 02 00 02 00 FE 00 02 00 02 00 9E 02 9C 02 02 00 02 00 FF 00 02 00 02 00 9D 02 A0 02 02 00 02 00 EB 00 02 00 02 00 9D 02 9E 02 02 00 02 00 FE 00 02 00 02 00 9C 02 9E 02 02 00 02 00 35 01 7A 01 8B 01 9D 02 9E 02 02 00 02 00 FF FF FF FF FF FF FF FF FF FF 00 00 00 00 00 00 0E 0D 00 0C 00 00 00 00 00 00 00 00 00 00 10 00 00 00` |

Primary header: `09 03 C0 14 00 AF`. MID `0x0903` (APID `0x103`); sequence flags `11` (unsegmented), count 20. Length `0x00AF` = 175; total CCSDS size = 175 + 7 = 182 bytes. Time fields are raw; no UTC epoch is assumed.

## Complete AX.25 hex

```text
Offset  Bytes
0000    86 A0 A6 82 A8 62 E0 86 A0 A6 82 A8 62 61 03 F0
0010    09 03 C0 14 00 AF 57 F7 33 3E 84 BE 00 00 00 00
0020    0A 00 10 00 02 00 02 00 02 00 02 00 F3 03 F8 03
0030    02 00 02 00 02 00 02 00 02 00 F4 03 F9 03 02 00
0040    02 00 02 00 02 00 02 00 F7 03 F4 03 02 00 02 00
0050    FE 00 02 00 02 00 9E 02 9F 02 02 00 02 00 FE 00
0060    02 00 02 00 9E 02 9C 02 02 00 02 00 FF 00 02 00
0070    02 00 9D 02 A0 02 02 00 02 00 EB 00 02 00 02 00
0080    9D 02 9E 02 02 00 02 00 FE 00 02 00 02 00 9C 02
0090    9E 02 02 00 02 00 35 01 7A 01 8B 01 9D 02 9E 02
00A0    02 00 02 00 FF FF FF FF FF FF FF FF FF FF 00 00
00B0    00 00 00 00 0E 0D 00 0C 00 00 00 00 00 00 00 00
00C0    00 00 10 00 00 00
```

All byte offsets below are zero-based, inclusive and written in hexadecimal (0x). A hex pair is one byte. The entire supplied frame is AX.25: offsets 0x0000–0x000F are its address/control/PID header; the information field starts at 0x0010 and contains the complete CCSDS BCN packet. Within that packet, bytes 0x0000–0x0005 are the primary header, 0x0006–0x000B are the mission time fields, 0x000C–0x000F are spare/alignment bytes, and payload begins at 0x0010. Thus the BCN mode is at frame offset 0x0020. FCS was verified and removed by the receiver; flags and bit stuffing are also absent. No FCS bytes are appended or reconstructed here.

Both callsigns decode to CPSAT1 by shifting each of the first six address octets right by one bit. The seventh octets E0 and 61 both encode SSID 0; their address-extension bits are 0 and 1 respectively, so the source is the final address in these samples. Control 03 is UI; PID F0 indicates no layer-3 protocol. The 16-byte CPSat header includes a standard 6-byte CCSDS primary header plus mission-specific time/alignment fields; it is not a universal 16-byte CCSDS requirement.

Protocol references: [AX.25 v2.2](https://tapr.org/pdf/AX25.2.2.pdf), [CCSDS Space Packet Protocol](https://ccsds.org/Pubs/133x0b2e2.pdf).
