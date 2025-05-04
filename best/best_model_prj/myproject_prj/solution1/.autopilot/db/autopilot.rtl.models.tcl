set SynModuleInfo {
  {SRCNAME linear<array<ap_uint,1u>,array<ap_fixed<8,1,4,0,0>,1u>,linear_config2> MODELNAME linear_array_ap_uint_1u_array_ap_fixed_8_1_4_0_0_1u_linear_config2_s RTLNAME myproject_linear_array_ap_uint_1u_array_ap_fixed_8_1_4_0_0_1u_linear_config2_s
    SUBMODULES {
      {MODELNAME myproject_regslice_both RTLNAME myproject_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
      {MODELNAME myproject_flow_control_loop_pipe RTLNAME myproject_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME {shift_line_buffer<array<ap_fixed<8, 1, 4, 0, 0>, 1u>, config3>} MODELNAME shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s RTLNAME myproject_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_void_conv_2d_buffer_rbkb RTLNAME myproject_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_void_conv_2d_buffer_rbkb BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_fixed,ap_fixed<20,9,5,3,0>,config3_mult> MODELNAME dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s
    SUBMODULES {
      {MODELNAME myproject_sparsemux_51_5_8_1_1 RTLNAME myproject_sparsemux_51_5_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME myproject_mac_muladd_8s_5s_20s_21_1_1 RTLNAME myproject_mac_muladd_8s_5s_20s_21_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_outfYi RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_outfYi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_w3_g8j RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_w3_g8j BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<20,9,5,3,0>,2u>,config3> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s RTLNAME myproject_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,1u>,array<ap_fixed<20,9,5,3,0>,2u>,config3> MODELNAME conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_20_9_5_3_0_2u_config3_s RTLNAME myproject_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_20_9_5_3_0_2u_config3_s}
  {SRCNAME relu<array<ap_fixed,2u>,array<ap_ufixed<6,0,4,0,0>,2u>,relu_config5> MODELNAME relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config5_s RTLNAME myproject_relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config5_s}
  {SRCNAME {shift_line_buffer<array<ap_ufixed<6, 0, 4, 0, 0>, 2u>, config6>} MODELNAME shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s RTLNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_p_ZZN4nnet26conv_2d_hbi RTLNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_p_ZZN4nnet26conv_2d_hbi BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_leq_nin<ap_ufixed,ap_fixed<19,9,5,3,0>,config6_mult> MODELNAME dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s
    SUBMODULES {
      {MODELNAME myproject_sparsemux_101_6_6_1_1 RTLNAME myproject_sparsemux_101_6_6_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME myproject_mac_muladd_6s_6ns_18s_18_1_1 RTLNAME myproject_mac_muladd_6s_6ns_18s_18_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME myproject_mac_muladd_6ns_4s_16s_16_1_1 RTLNAME myproject_mac_muladd_6ns_4s_16s_16_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_w6_ROMpcA RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_w6_ROMpcA BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<19,9,5,3,0>,4u>,config6> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_4u_config6_s RTLNAME myproject_compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_4u_config6_s}
  {SRCNAME conv_2d_cl<array<ap_ufixed,2u>,array<ap_fixed<19,9,5,3,0>,4u>,config6> MODELNAME conv_2d_cl_array_ap_ufixed_2u_array_ap_fixed_19_9_5_3_0_4u_config6_s RTLNAME myproject_conv_2d_cl_array_ap_ufixed_2u_array_ap_fixed_19_9_5_3_0_4u_config6_s}
  {SRCNAME relu<array<ap_fixed,4u>,array<ap_ufixed<6,0,4,0,0>,4u>,relu_config8> MODELNAME relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config8_s RTLNAME myproject_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config8_s}
  {SRCNAME {shift_line_buffer<array<ap_ufixed<6, 0, 4, 0, 0>, 4u>, config9>} MODELNAME shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config9_s RTLNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config9_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config9_s_p_ZZN4nnet26conv_2d_qcK RTLNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config9_s_p_ZZN4nnet26conv_2d_qcK BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_leq_nin<ap_ufixed,ap_fixed<20,10,5,3,0>,config9_mult> MODELNAME dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_20_10_5_3_0_config9_mult_s RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_20_10_5_3_0_config9_mult_s
    SUBMODULES {
      {MODELNAME myproject_mul_6s_6ns_12_1_1 RTLNAME myproject_mul_6s_6ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mac_muladd_6s_6ns_12s_13_1_1 RTLNAME myproject_mac_muladd_6s_6ns_12s_13_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME myproject_mac_muladd_6ns_4s_12s_13_1_1 RTLNAME myproject_mac_muladd_6ns_4s_12s_13_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_20_10_5_3_0_config9_mult_s_w9_ROGfk RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_20_10_5_3_0_config9_mult_s_w9_ROGfk BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<20,10,5,3,0>,5u>,config9> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_20_10_5_3_0_5u_config9_s RTLNAME myproject_compute_output_buffer_2d_array_array_ap_fixed_20_10_5_3_0_5u_config9_s}
  {SRCNAME conv_2d_cl<array<ap_ufixed,4u>,array<ap_fixed<20,10,5,3,0>,5u>,config9> MODELNAME conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_20_10_5_3_0_5u_config9_s RTLNAME myproject_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_20_10_5_3_0_5u_config9_s}
  {SRCNAME relu<array<ap_fixed,5u>,array<ap_ufixed<6,0,4,0,0>,5u>,relu_config11> MODELNAME relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config11_s RTLNAME myproject_relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config11_s}
  {SRCNAME {shift_line_buffer<array<ap_ufixed<6, 0, 4, 0, 0>, 5u>, config12>} MODELNAME shift_line_buffer_array_ap_ufixed_6_0_4_0_0_5u_config12_s RTLNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_5u_config12_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_5u_config12_s_p_ZZN4nnet26conv_2dHfu RTLNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_5u_config12_s_p_ZZN4nnet26conv_2dHfu BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_leq_nin<ap_ufixed,ap_fixed<19,9,5,3,0>,config12_mult> MODELNAME dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config12_mult_s RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config12_mult_s
    SUBMODULES {
      {MODELNAME myproject_sparsemux_91_6_6_1_1 RTLNAME myproject_sparsemux_91_6_6_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config12_mult_s_w12_RRg6 RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config12_mult_s_w12_RRg6 BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<19,9,5,3,0>,6u>,config12> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_6u_config12_s RTLNAME myproject_compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_6u_config12_s}
  {SRCNAME conv_2d_cl<array<ap_ufixed,5u>,array<ap_fixed<19,9,5,3,0>,6u>,config12> MODELNAME conv_2d_cl_array_ap_ufixed_5u_array_ap_fixed_19_9_5_3_0_6u_config12_s RTLNAME myproject_conv_2d_cl_array_ap_ufixed_5u_array_ap_fixed_19_9_5_3_0_6u_config12_s}
  {SRCNAME relu<array<ap_fixed,6u>,array<ap_ufixed<6,0,4,0,0>,6u>,relu_config14> MODELNAME relu_array_ap_fixed_6u_array_ap_ufixed_6_0_4_0_0_6u_relu_config14_s RTLNAME myproject_relu_array_ap_fixed_6u_array_ap_ufixed_6_0_4_0_0_6u_relu_config14_s}
  {SRCNAME dense<array,array<ap_fixed<19,9,5,3,0>,1u>,config16>_Pipeline_DataPrepare MODELNAME dense_array_array_ap_fixed_19_9_5_3_0_1u_config16_Pipeline_DataPrepare RTLNAME myproject_dense_array_array_ap_fixed_19_9_5_3_0_1u_config16_Pipeline_DataPrepare
    SUBMODULES {
      {MODELNAME myproject_flow_control_loop_pipe_sequential_init RTLNAME myproject_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dense_resource_rf_leq_nin<ap_ufixed,ap_fixed<19,9,5,3,0>,config16> MODELNAME dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config16_s RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config16_s
    SUBMODULES {
      {MODELNAME myproject_sparsemux_109_6_6_1_1 RTLNAME myproject_sparsemux_109_6_6_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config16_s_w16_ROM_NPShg RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config16_s_w16_ROM_NPShg BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array<ap_ufixed,6u>,array<ap_fixed<19,9,5,3,0>,1u>,config16> MODELNAME dense_array_ap_ufixed_6u_array_ap_fixed_19_9_5_3_0_1u_config16_s RTLNAME myproject_dense_array_ap_ufixed_6u_array_ap_fixed_19_9_5_3_0_1u_config16_s}
  {SRCNAME myproject MODELNAME myproject RTLNAME myproject IS_TOP 1
    SUBMODULES {
      {MODELNAME myproject_fifo_w8_d4096_A RTLNAME myproject_fifo_w8_d4096_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer2_out_U}
      {MODELNAME myproject_fifo_w40_d900_A RTLNAME myproject_fifo_w40_d900_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer3_out_U}
      {MODELNAME myproject_fifo_w12_d900_A RTLNAME myproject_fifo_w12_d900_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer5_out_U}
      {MODELNAME myproject_fifo_w76_d169_A RTLNAME myproject_fifo_w76_d169_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer6_out_U}
      {MODELNAME myproject_fifo_w24_d169_A RTLNAME myproject_fifo_w24_d169_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer8_out_U}
      {MODELNAME myproject_fifo_w100_d25_A RTLNAME myproject_fifo_w100_d25_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer9_out_U}
      {MODELNAME myproject_fifo_w30_d25_S RTLNAME myproject_fifo_w30_d25_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer11_out_U}
      {MODELNAME myproject_fifo_w114_d9_A RTLNAME myproject_fifo_w114_d9_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer12_out_U}
      {MODELNAME myproject_fifo_w36_d9_S RTLNAME myproject_fifo_w36_d9_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer14_out_U}
      {MODELNAME myproject_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_20_9_5_3_0_2u_config3_U0 RTLNAME myproject_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_20_9_5_3_0_2u_config3_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_20_9_5_3_0_2u_config3_U0_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config5_U0 RTLNAME myproject_start_for_relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config5_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config5_U0_U}
      {MODELNAME myproject_start_for_conv_2d_cl_array_ap_ufixed_2u_array_ap_fixed_19_9_5_3_0_4u_config6_U0 RTLNAME myproject_start_for_conv_2d_cl_array_ap_ufixed_2u_array_ap_fixed_19_9_5_3_0_4u_config6_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_ufixed_2u_array_ap_fixed_19_9_5_3_0_4u_config6_U0_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config8_U0 RTLNAME myproject_start_for_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config8_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config8_U0_U}
      {MODELNAME myproject_start_for_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_20_10_5_3_0_5u_config9Thq RTLNAME myproject_start_for_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_20_10_5_3_0_5u_config9Thq BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_20_10_5_3_0_5u_config9Thq_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config11_U0 RTLNAME myproject_start_for_relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config11_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config11_U0_U}
      {MODELNAME myproject_start_for_conv_2d_cl_array_ap_ufixed_5u_array_ap_fixed_19_9_5_3_0_6u_config12UhA RTLNAME myproject_start_for_conv_2d_cl_array_ap_ufixed_5u_array_ap_fixed_19_9_5_3_0_6u_config12UhA BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_ufixed_5u_array_ap_fixed_19_9_5_3_0_6u_config12UhA_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_6u_array_ap_ufixed_6_0_4_0_0_6u_relu_config14_U0 RTLNAME myproject_start_for_relu_array_ap_fixed_6u_array_ap_ufixed_6_0_4_0_0_6u_relu_config14_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_6u_array_ap_ufixed_6_0_4_0_0_6u_relu_config14_U0_U}
      {MODELNAME myproject_start_for_dense_array_ap_ufixed_6u_array_ap_fixed_19_9_5_3_0_1u_config16_U0 RTLNAME myproject_start_for_dense_array_ap_ufixed_6u_array_ap_fixed_19_9_5_3_0_1u_config16_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_ufixed_6u_array_ap_fixed_19_9_5_3_0_1u_config16_U0_U}
    }
  }
}
