set moduleName relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config11_s
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
set C_modelName {relu<array<ap_fixed,5u>,array<ap_ufixed<6,0,4,0,0>,5u>,relu_config11>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer9_out int 100 regular {fifo 0 volatile }  }
	{ layer11_out int 30 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer9_out", "interface" : "fifo", "bitwidth" : 100, "direction" : "READONLY"} , 
 	{ "Name" : "layer11_out", "interface" : "fifo", "bitwidth" : 30, "direction" : "WRITEONLY"} ]}
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
	{ layer9_out_dout sc_in sc_lv 100 signal 0 } 
	{ layer9_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer9_out_read sc_out sc_logic 1 signal 0 } 
	{ layer9_out_num_data_valid sc_in sc_lv 6 signal 0 } 
	{ layer9_out_fifo_cap sc_in sc_lv 6 signal 0 } 
	{ layer11_out_din sc_out sc_lv 30 signal 1 } 
	{ layer11_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer11_out_write sc_out sc_logic 1 signal 1 } 
	{ layer11_out_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ layer11_out_fifo_cap sc_in sc_lv 6 signal 1 } 
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
 	{ "name": "layer9_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":100, "type": "signal", "bundle":{"name": "layer9_out", "role": "dout" }} , 
 	{ "name": "layer9_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer9_out", "role": "empty_n" }} , 
 	{ "name": "layer9_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer9_out", "role": "read" }} , 
 	{ "name": "layer9_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "layer9_out", "role": "num_data_valid" }} , 
 	{ "name": "layer9_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "layer9_out", "role": "fifo_cap" }} , 
 	{ "name": "layer11_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "layer11_out", "role": "din" }} , 
 	{ "name": "layer11_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer11_out", "role": "full_n" }} , 
 	{ "name": "layer11_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer11_out", "role": "write" }} , 
 	{ "name": "layer11_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "layer11_out", "role": "num_data_valid" }} , 
 	{ "name": "layer11_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "layer11_out", "role": "fifo_cap" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config11_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "26",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer9_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "25", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer9_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer11_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "25", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer11_out_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "ReLUActLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config11_s {
		layer9_out {Type I LastRead 0 FirstWrite -1}
		layer11_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26", "Max" : "26"}
	, {"Name" : "Interval", "Min" : "26", "Max" : "26"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	layer9_out { ap_fifo {  { layer9_out_dout fifo_data_in 0 100 }  { layer9_out_empty_n fifo_status 0 1 }  { layer9_out_read fifo_port_we 1 1 }  { layer9_out_num_data_valid fifo_status_num_data_valid 0 6 }  { layer9_out_fifo_cap fifo_update 0 6 } } }
	layer11_out { ap_fifo {  { layer11_out_din fifo_data_in 1 30 }  { layer11_out_full_n fifo_status 0 1 }  { layer11_out_write fifo_port_we 1 1 }  { layer11_out_num_data_valid fifo_status_num_data_valid 0 6 }  { layer11_out_fifo_cap fifo_update 0 6 } } }
}
