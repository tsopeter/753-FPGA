# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_6u_config14_s_p_ZZN4nnet26conv_2dShg BINDTYPE {storage} TYPE {shiftreg} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
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
    id 531 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name p_read4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read4 \
    op interface \
    ports { p_read4 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name p_read5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read5 \
    op interface \
    ports { p_read5 { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13_i { I 6 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13_o { O 6 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19 { O 6 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_19_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12_i { I 6 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12_o { O 6 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18 { O 6 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_18_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11_i { I 6 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11_o { O 6 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17 { O 6 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_17_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10_i { I 6 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10_o { O 6 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16 { O 6 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_16_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_43 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_43 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_43_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_43_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_43_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15 { O 6 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_15_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_42 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_42 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_42_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_42_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_42_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 \
    op interface \
    ports { void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14 { O 6 vector } void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_14_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_29 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_29 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_29_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_29_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_29_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_35 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_35 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_35 { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_35_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_28 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_28 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_28_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_28_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_28_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_34 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_34 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_34 { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_34_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_27 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_27 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_27_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_27_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_27_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_33 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_33 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_33 { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_33_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_26 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_26 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_26_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_26_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_26_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 556 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_32 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_32 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_32 { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_32_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 557 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_25_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 558 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_31 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_31 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_31 { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_31_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 559 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_24_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 560 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_30 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_30 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_30 { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_30_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 561 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 562 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17 { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_17_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 563 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 564 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16 { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_16_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 565 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 566 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15 { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_15_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 567 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 568 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14 { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_14_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 569 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 570 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13 { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_13_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 571 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 572 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12 { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_12_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 573 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_41 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_41 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_41_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_41_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_41_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 574 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_40 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_40 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_40_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_40_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_40_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 575 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_39 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_39 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_39_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_39_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_39_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 576 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_38 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_38 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_38_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_38_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_38_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 577 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_37 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_37 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_37_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_37_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_37_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 578 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_36 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_36 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_36_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_36_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_36_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 579 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_23_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 580 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_22_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 581 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_21_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 582 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_20_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 583 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_19_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 584 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_18_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 585 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 586 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 587 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 588 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 589 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 590 \
    name p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9 \
    op interface \
    ports { p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_i { I 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_o { O 6 vector } p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_o_ap_vld { O 1 bit } } \
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


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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


