set moduleName compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_5u_config5_s
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
set C_modelName {compute_output_buffer_2d<array,array<ap_fixed<19,9,5,3,0>,5u>,config5>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ in_elem_0_0_0_0_0_val int 6 regular  }
	{ in_elem_0_1_0_0_0_val int 6 regular  }
	{ layer5_out int 95 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "in_elem_0_0_0_0_0_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "in_elem_0_1_0_0_0_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "layer5_out", "interface" : "fifo", "bitwidth" : 95, "direction" : "WRITEONLY"} ]}
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
	{ layer5_out_din sc_out sc_lv 95 signal 2 } 
	{ layer5_out_full_n sc_in sc_logic 1 signal 2 } 
	{ layer5_out_write sc_out sc_logic 1 signal 2 } 
	{ layer5_out_num_data_valid sc_in sc_lv 9 signal 2 } 
	{ layer5_out_fifo_cap sc_in sc_lv 9 signal 2 } 
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
 	{ "name": "layer5_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":95, "type": "signal", "bundle":{"name": "layer5_out", "role": "din" }} , 
 	{ "name": "layer5_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer5_out", "role": "full_n" }} , 
 	{ "name": "layer5_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer5_out", "role": "write" }} , 
 	{ "name": "layer5_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "layer5_out", "role": "num_data_valid" }} , 
 	{ "name": "layer5_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "layer5_out", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "10"],
		"CDFG" : "compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_5u_config5_s",
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
			{"Name" : "layer5_out", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "layer5_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_72", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_72", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_72", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_74", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_74", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_74", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_71", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_71", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_71", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_73", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_73", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_73", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_62", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_62", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_64", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_64", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_64", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_61", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_61", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_63", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_63", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_52", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_52", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_52", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_54", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_54", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_54", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_51", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_51", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_51", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_53", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_53", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_53", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_42", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_42", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_44", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_44", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_41", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_41", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_43", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_43", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_70", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_70", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_70", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_69", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_69", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_69", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_60", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_60", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_59", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_59", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_50", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_50", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_50", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_49", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_49", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_49", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_40", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_40", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_39", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_39", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_68", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_68", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_68", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_67", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_67", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_67", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_58", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_58", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_57", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_57", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_48", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_48", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_48", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_47", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_47", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_38", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_38", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_37", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_37", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_66", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_66", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_66", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_65", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_65", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_65", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_56", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_56", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_55", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_55", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_55", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_46", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_46", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_45", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_45", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_36", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_36", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_35", "Inst_start_state" : "1", "Inst_end_state" : "1"},
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_35", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_17", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_17", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_15", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_15", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_13", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_13", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_11", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_11", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_16", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_16", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_14", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_14", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_12", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_12", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_10", "Type" : "Memory", "Direction" : "X",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Port" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_10", "Inst_start_state" : "1", "Inst_end_state" : "1"}]},
			{"Name" : "sX_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sY_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "w5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Port" : "w5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s",
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
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_72", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_74", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_73", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_64", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_63", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_54", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_53", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_44", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_43", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_17", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_15", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_13", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_11", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_16", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_14", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_12", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_10", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_17_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_15_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_13_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_11_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_16_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_14_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_12_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195.p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_10_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319", "Parent" : "0", "Child" : ["11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s",
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
			{"Name" : "w5", "Type" : "Memory", "Direction" : "I"},
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
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_73", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_71", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_70", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_35", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319.w5_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319.sparsemux_101_6_6_1_1_U119", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319.mac_muladd_6s_6ns_18s_18_1_1_U120", "Parent" : "10"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319.mac_muladd_6s_6ns_18s_18_1_1_U121", "Parent" : "10"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319.mac_muladd_6s_6ns_18s_18_1_1_U122", "Parent" : "10"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319.mac_muladd_6s_6ns_18s_18_1_1_U123", "Parent" : "10"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319.mac_muladd_6ns_4s_16s_16_1_1_U124", "Parent" : "10"}]}


set ArgLastReadFirstWriteLatency {
	compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_5u_config5_s {
		in_elem_0_0_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		in_elem_0_1_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		layer5_out {Type O LastRead -1 FirstWrite 2}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_72 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_74 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_71 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_73 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_62 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_64 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_61 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_63 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_52 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_54 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_51 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_53 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_42 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_44 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_41 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_43 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_70 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_69 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_60 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_59 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_50 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_49 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_40 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_39 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_68 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_67 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_58 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_57 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_48 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_47 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_38 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_37 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21 {Type IO LastRead -1 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_66 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_65 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_56 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_55 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_46 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_45 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_36 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_17 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_15 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_13 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_11 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_16 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_14 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_12 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_10 {Type X LastRead -1 FirstWrite -1}
		sX_2 {Type IO LastRead -1 FirstWrite -1}
		sY_2 {Type IO LastRead -1 FirstWrite -1}
		pY_2 {Type IO LastRead -1 FirstWrite -1}
		pX_2 {Type IO LastRead -1 FirstWrite -1}
		w5 {Type I LastRead -1 FirstWrite -1}}
	shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s {
		in_elem_0_0_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		in_elem_0_1_0_0_0_val {Type I LastRead 0 FirstWrite -1}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_27 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_29 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_26 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_28 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_72 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_74 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_71 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_73 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_62 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_64 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_61 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_63 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_52 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_54 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_51 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_53 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_42 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_44 {Type O LastRead -1 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_41 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_43 {Type O LastRead -1 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_25 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_24 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_70 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_69 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_60 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_59 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_50 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_49 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_40 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_39 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_23 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_22 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_68 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_67 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_58 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_57 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_48 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_47 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_38 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_37 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_21 {Type IO LastRead 0 FirstWrite 0}
		void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_20 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_66 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_65 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_56 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_55 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_46 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_45 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_36 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_35 {Type IO LastRead 0 FirstWrite 0}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_17 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_15 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_13 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_11 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_16 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_14 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_12 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet26conv_2d_buffer_resource_clINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4E_10 {Type X LastRead -1 FirstWrite -1}}
	dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s {
		w5 {Type I LastRead -1 FirstWrite -1}
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
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_74 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_73 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_72 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_71 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_70 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_69 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_68 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_67 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_66 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_65 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_64 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_63 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_62 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_61 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_60 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_59 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_58 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_57 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_56 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_55 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_54 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_53 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_52 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_51 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_50 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_49 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_48 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_47 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_46 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_45 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_44 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_43 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_42 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_41 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_40 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_39 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_38 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_37 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_36 {Type I LastRead 1 FirstWrite -1}
		p_ZZN4nnet24compute_output_buffer_2dINS_5arrayI9ap_ufixedILi6ELi0EL9ap_q_mode4EL9_35 {Type I LastRead 1 FirstWrite -1}}}

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
	layer5_out { ap_fifo {  { layer5_out_din fifo_data_in 1 95 }  { layer5_out_full_n fifo_status 0 1 }  { layer5_out_write fifo_port_we 1 1 }  { layer5_out_num_data_valid fifo_status_num_data_valid 0 9 }  { layer5_out_fifo_cap fifo_update 0 9 } } }
}
