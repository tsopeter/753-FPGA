set moduleName compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_4u_config6_s
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
set C_modelName {compute_output_buffer_2d<array,array<ap_fixed<19,9,5,3,0>,4u>,config6>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_elem_0_0_0_0_0_val int 6 regular  }
	{ in_elem_0_1_0_0_0_val int 6 regular  }
	{ layer6_out int 76 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_elem_0_0_0_0_0_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "in_elem_0_1_0_0_0_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "layer6_out", "interface" : "fifo", "bitwidth" : 76, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_elem_0_0_0_0_0_val sc_in sc_lv 6 signal 0 } 
	{ in_elem_0_1_0_0_0_val sc_in sc_lv 6 signal 1 } 
	{ layer6_out_din sc_out sc_lv 76 signal 2 } 
	{ layer6_out_full_n sc_in sc_logic 1 signal 2 } 
	{ layer6_out_write sc_out sc_logic 1 signal 2 } 
	{ layer6_out_num_data_valid sc_in sc_lv 9 signal 2 } 
	{ layer6_out_fifo_cap sc_in sc_lv 9 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_elem_0_0_0_0_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_elem_0_0_0_0_0_val", "role": "default" }} , 
 	{ "name": "in_elem_0_1_0_0_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "in_elem_0_1_0_0_0_val", "role": "default" }} , 
 	{ "name": "layer6_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":76, "type": "signal", "bundle":{"name": "layer6_out", "role": "din" }} , 
 	{ "name": "layer6_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer6_out", "role": "full_n" }} , 
 	{ "name": "layer6_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer6_out", "role": "write" }} , 
 	{ "name": "layer6_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "layer6_out", "role": "num_data_valid" }} , 
 	{ "name": "layer6_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "layer6_out", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "10"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_4u_config6_s",
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
			{"Name" : "in_elem_0_1_0_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer6_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_166", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_166", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_166", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_164", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_164", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_164", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_167", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_167", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_167", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_165", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_165", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_165", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_176", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_176", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_176", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_174", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_174", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_174", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_177", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_177", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_177", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_175", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_175", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_175", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_186", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_186", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_186", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_184", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_184", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_184", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_187", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_187", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_187", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_185", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_185", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_185", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_196", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_196", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_196", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_194", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_194", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_194", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_197", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_197", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_197", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_195", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_195", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_195", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_168", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_168", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_168", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_169", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_169", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_169", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_178", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_178", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_178", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_179", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_179", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_179", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_188", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_188", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_188", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_189", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_189", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_189", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_198", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_198", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_198", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_199", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_199", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_199", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_170", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_170", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_170", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_171", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_171", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_171", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_180", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_180", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_180", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_181", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_181", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_181", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_190", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_190", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_190", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_191", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_191", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_191", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_200", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_200", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_200", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_201", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_201", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_201", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_172", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_172", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_172", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_173", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_173", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_173", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_182", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_182", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_182", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_183", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_183", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_183", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_192", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_192", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_192", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_193", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_193", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_193", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_202", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_202", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_202", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_203", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_203", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_203", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_33", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_33", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_31", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_31", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_29", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_29", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_27", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_27", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_32", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_32", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_30", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_30", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_28", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_28", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_26", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_26", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "sX_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Port" : "w6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s",
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
			{"Name" : "in_elem_0_1_0_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_166", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_164", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_167", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_165", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_176", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_174", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_177", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_175", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_186", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_184", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_187", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_185", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_196", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_194", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_197", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_195", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_168", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_169", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_178", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_179", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_188", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_189", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_198", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_199", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_170", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_171", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_180", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_181", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_190", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_191", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_200", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_201", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_172", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_173", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_182", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_183", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_192", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_193", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_202", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_203", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_33", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_31", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_29", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_27", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_32", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_30", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_28", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_26", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_33_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_31_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_29_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_27_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_32_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_30_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_28_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_26_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319", "Parent" : "0", "Child" : ["11", "12", "13", "14", "15", "16"],
		"CDFG" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s",
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
			{"Name" : "w6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_164", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_165", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_166", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_167", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_168", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_169", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_170", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_171", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_172", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_173", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_174", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_175", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_176", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_177", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_178", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_179", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_180", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_181", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_182", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_183", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_184", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_185", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_186", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_187", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_188", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_189", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_190", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_191", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_192", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_193", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_194", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_195", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_196", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_197", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_198", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_199", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_200", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_201", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_202", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_203", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319.w6_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319.sparsemux_101_6_6_1_1_U121", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319.mac_muladd_6s_6ns_18s_18_1_1_U122", "Parent" : "10"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319.mac_muladd_6s_6ns_18s_18_1_1_U123", "Parent" : "10"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319.mac_muladd_6s_6ns_18s_18_1_1_U124", "Parent" : "10"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319.mac_muladd_6ns_4s_16s_16_1_1_U125", "Parent" : "10"}]}


set ArgLastReadFirstWriteLatency {
	compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_4u_config6_s {
		in_elem_0_0_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		in_elem_0_1_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		layer6_out {Type O LastRead -1 FirstWrite 2}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_166 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_164 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_167 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_165 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_176 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_174 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_177 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_175 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_186 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_184 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_187 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_185 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_196 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_194 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_197 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_195 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_168 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_169 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_178 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_179 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_188 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_189 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_198 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_199 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_170 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_171 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_180 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_181 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_190 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_191 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_200 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_201 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_172 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_173 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_182 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_183 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_192 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_193 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_202 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_203 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_33 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_31 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_29 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_27 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_32 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_30 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_28 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_26 {Type X LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}
		w6 {Type I LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s {
		in_elem_0_0_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		in_elem_0_1_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_166 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_164 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_167 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_165 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_176 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_174 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_177 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_175 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_186 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_184 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_187 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_185 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_196 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_194 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_197 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_195 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_168 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_169 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_178 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_179 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_188 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_189 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_198 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_199 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_170 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_171 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_180 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_181 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_190 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_191 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_200 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_201 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_172 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_173 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_182 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_183 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_192 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_193 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_202 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_203 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_33 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_31 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_29 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_27 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_32 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_30 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_28 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_26 {Type X LastRead -1 FirstWrite -1}}
	dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s {
		w6 {Type I LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21 {Type I LastRead 1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_164 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_165 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_166 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_167 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_168 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_169 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_170 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_171 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_172 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_173 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_174 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_175 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_176 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_177 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_178 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_179 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_180 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_181 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_182 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_183 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_184 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_185 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_186 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_187 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_188 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_189 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_190 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_191 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_192 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_193 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_194 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_195 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_196 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_197 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_198 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_199 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_200 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_201 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_202 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_203 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "53"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "53"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_elem_0_0_0_0_0_val { ap_none {  { in_elem_0_0_0_0_0_val in_data 0 6 } } }
	in_elem_0_1_0_0_0_val { ap_none {  { in_elem_0_1_0_0_0_val in_data 0 6 } } }
	layer6_out { ap_fifo {  { layer6_out_din fifo_data_in 1 76 }  { layer6_out_full_n fifo_status 0 1 }  { layer6_out_write fifo_port_we 1 1 }  { layer6_out_num_data_valid fifo_status_num_data_valid 0 9 }  { layer6_out_fifo_cap fifo_update 0 9 } } }
}
