# BCN hex and byte boundaries

All byte offsets below are zero-based, inclusive and written in hexadecimal (0x). A hex pair is one byte. The entire supplied frame is AX.25: offsets 0x0000–0x000F are its address/control/PID header; the information field starts at 0x0010 and contains the complete CCSDS BCN packet. Within that packet, bytes 0x0000–0x0005 are the primary header, 0x0006–0x000B are the mission time fields, 0x000C–0x000F are spare/alignment bytes, and payload begins at 0x0010. Thus the BCN mode is at frame offset 0x0020. FCS was verified and removed by the receiver; flags and bit stuffing are also absent. No FCS bytes are appended or reconstructed here.

Both callsigns decode to CPSAT1 by shifting each of the first six address octets right by one bit. The seventh octets E0 and 61 both encode SSID 0; their address-extension bits are 0 and 1 respectively, so the source is the final address in these samples. Control 03 is UI; PID F0 indicates no layer-3 protocol. The 16-byte CPSat header includes a standard 6-byte CCSDS primary header plus mission-specific time/alignment fields; it is not a universal 16-byte CCSDS requirement.

| Mode | Packet | Complete AX.25 hex, excluding FCS | AX.25 information / CCSDS | Mode byte |
|---|---|---|---|---|
| 01 | [BCN_INITIAL_PKT](mode_01/README.md) | 0x0000–0x00B7 | 0x0010–0x00B7 | `0x01` at `0x0020` |
| 02 | [BCN_COMMON_PKT](mode_02/README.md) | 0x0000–0x00F7 | 0x0010–0x00F7 | `0x02` at `0x0020` |
| 03 | [BCN_TEMP_PKT](mode_03/README.md) | 0x0000–0x007F | 0x0010–0x007F | `0x03` at `0x0020` |
| 04 | [BCN_EPS1_PKT](mode_04/README.md) | 0x0000–0x00AB | 0x0010–0x00AB | `0x04` at `0x0020` |
| 05 | [BCN_BAT_PKT](mode_05/README.md) | 0x0000–0x006D | 0x0010–0x006D | `0x05` at `0x0020` |
| 06 | [BCN_TRS_PKT](mode_06/README.md) | 0x0000–0x00EF | 0x0010–0x00EF | `0x06` at `0x0020` |
| 07 | [BCN_ADCS_PKT](mode_07/README.md) | 0x0000–0x00F7 | 0x0010–0x00F7 | `0x07` at `0x0020` |
| 08 | [BCN_LD_PKT](mode_08/README.md) | 0x0000–0x006F | 0x0010–0x006F | `0x08` at `0x0020` |
| 09 | [BCN_LED_PKT](mode_09/README.md) | 0x0000–0x00D9 | 0x0010–0x00D9 | `0x09` at `0x0020` |
| 10 | [BCN_EPS2_PKT](mode_10/README.md) | 0x0000–0x00C5 | 0x0010–0x00C5 | `0x0A` at `0x0020` |

Protocol references: [AX.25 v2.2](https://tapr.org/pdf/AX25.2.2.pdf), [CCSDS Space Packet Protocol](https://ccsds.org/Pubs/133x0b2e2.pdf). Mission-specific offsets are checked against the supplied BCN packet definitions and actual samples.
