set moduleName relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config5_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
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
set C_modelName {relu<array<ap_fixed,2u>,array<ap_ufixed<6,0,4,0,0>,2u>,relu_config5>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer3_out int 40 regular {fifo 0 volatile }  }
	{ layer5_out int 12 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer3_out", "interface" : "fifo", "bitwidth" : 40, "direction" : "READONLY"} , 
 	{ "Name" : "layer5_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
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
	{ layer3_out_dout sc_in sc_lv 40 signal 0 } 
	{ layer3_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer3_out_read sc_out sc_logic 1 signal 0 } 
	{ layer3_out_num_data_valid sc_in sc_lv 11 signal 0 } 
	{ layer3_out_fifo_cap sc_in sc_lv 11 signal 0 } 
	{ layer5_out_din sc_out sc_lv 12 signal 1 } 
	{ layer5_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer5_out_write sc_out sc_logic 1 signal 1 } 
	{ layer5_out_num_data_valid sc_in sc_lv 11 signal 1 } 
	{ layer5_out_fifo_cap sc_in sc_lv 11 signal 1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "layer3_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":40, "type": "signal", "bundle":{"name": "layer3_out", "role": "dout" }} , 
 	{ "name": "layer3_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer3_out", "role": "empty_n" }} , 
 	{ "name": "layer3_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer3_out", "role": "read" }} , 
 	{ "name": "layer3_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer3_out", "role": "num_data_valid" }} , 
 	{ "name": "layer3_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer3_out", "role": "fifo_cap" }} , 
 	{ "name": "layer5_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "layer5_out", "role": "din" }} , 
 	{ "name": "layer5_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer5_out", "role": "full_n" }} , 
 	{ "name": "layer5_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer5_out", "role": "write" }} , 
 	{ "name": "layer5_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer5_out", "role": "num_data_valid" }} , 
 	{ "name": "layer5_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer5_out", "role": "fifo_cap" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "901", "EstimateLatencyMax" : "901",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer3_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "900", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer3_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer5_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "900", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer5_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "ReLUActLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config5_s {
		layer3_out {Type I LastRead 0 FirstWrite -1}
		layer5_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "901", "Max" : "901"}
	, {"Name" : "Interval", "Min" : "901", "Max" : "901"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	layer3_out { ap_fifo {  { layer3_out_dout fifo_data_in 0 40 }  { layer3_out_empty_n fifo_status 0 1 }  { layer3_out_read fifo_port_we 1 1 }  { layer3_out_num_data_valid fifo_status_num_data_valid 0 11 }  { layer3_out_fifo_cap fifo_update 0 11 } } }
	layer5_out { ap_fifo {  { layer5_out_din fifo_data_in 1 12 }  { layer5_out_full_n fifo_status 0 1 }  { layer5_out_write fifo_port_we 1 1 }  { layer5_out_num_data_valid fifo_status_num_data_valid 0 11 }  { layer5_out_fifo_cap fifo_update 0 11 } } }
}
