# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler myproject_sparsemux_51_5_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler myproject_mac_muladd_8ns_5s_20s_21_1_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 0
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler myproject_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_outfYi BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler myproject_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_w2_g8j BINDTYPE {storage} TYPE {rom_np} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_14 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_14 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_13 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_13 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_12 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_12 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_11 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_11 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_10 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_10 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_9 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_9 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_8 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_7 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_7 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_6 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_5 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_4 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_3 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_2 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_1 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


