set moduleName conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_20_9_5_3_0_2u_config3_s
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
set cdfgNum 26
set C_modelName {conv_2d_cl<array<ap_fixed,1u>,array<ap_fixed<20,9,5,3,0>,2u>,config3>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer2_out int 8 regular {fifo 0 volatile }  }
	{ layer3_out int 40 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer2_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "layer3_out", "interface" : "fifo", "bitwidth" : 40, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ layer2_out_dout sc_in sc_lv 8 signal 0 } 
	{ layer2_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer2_out_read sc_out sc_logic 1 signal 0 } 
	{ layer2_out_num_data_valid sc_in sc_lv 13 signal 0 } 
	{ layer2_out_fifo_cap sc_in sc_lv 13 signal 0 } 
	{ layer3_out_din sc_out sc_lv 40 signal 1 } 
	{ layer3_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer3_out_write sc_out sc_logic 1 signal 1 } 
	{ layer3_out_num_data_valid sc_in sc_lv 11 signal 1 } 
	{ layer3_out_fifo_cap sc_in sc_lv 11 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "layer2_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "layer2_out", "role": "dout" }} , 
 	{ "name": "layer2_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer2_out", "role": "empty_n" }} , 
 	{ "name": "layer2_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer2_out", "role": "read" }} , 
 	{ "name": "layer2_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "layer2_out", "role": "num_data_valid" }} , 
 	{ "name": "layer2_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "layer2_out", "role": "fifo_cap" }} , 
 	{ "name": "layer3_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "layer3_out", "role": "din" }} , 
 	{ "name": "layer3_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer3_out", "role": "full_n" }} , 
 	{ "name": "layer3_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer3_out", "role": "write" }} , 
 	{ "name": "layer3_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer3_out", "role": "num_data_valid" }} , 
 	{ "name": "layer3_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer3_out", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_20_9_5_3_0_2u_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16385", "EstimateLatencyMax" : "225281",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer2_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4096", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer3_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "900", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "layer3_out", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "sX_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "sY_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "pY_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "pX_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "outidx", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "w3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Port" : "w3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "ReadInputHeight_ReadInputWidth", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114", "Parent" : "0", "Child" : ["2", "7"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s",
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
			{"Name" : "layer3_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_13", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_14", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_8", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_9", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_3", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_4", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_12", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_7", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_2", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_11", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_6", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_1", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_10", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_5", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_3", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_3", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_2", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_2", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Port" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "sX_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "outidx", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "w3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Port" : "w3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114.call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131", "Parent" : "1", "Child" : ["3", "4", "5", "6"],
		"CDFG" : "shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s",
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
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114.call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131.void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_3_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114.call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131.void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_2_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114.call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131.void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114.call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131.void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195", "Parent" : "1", "Child" : ["8", "9", "10", "11"],
		"CDFG" : "dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s",
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
			{"Name" : "w3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195.outidx_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195.w3_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195.sparsemux_51_5_8_1_1_U31", "Parent" : "7"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114.grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195.mac_muladd_8s_5s_20s_21_1_1_U32", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_20_9_5_3_0_2u_config3_s {
		layer2_out {Type I LastRead 1 FirstWrite -1}
		layer3_out {Type O LastRead -1 FirstWrite 2}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_2 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a {Type IO LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w3 {Type I LastRead -1 FirstWrite -1}}
	compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s {
		in_elem_0_0_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		layer3_out {Type O LastRead -1 FirstWrite 2}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_2 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_1 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a {Type IO LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}
		sX_3 {Type IO LastRead -1 FirstWrite -1}
		sY_3 {Type IO LastRead -1 FirstWrite -1}
		pY_3 {Type IO LastRead -1 FirstWrite -1}
		pX_3 {Type IO LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w3 {Type I LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s {
		in_elem_0_0_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_13 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_14 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_8 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_9 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_3 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_4 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_12 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_7 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_2 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_11 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_6 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_1 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_10 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_5 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a {Type IO LastRead 0 FirstWrite 0}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_conv_2d_buffer_resource_cl_stream_stream_weight_t_bias_t_line_buffer {Type X LastRead -1 FirstWrite -1}}
	dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s {
		outidx {Type I LastRead -1 FirstWrite -1}
		w3 {Type I LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_39 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_14 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_13 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_12 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_11 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_10 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_9 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_8 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_7 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_6 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_5 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_4 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_3 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_2 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a_1 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI8ap_fixedILi8ELi1EL9ap_q_mode4EL9a {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16385", "Max" : "225281"}
	, {"Name" : "Interval", "Min" : "16385", "Max" : "225281"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	layer2_out { ap_fifo {  { layer2_out_dout fifo_data_in 0 8 }  { layer2_out_empty_n fifo_status 0 1 }  { layer2_out_read fifo_port_we 1 1 }  { layer2_out_num_data_valid fifo_status_num_data_valid 0 13 }  { layer2_out_fifo_cap fifo_update 0 13 } } }
	layer3_out { ap_fifo {  { layer3_out_din fifo_data_in 1 40 }  { layer3_out_full_n fifo_status 0 1 }  { layer3_out_write fifo_port_we 1 1 }  { layer3_out_num_data_valid fifo_status_num_data_valid 0 11 }  { layer3_out_fifo_cap fifo_update 0 11 } } }
}
