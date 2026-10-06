---
meta:
  id: cpsat
  title: CPSat BCN telemetry
  endian: be
  bit-endian: be
  ks-version: '0.10'
doc-ref: https://github.com/SuperCuteRnRn/CPSAT_Telemetry_Sample/tree/main/decoder
doc: |
  :field beacon_mode: beacon.beacon_mode
  :field spacecraft_seconds_raw: beacon.ccsds_seconds
  :field spacecraft_subseconds_raw: beacon.ccsds_subsecs
  :field m01_sw_version: beacon.mode_01.sw_version
  :field m01_beacon_cmd_cnt: beacon.mode_01.beacon_cmd_cnt
  :field m01_beacon_err_cnt: beacon.mode_01.beacon_err_cnt
  :field m01_mode_info: beacon.mode_01.mode_info
  :field m01_beacon_frame: beacon.mode_01.beacon_frame
  :field m01_cpsat_cmd_counter: beacon.mode_01.cpsat_cmd_counter
  :field m01_cpsat_err_counter: beacon.mode_01.cpsat_err_counter
  :field m01_ant_deploy_status_packed: beacon.mode_01.ant_deploy_status_packed
  :field m01_initial_flags_packed: beacon.mode_01.initial_flags_packed
  :field m01_solar_deploy_flags: beacon.mode_01.solar_deploy_flags
  :field m01_elev_band_state: beacon.mode_01.elev_band_state
  :field m01_rs_encode_frames: beacon.mode_01.rs_encode_frames
  :field m01_leop_next_phase_idx: beacon.mode_01.leop_next_phase_idx
  :field m01_gs_elev_x100: beacon.mode_01.gs_elev_x100_converted
  :field m01_build_mode: beacon.mode_01.build_mode
  :field m01_ant_verify_packed: beacon.mode_01.ant_verify_packed
  :field m01_ant_deploy_count_0: beacon.mode_01.ant_deploy_count.0
  :field m01_ant_deploy_count_1: beacon.mode_01.ant_deploy_count.1
  :field m01_ant_deploy_count_2: beacon.mode_01.ant_deploy_count.2
  :field m01_ant_deploy_count_3: beacon.mode_01.ant_deploy_count.3
  :field m01_ant_deploy_count_b_0: beacon.mode_01.ant_deploy_count_b.0
  :field m01_ant_deploy_count_b_1: beacon.mode_01.ant_deploy_count_b.1
  :field m01_ant_deploy_count_b_2: beacon.mode_01.ant_deploy_count_b.2
  :field m01_ant_deploy_count_b_3: beacon.mode_01.ant_deploy_count_b.3
  :field m01_ant_burn_budget_pct_0: beacon.mode_01.ant_burn_budget_pct.0
  :field m01_ant_burn_budget_pct_1: beacon.mode_01.ant_burn_budget_pct.1
  :field m01_ant_burn_budget_pct_2: beacon.mode_01.ant_burn_budget_pct.2
  :field m01_ant_burn_budget_pct_3: beacon.mode_01.ant_burn_budget_pct.3
  :field m01_ant_last_deploy_result_0: beacon.mode_01.ant_last_deploy_result.0
  :field m01_ant_last_deploy_result_1: beacon.mode_01.ant_last_deploy_result.1
  :field m01_ant_last_deploy_result_2: beacon.mode_01.ant_last_deploy_result.2
  :field m01_ant_last_deploy_result_3: beacon.mode_01.ant_last_deploy_result.3
  :field m01_last_mission_reject_reason: beacon.mode_01.last_mission_reject_reason
  :field m01_battgate_reject_count: beacon.mode_01.battgate_reject_count
  :field m01_bcn_seq_len: beacon.mode_01.bcn_seq_len
  :field m01_bcn_seq_0: beacon.mode_01.bcn_seq.0
  :field m01_bcn_seq_1: beacon.mode_01.bcn_seq.1
  :field m01_bcn_seq_2: beacon.mode_01.bcn_seq.2
  :field m01_bcn_seq_3: beacon.mode_01.bcn_seq.3
  :field m01_bcn_seq_4: beacon.mode_01.bcn_seq.4
  :field m01_bcn_seq_5: beacon.mode_01.bcn_seq.5
  :field m01_bcn_seq_6: beacon.mode_01.bcn_seq.6
  :field m01_bcn_seq_7: beacon.mode_01.bcn_seq.7
  :field m01_bcn_seq_8: beacon.mode_01.bcn_seq.8
  :field m01_bcn_seq_9: beacon.mode_01.bcn_seq.9
  :field m01_bcn_seq_10: beacon.mode_01.bcn_seq.10
  :field m01_bcn_seq_11: beacon.mode_01.bcn_seq.11
  :field m01_bcn_seq_12: beacon.mode_01.bcn_seq.12
  :field m01_bcn_seq_13: beacon.mode_01.bcn_seq.13
  :field m01_bcn_seq_14: beacon.mode_01.bcn_seq.14
  :field m01_bcn_seq_15: beacon.mode_01.bcn_seq.15
  :field m01_disk_state: beacon.mode_01.disk_state
  :field m01_elev_band_arm: beacon.mode_01.elev_band_arm
  :field m01_pdm_mon_state: beacon.mode_01.pdm_mon_state
  :field m01_v_battery_voltage: beacon.mode_01.v_battery_voltage_converted
  :field m01_v_battery_current: beacon.mode_01.v_battery_current_converted
  :field m01_ant_temperature: beacon.mode_01.ant_temperature_converted
  :field m01_ant_temperature_b: beacon.mode_01.ant_temperature_b_converted
  :field m01_ant_deploy_status_a_raw: beacon.mode_01.ant_deploy_status_a_raw
  :field m01_ant_deploy_status_b_raw: beacon.mode_01.ant_deploy_status_b_raw
  :field m01_ant_deploy_time_0: beacon.mode_01.ant_deploy_time.0
  :field m01_ant_deploy_time_1: beacon.mode_01.ant_deploy_time.1
  :field m01_ant_deploy_time_2: beacon.mode_01.ant_deploy_time.2
  :field m01_ant_deploy_time_3: beacon.mode_01.ant_deploy_time.3
  :field m01_ant_deploy_time_b_0: beacon.mode_01.ant_deploy_time_b.0
  :field m01_ant_deploy_time_b_1: beacon.mode_01.ant_deploy_time_b.1
  :field m01_ant_deploy_time_b_2: beacon.mode_01.ant_deploy_time_b.2
  :field m01_ant_deploy_time_b_3: beacon.mode_01.ant_deploy_time_b.3
  :field m01_ant_command_counter: beacon.mode_01.ant_command_counter
  :field m01_ant_cmd_err_counter: beacon.mode_01.ant_cmd_err_counter
  :field m01_leop_recurring_count: beacon.mode_01.leop_recurring_count
  :field m01_cf_dl_last_duration_s: beacon.mode_01.cf_dl_last_duration_s
  :field m01_cf_dl_last_pdu_count: beacon.mode_01.cf_dl_last_pdu_count
  :field m01_cf_dl_total_sessions: beacon.mode_01.cf_dl_total_sessions
  :field m01_cf_dl_stuck_count: beacon.mode_01.cf_dl_stuck_count
  :field m01_pdm_intent_mask: beacon.mode_01.pdm_intent_mask
  :field m01_pdm_drift_mask: beacon.mode_01.pdm_drift_mask
  :field m01_pdm_drift_count: beacon.mode_01.pdm_drift_count
  :field m01_gps_sync_reject_count: beacon.mode_01.gps_sync_reject_count
  :field m01_last_drift_sec_clamped: beacon.mode_01.last_drift_sec_clamped
  :field m01_mission_execute_total: beacon.mode_01.mission_execute_total
  :field m01_orb_tle_age_min: beacon.mode_01.orb_tle_age_min
  :field m01_orb_sat_lat_x100: beacon.mode_01.orb_sat_lat_x100_converted
  :field m01_orb_sat_lon_x100: beacon.mode_01.orb_sat_lon_x100_converted
  :field m01_orb_sat_alt_km_x10: beacon.mode_01.orb_sat_alt_km_x10_converted
  :field m01_sc_rts_exec_bitmap_0: beacon.mode_01.sc_rts_exec_bitmap.0
  :field m01_sc_rts_exec_bitmap_1: beacon.mode_01.sc_rts_exec_bitmap.1
  :field m01_sc_rts_exec_bitmap_2: beacon.mode_01.sc_rts_exec_bitmap.2
  :field m01_cf_up_recv_pdu: beacon.mode_01.cf_up_recv_pdu
  :field m01_cf_up_recv_err: beacon.mode_01.cf_up_recv_err
  :field m01_reboot_remaining_min: beacon.mode_01.reboot_remaining_min
  :field m01_sch_missed_tick: beacon.mode_01.sch_missed_tick
  :field m01_hs_appmon_enables: beacon.mode_01.hs_appmon_enables
  :field m01_initial_spare1: beacon.mode_01.initial_spare1
  :field m01_orb_active_slot: beacon.mode_01.orb_active_slot
  :field m01_orb_eclipse_state: beacon.mode_01.orb_eclipse_state
  :field m01_sc_num_rts_active: beacon.mode_01.sc_num_rts_active
  :field m01_sc_rts_active_err: beacon.mode_01.sc_rts_active_err
  :field m01_lc_state: beacon.mode_01.lc_state
  :field m01_lc_passive_rts_count: beacon.mode_01.lc_passive_rts_count
  :field m01_hs_status_flags: beacon.mode_01.hs_status_flags
  :field m01_batt_below_safe_count: beacon.mode_01.batt_below_safe_count
  :field m01_batt_below_crit_count: beacon.mode_01.batt_below_crit_count
  :field m01_batt_above_norm_count: beacon.mode_01.batt_above_norm_count
  :field m01_batt_crit_recover_count: beacon.mode_01.batt_crit_recover_count
  :field m01_batt_daily_crit_recover: beacon.mode_01.batt_daily_crit_recover
  :field m01_batt_latch_bits: beacon.mode_01.batt_latch_bits
  :field m01_solar_adc_l: beacon.mode_01.solar_adc_l
  :field m01_solar_adc_r: beacon.mode_01.solar_adc_r
  :field m02_beacon_cmd_cnt: beacon.mode_02.beacon_cmd_cnt
  :field m02_beacon_err_cnt: beacon.mode_02.beacon_err_cnt
  :field m02_adcs_ad_mode: beacon.mode_02.adcs_ad_mode
  :field m02_adcs_ac_mode: beacon.mode_02.adcs_ac_mode
  :field m02_adcs_status: beacon.mode_02.adcs_status
  :field m02_gps_power_status: beacon.mode_02.gps_power_status
  :field m02_cf_dl_state: beacon.mode_02.cf_dl_state
  :field m02_sw_version: beacon.mode_02.sw_version
  :field m02_get_eps_auto_sw_reset: beacon.mode_02.get_eps_auto_sw_reset
  :field m02_get_bat_auto_sw_reset: beacon.mode_02.get_bat_auto_sw_reset
  :field m02_mode_info: beacon.mode_02.mode_info
  :field m02_beacon_frame: beacon.mode_02.beacon_frame
  :field m02_cpsat_cmd_counter: beacon.mode_02.cpsat_cmd_counter
  :field m02_cpsat_err_counter: beacon.mode_02.cpsat_err_counter
  :field m02_src_stale_bits: beacon.mode_02.src_stale_bits
  :field m02_mtq_pwm_x: beacon.mode_02.mtq_pwm_x
  :field m02_mtq_pwm_y: beacon.mode_02.mtq_pwm_y
  :field m02_mtq_pwm_z: beacon.mode_02.mtq_pwm_z
  :field m02_cpu_throughput: beacon.mode_02.cpu_throughput
  :field m02_v_battery_voltage: beacon.mode_02.v_battery_voltage_converted
  :field m02_v_battery_current: beacon.mode_02.v_battery_current_converted
  :field m02_v_bat_5_v_voltage: beacon.mode_02.v_bat_5_v_voltage_converted
  :field m02_v_bat_5_v_current: beacon.mode_02.v_bat_5_v_current_converted
  :field m02_v_bat_3v3_voltage: beacon.mode_02.v_bat_3v3_voltage_converted
  :field m02_v_bat_3v3_current: beacon.mode_02.v_bat_3v3_current_converted
  :field m02_rw_wheel_vel_x: beacon.mode_02.rw_wheel_vel_x
  :field m02_rw_wheel_vel_y: beacon.mode_02.rw_wheel_vel_y
  :field m02_rw_wheel_vel_z: beacon.mode_02.rw_wheel_vel_z
  :field m02_gyro_w_x: beacon.mode_02.gyro_w_x_converted
  :field m02_gyro_w_y: beacon.mode_02.gyro_w_y_converted
  :field m02_gyro_w_z: beacon.mode_02.gyro_w_z_converted
  :field m02_mtm_mag_x: beacon.mode_02.mtm_mag_x_converted
  :field m02_mtm_mag_y: beacon.mode_02.mtm_mag_y_converted
  :field m02_mtm_mag_z: beacon.mode_02.mtm_mag_z_converted
  :field m02_accel_x: beacon.mode_02.accel_x
  :field m02_accel_y: beacon.mode_02.accel_y
  :field m02_accel_z: beacon.mode_02.accel_z
  :field m02_adcs_gyro_x: beacon.mode_02.adcs_gyro_x
  :field m02_adcs_gyro_y: beacon.mode_02.adcs_gyro_y
  :field m02_adcs_gyro_z: beacon.mode_02.adcs_gyro_z
  :field m02_adcs_mag_x: beacon.mode_02.adcs_mag_x
  :field m02_adcs_mag_y: beacon.mode_02.adcs_mag_y
  :field m02_adcs_mag_z: beacon.mode_02.adcs_mag_z
  :field m02_storage_space_status: beacon.mode_02.storage_space_status
  :field m02_on_board_time: beacon.mode_02.on_board_time
  :field m02_get_trs_uptime: beacon.mode_02.get_trs_uptime
  :field m02_get_rcv_uptime: beacon.mode_02.get_rcv_uptime
  :field m02_adcs_quat_w: beacon.mode_02.adcs_quat_w_converted
  :field m02_adcs_quat_x: beacon.mode_02.adcs_quat_x_converted
  :field m02_adcs_quat_y: beacon.mode_02.adcs_quat_y_converted
  :field m02_adcs_quat_z: beacon.mode_02.adcs_quat_z_converted
  :field m02_gps_pos_x: beacon.mode_02.gps_pos_x
  :field m02_gps_pos_y: beacon.mode_02.gps_pos_y
  :field m02_gps_pos_z: beacon.mode_02.gps_pos_z
  :field m02_gps_vel_x: beacon.mode_02.gps_vel_x
  :field m02_gps_vel_y: beacon.mode_02.gps_vel_y
  :field m02_gps_vel_z: beacon.mode_02.gps_vel_z
  :field m02_batt_mode_current: beacon.mode_02.batt_mode_current
  :field m02_batt_mode_recommended: beacon.mode_02.batt_mode_recommended
  :field m02_cf_dl_last_exit_reason: beacon.mode_02.cf_dl_last_exit_reason
  :field m02_batt_voltage_source: beacon.mode_02.batt_voltage_source
  :field m02_batt_last_known_mv: beacon.mode_02.batt_last_known_mv
  :field m02_status_summary: beacon.mode_02.status_summary
  :field m02_soc_pct: beacon.mode_02.soc_pct
  :field m02_evs_cnt_debug: beacon.mode_02.evs_cnt_debug
  :field m02_evs_cnt_info: beacon.mode_02.evs_cnt_info
  :field m02_evs_cnt_error: beacon.mode_02.evs_cnt_error
  :field m02_evs_cnt_critical: beacon.mode_02.evs_cnt_critical
  :field m02_recent_err_events_0: beacon.mode_02.recent_err_events.0
  :field m02_recent_err_events_1: beacon.mode_02.recent_err_events.1
  :field m02_recent_err_events_2: beacon.mode_02.recent_err_events.2
  :field m02_recent_err_events_3: beacon.mode_02.recent_err_events.3
  :field m02_recent_err_events_4: beacon.mode_02.recent_err_events.4
  :field m02_recent_err_events_5: beacon.mode_02.recent_err_events.5
  :field m02_recent_err_events_6: beacon.mode_02.recent_err_events.6
  :field m02_recent_err_events_7: beacon.mode_02.recent_err_events.7
  :field m02_recent_err_events_8: beacon.mode_02.recent_err_events.8
  :field m02_recent_err_events_9: beacon.mode_02.recent_err_events.9
  :field m02_recent_err_events_10: beacon.mode_02.recent_err_events.10
  :field m02_recent_err_events_11: beacon.mode_02.recent_err_events.11
  :field m02_recent_err_events_12: beacon.mode_02.recent_err_events.12
  :field m02_recent_err_events_13: beacon.mode_02.recent_err_events.13
  :field m02_recent_err_events_14: beacon.mode_02.recent_err_events.14
  :field m02_recent_err_events_15: beacon.mode_02.recent_err_events.15
  :field m02_recent_err_events_16: beacon.mode_02.recent_err_events.16
  :field m02_recent_err_events_17: beacon.mode_02.recent_err_events.17
  :field m02_recent_err_events_18: beacon.mode_02.recent_err_events.18
  :field m02_recent_err_events_19: beacon.mode_02.recent_err_events.19
  :field m02_recent_err_events_20: beacon.mode_02.recent_err_events.20
  :field m02_recent_err_events_21: beacon.mode_02.recent_err_events.21
  :field m02_recent_err_events_22: beacon.mode_02.recent_err_events.22
  :field m02_recent_err_events_23: beacon.mode_02.recent_err_events.23
  :field m02_recent_err_events_24: beacon.mode_02.recent_err_events.24
  :field m02_recent_err_events_25: beacon.mode_02.recent_err_events.25
  :field m02_recent_err_events_26: beacon.mode_02.recent_err_events.26
  :field m02_recent_err_events_27: beacon.mode_02.recent_err_events.27
  :field m02_recent_err_events_28: beacon.mode_02.recent_err_events.28
  :field m02_recent_err_events_29: beacon.mode_02.recent_err_events.29
  :field m02_recent_err_events_30: beacon.mode_02.recent_err_events.30
  :field m02_recent_err_events_31: beacon.mode_02.recent_err_events.31
  :field m02_last_critical_msg_snippet_octet_0: beacon.mode_02.last_critical_msg_snippet.0
  :field m02_last_critical_msg_snippet_octet_1: beacon.mode_02.last_critical_msg_snippet.1
  :field m02_last_critical_msg_snippet_octet_2: beacon.mode_02.last_critical_msg_snippet.2
  :field m02_last_critical_msg_snippet_octet_3: beacon.mode_02.last_critical_msg_snippet.3
  :field m02_last_critical_msg_snippet_octet_4: beacon.mode_02.last_critical_msg_snippet.4
  :field m02_last_critical_msg_snippet_octet_5: beacon.mode_02.last_critical_msg_snippet.5
  :field m02_last_critical_msg_snippet_octet_6: beacon.mode_02.last_critical_msg_snippet.6
  :field m02_last_critical_msg_snippet_octet_7: beacon.mode_02.last_critical_msg_snippet.7
  :field m02_last_critical_app_event: beacon.mode_02.last_critical_app_event
  :field m02_last_critical_tick_offset: beacon.mode_02.last_critical_tick_offset
  :field m02_ld_app_state: beacon.mode_02.ld_app_state
  :field m02_ld_fault_state: beacon.mode_02.ld_fault_state
  :field m02_ld_last_drv_err: beacon.mode_02.ld_last_drv_err
  :field m02_led_app_state: beacon.mode_02.led_app_state
  :field m02_led_fault_state: beacon.mode_02.led_fault_state
  :field m02_cpsat_batt_automgmt_enabled: beacon.mode_02.cpsat_batt_automgmt_enabled
  :field m02_cpsat_batt_voltage_source_v2: beacon.mode_02.cpsat_batt_voltage_source_v2
  :field m02_soc_status: beacon.mode_02.soc_status
  :field m02_i2_c_error_count: beacon.mode_02.i2_c_error_count
  :field m02_uart_error_count: beacon.mode_02.uart_error_count
  :field m02_batt_bat_hk_stale_ticks: beacon.mode_02.batt_bat_hk_stale_ticks
  :field m02_batt_eps_hk_stale_ticks: beacon.mode_02.batt_eps_hk_stale_ticks
  :field m02_cpsat_cmd_cnt: beacon.mode_02.cpsat_cmd_cnt
  :field m02_cpsat_err_cnt: beacon.mode_02.cpsat_err_cnt
  :field m02_cpsat_boot_count: beacon.mode_02.cpsat_boot_count
  :field m03_gs_elev_deg_s8: beacon.mode_03.gs_elev_deg_s8
  :field m03_gs_elev_phase: beacon.mode_03.gs_elev_phase
  :field m03_cpsat_cmd_counter: beacon.mode_03.cpsat_cmd_counter
  :field m03_cpsat_err_counter: beacon.mode_03.cpsat_err_counter
  :field m03_pedding1: beacon.mode_03.pedding1
  :field m03_bat_motherboard_temperature: beacon.mode_03.bat_motherboard_temperature_converted
  :field m03_bat_daughterboard_temp_0: beacon.mode_03.bat_daughterboard_temp.0
  :field m03_bat_daughterboard_temp_1: beacon.mode_03.bat_daughterboard_temp.1
  :field m03_bat_daughterboard_temp_2: beacon.mode_03.bat_daughterboard_temp.2
  :field m03_bat_daughterboard_temp_3: beacon.mode_03.bat_daughterboard_temp.3
  :field m03_eps_bcr1_sa1_a_temp: beacon.mode_03.eps_bcr1_sa1_a_temp_converted
  :field m03_eps_bcr1_sa1_b_temp: beacon.mode_03.eps_bcr1_sa1_b_temp_converted
  :field m03_eps_bcr2_sa2_a_temp: beacon.mode_03.eps_bcr2_sa2_a_temp_converted
  :field m03_eps_bcr2_sa2_b_temp: beacon.mode_03.eps_bcr2_sa2_b_temp_converted
  :field m03_eps_bcr3_sa3_a_temp: beacon.mode_03.eps_bcr3_sa3_a_temp_converted
  :field m03_eps_bcr3_sa3_b_temp: beacon.mode_03.eps_bcr3_sa3_b_temp_converted
  :field m03_eps_bcr4_sa4_a_temp: beacon.mode_03.eps_bcr4_sa4_a_temp_converted
  :field m03_eps_bcr4_sa4_b_temp: beacon.mode_03.eps_bcr4_sa4_b_temp_converted
  :field m03_eps_bcr5_sa5_a_temp: beacon.mode_03.eps_bcr5_sa5_a_temp_converted
  :field m03_eps_bcr5_sa5_b_temp: beacon.mode_03.eps_bcr5_sa5_b_temp_converted
  :field m03_eps_bcr6_sa6_a_temp: beacon.mode_03.eps_bcr6_sa6_a_temp_converted
  :field m03_eps_bcr6_sa6_b_temp: beacon.mode_03.eps_bcr6_sa6_b_temp_converted
  :field m03_eps_bcr7_sa7_a_temp: beacon.mode_03.eps_bcr7_sa7_a_temp_converted
  :field m03_eps_bcr7_sa7_b_temp: beacon.mode_03.eps_bcr7_sa7_b_temp_converted
  :field m03_eps_bcr8_sa8_a_temp: beacon.mode_03.eps_bcr8_sa8_a_temp_converted
  :field m03_eps_bcr8_sa8_b_temp: beacon.mode_03.eps_bcr8_sa8_b_temp_converted
  :field m03_eps_bcr9_sa9_a_temp: beacon.mode_03.eps_bcr9_sa9_a_temp_converted
  :field m03_eps_bcr9_sa9_b_temp: beacon.mode_03.eps_bcr9_sa9_b_temp_converted
  :field m03_eps_motherboard_temperature: beacon.mode_03.eps_motherboard_temperature_converted
  :field m03_eps_daughterboard_temp: beacon.mode_03.eps_daughterboard_temp_converted
  :field m03_ant_temp: beacon.mode_03.ant_temp
  :field m03_power_amplifier_temperature: beacon.mode_03.power_amplifier_temperature_converted
  :field m03_local_oscillator_temperature: beacon.mode_03.local_oscillator_temperature_converted
  :field m03_obc_temp_dc: beacon.mode_03.obc_temp_dc_converted
  :field m03_beacon_frame: beacon.mode_03.beacon_frame
  :field m03_adcs_mtq_temp_core: beacon.mode_03.adcs_mtq_temp_core
  :field m03_adcs_mtq_temp_onboard: beacon.mode_03.adcs_mtq_temp_onboard
  :field m03_temp_bat_mother_peak: beacon.mode_03.temp_bat_mother_peak
  :field m03_temp_bat_mother_min: beacon.mode_03.temp_bat_mother_min
  :field m03_temp_bat_daughter_avg_peak: beacon.mode_03.temp_bat_daughter_avg_peak
  :field m03_temp_bat_daughter_avg_min: beacon.mode_03.temp_bat_daughter_avg_min
  :field m03_temp_eps_mother_peak: beacon.mode_03.temp_eps_mother_peak
  :field m03_temp_eps_mother_min: beacon.mode_03.temp_eps_mother_min
  :field m03_temp_pa_peak: beacon.mode_03.temp_pa_peak
  :field m03_pa_overtemp_edge_count: beacon.mode_03.pa_overtemp_edge_count
  :field m03_temp_hk_stale_ticks: beacon.mode_03.temp_hk_stale_ticks
  :field m03_temp_pad_0: beacon.mode_03.temp_pad.0
  :field m03_temp_pad_1: beacon.mode_03.temp_pad.1
  :field m03_temp_pad_2: beacon.mode_03.temp_pad.2
  :field m03_icm_temp: beacon.mode_03.icm_temp_converted
  :field m03_mtm_temp: beacon.mode_03.mtm_temp_converted
  :field m03_imu_temp_pad: beacon.mode_03.imu_temp_pad
  :field m04_eps_cmd_counter: beacon.mode_04.eps_cmd_counter
  :field m04_eps_err_counter: beacon.mode_04.eps_err_counter
  :field m04_get_eps_auto_sw_reset_count: beacon.mode_04.get_eps_auto_sw_reset_count
  :field m04_get_eps_w_reset_count: beacon.mode_04.get_eps_w_reset_count
  :field m04_pedding1: beacon.mode_04.pedding1
  :field m04_get_board_status: beacon.mode_04.get_board_status
  :field m04_get_last_mother_error_status: beacon.mode_04.get_last_mother_error_status
  :field m04_get_last_daughter_error_status: beacon.mode_04.get_last_daughter_error_status
  :field m04_eps_pdm_actual_state: beacon.mode_04.eps_pdm_actual_state
  :field m04_eps_pdm_expected_state: beacon.mode_04.eps_pdm_expected_state
  :field m04_eps_pdm_initial_state: beacon.mode_04.eps_pdm_initial_state
  :field m04_bcr_output_current: beacon.mode_04.bcr_output_current_converted
  :field m04_bcr_output_voltage: beacon.mode_04.bcr_output_voltage_converted
  :field m04_eps_draw_3_v3_current: beacon.mode_04.eps_draw_3_v3_current_converted
  :field m04_eps_draw_5_v_current: beacon.mode_04.eps_draw_5_v_current_converted
  :field m04_eps_output_12_v_bus_current: beacon.mode_04.eps_output_12_v_bus_current_converted
  :field m04_eps_output_12_v_bus_voltage: beacon.mode_04.eps_output_12_v_bus_voltage_converted
  :field m04_eps_output_bat_current: beacon.mode_04.eps_output_bat_current_converted
  :field m04_eps_output_bat_voltage: beacon.mode_04.eps_output_bat_voltage_converted
  :field m04_eps_output_5_v_bus_current: beacon.mode_04.eps_output_5_v_bus_current_converted
  :field m04_eps_output_5_v_bus_voltage: beacon.mode_04.eps_output_5_v_bus_voltage_converted
  :field m04_eps_output_3_v3_bus_current: beacon.mode_04.eps_output_3_v3_bus_current_converted
  :field m04_eps_output_3_v3_bus_voltage: beacon.mode_04.eps_output_3_v3_bus_voltage_converted
  :field m04_solar_panel_pdm_sw_1_voltage: beacon.mode_04.solar_panel_pdm_sw_1_voltage_converted
  :field m04_rw_pdm_sw_2_voltage: beacon.mode_04.rw_pdm_sw_2_voltage_converted
  :field m04_ld_pdm_sw_3_voltage: beacon.mode_04.ld_pdm_sw_3_voltage_converted
  :field m04_led_pdm_sw_4_voltage: beacon.mode_04.led_pdm_sw_4_voltage_converted
  :field m04_dummy_pdm_sw_5_voltage: beacon.mode_04.dummy_pdm_sw_5_voltage_converted
  :field m04_st_pdm_sw_6_voltage: beacon.mode_04.st_pdm_sw_6_voltage_converted
  :field m04_mtq5v_pdm_sw_7_voltage: beacon.mode_04.mtq5v_pdm_sw_7_voltage_converted
  :field m04_ant_pdm_sw_8_voltage: beacon.mode_04.ant_pdm_sw_8_voltage_converted
  :field m04_dummy_pdm_sw_9_voltage: beacon.mode_04.dummy_pdm_sw_9_voltage_converted
  :field m04_mtq3v_pdm_sw_10_voltage: beacon.mode_04.mtq3v_pdm_sw_10_voltage_converted
  :field m04_solar_panel_pdm_sw_1_current: beacon.mode_04.solar_panel_pdm_sw_1_current_converted
  :field m04_rw_pdm_sw_2_current: beacon.mode_04.rw_pdm_sw_2_current_converted
  :field m04_ld_pdm_sw_3_current: beacon.mode_04.ld_pdm_sw_3_current_converted
  :field m04_led_pdm_sw_4_current: beacon.mode_04.led_pdm_sw_4_current_converted
  :field m04_dummy_pdm_sw_5_current: beacon.mode_04.dummy_pdm_sw_5_current_converted
  :field m04_st_pdm_sw_6_current: beacon.mode_04.st_pdm_sw_6_current_converted
  :field m04_mtq5v_pdm_sw_7_current: beacon.mode_04.mtq5v_pdm_sw_7_current_converted
  :field m04_ant_pdm_sw_8_current: beacon.mode_04.ant_pdm_sw_8_current_converted
  :field m04_dummy_pdm_sw_9_current: beacon.mode_04.dummy_pdm_sw_9_current_converted
  :field m04_mtq3v_pdm_sw_10_current: beacon.mode_04.mtq3v_pdm_sw_10_current_converted
  :field m04_eps_motherboard_temp: beacon.mode_04.eps_motherboard_temp_converted
  :field m04_eps_daughterboard_temp: beacon.mode_04.eps_daughterboard_temp_converted
  :field m04_get_eps_brown_reset_count: beacon.mode_04.get_eps_brown_reset_count
  :field m04_get_eps_manual_reset_count: beacon.mode_04.get_eps_manual_reset_count
  :field m04_eps_static_version: beacon.mode_04.eps_static_version
  :field m04_eps_static_checksum: beacon.mode_04.eps_static_checksum
  :field m04_eps_static_firmware_rev: beacon.mode_04.eps_static_firmware_rev
  :field m04_eps_static_wdt_period: beacon.mode_04.eps_static_wdt_period
  :field m04_eps_peak_bus_current_0: beacon.mode_04.eps_peak_bus_current.0
  :field m04_eps_peak_bus_current_1: beacon.mode_04.eps_peak_bus_current.1
  :field m04_eps_peak_bus_current_2: beacon.mode_04.eps_peak_bus_current.2
  :field m04_eps_peak_bus_current_3: beacon.mode_04.eps_peak_bus_current.3
  :field m04_eps_min_bat_voltage: beacon.mode_04.eps_min_bat_voltage
  :field m04_eps_tbrd_mother_min: beacon.mode_04.eps_tbrd_mother_min
  :field m04_eps_tbrd_mother_max: beacon.mode_04.eps_tbrd_mother_max
  :field m04_eps_pdm_lcl_trip_count_0: beacon.mode_04.eps_pdm_lcl_trip_count.0
  :field m04_eps_pdm_lcl_trip_count_1: beacon.mode_04.eps_pdm_lcl_trip_count.1
  :field m04_eps_pdm_lcl_trip_count_2: beacon.mode_04.eps_pdm_lcl_trip_count.2
  :field m04_eps_pdm_lcl_trip_count_3: beacon.mode_04.eps_pdm_lcl_trip_count.3
  :field m04_eps_pdm_lcl_trip_count_4: beacon.mode_04.eps_pdm_lcl_trip_count.4
  :field m04_eps_pdm_lcl_trip_count_5: beacon.mode_04.eps_pdm_lcl_trip_count.5
  :field m04_eps_pdm_lcl_trip_count_6: beacon.mode_04.eps_pdm_lcl_trip_count.6
  :field m04_eps_pdm_lcl_trip_count_7: beacon.mode_04.eps_pdm_lcl_trip_count.7
  :field m04_eps_pdm_lcl_trip_count_8: beacon.mode_04.eps_pdm_lcl_trip_count.8
  :field m04_eps_pdm_lcl_trip_count_9: beacon.mode_04.eps_pdm_lcl_trip_count.9
  :field m04_eps_i2_c_stale_count: beacon.mode_04.eps_i2_c_stale_count
  :field m04_eps_hk_track_spare: beacon.mode_04.eps_hk_track_spare
  :field m04_padding_auto_1_0: beacon.mode_04.padding_auto_1.0
  :field m04_padding_auto_1_1: beacon.mode_04.padding_auto_1.1
  :field m04_eps_energy_output_total: beacon.mode_04.eps_energy_output_total
  :field m04_eps_energy_solar_total: beacon.mode_04.eps_energy_solar_total
  :field m04_soc_pct: beacon.mode_04.soc_pct
  :field m04_soc_status: beacon.mode_04.soc_status
  :field m04_pad_tail_0: beacon.mode_04.pad_tail.0
  :field m04_pad_tail_1: beacon.mode_04.pad_tail.1
  :field m05_adcs_time_flags: beacon.mode_05.adcs_time_flags
  :field m05_adcs_drift_min_u8: beacon.mode_05.adcs_drift_min_u8
  :field m05_bat_command_counter: beacon.mode_05.bat_command_counter
  :field m05_bat_cmd_err_counter: beacon.mode_05.bat_cmd_err_counter
  :field m05_bat_wdt_reset_counter: beacon.mode_05.bat_wdt_reset_counter
  :field m05_bat_auto_software_reset_counter: beacon.mode_05.bat_auto_software_reset_counter
  :field m05_bat_get_manual_reset_counter: beacon.mode_05.bat_get_manual_reset_counter
  :field m05_bat_get_heater_controller_status: beacon.mode_05.bat_get_heater_controller_status
  :field m05_bat_get_board_status: beacon.mode_05.bat_get_board_status
  :field m05_bat_get_last_error: beacon.mode_05.bat_get_last_error
  :field m05_spare: beacon.mode_05.spare
  :field m05_bat_get_version: beacon.mode_05.bat_get_version
  :field m05_bat_get_checksum: beacon.mode_05.bat_get_checksum
  :field m05_battery_output_voltage: beacon.mode_05.battery_output_voltage_converted
  :field m05_battery_current_magnitude: beacon.mode_05.battery_current_magnitude_converted
  :field m05_battery_current_direction: beacon.mode_05.battery_current_direction
  :field m05_motherboard_temperature: beacon.mode_05.motherboard_temperature_converted
  :field m05_current_draw_5v_bus: beacon.mode_05.current_draw_5v_bus_converted
  :field m05_output_voltage_5v_bus: beacon.mode_05.output_voltage_5v_bus_converted
  :field m05_current_draw_3v3_bus: beacon.mode_05.current_draw_3v3_bus_converted
  :field m05_output_voltage_3v3_bus: beacon.mode_05.output_voltage_3v3_bus_converted
  :field m05_daughterboard_temp_0: beacon.mode_05.daughterboard_temp_0_converted
  :field m05_daughterboard_temp_1: beacon.mode_05.daughterboard_temp_1_converted
  :field m05_daughterboard_temp_2: beacon.mode_05.daughterboard_temp_2_converted
  :field m05_daughterboard_temp_3: beacon.mode_05.daughterboard_temp_3_converted
  :field m05_daughterboard_heater_status_0: beacon.mode_05.daughterboard_heater_status.0
  :field m05_daughterboard_heater_status_1: beacon.mode_05.daughterboard_heater_status.1
  :field m05_daughterboard_heater_status_2: beacon.mode_05.daughterboard_heater_status.2
  :field m05_daughterboard_heater_status_3: beacon.mode_05.daughterboard_heater_status.3
  :field m05_bat_voltage_peak: beacon.mode_05.bat_voltage_peak_converted
  :field m05_bat_voltage_min: beacon.mode_05.bat_voltage_min_converted
  :field m05_bat_current_peak_mag: beacon.mode_05.bat_current_peak_mag_converted
  :field m05_bat_mother_temp_peak: beacon.mode_05.bat_mother_temp_peak_converted
  :field m05_bat_mother_temp_min: beacon.mode_05.bat_mother_temp_min_converted
  :field m05_bat_daughter_temp_peak_0: beacon.mode_05.bat_daughter_temp_peak_0_converted
  :field m05_bat_daughter_temp_peak_1: beacon.mode_05.bat_daughter_temp_peak_1_converted
  :field m05_bat_daughter_temp_peak_2: beacon.mode_05.bat_daughter_temp_peak_2_converted
  :field m05_bat_daughter_temp_peak_3: beacon.mode_05.bat_daughter_temp_peak_3_converted
  :field m05_bat_heater_on_edge_count: beacon.mode_05.bat_heater_on_edge_count
  :field m05_bat_last_error_latch: beacon.mode_05.bat_last_error_latch
  :field m05_bat_hk_stale_ticks: beacon.mode_05.bat_hk_stale_ticks
  :field m05_bat_filter_stale_consec: beacon.mode_05.bat_filter_stale_consec
  :field m05_bat_filter_enabled: beacon.mode_05.bat_filter_enabled
  :field m05_bat_fdir_latch: beacon.mode_05.bat_fdir_latch
  :field m05_bat_board_status_sticky: beacon.mode_05.bat_board_status_sticky
  :field m05_bat_undervolt_count: beacon.mode_05.bat_undervolt_count
  :field m05_bat_temp_oor_count: beacon.mode_05.bat_temp_oor_count
  :field m05_bat_crate_exceed_count: beacon.mode_05.bat_crate_exceed_count
  :field m05_bat_fdir_spare: beacon.mode_05.bat_fdir_spare
  :field m06_rs_encode_frames: beacon.mode_06.rs_encode_frames
  :field m06_trx_reconfig_cnt8: beacon.mode_06.trx_reconfig_cnt8
  :field m06_spare: beacon.mode_06.spare
  :field m06_instantaneous_doppler_offset: beacon.mode_06.instantaneous_doppler_offset_converted
  :field m06_instantaneous_signal_strength: beacon.mode_06.instantaneous_signal_strength_converted
  :field m06_instantaneous_rf_reflected_power: beacon.mode_06.instantaneous_rf_reflected_power_converted
  :field m06_instantaneous_rf_forward_power: beacon.mode_06.instantaneous_rf_forward_power_converted
  :field m06_power_bus_voltage: beacon.mode_06.power_bus_voltage_converted
  :field m06_total_supply_current: beacon.mode_06.total_supply_current_converted
  :field m06_transmitter_current: beacon.mode_06.transmitter_current_converted
  :field m06_receiver_current: beacon.mode_06.receiver_current_converted
  :field m06_power_amplifier_current: beacon.mode_06.power_amplifier_current_converted
  :field m06_power_amplifier_temperature: beacon.mode_06.power_amplifier_temperature_converted
  :field m06_local_oscillator_temperature: beacon.mode_06.local_oscillator_temperature_converted
  :field m06_last_instantaneous_doppler_offset: beacon.mode_06.last_instantaneous_doppler_offset_converted
  :field m06_last_instantaneous_signal_strength: beacon.mode_06.last_instantaneous_signal_strength_converted
  :field m06_transmitter_status_dummy: beacon.mode_06.transmitter_status_dummy
  :field m06_transmitter_status_rate: beacon.mode_06.transmitter_status_rate
  :field m06_transmitter_status_beacon: beacon.mode_06.transmitter_status_beacon
  :field m06_transmitter_status_idle: beacon.mode_06.transmitter_status_idle
  :field m06_pa_overtemp_flag: beacon.mode_06.pa_overtemp_flag
  :field m06_command_counter: beacon.mode_06.command_counter
  :field m06_cmd_err_counter: beacon.mode_06.cmd_err_counter
  :field m06_receiver_uptime: beacon.mode_06.receiver_uptime
  :field m06_transmitter_uptime: beacon.mode_06.transmitter_uptime
  :field m06_rcv_pll_lock_err: beacon.mode_06.rcv_pll_lock_err
  :field m06_trs_pll_lock_err: beacon.mode_06.trs_pll_lock_err
  :field m06_rcv_last_reset_cause: beacon.mode_06.rcv_last_reset_cause
  :field m06_trs_last_reset_cause: beacon.mode_06.trs_last_reset_cause
  :field m06_reset_cause_spare_0: beacon.mode_06.reset_cause_spare.0
  :field m06_reset_cause_spare_1: beacon.mode_06.reset_cause_spare.1
  :field m06_send_frame_fail_count: beacon.mode_06.send_frame_fail_count
  :field m06_spare_align_0: beacon.mode_06.spare_align.0
  :field m06_spare_align_1: beacon.mode_06.spare_align.1
  :field m06_rcv_pll_freq_err: beacon.mode_06.rcv_pll_freq_err
  :field m06_trs_pll_freq_err: beacon.mode_06.trs_pll_freq_err
  :field m06_rf_rssi_peak: beacon.mode_06.rf_rssi_peak
  :field m06_rf_rssi_min: beacon.mode_06.rf_rssi_min
  :field m06_rf_doppler_peak_abs: beacon.mode_06.rf_doppler_peak_abs
  :field m06_rf_rf_fwd_peak: beacon.mode_06.rf_rf_fwd_peak
  :field m06_rf_rf_refl_peak: beacon.mode_06.rf_rf_refl_peak
  :field m06_rf_pa_temp_peak: beacon.mode_06.rf_pa_temp_peak
  :field m06_rf_pll_lock_err_peak_rcv: beacon.mode_06.rf_pll_lock_err_peak_rcv
  :field m06_rf_pll_lock_err_peak_trs: beacon.mode_06.rf_pll_lock_err_peak_trs
  :field m06_rf_hk_stale_ticks: beacon.mode_06.rf_hk_stale_ticks
  :field m06_rf_pad1_0: beacon.mode_06.rf_pad1.0
  :field m06_rf_pad1_1: beacon.mode_06.rf_pad1.1
  :field m06_rf_pad1_2: beacon.mode_06.rf_pad1.2
  :field m06_rcv_frequency_khz: beacon.mode_06.rcv_frequency_khz
  :field m06_trs_frequency_khz: beacon.mode_06.trs_frequency_khz
  :field m06_to_callsign_octet_0: beacon.mode_06.to_callsign.0
  :field m06_to_callsign_octet_1: beacon.mode_06.to_callsign.1
  :field m06_to_callsign_octet_2: beacon.mode_06.to_callsign.2
  :field m06_to_callsign_octet_3: beacon.mode_06.to_callsign.3
  :field m06_to_callsign_octet_4: beacon.mode_06.to_callsign.4
  :field m06_to_callsign_octet_5: beacon.mode_06.to_callsign.5
  :field m06_to_callsign_octet_6: beacon.mode_06.to_callsign.6
  :field m06_to_callsign_octet_7: beacon.mode_06.to_callsign.7
  :field m06_from_callsign_octet_0: beacon.mode_06.from_callsign.0
  :field m06_from_callsign_octet_1: beacon.mode_06.from_callsign.1
  :field m06_from_callsign_octet_2: beacon.mode_06.from_callsign.2
  :field m06_from_callsign_octet_3: beacon.mode_06.from_callsign.3
  :field m06_from_callsign_octet_4: beacon.mode_06.from_callsign.4
  :field m06_from_callsign_octet_5: beacon.mode_06.from_callsign.5
  :field m06_from_callsign_octet_6: beacon.mode_06.from_callsign.6
  :field m06_from_callsign_octet_7: beacon.mode_06.from_callsign.7
  :field m06_rcv_frame_num: beacon.mode_06.rcv_frame_num
  :field m06_p9b_reserved: beacon.mode_06.p9b_reserved
  :field m06_pa_overtemp_count: beacon.mode_06.pa_overtemp_count
  :field m06_pa_overtemp_reserved: beacon.mode_06.pa_overtemp_reserved
  :field m06_pcb_temperature: beacon.mode_06.pcb_temperature
  :field m06_pcb_temp_reserved: beacon.mode_06.pcb_temp_reserved
  :field m06_transponder_rssi_raw: beacon.mode_06.transponder_rssi_raw
  :field m06_last_trans_reflected_raw: beacon.mode_06.last_trans_reflected_raw
  :field m06_last_trans_forward_raw: beacon.mode_06.last_trans_forward_raw
  :field m06_p18_reserved: beacon.mode_06.p18_reserved
  :field m06_receiver_error_count: beacon.mode_06.receiver_error_count
  :field m06_i2c_error_count: beacon.mode_06.i2c_error_count
  :field m06_last_uplink_recv_time: beacon.mode_06.last_uplink_recv_time
  :field m06_total_rx_frame_count: beacon.mode_06.total_rx_frame_count
  :field m06_total_tx_frame_count: beacon.mode_06.total_tx_frame_count
  :field m06_tx_mode_change_count: beacon.mode_06.tx_mode_change_count
  :field m06_p19_reserved: beacon.mode_06.p19_reserved
  :field m06_pa_overtemp_last_time: beacon.mode_06.pa_overtemp_last_time
  :field m06_high_reflected_last_time: beacon.mode_06.high_reflected_last_time
  :field m06_rcv_reset_last_time: beacon.mode_06.rcv_reset_last_time
  :field m06_trs_reset_last_time: beacon.mode_06.trs_reset_last_time
  :field m06_rf_forward_peak: beacon.mode_06.rf_forward_peak
  :field m06_pa_current_peak: beacon.mode_06.pa_current_peak
  :field m06_reflected_peak: beacon.mode_06.reflected_peak
  :field m06_pa_temp_peak: beacon.mode_06.pa_temp_peak
  :field m06_pa_temp_min: beacon.mode_06.pa_temp_min
  :field m06_lo_temp_peak: beacon.mode_06.lo_temp_peak
  :field m06_lo_temp_min: beacon.mode_06.lo_temp_min
  :field m06_pcb_temp_peak: beacon.mode_06.pcb_temp_peak
  :field m06_pcb_temp_min: beacon.mode_06.pcb_temp_min
  :field m06_rssi_peak: beacon.mode_06.rssi_peak
  :field m06_rssi_min: beacon.mode_06.rssi_min
  :field m06_doppler_peak: beacon.mode_06.doppler_peak
  :field m06_doppler_min: beacon.mode_06.doppler_min
  :field m06_padding_auto_1_0: beacon.mode_06.padding_auto_1.0
  :field m06_padding_auto_1_1: beacon.mode_06.padding_auto_1.1
  :field m06_i2c_total_count: beacon.mode_06.i2c_total_count
  :field m06_pcm_reset_request_count: beacon.mode_06.pcm_reset_request_count
  :field m06_tx_mode: beacon.mode_06.tx_mode
  :field m06_last_freq_status: beacon.mode_06.last_freq_status
  :field m06_transponder_rssi_threshold: beacon.mode_06.transponder_rssi_threshold
  :field m06_transponder_input_freq_khz_lo: beacon.mode_06.transponder_input_freq_khz_lo
  :field m06_transponder_input_freq_khz_hi: beacon.mode_06.transponder_input_freq_khz_hi
  :field m06_ci_ingest_count: beacon.mode_06.ci_ingest_count
  :field m06_ci_ingest_err: beacon.mode_06.ci_ingest_err
  :field m06_rx_buffer_frame_count: beacon.mode_06.rx_buffer_frame_count
  :field m06_tx_buffer_free_slots: beacon.mode_06.tx_buffer_free_slots
  :field m06_idle_window_enable: beacon.mode_06.idle_window_enable
  :field m06_idle_window_hold_s: beacon.mode_06.idle_window_hold_s
  :field m06_trs_expn_pad_0: beacon.mode_06.trs_expn_pad.0
  :field m06_trs_expn_pad_1: beacon.mode_06.trs_expn_pad.1
  :field m07_spare: beacon.mode_07.spare
  :field m07_command_counter: beacon.mode_07.command_counter
  :field m07_cmd_err_counter: beacon.mode_07.cmd_err_counter
  :field m07_dss_payload_dss_dir1_x: beacon.mode_07.dss_payload_dss_dir1_x
  :field m07_dss_payload_dss_dir1_y: beacon.mode_07.dss_payload_dss_dir1_y
  :field m07_dss_payload_dss_dir1_z: beacon.mode_07.dss_payload_dss_dir1_z
  :field m07_dss_payload_dss_dir2_x: beacon.mode_07.dss_payload_dss_dir2_x
  :field m07_dss_payload_dss_dir2_y: beacon.mode_07.dss_payload_dss_dir2_y
  :field m07_dss_payload_dss_dir2_z: beacon.mode_07.dss_payload_dss_dir2_z
  :field m07_dss_payload_dss_dir3_x: beacon.mode_07.dss_payload_dss_dir3_x
  :field m07_dss_payload_dss_dir3_y: beacon.mode_07.dss_payload_dss_dir3_y
  :field m07_dss_payload_dss_dir3_z: beacon.mode_07.dss_payload_dss_dir3_z
  :field m07_dss_payload_padding1_0: beacon.mode_07.dss_payload_padding1.0
  :field m07_dss_payload_padding1_1: beacon.mode_07.dss_payload_padding1.1
  :field m07_dss_payload_padding1_2: beacon.mode_07.dss_payload_padding1.2
  :field m07_padding_gps_0: beacon.mode_07.padding_gps.0
  :field m07_padding_gps_1: beacon.mode_07.padding_gps.1
  :field m07_gps_payload_solution_status: beacon.mode_07.gps_payload_solution_status
  :field m07_gps_payload_padding1_0: beacon.mode_07.gps_payload_padding1.0
  :field m07_gps_payload_padding1_1: beacon.mode_07.gps_payload_padding1.1
  :field m07_gps_payload_padding1_2: beacon.mode_07.gps_payload_padding1.2
  :field m07_gps_payload_padding1_3: beacon.mode_07.gps_payload_padding1.3
  :field m07_gps_payload_padding1_4: beacon.mode_07.gps_payload_padding1.4
  :field m07_gps_payload_padding1_5: beacon.mode_07.gps_payload_padding1.5
  :field m07_gps_payload_padding1_6: beacon.mode_07.gps_payload_padding1.6
  :field m07_gps_payload_jd_int: beacon.mode_07.gps_payload_jd_int
  :field m07_gps_payload_jd_frac: beacon.mode_07.gps_payload_jd_frac
  :field m07_gps_payload_gps_pos_x: beacon.mode_07.gps_payload_gps_pos_x
  :field m07_gps_payload_gps_pos_y: beacon.mode_07.gps_payload_gps_pos_y
  :field m07_gps_payload_gps_pos_z: beacon.mode_07.gps_payload_gps_pos_z
  :field m07_gps_payload_gps_vel_x: beacon.mode_07.gps_payload_gps_vel_x
  :field m07_gps_payload_gps_vel_y: beacon.mode_07.gps_payload_gps_vel_y
  :field m07_gps_payload_gps_vel_z: beacon.mode_07.gps_payload_gps_vel_z
  :field m07_mtq_payload_mtq_pwm_duty_0: beacon.mode_07.mtq_payload_mtq_pwm_duty.0
  :field m07_mtq_payload_mtq_pwm_duty_1: beacon.mode_07.mtq_payload_mtq_pwm_duty.1
  :field m07_mtq_payload_mtq_pwm_duty_2: beacon.mode_07.mtq_payload_mtq_pwm_duty.2
  :field m07_mtq_payload_mtq_direction_0: beacon.mode_07.mtq_payload_mtq_direction.0
  :field m07_mtq_payload_mtq_direction_1: beacon.mode_07.mtq_payload_mtq_direction.1
  :field m07_mtq_payload_mtq_direction_2: beacon.mode_07.mtq_payload_mtq_direction.2
  :field m07_mtq_payload_padding: beacon.mode_07.mtq_payload_padding
  :field m07_mtq_payload_mtq_current_0: beacon.mode_07.mtq_payload_mtq_current.0
  :field m07_mtq_payload_mtq_current_1: beacon.mode_07.mtq_payload_mtq_current.1
  :field m07_mtq_payload_mtq_current_2: beacon.mode_07.mtq_payload_mtq_current.2
  :field m07_mtq_payload_mtq_current_3: beacon.mode_07.mtq_payload_mtq_current.3
  :field m07_mtq_payload_mtq_current_4: beacon.mode_07.mtq_payload_mtq_current.4
  :field m07_mtq_payload_mtq_current_5: beacon.mode_07.mtq_payload_mtq_current.5
  :field m07_mtq_payload_mtq_momentum_0: beacon.mode_07.mtq_payload_mtq_momentum.0
  :field m07_mtq_payload_mtq_momentum_1: beacon.mode_07.mtq_payload_mtq_momentum.1
  :field m07_mtq_payload_mtq_momentum_2: beacon.mode_07.mtq_payload_mtq_momentum.2
  :field m07_mtq_payload_mtq_temp_core: beacon.mode_07.mtq_payload_mtq_temp_core
  :field m07_mtq_payload_mtq_temp_onboard: beacon.mode_07.mtq_payload_mtq_temp_onboard
  :field m07_rw_payload_rw_wheel_speedx: beacon.mode_07.rw_payload_rw_wheel_speedx
  :field m07_rw_payload_rw_wheel_speedy: beacon.mode_07.rw_payload_rw_wheel_speedy
  :field m07_rw_payload_rw_wheel_speedz: beacon.mode_07.rw_payload_rw_wheel_speedz
  :field m07_rw_payload_padding1: beacon.mode_07.rw_payload_padding1
  :field m07_st_seconds: beacon.mode_07.st_seconds
  :field m07_st_milli_seconds: beacon.mode_07.st_milli_seconds
  :field m07_adcs_wheel_speed_peak_abs_0: beacon.mode_07.adcs_wheel_speed_peak_abs.0
  :field m07_adcs_wheel_speed_peak_abs_1: beacon.mode_07.adcs_wheel_speed_peak_abs.1
  :field m07_adcs_wheel_speed_peak_abs_2: beacon.mode_07.adcs_wheel_speed_peak_abs.2
  :field m07_adcs_gyro_rate_peak_abs_0: beacon.mode_07.adcs_gyro_rate_peak_abs.0
  :field m07_adcs_gyro_rate_peak_abs_1: beacon.mode_07.adcs_gyro_rate_peak_abs.1
  :field m07_adcs_gyro_rate_peak_abs_2: beacon.mode_07.adcs_gyro_rate_peak_abs.2
  :field m07_adcs_mtq_current_peak_abs: beacon.mode_07.adcs_mtq_current_peak_abs
  :field m07_adcs_mtq_temp_core_peak: beacon.mode_07.adcs_mtq_temp_core_peak
  :field m07_adcs_mtq_temp_onboard_peak: beacon.mode_07.adcs_mtq_temp_onboard_peak
  :field m07_adcs_hk_stale_ticks: beacon.mode_07.adcs_hk_stale_ticks
  :field m07_adcs_hk_stale_flag: beacon.mode_07.adcs_hk_stale_flag
  :field m07_beacon_rx_count: beacon.mode_07.beacon_rx_count
  :field m07_adcs_reserved: beacon.mode_07.adcs_reserved
  :field m07_beacon_ecef_p_sat_0: beacon.mode_07.beacon_ecef_p_sat.0
  :field m07_beacon_ecef_p_sat_1: beacon.mode_07.beacon_ecef_p_sat.1
  :field m07_beacon_ecef_p_sat_2: beacon.mode_07.beacon_ecef_p_sat.2
  :field m07_beacon_ecef_v_sat_0: beacon.mode_07.beacon_ecef_v_sat.0
  :field m07_beacon_ecef_v_sat_1: beacon.mode_07.beacon_ecef_v_sat.1
  :field m07_beacon_ecef_v_sat_2: beacon.mode_07.beacon_ecef_v_sat.2
  :field m07_beacon_sat_w_eci2_sat_0: beacon.mode_07.beacon_sat_w_eci2_sat.0
  :field m07_beacon_sat_w_eci2_sat_1: beacon.mode_07.beacon_sat_w_eci2_sat.1
  :field m07_beacon_sat_w_eci2_sat_2: beacon.mode_07.beacon_sat_w_eci2_sat.2
  :field m07_beacon_sat_magnetic_0: beacon.mode_07.beacon_sat_magnetic.0
  :field m07_beacon_sat_magnetic_1: beacon.mode_07.beacon_sat_magnetic.1
  :field m07_beacon_sat_magnetic_2: beacon.mode_07.beacon_sat_magnetic.2
  :field m07_beacon_sat_u_sun_0: beacon.mode_07.beacon_sat_u_sun.0
  :field m07_beacon_sat_u_sun_1: beacon.mode_07.beacon_sat_u_sun.1
  :field m07_beacon_sat_u_sun_2: beacon.mode_07.beacon_sat_u_sun.2
  :field m07_beacon_ctrl_dipole_0: beacon.mode_07.beacon_ctrl_dipole.0
  :field m07_beacon_ctrl_dipole_1: beacon.mode_07.beacon_ctrl_dipole.1
  :field m07_beacon_ctrl_dipole_2: beacon.mode_07.beacon_ctrl_dipole.2
  :field m07_beacon_is_eclipse: beacon.mode_07.beacon_is_eclipse
  :field m07_beacon_mode_2_0: beacon.mode_07.beacon_mode_2.0
  :field m07_beacon_mode_2_1: beacon.mode_07.beacon_mode_2.1
  :field m07_beacon_mode_2_2: beacon.mode_07.beacon_mode_2.2
  :field m07_beacon_mode_2_3: beacon.mode_07.beacon_mode_2.3
  :field m07_beacon_mode_2_4: beacon.mode_07.beacon_mode_2.4
  :field m07_beacon_status_0: beacon.mode_07.beacon_status.0
  :field m07_beacon_status_1: beacon.mode_07.beacon_status.1
  :field m07_beacon_status_2: beacon.mode_07.beacon_status.2
  :field m07_beacon_status_3: beacon.mode_07.beacon_status.3
  :field m07_beacon_status_4: beacon.mode_07.beacon_status.4
  :field m07_beacon_dss_flag: beacon.mode_07.beacon_dss_flag
  :field m07_beacon_gps_flag: beacon.mode_07.beacon_gps_flag
  :field m07_beacon_mtq_flag: beacon.mode_07.beacon_mtq_flag
  :field m07_beacon_rw_flag_0: beacon.mode_07.beacon_rw_flag.0
  :field m07_beacon_rw_flag_1: beacon.mode_07.beacon_rw_flag.1
  :field m07_beacon_rw_flag_2: beacon.mode_07.beacon_rw_flag.2
  :field m07_beacon_st_flag: beacon.mode_07.beacon_st_flag
  :field m07_beacon_gyro_flag: beacon.mode_07.beacon_gyro_flag
  :field m07_beacon_mtm_flag: beacon.mode_07.beacon_mtm_flag
  :field m07_beacon_padding_0: beacon.mode_07.beacon_padding.0
  :field m07_beacon_padding_1: beacon.mode_07.beacon_padding.1
  :field m07_beacon_padding_2: beacon.mode_07.beacon_padding.2
  :field m07_beacon_padding_3: beacon.mode_07.beacon_padding.3
  :field m07_adcs_safing_state: beacon.mode_07.adcs_safing_state
  :field m07_adcs_safing_purpose: beacon.mode_07.adcs_safing_purpose
  :field m07_adcs_safing_pad_0: beacon.mode_07.adcs_safing_pad.0
  :field m07_adcs_safing_pad_1: beacon.mode_07.adcs_safing_pad.1
  :field m08_moon_dist_c256: beacon.mode_08.moon_dist_c256_converted
  :field m08_moon_valid: beacon.mode_08.moon_valid
  :field m08_ld_cmd_counter: beacon.mode_08.ld_cmd_counter
  :field m08_ld_err_counter: beacon.mode_08.ld_err_counter
  :field m08_app_state: beacon.mode_08.app_state
  :field m08_seq_step: beacon.mode_08.seq_step
  :field m08_last_cmd_cc: beacon.mode_08.last_cmd_cc
  :field m08_last_cmd_result: beacon.mode_08.last_cmd_result
  :field m08_last_err_cc: beacon.mode_08.last_err_cc
  :field m08_last_err_detail: beacon.mode_08.last_err_detail
  :field m08_last_seq_fail_step: beacon.mode_08.last_seq_fail_step
  :field m08_last_seq_fail_reason: beacon.mode_08.last_seq_fail_reason
  :field m08_last_drv_err_code: beacon.mode_08.last_drv_err_code
  :field m08_ld_state_packed: beacon.mode_08.ld_state_packed
  :field m08_ld_state_packed_b: beacon.mode_08.ld_state_packed_b
  :field m08_moon_eci_x_x1e4: beacon.mode_08.moon_eci_x_x1e4_converted
  :field m08_moon_eci_y_x1e4: beacon.mode_08.moon_eci_y_x1e4_converted
  :field m08_power_mode: beacon.mode_08.power_mode
  :field m08_ld_spare1: beacon.mode_08.ld_spare1
  :field m08_ld_spare2: beacon.mode_08.ld_spare2
  :field m08_active_seq_id: beacon.mode_08.active_seq_id
  :field m08_comm_fail_consecutive: beacon.mode_08.comm_fail_consecutive
  :field m08_fault_state: beacon.mode_08.fault_state
  :field m08_ld_spare3: beacon.mode_08.ld_spare3
  :field m08_spare0: beacon.mode_08.spare0
  :field m08_ld_current: beacon.mode_08.ld_current
  :field m08_temp_setpoint: beacon.mode_08.temp_setpoint
  :field m08_activate_count: beacon.mode_08.activate_count
  :field m08_uart_resp_max_ms: beacon.mode_08.uart_resp_max_ms
  :field m08_uart_write_err_count: beacon.mode_08.uart_write_err_count
  :field m08_uart_read_err_count: beacon.mode_08.uart_read_err_count
  :field m08_uart_timeout_count: beacon.mode_08.uart_timeout_count
  :field m08_nak_count: beacon.mode_08.nak_count
  :field m08_retry_count: beacon.mode_08.retry_count
  :field m08_seq_fail_count: beacon.mode_08.seq_fail_count
  :field m08_seu_detect_count: beacon.mode_08.seu_detect_count
  :field m08_spare1: beacon.mode_08.spare1
  :field m08_temperature: beacon.mode_08.temperature_converted
  :field m08_pd_voltage: beacon.mode_08.pd_voltage
  :field m08_last_rx_sec_ago: beacon.mode_08.last_rx_sec_ago
  :field m08_pad_rx: beacon.mode_08.pad_rx
  :field m08_ld_current_peak_ma: beacon.mode_08.ld_current_peak_ma
  :field m08_ld_temp_peak_c10: beacon.mode_08.ld_temp_peak_c10
  :field m08_ld_temp_min_c10: beacon.mode_08.ld_temp_min_c10
  :field m08_ld_fault_transient_edges: beacon.mode_08.ld_fault_transient_edges
  :field m08_ld_fault_permanent_edges: beacon.mode_08.ld_fault_permanent_edges
  :field m08_ld_edfa_alarm_edges: beacon.mode_08.ld_edfa_alarm_edges
  :field m08_ld_ext_reserved_0: beacon.mode_08.ld_ext_reserved.0
  :field m08_ld_ext_reserved_1: beacon.mode_08.ld_ext_reserved.1
  :field m08_ld_ext_reserved_2: beacon.mode_08.ld_ext_reserved.2
  :field m08_opt_token_holder: beacon.mode_08.opt_token_holder
  :field m08_opt_token_seq: beacon.mode_08.opt_token_seq
  :field m08_pad_tail_0: beacon.mode_08.pad_tail.0
  :field m08_pad_tail_1: beacon.mode_08.pad_tail.1
  :field m09_rs_encode_err: beacon.mode_09.rs_encode_err
  :field m09_elev_band_arm: beacon.mode_09.elev_band_arm
  :field m09_led_fault_transient_edges: beacon.mode_09.led_fault_transient_edges
  :field m09_led_fault_permanent_edges: beacon.mode_09.led_fault_permanent_edges
  :field m09_pad_agg: beacon.mode_09.pad_agg
  :field m09_last_rx_sec_ago: beacon.mode_09.last_rx_sec_ago
  :field m09_board_data_age_sec: beacon.mode_09.board_data_age_sec
  :field m09_led_temp_peak_c10: beacon.mode_09.led_temp_peak_c10
  :field m09_led_temp_min_c10: beacon.mode_09.led_temp_min_c10
  :field m09_led_voltage_peak_mv: beacon.mode_09.led_voltage_peak_mv
  :field m09_led_voltage_min_mv: beacon.mode_09.led_voltage_min_mv
  :field m09_pad_agg2: beacon.mode_09.pad_agg2
  :field m09_opt_token_holder: beacon.mode_09.opt_token_holder
  :field m09_opt_token_seq: beacon.mode_09.opt_token_seq
  :field m09_cmd_counter: beacon.mode_09.cmd_counter
  :field m09_err_counter: beacon.mode_09.err_counter
  :field m09_app_state: beacon.mode_09.app_state
  :field m09_last_cmd_c_c: beacon.mode_09.last_cmd_c_c
  :field m09_last_cmd_result: beacon.mode_09.last_cmd_result
  :field m09_last_err_c_c: beacon.mode_09.last_err_c_c
  :field m09_last_err_detail: beacon.mode_09.last_err_detail
  :field m09_last_drv_err_code: beacon.mode_09.last_drv_err_code
  :field m09_led_mask: beacon.mode_09.led_mask
  :field m09_any_led_on: beacon.mode_09.any_led_on
  :field m09_last_group: beacon.mode_09.last_group
  :field m09_last_mask: beacon.mode_09.last_mask
  :field m09_comm_status: beacon.mode_09.comm_status
  :field m09_last_temperature_c10: beacon.mode_09.last_temperature_c10
  :field m09_last_voltage_mv: beacon.mode_09.last_voltage_mv
  :field m09_activate_count: beacon.mode_09.activate_count
  :field m09_total_operating_time_sec: beacon.mode_09.total_operating_time_sec
  :field m09_current_session_time_sec: beacon.mode_09.current_session_time_sec
  :field m09_max_operating_time_sec: beacon.mode_09.max_operating_time_sec
  :field m09_uart_write_err_count: beacon.mode_09.uart_write_err_count
  :field m09_uart_read_err_count: beacon.mode_09.uart_read_err_count
  :field m09_uart_timeout_count: beacon.mode_09.uart_timeout_count
  :field m09_nak_count: beacon.mode_09.nak_count
  :field m09_retry_count: beacon.mode_09.retry_count
  :field m09_crc_err_count: beacon.mode_09.crc_err_count
  :field m09_comm_fail_consecutive: beacon.mode_09.comm_fail_consecutive
  :field m09_fault_state: beacon.mode_09.fault_state
  :field m09_seu_detect_count: beacon.mode_09.seu_detect_count
  :field m09_img_file_count: beacon.mode_09.img_file_count
  :field m09_img_prune_count: beacon.mode_09.img_prune_count
  :field m09_img_disk_full_count: beacon.mode_09.img_disk_full_count
  :field m09_img_write_err_count: beacon.mode_09.img_write_err_count
  :field m09_last_img_bytes: beacon.mode_09.last_img_bytes
  :field m09_last_capture_sec: beacon.mode_09.last_capture_sec
  :field m09_last_img_slot: beacon.mode_09.last_img_slot
  :field m09_last_img_src: beacon.mode_09.last_img_src
  :field m09_active_img_read: beacon.mode_09.active_img_read
  :field m09_board_boot_mode: beacon.mode_09.board_boot_mode
  :field m09_subsys_flags: beacon.mode_09.subsys_flags
  :field m09_opt_state: beacon.mode_09.opt_state
  :field m09_opt_mod: beacon.mode_09.opt_mod
  :field m09_opt_tx_seq: beacon.mode_09.opt_tx_seq
  :field m09_opt_tx_total: beacon.mode_09.opt_tx_total
  :field m09_pending_async: beacon.mode_09.pending_async
  :field m09_last_capture_slot_hw: beacon.mode_09.last_capture_slot_hw
  :field m09_last_capture_cam: beacon.mode_09.last_capture_cam
  :field m09_last_video_slot: beacon.mode_09.last_video_slot
  :field m09_last_video_frames: beacon.mode_09.last_video_frames
  :field m09_async_fail_count: beacon.mode_09.async_fail_count
  :field m09_busy_nak_count: beacon.mode_09.busy_nak_count
  :field m09_xfer_retx_count: beacon.mode_09.xfer_retx_count
  :field m09_xfer_incomplete_count: beacon.mode_09.xfer_incomplete_count
  :field m09_stray_frame_count: beacon.mode_09.stray_frame_count
  :field m09_link_baud_code: beacon.mode_09.link_baud_code
  :field m09_board_power_state: beacon.mode_09.board_power_state
  :field m09_last_session_result: beacon.mode_09.last_session_result
  :field m09_sd_bad_blocks: beacon.mode_09.sd_bad_blocks
  :field m09_session_count: beacon.mode_09.session_count
  :field m09_sd_capacity_mb: beacon.mode_09.sd_capacity_mb
  :field m09_session_start_sec: beacon.mode_09.session_start_sec
  :field m09_last_harvest_sec: beacon.mode_09.last_harvest_sec
  :field m09_board_time_status: beacon.mode_09.board_time_status
  :field m09_board_time_src: beacon.mode_09.board_time_src
  :field m09_board_time_drift_sec: beacon.mode_09.board_time_drift_sec
  :field m09_board_epoch: beacon.mode_09.board_epoch
  :field m09_board_tick_ms: beacon.mode_09.board_tick_ms
  :field m09_board_sample_sec: beacon.mode_09.board_sample_sec
  :field m09_poll_sample_sec: beacon.mode_09.poll_sample_sec
  :field m09_last_time_sync_sec: beacon.mode_09.last_time_sync_sec
  :field m09_board_uptime_sec: beacon.mode_09.board_uptime_sec
  :field m09_time_sync_count: beacon.mode_09.time_sync_count
  :field m09_time_sync_fail_count: beacon.mode_09.time_sync_fail_count
  :field m09_stale_flags: beacon.mode_09.stale_flags
  :field m09_sd_img_full: beacon.mode_09.sd_img_full
  :field m09_storage_mode: beacon.mode_09.storage_mode
  :field m09_flash_state: beacon.mode_09.flash_state
  :field m09_sd_state: beacon.mode_09.sd_state
  :field m09_sd_inserted: beacon.mode_09.sd_inserted
  :field m09_flash_img_count: beacon.mode_09.flash_img_count
  :field m09_flash_img_free: beacon.mode_09.flash_img_free
  :field m09_sd_img_count: beacon.mode_09.sd_img_count
  :field m09_scrub_cycles: beacon.mode_09.scrub_cycles
  :field m09_scrub_errors: beacon.mode_09.scrub_errors
  :field m09_evt_sync_pending: beacon.mode_09.evt_sync_pending
  :field m09_evt_sync_overflow: beacon.mode_09.evt_sync_overflow
  :field m09_sd_img_free_mb: beacon.mode_09.sd_img_free_mb
  :field m09_min_stack_watermark: beacon.mode_09.min_stack_watermark
  :field m09_flash_evt_used_kb: beacon.mode_09.flash_evt_used_kb
  :field m09_board_capture_total: beacon.mode_09.board_capture_total
  :field m09_board_opt_frame_total: beacon.mode_09.board_opt_frame_total
  :field m09_log_file_count: beacon.mode_09.log_file_count
  :field m09_log_write_err_count: beacon.mode_09.log_write_err_count
  :field m09_last_log_bytes: beacon.mode_09.last_log_bytes
  :field m09_img_crc_fail_count: beacon.mode_09.img_crc_fail_count
  :field m09_poll_index: beacon.mode_09.poll_index
  :field m09_poll_enabled: beacon.mode_09.poll_enabled
  :field m09_child_queue_count: beacon.mode_09.child_queue_count
  :field m09_child_queue_max: beacon.mode_09.child_queue_max
  :field m09_child_drop_count: beacon.mode_09.child_drop_count
  :field m10_shd_nav_ang_deg_u8: beacon.mode_10.shd_nav_ang_deg_u8
  :field m10_shd_flags8: beacon.mode_10.shd_flags8
  :field m10_eps_cmd_counter: beacon.mode_10.eps_cmd_counter
  :field m10_bcr_frame_seq: beacon.mode_10.bcr_frame_seq
  :field m10_eps_bcr1_voltage: beacon.mode_10.eps_bcr1_voltage_converted
  :field m10_eps_bcr1_sa1_a_current: beacon.mode_10.eps_bcr1_sa1_a_current_converted
  :field m10_eps_bcr1_sa1_b_current: beacon.mode_10.eps_bcr1_sa1_b_current_converted
  :field m10_eps_bcr1_sa1_a_temp: beacon.mode_10.eps_bcr1_sa1_a_temp_converted
  :field m10_eps_bcr1_sa1_b_temp: beacon.mode_10.eps_bcr1_sa1_b_temp_converted
  :field m10_eps_bcr1_sa1_a_sun_detector: beacon.mode_10.eps_bcr1_sa1_a_sun_detector_converted
  :field m10_eps_bcr1_sa1_b_sun_detector: beacon.mode_10.eps_bcr1_sa1_b_sun_detector_converted
  :field m10_eps_bcr2_voltage: beacon.mode_10.eps_bcr2_voltage_converted
  :field m10_eps_bcr2_sa2_a_current: beacon.mode_10.eps_bcr2_sa2_a_current_converted
  :field m10_eps_bcr2_sa2_b_current: beacon.mode_10.eps_bcr2_sa2_b_current_converted
  :field m10_eps_bcr2_sa2_a_temp: beacon.mode_10.eps_bcr2_sa2_a_temp_converted
  :field m10_eps_bcr2_sa2_b_temp: beacon.mode_10.eps_bcr2_sa2_b_temp_converted
  :field m10_eps_bcr2_sa2_a_sun_detector: beacon.mode_10.eps_bcr2_sa2_a_sun_detector_converted
  :field m10_eps_bcr2_sa2_b_sun_detector: beacon.mode_10.eps_bcr2_sa2_b_sun_detector_converted
  :field m10_eps_bcr3_voltage: beacon.mode_10.eps_bcr3_voltage_converted
  :field m10_eps_bcr3_sa3_a_current: beacon.mode_10.eps_bcr3_sa3_a_current_converted
  :field m10_eps_bcr3_sa3_b_current: beacon.mode_10.eps_bcr3_sa3_b_current_converted
  :field m10_eps_bcr3_sa3_a_temp: beacon.mode_10.eps_bcr3_sa3_a_temp_converted
  :field m10_eps_bcr3_sa3_b_temp: beacon.mode_10.eps_bcr3_sa3_b_temp_converted
  :field m10_eps_bcr3_sa3_a_sun_detector: beacon.mode_10.eps_bcr3_sa3_a_sun_detector_converted
  :field m10_eps_bcr3_sa3_b_sun_detector: beacon.mode_10.eps_bcr3_sa3_b_sun_detector_converted
  :field m10_eps_bcr4_voltage: beacon.mode_10.eps_bcr4_voltage_converted
  :field m10_eps_bcr4_sa4_a_current: beacon.mode_10.eps_bcr4_sa4_a_current_converted
  :field m10_eps_bcr4_sa4_b_current: beacon.mode_10.eps_bcr4_sa4_b_current_converted
  :field m10_eps_bcr4_sa4_a_temp: beacon.mode_10.eps_bcr4_sa4_a_temp_converted
  :field m10_eps_bcr4_sa4_b_temp: beacon.mode_10.eps_bcr4_sa4_b_temp_converted
  :field m10_eps_bcr4_sa4_a_sun_detector: beacon.mode_10.eps_bcr4_sa4_a_sun_detector_converted
  :field m10_eps_bcr4_sa4_b_sun_detector: beacon.mode_10.eps_bcr4_sa4_b_sun_detector_converted
  :field m10_eps_bcr5_voltage: beacon.mode_10.eps_bcr5_voltage_converted
  :field m10_eps_bcr5_sa5_a_current: beacon.mode_10.eps_bcr5_sa5_a_current_converted
  :field m10_eps_bcr5_sa5_b_current: beacon.mode_10.eps_bcr5_sa5_b_current_converted
  :field m10_eps_bcr5_sa5_a_temp: beacon.mode_10.eps_bcr5_sa5_a_temp_converted
  :field m10_eps_bcr5_sa5_b_temp: beacon.mode_10.eps_bcr5_sa5_b_temp_converted
  :field m10_eps_bcr5_sa5_a_sun_detector: beacon.mode_10.eps_bcr5_sa5_a_sun_detector_converted
  :field m10_eps_bcr5_sa5_b_sun_detector: beacon.mode_10.eps_bcr5_sa5_b_sun_detector_converted
  :field m10_eps_bcr6_voltage: beacon.mode_10.eps_bcr6_voltage_converted
  :field m10_eps_bcr6_sa6_a_current: beacon.mode_10.eps_bcr6_sa6_a_current_converted
  :field m10_eps_bcr6_sa6_b_current: beacon.mode_10.eps_bcr6_sa6_b_current_converted
  :field m10_eps_bcr6_sa6_a_temp: beacon.mode_10.eps_bcr6_sa6_a_temp_converted
  :field m10_eps_bcr6_sa6_b_temp: beacon.mode_10.eps_bcr6_sa6_b_temp_converted
  :field m10_eps_bcr6_sa6_a_sun_detector: beacon.mode_10.eps_bcr6_sa6_a_sun_detector_converted
  :field m10_eps_bcr6_sa6_b_sun_detector: beacon.mode_10.eps_bcr6_sa6_b_sun_detector_converted
  :field m10_eps_bcr7_voltage: beacon.mode_10.eps_bcr7_voltage_converted
  :field m10_eps_bcr7_sa7_a_current: beacon.mode_10.eps_bcr7_sa7_a_current_converted
  :field m10_eps_bcr7_sa7_b_current: beacon.mode_10.eps_bcr7_sa7_b_current_converted
  :field m10_eps_bcr7_sa7_a_temp: beacon.mode_10.eps_bcr7_sa7_a_temp_converted
  :field m10_eps_bcr7_sa7_b_temp: beacon.mode_10.eps_bcr7_sa7_b_temp_converted
  :field m10_eps_bcr7_sa7_a_sun_detector: beacon.mode_10.eps_bcr7_sa7_a_sun_detector_converted
  :field m10_eps_bcr7_sa7_b_sun_detector: beacon.mode_10.eps_bcr7_sa7_b_sun_detector_converted
  :field m10_eps_bcr8_voltage: beacon.mode_10.eps_bcr8_voltage_converted
  :field m10_eps_bcr8_sa8_a_current: beacon.mode_10.eps_bcr8_sa8_a_current_converted
  :field m10_eps_bcr8_sa8_b_current: beacon.mode_10.eps_bcr8_sa8_b_current_converted
  :field m10_eps_bcr8_sa8_a_temp: beacon.mode_10.eps_bcr8_sa8_a_temp_converted
  :field m10_eps_bcr8_sa8_b_temp: beacon.mode_10.eps_bcr8_sa8_b_temp_converted
  :field m10_eps_bcr8_sa8_a_sun_detector: beacon.mode_10.eps_bcr8_sa8_a_sun_detector_converted
  :field m10_eps_bcr8_sa8_b_sun_detector: beacon.mode_10.eps_bcr8_sa8_b_sun_detector_converted
  :field m10_eps_bcr9_voltage: beacon.mode_10.eps_bcr9_voltage_converted
  :field m10_eps_bcr9_sa9_a_current: beacon.mode_10.eps_bcr9_sa9_a_current_converted
  :field m10_eps_bcr9_sa9_b_current: beacon.mode_10.eps_bcr9_sa9_b_current_converted
  :field m10_eps_bcr9_sa9_a_temp: beacon.mode_10.eps_bcr9_sa9_a_temp_converted
  :field m10_eps_bcr9_sa9_b_temp: beacon.mode_10.eps_bcr9_sa9_b_temp_converted
  :field m10_eps_bcr9_sa9_a_sun_detector: beacon.mode_10.eps_bcr9_sa9_a_sun_detector_converted
  :field m10_eps_bcr9_sa9_b_sun_detector: beacon.mode_10.eps_bcr9_sa9_b_sun_detector_converted
  :field m10_pdm_timer_limit_0: beacon.mode_10.pdm_timer_limit.0
  :field m10_pdm_timer_limit_1: beacon.mode_10.pdm_timer_limit.1
  :field m10_pdm_timer_limit_2: beacon.mode_10.pdm_timer_limit.2
  :field m10_pdm_timer_limit_3: beacon.mode_10.pdm_timer_limit.3
  :field m10_pdm_timer_limit_4: beacon.mode_10.pdm_timer_limit.4
  :field m10_pdm_timer_limit_5: beacon.mode_10.pdm_timer_limit.5
  :field m10_pdm_timer_limit_6: beacon.mode_10.pdm_timer_limit.6
  :field m10_pdm_timer_limit_7: beacon.mode_10.pdm_timer_limit.7
  :field m10_pdm_timer_limit_8: beacon.mode_10.pdm_timer_limit.8
  :field m10_pdm_timer_limit_9: beacon.mode_10.pdm_timer_limit.9
  :field m10_pdm_timer_current_0: beacon.mode_10.pdm_timer_current.0
  :field m10_pdm_timer_current_1: beacon.mode_10.pdm_timer_current.1
  :field m10_pdm_timer_current_2: beacon.mode_10.pdm_timer_current.2
  :field m10_pdm_timer_current_3: beacon.mode_10.pdm_timer_current.3
  :field m10_pdm_timer_current_4: beacon.mode_10.pdm_timer_current.4
  :field m10_pdm_timer_current_5: beacon.mode_10.pdm_timer_current.5
  :field m10_pdm_timer_current_6: beacon.mode_10.pdm_timer_current.6
  :field m10_pdm_timer_current_7: beacon.mode_10.pdm_timer_current.7
  :field m10_pdm_timer_current_8: beacon.mode_10.pdm_timer_current.8
  :field m10_pdm_timer_current_9: beacon.mode_10.pdm_timer_current.9
  :field m10_eps2_spare_0: beacon.mode_10.eps2_spare.0
  :field m10_eps2_spare_1: beacon.mode_10.eps2_spare.1
  :field m10_shd_nav_ang_mean_x10: beacon.mode_10.shd_nav_ang_mean_x10_converted
  :field m10_shd_nav_ang_max_x10: beacon.mode_10.shd_nav_ang_max_x10_converted
  :field m10_shd_mag_ang_mean_x10: beacon.mode_10.shd_mag_ang_mean_x10_converted
  :field m10_shd_scored_lo: beacon.mode_10.shd_scored_lo
  :field m10_shd_flags: beacon.mode_10.shd_flags
  :field m10_shd_ver: beacon.mode_10.shd_ver
  :field m10_shd_pad: beacon.mode_10.shd_pad
seq:
  - id: destination
    contents: &id001
      - 134
      - 160
      - 166
      - 130
      - 168
      - 98
  - id: destination_ssid
    type: u1
    valid:
      expr: (_ & 0x1f) == 0
  - id: source
    contents: *id001
  - id: source_ssid
    type: u1
    valid:
      expr: (_ & 0x1f) == 1
  - id: control
    contents:
      - 3
  - id: pid
    contents:
      - 240
  - id: beacon
    type: beacon
    size-eos: true
types:
  beacon:
    seq:
      - id: ccsds_streamid
        type: u2
        valid: 2307
      - id: ccsds_sequence
        type: u2
        valid:
          expr: (_ >> 14) == 3
      - id: ccsds_length
        type: u2
        valid:
          expr: _ == _io.size - 7
      - id: ccsds_seconds
        type: u4
      - id: ccsds_subsecs
        type: u2
      - id: sec_hdr_align
        type: u4le
      - id: beacon_mode
        type: u1
        valid:
          expr: (_ == 1 and _io.size == 168) or (_ == 2 and _io.size == 232) or (_ == 3 and _io.size == 112) or
            (_ == 4 and _io.size == 156) or (_ == 5 and _io.size == 94) or (_ == 6 and _io.size == 224) or (_ ==
            7 and _io.size == 232) or (_ == 8 and _io.size == 96) or (_ == 9 and _io.size == 202) or (_ == 10 and
            _io.size == 182)
      - id: payload
        size-eos: true
    instances:
      mode_01:
        pos: 17
        size: 151
        type: mode_01
        if: beacon_mode == 1
      mode_02:
        pos: 17
        size: 215
        type: mode_02
        if: beacon_mode == 2
      mode_03:
        pos: 17
        size: 95
        type: mode_03
        if: beacon_mode == 3
      mode_04:
        pos: 17
        size: 139
        type: mode_04
        if: beacon_mode == 4
      mode_05:
        pos: 17
        size: 77
        type: mode_05
        if: beacon_mode == 5
      mode_06:
        pos: 17
        size: 207
        type: mode_06
        if: beacon_mode == 6
      mode_07:
        pos: 17
        size: 215
        type: mode_07
        if: beacon_mode == 7
      mode_08:
        pos: 17
        size: 79
        type: mode_08
        if: beacon_mode == 8
      mode_09:
        pos: 17
        size: 185
        type: mode_09
        if: beacon_mode == 9
      mode_10:
        pos: 17
        size: 165
        type: mode_10
        if: beacon_mode == 10
  mode_01:
    seq:
      - id: sw_version
        type: u1
        doc: 'SW_VERSION; CCSDS bit offset 136; units: unspecified.'
      - id: beacon_cmd_cnt
        type: u1
        doc: 'BEACON_CMD_CNT; CCSDS bit offset 144; units: unspecified.'
      - id: beacon_err_cnt
        type: u1
        doc: 'BEACON_ERR_CNT; CCSDS bit offset 152; units: unspecified.'
      - id: mode_info
        type: u1
        doc: 'MODE_INFO; CCSDS bit offset 160; units: unspecified.'
      - id: beacon_frame
        type: u1
        doc: 'BEACON_FRAME; CCSDS bit offset 168; units: unspecified.'
      - id: cpsat_cmd_counter
        type: u1
        doc: 'CPSAT_CMD_COUNTER; CCSDS bit offset 176; units: unspecified.'
      - id: cpsat_err_counter
        type: u1
        doc: 'CPSAT_ERR_COUNTER; CCSDS bit offset 184; units: unspecified.'
      - id: ant_deploy_status_packed
        type: u1
        doc: 'ANT_DEPLOY_STATUS_PACKED; CCSDS bit offset 192; units: unspecified.'
      - id: initial_flags_packed
        type: u1
        doc: 'INITIAL_FLAGS_PACKED; CCSDS bit offset 200; units: unspecified.'
      - id: solar_deploy_flags
        type: u1
        doc: 'SOLAR_DEPLOY_FLAGS; CCSDS bit offset 208; units: unspecified.'
      - id: elev_band_state
        type: u1
        doc: 'ELEV_BAND_STATE; CCSDS bit offset 216; units: i.'
      - id: rs_encode_frames
        type: u1
        doc: 'RS_ENCODE_FRAMES; CCSDS bit offset 224; units: unspecified.'
      - id: leop_next_phase_idx
        type: u1
        doc: 'LEOP_NEXT_PHASE_IDX; CCSDS bit offset 232; units: unspecified.'
      - id: gs_elev_x100
        type: s2le
        doc: 'GS_ELEV_X100; CCSDS bit offset 240; units: unspecified.'
      - id: build_mode
        type: u1
        doc: 'BUILD_MODE; CCSDS bit offset 256; units: unspecified.'
      - id: ant_verify_packed
        type: u1
        doc: 'ANT_VERIFY_PACKED; CCSDS bit offset 264; units: 4:3.'
      - id: ant_deploy_count
        type: u1
        repeat: expr
        repeat-expr: 4
        doc: 'ANT_DEPLOY_COUNT; CCSDS bit offset 272; units: unspecified.'
      - id: ant_deploy_count_b
        type: u1
        repeat: expr
        repeat-expr: 4
        doc: 'ANT_DEPLOY_COUNT_B; CCSDS bit offset 304; units: unspecified.'
      - id: ant_burn_budget_pct
        type: u1
        repeat: expr
        repeat-expr: 4
        doc: 'ANT_BURN_BUDGET_PCT; CCSDS bit offset 336; units: unspecified.'
      - id: ant_last_deploy_result
        type: u1
        repeat: expr
        repeat-expr: 4
        doc: 'ANT_LAST_DEPLOY_RESULT; CCSDS bit offset 368; units: unspecified.'
      - id: last_mission_reject_reason
        type: u1
        doc: 'LAST_MISSION_REJECT_REASON; CCSDS bit offset 400; units: unspecified.'
      - id: battgate_reject_count
        type: u1
        doc: 'BATTGATE_REJECT_COUNT; CCSDS bit offset 408; units: unspecified.'
      - id: bcn_seq_len
        type: u1
        doc: 'BCN_SEQ_LEN; CCSDS bit offset 416; units: unspecified.'
      - id: bcn_seq
        type: u1
        repeat: expr
        repeat-expr: 16
        doc: 'BCN_SEQ; CCSDS bit offset 424; units: unspecified.'
      - id: disk_state
        type: u1
        doc: 'DISK_STATE; CCSDS bit offset 552; units: unspecified.'
      - id: elev_band_arm
        type: u1
        doc: 'ELEV_BAND_ARM; CCSDS bit offset 560; units: unspecified.'
      - id: pdm_mon_state
        type: u1
        doc: 'PDM_MON_STATE; CCSDS bit offset 568; units: unspecified.'
      - id: v_battery_voltage
        type: u2le
        doc: 'V_BATTERY_VOLTAGE; CCSDS bit offset 576; units: unspecified.'
      - id: v_battery_current
        type: u2le
        doc: 'V_BATTERY_CURRENT; CCSDS bit offset 592; units: unspecified.'
      - id: ant_temperature
        type: u2le
        doc: 'ANT_TEMPERATURE; CCSDS bit offset 608; units: unspecified.'
      - id: ant_temperature_b
        type: u2le
        doc: 'ANT_TEMPERATURE_B; CCSDS bit offset 624; units: unspecified.'
      - id: ant_deploy_status_a_raw
        type: u2le
        doc: 'ANT_DEPLOY_STATUS_A_RAW; CCSDS bit offset 640; units: unspecified.'
      - id: ant_deploy_status_b_raw
        type: u2le
        doc: 'ANT_DEPLOY_STATUS_B_RAW; CCSDS bit offset 656; units: unspecified.'
      - id: ant_deploy_time
        type: u2le
        repeat: expr
        repeat-expr: 4
        doc: 'ANT_DEPLOY_TIME; CCSDS bit offset 672; units: unspecified.'
      - id: ant_deploy_time_b
        type: u2le
        repeat: expr
        repeat-expr: 4
        doc: 'ANT_DEPLOY_TIME_B; CCSDS bit offset 736; units: unspecified.'
      - id: ant_command_counter
        type: u2le
        doc: 'ANT_COMMAND_COUNTER; CCSDS bit offset 800; units: unspecified.'
      - id: ant_cmd_err_counter
        type: u2le
        doc: 'ANT_CMD_ERR_COUNTER; CCSDS bit offset 816; units: unspecified.'
      - id: leop_recurring_count
        type: u2le
        doc: 'LEOP_RECURRING_COUNT; CCSDS bit offset 832; units: unspecified.'
      - id: cf_dl_last_duration_s
        type: u2le
        doc: 'CF_DL_LAST_DURATION_S; CCSDS bit offset 848; units: s.'
      - id: cf_dl_last_pdu_count
        type: u2le
        doc: 'CF_DL_LAST_PDU_COUNT; CCSDS bit offset 864; units: unspecified.'
      - id: cf_dl_total_sessions
        type: u2le
        doc: 'CF_DL_TOTAL_SESSIONS; CCSDS bit offset 880; units: unspecified.'
      - id: cf_dl_stuck_count
        type: u2le
        doc: 'CF_DL_STUCK_COUNT; CCSDS bit offset 896; units: unspecified.'
      - id: pdm_intent_mask
        type: u2le
        doc: 'PDM_INTENT_MASK; CCSDS bit offset 912; units: unspecified.'
      - id: pdm_drift_mask
        type: u2le
        doc: 'PDM_DRIFT_MASK; CCSDS bit offset 928; units: unspecified.'
      - id: pdm_drift_count
        type: u2le
        doc: 'PDM_DRIFT_COUNT; CCSDS bit offset 944; units: unspecified.'
      - id: gps_sync_reject_count
        type: u2le
        doc: 'GPS_SYNC_REJECT_COUNT; CCSDS bit offset 960; units: unspecified.'
      - id: last_drift_sec_clamped
        type: s2le
        doc: 'LAST_DRIFT_SEC_CLAMPED; CCSDS bit offset 976; units: s.'
      - id: mission_execute_total
        type: u2le
        doc: 'MISSION_EXECUTE_TOTAL; CCSDS bit offset 992; units: unspecified.'
      - id: orb_tle_age_min
        type: u2le
        doc: 'ORB_TLE_AGE_MIN; CCSDS bit offset 1008; units: min.'
      - id: orb_sat_lat_x100
        type: s2le
        doc: 'ORB_SAT_LAT_X100; CCSDS bit offset 1024; units: deg.'
      - id: orb_sat_lon_x100
        type: s2le
        doc: 'ORB_SAT_LON_X100; CCSDS bit offset 1040; units: deg.'
      - id: orb_sat_alt_km_x10
        type: u2le
        doc: 'ORB_SAT_ALT_KM_X10; CCSDS bit offset 1056; units: km.'
      - id: sc_rts_exec_bitmap
        type: u2le
        repeat: expr
        repeat-expr: 3
        doc: 'SC_RTS_EXEC_BITMAP; CCSDS bit offset 1072; units: unspecified.'
      - id: cf_up_recv_pdu
        type: u2le
        doc: 'CF_UP_RECV_PDU; CCSDS bit offset 1120; units: unspecified.'
      - id: cf_up_recv_err
        type: u2le
        doc: 'CF_UP_RECV_ERR; CCSDS bit offset 1136; units: unspecified.'
      - id: reboot_remaining_min
        type: u2le
        doc: 'REBOOT_REMAINING_MIN; CCSDS bit offset 1152; units: min.'
      - id: sch_missed_tick
        type: u2le
        doc: 'SCH_MISSED_TICK; CCSDS bit offset 1168; units: unspecified.'
      - id: hs_appmon_enables
        type: u4le
        doc: 'HS_APPMON_ENABLES; CCSDS bit offset 1184; units: unspecified.'
      - id: initial_spare1
        type: u1
        doc: 'INITIAL_SPARE1; CCSDS bit offset 1216; units: unspecified.'
      - id: orb_active_slot
        type: u1
        doc: 'ORB_ACTIVE_SLOT; CCSDS bit offset 1224; units: unspecified.'
      - id: orb_eclipse_state
        type: u1
        doc: 'ORB_ECLIPSE_STATE; CCSDS bit offset 1232; units: unspecified.'
      - id: sc_num_rts_active
        type: u1
        doc: 'SC_NUM_RTS_ACTIVE; CCSDS bit offset 1240; units: unspecified.'
      - id: sc_rts_active_err
        type: u1
        doc: 'SC_RTS_ACTIVE_ERR; CCSDS bit offset 1248; units: unspecified.'
      - id: lc_state
        type: u1
        doc: 'LC_STATE; CCSDS bit offset 1256; units: unspecified.'
      - id: lc_passive_rts_count
        type: u1
        doc: 'LC_PASSIVE_RTS_COUNT; CCSDS bit offset 1264; units: unspecified.'
      - id: hs_status_flags
        type: u1
        doc: 'HS_STATUS_FLAGS; CCSDS bit offset 1272; units: unspecified.'
      - id: batt_below_safe_count
        type: u1
        doc: 'BATT_BELOW_SAFE_COUNT; CCSDS bit offset 1280; units: unspecified.'
      - id: batt_below_crit_count
        type: u1
        doc: 'BATT_BELOW_CRIT_COUNT; CCSDS bit offset 1288; units: unspecified.'
      - id: batt_above_norm_count
        type: u1
        doc: 'BATT_ABOVE_NORM_COUNT; CCSDS bit offset 1296; units: unspecified.'
      - id: batt_crit_recover_count
        type: u1
        doc: 'BATT_CRIT_RECOVER_COUNT; CCSDS bit offset 1304; units: unspecified.'
      - id: batt_daily_crit_recover
        type: u1
        doc: 'BATT_DAILY_CRIT_RECOVER; CCSDS bit offset 1312; units: unspecified.'
      - id: batt_latch_bits
        type: u1
        doc: 'BATT_LATCH_BITS; CCSDS bit offset 1320; units: unspecified.'
      - id: solar_adc_l
        type: u1
        doc: 'SOLAR_ADC_L; CCSDS bit offset 1328; units: unspecified.'
      - id: solar_adc_r
        type: u1
        doc: 'SOLAR_ADC_R; CCSDS bit offset 1336; units: unspecified.'
    instances:
      gs_elev_x100_converted:
        value: (gs_elev_x100 / 100.0)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      v_battery_voltage_converted:
        value: ((0.008993 * v_battery_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      v_battery_current_converted:
        value: ((14.662757 * v_battery_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      ant_temperature_converted:
        value: ((2100 - ((3300.0 * ant_temperature)/1023))/10.9)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      ant_temperature_b_converted:
        value: ((2100 - ((3300.0 * ant_temperature_b)/1023))/10.9)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      orb_sat_lat_x100_converted:
        value: ((0.01 * orb_sat_lat_x100))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      orb_sat_lon_x100_converted:
        value: ((0.01 * orb_sat_lon_x100))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      orb_sat_alt_km_x10_converted:
        value: ((0.1 * orb_sat_alt_km_x10))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
  mode_02:
    seq:
      - id: beacon_cmd_cnt
        type: u1
        doc: 'BEACON_CMD_CNT; CCSDS bit offset 136; units: unspecified.'
      - id: beacon_err_cnt
        type: u1
        doc: 'BEACON_ERR_CNT; CCSDS bit offset 144; units: unspecified.'
      - id: adcs_ad_mode
        type: u1
        doc: 'ADCS_AD_MODE; CCSDS bit offset 152; units: unspecified.'
      - id: adcs_ac_mode
        type: u1
        doc: 'ADCS_AC_MODE; CCSDS bit offset 160; units: unspecified.'
      - id: adcs_status
        type: u1
        doc: 'ADCS_STATUS; CCSDS bit offset 168; units: unspecified.'
      - id: gps_power_status
        type: u1
        doc: 'GPS_POWER_STATUS; CCSDS bit offset 176; units: unspecified.'
      - id: cf_dl_state
        type: u1
        doc: 'CF_DL_STATE; CCSDS bit offset 184; units: unspecified.'
      - id: sw_version
        type: u1
        doc: 'SW_VERSION; CCSDS bit offset 192; units: unspecified.'
      - id: get_eps_auto_sw_reset
        type: u1
        doc: 'GET_EPS_AUTO_SW_RESET; CCSDS bit offset 200; units: unspecified.'
      - id: get_bat_auto_sw_reset
        type: u1
        doc: 'GET_BAT_AUTO_SW_RESET; CCSDS bit offset 208; units: unspecified.'
      - id: mode_info
        type: u1
        doc: 'MODE_INFO; CCSDS bit offset 216; units: unspecified.'
      - id: beacon_frame
        type: u1
        doc: 'BEACON_FRAME; CCSDS bit offset 224; units: unspecified.'
      - id: cpsat_cmd_counter
        type: u1
        doc: 'CPSAT_CMD_COUNTER; CCSDS bit offset 232; units: unspecified.'
      - id: cpsat_err_counter
        type: u1
        doc: 'CPSAT_ERR_COUNTER; CCSDS bit offset 240; units: unspecified.'
      - id: src_stale_bits
        type: u1
        doc: 'SRC_STALE_BITS; CCSDS bit offset 248; units: unspecified.'
      - id: mtq_pwm_x
        type: u2le
        doc: 'MTQ_PWM_X; CCSDS bit offset 256; units: unspecified.'
      - id: mtq_pwm_y
        type: u2le
        doc: 'MTQ_PWM_Y; CCSDS bit offset 272; units: unspecified.'
      - id: mtq_pwm_z
        type: u2le
        doc: 'MTQ_PWM_Z; CCSDS bit offset 288; units: unspecified.'
      - id: cpu_throughput
        type: u2le
        doc: 'CPU_THROUGHPUT; CCSDS bit offset 304; units: unspecified.'
      - id: v_battery_voltage
        type: u2le
        doc: 'V_BATTERY_VOLTAGE; CCSDS bit offset 320; units: unspecified.'
      - id: v_battery_current
        type: u2le
        doc: 'V_BATTERY_CURRENT; CCSDS bit offset 336; units: unspecified.'
      - id: v_bat_5_v_voltage
        type: u2le
        doc: 'V_BAT_5_V_VOLTAGE; CCSDS bit offset 352; units: unspecified.'
      - id: v_bat_5_v_current
        type: u2le
        doc: 'V_BAT_5_V_CURRENT; CCSDS bit offset 368; units: unspecified.'
      - id: v_bat_3v3_voltage
        type: u2le
        doc: 'V_BAT_3V3_VOLTAGE; CCSDS bit offset 384; units: unspecified.'
      - id: v_bat_3v3_current
        type: u2le
        doc: 'V_BAT_3V3_CURRENT; CCSDS bit offset 400; units: unspecified.'
      - id: rw_wheel_vel_x
        type: u2le
        doc: 'RW_WHEEL_VEL_X; CCSDS bit offset 416; units: unspecified.'
      - id: rw_wheel_vel_y
        type: u2le
        doc: 'RW_WHEEL_VEL_Y; CCSDS bit offset 432; units: unspecified.'
      - id: rw_wheel_vel_z
        type: u2le
        doc: 'RW_WHEEL_VEL_Z; CCSDS bit offset 448; units: unspecified.'
      - id: gyro_w_x
        type: s2le
        doc: 'GYRO_W_X; CCSDS bit offset 464; units: unspecified.'
      - id: gyro_w_y
        type: s2le
        doc: 'GYRO_W_Y; CCSDS bit offset 480; units: unspecified.'
      - id: gyro_w_z
        type: s2le
        doc: 'GYRO_W_Z; CCSDS bit offset 496; units: unspecified.'
      - id: mtm_mag_x
        type: s2le
        doc: 'MTM_MAG_X; CCSDS bit offset 512; units: unspecified.'
      - id: mtm_mag_y
        type: s2le
        doc: 'MTM_MAG_Y; CCSDS bit offset 528; units: unspecified.'
      - id: mtm_mag_z
        type: s2le
        doc: 'MTM_MAG_Z; CCSDS bit offset 544; units: unspecified.'
      - id: accel_x
        type: s2le
        doc: 'ACCEL_X; CCSDS bit offset 560; units: unspecified.'
      - id: accel_y
        type: s2le
        doc: 'ACCEL_Y; CCSDS bit offset 576; units: unspecified.'
      - id: accel_z
        type: s2le
        doc: 'ACCEL_Z; CCSDS bit offset 592; units: unspecified.'
      - id: adcs_gyro_x
        type: s2le
        doc: 'ADCS_GYRO_X; CCSDS bit offset 608; units: unspecified.'
      - id: adcs_gyro_y
        type: s2le
        doc: 'ADCS_GYRO_Y; CCSDS bit offset 624; units: unspecified.'
      - id: adcs_gyro_z
        type: s2le
        doc: 'ADCS_GYRO_Z; CCSDS bit offset 640; units: unspecified.'
      - id: adcs_mag_x
        type: s2le
        doc: 'ADCS_MAG_X; CCSDS bit offset 656; units: unspecified.'
      - id: adcs_mag_y
        type: s2le
        doc: 'ADCS_MAG_Y; CCSDS bit offset 672; units: unspecified.'
      - id: adcs_mag_z
        type: s2le
        doc: 'ADCS_MAG_Z; CCSDS bit offset 688; units: unspecified.'
      - id: storage_space_status
        type: u4le
        doc: 'STORAGE_SPACE_STATUS; CCSDS bit offset 704; units: unspecified.'
      - id: on_board_time
        type: u4le
        doc: 'ON_BOARD_TIME; CCSDS bit offset 736; units: unspecified.'
      - id: get_trs_uptime
        type: u4le
        doc: 'GET_TRS_UPTIME; CCSDS bit offset 768; units: unspecified.'
      - id: get_rcv_uptime
        type: u4le
        doc: 'GET_RCV_UPTIME; CCSDS bit offset 800; units: unspecified.'
      - id: adcs_quat_w
        type: u4le
        doc: 'ADCS_QUAT_W; CCSDS bit offset 832; units: unspecified.'
      - id: adcs_quat_x
        type: u4le
        doc: 'ADCS_QUAT_X; CCSDS bit offset 864; units: unspecified.'
      - id: adcs_quat_y
        type: u4le
        doc: 'ADCS_QUAT_Y; CCSDS bit offset 896; units: unspecified.'
      - id: adcs_quat_z
        type: u4le
        doc: 'ADCS_QUAT_Z; CCSDS bit offset 928; units: unspecified.'
      - id: gps_pos_x
        type: s4le
        doc: 'GPS_POS_X; CCSDS bit offset 960; units: unspecified.'
      - id: gps_pos_y
        type: s4le
        doc: 'GPS_POS_Y; CCSDS bit offset 992; units: unspecified.'
      - id: gps_pos_z
        type: s4le
        doc: 'GPS_POS_Z; CCSDS bit offset 1024; units: unspecified.'
      - id: gps_vel_x
        type: s4le
        doc: 'GPS_VEL_X; CCSDS bit offset 1056; units: unspecified.'
      - id: gps_vel_y
        type: s4le
        doc: 'GPS_VEL_Y; CCSDS bit offset 1088; units: unspecified.'
      - id: gps_vel_z
        type: s4le
        doc: 'GPS_VEL_Z; CCSDS bit offset 1120; units: unspecified.'
      - id: batt_mode_current
        type: u1
        doc: 'BATT_MODE_CURRENT; CCSDS bit offset 1152; units: unspecified.'
      - id: batt_mode_recommended
        type: u1
        doc: 'BATT_MODE_RECOMMENDED; CCSDS bit offset 1160; units: unspecified.'
      - id: cf_dl_last_exit_reason
        type: u1
        doc: 'CF_DL_LAST_EXIT_REASON; CCSDS bit offset 1168; units: unspecified.'
      - id: batt_voltage_source
        type: u1
        doc: 'BATT_VOLTAGE_SOURCE; CCSDS bit offset 1176; units: unspecified.'
      - id: batt_last_known_mv
        type: u2le
        doc: 'BATT_LAST_KNOWN_MV; CCSDS bit offset 1184; units: Millivolts.'
      - id: status_summary
        type: u1
        doc: 'STATUS_SUMMARY; CCSDS bit offset 1200; units: unspecified.'
      - id: soc_pct
        type: u1
        doc: 'SOC_PCT; CCSDS bit offset 1208; units: unspecified.'
      - id: evs_cnt_debug
        type: u2le
        doc: 'EVS_CNT_DEBUG; CCSDS bit offset 1216; units: unspecified.'
      - id: evs_cnt_info
        type: u2le
        doc: 'EVS_CNT_INFO; CCSDS bit offset 1232; units: unspecified.'
      - id: evs_cnt_error
        type: u2le
        doc: 'EVS_CNT_ERROR; CCSDS bit offset 1248; units: unspecified.'
      - id: evs_cnt_critical
        type: u2le
        doc: 'EVS_CNT_CRITICAL; CCSDS bit offset 1264; units: unspecified.'
      - id: recent_err_events
        type: u1
        repeat: expr
        repeat-expr: 32
        doc: 'RECENT_ERR_EVENTS; CCSDS bit offset 1280; units: unspecified.'
      - id: last_critical_msg_snippet
        type: u1
        repeat: expr
        repeat-expr: 8
        doc: 'LAST_CRITICAL_MSG_SNIPPET; CCSDS bit offset 1536; units: unspecified.'
      - id: last_critical_app_event
        type: u2le
        doc: 'LAST_CRITICAL_APP_EVENT; CCSDS bit offset 1600; units: unspecified.'
      - id: last_critical_tick_offset
        type: u2le
        doc: 'LAST_CRITICAL_TICK_OFFSET; CCSDS bit offset 1616; units: unspecified.'
      - id: ld_app_state
        type: u1
        doc: 'LD_APP_STATE; CCSDS bit offset 1632; units: unspecified.'
      - id: ld_fault_state
        type: u1
        doc: 'LD_FAULT_STATE; CCSDS bit offset 1640; units: unspecified.'
      - id: ld_last_drv_err
        type: u1
        doc: 'LD_LAST_DRV_ERR; CCSDS bit offset 1648; units: unspecified.'
      - id: led_app_state
        type: u1
        doc: 'LED_APP_STATE; CCSDS bit offset 1656; units: unspecified.'
      - id: led_fault_state
        type: u1
        doc: 'LED_FAULT_STATE; CCSDS bit offset 1664; units: unspecified.'
      - id: cpsat_batt_automgmt_enabled
        type: u1
        doc: 'CPSAT_BATT_AUTOMGMT_ENABLED; CCSDS bit offset 1672; units: unspecified.'
      - id: cpsat_batt_voltage_source_v2
        type: u1
        doc: 'CPSAT_BATT_VOLTAGE_SOURCE_V2; CCSDS bit offset 1680; units: unspecified.'
      - id: soc_status
        type: u1
        doc: 'SOC_STATUS; CCSDS bit offset 1688; units: unspecified.'
      - id: i2_c_error_count
        type: u4le
        doc: 'I2_C_ERROR_COUNT; CCSDS bit offset 1696; units: unspecified.'
      - id: uart_error_count
        type: u4le
        doc: 'UART_ERROR_COUNT; CCSDS bit offset 1728; units: unspecified.'
      - id: batt_bat_hk_stale_ticks
        type: u2le
        doc: 'BATT_BAT_HK_STALE_TICKS; CCSDS bit offset 1760; units: unspecified.'
      - id: batt_eps_hk_stale_ticks
        type: u2le
        doc: 'BATT_EPS_HK_STALE_TICKS; CCSDS bit offset 1776; units: unspecified.'
      - id: cpsat_cmd_cnt
        type: u2le
        doc: 'CPSAT_CMD_CNT; CCSDS bit offset 1792; units: unspecified.'
      - id: cpsat_err_cnt
        type: u2le
        doc: 'CPSAT_ERR_CNT; CCSDS bit offset 1808; units: unspecified.'
      - id: cpsat_boot_count
        type: u4le
        doc: 'CPSAT_BOOT_COUNT; CCSDS bit offset 1824; units: unspecified.'
    instances:
      v_battery_voltage_converted:
        value: ((0.008993 * v_battery_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      v_battery_current_converted:
        value: ((14.662757 * v_battery_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      v_bat_5_v_voltage_converted:
        value: ((0.005865 * v_bat_5_v_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      v_bat_5_v_current_converted:
        value: ((1.327547 * v_bat_5_v_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      v_bat_3v3_voltage_converted:
        value: ((0.004311 * v_bat_3v3_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      v_bat_3v3_current_converted:
        value: ((1.327547 * v_bat_3v3_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      gyro_w_x_converted:
        value: ((0.01 * gyro_w_x))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      gyro_w_y_converted:
        value: ((0.01 * gyro_w_y))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      gyro_w_z_converted:
        value: ((0.01 * gyro_w_z))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      mtm_mag_x_converted:
        value: ((0.01 * mtm_mag_x))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      mtm_mag_y_converted:
        value: ((0.01 * mtm_mag_y))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      mtm_mag_z_converted:
        value: ((0.01 * mtm_mag_z))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      adcs_quat_w_converted:
        value: '((adcs_quat_w >= 2147483648 ? adcs_quat_w - 4294967296 : adcs_quat_w) / 1073741824.0)'
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      adcs_quat_x_converted:
        value: '((adcs_quat_x >= 2147483648 ? adcs_quat_x - 4294967296 : adcs_quat_x) / 1073741824.0)'
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      adcs_quat_y_converted:
        value: '((adcs_quat_y >= 2147483648 ? adcs_quat_y - 4294967296 : adcs_quat_y) / 1073741824.0)'
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      adcs_quat_z_converted:
        value: '((adcs_quat_z >= 2147483648 ? adcs_quat_z - 4294967296 : adcs_quat_z) / 1073741824.0)'
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
  mode_03:
    seq:
      - id: gs_elev_deg_s8
        type: s1
        doc: 'GS_ELEV_DEG_S8; CCSDS bit offset 136; units: deg.'
      - id: gs_elev_phase
        type: u1
        doc: 'GS_ELEV_PHASE; CCSDS bit offset 144; units: unspecified.'
      - id: cpsat_cmd_counter
        type: u1
        doc: 'CPSAT_CMD_COUNTER; CCSDS bit offset 152; units: unspecified.'
      - id: cpsat_err_counter
        type: u1
        doc: 'CPSAT_ERR_COUNTER; CCSDS bit offset 160; units: unspecified.'
      - id: pedding1
        type: u1
        doc: 'PEDDING1; CCSDS bit offset 168; units: unspecified.'
      - id: bat_motherboard_temperature
        type: u2le
        doc: 'BAT_MOTHERBOARD_TEMPERATURE; CCSDS bit offset 176; units: unspecified.'
      - id: bat_daughterboard_temp
        type: u2le
        repeat: expr
        repeat-expr: 4
        doc: 'BAT_DAUGHTERBOARD_TEMP; CCSDS bit offset 192; units: unspecified.'
      - id: eps_bcr1_sa1_a_temp
        type: u2le
        doc: 'EPS_BCR1_SA1_A_TEMP; CCSDS bit offset 256; units: unspecified.'
      - id: eps_bcr1_sa1_b_temp
        type: u2le
        doc: 'EPS_BCR1_SA1_B_TEMP; CCSDS bit offset 272; units: unspecified.'
      - id: eps_bcr2_sa2_a_temp
        type: u2le
        doc: 'EPS_BCR2_SA2_A_TEMP; CCSDS bit offset 288; units: unspecified.'
      - id: eps_bcr2_sa2_b_temp
        type: u2le
        doc: 'EPS_BCR2_SA2_B_TEMP; CCSDS bit offset 304; units: unspecified.'
      - id: eps_bcr3_sa3_a_temp
        type: u2le
        doc: 'EPS_BCR3_SA3_A_TEMP; CCSDS bit offset 320; units: unspecified.'
      - id: eps_bcr3_sa3_b_temp
        type: u2le
        doc: 'EPS_BCR3_SA3_B_TEMP; CCSDS bit offset 336; units: unspecified.'
      - id: eps_bcr4_sa4_a_temp
        type: u2le
        doc: 'EPS_BCR4_SA4_A_TEMP; CCSDS bit offset 352; units: unspecified.'
      - id: eps_bcr4_sa4_b_temp
        type: u2le
        doc: 'EPS_BCR4_SA4_B_TEMP; CCSDS bit offset 368; units: unspecified.'
      - id: eps_bcr5_sa5_a_temp
        type: u2le
        doc: 'EPS_BCR5_SA5_A_TEMP; CCSDS bit offset 384; units: unspecified.'
      - id: eps_bcr5_sa5_b_temp
        type: u2le
        doc: 'EPS_BCR5_SA5_B_TEMP; CCSDS bit offset 400; units: unspecified.'
      - id: eps_bcr6_sa6_a_temp
        type: u2le
        doc: 'EPS_BCR6_SA6_A_TEMP; CCSDS bit offset 416; units: unspecified.'
      - id: eps_bcr6_sa6_b_temp
        type: u2le
        doc: 'EPS_BCR6_SA6_B_TEMP; CCSDS bit offset 432; units: unspecified.'
      - id: eps_bcr7_sa7_a_temp
        type: u2le
        doc: 'EPS_BCR7_SA7_A_TEMP; CCSDS bit offset 448; units: unspecified.'
      - id: eps_bcr7_sa7_b_temp
        type: u2le
        doc: 'EPS_BCR7_SA7_B_TEMP; CCSDS bit offset 464; units: unspecified.'
      - id: eps_bcr8_sa8_a_temp
        type: u2le
        doc: 'EPS_BCR8_SA8_A_TEMP; CCSDS bit offset 480; units: unspecified.'
      - id: eps_bcr8_sa8_b_temp
        type: u2le
        doc: 'EPS_BCR8_SA8_B_TEMP; CCSDS bit offset 496; units: unspecified.'
      - id: eps_bcr9_sa9_a_temp
        type: u2le
        doc: 'EPS_BCR9_SA9_A_TEMP; CCSDS bit offset 512; units: unspecified.'
      - id: eps_bcr9_sa9_b_temp
        type: u2le
        doc: 'EPS_BCR9_SA9_B_TEMP; CCSDS bit offset 528; units: unspecified.'
      - id: eps_motherboard_temperature
        type: u2le
        doc: 'EPS_MOTHERBOARD_TEMPERATURE; CCSDS bit offset 544; units: unspecified.'
      - id: eps_daughterboard_temp
        type: u2le
        doc: 'EPS_DAUGHTERBOARD_TEMP; CCSDS bit offset 560; units: unspecified.'
      - id: ant_temp
        type: u2le
        doc: 'ANT_TEMP; CCSDS bit offset 576; units: unspecified.'
      - id: power_amplifier_temperature
        type: u2le
        doc: 'POWER_AMPLIFIER_TEMPERATURE; CCSDS bit offset 592; units: unspecified.'
      - id: local_oscillator_temperature
        type: u2le
        doc: 'LOCAL_OSCILLATOR_TEMPERATURE; CCSDS bit offset 608; units: unspecified.'
      - id: obc_temp_dc
        type: s2le
        doc: 'OBC_TEMP_DC; CCSDS bit offset 624; units: unspecified.'
      - id: beacon_frame
        type: u4le
        doc: 'BEACON_FRAME; CCSDS bit offset 640; units: unspecified.'
      - id: adcs_mtq_temp_core
        type: s2le
        doc: 'ADCS_MTQ_TEMP_CORE; CCSDS bit offset 672; units: unspecified.'
      - id: adcs_mtq_temp_onboard
        type: s2le
        doc: 'ADCS_MTQ_TEMP_ONBOARD; CCSDS bit offset 688; units: unspecified.'
      - id: temp_bat_mother_peak
        type: u2le
        doc: 'TEMP_BAT_MOTHER_PEAK; CCSDS bit offset 704; units: unspecified.'
      - id: temp_bat_mother_min
        type: u2le
        doc: 'TEMP_BAT_MOTHER_MIN; CCSDS bit offset 720; units: unspecified.'
      - id: temp_bat_daughter_avg_peak
        type: u2le
        doc: 'TEMP_BAT_DAUGHTER_AVG_PEAK; CCSDS bit offset 736; units: unspecified.'
      - id: temp_bat_daughter_avg_min
        type: u2le
        doc: 'TEMP_BAT_DAUGHTER_AVG_MIN; CCSDS bit offset 752; units: unspecified.'
      - id: temp_eps_mother_peak
        type: u2le
        doc: 'TEMP_EPS_MOTHER_PEAK; CCSDS bit offset 768; units: unspecified.'
      - id: temp_eps_mother_min
        type: u2le
        doc: 'TEMP_EPS_MOTHER_MIN; CCSDS bit offset 784; units: unspecified.'
      - id: temp_pa_peak
        type: u2le
        doc: 'TEMP_PA_PEAK; CCSDS bit offset 800; units: unspecified.'
      - id: pa_overtemp_edge_count
        type: u2le
        doc: 'PA_OVERTEMP_EDGE_COUNT; CCSDS bit offset 816; units: unspecified.'
      - id: temp_hk_stale_ticks
        type: u1
        doc: 'TEMP_HK_STALE_TICKS; CCSDS bit offset 832; units: unspecified.'
      - id: temp_pad
        type: u1
        repeat: expr
        repeat-expr: 3
        doc: 'TEMP_PAD; CCSDS bit offset 840; units: unspecified.'
      - id: icm_temp
        type: s2le
        doc: 'ICM_TEMP; CCSDS bit offset 864; units: unspecified.'
      - id: mtm_temp
        type: u1
        doc: 'MTM_TEMP; CCSDS bit offset 880; units: unspecified.'
      - id: imu_temp_pad
        type: u1
        doc: 'IMU_TEMP_PAD; CCSDS bit offset 888; units: unspecified.'
    instances:
      bat_motherboard_temperature_converted:
        value: ((0.372434 * bat_motherboard_temperature)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr1_sa1_a_temp_converted:
        value: ((0.4964 * eps_bcr1_sa1_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr1_sa1_b_temp_converted:
        value: ((0.4964 * eps_bcr1_sa1_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr2_sa2_a_temp_converted:
        value: ((0.4964 * eps_bcr2_sa2_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr2_sa2_b_temp_converted:
        value: ((0.4964 * eps_bcr2_sa2_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr3_sa3_a_temp_converted:
        value: ((0.4964 * eps_bcr3_sa3_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr3_sa3_b_temp_converted:
        value: ((0.4964 * eps_bcr3_sa3_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr4_sa4_a_temp_converted:
        value: ((0.4964 * eps_bcr4_sa4_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr4_sa4_b_temp_converted:
        value: ((0.4964 * eps_bcr4_sa4_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr5_sa5_a_temp_converted:
        value: ((0.4964 * eps_bcr5_sa5_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr5_sa5_b_temp_converted:
        value: ((0.4964 * eps_bcr5_sa5_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr6_sa6_a_temp_converted:
        value: ((0.4964 * eps_bcr6_sa6_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr6_sa6_b_temp_converted:
        value: ((0.4964 * eps_bcr6_sa6_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr7_sa7_a_temp_converted:
        value: ((0.4964 * eps_bcr7_sa7_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr7_sa7_b_temp_converted:
        value: ((0.4964 * eps_bcr7_sa7_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr8_sa8_a_temp_converted:
        value: ((0.4964 * eps_bcr8_sa8_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr8_sa8_b_temp_converted:
        value: ((0.4964 * eps_bcr8_sa8_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr9_sa9_a_temp_converted:
        value: ((0.4964 * eps_bcr9_sa9_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr9_sa9_b_temp_converted:
        value: ((0.4964 * eps_bcr9_sa9_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_motherboard_temperature_converted:
        value: ((0.372434 * eps_motherboard_temperature)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_daughterboard_temp_converted:
        value: ((0.372434 * eps_daughterboard_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      power_amplifier_temperature_converted:
        value: ((-0.07669* power_amplifier_temperature)+195.6307)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      local_oscillator_temperature_converted:
        value: ((-0.07669* local_oscillator_temperature)+195.6307)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      obc_temp_dc_converted:
        value: 'obc_temp_dc == 32767 ? 3276.7 : obc_temp_dc * 0.1'
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      icm_temp_converted:
        value: (icm_temp / 326.8 + 20)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      mtm_temp_converted:
        value: (-75.0 + mtm_temp * (200.0 / 255.0))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
  mode_04:
    seq:
      - id: eps_cmd_counter
        type: u1
        doc: 'EPS_CMD_COUNTER; CCSDS bit offset 136; units: unspecified.'
      - id: eps_err_counter
        type: u1
        doc: 'EPS_ERR_COUNTER; CCSDS bit offset 144; units: unspecified.'
      - id: get_eps_auto_sw_reset_count
        type: u1
        doc: 'GET_EPS_AUTO_SW_RESET_COUNT; CCSDS bit offset 152; units: unspecified.'
      - id: get_eps_w_reset_count
        type: u1
        doc: 'GET_EPS_W_RESET_COUNT; CCSDS bit offset 160; units: unspecified.'
      - id: pedding1
        type: u1
        doc: 'PEDDING1; CCSDS bit offset 168; units: unspecified.'
      - id: get_board_status
        type: u2le
        doc: 'GET_BOARD_STATUS; CCSDS bit offset 176; units: unspecified.'
      - id: get_last_mother_error_status
        type: u2le
        doc: 'GET_LAST_MOTHER_ERROR_STATUS; CCSDS bit offset 192; units: unspecified.'
      - id: get_last_daughter_error_status
        type: u2le
        doc: 'GET_LAST_DAUGHTER_ERROR_STATUS; CCSDS bit offset 208; units: unspecified.'
      - id: eps_pdm_actual_state
        type: u2le
        doc: 'EPS_PDM_ACTUAL_STATE; CCSDS bit offset 224; units: unspecified.'
      - id: eps_pdm_expected_state
        type: u2le
        doc: 'EPS_PDM_EXPECTED_STATE; CCSDS bit offset 240; units: unspecified.'
      - id: eps_pdm_initial_state
        type: u2le
        doc: 'EPS_PDM_INITIAL_STATE; CCSDS bit offset 256; units: unspecified.'
      - id: bcr_output_current
        type: u2le
        doc: 'BCR_OUTPUT_CURRENT; CCSDS bit offset 272; units: unspecified.'
      - id: bcr_output_voltage
        type: u2le
        doc: 'BCR_OUTPUT_VOLTAGE; CCSDS bit offset 288; units: unspecified.'
      - id: eps_draw_3_v3_current
        type: u2le
        doc: 'EPS_DRAW_3_V3_CURRENT; CCSDS bit offset 304; units: unspecified.'
      - id: eps_draw_5_v_current
        type: u2le
        doc: 'EPS_DRAW_5_V_CURRENT; CCSDS bit offset 320; units: unspecified.'
      - id: eps_output_12_v_bus_current
        type: u2le
        doc: 'EPS_OUTPUT_12_V_BUS_CURRENT; CCSDS bit offset 336; units: unspecified.'
      - id: eps_output_12_v_bus_voltage
        type: u2le
        doc: 'EPS_OUTPUT_12_V_BUS_VOLTAGE; CCSDS bit offset 352; units: unspecified.'
      - id: eps_output_bat_current
        type: u2le
        doc: 'EPS_OUTPUT_BAT_CURRENT; CCSDS bit offset 368; units: unspecified.'
      - id: eps_output_bat_voltage
        type: u2le
        doc: 'EPS_OUTPUT_BAT_VOLTAGE; CCSDS bit offset 384; units: unspecified.'
      - id: eps_output_5_v_bus_current
        type: u2le
        doc: 'EPS_OUTPUT_5_V_BUS_CURRENT; CCSDS bit offset 400; units: unspecified.'
      - id: eps_output_5_v_bus_voltage
        type: u2le
        doc: 'EPS_OUTPUT_5_V_BUS_VOLTAGE; CCSDS bit offset 416; units: unspecified.'
      - id: eps_output_3_v3_bus_current
        type: u2le
        doc: 'EPS_OUTPUT_3_V3_BUS_CURRENT; CCSDS bit offset 432; units: unspecified.'
      - id: eps_output_3_v3_bus_voltage
        type: u2le
        doc: 'EPS_OUTPUT_3_V3_BUS_VOLTAGE; CCSDS bit offset 448; units: unspecified.'
      - id: solar_panel_pdm_sw_1_voltage
        type: u2le
        doc: 'SOLAR_PANEL_PDM_SW_1_VOLTAGE; CCSDS bit offset 464; units: unspecified.'
      - id: rw_pdm_sw_2_voltage
        type: u2le
        doc: 'RW_PDM_SW_2_VOLTAGE; CCSDS bit offset 480; units: unspecified.'
      - id: ld_pdm_sw_3_voltage
        type: u2le
        doc: 'LD_PDM_SW_3_VOLTAGE; CCSDS bit offset 496; units: unspecified.'
      - id: led_pdm_sw_4_voltage
        type: u2le
        doc: 'LED_PDM_SW_4_VOLTAGE; CCSDS bit offset 512; units: unspecified.'
      - id: dummy_pdm_sw_5_voltage
        type: u2le
        doc: 'DUMMY_PDM_SW_5_VOLTAGE; CCSDS bit offset 528; units: unspecified.'
      - id: st_pdm_sw_6_voltage
        type: u2le
        doc: 'ST_PDM_SW_6_VOLTAGE; CCSDS bit offset 544; units: unspecified.'
      - id: mtq5v_pdm_sw_7_voltage
        type: u2le
        doc: 'MTQ5V_PDM_SW_7_VOLTAGE; CCSDS bit offset 560; units: unspecified.'
      - id: ant_pdm_sw_8_voltage
        type: u2le
        doc: 'ANT_PDM_SW_8_VOLTAGE; CCSDS bit offset 576; units: unspecified.'
      - id: dummy_pdm_sw_9_voltage
        type: u2le
        doc: 'DUMMY_PDM_SW_9_VOLTAGE; CCSDS bit offset 592; units: unspecified.'
      - id: mtq3v_pdm_sw_10_voltage
        type: u2le
        doc: 'MTQ3V_PDM_SW_10_VOLTAGE; CCSDS bit offset 608; units: unspecified.'
      - id: solar_panel_pdm_sw_1_current
        type: u2le
        doc: 'SOLAR_PANEL_PDM_SW_1_CURRENT; CCSDS bit offset 624; units: unspecified.'
      - id: rw_pdm_sw_2_current
        type: u2le
        doc: 'RW_PDM_SW_2_CURRENT; CCSDS bit offset 640; units: unspecified.'
      - id: ld_pdm_sw_3_current
        type: u2le
        doc: 'LD_PDM_SW_3_CURRENT; CCSDS bit offset 656; units: unspecified.'
      - id: led_pdm_sw_4_current
        type: u2le
        doc: 'LED_PDM_SW_4_CURRENT; CCSDS bit offset 672; units: unspecified.'
      - id: dummy_pdm_sw_5_current
        type: u2le
        doc: 'DUMMY_PDM_SW_5_CURRENT; CCSDS bit offset 688; units: unspecified.'
      - id: st_pdm_sw_6_current
        type: u2le
        doc: 'ST_PDM_SW_6_CURRENT; CCSDS bit offset 704; units: unspecified.'
      - id: mtq5v_pdm_sw_7_current
        type: u2le
        doc: 'MTQ5V_PDM_SW_7_CURRENT; CCSDS bit offset 720; units: unspecified.'
      - id: ant_pdm_sw_8_current
        type: u2le
        doc: 'ANT_PDM_SW_8_CURRENT; CCSDS bit offset 736; units: unspecified.'
      - id: dummy_pdm_sw_9_current
        type: u2le
        doc: 'DUMMY_PDM_SW_9_CURRENT; CCSDS bit offset 752; units: unspecified.'
      - id: mtq3v_pdm_sw_10_current
        type: u2le
        doc: 'MTQ3V_PDM_SW_10_CURRENT; CCSDS bit offset 768; units: unspecified.'
      - id: eps_motherboard_temp
        type: u2le
        doc: 'EPS_MOTHERBOARD_TEMP; CCSDS bit offset 784; units: unspecified.'
      - id: eps_daughterboard_temp
        type: u2le
        doc: 'EPS_DAUGHTERBOARD_TEMP; CCSDS bit offset 800; units: unspecified.'
      - id: get_eps_brown_reset_count
        type: u2le
        doc: 'GET_EPS_BROWN_RESET_COUNT; CCSDS bit offset 816; units: unspecified.'
      - id: get_eps_manual_reset_count
        type: u2le
        doc: 'GET_EPS_MANUAL_RESET_COUNT; CCSDS bit offset 832; units: unspecified.'
      - id: eps_static_version
        type: u2le
        doc: 'EPS_STATIC_VERSION; CCSDS bit offset 848; units: unspecified.'
      - id: eps_static_checksum
        type: u2le
        doc: 'EPS_STATIC_CHECKSUM; CCSDS bit offset 864; units: unspecified.'
      - id: eps_static_firmware_rev
        type: u2le
        doc: 'EPS_STATIC_FIRMWARE_REV; CCSDS bit offset 880; units: unspecified.'
      - id: eps_static_wdt_period
        type: u2le
        doc: 'EPS_STATIC_WDT_PERIOD; CCSDS bit offset 896; units: unspecified.'
      - id: eps_peak_bus_current
        type: u2le
        repeat: expr
        repeat-expr: 4
        doc: 'EPS_PEAK_BUS_CURRENT; CCSDS bit offset 912; units: unspecified.'
      - id: eps_min_bat_voltage
        type: u2le
        doc: 'EPS_MIN_BAT_VOLTAGE; CCSDS bit offset 976; units: unspecified.'
      - id: eps_tbrd_mother_min
        type: u2le
        doc: 'EPS_TBRD_MOTHER_MIN; CCSDS bit offset 992; units: unspecified.'
      - id: eps_tbrd_mother_max
        type: u2le
        doc: 'EPS_TBRD_MOTHER_MAX; CCSDS bit offset 1008; units: unspecified.'
      - id: eps_pdm_lcl_trip_count
        type: u1
        repeat: expr
        repeat-expr: 10
        doc: 'EPS_PDM_LCL_TRIP_COUNT; CCSDS bit offset 1024; units: unspecified.'
      - id: eps_i2_c_stale_count
        type: u2le
        doc: 'EPS_I2_C_STALE_COUNT; CCSDS bit offset 1104; units: unspecified.'
      - id: eps_hk_track_spare
        type: u2le
        doc: 'EPS_HK_TRACK_SPARE; CCSDS bit offset 1120; units: unspecified.'
      - id: padding_auto_1
        type: u1
        repeat: expr
        repeat-expr: 2
        doc: 'PADDING_AUTO_1; CCSDS bit offset 1136; units: unspecified.'
      - id: eps_energy_output_total
        type: u4le
        doc: 'EPS_ENERGY_OUTPUT_TOTAL; CCSDS bit offset 1152; units: unspecified.'
      - id: eps_energy_solar_total
        type: u4le
        doc: 'EPS_ENERGY_SOLAR_TOTAL; CCSDS bit offset 1184; units: unspecified.'
      - id: soc_pct
        type: u1
        doc: 'SOC_PCT; CCSDS bit offset 1216; units: %.'
      - id: soc_status
        type: u1
        doc: 'SOC_STATUS; CCSDS bit offset 1224; units: unspecified.'
      - id: pad_tail
        type: u1
        repeat: expr
        repeat-expr: 2
        doc: 'PAD_TAIL; CCSDS bit offset 1232; units: unspecified.'
    instances:
      bcr_output_current_converted:
        value: ((0.014662757 * bcr_output_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      bcr_output_voltage_converted:
        value: ((0.008993157 * bcr_output_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_draw_3_v3_current_converted:
        value: ((0.001327547 * eps_draw_3_v3_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_draw_5_v_current_converted:
        value: ((0.001327547 * eps_draw_5_v_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_output_12_v_bus_current_converted:
        value: ((0.002066632361 * eps_output_12_v_bus_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_output_12_v_bus_voltage_converted:
        value: ((0.01349 * eps_output_12_v_bus_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_output_bat_current_converted:
        value: ((0.00681988679 * eps_output_bat_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_output_bat_voltage_converted:
        value: ((0.008978 * eps_output_bat_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_output_5_v_bus_current_converted:
        value: ((0.00681988679 * eps_output_5_v_bus_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_output_5_v_bus_voltage_converted:
        value: ((0.005865 * eps_output_5_v_bus_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_output_3_v3_bus_current_converted:
        value: ((0.00681988679 * eps_output_3_v3_bus_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_output_3_v3_bus_voltage_converted:
        value: ((0.004311 * eps_output_3_v3_bus_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      solar_panel_pdm_sw_1_voltage_converted:
        value: ((0.01349 * solar_panel_pdm_sw_1_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      rw_pdm_sw_2_voltage_converted:
        value: ((0.01349 * rw_pdm_sw_2_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      ld_pdm_sw_3_voltage_converted:
        value: ((0.008993 * ld_pdm_sw_3_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      led_pdm_sw_4_voltage_converted:
        value: ((0.008993 * led_pdm_sw_4_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      dummy_pdm_sw_5_voltage_converted:
        value: ((0.005865 * dummy_pdm_sw_5_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      st_pdm_sw_6_voltage_converted:
        value: ((0.005865 * st_pdm_sw_6_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      mtq5v_pdm_sw_7_voltage_converted:
        value: ((0.005865 * mtq5v_pdm_sw_7_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      ant_pdm_sw_8_voltage_converted:
        value: ((0.004311 * ant_pdm_sw_8_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      dummy_pdm_sw_9_voltage_converted:
        value: ((0.004311 * dummy_pdm_sw_9_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      mtq3v_pdm_sw_10_voltage_converted:
        value: ((0.004311 * mtq3v_pdm_sw_10_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      solar_panel_pdm_sw_1_current_converted:
        value: ((0.001328 * solar_panel_pdm_sw_1_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      rw_pdm_sw_2_current_converted:
        value: ((0.001328 * rw_pdm_sw_2_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      ld_pdm_sw_3_current_converted:
        value: ((0.006239 * ld_pdm_sw_3_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      led_pdm_sw_4_current_converted:
        value: ((0.006239 * led_pdm_sw_4_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      dummy_pdm_sw_5_current_converted:
        value: ((0.001328 * dummy_pdm_sw_5_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      st_pdm_sw_6_current_converted:
        value: ((0.001328 * st_pdm_sw_6_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      mtq5v_pdm_sw_7_current_converted:
        value: ((0.001328 * mtq5v_pdm_sw_7_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      ant_pdm_sw_8_current_converted:
        value: ((0.001328 * ant_pdm_sw_8_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      dummy_pdm_sw_9_current_converted:
        value: ((0.001328 * dummy_pdm_sw_9_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      mtq3v_pdm_sw_10_current_converted:
        value: ((0.001328 * mtq3v_pdm_sw_10_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_motherboard_temp_converted:
        value: ((0.372434 * eps_motherboard_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_daughterboard_temp_converted:
        value: ((0.372434 * eps_daughterboard_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
  mode_05:
    seq:
      - id: adcs_time_flags
        type: u1
        doc: 'ADCS_TIME_FLAGS; CCSDS bit offset 136; units: unspecified.'
      - id: adcs_drift_min_u8
        type: u1
        doc: 'ADCS_DRIFT_MIN_U8; CCSDS bit offset 144; units: min.'
      - id: bat_command_counter
        type: u1
        doc: 'BAT_COMMAND_COUNTER; CCSDS bit offset 152; units: unspecified.'
      - id: bat_cmd_err_counter
        type: u1
        doc: 'BAT_CMD_ERR_COUNTER; CCSDS bit offset 160; units: unspecified.'
      - id: bat_wdt_reset_counter
        type: u1
        doc: 'BAT_WDT_RESET_COUNTER; CCSDS bit offset 168; units: unspecified.'
      - id: bat_auto_software_reset_counter
        type: u1
        doc: 'BAT_AUTO_SOFTWARE_RESET_COUNTER; CCSDS bit offset 176; units: unspecified.'
      - id: bat_get_manual_reset_counter
        type: u1
        doc: 'BAT_GET_MANUAL_RESET_COUNTER; CCSDS bit offset 184; units: unspecified.'
      - id: bat_get_heater_controller_status
        type: u1
        doc: 'BAT_GET_HEATER_CONTROLLER_STATUS; CCSDS bit offset 192; units: unspecified.'
      - id: bat_get_board_status
        type: u1
        doc: 'BAT_GET_BOARD_STATUS; CCSDS bit offset 200; units: unspecified.'
      - id: bat_get_last_error
        type: u1
        doc: 'BAT_GET_LAST_ERROR; CCSDS bit offset 208; units: unspecified.'
      - id: spare
        type: u1
        doc: 'SPARE; CCSDS bit offset 216; units: unspecified.'
      - id: bat_get_version
        type: u2le
        doc: 'BAT_GET_VERSION; CCSDS bit offset 224; units: unspecified.'
      - id: bat_get_checksum
        type: u2le
        doc: 'BAT_GET_CHECKSUM; CCSDS bit offset 240; units: unspecified.'
      - id: battery_output_voltage
        type: u2le
        doc: 'BATTERY_OUTPUT_VOLTAGE; CCSDS bit offset 256; units: unspecified.'
      - id: battery_current_magnitude
        type: u2le
        doc: 'BATTERY_CURRENT_MAGNITUDE; CCSDS bit offset 272; units: unspecified.'
      - id: battery_current_direction
        type: u2le
        doc: 'BATTERY_CURRENT_DIRECTION; CCSDS bit offset 288; units: unspecified.'
      - id: motherboard_temperature
        type: u2le
        doc: 'MOTHERBOARD_TEMPERATURE; CCSDS bit offset 304; units: unspecified.'
      - id: current_draw_5v_bus
        type: u2le
        doc: 'CURRENT_DRAW_5V_BUS; CCSDS bit offset 320; units: unspecified.'
      - id: output_voltage_5v_bus
        type: u2le
        doc: 'OUTPUT_VOLTAGE_5V_BUS; CCSDS bit offset 336; units: unspecified.'
      - id: current_draw_3v3_bus
        type: u2le
        doc: 'CURRENT_DRAW_3V3_BUS; CCSDS bit offset 352; units: unspecified.'
      - id: output_voltage_3v3_bus
        type: u2le
        doc: 'OUTPUT_VOLTAGE_3V3_BUS; CCSDS bit offset 368; units: unspecified.'
      - id: daughterboard_temp
        type: u2le
        repeat: expr
        repeat-expr: 4
        doc: 'DAUGHTERBOARD_TEMP; CCSDS bit offset 384; units: unspecified.'
      - id: daughterboard_heater_status
        type: u2le
        repeat: expr
        repeat-expr: 4
        doc: 'DAUGHTERBOARD_HEATER_STATUS; CCSDS bit offset 448; units: unspecified.'
      - id: bat_voltage_peak
        type: u2le
        doc: 'BAT_VOLTAGE_PEAK; CCSDS bit offset 512; units: unspecified.'
      - id: bat_voltage_min
        type: u2le
        doc: 'BAT_VOLTAGE_MIN; CCSDS bit offset 528; units: unspecified.'
      - id: bat_current_peak_mag
        type: u2le
        doc: 'BAT_CURRENT_PEAK_MAG; CCSDS bit offset 544; units: unspecified.'
      - id: bat_mother_temp_peak
        type: u2le
        doc: 'BAT_MOTHER_TEMP_PEAK; CCSDS bit offset 560; units: unspecified.'
      - id: bat_mother_temp_min
        type: u2le
        doc: 'BAT_MOTHER_TEMP_MIN; CCSDS bit offset 576; units: unspecified.'
      - id: bat_daughter_temp_peak
        type: u2le
        repeat: expr
        repeat-expr: 4
        doc: 'BAT_DAUGHTER_TEMP_PEAK; CCSDS bit offset 592; units: unspecified.'
      - id: bat_heater_on_edge_count
        type: u2le
        doc: 'BAT_HEATER_ON_EDGE_COUNT; CCSDS bit offset 656; units: unspecified.'
      - id: bat_last_error_latch
        type: u1
        doc: 'BAT_LAST_ERROR_LATCH; CCSDS bit offset 672; units: unspecified.'
      - id: bat_hk_stale_ticks
        type: u1
        doc: 'BAT_HK_STALE_TICKS; CCSDS bit offset 680; units: unspecified.'
      - id: bat_filter_stale_consec
        type: u1
        doc: 'BAT_FILTER_STALE_CONSEC; CCSDS bit offset 688; units: unspecified.'
      - id: bat_filter_enabled
        type: u1
        doc: 'BAT_FILTER_ENABLED; CCSDS bit offset 696; units: unspecified.'
      - id: bat_fdir_latch
        type: u1
        doc: 'BAT_FDIR_LATCH; CCSDS bit offset 704; units: unspecified.'
      - id: bat_board_status_sticky
        type: u1
        doc: 'BAT_BOARD_STATUS_STICKY; CCSDS bit offset 712; units: unspecified.'
      - id: bat_undervolt_count
        type: u1
        doc: 'BAT_UNDERVOLT_COUNT; CCSDS bit offset 720; units: unspecified.'
      - id: bat_temp_oor_count
        type: u1
        doc: 'BAT_TEMP_OOR_COUNT; CCSDS bit offset 728; units: unspecified.'
      - id: bat_crate_exceed_count
        type: u1
        doc: 'BAT_CRATE_EXCEED_COUNT; CCSDS bit offset 736; units: unspecified.'
      - id: bat_fdir_spare
        type: u1
        doc: 'BAT_FDIR_SPARE; CCSDS bit offset 744; units: unspecified.'
    instances:
      battery_output_voltage_converted:
        value: ((0.008993 * battery_output_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      battery_current_magnitude_converted:
        value: ((14.662757 * battery_current_magnitude))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      motherboard_temperature_converted:
        value: ((0.372434* motherboard_temperature)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      current_draw_5v_bus_converted:
        value: ((1.327547 * current_draw_5v_bus))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      output_voltage_5v_bus_converted:
        value: ((0.005865 * output_voltage_5v_bus))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      current_draw_3v3_bus_converted:
        value: ((1.327547 * current_draw_3v3_bus))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      output_voltage_3v3_bus_converted:
        value: ((0.004311 * output_voltage_3v3_bus))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      daughterboard_temp_0_converted:
        value: ((0.397600 * daughterboard_temp[0])-238.57)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      daughterboard_temp_1_converted:
        value: ((0.397600 * daughterboard_temp[1])-238.57)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      daughterboard_temp_2_converted:
        value: ((0.397600 * daughterboard_temp[2])-238.57)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      daughterboard_temp_3_converted:
        value: ((0.397600 * daughterboard_temp[3])-238.57)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      bat_voltage_peak_converted:
        value: ((0.008993 * bat_voltage_peak))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      bat_voltage_min_converted:
        value: ((0.008993 * bat_voltage_min))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      bat_current_peak_mag_converted:
        value: ((14.662757 * bat_current_peak_mag))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      bat_mother_temp_peak_converted:
        value: ((0.372434 * bat_mother_temp_peak)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      bat_mother_temp_min_converted:
        value: ((0.372434 * bat_mother_temp_min)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      bat_daughter_temp_peak_0_converted:
        value: ((0.397600 * bat_daughter_temp_peak[0])-238.57)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      bat_daughter_temp_peak_1_converted:
        value: ((0.397600 * bat_daughter_temp_peak[1])-238.57)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      bat_daughter_temp_peak_2_converted:
        value: ((0.397600 * bat_daughter_temp_peak[2])-238.57)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      bat_daughter_temp_peak_3_converted:
        value: ((0.397600 * bat_daughter_temp_peak[3])-238.57)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
  mode_06:
    seq:
      - id: rs_encode_frames
        type: u1
        doc: 'RS_ENCODE_FRAMES; CCSDS bit offset 136; units: unspecified.'
      - id: trx_reconfig_cnt8
        type: u1
        doc: 'TRX_RECONFIG_CNT8; CCSDS bit offset 144; units: unspecified.'
      - id: spare
        type: u1
        doc: 'SPARE; CCSDS bit offset 152; units: unspecified.'
      - id: instantaneous_doppler_offset
        type: s2le
        doc: 'INSTANTANEOUS_DOPPLER_OFFSET; CCSDS bit offset 160; units: unspecified.'
      - id: instantaneous_signal_strength
        type: s2le
        doc: 'INSTANTANEOUS_SIGNAL_STRENGTH; CCSDS bit offset 176; units: unspecified.'
      - id: instantaneous_rf_reflected_power
        type: u2le
        doc: 'INSTANTANEOUS_RF_REFLECTED_POWER; CCSDS bit offset 192; units: unspecified.'
      - id: instantaneous_rf_forward_power
        type: u2le
        doc: 'INSTANTANEOUS_RF_FORWARD_POWER; CCSDS bit offset 208; units: unspecified.'
      - id: power_bus_voltage
        type: u2le
        doc: 'POWER_BUS_VOLTAGE; CCSDS bit offset 224; units: unspecified.'
      - id: total_supply_current
        type: u2le
        doc: 'TOTAL_SUPPLY_CURRENT; CCSDS bit offset 240; units: unspecified.'
      - id: transmitter_current
        type: u2le
        doc: 'TRANSMITTER_CURRENT; CCSDS bit offset 256; units: unspecified.'
      - id: receiver_current
        type: u2le
        doc: 'RECEIVER_CURRENT; CCSDS bit offset 272; units: unspecified.'
      - id: power_amplifier_current
        type: u2le
        doc: 'POWER_AMPLIFIER_CURRENT; CCSDS bit offset 288; units: unspecified.'
      - id: power_amplifier_temperature
        type: u2le
        doc: 'POWER_AMPLIFIER_TEMPERATURE; CCSDS bit offset 304; units: unspecified.'
      - id: local_oscillator_temperature
        type: u2le
        doc: 'LOCAL_OSCILLATOR_TEMPERATURE; CCSDS bit offset 320; units: unspecified.'
      - id: last_instantaneous_doppler_offset
        type: s2le
        doc: 'LAST_INSTANTANEOUS_DOPPLER_OFFSET; CCSDS bit offset 336; units: unspecified.'
      - id: last_instantaneous_signal_strength
        type: s2le
        doc: 'LAST_INSTANTANEOUS_SIGNAL_STRENGTH; CCSDS bit offset 352; units: unspecified.'
      - id: transmitter_status_dummy
        type: b4
        doc: 'TRANSMITTER_STATUS_DUMMY; CCSDS bit offset 368; units: unspecified.'
      - id: transmitter_status_rate
        type: b2
        doc: 'TRANSMITTER_STATUS_RATE; CCSDS bit offset 372; units: unspecified.'
      - id: transmitter_status_beacon
        type: b1
        doc: 'TRANSMITTER_STATUS_BEACON; CCSDS bit offset 374; units: unspecified.'
      - id: transmitter_status_idle
        type: b1
        doc: 'TRANSMITTER_STATUS_IDLE; CCSDS bit offset 375; units: unspecified.'
      - id: pa_overtemp_flag
        type: u1
        doc: 'PA_OVERTEMP_FLAG; CCSDS bit offset 376; units: unspecified.'
      - id: command_counter
        type: u2le
        doc: 'COMMAND_COUNTER; CCSDS bit offset 384; units: unspecified.'
      - id: cmd_err_counter
        type: u2le
        doc: 'CMD_ERR_COUNTER; CCSDS bit offset 400; units: unspecified.'
      - id: receiver_uptime
        type: u4le
        doc: 'RECEIVER_UPTIME; CCSDS bit offset 416; units: unspecified.'
      - id: transmitter_uptime
        type: u4le
        doc: 'TRANSMITTER_UPTIME; CCSDS bit offset 448; units: unspecified.'
      - id: rcv_pll_lock_err
        type: u2le
        doc: 'RCV_PLL_LOCK_ERR; CCSDS bit offset 480; units: unspecified.'
      - id: trs_pll_lock_err
        type: u2le
        doc: 'TRS_PLL_LOCK_ERR; CCSDS bit offset 496; units: unspecified.'
      - id: rcv_last_reset_cause
        type: u1
        doc: 'RCV_LAST_RESET_CAUSE; CCSDS bit offset 512; units: unspecified.'
      - id: trs_last_reset_cause
        type: u1
        doc: 'TRS_LAST_RESET_CAUSE; CCSDS bit offset 520; units: unspecified.'
      - id: reset_cause_spare
        type: u1
        repeat: expr
        repeat-expr: 2
        doc: 'RESET_CAUSE_SPARE; CCSDS bit offset 528; units: unspecified.'
      - id: send_frame_fail_count
        type: u2le
        doc: 'SEND_FRAME_FAIL_COUNT; CCSDS bit offset 544; units: unspecified.'
      - id: spare_align
        type: u1
        repeat: expr
        repeat-expr: 2
        doc: 'SPARE_ALIGN; CCSDS bit offset 560; units: unspecified.'
      - id: rcv_pll_freq_err
        type: u2le
        doc: 'RCV_PLL_FREQ_ERR; CCSDS bit offset 576; units: unspecified.'
      - id: trs_pll_freq_err
        type: u2le
        doc: 'TRS_PLL_FREQ_ERR; CCSDS bit offset 592; units: unspecified.'
      - id: rf_rssi_peak
        type: u2le
        doc: 'RF_RSSI_PEAK; CCSDS bit offset 608; units: unspecified.'
      - id: rf_rssi_min
        type: u2le
        doc: 'RF_RSSI_MIN; CCSDS bit offset 624; units: unspecified.'
      - id: rf_doppler_peak_abs
        type: s2le
        doc: 'RF_DOPPLER_PEAK_ABS; CCSDS bit offset 640; units: unspecified.'
      - id: rf_rf_fwd_peak
        type: u2le
        doc: 'RF_RF_FWD_PEAK; CCSDS bit offset 656; units: unspecified.'
      - id: rf_rf_refl_peak
        type: u2le
        doc: 'RF_RF_REFL_PEAK; CCSDS bit offset 672; units: unspecified.'
      - id: rf_pa_temp_peak
        type: u2le
        doc: 'RF_PA_TEMP_PEAK; CCSDS bit offset 688; units: unspecified.'
      - id: rf_pll_lock_err_peak_rcv
        type: u2le
        doc: 'RF_PLL_LOCK_ERR_PEAK_RCV; CCSDS bit offset 704; units: unspecified.'
      - id: rf_pll_lock_err_peak_trs
        type: u2le
        doc: 'RF_PLL_LOCK_ERR_PEAK_TRS; CCSDS bit offset 720; units: unspecified.'
      - id: rf_hk_stale_ticks
        type: u1
        doc: 'RF_HK_STALE_TICKS; CCSDS bit offset 736; units: unspecified.'
      - id: rf_pad1
        type: u1
        repeat: expr
        repeat-expr: 3
        doc: 'RF_PAD1; CCSDS bit offset 744; units: unspecified.'
      - id: rcv_frequency_khz
        type: u4le
        doc: 'RCV_FREQUENCY_KHZ; CCSDS bit offset 768; units: unspecified.'
      - id: trs_frequency_khz
        type: u4le
        doc: 'TRS_FREQUENCY_KHZ; CCSDS bit offset 800; units: unspecified.'
      - id: to_callsign
        type: u1
        repeat: expr
        repeat-expr: 8
        doc: 'TO_CALLSIGN; CCSDS bit offset 832; units: unspecified.'
      - id: from_callsign
        type: u1
        repeat: expr
        repeat-expr: 8
        doc: 'FROM_CALLSIGN; CCSDS bit offset 896; units: unspecified.'
      - id: rcv_frame_num
        type: u2le
        doc: 'RCV_FRAME_NUM; CCSDS bit offset 960; units: unspecified.'
      - id: p9b_reserved
        type: u2le
        doc: 'P9B_RESERVED; CCSDS bit offset 976; units: unspecified.'
      - id: pa_overtemp_count
        type: u2le
        doc: 'PA_OVERTEMP_COUNT; CCSDS bit offset 992; units: unspecified.'
      - id: pa_overtemp_reserved
        type: u2le
        doc: 'PA_OVERTEMP_RESERVED; CCSDS bit offset 1008; units: unspecified.'
      - id: pcb_temperature
        type: u2le
        doc: 'PCB_TEMPERATURE; CCSDS bit offset 1024; units: unspecified.'
      - id: pcb_temp_reserved
        type: u2le
        doc: 'PCB_TEMP_RESERVED; CCSDS bit offset 1040; units: unspecified.'
      - id: transponder_rssi_raw
        type: u2le
        doc: 'TRANSPONDER_RSSI_RAW; CCSDS bit offset 1056; units: unspecified.'
      - id: last_trans_reflected_raw
        type: u2le
        doc: 'LAST_TRANS_REFLECTED_RAW; CCSDS bit offset 1072; units: unspecified.'
      - id: last_trans_forward_raw
        type: u2le
        doc: 'LAST_TRANS_FORWARD_RAW; CCSDS bit offset 1088; units: unspecified.'
      - id: p18_reserved
        type: u2le
        doc: 'P18_RESERVED; CCSDS bit offset 1104; units: unspecified.'
      - id: receiver_error_count
        type: u2le
        doc: 'RECEIVER_ERROR_COUNT; CCSDS bit offset 1120; units: unspecified.'
      - id: i2c_error_count
        type: u2le
        doc: 'I2C_ERROR_COUNT; CCSDS bit offset 1136; units: unspecified.'
      - id: last_uplink_recv_time
        type: u4le
        doc: 'LAST_UPLINK_RECV_TIME; CCSDS bit offset 1152; units: unspecified.'
      - id: total_rx_frame_count
        type: u2le
        doc: 'TOTAL_RX_FRAME_COUNT; CCSDS bit offset 1184; units: unspecified.'
      - id: total_tx_frame_count
        type: u2le
        doc: 'TOTAL_TX_FRAME_COUNT; CCSDS bit offset 1200; units: unspecified.'
      - id: tx_mode_change_count
        type: u2le
        doc: 'TX_MODE_CHANGE_COUNT; CCSDS bit offset 1216; units: unspecified.'
      - id: p19_reserved
        type: u2le
        doc: 'P19_RESERVED; CCSDS bit offset 1232; units: unspecified.'
      - id: pa_overtemp_last_time
        type: u4le
        doc: 'PA_OVERTEMP_LAST_TIME; CCSDS bit offset 1248; units: unspecified.'
      - id: high_reflected_last_time
        type: u4le
        doc: 'HIGH_REFLECTED_LAST_TIME; CCSDS bit offset 1280; units: unspecified.'
      - id: rcv_reset_last_time
        type: u4le
        doc: 'RCV_RESET_LAST_TIME; CCSDS bit offset 1312; units: unspecified.'
      - id: trs_reset_last_time
        type: u4le
        doc: 'TRS_RESET_LAST_TIME; CCSDS bit offset 1344; units: unspecified.'
      - id: rf_forward_peak
        type: u2le
        doc: 'RF_FORWARD_PEAK; CCSDS bit offset 1376; units: unspecified.'
      - id: pa_current_peak
        type: u2le
        doc: 'PA_CURRENT_PEAK; CCSDS bit offset 1392; units: unspecified.'
      - id: reflected_peak
        type: u2le
        doc: 'REFLECTED_PEAK; CCSDS bit offset 1408; units: unspecified.'
      - id: pa_temp_peak
        type: u2le
        doc: 'PA_TEMP_PEAK; CCSDS bit offset 1424; units: unspecified.'
      - id: pa_temp_min
        type: u2le
        doc: 'PA_TEMP_MIN; CCSDS bit offset 1440; units: unspecified.'
      - id: lo_temp_peak
        type: u2le
        doc: 'LO_TEMP_PEAK; CCSDS bit offset 1456; units: unspecified.'
      - id: lo_temp_min
        type: u2le
        doc: 'LO_TEMP_MIN; CCSDS bit offset 1472; units: unspecified.'
      - id: pcb_temp_peak
        type: u2le
        doc: 'PCB_TEMP_PEAK; CCSDS bit offset 1488; units: unspecified.'
      - id: pcb_temp_min
        type: u2le
        doc: 'PCB_TEMP_MIN; CCSDS bit offset 1504; units: unspecified.'
      - id: rssi_peak
        type: s2le
        doc: 'RSSI_PEAK; CCSDS bit offset 1520; units: unspecified.'
      - id: rssi_min
        type: s2le
        doc: 'RSSI_MIN; CCSDS bit offset 1536; units: unspecified.'
      - id: doppler_peak
        type: s2le
        doc: 'DOPPLER_PEAK; CCSDS bit offset 1552; units: unspecified.'
      - id: doppler_min
        type: s2le
        doc: 'DOPPLER_MIN; CCSDS bit offset 1568; units: unspecified.'
      - id: padding_auto_1
        type: u1
        repeat: expr
        repeat-expr: 2
        doc: 'PADDING_AUTO_1; CCSDS bit offset 1584; units: unspecified.'
      - id: i2c_total_count
        type: u4le
        doc: 'I2C_TOTAL_COUNT; CCSDS bit offset 1600; units: unspecified.'
      - id: pcm_reset_request_count
        type: u2le
        doc: 'PCM_RESET_REQUEST_COUNT; CCSDS bit offset 1632; units: unspecified.'
      - id: tx_mode
        type: u1
        doc: 'TX_MODE; CCSDS bit offset 1648; units: unspecified.'
      - id: last_freq_status
        type: u1
        doc: 'LAST_FREQ_STATUS; CCSDS bit offset 1656; units: unspecified.'
      - id: transponder_rssi_threshold
        type: u2le
        doc: 'TRANSPONDER_RSSI_THRESHOLD; CCSDS bit offset 1664; units: unspecified.'
      - id: transponder_input_freq_khz_lo
        type: u2le
        doc: 'TRANSPONDER_INPUT_FREQ_KHZ_LO; CCSDS bit offset 1680; units: unspecified.'
      - id: transponder_input_freq_khz_hi
        type: u2le
        doc: 'TRANSPONDER_INPUT_FREQ_KHZ_HI; CCSDS bit offset 1696; units: unspecified.'
      - id: ci_ingest_count
        type: u2le
        doc: 'CI_INGEST_COUNT; CCSDS bit offset 1712; units: unspecified.'
      - id: ci_ingest_err
        type: u2le
        doc: 'CI_INGEST_ERR; CCSDS bit offset 1728; units: unspecified.'
      - id: rx_buffer_frame_count
        type: u1
        doc: 'RX_BUFFER_FRAME_COUNT; CCSDS bit offset 1744; units: unspecified.'
      - id: tx_buffer_free_slots
        type: u1
        doc: 'TX_BUFFER_FREE_SLOTS; CCSDS bit offset 1752; units: unspecified.'
      - id: idle_window_enable
        type: u1
        doc: 'IDLE_WINDOW_ENABLE; CCSDS bit offset 1760; units: unspecified.'
      - id: idle_window_hold_s
        type: u1
        doc: 'IDLE_WINDOW_HOLD_S; CCSDS bit offset 1768; units: s.'
      - id: trs_expn_pad
        type: u1
        repeat: expr
        repeat-expr: 2
        doc: 'TRS_EXPN_PAD; CCSDS bit offset 1776; units: unspecified.'
    instances:
      instantaneous_doppler_offset_converted:
        value: ((instantaneous_doppler_offset * 38.15))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      instantaneous_signal_strength_converted:
        value: ((instantaneous_signal_strength * -0.5 -22 ))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      instantaneous_rf_reflected_power_converted:
        value: ((instantaneous_rf_reflected_power * instantaneous_rf_reflected_power * 0.00005887))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      instantaneous_rf_forward_power_converted:
        value: ((instantaneous_rf_forward_power * instantaneous_rf_forward_power * 0.00005887))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      power_bus_voltage_converted:
        value: ((0.00488* power_bus_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      total_supply_current_converted:
        value: ((0.3152* total_supply_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      transmitter_current_converted:
        value: ((0.3152* transmitter_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      receiver_current_converted:
        value: ((0.3152* receiver_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      power_amplifier_current_converted:
        value: ((0.3152* power_amplifier_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      power_amplifier_temperature_converted:
        value: ((-0.07669* power_amplifier_temperature)+195.6307)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      local_oscillator_temperature_converted:
        value: ((-0.07669* local_oscillator_temperature)+195.6307)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      last_instantaneous_doppler_offset_converted:
        value: ((last_instantaneous_doppler_offset * 38.15))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      last_instantaneous_signal_strength_converted:
        value: ((last_instantaneous_signal_strength * -0.5 -22 ))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
  mode_07:
    seq:
      - id: spare
        type: u1
        doc: 'SPARE; CCSDS bit offset 136; units: unspecified.'
      - id: command_counter
        type: u2le
        doc: 'COMMAND_COUNTER; CCSDS bit offset 144; units: unspecified.'
      - id: cmd_err_counter
        type: u2le
        doc: 'CMD_ERR_COUNTER; CCSDS bit offset 160; units: unspecified.'
      - id: dss_payload_dss_dir1_x
        type: s2le
        doc: 'DSS_PAYLOAD_DSS_DIR1_X; CCSDS bit offset 176; units: unspecified.'
      - id: dss_payload_dss_dir1_y
        type: s2le
        doc: 'DSS_PAYLOAD_DSS_DIR1_Y; CCSDS bit offset 192; units: unspecified.'
      - id: dss_payload_dss_dir1_z
        type: s2le
        doc: 'DSS_PAYLOAD_DSS_DIR1_Z; CCSDS bit offset 208; units: unspecified.'
      - id: dss_payload_dss_dir2_x
        type: s2le
        doc: 'DSS_PAYLOAD_DSS_DIR2_X; CCSDS bit offset 224; units: unspecified.'
      - id: dss_payload_dss_dir2_y
        type: s2le
        doc: 'DSS_PAYLOAD_DSS_DIR2_Y; CCSDS bit offset 240; units: unspecified.'
      - id: dss_payload_dss_dir2_z
        type: s2le
        doc: 'DSS_PAYLOAD_DSS_DIR2_Z; CCSDS bit offset 256; units: unspecified.'
      - id: dss_payload_dss_dir3_x
        type: s2le
        doc: 'DSS_PAYLOAD_DSS_DIR3_X; CCSDS bit offset 272; units: unspecified.'
      - id: dss_payload_dss_dir3_y
        type: s2le
        doc: 'DSS_PAYLOAD_DSS_DIR3_Y; CCSDS bit offset 288; units: unspecified.'
      - id: dss_payload_dss_dir3_z
        type: s2le
        doc: 'DSS_PAYLOAD_DSS_DIR3_Z; CCSDS bit offset 304; units: unspecified.'
      - id: dss_payload_padding1
        type: u2le
        repeat: expr
        repeat-expr: 3
        doc: 'DSS_PAYLOAD_PADDING1; CCSDS bit offset 320; units: unspecified.'
      - id: padding_gps
        type: u1
        repeat: expr
        repeat-expr: 2
        doc: 'PADDING_GPS; CCSDS bit offset 368; units: unspecified.'
      - id: gps_payload_solution_status
        type: u1
        doc: 'GPS_PAYLOAD_SOLUTION_STATUS; CCSDS bit offset 384; units: unspecified.'
      - id: gps_payload_padding1
        type: u1
        repeat: expr
        repeat-expr: 7
        doc: 'GPS_PAYLOAD_PADDING1; CCSDS bit offset 392; units: unspecified.'
      - id: gps_payload_jd_int
        type: s4le
        doc: 'GPS_PAYLOAD_JD_INT; CCSDS bit offset 448; units: unspecified.'
      - id: gps_payload_jd_frac
        type: s4le
        doc: 'GPS_PAYLOAD_JD_FRAC; CCSDS bit offset 480; units: unspecified.'
      - id: gps_payload_gps_pos_x
        type: s4le
        doc: 'GPS_PAYLOAD_GPS_POS_X; CCSDS bit offset 512; units: unspecified.'
      - id: gps_payload_gps_pos_y
        type: s4le
        doc: 'GPS_PAYLOAD_GPS_POS_Y; CCSDS bit offset 544; units: unspecified.'
      - id: gps_payload_gps_pos_z
        type: s4le
        doc: 'GPS_PAYLOAD_GPS_POS_Z; CCSDS bit offset 576; units: unspecified.'
      - id: gps_payload_gps_vel_x
        type: s4le
        doc: 'GPS_PAYLOAD_GPS_VEL_X; CCSDS bit offset 608; units: unspecified.'
      - id: gps_payload_gps_vel_y
        type: s4le
        doc: 'GPS_PAYLOAD_GPS_VEL_Y; CCSDS bit offset 640; units: unspecified.'
      - id: gps_payload_gps_vel_z
        type: s4le
        doc: 'GPS_PAYLOAD_GPS_VEL_Z; CCSDS bit offset 672; units: unspecified.'
      - id: mtq_payload_mtq_pwm_duty
        type: u2le
        repeat: expr
        repeat-expr: 3
        doc: 'MTQ_PAYLOAD_MTQ_PWM_DUTY; CCSDS bit offset 704; units: unspecified.'
      - id: mtq_payload_mtq_direction
        type: s1
        repeat: expr
        repeat-expr: 3
        doc: 'MTQ_PAYLOAD_MTQ_DIRECTION; CCSDS bit offset 752; units: unspecified.'
      - id: mtq_payload_padding
        type: u1
        doc: 'MTQ_PAYLOAD_PADDING; CCSDS bit offset 776; units: unspecified.'
      - id: mtq_payload_mtq_current
        type: s2le
        repeat: expr
        repeat-expr: 6
        doc: 'MTQ_PAYLOAD_MTQ_CURRENT; CCSDS bit offset 784; units: unspecified.'
      - id: mtq_payload_mtq_momentum
        type: u2le
        repeat: expr
        repeat-expr: 3
        doc: 'MTQ_PAYLOAD_MTQ_MOMENTUM; CCSDS bit offset 880; units: unspecified.'
      - id: mtq_payload_mtq_temp_core
        type: s2le
        doc: 'MTQ_PAYLOAD_MTQ_TEMP_CORE; CCSDS bit offset 928; units: unspecified.'
      - id: mtq_payload_mtq_temp_onboard
        type: s2le
        doc: 'MTQ_PAYLOAD_MTQ_TEMP_ONBOARD; CCSDS bit offset 944; units: unspecified.'
      - id: rw_payload_rw_wheel_speedx
        type: s2le
        doc: 'RW_PAYLOAD_RW_WHEEL_SPEEDX; CCSDS bit offset 960; units: unspecified.'
      - id: rw_payload_rw_wheel_speedy
        type: s2le
        doc: 'RW_PAYLOAD_RW_WHEEL_SPEEDY; CCSDS bit offset 976; units: unspecified.'
      - id: rw_payload_rw_wheel_speedz
        type: s2le
        doc: 'RW_PAYLOAD_RW_WHEEL_SPEEDZ; CCSDS bit offset 992; units: unspecified.'
      - id: rw_payload_padding1
        type: u2le
        doc: 'RW_PAYLOAD_PADDING1; CCSDS bit offset 1008; units: unspecified.'
      - id: st_seconds
        type: u4le
        doc: 'ST_SECONDS; CCSDS bit offset 1024; units: unspecified.'
      - id: st_milli_seconds
        type: u2le
        doc: 'ST_MILLI_SECONDS; CCSDS bit offset 1056; units: unspecified.'
      - id: adcs_wheel_speed_peak_abs
        type: u2le
        repeat: expr
        repeat-expr: 3
        doc: 'ADCS_WHEEL_SPEED_PEAK_ABS; CCSDS bit offset 1072; units: xyz.'
      - id: adcs_gyro_rate_peak_abs
        type: u2le
        repeat: expr
        repeat-expr: 3
        doc: 'ADCS_GYRO_RATE_PEAK_ABS; CCSDS bit offset 1120; units: xyz.'
      - id: adcs_mtq_current_peak_abs
        type: u2le
        doc: 'ADCS_MTQ_CURRENT_PEAK_ABS; CCSDS bit offset 1168; units: unspecified.'
      - id: adcs_mtq_temp_core_peak
        type: s2le
        doc: 'ADCS_MTQ_TEMP_CORE_PEAK; CCSDS bit offset 1184; units: unspecified.'
      - id: adcs_mtq_temp_onboard_peak
        type: s2le
        doc: 'ADCS_MTQ_TEMP_ONBOARD_PEAK; CCSDS bit offset 1200; units: unspecified.'
      - id: adcs_hk_stale_ticks
        type: u1
        doc: 'ADCS_HK_STALE_TICKS; CCSDS bit offset 1216; units: unspecified.'
      - id: adcs_hk_stale_flag
        type: u1
        doc: 'ADCS_HK_STALE_FLAG; CCSDS bit offset 1224; units: unspecified.'
      - id: beacon_rx_count
        type: u1
        doc: 'BEACON_RX_COUNT; CCSDS bit offset 1232; units: unspecified.'
      - id: adcs_reserved
        type: u1
        doc: 'ADCS_RESERVED; CCSDS bit offset 1240; units: unspecified.'
      - id: beacon_ecef_p_sat
        type: s4le
        repeat: expr
        repeat-expr: 3
        doc: 'BEACON_ECEF_P_SAT; CCSDS bit offset 1248; units: unspecified.'
      - id: beacon_ecef_v_sat
        type: s4le
        repeat: expr
        repeat-expr: 3
        doc: 'BEACON_ECEF_V_SAT; CCSDS bit offset 1344; units: unspecified.'
      - id: beacon_sat_w_eci2_sat
        type: s2le
        repeat: expr
        repeat-expr: 3
        doc: 'BEACON_SAT_W_ECI2_SAT; CCSDS bit offset 1440; units: unspecified.'
      - id: beacon_sat_magnetic
        type: s2le
        repeat: expr
        repeat-expr: 3
        doc: 'BEACON_SAT_MAGNETIC; CCSDS bit offset 1488; units: unspecified.'
      - id: beacon_sat_u_sun
        type: s2le
        repeat: expr
        repeat-expr: 3
        doc: 'BEACON_SAT_U_SUN; CCSDS bit offset 1536; units: unspecified.'
      - id: beacon_ctrl_dipole
        type: s2le
        repeat: expr
        repeat-expr: 3
        doc: 'BEACON_CTRL_DIPOLE; CCSDS bit offset 1584; units: unspecified.'
      - id: beacon_is_eclipse
        type: s1
        doc: 'BEACON_IS_ECLIPSE; CCSDS bit offset 1632; units: unspecified.'
      - id: beacon_mode_2
        type: u1
        repeat: expr
        repeat-expr: 5
        doc: 'BEACON_MODE_2; CCSDS bit offset 1640; units: unspecified.'
      - id: beacon_status
        type: u1
        repeat: expr
        repeat-expr: 5
        doc: 'BEACON_STATUS; CCSDS bit offset 1680; units: unspecified.'
      - id: beacon_dss_flag
        type: u1
        doc: 'BEACON_DSS_FLAG; CCSDS bit offset 1720; units: unspecified.'
      - id: beacon_gps_flag
        type: u1
        doc: 'BEACON_GPS_FLAG; CCSDS bit offset 1728; units: unspecified.'
      - id: beacon_mtq_flag
        type: u1
        doc: 'BEACON_MTQ_FLAG; CCSDS bit offset 1736; units: unspecified.'
      - id: beacon_rw_flag
        type: u1
        repeat: expr
        repeat-expr: 3
        doc: 'BEACON_RW_FLAG; CCSDS bit offset 1744; units: unspecified.'
      - id: beacon_st_flag
        type: u1
        doc: 'BEACON_ST_FLAG; CCSDS bit offset 1768; units: unspecified.'
      - id: beacon_gyro_flag
        type: u1
        doc: 'BEACON_GYRO_FLAG; CCSDS bit offset 1776; units: unspecified.'
      - id: beacon_mtm_flag
        type: u1
        doc: 'BEACON_MTM_FLAG; CCSDS bit offset 1784; units: unspecified.'
      - id: beacon_padding
        type: u1
        repeat: expr
        repeat-expr: 4
        doc: 'BEACON_PADDING; CCSDS bit offset 1792; units: unspecified.'
      - id: adcs_safing_state
        type: u1
        doc: 'ADCS_SAFING_STATE; CCSDS bit offset 1824; units: unspecified.'
      - id: adcs_safing_purpose
        type: u1
        doc: 'ADCS_SAFING_PURPOSE; CCSDS bit offset 1832; units: unspecified.'
      - id: adcs_safing_pad
        type: u1
        repeat: expr
        repeat-expr: 2
        doc: 'ADCS_SAFING_PAD; CCSDS bit offset 1840; units: unspecified.'
  mode_08:
    seq:
      - id: moon_dist_c256
        type: u1
        doc: 'MOON_DIST_C256; CCSDS bit offset 136; units: unspecified.'
      - id: moon_valid
        type: u1
        doc: 'MOON_VALID; CCSDS bit offset 144; units: unspecified.'
      - id: ld_cmd_counter
        type: u1
        doc: 'LD_CMD_COUNTER; CCSDS bit offset 152; units: unspecified.'
      - id: ld_err_counter
        type: u1
        doc: 'LD_ERR_COUNTER; CCSDS bit offset 160; units: unspecified.'
      - id: app_state
        type: u1
        doc: 'APP_STATE; CCSDS bit offset 168; units: unspecified.'
      - id: seq_step
        type: u1
        doc: 'SEQ_STEP; CCSDS bit offset 176; units: unspecified.'
      - id: last_cmd_cc
        type: u1
        doc: 'LAST_CMD_CC; CCSDS bit offset 184; units: unspecified.'
      - id: last_cmd_result
        type: u1
        doc: 'LAST_CMD_RESULT; CCSDS bit offset 192; units: unspecified.'
      - id: last_err_cc
        type: u1
        doc: 'LAST_ERR_CC; CCSDS bit offset 200; units: unspecified.'
      - id: last_err_detail
        type: u1
        doc: 'LAST_ERR_DETAIL; CCSDS bit offset 208; units: unspecified.'
      - id: last_seq_fail_step
        type: u1
        doc: 'LAST_SEQ_FAIL_STEP; CCSDS bit offset 216; units: unspecified.'
      - id: last_seq_fail_reason
        type: u1
        doc: 'LAST_SEQ_FAIL_REASON; CCSDS bit offset 224; units: unspecified.'
      - id: last_drv_err_code
        type: s1
        doc: 'LAST_DRV_ERR_CODE; CCSDS bit offset 232; units: unspecified.'
      - id: ld_state_packed
        type: u1
        doc: 'LD_STATE_PACKED; CCSDS bit offset 240; units: unspecified.'
      - id: ld_state_packed_b
        type: u1
        doc: 'LD_STATE_PACKED_B; CCSDS bit offset 248; units: unspecified.'
      - id: moon_eci_x_x1e4
        type: s2le
        doc: 'MOON_ECI_X_X1E4; CCSDS bit offset 256; units: unspecified.'
      - id: moon_eci_y_x1e4
        type: s2le
        doc: 'MOON_ECI_Y_X1E4; CCSDS bit offset 272; units: unspecified.'
      - id: power_mode
        type: u1
        doc: 'POWER_MODE; CCSDS bit offset 288; units: unspecified.'
      - id: ld_spare1
        type: u1
        doc: 'LD_SPARE1; CCSDS bit offset 296; units: unspecified.'
      - id: ld_spare2
        type: u1
        doc: 'LD_SPARE2; CCSDS bit offset 304; units: unspecified.'
      - id: active_seq_id
        type: u1
        doc: 'ACTIVE_SEQ_ID; CCSDS bit offset 312; units: unspecified.'
      - id: comm_fail_consecutive
        type: u1
        doc: 'COMM_FAIL_CONSECUTIVE; CCSDS bit offset 320; units: unspecified.'
      - id: fault_state
        type: u1
        doc: 'FAULT_STATE; CCSDS bit offset 328; units: unspecified.'
      - id: ld_spare3
        type: u1
        doc: 'LD_SPARE3; CCSDS bit offset 336; units: unspecified.'
      - id: spare0
        type: u1
        doc: 'SPARE0; CCSDS bit offset 344; units: unspecified.'
      - id: ld_current
        type: u2le
        doc: 'LD_CURRENT; CCSDS bit offset 352; units: unspecified.'
      - id: temp_setpoint
        type: u2le
        doc: 'TEMP_SETPOINT; CCSDS bit offset 368; units: unspecified.'
      - id: activate_count
        type: u2le
        doc: 'ACTIVATE_COUNT; CCSDS bit offset 384; units: unspecified.'
      - id: uart_resp_max_ms
        type: u2le
        doc: 'UART_RESP_MAX_MS; CCSDS bit offset 400; units: Milliseconds.'
      - id: uart_write_err_count
        type: u2le
        doc: 'UART_WRITE_ERR_COUNT; CCSDS bit offset 416; units: unspecified.'
      - id: uart_read_err_count
        type: u2le
        doc: 'UART_READ_ERR_COUNT; CCSDS bit offset 432; units: unspecified.'
      - id: uart_timeout_count
        type: u2le
        doc: 'UART_TIMEOUT_COUNT; CCSDS bit offset 448; units: unspecified.'
      - id: nak_count
        type: u2le
        doc: 'NAK_COUNT; CCSDS bit offset 464; units: unspecified.'
      - id: retry_count
        type: u2le
        doc: 'RETRY_COUNT; CCSDS bit offset 480; units: unspecified.'
      - id: seq_fail_count
        type: u2le
        doc: 'SEQ_FAIL_COUNT; CCSDS bit offset 496; units: unspecified.'
      - id: seu_detect_count
        type: u2le
        doc: 'SEU_DETECT_COUNT; CCSDS bit offset 512; units: unspecified.'
      - id: spare1
        type: u2le
        doc: 'SPARE1; CCSDS bit offset 528; units: unspecified.'
      - id: temperature
        type: f4le
        valid:
          expr: _ >= -3.4028234663852886e38 and _ <= 3.4028234663852886e38
        doc: 'TEMPERATURE; CCSDS bit offset 544; units: Celsius.'
      - id: pd_voltage
        type: f4le
        valid:
          expr: _ >= -3.4028234663852886e38 and _ <= 3.4028234663852886e38
        doc: 'PD_VOLTAGE; CCSDS bit offset 576; units: Volts.'
      - id: last_rx_sec_ago
        type: u2le
        doc: 'LAST_RX_SEC_AGO; CCSDS bit offset 608; units: unspecified.'
      - id: pad_rx
        type: u2le
        doc: 'PAD_RX; CCSDS bit offset 624; units: unspecified.'
      - id: ld_current_peak_ma
        type: u2le
        doc: 'LD_CURRENT_PEAK_MA; CCSDS bit offset 640; units: Milliamps.'
      - id: ld_temp_peak_c10
        type: s2le
        doc: 'LD_TEMP_PEAK_C10; CCSDS bit offset 656; units: unspecified.'
      - id: ld_temp_min_c10
        type: s2le
        doc: 'LD_TEMP_MIN_C10; CCSDS bit offset 672; units: unspecified.'
      - id: ld_fault_transient_edges
        type: u1
        doc: 'LD_FAULT_TRANSIENT_EDGES; CCSDS bit offset 688; units: unspecified.'
      - id: ld_fault_permanent_edges
        type: u1
        doc: 'LD_FAULT_PERMANENT_EDGES; CCSDS bit offset 696; units: unspecified.'
      - id: ld_edfa_alarm_edges
        type: u1
        doc: 'LD_EDFA_ALARM_EDGES; CCSDS bit offset 704; units: unspecified.'
      - id: ld_ext_reserved
        type: u1
        repeat: expr
        repeat-expr: 3
        doc: 'LD_EXT_RESERVED; CCSDS bit offset 712; units: unspecified.'
      - id: opt_token_holder
        type: u1
        doc: 'OPT_TOKEN_HOLDER; CCSDS bit offset 736; units: unspecified.'
      - id: opt_token_seq
        type: u1
        doc: 'OPT_TOKEN_SEQ; CCSDS bit offset 744; units: unspecified.'
      - id: pad_tail
        type: u1
        repeat: expr
        repeat-expr: 2
        doc: 'PAD_TAIL; CCSDS bit offset 752; units: unspecified.'
    instances:
      moon_dist_c256_converted:
        value: (350000 + moon_dist_c256 * 256)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      moon_eci_x_x1e4_converted:
        value: (moon_eci_x_x1e4 / 10000.0)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      moon_eci_y_x1e4_converted:
        value: (moon_eci_y_x1e4 / 10000.0)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      temperature_converted:
        value: ((-0.07669* temperature)+195.6307)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
  mode_09:
    seq:
      - id: rs_encode_err
        type: u1
        doc: 'RS_ENCODE_ERR; CCSDS bit offset 136; units: unspecified.'
      - id: elev_band_arm
        type: u1
        doc: 'ELEV_BAND_ARM; CCSDS bit offset 144; units: unspecified.'
      - id: led_fault_transient_edges
        type: u1
        doc: 'LED_FAULT_TRANSIENT_EDGES; CCSDS bit offset 152; units: unspecified.'
      - id: led_fault_permanent_edges
        type: u1
        doc: 'LED_FAULT_PERMANENT_EDGES; CCSDS bit offset 160; units: unspecified.'
      - id: pad_agg
        type: u1
        doc: 'PAD_AGG; CCSDS bit offset 168; units: unspecified.'
      - id: last_rx_sec_ago
        type: u2le
        doc: 'LAST_RX_SEC_AGO; CCSDS bit offset 176; units: Seconds.'
      - id: board_data_age_sec
        type: u2le
        doc: 'BOARD_DATA_AGE_SEC; CCSDS bit offset 192; units: Seconds.'
      - id: led_temp_peak_c10
        type: s2le
        doc: 'LED_TEMP_PEAK_C10; CCSDS bit offset 208; units: unspecified.'
      - id: led_temp_min_c10
        type: s2le
        doc: 'LED_TEMP_MIN_C10; CCSDS bit offset 224; units: unspecified.'
      - id: led_voltage_peak_mv
        type: u2le
        doc: 'LED_VOLTAGE_PEAK_MV; CCSDS bit offset 240; units: Millivolts.'
      - id: led_voltage_min_mv
        type: u2le
        doc: 'LED_VOLTAGE_MIN_MV; CCSDS bit offset 256; units: Millivolts.'
      - id: pad_agg2
        type: u2le
        doc: 'PAD_AGG2; CCSDS bit offset 272; units: unspecified.'
      - id: opt_token_holder
        type: u1
        doc: 'OPT_TOKEN_HOLDER; CCSDS bit offset 288; units: unspecified.'
      - id: opt_token_seq
        type: u1
        doc: 'OPT_TOKEN_SEQ; CCSDS bit offset 296; units: unspecified.'
      - id: cmd_counter
        type: u1
        doc: 'CMD_COUNTER; CCSDS bit offset 304; units: unspecified.'
      - id: err_counter
        type: u1
        doc: 'ERR_COUNTER; CCSDS bit offset 312; units: unspecified.'
      - id: app_state
        type: b2
        doc: 'APP_STATE; CCSDS bit offset 320; units: unspecified.'
      - id: last_cmd_c_c
        type: b8
        doc: 'LAST_CMD_C_C; CCSDS bit offset 322; units: unspecified.'
      - id: last_cmd_result
        type: b3
        doc: 'LAST_CMD_RESULT; CCSDS bit offset 330; units: unspecified.'
      - id: last_err_c_c
        type: b8
        doc: 'LAST_ERR_C_C; CCSDS bit offset 333; units: unspecified.'
      - id: last_err_detail
        type: b8
        doc: 'LAST_ERR_DETAIL; CCSDS bit offset 341; units: unspecified.'
      - id: last_drv_err_code_unsigned
        type: b8
        doc: 'LAST_DRV_ERR_CODE; CCSDS bit offset 349; units: unspecified.'
      - id: led_mask
        type: b16
        doc: 'LED_MASK; CCSDS bit offset 357; units: unspecified.'
      - id: any_led_on
        type: b1
        doc: 'ANY_LED_ON; CCSDS bit offset 373; units: unspecified.'
      - id: last_group
        type: b2
        doc: 'LAST_GROUP; CCSDS bit offset 374; units: unspecified.'
      - id: last_mask
        type: b4
        doc: 'LAST_MASK; CCSDS bit offset 376; units: unspecified.'
      - id: comm_status
        type: b1
        doc: 'COMM_STATUS; CCSDS bit offset 380; units: unspecified.'
      - id: last_temperature_c10_unsigned
        type: b16
        doc: 'LAST_TEMPERATURE_C10; CCSDS bit offset 381; units: unspecified.'
      - id: last_voltage_mv
        type: b16
        doc: 'LAST_VOLTAGE_MV; CCSDS bit offset 397; units: unspecified.'
      - id: activate_count
        type: b16
        doc: 'ACTIVATE_COUNT; CCSDS bit offset 413; units: unspecified.'
      - id: total_operating_time_sec
        type: b16
        doc: 'TOTAL_OPERATING_TIME_SEC; CCSDS bit offset 429; units: unspecified.'
      - id: current_session_time_sec
        type: b16
        doc: 'CURRENT_SESSION_TIME_SEC; CCSDS bit offset 445; units: unspecified.'
      - id: max_operating_time_sec
        type: b16
        doc: 'MAX_OPERATING_TIME_SEC; CCSDS bit offset 461; units: unspecified.'
      - id: uart_write_err_count
        type: b16
        doc: 'UART_WRITE_ERR_COUNT; CCSDS bit offset 477; units: unspecified.'
      - id: uart_read_err_count
        type: b16
        doc: 'UART_READ_ERR_COUNT; CCSDS bit offset 493; units: unspecified.'
      - id: uart_timeout_count
        type: b16
        doc: 'UART_TIMEOUT_COUNT; CCSDS bit offset 509; units: unspecified.'
      - id: nak_count
        type: b16
        doc: 'NAK_COUNT; CCSDS bit offset 525; units: unspecified.'
      - id: retry_count
        type: b16
        doc: 'RETRY_COUNT; CCSDS bit offset 541; units: unspecified.'
      - id: crc_err_count
        type: b16
        doc: 'CRC_ERR_COUNT; CCSDS bit offset 557; units: unspecified.'
      - id: comm_fail_consecutive
        type: b8
        doc: 'COMM_FAIL_CONSECUTIVE; CCSDS bit offset 573; units: unspecified.'
      - id: fault_state
        type: b2
        doc: 'FAULT_STATE; CCSDS bit offset 581; units: unspecified.'
      - id: seu_detect_count
        type: b16
        doc: 'SEU_DETECT_COUNT; CCSDS bit offset 583; units: unspecified.'
      - id: img_file_count
        type: b7
        doc: 'IMG_FILE_COUNT; CCSDS bit offset 599; units: unspecified.'
      - id: img_prune_count
        type: b16
        doc: 'IMG_PRUNE_COUNT; CCSDS bit offset 606; units: unspecified.'
      - id: img_disk_full_count
        type: b16
        doc: 'IMG_DISK_FULL_COUNT; CCSDS bit offset 622; units: unspecified.'
      - id: img_write_err_count
        type: b16
        doc: 'IMG_WRITE_ERR_COUNT; CCSDS bit offset 638; units: unspecified.'
      - id: last_img_bytes
        type: b19
        doc: 'LAST_IMG_BYTES; CCSDS bit offset 654; units: unspecified.'
      - id: last_capture_sec
        type: b32
        doc: 'LAST_CAPTURE_SEC; CCSDS bit offset 673; units: unspecified.'
      - id: last_img_slot
        type: b8
        doc: 'LAST_IMG_SLOT; CCSDS bit offset 705; units: unspecified.'
      - id: last_img_src
        type: b2
        doc: 'LAST_IMG_SRC; CCSDS bit offset 713; units: unspecified.'
      - id: active_img_read
        type: b1
        doc: 'ACTIVE_IMG_READ; CCSDS bit offset 715; units: unspecified.'
      - id: board_boot_mode
        type: b8
        doc: 'BOARD_BOOT_MODE; CCSDS bit offset 716; units: unspecified.'
      - id: subsys_flags
        type: b8
        doc: 'SUBSYS_FLAGS; CCSDS bit offset 724; units: unspecified.'
      - id: opt_state
        type: b8
        doc: 'OPT_STATE; CCSDS bit offset 732; units: unspecified.'
      - id: opt_mod
        type: b8
        doc: 'OPT_MOD; CCSDS bit offset 740; units: unspecified.'
      - id: opt_tx_seq
        type: b16
        doc: 'OPT_TX_SEQ; CCSDS bit offset 748; units: unspecified.'
      - id: opt_tx_total
        type: b16
        doc: 'OPT_TX_TOTAL; CCSDS bit offset 764; units: unspecified.'
      - id: pending_async
        type: b3
        doc: 'PENDING_ASYNC; CCSDS bit offset 780; units: unspecified.'
      - id: last_capture_slot_hw
        type: b8
        doc: 'LAST_CAPTURE_SLOT_HW; CCSDS bit offset 783; units: unspecified.'
      - id: last_capture_cam
        type: b2
        doc: 'LAST_CAPTURE_CAM; CCSDS bit offset 791; units: unspecified.'
      - id: last_video_slot
        type: b8
        doc: 'LAST_VIDEO_SLOT; CCSDS bit offset 793; units: unspecified.'
      - id: last_video_frames
        type: b16
        doc: 'LAST_VIDEO_FRAMES; CCSDS bit offset 801; units: unspecified.'
      - id: async_fail_count
        type: b16
        doc: 'ASYNC_FAIL_COUNT; CCSDS bit offset 817; units: unspecified.'
      - id: busy_nak_count
        type: b16
        doc: 'BUSY_NAK_COUNT; CCSDS bit offset 833; units: unspecified.'
      - id: xfer_retx_count
        type: b16
        doc: 'XFER_RETX_COUNT; CCSDS bit offset 849; units: unspecified.'
      - id: xfer_incomplete_count
        type: b16
        doc: 'XFER_INCOMPLETE_COUNT; CCSDS bit offset 865; units: unspecified.'
      - id: stray_frame_count
        type: b16
        doc: 'STRAY_FRAME_COUNT; CCSDS bit offset 881; units: unspecified.'
      - id: link_baud_code
        type: b2
        doc: 'LINK_BAUD_CODE; CCSDS bit offset 897; units: unspecified.'
      - id: board_power_state
        type: b3
        doc: 'BOARD_POWER_STATE; CCSDS bit offset 899; units: unspecified.'
      - id: last_session_result
        type: b2
        doc: 'LAST_SESSION_RESULT; CCSDS bit offset 902; units: unspecified.'
      - id: sd_bad_blocks
        type: u1
        doc: 'SD_BAD_BLOCKS; CCSDS bit offset 904; units: unspecified.'
      - id: session_count
        type: u2be
        doc: 'SESSION_COUNT; CCSDS bit offset 912; units: unspecified.'
      - id: sd_capacity_mb
        type: u2be
        doc: 'SD_CAPACITY_MB; CCSDS bit offset 928; units: unspecified.'
      - id: session_start_sec
        type: u4be
        doc: 'SESSION_START_SEC; CCSDS bit offset 944; units: unspecified.'
      - id: last_harvest_sec
        type: u4be
        doc: 'LAST_HARVEST_SEC; CCSDS bit offset 976; units: unspecified.'
      - id: board_time_status
        type: u1
        doc: 'BOARD_TIME_STATUS; CCSDS bit offset 1008; units: unspecified.'
      - id: board_time_src
        type: u1
        doc: 'BOARD_TIME_SRC; CCSDS bit offset 1016; units: unspecified.'
      - id: board_time_drift_sec
        type: s2be
        doc: 'BOARD_TIME_DRIFT_SEC; CCSDS bit offset 1024; units: unspecified.'
      - id: board_epoch
        type: u4be
        doc: 'BOARD_EPOCH; CCSDS bit offset 1040; units: unspecified.'
      - id: board_tick_ms
        type: u4be
        doc: 'BOARD_TICK_MS; CCSDS bit offset 1072; units: unspecified.'
      - id: board_sample_sec
        type: u4be
        doc: 'BOARD_SAMPLE_SEC; CCSDS bit offset 1104; units: unspecified.'
      - id: poll_sample_sec
        type: u4be
        doc: 'POLL_SAMPLE_SEC; CCSDS bit offset 1136; units: unspecified.'
      - id: last_time_sync_sec
        type: u4be
        doc: 'LAST_TIME_SYNC_SEC; CCSDS bit offset 1168; units: unspecified.'
      - id: board_uptime_sec
        type: u2be
        doc: 'BOARD_UPTIME_SEC; CCSDS bit offset 1200; units: unspecified.'
      - id: time_sync_count
        type: u2be
        doc: 'TIME_SYNC_COUNT; CCSDS bit offset 1216; units: unspecified.'
      - id: time_sync_fail_count
        type: u2be
        doc: 'TIME_SYNC_FAIL_COUNT; CCSDS bit offset 1232; units: unspecified.'
      - id: stale_flags
        type: b4
        doc: 'STALE_FLAGS; CCSDS bit offset 1248; units: unspecified.'
      - id: sd_img_full
        type: b8
        doc: 'SD_IMG_FULL; CCSDS bit offset 1252; units: unspecified.'
      - id: storage_mode
        type: b8
        doc: 'STORAGE_MODE; CCSDS bit offset 1260; units: unspecified.'
      - id: flash_state
        type: b8
        doc: 'FLASH_STATE; CCSDS bit offset 1268; units: unspecified.'
      - id: sd_state
        type: b8
        doc: 'SD_STATE; CCSDS bit offset 1276; units: unspecified.'
      - id: sd_inserted
        type: b8
        doc: 'SD_INSERTED; CCSDS bit offset 1284; units: unspecified.'
      - id: flash_img_count
        type: b16
        doc: 'FLASH_IMG_COUNT; CCSDS bit offset 1292; units: unspecified.'
      - id: flash_img_free
        type: b16
        doc: 'FLASH_IMG_FREE; CCSDS bit offset 1308; units: unspecified.'
      - id: sd_img_count
        type: b32
        doc: 'SD_IMG_COUNT; CCSDS bit offset 1324; units: unspecified.'
      - id: scrub_cycles
        type: b16
        doc: 'SCRUB_CYCLES; CCSDS bit offset 1356; units: unspecified.'
      - id: scrub_errors
        type: b16
        doc: 'SCRUB_ERRORS; CCSDS bit offset 1372; units: unspecified.'
      - id: evt_sync_pending
        type: b8
        doc: 'EVT_SYNC_PENDING; CCSDS bit offset 1388; units: unspecified.'
      - id: evt_sync_overflow
        type: b8
        doc: 'EVT_SYNC_OVERFLOW; CCSDS bit offset 1396; units: unspecified.'
      - id: sd_img_free_mb
        type: b16
        doc: 'SD_IMG_FREE_MB; CCSDS bit offset 1404; units: unspecified.'
      - id: min_stack_watermark
        type: b16
        doc: 'MIN_STACK_WATERMARK; CCSDS bit offset 1420; units: unspecified.'
      - id: flash_evt_used_kb
        type: b16
        doc: 'FLASH_EVT_USED_KB; CCSDS bit offset 1436; units: unspecified.'
      - id: board_capture_total
        type: b32
        doc: 'BOARD_CAPTURE_TOTAL; CCSDS bit offset 1452; units: unspecified.'
      - id: board_opt_frame_total
        type: b32
        doc: 'BOARD_OPT_FRAME_TOTAL; CCSDS bit offset 1484; units: unspecified.'
      - id: log_file_count
        type: b5
        doc: 'LOG_FILE_COUNT; CCSDS bit offset 1516; units: unspecified.'
      - id: log_write_err_count
        type: b16
        doc: 'LOG_WRITE_ERR_COUNT; CCSDS bit offset 1521; units: unspecified.'
      - id: last_log_bytes
        type: b32
        doc: 'LAST_LOG_BYTES; CCSDS bit offset 1537; units: unspecified.'
      - id: img_crc_fail_count
        type: b16
        doc: 'IMG_CRC_FAIL_COUNT; CCSDS bit offset 1569; units: unspecified.'
      - id: poll_index
        type: b4
        doc: 'POLL_INDEX; CCSDS bit offset 1585; units: unspecified.'
      - id: poll_enabled
        type: b1
        doc: 'POLL_ENABLED; CCSDS bit offset 1589; units: unspecified.'
      - id: child_queue_count
        type: b5
        doc: 'CHILD_QUEUE_COUNT; CCSDS bit offset 1590; units: unspecified.'
      - id: child_queue_max
        type: b5
        doc: 'CHILD_QUEUE_MAX; CCSDS bit offset 1595; units: unspecified.'
      - id: child_drop_count
        type: u2be
        doc: 'CHILD_DROP_COUNT; CCSDS bit offset 1600; units: unspecified.'
    instances:
      last_drv_err_code:
        value: 'last_drv_err_code_unsigned >= 128 ? last_drv_err_code_unsigned - 256 : last_drv_err_code_unsigned'
      last_temperature_c10:
        value: 'last_temperature_c10_unsigned >= 32768 ? last_temperature_c10_unsigned - 65536 : last_temperature_c10_unsigned'
  mode_10:
    seq:
      - id: shd_nav_ang_deg_u8
        type: u1
        doc: 'SHD_NAV_ANG_DEG_U8; CCSDS bit offset 136; units: deg.'
      - id: shd_flags8
        type: u1
        doc: 'SHD_FLAGS8; CCSDS bit offset 144; units: unspecified.'
      - id: eps_cmd_counter
        type: u1
        doc: 'EPS_CMD_COUNTER; CCSDS bit offset 152; units: unspecified.'
      - id: bcr_frame_seq
        type: u2le
        doc: 'BCR_FRAME_SEQ; CCSDS bit offset 160; units: unspecified.'
      - id: eps_bcr1_voltage
        type: u2le
        doc: 'EPS_BCR1_VOLTAGE; CCSDS bit offset 176; units: unspecified.'
      - id: eps_bcr1_sa1_a_current
        type: u2le
        doc: 'EPS_BCR1_SA1_A_CURRENT; CCSDS bit offset 192; units: unspecified.'
      - id: eps_bcr1_sa1_b_current
        type: u2le
        doc: 'EPS_BCR1_SA1_B_CURRENT; CCSDS bit offset 208; units: unspecified.'
      - id: eps_bcr1_sa1_a_temp
        type: u2le
        doc: 'EPS_BCR1_SA1_A_TEMP; CCSDS bit offset 224; units: unspecified.'
      - id: eps_bcr1_sa1_b_temp
        type: u2le
        doc: 'EPS_BCR1_SA1_B_TEMP; CCSDS bit offset 240; units: unspecified.'
      - id: eps_bcr1_sa1_a_sun_detector
        type: u2le
        doc: 'EPS_BCR1_SA1_A_SUN_DETECTOR; CCSDS bit offset 256; units: unspecified.'
      - id: eps_bcr1_sa1_b_sun_detector
        type: u2le
        doc: 'EPS_BCR1_SA1_B_SUN_DETECTOR; CCSDS bit offset 272; units: unspecified.'
      - id: eps_bcr2_voltage
        type: u2le
        doc: 'EPS_BCR2_VOLTAGE; CCSDS bit offset 288; units: unspecified.'
      - id: eps_bcr2_sa2_a_current
        type: u2le
        doc: 'EPS_BCR2_SA2_A_CURRENT; CCSDS bit offset 304; units: unspecified.'
      - id: eps_bcr2_sa2_b_current
        type: u2le
        doc: 'EPS_BCR2_SA2_B_CURRENT; CCSDS bit offset 320; units: unspecified.'
      - id: eps_bcr2_sa2_a_temp
        type: u2le
        doc: 'EPS_BCR2_SA2_A_TEMP; CCSDS bit offset 336; units: unspecified.'
      - id: eps_bcr2_sa2_b_temp
        type: u2le
        doc: 'EPS_BCR2_SA2_B_TEMP; CCSDS bit offset 352; units: unspecified.'
      - id: eps_bcr2_sa2_a_sun_detector
        type: u2le
        doc: 'EPS_BCR2_SA2_A_SUN_DETECTOR; CCSDS bit offset 368; units: unspecified.'
      - id: eps_bcr2_sa2_b_sun_detector
        type: u2le
        doc: 'EPS_BCR2_SA2_B_SUN_DETECTOR; CCSDS bit offset 384; units: unspecified.'
      - id: eps_bcr3_voltage
        type: u2le
        doc: 'EPS_BCR3_VOLTAGE; CCSDS bit offset 400; units: unspecified.'
      - id: eps_bcr3_sa3_a_current
        type: u2le
        doc: 'EPS_BCR3_SA3_A_CURRENT; CCSDS bit offset 416; units: unspecified.'
      - id: eps_bcr3_sa3_b_current
        type: u2le
        doc: 'EPS_BCR3_SA3_B_CURRENT; CCSDS bit offset 432; units: unspecified.'
      - id: eps_bcr3_sa3_a_temp
        type: u2le
        doc: 'EPS_BCR3_SA3_A_TEMP; CCSDS bit offset 448; units: unspecified.'
      - id: eps_bcr3_sa3_b_temp
        type: u2le
        doc: 'EPS_BCR3_SA3_B_TEMP; CCSDS bit offset 464; units: unspecified.'
      - id: eps_bcr3_sa3_a_sun_detector
        type: u2le
        doc: 'EPS_BCR3_SA3_A_SUN_DETECTOR; CCSDS bit offset 480; units: unspecified.'
      - id: eps_bcr3_sa3_b_sun_detector
        type: u2le
        doc: 'EPS_BCR3_SA3_B_SUN_DETECTOR; CCSDS bit offset 496; units: unspecified.'
      - id: eps_bcr4_voltage
        type: u2le
        doc: 'EPS_BCR4_VOLTAGE; CCSDS bit offset 512; units: unspecified.'
      - id: eps_bcr4_sa4_a_current
        type: u2le
        doc: 'EPS_BCR4_SA4_A_CURRENT; CCSDS bit offset 528; units: unspecified.'
      - id: eps_bcr4_sa4_b_current
        type: u2le
        doc: 'EPS_BCR4_SA4_B_CURRENT; CCSDS bit offset 544; units: unspecified.'
      - id: eps_bcr4_sa4_a_temp
        type: u2le
        doc: 'EPS_BCR4_SA4_A_TEMP; CCSDS bit offset 560; units: unspecified.'
      - id: eps_bcr4_sa4_b_temp
        type: u2le
        doc: 'EPS_BCR4_SA4_B_TEMP; CCSDS bit offset 576; units: unspecified.'
      - id: eps_bcr4_sa4_a_sun_detector
        type: u2le
        doc: 'EPS_BCR4_SA4_A_SUN_DETECTOR; CCSDS bit offset 592; units: unspecified.'
      - id: eps_bcr4_sa4_b_sun_detector
        type: u2le
        doc: 'EPS_BCR4_SA4_B_SUN_DETECTOR; CCSDS bit offset 608; units: unspecified.'
      - id: eps_bcr5_voltage
        type: u2le
        doc: 'EPS_BCR5_VOLTAGE; CCSDS bit offset 624; units: unspecified.'
      - id: eps_bcr5_sa5_a_current
        type: u2le
        doc: 'EPS_BCR5_SA5_A_CURRENT; CCSDS bit offset 640; units: unspecified.'
      - id: eps_bcr5_sa5_b_current
        type: u2le
        doc: 'EPS_BCR5_SA5_B_CURRENT; CCSDS bit offset 656; units: unspecified.'
      - id: eps_bcr5_sa5_a_temp
        type: u2le
        doc: 'EPS_BCR5_SA5_A_TEMP; CCSDS bit offset 672; units: unspecified.'
      - id: eps_bcr5_sa5_b_temp
        type: u2le
        doc: 'EPS_BCR5_SA5_B_TEMP; CCSDS bit offset 688; units: unspecified.'
      - id: eps_bcr5_sa5_a_sun_detector
        type: u2le
        doc: 'EPS_BCR5_SA5_A_SUN_DETECTOR; CCSDS bit offset 704; units: unspecified.'
      - id: eps_bcr5_sa5_b_sun_detector
        type: u2le
        doc: 'EPS_BCR5_SA5_B_SUN_DETECTOR; CCSDS bit offset 720; units: unspecified.'
      - id: eps_bcr6_voltage
        type: u2le
        doc: 'EPS_BCR6_VOLTAGE; CCSDS bit offset 736; units: unspecified.'
      - id: eps_bcr6_sa6_a_current
        type: u2le
        doc: 'EPS_BCR6_SA6_A_CURRENT; CCSDS bit offset 752; units: unspecified.'
      - id: eps_bcr6_sa6_b_current
        type: u2le
        doc: 'EPS_BCR6_SA6_B_CURRENT; CCSDS bit offset 768; units: unspecified.'
      - id: eps_bcr6_sa6_a_temp
        type: u2le
        doc: 'EPS_BCR6_SA6_A_TEMP; CCSDS bit offset 784; units: unspecified.'
      - id: eps_bcr6_sa6_b_temp
        type: u2le
        doc: 'EPS_BCR6_SA6_B_TEMP; CCSDS bit offset 800; units: unspecified.'
      - id: eps_bcr6_sa6_a_sun_detector
        type: u2le
        doc: 'EPS_BCR6_SA6_A_SUN_DETECTOR; CCSDS bit offset 816; units: unspecified.'
      - id: eps_bcr6_sa6_b_sun_detector
        type: u2le
        doc: 'EPS_BCR6_SA6_B_SUN_DETECTOR; CCSDS bit offset 832; units: unspecified.'
      - id: eps_bcr7_voltage
        type: u2le
        doc: 'EPS_BCR7_VOLTAGE; CCSDS bit offset 848; units: unspecified.'
      - id: eps_bcr7_sa7_a_current
        type: u2le
        doc: 'EPS_BCR7_SA7_A_CURRENT; CCSDS bit offset 864; units: unspecified.'
      - id: eps_bcr7_sa7_b_current
        type: u2le
        doc: 'EPS_BCR7_SA7_B_CURRENT; CCSDS bit offset 880; units: unspecified.'
      - id: eps_bcr7_sa7_a_temp
        type: u2le
        doc: 'EPS_BCR7_SA7_A_TEMP; CCSDS bit offset 896; units: unspecified.'
      - id: eps_bcr7_sa7_b_temp
        type: u2le
        doc: 'EPS_BCR7_SA7_B_TEMP; CCSDS bit offset 912; units: unspecified.'
      - id: eps_bcr7_sa7_a_sun_detector
        type: u2le
        doc: 'EPS_BCR7_SA7_A_SUN_DETECTOR; CCSDS bit offset 928; units: unspecified.'
      - id: eps_bcr7_sa7_b_sun_detector
        type: u2le
        doc: 'EPS_BCR7_SA7_B_SUN_DETECTOR; CCSDS bit offset 944; units: unspecified.'
      - id: eps_bcr8_voltage
        type: u2le
        doc: 'EPS_BCR8_VOLTAGE; CCSDS bit offset 960; units: unspecified.'
      - id: eps_bcr8_sa8_a_current
        type: u2le
        doc: 'EPS_BCR8_SA8_A_CURRENT; CCSDS bit offset 976; units: unspecified.'
      - id: eps_bcr8_sa8_b_current
        type: u2le
        doc: 'EPS_BCR8_SA8_B_CURRENT; CCSDS bit offset 992; units: unspecified.'
      - id: eps_bcr8_sa8_a_temp
        type: u2le
        doc: 'EPS_BCR8_SA8_A_TEMP; CCSDS bit offset 1008; units: unspecified.'
      - id: eps_bcr8_sa8_b_temp
        type: u2le
        doc: 'EPS_BCR8_SA8_B_TEMP; CCSDS bit offset 1024; units: unspecified.'
      - id: eps_bcr8_sa8_a_sun_detector
        type: u2le
        doc: 'EPS_BCR8_SA8_A_SUN_DETECTOR; CCSDS bit offset 1040; units: unspecified.'
      - id: eps_bcr8_sa8_b_sun_detector
        type: u2le
        doc: 'EPS_BCR8_SA8_B_SUN_DETECTOR; CCSDS bit offset 1056; units: unspecified.'
      - id: eps_bcr9_voltage
        type: u2le
        doc: 'EPS_BCR9_VOLTAGE; CCSDS bit offset 1072; units: unspecified.'
      - id: eps_bcr9_sa9_a_current
        type: u2le
        doc: 'EPS_BCR9_SA9_A_CURRENT; CCSDS bit offset 1088; units: unspecified.'
      - id: eps_bcr9_sa9_b_current
        type: u2le
        doc: 'EPS_BCR9_SA9_B_CURRENT; CCSDS bit offset 1104; units: unspecified.'
      - id: eps_bcr9_sa9_a_temp
        type: u2le
        doc: 'EPS_BCR9_SA9_A_TEMP; CCSDS bit offset 1120; units: unspecified.'
      - id: eps_bcr9_sa9_b_temp
        type: u2le
        doc: 'EPS_BCR9_SA9_B_TEMP; CCSDS bit offset 1136; units: unspecified.'
      - id: eps_bcr9_sa9_a_sun_detector
        type: u2le
        doc: 'EPS_BCR9_SA9_A_SUN_DETECTOR; CCSDS bit offset 1152; units: unspecified.'
      - id: eps_bcr9_sa9_b_sun_detector
        type: u2le
        doc: 'EPS_BCR9_SA9_B_SUN_DETECTOR; CCSDS bit offset 1168; units: unspecified.'
      - id: pdm_timer_limit
        type: u1
        repeat: expr
        repeat-expr: 10
        doc: 'PDM_TIMER_LIMIT; CCSDS bit offset 1184; units: unspecified.'
      - id: pdm_timer_current
        type: u1
        repeat: expr
        repeat-expr: 10
        doc: 'PDM_TIMER_CURRENT; CCSDS bit offset 1264; units: unspecified.'
      - id: eps2_spare
        type: u1
        repeat: expr
        repeat-expr: 2
        doc: 'EPS2_SPARE; CCSDS bit offset 1344; units: unspecified.'
      - id: shd_nav_ang_mean_x10
        type: u2le
        doc: 'SHD_NAV_ANG_MEAN_X10; CCSDS bit offset 1360; units: 0.1deg.'
      - id: shd_nav_ang_max_x10
        type: u2le
        doc: 'SHD_NAV_ANG_MAX_X10; CCSDS bit offset 1376; units: unspecified.'
      - id: shd_mag_ang_mean_x10
        type: u2le
        doc: 'SHD_MAG_ANG_MEAN_X10; CCSDS bit offset 1392; units: 0.1deg.'
      - id: shd_scored_lo
        type: u2le
        doc: 'SHD_SCORED_LO; CCSDS bit offset 1408; units: unspecified.'
      - id: shd_flags
        type: u1
        doc: 'SHD_FLAGS; CCSDS bit offset 1424; units: unspecified.'
      - id: shd_ver
        type: u1
        doc: 'SHD_VER; CCSDS bit offset 1432; units: unspecified.'
      - id: shd_pad
        type: u2le
        doc: 'SHD_PAD; CCSDS bit offset 1440; units: unspecified.'
    instances:
      eps_bcr1_voltage_converted:
        value: ((0.0322581 * eps_bcr1_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr1_sa1_a_current_converted:
        value: ((0.0009775 * eps_bcr1_sa1_a_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr1_sa1_b_current_converted:
        value: ((0.0009775 * eps_bcr1_sa1_b_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr1_sa1_a_temp_converted:
        value: ((0.4964 * eps_bcr1_sa1_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr1_sa1_b_temp_converted:
        value: ((0.4964 * eps_bcr1_sa1_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr1_sa1_a_sun_detector_converted:
        value: ((1.59725 * eps_bcr1_sa1_a_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr1_sa1_b_sun_detector_converted:
        value: ((1.59725 * eps_bcr1_sa1_b_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr2_voltage_converted:
        value: ((0.0322581 * eps_bcr2_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr2_sa2_a_current_converted:
        value: ((0.0009775 * eps_bcr2_sa2_a_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr2_sa2_b_current_converted:
        value: ((0.0009775 * eps_bcr2_sa2_b_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr2_sa2_a_temp_converted:
        value: ((0.4964 * eps_bcr2_sa2_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr2_sa2_b_temp_converted:
        value: ((0.4964 * eps_bcr2_sa2_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr2_sa2_a_sun_detector_converted:
        value: ((1.59725 * eps_bcr2_sa2_a_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr2_sa2_b_sun_detector_converted:
        value: ((1.59725 * eps_bcr2_sa2_b_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr3_voltage_converted:
        value: ((0.0099706 * eps_bcr3_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr3_sa3_a_current_converted:
        value: ((0.0009775 * eps_bcr3_sa3_a_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr3_sa3_b_current_converted:
        value: ((0.0009775 * eps_bcr3_sa3_b_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr3_sa3_a_temp_converted:
        value: ((0.4964 * eps_bcr3_sa3_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr3_sa3_b_temp_converted:
        value: ((0.4964 * eps_bcr3_sa3_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr3_sa3_a_sun_detector_converted:
        value: ((1.59725 * eps_bcr3_sa3_a_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr3_sa3_b_sun_detector_converted:
        value: ((1.59725 * eps_bcr3_sa3_b_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr4_voltage_converted:
        value: ((0.0322581 * eps_bcr4_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr4_sa4_a_current_converted:
        value: ((0.0009775 * eps_bcr4_sa4_a_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr4_sa4_b_current_converted:
        value: ((0.0009775 * eps_bcr4_sa4_b_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr4_sa4_a_temp_converted:
        value: ((0.4964 * eps_bcr4_sa4_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr4_sa4_b_temp_converted:
        value: ((0.4964 * eps_bcr4_sa4_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr4_sa4_a_sun_detector_converted:
        value: ((1.59725 * eps_bcr4_sa4_a_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr4_sa4_b_sun_detector_converted:
        value: ((1.59725 * eps_bcr4_sa4_b_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr5_voltage_converted:
        value: ((0.0322581 * eps_bcr5_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr5_sa5_a_current_converted:
        value: ((0.0009775 * eps_bcr5_sa5_a_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr5_sa5_b_current_converted:
        value: ((0.0009775 * eps_bcr5_sa5_b_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr5_sa5_a_temp_converted:
        value: ((0.4964 * eps_bcr5_sa5_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr5_sa5_b_temp_converted:
        value: ((0.4964 * eps_bcr5_sa5_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr5_sa5_a_sun_detector_converted:
        value: ((1.59725 * eps_bcr5_sa5_a_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr5_sa5_b_sun_detector_converted:
        value: ((1.59725 * eps_bcr5_sa5_b_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr6_voltage_converted:
        value: ((0.0322581 * eps_bcr6_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr6_sa6_a_current_converted:
        value: ((0.0009775 * eps_bcr6_sa6_a_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr6_sa6_b_current_converted:
        value: ((0.0009775 * eps_bcr6_sa6_b_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr6_sa6_a_temp_converted:
        value: ((0.4964 * eps_bcr6_sa6_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr6_sa6_b_temp_converted:
        value: ((0.4964 * eps_bcr6_sa6_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr6_sa6_a_sun_detector_converted:
        value: ((1.59725 * eps_bcr6_sa6_a_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr6_sa6_b_sun_detector_converted:
        value: ((1.59725 * eps_bcr6_sa6_b_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr7_voltage_converted:
        value: ((0.0322581 * eps_bcr7_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr7_sa7_a_current_converted:
        value: ((0.0009775 * eps_bcr7_sa7_a_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr7_sa7_b_current_converted:
        value: ((0.0009775 * eps_bcr7_sa7_b_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr7_sa7_a_temp_converted:
        value: ((0.4964 * eps_bcr7_sa7_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr7_sa7_b_temp_converted:
        value: ((0.4964 * eps_bcr7_sa7_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr7_sa7_a_sun_detector_converted:
        value: ((1.59725 * eps_bcr7_sa7_a_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr7_sa7_b_sun_detector_converted:
        value: ((1.59725 * eps_bcr7_sa7_b_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr8_voltage_converted:
        value: ((0.0322581 * eps_bcr8_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr8_sa8_a_current_converted:
        value: ((0.0009775 * eps_bcr8_sa8_a_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr8_sa8_b_current_converted:
        value: ((0.0009775 * eps_bcr8_sa8_b_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr8_sa8_a_temp_converted:
        value: ((0.4964 * eps_bcr8_sa8_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr8_sa8_b_temp_converted:
        value: ((0.4964 * eps_bcr8_sa8_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr8_sa8_a_sun_detector_converted:
        value: ((1.59725 * eps_bcr8_sa8_a_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr8_sa8_b_sun_detector_converted:
        value: ((1.59725 * eps_bcr8_sa8_b_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr9_voltage_converted:
        value: ((0.0322581 * eps_bcr9_voltage))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr9_sa9_a_current_converted:
        value: ((0.0009775 * eps_bcr9_sa9_a_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr9_sa9_b_current_converted:
        value: ((0.0009775 * eps_bcr9_sa9_b_current))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr9_sa9_a_temp_converted:
        value: ((0.4964 * eps_bcr9_sa9_a_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr9_sa9_b_temp_converted:
        value: ((0.4964 * eps_bcr9_sa9_b_temp)-273.15)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr9_sa9_a_sun_detector_converted:
        value: ((1.59725 * eps_bcr9_sa9_a_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      eps_bcr9_sa9_b_sun_detector_converted:
        value: ((1.59725 * eps_bcr9_sa9_b_sun_detector))
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      shd_nav_ang_mean_x10_converted:
        value: (shd_nav_ang_mean_x10 / 10.0)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      shd_nav_ang_max_x10_converted:
        value: (shd_nav_ang_max_x10 / 10.0)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
      shd_mag_ang_mean_x10_converted:
        value: (shd_mag_ang_mean_x10 / 10.0)
        doc: Mission conversion at full precision; display rounding is applied by the Python reference decoder.
