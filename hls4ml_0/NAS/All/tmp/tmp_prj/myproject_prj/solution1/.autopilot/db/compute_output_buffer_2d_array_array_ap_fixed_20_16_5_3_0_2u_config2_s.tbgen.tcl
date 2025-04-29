set moduleName compute_output_buffer_2d_array_array_ap_fixed_20_16_5_3_0_2u_config2_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 21
set C_modelName {compute_output_buffer_2d<array,array<ap_fixed<20,16,5,3,0>,2u>,config2>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_elem_0_0_0_0_0_val int 8 regular  }
	{ layer2_out int 40 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_elem_0_0_0_0_0_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "layer2_out", "interface" : "fifo", "bitwidth" : 40, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_elem_0_0_0_0_0_val sc_in sc_lv 8 signal 0 } 
	{ layer2_out_din sc_out sc_lv 40 signal 1 } 
	{ layer2_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer2_out_write sc_out sc_logic 1 signal 1 } 
	{ layer2_out_num_data_valid sc_in sc_lv 11 signal 1 } 
	{ layer2_out_fifo_cap sc_in sc_lv 11 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_elem_0_0_0_0_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_elem_0_0_0_0_0_val", "role": "default" }} , 
 	{ "name": "layer2_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "layer2_out", "role": "din" }} , 
 	{ "name": "layer2_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer2_out", "role": "full_n" }} , 
 	{ "name": "layer2_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer2_out", "role": "write" }} , 
 	{ "name": "layer2_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer2_out", "role": "num_data_valid" }} , 
 	{ "name": "layer2_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer2_out", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_20_16_5_3_0_2u_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "53",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_elem_0_0_0_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer2_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_13", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_14", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_8", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_9", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_3", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_4", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_12", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_7", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_2", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_11", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_6", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_1", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_10", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_5", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_3", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_2", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "outidx", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Port" : "w2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "shift_line_buffer_array_ap_uint_8_1u_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_elem_0_0_0_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131.void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_3_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131.void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_2_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131.void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131.void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
		"CDFG" : "dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195.outidx_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195.w2_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195.sparsemux_51_5_8_1_1_U28", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195.mac_muladd_8ns_5s_20s_21_1_1_U29", "Parent" : "6"}]}


set ArgLastReadFirstWriteLatency {
	compute_output_buffer_2d_array_array_ap_fixed_20_16_5_3_0_2u_config2_s {
		in_elem_0_0_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		layer2_out {Type O LastRead -1 FirstWrite 2}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_2 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed {Type IO LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		sY {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		pX {Type IO LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w2 {Type I LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_uint_8_1u_config2_s {
		in_elem_0_0_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_13 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_14 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_8 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_9 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_3 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_4 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_12 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_7 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_2 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_11 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_6 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_1 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_10 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_5 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed {Type IO LastRead 0 FirstWrite 0}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}}
	dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s {
		outidx {Type I LastRead -1 FirstWrite -1}
		w2 {Type I LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_9 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_8 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_7 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_6 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_5 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_4 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_3 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_2 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_1 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_14 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_13 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_12 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_11 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_10 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_9 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_8 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_7 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_6 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_5 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_4 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_3 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_2 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed_1 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI7ap_uintILi8EELj1EEENS1_I8ap_fixed {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "53"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "53"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_elem_0_0_0_0_0_val { ap_none {  { in_elem_0_0_0_0_0_val in_data 0 8 } } }
	layer2_out { ap_fifo {  { layer2_out_din fifo_data_in 1 40 }  { layer2_out_full_n fifo_status 0 1 }  { layer2_out_write fifo_port_we 1 1 }  { layer2_out_num_data_valid fifo_status_num_data_valid 0 11 }  { layer2_out_fifo_cap fifo_update 0 11 } } }
}
