# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name layer14_out \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_layer14_out \
    op interface \
    ports { layer14_out_dout { I 36 vector } layer14_out_empty_n { I 1 bit } layer14_out_read { O 1 bit } layer14_out_num_data_valid { I 5 vector } layer14_out_fifo_cap { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name data_53_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_53_out \
    op interface \
    ports { data_53_out { O 6 vector } data_53_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name data_52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_52_out \
    op interface \
    ports { data_52_out { O 6 vector } data_52_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name data_51_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_51_out \
    op interface \
    ports { data_51_out { O 6 vector } data_51_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name data_50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_50_out \
    op interface \
    ports { data_50_out { O 6 vector } data_50_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name data_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_49_out \
    op interface \
    ports { data_49_out { O 6 vector } data_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name data_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_48_out \
    op interface \
    ports { data_48_out { O 6 vector } data_48_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name data_47_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_47_out \
    op interface \
    ports { data_47_out { O 6 vector } data_47_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name data_46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_46_out \
    op interface \
    ports { data_46_out { O 6 vector } data_46_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name data_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_45_out \
    op interface \
    ports { data_45_out { O 6 vector } data_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name data_44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_44_out \
    op interface \
    ports { data_44_out { O 6 vector } data_44_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name data_43_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_43_out \
    op interface \
    ports { data_43_out { O 6 vector } data_43_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name data_42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_42_out \
    op interface \
    ports { data_42_out { O 6 vector } data_42_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name data_41_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_41_out \
    op interface \
    ports { data_41_out { O 6 vector } data_41_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name data_40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_40_out \
    op interface \
    ports { data_40_out { O 6 vector } data_40_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name data_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_39_out \
    op interface \
    ports { data_39_out { O 6 vector } data_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name data_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_38_out \
    op interface \
    ports { data_38_out { O 6 vector } data_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name data_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_37_out \
    op interface \
    ports { data_37_out { O 6 vector } data_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name data_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_36_out \
    op interface \
    ports { data_36_out { O 6 vector } data_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name data_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_35_out \
    op interface \
    ports { data_35_out { O 6 vector } data_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name data_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_34_out \
    op interface \
    ports { data_34_out { O 6 vector } data_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name data_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_33_out \
    op interface \
    ports { data_33_out { O 6 vector } data_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name data_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_32_out \
    op interface \
    ports { data_32_out { O 6 vector } data_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
    name data_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_31_out \
    op interface \
    ports { data_31_out { O 6 vector } data_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 556 \
    name data_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_30_out \
    op interface \
    ports { data_30_out { O 6 vector } data_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 557 \
    name data_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_29_out \
    op interface \
    ports { data_29_out { O 6 vector } data_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 558 \
    name data_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_28_out \
    op interface \
    ports { data_28_out { O 6 vector } data_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 559 \
    name data_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_27_out \
    op interface \
    ports { data_27_out { O 6 vector } data_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 560 \
    name data_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_26_out \
    op interface \
    ports { data_26_out { O 6 vector } data_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 561 \
    name data_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_25_out \
    op interface \
    ports { data_25_out { O 6 vector } data_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 562 \
    name data_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_24_out \
    op interface \
    ports { data_24_out { O 6 vector } data_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 563 \
    name data_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_23_out \
    op interface \
    ports { data_23_out { O 6 vector } data_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 564 \
    name data_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_22_out \
    op interface \
    ports { data_22_out { O 6 vector } data_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 565 \
    name data_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_21_out \
    op interface \
    ports { data_21_out { O 6 vector } data_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 566 \
    name data_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_20_out \
    op interface \
    ports { data_20_out { O 6 vector } data_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 567 \
    name data_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_19_out \
    op interface \
    ports { data_19_out { O 6 vector } data_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 568 \
    name data_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_18_out \
    op interface \
    ports { data_18_out { O 6 vector } data_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 569 \
    name data_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_17_out \
    op interface \
    ports { data_17_out { O 6 vector } data_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 570 \
    name data_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_16_out \
    op interface \
    ports { data_16_out { O 6 vector } data_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 571 \
    name data_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_15_out \
    op interface \
    ports { data_15_out { O 6 vector } data_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 572 \
    name data_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_14_out \
    op interface \
    ports { data_14_out { O 6 vector } data_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 573 \
    name data_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_13_out \
    op interface \
    ports { data_13_out { O 6 vector } data_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 574 \
    name data_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_12_out \
    op interface \
    ports { data_12_out { O 6 vector } data_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 575 \
    name data_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_11_out \
    op interface \
    ports { data_11_out { O 6 vector } data_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 576 \
    name data_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_10_out \
    op interface \
    ports { data_10_out { O 6 vector } data_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 577 \
    name data_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_9_out \
    op interface \
    ports { data_9_out { O 6 vector } data_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 578 \
    name data_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_8_out \
    op interface \
    ports { data_8_out { O 6 vector } data_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 579 \
    name data_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_7_out \
    op interface \
    ports { data_7_out { O 6 vector } data_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 580 \
    name data_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_6_out \
    op interface \
    ports { data_6_out { O 6 vector } data_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 581 \
    name data_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_5_out \
    op interface \
    ports { data_5_out { O 6 vector } data_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 582 \
    name data_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_4_out \
    op interface \
    ports { data_4_out { O 6 vector } data_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 583 \
    name data_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_3_out \
    op interface \
    ports { data_3_out { O 6 vector } data_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 584 \
    name data_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_2_out \
    op interface \
    ports { data_2_out { O 6 vector } data_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 585 \
    name data_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_1_out \
    op interface \
    ports { data_1_out { O 6 vector } data_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 586 \
    name data_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_data_out \
    op interface \
    ports { data_out { O 6 vector } data_out_ap_vld { O 1 bit } } \
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


# flow_control definition:
set InstName myproject_flow_control_loop_pipe_sequential_init_U
set CompName myproject_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix myproject_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


