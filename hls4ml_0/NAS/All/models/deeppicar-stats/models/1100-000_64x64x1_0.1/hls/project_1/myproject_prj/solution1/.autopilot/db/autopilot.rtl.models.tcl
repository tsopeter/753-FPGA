set SynModuleInfo {
  {SRCNAME {shift_line_buffer<array<ap_uint<8>, 1u>, config2>} MODELNAME shift_line_buffer_array_ap_uint_8_1u_config2_s RTLNAME myproject_shift_line_buffer_array_ap_uint_8_1u_config2_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_uint_8_1u_config2_s_void_conv_2d_buffer_resource_cbkb RTLNAME myproject_shift_line_buffer_array_ap_uint_8_1u_config2_s_void_conv_2d_buffer_resource_cbkb BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_uint,ap_fixed<20,16,5,3,0>,config2_mult> MODELNAME dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s
    SUBMODULES {
      {MODELNAME myproject_sparsemux_51_5_8_1_1 RTLNAME myproject_sparsemux_51_5_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME myproject_mac_muladd_8ns_5s_20s_21_1_1 RTLNAME myproject_mac_muladd_8ns_5s_20s_21_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_outfYi RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_outfYi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_w2_g8j RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_w2_g8j BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<20,16,5,3,0>,2u>,config2> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_20_16_5_3_0_2u_config2_s RTLNAME myproject_compute_output_buffer_2d_array_array_ap_fixed_20_16_5_3_0_2u_config2_s}
  {SRCNAME {conv_2d_cl<array<ap_uint<8>, 1u>, array<ap_fixed<20, 16, 5, 3, 0>, 2u>, config2>} MODELNAME conv_2d_cl_array_ap_uint_8_1u_array_ap_fixed_20_16_5_3_0_2u_config2_s RTLNAME myproject_conv_2d_cl_array_ap_uint_8_1u_array_ap_fixed_20_16_5_3_0_2u_config2_s
    SUBMODULES {
      {MODELNAME myproject_regslice_both RTLNAME myproject_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
  {SRCNAME relu<array<ap_fixed,2u>,array<ap_ufixed<6,0,4,0,0>,2u>,relu_config4> MODELNAME relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config4_s RTLNAME myproject_relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config4_s
    SUBMODULES {
      {MODELNAME myproject_flow_control_loop_pipe RTLNAME myproject_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME {shift_line_buffer<array<ap_ufixed<6, 0, 4, 0, 0>, 2u>, config5>} MODELNAME shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s RTLNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_p_ZZN4nnet26conv_2d_hbi RTLNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_p_ZZN4nnet26conv_2d_hbi BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_leq_nin<ap_ufixed,ap_fixed<19,9,5,3,0>,config5_mult> MODELNAME dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s
    SUBMODULES {
      {MODELNAME myproject_sparsemux_101_6_6_1_1 RTLNAME myproject_sparsemux_101_6_6_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME myproject_mac_muladd_6s_6ns_18s_18_1_1 RTLNAME myproject_mac_muladd_6s_6ns_18s_18_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME myproject_mac_muladd_6ns_4s_16s_16_1_1 RTLNAME myproject_mac_muladd_6ns_4s_16s_16_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_w5_ROMpcA RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_w5_ROMpcA BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<19,9,5,3,0>,4u>,config5> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_4u_config5_s RTLNAME myproject_compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_4u_config5_s}
  {SRCNAME conv_2d_cl<array<ap_ufixed,2u>,array<ap_fixed<19,9,5,3,0>,4u>,config5> MODELNAME conv_2d_cl_array_ap_ufixed_2u_array_ap_fixed_19_9_5_3_0_4u_config5_s RTLNAME myproject_conv_2d_cl_array_ap_ufixed_2u_array_ap_fixed_19_9_5_3_0_4u_config5_s}
  {SRCNAME relu<array<ap_fixed,4u>,array<ap_ufixed<6,0,4,0,0>,4u>,relu_config7> MODELNAME relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config7_s RTLNAME myproject_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config7_s}
  {SRCNAME {shift_line_buffer<array<ap_ufixed<6, 0, 4, 0, 0>, 4u>, config8>} MODELNAME shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config8_s RTLNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config8_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config8_s_p_ZZN4nnet26conv_2d_qcK RTLNAME myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config8_s_p_ZZN4nnet26conv_2d_qcK BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_leq_nin<ap_ufixed,ap_fixed<20,10,5,3,0>,config8_mult> MODELNAME dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_20_10_5_3_0_config8_mult_s RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_20_10_5_3_0_config8_mult_s
    SUBMODULES {
      {MODELNAME myproject_mul_6s_6ns_12_1_1 RTLNAME myproject_mul_6s_6ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mac_muladd_6s_6ns_12s_13_1_1 RTLNAME myproject_mac_muladd_6s_6ns_12s_13_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME myproject_mac_muladd_6ns_4s_12s_13_1_1 RTLNAME myproject_mac_muladd_6ns_4s_12s_13_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_20_10_5_3_0_config8_mult_s_w8_ROGfk RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_20_10_5_3_0_config8_mult_s_w8_ROGfk BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<20,10,5,3,0>,5u>,config8> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_20_10_5_3_0_5u_config8_s RTLNAME myproject_compute_output_buffer_2d_array_array_ap_fixed_20_10_5_3_0_5u_config8_s}
  {SRCNAME conv_2d_cl<array<ap_ufixed,4u>,array<ap_fixed<20,10,5,3,0>,5u>,config8> MODELNAME conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_20_10_5_3_0_5u_config8_s RTLNAME myproject_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_20_10_5_3_0_5u_config8_s}
  {SRCNAME relu<array<ap_fixed,5u>,array<ap_ufixed<6,0,4,0,0>,5u>,relu_config10> MODELNAME relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config10_s RTLNAME myproject_relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config10_s}
  {SRCNAME dense<array,array<ap_fixed<16,6,5,3,0>,1u>,config12>_Pipeline_DataPrepare MODELNAME dense_array_array_ap_fixed_16_6_5_3_0_1u_config12_Pipeline_DataPrepare RTLNAME myproject_dense_array_array_ap_fixed_16_6_5_3_0_1u_config12_Pipeline_DataPrepare
    SUBMODULES {
      {MODELNAME myproject_flow_control_loop_pipe_sequential_init RTLNAME myproject_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dense_resource_rf_leq_nin<ap_ufixed,ap_fixed<16,6,5,3,0>,config12> MODELNAME dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_16_6_5_3_0_config12_s RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_16_6_5_3_0_config12_s
    SUBMODULES {
      {MODELNAME myproject_sparsemux_51_5_6_1_1 RTLNAME myproject_sparsemux_51_5_6_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME myproject_mac_muladd_6s_6ns_13s_14_1_1 RTLNAME myproject_mac_muladd_6s_6ns_13s_14_1_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 0}
      {MODELNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_16_6_5_3_0_config12_s_w12_ROM_NPHfu RTLNAME myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_16_6_5_3_0_config12_s_w12_ROM_NPHfu BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array<ap_ufixed,5u>,array<ap_fixed<16,6,5,3,0>,1u>,config12> MODELNAME dense_array_ap_ufixed_5u_array_ap_fixed_16_6_5_3_0_1u_config12_s RTLNAME myproject_dense_array_ap_ufixed_5u_array_ap_fixed_16_6_5_3_0_1u_config12_s}
  {SRCNAME linear<array<ap_fixed,1u>,array<ap_fixed<4,0,5,3,0>,1u>,linear_config13> MODELNAME linear_array_ap_fixed_1u_array_ap_fixed_4_0_5_3_0_1u_linear_config13_s RTLNAME myproject_linear_array_ap_fixed_1u_array_ap_fixed_4_0_5_3_0_1u_linear_config13_s}
  {SRCNAME myproject MODELNAME myproject RTLNAME myproject IS_TOP 1
    SUBMODULES {
      {MODELNAME myproject_fifo_w40_d900_A RTLNAME myproject_fifo_w40_d900_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer2_out_U}
      {MODELNAME myproject_fifo_w12_d900_A RTLNAME myproject_fifo_w12_d900_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer4_out_U}
      {MODELNAME myproject_fifo_w76_d169_A RTLNAME myproject_fifo_w76_d169_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer5_out_U}
      {MODELNAME myproject_fifo_w24_d169_A RTLNAME myproject_fifo_w24_d169_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer7_out_U}
      {MODELNAME myproject_fifo_w100_d25_A RTLNAME myproject_fifo_w100_d25_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer8_out_U}
      {MODELNAME myproject_fifo_w30_d25_S RTLNAME myproject_fifo_w30_d25_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_U}
      {MODELNAME myproject_fifo_w16_d1_S RTLNAME myproject_fifo_w16_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer12_out_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config4_U0 RTLNAME myproject_start_for_relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config4_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config4_U0_U}
      {MODELNAME myproject_start_for_conv_2d_cl_array_ap_ufixed_2u_array_ap_fixed_19_9_5_3_0_4u_config5_U0 RTLNAME myproject_start_for_conv_2d_cl_array_ap_ufixed_2u_array_ap_fixed_19_9_5_3_0_4u_config5_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_ufixed_2u_array_ap_fixed_19_9_5_3_0_4u_config5_U0_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config7_U0 RTLNAME myproject_start_for_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config7_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config7_U0_U}
      {MODELNAME myproject_start_for_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_20_10_5_3_0_5u_config8IfE RTLNAME myproject_start_for_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_20_10_5_3_0_5u_config8IfE BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_20_10_5_3_0_5u_config8IfE_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config10_U0 RTLNAME myproject_start_for_relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config10_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config10_U0_U}
      {MODELNAME myproject_start_for_dense_array_ap_ufixed_5u_array_ap_fixed_16_6_5_3_0_1u_config12_U0 RTLNAME myproject_start_for_dense_array_ap_ufixed_5u_array_ap_fixed_16_6_5_3_0_1u_config12_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_ufixed_5u_array_ap_fixed_16_6_5_3_0_1u_config12_U0_U}
      {MODELNAME myproject_start_for_linear_array_ap_fixed_1u_array_ap_fixed_4_0_5_3_0_1u_linear_config1JfO RTLNAME myproject_start_for_linear_array_ap_fixed_1u_array_ap_fixed_4_0_5_3_0_1u_linear_config1JfO BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_linear_array_ap_fixed_1u_array_ap_fixed_4_0_5_3_0_1u_linear_config1JfO_U}
    }
  }
}
