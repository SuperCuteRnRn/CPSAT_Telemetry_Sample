# CPSat BCN field definitions

Offsets are zero-based bits from the start of the complete CCSDS packet. Aligned multibyte fields use the listed byte order; unaligned bit fields are MSB-first. The TRS status flags use the verified bit remapping. Source field names, units, state labels and conversions are preserved.

The spacecraft time epoch is unconfirmed. A blank unit means unspecified. Unusual source units (`i`, `xyz`, `4:3`, `0.1deg`) require mission review; no replacement physical units are inferred.

## Mode 01: BCN_INITIAL_PKT

Complete CCSDS size: 168 bytes.

| Field | Bit offset | Element bits | Count | Type | Byte/bit order | Unit | Conversion / states |
| --- | ---: | ---: | ---: | --- | --- | --- | --- |
| `CCSDS_STREAMID` | 0 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SEQUENCE` | 16 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_LENGTH` | 32 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SECONDS` | 48 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SUBSECS` | 80 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `SEC_HDR_ALIGN` | 96 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `BEACON_MODE` | 128 | 8 | 1 | UINT | LE |  | ; states: {"1": "INITIAL_DATA"} |
| `SW_VERSION` | 136 | 8 | 1 | UINT | LE |  |  |
| `BEACON_CMD_CNT` | 144 | 8 | 1 | UINT | LE |  |  |
| `BEACON_ERR_CNT` | 152 | 8 | 1 | UINT | LE |  |  |
| `MODE_INFO` | 160 | 8 | 1 | UINT | LE |  |  |
| `BEACON_FRAME` | 168 | 8 | 1 | UINT | LE |  |  |
| `CPSAT_CMD_COUNTER` | 176 | 8 | 1 | UINT | LE |  |  |
| `CPSAT_ERR_COUNTER` | 184 | 8 | 1 | UINT | LE |  |  |
| `ANT_DEPLOY_STATUS_PACKED` | 192 | 8 | 1 | UINT | LE |  | sprintf("0x%02X \| A1=%d/%d A2=%d/%d A3=%d/%d A4=%d/%d (S=stow,B=burn)", value, value&1, (value>>1)&1, (value>>2)&1, (value>>3)&1, (value>>4)&1, (value>>5)&1, (value>>6)&1, (value>>7)&1) |
| `INITIAL_FLAGS_PACKED` | 200 | 8 | 1 | UINT | LE |  |  |
| `SOLAR_DEPLOY_FLAGS` | 208 | 8 | 1 | UINT | LE |  | 0x%02X |
| `ELEV_BAND_STATE` | 216 | 8 | 1 | UINT | LE | i |  |
| `RS_ENCODE_FRAMES` | 224 | 8 | 1 | UINT | LE |  |  |
| `LEOP_NEXT_PHASE_IDX` | 232 | 8 | 1 | UINT | LE |  |  |
| `GS_ELEV_X100` | 240 | 16 | 1 | INT | LE |  | (value / 100.0).round(2) |
| `BUILD_MODE` | 256 | 8 | 1 | UINT | LE |  |  |
| `ANT_VERIFY_PACKED` | 264 | 8 | 1 | UINT | LE | 4:3 |  |
| `ANT_DEPLOY_COUNT` | 272 | 8 | 4 | UINT | LE |  |  |
| `ANT_DEPLOY_COUNT_B` | 304 | 8 | 4 | UINT | LE |  |  |
| `ANT_BURN_BUDGET_PCT` | 336 | 8 | 4 | UINT | LE |  |  |
| `ANT_LAST_DEPLOY_RESULT` | 368 | 8 | 4 | UINT | LE |  |  |
| `LAST_MISSION_REJECT_REASON` | 400 | 8 | 1 | UINT | LE |  | ; states: {"0": "NONE", "1": "UNKNOWN_ID", "2": "DISABLED", "3": "MODE_GATE", "4": "DESTRUCTIVE", "5": "NULL_TBL", "6": "SC_PUBLISH_FAIL", "7": "BATT_GATE"} |
| `BATTGATE_REJECT_COUNT` | 408 | 8 | 1 | UINT | LE |  |  |
| `BCN_SEQ_LEN` | 416 | 8 | 1 | UINT | LE |  |  |
| `BCN_SEQ` | 424 | 8 | 16 | UINT | LE |  |  |
| `DISK_STATE` | 552 | 8 | 1 | UINT | LE |  | ; states: {"0": "NORMAL", "1": "WARNING", "2": "CRITICAL"} |
| `ELEV_BAND_ARM` | 560 | 8 | 1 | UINT | LE |  |  |
| `PDM_MON_STATE` | 568 | 8 | 1 | UINT | LE |  | ; states: {"0": "IDLE", "1": "PENDING", "2": "ARMED", "3": "DRIFT", "4": "NOAPPLY"} |
| `V_BATTERY_VOLTAGE` | 576 | 16 | 1 | UINT | LE |  | ((0.008993 * value)).round(4) |
| `V_BATTERY_CURRENT` | 592 | 16 | 1 | UINT | LE |  | ((14.662757 * value)).round(4) |
| `ANT_TEMPERATURE` | 608 | 16 | 1 | UINT | LE |  | ((2100 - ((3300.0 * value)/1023))/10.9).round(2) |
| `ANT_TEMPERATURE_B` | 624 | 16 | 1 | UINT | LE |  | ((2100 - ((3300.0 * value)/1023))/10.9).round(2) |
| `ANT_DEPLOY_STATUS_A_RAW` | 640 | 16 | 1 | UINT | LE |  | sprintf("0x%04X \| A1=%d/%d/%d A2=%d/%d/%d A3=%d/%d/%d A4=%d/%d/%d (S=stow,T=tout,B=burn) \| IG=%d INDB=%d ARM=%d", value, (value>>15)&1, (value>>14)&1, (value>>13)&1, (value>>11)&1, (value>>10)&1, (value>>9)&1, (value>>7)&1, (value>>6)&1, (value>>5)&1, (value>>3)&1, (value>>2)&1, (value>>1)&1, (value>>8)&1, (value>>4)&1, value&1) |
| `ANT_DEPLOY_STATUS_B_RAW` | 656 | 16 | 1 | UINT | LE |  | sprintf("0x%04X \| A1=%d/%d/%d A2=%d/%d/%d A3=%d/%d/%d A4=%d/%d/%d (S=stow,T=tout,B=burn) \| IG=%d INDB=%d ARM=%d", value, (value>>15)&1, (value>>14)&1, (value>>13)&1, (value>>11)&1, (value>>10)&1, (value>>9)&1, (value>>7)&1, (value>>6)&1, (value>>5)&1, (value>>3)&1, (value>>2)&1, (value>>1)&1, (value>>8)&1, (value>>4)&1, value&1) |
| `ANT_DEPLOY_TIME` | 672 | 16 | 4 | UINT | LE |  |  |
| `ANT_DEPLOY_TIME_B` | 736 | 16 | 4 | UINT | LE |  |  |
| `ANT_COMMAND_COUNTER` | 800 | 16 | 1 | UINT | LE |  |  |
| `ANT_CMD_ERR_COUNTER` | 816 | 16 | 1 | UINT | LE |  |  |
| `LEOP_RECURRING_COUNT` | 832 | 16 | 1 | UINT | LE |  |  |
| `CF_DL_LAST_DURATION_S` | 848 | 16 | 1 | UINT | LE | s |  |
| `CF_DL_LAST_PDU_COUNT` | 864 | 16 | 1 | UINT | LE |  |  |
| `CF_DL_TOTAL_SESSIONS` | 880 | 16 | 1 | UINT | LE |  |  |
| `CF_DL_STUCK_COUNT` | 896 | 16 | 1 | UINT | LE |  |  |
| `PDM_INTENT_MASK` | 912 | 16 | 1 | UINT | LE |  | 0x%04X |
| `PDM_DRIFT_MASK` | 928 | 16 | 1 | UINT | LE |  | 0x%04X |
| `PDM_DRIFT_COUNT` | 944 | 16 | 1 | UINT | LE |  |  |
| `GPS_SYNC_REJECT_COUNT` | 960 | 16 | 1 | UINT | LE |  |  |
| `LAST_DRIFT_SEC_CLAMPED` | 976 | 16 | 1 | INT | LE | s |  |
| `MISSION_EXECUTE_TOTAL` | 992 | 16 | 1 | UINT | LE |  |  |
| `ORB_TLE_AGE_MIN` | 1008 | 16 | 1 | UINT | LE | min |  |
| `ORB_SAT_LAT_X100` | 1024 | 16 | 1 | INT | LE | deg | ((0.01 * value)).round(2) |
| `ORB_SAT_LON_X100` | 1040 | 16 | 1 | INT | LE | deg | ((0.01 * value)).round(2) |
| `ORB_SAT_ALT_KM_X10` | 1056 | 16 | 1 | UINT | LE | km | ((0.1 * value)).round(1) |
| `SC_RTS_EXEC_BITMAP` | 1072 | 16 | 3 | UINT | LE |  |  |
| `CF_UP_RECV_PDU` | 1120 | 16 | 1 | UINT | LE |  |  |
| `CF_UP_RECV_ERR` | 1136 | 16 | 1 | UINT | LE |  |  |
| `REBOOT_REMAINING_MIN` | 1152 | 16 | 1 | UINT | LE | min |  |
| `SCH_MISSED_TICK` | 1168 | 16 | 1 | UINT | LE |  |  |
| `HS_APPMON_ENABLES` | 1184 | 32 | 1 | UINT | LE |  | 0x%08X |
| `INITIAL_SPARE1` | 1216 | 8 | 1 | UINT | LE |  |  |
| `ORB_ACTIVE_SLOT` | 1224 | 8 | 1 | UINT | LE |  |  |
| `ORB_ECLIPSE_STATE` | 1232 | 8 | 1 | UINT | LE |  |  |
| `SC_NUM_RTS_ACTIVE` | 1240 | 8 | 1 | UINT | LE |  |  |
| `SC_RTS_ACTIVE_ERR` | 1248 | 8 | 1 | UINT | LE |  |  |
| `LC_STATE` | 1256 | 8 | 1 | UINT | LE |  | ; states: {"1": "ACTIVE", "2": "PASSIVE", "3": "DISABLED"} |
| `LC_PASSIVE_RTS_COUNT` | 1264 | 8 | 1 | UINT | LE |  |  |
| `HS_STATUS_FLAGS` | 1272 | 8 | 1 | UINT | LE |  | 0x%02X |
| `BATT_BELOW_SAFE_COUNT` | 1280 | 8 | 1 | UINT | LE |  |  |
| `BATT_BELOW_CRIT_COUNT` | 1288 | 8 | 1 | UINT | LE |  |  |
| `BATT_ABOVE_NORM_COUNT` | 1296 | 8 | 1 | UINT | LE |  |  |
| `BATT_CRIT_RECOVER_COUNT` | 1304 | 8 | 1 | UINT | LE |  |  |
| `BATT_DAILY_CRIT_RECOVER` | 1312 | 8 | 1 | UINT | LE |  |  |
| `BATT_LATCH_BITS` | 1320 | 8 | 1 | UINT | LE |  | 0x%02X |
| `SOLAR_ADC_L` | 1328 | 8 | 1 | UINT | LE |  |  |
| `SOLAR_ADC_R` | 1336 | 8 | 1 | UINT | LE |  |  |

## Mode 02: BCN_COMMON_PKT

Complete CCSDS size: 232 bytes.

| Field | Bit offset | Element bits | Count | Type | Byte/bit order | Unit | Conversion / states |
| --- | ---: | ---: | ---: | --- | --- | --- | --- |
| `CCSDS_STREAMID` | 0 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SEQUENCE` | 16 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_LENGTH` | 32 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SECONDS` | 48 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SUBSECS` | 80 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `SEC_HDR_ALIGN` | 96 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `BEACON_MODE` | 128 | 8 | 1 | UINT | LE |  | ; states: {"2": "COMMON_DATA"} |
| `BEACON_CMD_CNT` | 136 | 8 | 1 | UINT | LE |  |  |
| `BEACON_ERR_CNT` | 144 | 8 | 1 | UINT | LE |  |  |
| `ADCS_AD_MODE` | 152 | 8 | 1 | UINT | LE |  |  |
| `ADCS_AC_MODE` | 160 | 8 | 1 | UINT | LE |  |  |
| `ADCS_STATUS` | 168 | 8 | 1 | UINT | LE |  | ; states: {"0": "TASK_PROCESSING", "10": "TASK_SETTLED", "20": "TASK_INVALID_DIPOLE", "21": "TASK_INVALID_TORQUE", "49": "TASK_INCAPABLE"} |
| `GPS_POWER_STATUS` | 176 | 8 | 1 | UINT | LE |  |  |
| `CF_DL_STATE` | 184 | 8 | 1 | UINT | LE |  |  |
| `SW_VERSION` | 192 | 8 | 1 | UINT | LE |  |  |
| `GET_EPS_AUTO_SW_RESET` | 200 | 8 | 1 | UINT | LE |  |  |
| `GET_BAT_AUTO_SW_RESET` | 208 | 8 | 1 | UINT | LE |  |  |
| `MODE_INFO` | 216 | 8 | 1 | UINT | LE |  |  |
| `BEACON_FRAME` | 224 | 8 | 1 | UINT | LE |  |  |
| `CPSAT_CMD_COUNTER` | 232 | 8 | 1 | UINT | LE |  |  |
| `CPSAT_ERR_COUNTER` | 240 | 8 | 1 | UINT | LE |  |  |
| `SRC_STALE_BITS` | 248 | 8 | 1 | UINT | LE |  |  |
| `MTQ_PWM_X` | 256 | 16 | 1 | UINT | LE |  |  |
| `MTQ_PWM_Y` | 272 | 16 | 1 | UINT | LE |  |  |
| `MTQ_PWM_Z` | 288 | 16 | 1 | UINT | LE |  |  |
| `CPU_THROUGHPUT` | 304 | 16 | 1 | UINT | LE |  |  |
| `V_BATTERY_VOLTAGE` | 320 | 16 | 1 | UINT | LE |  | ((0.008993 * value)).round(4) |
| `V_BATTERY_CURRENT` | 336 | 16 | 1 | UINT | LE |  | ((14.662757 * value)).round(4) |
| `V_BAT_5_V_VOLTAGE` | 352 | 16 | 1 | UINT | LE |  | ((0.005865 * value)).round(4) |
| `V_BAT_5_V_CURRENT` | 368 | 16 | 1 | UINT | LE |  | ((1.327547 * value)).round(4) |
| `V_BAT_3V3_VOLTAGE` | 384 | 16 | 1 | UINT | LE |  | ((0.004311 * value)).round(4) |
| `V_BAT_3V3_CURRENT` | 400 | 16 | 1 | UINT | LE |  | ((1.327547 * value)).round(4) |
| `RW_WHEEL_VEL_X` | 416 | 16 | 1 | UINT | LE |  |  |
| `RW_WHEEL_VEL_Y` | 432 | 16 | 1 | UINT | LE |  |  |
| `RW_WHEEL_VEL_Z` | 448 | 16 | 1 | UINT | LE |  |  |
| `GYRO_W_X` | 464 | 16 | 1 | INT | LE |  | ((0.01 * value)).round(4) |
| `GYRO_W_Y` | 480 | 16 | 1 | INT | LE |  | ((0.01 * value)).round(4) |
| `GYRO_W_Z` | 496 | 16 | 1 | INT | LE |  | ((0.01 * value)).round(4) |
| `MTM_MAG_X` | 512 | 16 | 1 | INT | LE |  | ((0.01 * value)).round(4) |
| `MTM_MAG_Y` | 528 | 16 | 1 | INT | LE |  | ((0.01 * value)).round(4) |
| `MTM_MAG_Z` | 544 | 16 | 1 | INT | LE |  | ((0.01 * value)).round(4) |
| `ACCEL_X` | 560 | 16 | 1 | INT | LE |  |  |
| `ACCEL_Y` | 576 | 16 | 1 | INT | LE |  |  |
| `ACCEL_Z` | 592 | 16 | 1 | INT | LE |  |  |
| `ADCS_GYRO_X` | 608 | 16 | 1 | INT | LE |  |  |
| `ADCS_GYRO_Y` | 624 | 16 | 1 | INT | LE |  |  |
| `ADCS_GYRO_Z` | 640 | 16 | 1 | INT | LE |  |  |
| `ADCS_MAG_X` | 656 | 16 | 1 | INT | LE |  |  |
| `ADCS_MAG_Y` | 672 | 16 | 1 | INT | LE |  |  |
| `ADCS_MAG_Z` | 688 | 16 | 1 | INT | LE |  |  |
| `STORAGE_SPACE_STATUS` | 704 | 32 | 1 | UINT | LE |  |  |
| `ON_BOARD_TIME` | 736 | 32 | 1 | UINT | LE |  |  |
| `GET_TRS_UPTIME` | 768 | 32 | 1 | UINT | LE |  |  |
| `GET_RCV_UPTIME` | 800 | 32 | 1 | UINT | LE |  |  |
| `ADCS_QUAT_W` | 832 | 32 | 1 | UINT | LE |  | ((value >= 2147483648 ? value - 4294967296 : value) / 1073741824.0).round(6) |
| `ADCS_QUAT_X` | 864 | 32 | 1 | UINT | LE |  | ((value >= 2147483648 ? value - 4294967296 : value) / 1073741824.0).round(6) |
| `ADCS_QUAT_Y` | 896 | 32 | 1 | UINT | LE |  | ((value >= 2147483648 ? value - 4294967296 : value) / 1073741824.0).round(6) |
| `ADCS_QUAT_Z` | 928 | 32 | 1 | UINT | LE |  | ((value >= 2147483648 ? value - 4294967296 : value) / 1073741824.0).round(6) |
| `GPS_POS_X` | 960 | 32 | 1 | INT | LE |  |  |
| `GPS_POS_Y` | 992 | 32 | 1 | INT | LE |  |  |
| `GPS_POS_Z` | 1024 | 32 | 1 | INT | LE |  |  |
| `GPS_VEL_X` | 1056 | 32 | 1 | INT | LE |  |  |
| `GPS_VEL_Y` | 1088 | 32 | 1 | INT | LE |  |  |
| `GPS_VEL_Z` | 1120 | 32 | 1 | INT | LE |  |  |
| `BATT_MODE_CURRENT` | 1152 | 8 | 1 | UINT | LE |  | ; states: {"1": "CRITICAL", "2": "SAFE", "3": "NORMAL"} |
| `BATT_MODE_RECOMMENDED` | 1160 | 8 | 1 | UINT | LE |  | ; states: {"1": "CRITICAL", "2": "SAFE", "3": "NORMAL"} |
| `CF_DL_LAST_EXIT_REASON` | 1168 | 8 | 1 | UINT | LE |  |  |
| `BATT_VOLTAGE_SOURCE` | 1176 | 8 | 1 | UINT | LE |  | ; states: {"0": "NONE", "1": "BAT", "2": "EPS_FB"} |
| `BATT_LAST_KNOWN_MV` | 1184 | 16 | 1 | UINT | LE | Millivolts |  |
| `STATUS_SUMMARY` | 1200 | 8 | 1 | UINT | LE |  | 0x%02X |
| `SOC_PCT` | 1208 | 8 | 1 | UINT | LE |  |  |
| `EVS_CNT_DEBUG` | 1216 | 16 | 1 | UINT | LE |  |  |
| `EVS_CNT_INFO` | 1232 | 16 | 1 | UINT | LE |  |  |
| `EVS_CNT_ERROR` | 1248 | 16 | 1 | UINT | LE |  |  |
| `EVS_CNT_CRITICAL` | 1264 | 16 | 1 | UINT | LE |  |  |
| `RECENT_ERR_EVENTS` | 1280 | 8 | 32 | UINT | LE |  |  |
| `LAST_CRITICAL_MSG_SNIPPET` | 1536 | 64 | 1 | STRING | LE |  |  |
| `LAST_CRITICAL_APP_EVENT` | 1600 | 16 | 1 | UINT | LE |  |  |
| `LAST_CRITICAL_TICK_OFFSET` | 1616 | 16 | 1 | UINT | LE |  |  |
| `LD_APP_STATE` | 1632 | 8 | 1 | UINT | LE |  |  |
| `LD_FAULT_STATE` | 1640 | 8 | 1 | UINT | LE |  |  |
| `LD_LAST_DRV_ERR` | 1648 | 8 | 1 | UINT | LE |  |  |
| `LED_APP_STATE` | 1656 | 8 | 1 | UINT | LE |  |  |
| `LED_FAULT_STATE` | 1664 | 8 | 1 | UINT | LE |  |  |
| `CPSAT_BATT_AUTOMGMT_ENABLED` | 1672 | 8 | 1 | UINT | LE |  |  |
| `CPSAT_BATT_VOLTAGE_SOURCE_V2` | 1680 | 8 | 1 | UINT | LE |  |  |
| `SOC_STATUS` | 1688 | 8 | 1 | UINT | LE |  |  |
| `I2_C_ERROR_COUNT` | 1696 | 32 | 1 | UINT | LE |  |  |
| `UART_ERROR_COUNT` | 1728 | 32 | 1 | UINT | LE |  |  |
| `BATT_BAT_HK_STALE_TICKS` | 1760 | 16 | 1 | UINT | LE |  |  |
| `BATT_EPS_HK_STALE_TICKS` | 1776 | 16 | 1 | UINT | LE |  |  |
| `CPSAT_CMD_CNT` | 1792 | 16 | 1 | UINT | LE |  |  |
| `CPSAT_ERR_CNT` | 1808 | 16 | 1 | UINT | LE |  |  |
| `CPSAT_BOOT_COUNT` | 1824 | 32 | 1 | UINT | LE |  |  |

## Mode 03: BCN_TEMP_PKT

Complete CCSDS size: 112 bytes.

| Field | Bit offset | Element bits | Count | Type | Byte/bit order | Unit | Conversion / states |
| --- | ---: | ---: | ---: | --- | --- | --- | --- |
| `CCSDS_STREAMID` | 0 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SEQUENCE` | 16 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_LENGTH` | 32 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SECONDS` | 48 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SUBSECS` | 80 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `SEC_HDR_ALIGN` | 96 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `BEACON_MODE` | 128 | 8 | 1 | UINT | LE |  | ; states: {"3": "TEMP_DATA"} |
| `GS_ELEV_DEG_S8` | 136 | 8 | 1 | INT | LE | deg |  |
| `GS_ELEV_PHASE` | 144 | 8 | 1 | UINT | LE |  | ; states: {"0": "UNK", "1": "RISING", "2": "FALLING"} |
| `CPSAT_CMD_COUNTER` | 152 | 8 | 1 | UINT | LE |  |  |
| `CPSAT_ERR_COUNTER` | 160 | 8 | 1 | UINT | LE |  |  |
| `PEDDING1` | 168 | 8 | 1 | UINT | LE |  |  |
| `BAT_MOTHERBOARD_TEMPERATURE` | 176 | 16 | 1 | UINT | LE |  | ((0.372434 * value)-273.15).round(4) |
| `BAT_DAUGHTERBOARD_TEMP` | 192 | 16 | 4 | UINT | LE |  |  |
| `EPS_BCR1_SA1_A_TEMP` | 256 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR1_SA1_B_TEMP` | 272 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR2_SA2_A_TEMP` | 288 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR2_SA2_B_TEMP` | 304 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR3_SA3_A_TEMP` | 320 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR3_SA3_B_TEMP` | 336 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR4_SA4_A_TEMP` | 352 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR4_SA4_B_TEMP` | 368 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR5_SA5_A_TEMP` | 384 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR5_SA5_B_TEMP` | 400 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR6_SA6_A_TEMP` | 416 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR6_SA6_B_TEMP` | 432 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR7_SA7_A_TEMP` | 448 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR7_SA7_B_TEMP` | 464 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR8_SA8_A_TEMP` | 480 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR8_SA8_B_TEMP` | 496 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR9_SA9_A_TEMP` | 512 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR9_SA9_B_TEMP` | 528 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_MOTHERBOARD_TEMPERATURE` | 544 | 16 | 1 | UINT | LE |  | ((0.372434 * value)-273.15).round(4) |
| `EPS_DAUGHTERBOARD_TEMP` | 560 | 16 | 1 | UINT | LE |  | ((0.372434 * value)-273.15).round(4) |
| `ANT_TEMP` | 576 | 16 | 1 | UINT | LE |  |  |
| `POWER_AMPLIFIER_TEMPERATURE` | 592 | 16 | 1 | UINT | LE |  | ((-0.07669* value)+195.6307).round(4) |
| `LOCAL_OSCILLATOR_TEMPERATURE` | 608 | 16 | 1 | UINT | LE |  | ((-0.07669* value)+195.6307).round(4) |
| `OBC_TEMP_DC` | 624 | 16 | 1 | INT | LE |  | (value == 32767) ? 3276.7 : (value * 0.1).round(1) |
| `BEACON_FRAME` | 640 | 32 | 1 | UINT | LE |  |  |
| `ADCS_MTQ_TEMP_CORE` | 672 | 16 | 1 | INT | LE |  |  |
| `ADCS_MTQ_TEMP_ONBOARD` | 688 | 16 | 1 | INT | LE |  |  |
| `TEMP_BAT_MOTHER_PEAK` | 704 | 16 | 1 | UINT | LE |  |  |
| `TEMP_BAT_MOTHER_MIN` | 720 | 16 | 1 | UINT | LE |  |  |
| `TEMP_BAT_DAUGHTER_AVG_PEAK` | 736 | 16 | 1 | UINT | LE |  |  |
| `TEMP_BAT_DAUGHTER_AVG_MIN` | 752 | 16 | 1 | UINT | LE |  |  |
| `TEMP_EPS_MOTHER_PEAK` | 768 | 16 | 1 | UINT | LE |  |  |
| `TEMP_EPS_MOTHER_MIN` | 784 | 16 | 1 | UINT | LE |  |  |
| `TEMP_PA_PEAK` | 800 | 16 | 1 | UINT | LE |  |  |
| `PA_OVERTEMP_EDGE_COUNT` | 816 | 16 | 1 | UINT | LE |  |  |
| `TEMP_HK_STALE_TICKS` | 832 | 8 | 1 | UINT | LE |  |  |
| `TEMP_PAD` | 840 | 8 | 3 | UINT | LE |  |  |
| `ICM_TEMP` | 864 | 16 | 1 | INT | LE |  | (value / 326.8 + 20).round(4) |
| `MTM_TEMP` | 880 | 8 | 1 | UINT | LE |  | (-75.0 + value * (200.0 / 255.0)).round(4) |
| `IMU_TEMP_PAD` | 888 | 8 | 1 | UINT | LE |  |  |

## Mode 04: BCN_EPS1_PKT

Complete CCSDS size: 156 bytes.

| Field | Bit offset | Element bits | Count | Type | Byte/bit order | Unit | Conversion / states |
| --- | ---: | ---: | ---: | --- | --- | --- | --- |
| `CCSDS_STREAMID` | 0 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SEQUENCE` | 16 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_LENGTH` | 32 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SECONDS` | 48 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SUBSECS` | 80 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `SEC_HDR_ALIGN` | 96 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `BEACON_MODE` | 128 | 8 | 1 | UINT | LE |  | ; states: {"4": "EPS1_DATA"} |
| `EPS_CMD_COUNTER` | 136 | 8 | 1 | UINT | LE |  |  |
| `EPS_ERR_COUNTER` | 144 | 8 | 1 | UINT | LE |  |  |
| `GET_EPS_AUTO_SW_RESET_COUNT` | 152 | 8 | 1 | UINT | LE |  |  |
| `GET_EPS_W_RESET_COUNT` | 160 | 8 | 1 | UINT | LE |  |  |
| `PEDDING1` | 168 | 8 | 1 | UINT | LE |  |  |
| `GET_BOARD_STATUS` | 176 | 16 | 1 | UINT | LE |  | 0x%04X |
| `GET_LAST_MOTHER_ERROR_STATUS` | 192 | 16 | 1 | UINT | LE |  |  |
| `GET_LAST_DAUGHTER_ERROR_STATUS` | 208 | 16 | 1 | UINT | LE |  |  |
| `EPS_PDM_ACTUAL_STATE` | 224 | 16 | 1 | UINT | LE |  | 0x%04X |
| `EPS_PDM_EXPECTED_STATE` | 240 | 16 | 1 | UINT | LE |  | 0x%04X |
| `EPS_PDM_INITIAL_STATE` | 256 | 16 | 1 | UINT | LE |  | 0x%04X |
| `BCR_OUTPUT_CURRENT` | 272 | 16 | 1 | UINT | LE |  | ((0.014662757 * value)).round(4) |
| `BCR_OUTPUT_VOLTAGE` | 288 | 16 | 1 | UINT | LE |  | ((0.008993157 * value)).round(4) |
| `EPS_DRAW_3_V3_CURRENT` | 304 | 16 | 1 | UINT | LE |  | ((0.001327547 * value)).round(4) |
| `EPS_DRAW_5_V_CURRENT` | 320 | 16 | 1 | UINT | LE |  | ((0.001327547 * value)).round(4) |
| `EPS_OUTPUT_12_V_BUS_CURRENT` | 336 | 16 | 1 | UINT | LE |  | ((0.002066632361 * value)).round(4) |
| `EPS_OUTPUT_12_V_BUS_VOLTAGE` | 352 | 16 | 1 | UINT | LE |  | ((0.01349 * value)).round(4) |
| `EPS_OUTPUT_BAT_CURRENT` | 368 | 16 | 1 | UINT | LE |  | ((0.00681988679 * value)).round(4) |
| `EPS_OUTPUT_BAT_VOLTAGE` | 384 | 16 | 1 | UINT | LE |  | ((0.008978 * value)).round(4) |
| `EPS_OUTPUT_5_V_BUS_CURRENT` | 400 | 16 | 1 | UINT | LE |  | ((0.00681988679 * value)).round(4) |
| `EPS_OUTPUT_5_V_BUS_VOLTAGE` | 416 | 16 | 1 | UINT | LE |  | ((0.005865 * value)).round(4) |
| `EPS_OUTPUT_3_V3_BUS_CURRENT` | 432 | 16 | 1 | UINT | LE |  | ((0.00681988679 * value)).round(4) |
| `EPS_OUTPUT_3_V3_BUS_VOLTAGE` | 448 | 16 | 1 | UINT | LE |  | ((0.004311 * value)).round(4) |
| `SOLAR_PANEL_PDM_SW_1_VOLTAGE` | 464 | 16 | 1 | UINT | LE |  | ((0.01349 * value)).round(4) |
| `RW_PDM_SW_2_VOLTAGE` | 480 | 16 | 1 | UINT | LE |  | ((0.01349 * value)).round(4) |
| `LD_PDM_SW_3_VOLTAGE` | 496 | 16 | 1 | UINT | LE |  | ((0.008993 * value)).round(4) |
| `LED_PDM_SW_4_VOLTAGE` | 512 | 16 | 1 | UINT | LE |  | ((0.008993 * value)).round(4) |
| `DUMMY_PDM_SW_5_VOLTAGE` | 528 | 16 | 1 | UINT | LE |  | ((0.005865 * value)).round(4) |
| `ST_PDM_SW_6_VOLTAGE` | 544 | 16 | 1 | UINT | LE |  | ((0.005865 * value)).round(4) |
| `MTQ5V_PDM_SW_7_VOLTAGE` | 560 | 16 | 1 | UINT | LE |  | ((0.005865 * value)).round(4) |
| `ANT_PDM_SW_8_VOLTAGE` | 576 | 16 | 1 | UINT | LE |  | ((0.004311 * value)).round(4) |
| `DUMMY_PDM_SW_9_VOLTAGE` | 592 | 16 | 1 | UINT | LE |  | ((0.004311 * value)).round(4) |
| `MTQ3V_PDM_SW_10_VOLTAGE` | 608 | 16 | 1 | UINT | LE |  | ((0.004311 * value)).round(4) |
| `SOLAR_PANEL_PDM_SW_1_CURRENT` | 624 | 16 | 1 | UINT | LE |  | ((0.001328 * value)).round(4) |
| `RW_PDM_SW_2_CURRENT` | 640 | 16 | 1 | UINT | LE |  | ((0.001328 * value)).round(4) |
| `LD_PDM_SW_3_CURRENT` | 656 | 16 | 1 | UINT | LE |  | ((0.006239 * value)).round(4) |
| `LED_PDM_SW_4_CURRENT` | 672 | 16 | 1 | UINT | LE |  | ((0.006239 * value)).round(4) |
| `DUMMY_PDM_SW_5_CURRENT` | 688 | 16 | 1 | UINT | LE |  | ((0.001328 * value)).round(4) |
| `ST_PDM_SW_6_CURRENT` | 704 | 16 | 1 | UINT | LE |  | ((0.001328 * value)).round(4) |
| `MTQ5V_PDM_SW_7_CURRENT` | 720 | 16 | 1 | UINT | LE |  | ((0.001328 * value)).round(4) |
| `ANT_PDM_SW_8_CURRENT` | 736 | 16 | 1 | UINT | LE |  | ((0.001328 * value)).round(4) |
| `DUMMY_PDM_SW_9_CURRENT` | 752 | 16 | 1 | UINT | LE |  | ((0.001328 * value)).round(4) |
| `MTQ3V_PDM_SW_10_CURRENT` | 768 | 16 | 1 | UINT | LE |  | ((0.001328 * value)).round(4) |
| `EPS_MOTHERBOARD_TEMP` | 784 | 16 | 1 | UINT | LE |  | ((0.372434 * value)-273.15).round(4) |
| `EPS_DAUGHTERBOARD_TEMP` | 800 | 16 | 1 | UINT | LE |  | ((0.372434 * value)-273.15).round(4) |
| `GET_EPS_BROWN_RESET_COUNT` | 816 | 16 | 1 | UINT | LE |  |  |
| `GET_EPS_MANUAL_RESET_COUNT` | 832 | 16 | 1 | UINT | LE |  |  |
| `EPS_STATIC_VERSION` | 848 | 16 | 1 | UINT | LE |  |  |
| `EPS_STATIC_CHECKSUM` | 864 | 16 | 1 | UINT | LE |  | 0x%04X |
| `EPS_STATIC_FIRMWARE_REV` | 880 | 16 | 1 | UINT | LE |  |  |
| `EPS_STATIC_WDT_PERIOD` | 896 | 16 | 1 | UINT | LE |  |  |
| `EPS_PEAK_BUS_CURRENT` | 912 | 16 | 4 | UINT | LE |  |  |
| `EPS_MIN_BAT_VOLTAGE` | 976 | 16 | 1 | UINT | LE |  |  |
| `EPS_TBRD_MOTHER_MIN` | 992 | 16 | 1 | UINT | LE |  |  |
| `EPS_TBRD_MOTHER_MAX` | 1008 | 16 | 1 | UINT | LE |  |  |
| `EPS_PDM_LCL_TRIP_COUNT` | 1024 | 8 | 10 | UINT | LE |  |  |
| `EPS_I2_C_STALE_COUNT` | 1104 | 16 | 1 | UINT | LE |  |  |
| `EPS_HK_TRACK_SPARE` | 1120 | 16 | 1 | UINT | LE |  |  |
| `PADDING_AUTO_1` | 1136 | 8 | 2 | UINT | LE |  |  |
| `EPS_ENERGY_OUTPUT_TOTAL` | 1152 | 32 | 1 | UINT | LE |  |  |
| `EPS_ENERGY_SOLAR_TOTAL` | 1184 | 32 | 1 | UINT | LE |  |  |
| `SOC_PCT` | 1216 | 8 | 1 | UINT | LE | % |  |
| `SOC_STATUS` | 1224 | 8 | 1 | UINT | LE |  | ; states: {"0": "OK", "1": "NOT_INIT", "2": "BAT_STALE", "3": "INPUT_OOR", "4": "ALGO_NULL", "5": "ALGO_VPACK", "6": "ALGO_TCELL", "7": "ALGO_CRATE"} |
| `PAD_TAIL` | 1232 | 8 | 2 | UINT | LE |  |  |

## Mode 05: BCN_BAT_PKT

Complete CCSDS size: 94 bytes.

| Field | Bit offset | Element bits | Count | Type | Byte/bit order | Unit | Conversion / states |
| --- | ---: | ---: | ---: | --- | --- | --- | --- |
| `CCSDS_STREAMID` | 0 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SEQUENCE` | 16 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_LENGTH` | 32 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SECONDS` | 48 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SUBSECS` | 80 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `SEC_HDR_ALIGN` | 96 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `BEACON_MODE` | 128 | 8 | 1 | UINT | LE |  | ; states: {"5": "BAT_DATA"} |
| `ADCS_TIME_FLAGS` | 136 | 8 | 1 | UINT | LE |  |  |
| `ADCS_DRIFT_MIN_U8` | 144 | 8 | 1 | UINT | LE | min |  |
| `BAT_COMMAND_COUNTER` | 152 | 8 | 1 | UINT | LE |  |  |
| `BAT_CMD_ERR_COUNTER` | 160 | 8 | 1 | UINT | LE |  |  |
| `BAT_WDT_RESET_COUNTER` | 168 | 8 | 1 | UINT | LE |  |  |
| `BAT_AUTO_SOFTWARE_RESET_COUNTER` | 176 | 8 | 1 | UINT | LE |  |  |
| `BAT_GET_MANUAL_RESET_COUNTER` | 184 | 8 | 1 | UINT | LE |  |  |
| `BAT_GET_HEATER_CONTROLLER_STATUS` | 192 | 8 | 1 | UINT | LE |  |  |
| `BAT_GET_BOARD_STATUS` | 200 | 8 | 1 | UINT | LE |  |  |
| `BAT_GET_LAST_ERROR` | 208 | 8 | 1 | UINT | LE |  |  |
| `SPARE` | 216 | 8 | 1 | UINT | LE |  |  |
| `BAT_GET_VERSION` | 224 | 16 | 1 | UINT | LE |  |  |
| `BAT_GET_CHECKSUM` | 240 | 16 | 1 | UINT | LE |  |  |
| `BATTERY_OUTPUT_VOLTAGE` | 256 | 16 | 1 | UINT | LE |  | ((0.008993 * value)).round(4) |
| `BATTERY_CURRENT_MAGNITUDE` | 272 | 16 | 1 | UINT | LE |  | ((14.662757 * value)).round(4) |
| `BATTERY_CURRENT_DIRECTION` | 288 | 16 | 1 | UINT | LE |  |  |
| `MOTHERBOARD_TEMPERATURE` | 304 | 16 | 1 | UINT | LE |  | ((0.372434* value)-273.15).round(4) |
| `CURRENT_DRAW_5V_BUS` | 320 | 16 | 1 | UINT | LE |  | ((1.327547 * value)).round(4) |
| `OUTPUT_VOLTAGE_5V_BUS` | 336 | 16 | 1 | UINT | LE |  | ((0.005865 * value)).round(4) |
| `CURRENT_DRAW_3V3_BUS` | 352 | 16 | 1 | UINT | LE |  | ((1.327547 * value)).round(4) |
| `OUTPUT_VOLTAGE_3V3_BUS` | 368 | 16 | 1 | UINT | LE |  | ((0.004311 * value)).round(4) |
| `DAUGHTERBOARD_TEMP` | 384 | 16 | 4 | UINT | LE |  | ((0.397600 * value)-238.57).round(4) |
| `DAUGHTERBOARD_HEATER_STATUS` | 448 | 16 | 4 | UINT | LE |  |  |
| `BAT_VOLTAGE_PEAK` | 512 | 16 | 1 | UINT | LE |  | ((0.008993 * value)).round(4) |
| `BAT_VOLTAGE_MIN` | 528 | 16 | 1 | UINT | LE |  | ((0.008993 * value)).round(4) |
| `BAT_CURRENT_PEAK_MAG` | 544 | 16 | 1 | UINT | LE |  | ((14.662757 * value)).round(4) |
| `BAT_MOTHER_TEMP_PEAK` | 560 | 16 | 1 | UINT | LE |  | ((0.372434 * value)-273.15).round(4) |
| `BAT_MOTHER_TEMP_MIN` | 576 | 16 | 1 | UINT | LE |  | ((0.372434 * value)-273.15).round(4) |
| `BAT_DAUGHTER_TEMP_PEAK` | 592 | 16 | 4 | UINT | LE |  | ((0.397600 * value)-238.57).round(4) |
| `BAT_HEATER_ON_EDGE_COUNT` | 656 | 16 | 1 | UINT | LE |  |  |
| `BAT_LAST_ERROR_LATCH` | 672 | 8 | 1 | UINT | LE |  |  |
| `BAT_HK_STALE_TICKS` | 680 | 8 | 1 | UINT | LE |  |  |
| `BAT_FILTER_STALE_CONSEC` | 688 | 8 | 1 | UINT | LE |  |  |
| `BAT_FILTER_ENABLED` | 696 | 8 | 1 | UINT | LE |  | ; states: {"0": "BYPASS", "1": "ENABLED"} |
| `BAT_FDIR_LATCH` | 704 | 8 | 1 | UINT | LE |  | 0x%02X |
| `BAT_BOARD_STATUS_STICKY` | 712 | 8 | 1 | UINT | LE |  | 0x%02X |
| `BAT_UNDERVOLT_COUNT` | 720 | 8 | 1 | UINT | LE |  |  |
| `BAT_TEMP_OOR_COUNT` | 728 | 8 | 1 | UINT | LE |  |  |
| `BAT_CRATE_EXCEED_COUNT` | 736 | 8 | 1 | UINT | LE |  |  |
| `BAT_FDIR_SPARE` | 744 | 8 | 1 | UINT | LE |  |  |

## Mode 06: BCN_TRS_PKT

Complete CCSDS size: 224 bytes.

| Field | Bit offset | Element bits | Count | Type | Byte/bit order | Unit | Conversion / states |
| --- | ---: | ---: | ---: | --- | --- | --- | --- |
| `CCSDS_STREAMID` | 0 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SEQUENCE` | 16 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_LENGTH` | 32 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SECONDS` | 48 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SUBSECS` | 80 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `SEC_HDR_ALIGN` | 96 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `BEACON_MODE` | 128 | 8 | 1 | UINT | LE |  | ; states: {"6": "TRS_DATA"} |
| `RS_ENCODE_FRAMES` | 136 | 8 | 1 | UINT | LE |  |  |
| `TRX_RECONFIG_CNT8` | 144 | 8 | 1 | UINT | LE |  |  |
| `SPARE` | 152 | 8 | 1 | UINT | LE |  |  |
| `INSTANTANEOUS_DOPPLER_OFFSET` | 160 | 16 | 1 | INT | LE |  | ((value * 38.15)).round(4) |
| `INSTANTANEOUS_SIGNAL_STRENGTH` | 176 | 16 | 1 | INT | LE |  | ((value * -0.5 -22 )).round(4) |
| `INSTANTANEOUS_RF_REFLECTED_POWER` | 192 | 16 | 1 | UINT | LE |  | ((value * value * 0.00005887)).round(4) |
| `INSTANTANEOUS_RF_FORWARD_POWER` | 208 | 16 | 1 | UINT | LE |  | ((value * value * 0.00005887)).round(4) |
| `POWER_BUS_VOLTAGE` | 224 | 16 | 1 | UINT | LE |  | ((0.00488* value)).round(4) |
| `TOTAL_SUPPLY_CURRENT` | 240 | 16 | 1 | UINT | LE |  | ((0.3152* value)).round(4) |
| `TRANSMITTER_CURRENT` | 256 | 16 | 1 | UINT | LE |  | ((0.3152* value)).round(4) |
| `RECEIVER_CURRENT` | 272 | 16 | 1 | UINT | LE |  | ((0.3152* value)).round(4) |
| `POWER_AMPLIFIER_CURRENT` | 288 | 16 | 1 | UINT | LE |  | ((0.3152* value)).round(4) |
| `POWER_AMPLIFIER_TEMPERATURE` | 304 | 16 | 1 | UINT | LE |  | ((-0.07669* value)+195.6307).round(4) |
| `LOCAL_OSCILLATOR_TEMPERATURE` | 320 | 16 | 1 | UINT | LE |  | ((-0.07669* value)+195.6307).round(4) |
| `LAST_INSTANTANEOUS_DOPPLER_OFFSET` | 336 | 16 | 1 | INT | LE |  | ((value * 38.15)).round(4) |
| `LAST_INSTANTANEOUS_SIGNAL_STRENGTH` | 352 | 16 | 1 | INT | LE |  | ((value * -0.5 -22 )).round(4) |
| `TRANSMITTER_STATUS_IDLE` | 375 | 1 | 1 | UINT | BE / MSB-first |  |  |
| `TRANSMITTER_STATUS_BEACON` | 374 | 1 | 1 | UINT | BE / MSB-first |  |  |
| `TRANSMITTER_STATUS_RATE` | 372 | 2 | 1 | UINT | BE / MSB-first |  |  |
| `TRANSMITTER_STATUS_DUMMY` | 368 | 4 | 1 | UINT | BE / MSB-first |  |  |
| `PA_OVERTEMP_FLAG` | 376 | 8 | 1 | UINT | LE |  |  |
| `COMMAND_COUNTER` | 384 | 16 | 1 | UINT | LE |  |  |
| `CMD_ERR_COUNTER` | 400 | 16 | 1 | UINT | LE |  |  |
| `RECEIVER_UPTIME` | 416 | 32 | 1 | UINT | LE |  |  |
| `TRANSMITTER_UPTIME` | 448 | 32 | 1 | UINT | LE |  |  |
| `RCV_PLL_LOCK_ERR` | 480 | 16 | 1 | UINT | LE |  |  |
| `TRS_PLL_LOCK_ERR` | 496 | 16 | 1 | UINT | LE |  |  |
| `RCV_LAST_RESET_CAUSE` | 512 | 8 | 1 | UINT | LE |  |  |
| `TRS_LAST_RESET_CAUSE` | 520 | 8 | 1 | UINT | LE |  |  |
| `RESET_CAUSE_SPARE` | 528 | 8 | 2 | UINT | LE |  |  |
| `SEND_FRAME_FAIL_COUNT` | 544 | 16 | 1 | UINT | LE |  |  |
| `SPARE_ALIGN` | 560 | 8 | 2 | UINT | LE |  |  |
| `RCV_PLL_FREQ_ERR` | 576 | 16 | 1 | UINT | LE |  |  |
| `TRS_PLL_FREQ_ERR` | 592 | 16 | 1 | UINT | LE |  |  |
| `RF_RSSI_PEAK` | 608 | 16 | 1 | UINT | LE |  |  |
| `RF_RSSI_MIN` | 624 | 16 | 1 | UINT | LE |  |  |
| `RF_DOPPLER_PEAK_ABS` | 640 | 16 | 1 | INT | LE |  |  |
| `RF_RF_FWD_PEAK` | 656 | 16 | 1 | UINT | LE |  |  |
| `RF_RF_REFL_PEAK` | 672 | 16 | 1 | UINT | LE |  |  |
| `RF_PA_TEMP_PEAK` | 688 | 16 | 1 | UINT | LE |  |  |
| `RF_PLL_LOCK_ERR_PEAK_RCV` | 704 | 16 | 1 | UINT | LE |  |  |
| `RF_PLL_LOCK_ERR_PEAK_TRS` | 720 | 16 | 1 | UINT | LE |  |  |
| `RF_HK_STALE_TICKS` | 736 | 8 | 1 | UINT | LE |  |  |
| `RF_PAD1` | 744 | 8 | 3 | UINT | LE |  |  |
| `RCV_FREQUENCY_KHZ` | 768 | 32 | 1 | UINT | LE |  |  |
| `TRS_FREQUENCY_KHZ` | 800 | 32 | 1 | UINT | LE |  |  |
| `TO_CALLSIGN` | 832 | 64 | 1 | STRING | LE |  |  |
| `FROM_CALLSIGN` | 896 | 64 | 1 | STRING | LE |  |  |
| `RCV_FRAME_NUM` | 960 | 16 | 1 | UINT | LE |  |  |
| `P9B_RESERVED` | 976 | 16 | 1 | UINT | LE |  |  |
| `PA_OVERTEMP_COUNT` | 992 | 16 | 1 | UINT | LE |  |  |
| `PA_OVERTEMP_RESERVED` | 1008 | 16 | 1 | UINT | LE |  |  |
| `PCB_TEMPERATURE` | 1024 | 16 | 1 | UINT | LE |  |  |
| `PCB_TEMP_RESERVED` | 1040 | 16 | 1 | UINT | LE |  |  |
| `TRANSPONDER_RSSI_RAW` | 1056 | 16 | 1 | UINT | LE |  |  |
| `LAST_TRANS_REFLECTED_RAW` | 1072 | 16 | 1 | UINT | LE |  |  |
| `LAST_TRANS_FORWARD_RAW` | 1088 | 16 | 1 | UINT | LE |  |  |
| `P18_RESERVED` | 1104 | 16 | 1 | UINT | LE |  |  |
| `RECEIVER_ERROR_COUNT` | 1120 | 16 | 1 | UINT | LE |  |  |
| `I2C_ERROR_COUNT` | 1136 | 16 | 1 | UINT | LE |  |  |
| `LAST_UPLINK_RECV_TIME` | 1152 | 32 | 1 | UINT | LE |  |  |
| `TOTAL_RX_FRAME_COUNT` | 1184 | 16 | 1 | UINT | LE |  |  |
| `TOTAL_TX_FRAME_COUNT` | 1200 | 16 | 1 | UINT | LE |  |  |
| `TX_MODE_CHANGE_COUNT` | 1216 | 16 | 1 | UINT | LE |  |  |
| `P19_RESERVED` | 1232 | 16 | 1 | UINT | LE |  |  |
| `PA_OVERTEMP_LAST_TIME` | 1248 | 32 | 1 | UINT | LE |  |  |
| `HIGH_REFLECTED_LAST_TIME` | 1280 | 32 | 1 | UINT | LE |  |  |
| `RCV_RESET_LAST_TIME` | 1312 | 32 | 1 | UINT | LE |  |  |
| `TRS_RESET_LAST_TIME` | 1344 | 32 | 1 | UINT | LE |  |  |
| `RF_FORWARD_PEAK` | 1376 | 16 | 1 | UINT | LE |  |  |
| `PA_CURRENT_PEAK` | 1392 | 16 | 1 | UINT | LE |  |  |
| `REFLECTED_PEAK` | 1408 | 16 | 1 | UINT | LE |  |  |
| `PA_TEMP_PEAK` | 1424 | 16 | 1 | UINT | LE |  |  |
| `PA_TEMP_MIN` | 1440 | 16 | 1 | UINT | LE |  |  |
| `LO_TEMP_PEAK` | 1456 | 16 | 1 | UINT | LE |  |  |
| `LO_TEMP_MIN` | 1472 | 16 | 1 | UINT | LE |  |  |
| `PCB_TEMP_PEAK` | 1488 | 16 | 1 | UINT | LE |  |  |
| `PCB_TEMP_MIN` | 1504 | 16 | 1 | UINT | LE |  |  |
| `RSSI_PEAK` | 1520 | 16 | 1 | INT | LE |  |  |
| `RSSI_MIN` | 1536 | 16 | 1 | INT | LE |  |  |
| `DOPPLER_PEAK` | 1552 | 16 | 1 | INT | LE |  |  |
| `DOPPLER_MIN` | 1568 | 16 | 1 | INT | LE |  |  |
| `PADDING_AUTO_1` | 1584 | 8 | 2 | UINT | LE |  |  |
| `I2C_TOTAL_COUNT` | 1600 | 32 | 1 | UINT | LE |  |  |
| `PCM_RESET_REQUEST_COUNT` | 1632 | 16 | 1 | UINT | LE |  |  |
| `TX_MODE` | 1648 | 8 | 1 | UINT | LE |  | ; states: {"0": "UNKNOWN", "1": "NOMINAL", "2": "TRP"} |
| `LAST_FREQ_STATUS` | 1656 | 8 | 1 | UINT | LE |  |  |
| `TRANSPONDER_RSSI_THRESHOLD` | 1664 | 16 | 1 | UINT | LE |  |  |
| `TRANSPONDER_INPUT_FREQ_KHZ_LO` | 1680 | 16 | 1 | UINT | LE |  |  |
| `TRANSPONDER_INPUT_FREQ_KHZ_HI` | 1696 | 16 | 1 | UINT | LE |  |  |
| `CI_INGEST_COUNT` | 1712 | 16 | 1 | UINT | LE |  |  |
| `CI_INGEST_ERR` | 1728 | 16 | 1 | UINT | LE |  |  |
| `RX_BUFFER_FRAME_COUNT` | 1744 | 8 | 1 | UINT | LE |  |  |
| `TX_BUFFER_FREE_SLOTS` | 1752 | 8 | 1 | UINT | LE |  | ; states: {"255": "UNKNOWN"} |
| `IDLE_WINDOW_ENABLE` | 1760 | 8 | 1 | UINT | LE |  | ; states: {"0": "OFF", "1": "ON"} |
| `IDLE_WINDOW_HOLD_S` | 1768 | 8 | 1 | UINT | LE | s |  |
| `TRS_EXPN_PAD` | 1776 | 8 | 2 | UINT | LE |  |  |

## Mode 07: BCN_ADCS_PKT

Complete CCSDS size: 232 bytes.

| Field | Bit offset | Element bits | Count | Type | Byte/bit order | Unit | Conversion / states |
| --- | ---: | ---: | ---: | --- | --- | --- | --- |
| `CCSDS_STREAMID` | 0 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SEQUENCE` | 16 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_LENGTH` | 32 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SECONDS` | 48 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SUBSECS` | 80 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `SEC_HDR_ALIGN` | 96 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `BEACON_MODE` | 128 | 8 | 1 | UINT | LE |  | ; states: {"7": "ADCS_DATA"} |
| `SPARE` | 136 | 8 | 1 | UINT | LE |  |  |
| `COMMAND_COUNTER` | 144 | 16 | 1 | UINT | LE |  |  |
| `CMD_ERR_COUNTER` | 160 | 16 | 1 | UINT | LE |  |  |
| `DSS_PAYLOAD_DSS_DIR1_X` | 176 | 16 | 1 | INT | LE |  |  |
| `DSS_PAYLOAD_DSS_DIR1_Y` | 192 | 16 | 1 | INT | LE |  |  |
| `DSS_PAYLOAD_DSS_DIR1_Z` | 208 | 16 | 1 | INT | LE |  |  |
| `DSS_PAYLOAD_DSS_DIR2_X` | 224 | 16 | 1 | INT | LE |  |  |
| `DSS_PAYLOAD_DSS_DIR2_Y` | 240 | 16 | 1 | INT | LE |  |  |
| `DSS_PAYLOAD_DSS_DIR2_Z` | 256 | 16 | 1 | INT | LE |  |  |
| `DSS_PAYLOAD_DSS_DIR3_X` | 272 | 16 | 1 | INT | LE |  |  |
| `DSS_PAYLOAD_DSS_DIR3_Y` | 288 | 16 | 1 | INT | LE |  |  |
| `DSS_PAYLOAD_DSS_DIR3_Z` | 304 | 16 | 1 | INT | LE |  |  |
| `DSS_PAYLOAD_PADDING1` | 320 | 16 | 3 | UINT | LE |  |  |
| `PADDING_GPS` | 368 | 8 | 2 | UINT | LE |  |  |
| `GPS_PAYLOAD_SOLUTION_STATUS` | 384 | 8 | 1 | UINT | LE |  |  |
| `GPS_PAYLOAD_PADDING1` | 392 | 8 | 7 | UINT | LE |  |  |
| `GPS_PAYLOAD_JD_INT` | 448 | 32 | 1 | INT | LE |  |  |
| `GPS_PAYLOAD_JD_FRAC` | 480 | 32 | 1 | INT | LE |  |  |
| `GPS_PAYLOAD_GPS_POS_X` | 512 | 32 | 1 | INT | LE |  |  |
| `GPS_PAYLOAD_GPS_POS_Y` | 544 | 32 | 1 | INT | LE |  |  |
| `GPS_PAYLOAD_GPS_POS_Z` | 576 | 32 | 1 | INT | LE |  |  |
| `GPS_PAYLOAD_GPS_VEL_X` | 608 | 32 | 1 | INT | LE |  |  |
| `GPS_PAYLOAD_GPS_VEL_Y` | 640 | 32 | 1 | INT | LE |  |  |
| `GPS_PAYLOAD_GPS_VEL_Z` | 672 | 32 | 1 | INT | LE |  |  |
| `MTQ_PAYLOAD_MTQ_PWM_DUTY` | 704 | 16 | 3 | UINT | LE |  |  |
| `MTQ_PAYLOAD_MTQ_DIRECTION` | 752 | 8 | 3 | INT | LE |  |  |
| `MTQ_PAYLOAD_PADDING` | 776 | 8 | 1 | UINT | LE |  |  |
| `MTQ_PAYLOAD_MTQ_CURRENT` | 784 | 16 | 6 | INT | LE |  |  |
| `MTQ_PAYLOAD_MTQ_MOMENTUM` | 880 | 16 | 3 | UINT | LE |  |  |
| `MTQ_PAYLOAD_MTQ_TEMP_CORE` | 928 | 16 | 1 | INT | LE |  |  |
| `MTQ_PAYLOAD_MTQ_TEMP_ONBOARD` | 944 | 16 | 1 | INT | LE |  |  |
| `RW_PAYLOAD_RW_WHEEL_SPEEDX` | 960 | 16 | 1 | INT | LE |  |  |
| `RW_PAYLOAD_RW_WHEEL_SPEEDY` | 976 | 16 | 1 | INT | LE |  |  |
| `RW_PAYLOAD_RW_WHEEL_SPEEDZ` | 992 | 16 | 1 | INT | LE |  |  |
| `RW_PAYLOAD_PADDING1` | 1008 | 16 | 1 | UINT | LE |  |  |
| `ST_SECONDS` | 1024 | 32 | 1 | UINT | LE |  |  |
| `ST_MILLI_SECONDS` | 1056 | 16 | 1 | UINT | LE |  |  |
| `ADCS_WHEEL_SPEED_PEAK_ABS` | 1072 | 16 | 3 | UINT | LE | xyz |  |
| `ADCS_GYRO_RATE_PEAK_ABS` | 1120 | 16 | 3 | UINT | LE | xyz |  |
| `ADCS_MTQ_CURRENT_PEAK_ABS` | 1168 | 16 | 1 | UINT | LE |  |  |
| `ADCS_MTQ_TEMP_CORE_PEAK` | 1184 | 16 | 1 | INT | LE |  |  |
| `ADCS_MTQ_TEMP_ONBOARD_PEAK` | 1200 | 16 | 1 | INT | LE |  |  |
| `ADCS_HK_STALE_TICKS` | 1216 | 8 | 1 | UINT | LE |  |  |
| `ADCS_HK_STALE_FLAG` | 1224 | 8 | 1 | UINT | LE |  | ; states: {"0": "FRESH", "1": "STALE"} |
| `BEACON_RX_COUNT` | 1232 | 8 | 1 | UINT | LE |  |  |
| `ADCS_RESERVED` | 1240 | 8 | 1 | UINT | LE |  |  |
| `BEACON_ECEF_P_SAT` | 1248 | 32 | 3 | INT | LE |  |  |
| `BEACON_ECEF_V_SAT` | 1344 | 32 | 3 | INT | LE |  |  |
| `BEACON_SAT_W_ECI2_SAT` | 1440 | 16 | 3 | INT | LE |  |  |
| `BEACON_SAT_MAGNETIC` | 1488 | 16 | 3 | INT | LE |  |  |
| `BEACON_SAT_U_SUN` | 1536 | 16 | 3 | INT | LE |  |  |
| `BEACON_CTRL_DIPOLE` | 1584 | 16 | 3 | INT | LE |  |  |
| `BEACON_IS_ECLIPSE` | 1632 | 8 | 1 | INT | LE |  |  |
| `BEACON_MODE_2` | 1640 | 8 | 5 | UINT | LE |  |  |
| `BEACON_STATUS` | 1680 | 8 | 5 | UINT | LE |  |  |
| `BEACON_DSS_FLAG` | 1720 | 8 | 1 | UINT | LE |  |  |
| `BEACON_GPS_FLAG` | 1728 | 8 | 1 | UINT | LE |  |  |
| `BEACON_MTQ_FLAG` | 1736 | 8 | 1 | UINT | LE |  |  |
| `BEACON_RW_FLAG` | 1744 | 8 | 3 | UINT | LE |  |  |
| `BEACON_ST_FLAG` | 1768 | 8 | 1 | UINT | LE |  |  |
| `BEACON_GYRO_FLAG` | 1776 | 8 | 1 | UINT | LE |  |  |
| `BEACON_MTM_FLAG` | 1784 | 8 | 1 | UINT | LE |  |  |
| `BEACON_PADDING` | 1792 | 8 | 4 | UINT | LE |  |  |
| `ADCS_SAFING_STATE` | 1824 | 8 | 1 | UINT | LE |  | ; states: {"0": "IDLE", "1": "PRE_RESET_WAIT", "2": "DETUMBLE_WAIT", "3": "DONE", "4": "TIMEOUT", "5": "ABORTED"} |
| `ADCS_SAFING_PURPOSE` | 1832 | 8 | 1 | UINT | LE |  | ; states: {"0": "NONE", "1": "REBOOT", "2": "SAFE_DOWNGRADE"} |
| `ADCS_SAFING_PAD` | 1840 | 8 | 2 | UINT | LE |  |  |

## Mode 08: BCN_LD_PKT

Complete CCSDS size: 96 bytes.

| Field | Bit offset | Element bits | Count | Type | Byte/bit order | Unit | Conversion / states |
| --- | ---: | ---: | ---: | --- | --- | --- | --- |
| `CCSDS_STREAMID` | 0 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SEQUENCE` | 16 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_LENGTH` | 32 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SECONDS` | 48 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SUBSECS` | 80 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `SEC_HDR_ALIGN` | 96 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `BEACON_MODE` | 128 | 8 | 1 | UINT | LE |  | ; states: {"8": "LD_DATA"} |
| `MOON_DIST_C256` | 136 | 8 | 1 | UINT | LE |  | (350000 + value * 256) |
| `MOON_VALID` | 144 | 8 | 1 | UINT | LE |  |  |
| `LD_CMD_COUNTER` | 152 | 8 | 1 | UINT | LE |  |  |
| `LD_ERR_COUNTER` | 160 | 8 | 1 | UINT | LE |  |  |
| `APP_STATE` | 168 | 8 | 1 | UINT | LE |  | ; states: {"0": "IDLE", "1": "STANDBY", "2": "READY", "3": "TRANSMITTING"} |
| `SEQ_STEP` | 176 | 8 | 1 | UINT | LE |  |  |
| `LAST_CMD_CC` | 184 | 8 | 1 | UINT | LE |  |  |
| `LAST_CMD_RESULT` | 192 | 8 | 1 | UINT | LE |  |  |
| `LAST_ERR_CC` | 200 | 8 | 1 | UINT | LE |  |  |
| `LAST_ERR_DETAIL` | 208 | 8 | 1 | UINT | LE |  |  |
| `LAST_SEQ_FAIL_STEP` | 216 | 8 | 1 | UINT | LE |  |  |
| `LAST_SEQ_FAIL_REASON` | 224 | 8 | 1 | UINT | LE |  |  |
| `LAST_DRV_ERR_CODE` | 232 | 8 | 1 | INT | LE |  |  |
| `LD_STATE_PACKED` | 240 | 8 | 1 | UINT | LE |  |  |
| `LD_STATE_PACKED_B` | 248 | 8 | 1 | UINT | LE |  |  |
| `MOON_ECI_X_X1E4` | 256 | 16 | 1 | INT | LE |  | (value / 10000.0).round(4) |
| `MOON_ECI_Y_X1E4` | 272 | 16 | 1 | INT | LE |  | (value / 10000.0).round(4) |
| `POWER_MODE` | 288 | 8 | 1 | UINT | LE |  | ; states: {"0": "OFF", "1": "HIGH", "2": "LOW"} |
| `LD_SPARE1` | 296 | 8 | 1 | UINT | LE |  |  |
| `LD_SPARE2` | 304 | 8 | 1 | UINT | LE |  |  |
| `ACTIVE_SEQ_ID` | 312 | 8 | 1 | UINT | LE |  | ; states: {"0": "NONE", "1": "INIT", "2": "AEGUKGA", "3": "TAEGEUKGI", "4": "SBIT"} |
| `COMM_FAIL_CONSECUTIVE` | 320 | 8 | 1 | UINT | LE |  |  |
| `FAULT_STATE` | 328 | 8 | 1 | UINT | LE |  | ; states: {"0": "NONE", "1": "TRANSIENT_WARN", "2": "PERMANENT"} |
| `LD_SPARE3` | 336 | 8 | 1 | UINT | LE |  |  |
| `SPARE0` | 344 | 8 | 1 | UINT | LE |  |  |
| `LD_CURRENT` | 352 | 16 | 1 | UINT | LE |  |  |
| `TEMP_SETPOINT` | 368 | 16 | 1 | UINT | LE |  |  |
| `ACTIVATE_COUNT` | 384 | 16 | 1 | UINT | LE |  |  |
| `UART_RESP_MAX_MS` | 400 | 16 | 1 | UINT | LE | Milliseconds |  |
| `UART_WRITE_ERR_COUNT` | 416 | 16 | 1 | UINT | LE |  |  |
| `UART_READ_ERR_COUNT` | 432 | 16 | 1 | UINT | LE |  |  |
| `UART_TIMEOUT_COUNT` | 448 | 16 | 1 | UINT | LE |  |  |
| `NAK_COUNT` | 464 | 16 | 1 | UINT | LE |  |  |
| `RETRY_COUNT` | 480 | 16 | 1 | UINT | LE |  |  |
| `SEQ_FAIL_COUNT` | 496 | 16 | 1 | UINT | LE |  |  |
| `SEU_DETECT_COUNT` | 512 | 16 | 1 | UINT | LE |  |  |
| `SPARE1` | 528 | 16 | 1 | UINT | LE |  |  |
| `TEMPERATURE` | 544 | 32 | 1 | FLOAT | LE | Celsius | ((-0.07669* value)+195.6307).round(4) |
| `PD_VOLTAGE` | 576 | 32 | 1 | FLOAT | LE | Volts |  |
| `LAST_RX_SEC_AGO` | 608 | 16 | 1 | UINT | LE |  |  |
| `PAD_RX` | 624 | 16 | 1 | UINT | LE |  |  |
| `LD_CURRENT_PEAK_MA` | 640 | 16 | 1 | UINT | LE | Milliamps |  |
| `LD_TEMP_PEAK_C10` | 656 | 16 | 1 | INT | LE |  |  |
| `LD_TEMP_MIN_C10` | 672 | 16 | 1 | INT | LE |  |  |
| `LD_FAULT_TRANSIENT_EDGES` | 688 | 8 | 1 | UINT | LE |  |  |
| `LD_FAULT_PERMANENT_EDGES` | 696 | 8 | 1 | UINT | LE |  |  |
| `LD_EDFA_ALARM_EDGES` | 704 | 8 | 1 | UINT | LE |  |  |
| `LD_EXT_RESERVED` | 712 | 8 | 3 | UINT | LE |  |  |
| `OPT_TOKEN_HOLDER` | 736 | 8 | 1 | UINT | LE |  | ; states: {"0": "NONE", "1": "LD", "2": "LED"} |
| `OPT_TOKEN_SEQ` | 744 | 8 | 1 | UINT | LE |  |  |
| `PAD_TAIL` | 752 | 8 | 2 | UINT | LE |  |  |

## Mode 09: BCN_LED_PKT

Complete CCSDS size: 202 bytes.

| Field | Bit offset | Element bits | Count | Type | Byte/bit order | Unit | Conversion / states |
| --- | ---: | ---: | ---: | --- | --- | --- | --- |
| `CCSDS_STREAMID` | 0 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SEQUENCE` | 16 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_LENGTH` | 32 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SECONDS` | 48 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SUBSECS` | 80 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `SEC_HDR_ALIGN` | 96 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `BEACON_MODE` | 128 | 8 | 1 | UINT | LE |  | ; states: {"9": "LED_DATA"} |
| `RS_ENCODE_ERR` | 136 | 8 | 1 | UINT | LE |  |  |
| `ELEV_BAND_ARM` | 144 | 8 | 1 | UINT | LE |  |  |
| `LED_FAULT_TRANSIENT_EDGES` | 152 | 8 | 1 | UINT | LE |  |  |
| `LED_FAULT_PERMANENT_EDGES` | 160 | 8 | 1 | UINT | LE |  |  |
| `PAD_AGG` | 168 | 8 | 1 | UINT | LE |  |  |
| `LAST_RX_SEC_AGO` | 176 | 16 | 1 | UINT | LE | Seconds |  |
| `BOARD_DATA_AGE_SEC` | 192 | 16 | 1 | UINT | LE | Seconds |  |
| `LED_TEMP_PEAK_C10` | 208 | 16 | 1 | INT | LE |  |  |
| `LED_TEMP_MIN_C10` | 224 | 16 | 1 | INT | LE |  |  |
| `LED_VOLTAGE_PEAK_MV` | 240 | 16 | 1 | UINT | LE | Millivolts |  |
| `LED_VOLTAGE_MIN_MV` | 256 | 16 | 1 | UINT | LE | Millivolts |  |
| `PAD_AGG2` | 272 | 16 | 1 | UINT | LE |  |  |
| `OPT_TOKEN_HOLDER` | 288 | 8 | 1 | UINT | LE |  | ; states: {"0": "NONE", "1": "LD", "2": "LED"} |
| `OPT_TOKEN_SEQ` | 296 | 8 | 1 | UINT | LE |  |  |
| `CMD_COUNTER` | 304 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `ERR_COUNTER` | 312 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `APP_STATE` | 320 | 2 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_CMD_C_C` | 322 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_CMD_RESULT` | 330 | 3 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_ERR_C_C` | 333 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_ERR_DETAIL` | 341 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_DRV_ERR_CODE` | 349 | 8 | 1 | INT | BE / MSB-first |  |  |
| `LED_MASK` | 357 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `ANY_LED_ON` | 373 | 1 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_GROUP` | 374 | 2 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_MASK` | 376 | 4 | 1 | UINT | BE / MSB-first |  |  |
| `COMM_STATUS` | 380 | 1 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_TEMPERATURE_C10` | 381 | 16 | 1 | INT | BE / MSB-first |  |  |
| `LAST_VOLTAGE_MV` | 397 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `ACTIVATE_COUNT` | 413 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `TOTAL_OPERATING_TIME_SEC` | 429 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CURRENT_SESSION_TIME_SEC` | 445 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `MAX_OPERATING_TIME_SEC` | 461 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `UART_WRITE_ERR_COUNT` | 477 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `UART_READ_ERR_COUNT` | 493 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `UART_TIMEOUT_COUNT` | 509 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `NAK_COUNT` | 525 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `RETRY_COUNT` | 541 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CRC_ERR_COUNT` | 557 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `COMM_FAIL_CONSECUTIVE` | 573 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `FAULT_STATE` | 581 | 2 | 1 | UINT | BE / MSB-first |  |  |
| `SEU_DETECT_COUNT` | 583 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `IMG_FILE_COUNT` | 599 | 7 | 1 | UINT | BE / MSB-first |  |  |
| `IMG_PRUNE_COUNT` | 606 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `IMG_DISK_FULL_COUNT` | 622 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `IMG_WRITE_ERR_COUNT` | 638 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_IMG_BYTES` | 654 | 19 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_CAPTURE_SEC` | 673 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_IMG_SLOT` | 705 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_IMG_SRC` | 713 | 2 | 1 | UINT | BE / MSB-first |  |  |
| `ACTIVE_IMG_READ` | 715 | 1 | 1 | UINT | BE / MSB-first |  |  |
| `BOARD_BOOT_MODE` | 716 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `SUBSYS_FLAGS` | 724 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `OPT_STATE` | 732 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `OPT_MOD` | 740 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `OPT_TX_SEQ` | 748 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `OPT_TX_TOTAL` | 764 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `PENDING_ASYNC` | 780 | 3 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_CAPTURE_SLOT_HW` | 783 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_CAPTURE_CAM` | 791 | 2 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_VIDEO_SLOT` | 793 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_VIDEO_FRAMES` | 801 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `ASYNC_FAIL_COUNT` | 817 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `BUSY_NAK_COUNT` | 833 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `XFER_RETX_COUNT` | 849 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `XFER_INCOMPLETE_COUNT` | 865 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `STRAY_FRAME_COUNT` | 881 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `LINK_BAUD_CODE` | 897 | 2 | 1 | UINT | BE / MSB-first |  |  |
| `BOARD_POWER_STATE` | 899 | 3 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_SESSION_RESULT` | 902 | 2 | 1 | UINT | BE / MSB-first |  |  |
| `SD_BAD_BLOCKS` | 904 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `SESSION_COUNT` | 912 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `SD_CAPACITY_MB` | 928 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `SESSION_START_SEC` | 944 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_HARVEST_SEC` | 976 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `BOARD_TIME_STATUS` | 1008 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `BOARD_TIME_SRC` | 1016 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `BOARD_TIME_DRIFT_SEC` | 1024 | 16 | 1 | INT | BE / MSB-first |  |  |
| `BOARD_EPOCH` | 1040 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `BOARD_TICK_MS` | 1072 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `BOARD_SAMPLE_SEC` | 1104 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `POLL_SAMPLE_SEC` | 1136 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_TIME_SYNC_SEC` | 1168 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `BOARD_UPTIME_SEC` | 1200 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `TIME_SYNC_COUNT` | 1216 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `TIME_SYNC_FAIL_COUNT` | 1232 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `STALE_FLAGS` | 1248 | 4 | 1 | UINT | BE / MSB-first |  |  |
| `SD_IMG_FULL` | 1252 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `STORAGE_MODE` | 1260 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `FLASH_STATE` | 1268 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `SD_STATE` | 1276 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `SD_INSERTED` | 1284 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `FLASH_IMG_COUNT` | 1292 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `FLASH_IMG_FREE` | 1308 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `SD_IMG_COUNT` | 1324 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `SCRUB_CYCLES` | 1356 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `SCRUB_ERRORS` | 1372 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `EVT_SYNC_PENDING` | 1388 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `EVT_SYNC_OVERFLOW` | 1396 | 8 | 1 | UINT | BE / MSB-first |  |  |
| `SD_IMG_FREE_MB` | 1404 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `MIN_STACK_WATERMARK` | 1420 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `FLASH_EVT_USED_KB` | 1436 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `BOARD_CAPTURE_TOTAL` | 1452 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `BOARD_OPT_FRAME_TOTAL` | 1484 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `LOG_FILE_COUNT` | 1516 | 5 | 1 | UINT | BE / MSB-first |  |  |
| `LOG_WRITE_ERR_COUNT` | 1521 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `LAST_LOG_BYTES` | 1537 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `IMG_CRC_FAIL_COUNT` | 1569 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `POLL_INDEX` | 1585 | 4 | 1 | UINT | BE / MSB-first |  |  |
| `POLL_ENABLED` | 1589 | 1 | 1 | UINT | BE / MSB-first |  |  |
| `CHILD_QUEUE_COUNT` | 1590 | 5 | 1 | UINT | BE / MSB-first |  |  |
| `CHILD_QUEUE_MAX` | 1595 | 5 | 1 | UINT | BE / MSB-first |  |  |
| `CHILD_DROP_COUNT` | 1600 | 16 | 1 | UINT | BE / MSB-first |  |  |

## Mode 10: BCN_EPS2_PKT

Complete CCSDS size: 182 bytes.

| Field | Bit offset | Element bits | Count | Type | Byte/bit order | Unit | Conversion / states |
| --- | ---: | ---: | ---: | --- | --- | --- | --- |
| `CCSDS_STREAMID` | 0 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SEQUENCE` | 16 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_LENGTH` | 32 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SECONDS` | 48 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `CCSDS_SUBSECS` | 80 | 16 | 1 | UINT | BE / MSB-first |  |  |
| `SEC_HDR_ALIGN` | 96 | 32 | 1 | UINT | BE / MSB-first |  |  |
| `BEACON_MODE` | 128 | 8 | 1 | UINT | LE |  | ; states: {"10": "EPS2_DATA"} |
| `SHD_NAV_ANG_DEG_U8` | 136 | 8 | 1 | UINT | LE | deg |  |
| `SHD_FLAGS8` | 144 | 8 | 1 | UINT | LE |  |  |
| `EPS_CMD_COUNTER` | 152 | 8 | 1 | UINT | LE |  |  |
| `BCR_FRAME_SEQ` | 160 | 16 | 1 | UINT | LE |  |  |
| `EPS_BCR1_VOLTAGE` | 176 | 16 | 1 | UINT | LE |  | ((0.0322581 * value)).round(4) |
| `EPS_BCR1_SA1_A_CURRENT` | 192 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR1_SA1_B_CURRENT` | 208 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR1_SA1_A_TEMP` | 224 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR1_SA1_B_TEMP` | 240 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR1_SA1_A_SUN_DETECTOR` | 256 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR1_SA1_B_SUN_DETECTOR` | 272 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR2_VOLTAGE` | 288 | 16 | 1 | UINT | LE |  | ((0.0322581 * value)).round(4) |
| `EPS_BCR2_SA2_A_CURRENT` | 304 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR2_SA2_B_CURRENT` | 320 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR2_SA2_A_TEMP` | 336 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR2_SA2_B_TEMP` | 352 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR2_SA2_A_SUN_DETECTOR` | 368 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR2_SA2_B_SUN_DETECTOR` | 384 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR3_VOLTAGE` | 400 | 16 | 1 | UINT | LE |  | ((0.0099706 * value)).round(4) |
| `EPS_BCR3_SA3_A_CURRENT` | 416 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR3_SA3_B_CURRENT` | 432 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR3_SA3_A_TEMP` | 448 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR3_SA3_B_TEMP` | 464 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR3_SA3_A_SUN_DETECTOR` | 480 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR3_SA3_B_SUN_DETECTOR` | 496 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR4_VOLTAGE` | 512 | 16 | 1 | UINT | LE |  | ((0.0322581 * value)).round(4) |
| `EPS_BCR4_SA4_A_CURRENT` | 528 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR4_SA4_B_CURRENT` | 544 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR4_SA4_A_TEMP` | 560 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR4_SA4_B_TEMP` | 576 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR4_SA4_A_SUN_DETECTOR` | 592 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR4_SA4_B_SUN_DETECTOR` | 608 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR5_VOLTAGE` | 624 | 16 | 1 | UINT | LE |  | ((0.0322581 * value)).round(4) |
| `EPS_BCR5_SA5_A_CURRENT` | 640 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR5_SA5_B_CURRENT` | 656 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR5_SA5_A_TEMP` | 672 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR5_SA5_B_TEMP` | 688 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR5_SA5_A_SUN_DETECTOR` | 704 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR5_SA5_B_SUN_DETECTOR` | 720 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR6_VOLTAGE` | 736 | 16 | 1 | UINT | LE |  | ((0.0322581 * value)).round(4) |
| `EPS_BCR6_SA6_A_CURRENT` | 752 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR6_SA6_B_CURRENT` | 768 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR6_SA6_A_TEMP` | 784 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR6_SA6_B_TEMP` | 800 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR6_SA6_A_SUN_DETECTOR` | 816 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR6_SA6_B_SUN_DETECTOR` | 832 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR7_VOLTAGE` | 848 | 16 | 1 | UINT | LE |  | ((0.0322581 * value)).round(4) |
| `EPS_BCR7_SA7_A_CURRENT` | 864 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR7_SA7_B_CURRENT` | 880 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR7_SA7_A_TEMP` | 896 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR7_SA7_B_TEMP` | 912 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR7_SA7_A_SUN_DETECTOR` | 928 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR7_SA7_B_SUN_DETECTOR` | 944 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR8_VOLTAGE` | 960 | 16 | 1 | UINT | LE |  | ((0.0322581 * value)).round(4) |
| `EPS_BCR8_SA8_A_CURRENT` | 976 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR8_SA8_B_CURRENT` | 992 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR8_SA8_A_TEMP` | 1008 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR8_SA8_B_TEMP` | 1024 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR8_SA8_A_SUN_DETECTOR` | 1040 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR8_SA8_B_SUN_DETECTOR` | 1056 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR9_VOLTAGE` | 1072 | 16 | 1 | UINT | LE |  | ((0.0322581 * value)).round(4) |
| `EPS_BCR9_SA9_A_CURRENT` | 1088 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR9_SA9_B_CURRENT` | 1104 | 16 | 1 | UINT | LE |  | ((0.0009775 * value)).round(4) |
| `EPS_BCR9_SA9_A_TEMP` | 1120 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR9_SA9_B_TEMP` | 1136 | 16 | 1 | UINT | LE |  | ((0.4964 * value)-273.15).round(4) |
| `EPS_BCR9_SA9_A_SUN_DETECTOR` | 1152 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `EPS_BCR9_SA9_B_SUN_DETECTOR` | 1168 | 16 | 1 | UINT | LE |  | ((1.59725 * value)).round(4) |
| `PDM_TIMER_LIMIT` | 1184 | 8 | 10 | UINT | LE |  |  |
| `PDM_TIMER_CURRENT` | 1264 | 8 | 10 | UINT | LE |  |  |
| `EPS2_SPARE` | 1344 | 8 | 2 | UINT | LE |  |  |
| `SHD_NAV_ANG_MEAN_X10` | 1360 | 16 | 1 | UINT | LE | 0.1deg | (value / 10.0).round(1) |
| `SHD_NAV_ANG_MAX_X10` | 1376 | 16 | 1 | UINT | LE |  | (value / 10.0).round(1) |
| `SHD_MAG_ANG_MEAN_X10` | 1392 | 16 | 1 | UINT | LE | 0.1deg | (value / 10.0).round(1) |
| `SHD_SCORED_LO` | 1408 | 16 | 1 | UINT | LE |  |  |
| `SHD_FLAGS` | 1424 | 8 | 1 | UINT | LE |  |  |
| `SHD_VER` | 1432 | 8 | 1 | UINT | LE |  |  |
| `SHD_PAD` | 1440 | 16 | 1 | UINT | LE |  |  |
