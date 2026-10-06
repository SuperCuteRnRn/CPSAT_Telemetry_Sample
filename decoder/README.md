# CPSat beacon decoder

**Chosun University | Cosmic Lighthouse Keeper Mission**

This decoder covers complete CPSat BCN packets: CCSDS MID `0x0903`, modes 1–10. It is a tested candidate for SatNOGS integration, not an accepted or deployed SatNOGS decoder. Verification uses the pre-launch indoor ground-test samples in this repository and separately identified synthetic vectors.

## Decode a sample

From the repository root, using Python 3 (standard library only):

```sh
python decoder/cpsat_bcn.py mode_02/ax25_no_fcs.hex --hex
python decoder/cpsat_bcn.py mode_02/bcn_ccsds.hex --hex --format ccsds
python -m unittest discover -s decoder -p test_decoder.py -v
```

Omit `--hex` for a binary packet file. Output is JSON containing original field names, raw values, converted values, units and state labels. Arrays remain arrays. `valid` means that the packet has the supported framing and was parsed; it does not certify the physical accuracy of its sensor values. Failed validation exits with status 1.

The input must contain one complete packet. AX.25 input uses two `CPSAT1-0` addresses, UI control `0x03` and PID `0xF0`; no digipeater address or FCS is included. HDLC flags, bit stuffing and FCS must already have been handled by the receiver. CCSDS input starts at MID `09 03` and includes the full 16-byte mission header. Other MIDs, unknown modes, fragmented packets, mismatched lengths, truncated packets and appended bytes are rejected. WAV demodulation is a separate receiver operation.

## Files

| File | Purpose |
| --- | --- |
| `cpsat_bcn.py` | Standalone Python decoder and command-line interface |
| `conversions.py` | 42 explicit mission conversion expressions; no `eval` |
| `bcn_fields.json` | 786 field definitions, including shared headers, bit offsets, endianness, units and states |
| `FIELDS.md` | Human-readable field and conversion tables |
| `cpsat.ksy` | Kaitai Struct source for a SatNOGS decoder named `cpsat` |
| `expected/` | Expected results obtained from the existing mission decoder for the ten received examples |
| `test_decoder.py` | Reproducible offline Python regression tests |
| `validation.json` | Compiler, upstream revision and cross-validation results |

## SatNOGS integration

The Kaitai specification has been compiled with Kaitai Struct 0.10 and checked with runtime 0.10, matching the inspected upstream toolchain. In a development checkout of `satnogs-decoders`, copy `cpsat.ksy` into `ksy/`, then use the upstream compilation and installation instructions. The compiled class is `Cpsat`, and the decoder identifier is `cpsat`.

The upstream `decode_frame_to_fields('cpsat', frame)` function was exercised with all ten modes. Its output contains shared header fields and only the active mode's fields. Mode-specific exported names use `m01_` through `m10_` to avoid collisions. Array elements are exported separately. Original mission field names are retained in the JSON schema and Python output; Kaitai identifiers use lowercase spelling.

Kaitai numeric conversions retain full precision. Python applies the mission's documented display rounding. Tests compare the numerical results within half that rounding step. Packed status bytes with textual display formatting remain numerical in Kaitai. Fixed-width string fields are exported as individual octets so non-ASCII received bytes are preserved.

Upstream registration requires a separate GitLab merge request and maintainer review/deployment. This GitHub repository does not register the decoder or create a Grafana dashboard. Before an upstream submission, the human contributor must review the code, confirm the right to contribute it under the upstream license, and provide their own DCO sign-off. No sign-off or license acceptance has been made on their behalf.

- [Upstream repository and build instructions](https://gitlab.com/librespacefoundation/satnogs/satnogs-decoders)
- [Adding a new data decoder](https://wiki.satnogs.org/Adding_a_new_data_decoder)
- [Contributor requirements](https://gitlab.com/librespacefoundation/satnogs/satnogs-decoders/-/blob/master/CONTRIBUTING.md)

## Validation and interpretation limits

Both decoders were compared with the existing mission decoder on all ten received samples and 50 deterministic synthetic packets. Tests also covered 1,994 malformed frames (including non-finite floating-point values) and all 256 TRS status-byte values. Synthetic inputs are parser tests, not additional RF recordings.

The mode 06 payload fields `TO_CALLSIGN` and `FROM_CALLSIGN` contain non-ASCII bytes in the received sample. These are separate from the verified `CPSAT1-0` AX.25 header addresses. Python retains the complete bytes in `string_bytes` and reports a warning; the displayed text follows the existing decoder's replacement-character behavior. Kaitai retains all eight octets. The mission team should confirm the payload field semantics and software-version agreement before treating them as valid call-sign text.

Spacecraft time is reported as raw seconds/subseconds because its epoch is unconfirmed. Missing or unusual source units are preserved and marked for review in the field table. Agreement with the mission decoder does not prove sensor calibration or independently establish every physical interpretation. HK and command packet definitions are not included.
