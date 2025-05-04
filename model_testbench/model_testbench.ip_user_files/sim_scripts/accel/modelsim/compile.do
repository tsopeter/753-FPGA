vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_4u_config6_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_6u_config12_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_compute_output_buffer_2d_array_array_ap_fixed_20_10_5_3_0_5u_config9_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_20_9_5_3_0_2u_config3_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_conv_2d_cl_array_ap_ufixed_2u_array_ap_fixed_19_9_5_3_0_4u_config6_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_20_10_5_3_0_5u_config9_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_conv_2d_cl_array_ap_ufixed_5u_array_ap_fixed_19_9_5_3_0_6u_config12_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_dense_array_ap_ufixed_6u_array_ap_fixed_16_6_5_3_0_1u_config16_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_dense_array_array_ap_fixed_16_6_5_3_0_1u_config16_Pipeline_DataPrepare.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_outfYi.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_w3_g8j.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_16_6_5_3_0_config16_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_16_6_5_3_0_config16_s_w16_ROM_NPShg.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_w6_ROMpcA.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config12_mult_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config12_mult_s_w12_RRg6.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_20_10_5_3_0_config9_mult_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_20_10_5_3_0_config9_mult_s_w9_ROGfk.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_fifo_w8_d4096_A.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_fifo_w12_d900_A.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_fifo_w24_d169_A.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_fifo_w30_d25_S.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_fifo_w36_d9_S.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_fifo_w40_d900_A.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_fifo_w76_d169_A.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_fifo_w100_d25_A.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_fifo_w114_d9_A.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_flow_control_loop_pipe.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_flow_control_loop_pipe_sequential_init.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_hls_deadlock_detection_unit.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_hls_deadlock_idx0_monitor.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_linear_array_ap_uint_1u_array_ap_fixed_8_1_4_0_0_1u_linear_config2_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_mac_muladd_6ns_4s_12s_13_1_1.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_mac_muladd_6ns_4s_16s_16_1_1.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_mac_muladd_6s_6ns_12s_13_1_1.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_mac_muladd_6s_6ns_18s_18_1_1.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_mac_muladd_8s_5s_20s_21_1_1.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_mul_6s_6ns_12_1_1.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_regslice_both.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config5_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config8_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config11_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_relu_array_ap_fixed_6u_array_ap_ufixed_6_0_4_0_0_6u_relu_config14_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_void_conv_2d_buffer_rbkb.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_p_ZZN4nnet26conv_2d_hbi.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config9_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config9_s_p_ZZN4nnet26conv_2d_qcK.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_5u_config12_s.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_5u_config12_s_p_ZZN4nnet26conv_2dHfu.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_sparsemux_51_5_8_1_1.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_sparsemux_91_6_6_1_1.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_sparsemux_101_6_6_1_1.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_sparsemux_109_6_6_1_1.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_20_9_5_3_0_2u_config3_U0.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_start_for_conv_2d_cl_array_ap_ufixed_2u_array_ap_fixed_19_9_5_3_0_4u_config6_U0.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_start_for_conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_20_10_5_3_0_5u_config9Thq.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_start_for_conv_2d_cl_array_ap_ufixed_5u_array_ap_fixed_19_9_5_3_0_6u_config12UhA.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_start_for_dense_array_ap_ufixed_6u_array_ap_fixed_16_6_5_3_0_1u_config16_U0.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_start_for_relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config5_U0.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_start_for_relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config8_U0.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_start_for_relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config11_U0.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject_start_for_relu_array_ap_fixed_6u_array_ap_ufixed_6_0_4_0_0_6u_relu_config14_U0.v" \
"../../../../model_testbench.gen/sources_1/bd/accel/ipshared/e9b6/hdl/verilog/myproject.v" \
"../../../bd/accel/ip/accel_myproject_0_0/sim/accel_myproject_0_0.v" \
"../../../bd/accel/sim/accel.v" \


vlog -work xil_defaultlib \
"glbl.v"

