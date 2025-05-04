set moduleName dense_array_array_ap_fixed_16_6_5_3_0_1u_config16_Pipeline_DataPrepare
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
set C_modelName {dense<array,array<ap_fixed<16,6,5,3,0>,1u>,config16>_Pipeline_DataPrepare}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer14_out int 36 regular {fifo 0 volatile }  }
	{ data_53_out int 6 regular {pointer 1}  }
	{ data_52_out int 6 regular {pointer 1}  }
	{ data_51_out int 6 regular {pointer 1}  }
	{ data_50_out int 6 regular {pointer 1}  }
	{ data_49_out int 6 regular {pointer 1}  }
	{ data_48_out int 6 regular {pointer 1}  }
	{ data_47_out int 6 regular {pointer 1}  }
	{ data_46_out int 6 regular {pointer 1}  }
	{ data_45_out int 6 regular {pointer 1}  }
	{ data_44_out int 6 regular {pointer 1}  }
	{ data_43_out int 6 regular {pointer 1}  }
	{ data_42_out int 6 regular {pointer 1}  }
	{ data_41_out int 6 regular {pointer 1}  }
	{ data_40_out int 6 regular {pointer 1}  }
	{ data_39_out int 6 regular {pointer 1}  }
	{ data_38_out int 6 regular {pointer 1}  }
	{ data_37_out int 6 regular {pointer 1}  }
	{ data_36_out int 6 regular {pointer 1}  }
	{ data_35_out int 6 regular {pointer 1}  }
	{ data_34_out int 6 regular {pointer 1}  }
	{ data_33_out int 6 regular {pointer 1}  }
	{ data_32_out int 6 regular {pointer 1}  }
	{ data_31_out int 6 regular {pointer 1}  }
	{ data_30_out int 6 regular {pointer 1}  }
	{ data_29_out int 6 regular {pointer 1}  }
	{ data_28_out int 6 regular {pointer 1}  }
	{ data_27_out int 6 regular {pointer 1}  }
	{ data_26_out int 6 regular {pointer 1}  }
	{ data_25_out int 6 regular {pointer 1}  }
	{ data_24_out int 6 regular {pointer 1}  }
	{ data_23_out int 6 regular {pointer 1}  }
	{ data_22_out int 6 regular {pointer 1}  }
	{ data_21_out int 6 regular {pointer 1}  }
	{ data_20_out int 6 regular {pointer 1}  }
	{ data_19_out int 6 regular {pointer 1}  }
	{ data_18_out int 6 regular {pointer 1}  }
	{ data_17_out int 6 regular {pointer 1}  }
	{ data_16_out int 6 regular {pointer 1}  }
	{ data_15_out int 6 regular {pointer 1}  }
	{ data_14_out int 6 regular {pointer 1}  }
	{ data_13_out int 6 regular {pointer 1}  }
	{ data_12_out int 6 regular {pointer 1}  }
	{ data_11_out int 6 regular {pointer 1}  }
	{ data_10_out int 6 regular {pointer 1}  }
	{ data_9_out int 6 regular {pointer 1}  }
	{ data_8_out int 6 regular {pointer 1}  }
	{ data_7_out int 6 regular {pointer 1}  }
	{ data_6_out int 6 regular {pointer 1}  }
	{ data_5_out int 6 regular {pointer 1}  }
	{ data_4_out int 6 regular {pointer 1}  }
	{ data_3_out int 6 regular {pointer 1}  }
	{ data_2_out int 6 regular {pointer 1}  }
	{ data_1_out int 6 regular {pointer 1}  }
	{ data_out int 6 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer14_out", "interface" : "fifo", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "data_53_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_52_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_51_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_50_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_49_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_48_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_47_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_46_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_45_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_44_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_43_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_42_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_41_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_40_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_39_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_38_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_37_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_36_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_35_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_34_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_33_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_32_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_31_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_30_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_29_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_28_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_27_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_26_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_25_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_24_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_23_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_22_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_21_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_20_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_19_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_18_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_17_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_16_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_15_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_14_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_13_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_12_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_11_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_10_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_9_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_8_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_7_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_6_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_5_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_4_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_3_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_2_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_1_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 119
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer14_out_dout sc_in sc_lv 36 signal 0 } 
	{ layer14_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer14_out_read sc_out sc_logic 1 signal 0 } 
	{ layer14_out_num_data_valid sc_in sc_lv 5 signal 0 } 
	{ layer14_out_fifo_cap sc_in sc_lv 5 signal 0 } 
	{ data_53_out sc_out sc_lv 6 signal 1 } 
	{ data_53_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ data_52_out sc_out sc_lv 6 signal 2 } 
	{ data_52_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ data_51_out sc_out sc_lv 6 signal 3 } 
	{ data_51_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ data_50_out sc_out sc_lv 6 signal 4 } 
	{ data_50_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ data_49_out sc_out sc_lv 6 signal 5 } 
	{ data_49_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ data_48_out sc_out sc_lv 6 signal 6 } 
	{ data_48_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ data_47_out sc_out sc_lv 6 signal 7 } 
	{ data_47_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ data_46_out sc_out sc_lv 6 signal 8 } 
	{ data_46_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ data_45_out sc_out sc_lv 6 signal 9 } 
	{ data_45_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ data_44_out sc_out sc_lv 6 signal 10 } 
	{ data_44_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ data_43_out sc_out sc_lv 6 signal 11 } 
	{ data_43_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ data_42_out sc_out sc_lv 6 signal 12 } 
	{ data_42_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ data_41_out sc_out sc_lv 6 signal 13 } 
	{ data_41_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ data_40_out sc_out sc_lv 6 signal 14 } 
	{ data_40_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ data_39_out sc_out sc_lv 6 signal 15 } 
	{ data_39_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ data_38_out sc_out sc_lv 6 signal 16 } 
	{ data_38_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ data_37_out sc_out sc_lv 6 signal 17 } 
	{ data_37_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ data_36_out sc_out sc_lv 6 signal 18 } 
	{ data_36_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ data_35_out sc_out sc_lv 6 signal 19 } 
	{ data_35_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ data_34_out sc_out sc_lv 6 signal 20 } 
	{ data_34_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ data_33_out sc_out sc_lv 6 signal 21 } 
	{ data_33_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ data_32_out sc_out sc_lv 6 signal 22 } 
	{ data_32_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ data_31_out sc_out sc_lv 6 signal 23 } 
	{ data_31_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ data_30_out sc_out sc_lv 6 signal 24 } 
	{ data_30_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ data_29_out sc_out sc_lv 6 signal 25 } 
	{ data_29_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ data_28_out sc_out sc_lv 6 signal 26 } 
	{ data_28_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ data_27_out sc_out sc_lv 6 signal 27 } 
	{ data_27_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ data_26_out sc_out sc_lv 6 signal 28 } 
	{ data_26_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ data_25_out sc_out sc_lv 6 signal 29 } 
	{ data_25_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ data_24_out sc_out sc_lv 6 signal 30 } 
	{ data_24_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ data_23_out sc_out sc_lv 6 signal 31 } 
	{ data_23_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ data_22_out sc_out sc_lv 6 signal 32 } 
	{ data_22_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ data_21_out sc_out sc_lv 6 signal 33 } 
	{ data_21_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ data_20_out sc_out sc_lv 6 signal 34 } 
	{ data_20_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ data_19_out sc_out sc_lv 6 signal 35 } 
	{ data_19_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ data_18_out sc_out sc_lv 6 signal 36 } 
	{ data_18_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ data_17_out sc_out sc_lv 6 signal 37 } 
	{ data_17_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ data_16_out sc_out sc_lv 6 signal 38 } 
	{ data_16_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ data_15_out sc_out sc_lv 6 signal 39 } 
	{ data_15_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ data_14_out sc_out sc_lv 6 signal 40 } 
	{ data_14_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ data_13_out sc_out sc_lv 6 signal 41 } 
	{ data_13_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ data_12_out sc_out sc_lv 6 signal 42 } 
	{ data_12_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ data_11_out sc_out sc_lv 6 signal 43 } 
	{ data_11_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ data_10_out sc_out sc_lv 6 signal 44 } 
	{ data_10_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ data_9_out sc_out sc_lv 6 signal 45 } 
	{ data_9_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ data_8_out sc_out sc_lv 6 signal 46 } 
	{ data_8_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ data_7_out sc_out sc_lv 6 signal 47 } 
	{ data_7_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ data_6_out sc_out sc_lv 6 signal 48 } 
	{ data_6_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ data_5_out sc_out sc_lv 6 signal 49 } 
	{ data_5_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ data_4_out sc_out sc_lv 6 signal 50 } 
	{ data_4_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ data_3_out sc_out sc_lv 6 signal 51 } 
	{ data_3_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ data_2_out sc_out sc_lv 6 signal 52 } 
	{ data_2_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ data_1_out sc_out sc_lv 6 signal 53 } 
	{ data_1_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ data_out sc_out sc_lv 6 signal 54 } 
	{ data_out_ap_vld sc_out sc_logic 1 outvld 54 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer14_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "layer14_out", "role": "dout" }} , 
 	{ "name": "layer14_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer14_out", "role": "empty_n" }} , 
 	{ "name": "layer14_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer14_out", "role": "read" }} , 
 	{ "name": "layer14_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "layer14_out", "role": "num_data_valid" }} , 
 	{ "name": "layer14_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "layer14_out", "role": "fifo_cap" }} , 
 	{ "name": "data_53_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_53_out", "role": "default" }} , 
 	{ "name": "data_53_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_53_out", "role": "ap_vld" }} , 
 	{ "name": "data_52_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_52_out", "role": "default" }} , 
 	{ "name": "data_52_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_52_out", "role": "ap_vld" }} , 
 	{ "name": "data_51_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_51_out", "role": "default" }} , 
 	{ "name": "data_51_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_51_out", "role": "ap_vld" }} , 
 	{ "name": "data_50_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_50_out", "role": "default" }} , 
 	{ "name": "data_50_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_50_out", "role": "ap_vld" }} , 
 	{ "name": "data_49_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_49_out", "role": "default" }} , 
 	{ "name": "data_49_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_49_out", "role": "ap_vld" }} , 
 	{ "name": "data_48_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_48_out", "role": "default" }} , 
 	{ "name": "data_48_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_48_out", "role": "ap_vld" }} , 
 	{ "name": "data_47_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_47_out", "role": "default" }} , 
 	{ "name": "data_47_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_47_out", "role": "ap_vld" }} , 
 	{ "name": "data_46_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_46_out", "role": "default" }} , 
 	{ "name": "data_46_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_46_out", "role": "ap_vld" }} , 
 	{ "name": "data_45_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_45_out", "role": "default" }} , 
 	{ "name": "data_45_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_45_out", "role": "ap_vld" }} , 
 	{ "name": "data_44_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_44_out", "role": "default" }} , 
 	{ "name": "data_44_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_44_out", "role": "ap_vld" }} , 
 	{ "name": "data_43_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_43_out", "role": "default" }} , 
 	{ "name": "data_43_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_43_out", "role": "ap_vld" }} , 
 	{ "name": "data_42_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_42_out", "role": "default" }} , 
 	{ "name": "data_42_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_42_out", "role": "ap_vld" }} , 
 	{ "name": "data_41_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_41_out", "role": "default" }} , 
 	{ "name": "data_41_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_41_out", "role": "ap_vld" }} , 
 	{ "name": "data_40_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_40_out", "role": "default" }} , 
 	{ "name": "data_40_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_40_out", "role": "ap_vld" }} , 
 	{ "name": "data_39_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_39_out", "role": "default" }} , 
 	{ "name": "data_39_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_39_out", "role": "ap_vld" }} , 
 	{ "name": "data_38_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_38_out", "role": "default" }} , 
 	{ "name": "data_38_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_38_out", "role": "ap_vld" }} , 
 	{ "name": "data_37_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_37_out", "role": "default" }} , 
 	{ "name": "data_37_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_37_out", "role": "ap_vld" }} , 
 	{ "name": "data_36_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_36_out", "role": "default" }} , 
 	{ "name": "data_36_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_36_out", "role": "ap_vld" }} , 
 	{ "name": "data_35_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_35_out", "role": "default" }} , 
 	{ "name": "data_35_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_35_out", "role": "ap_vld" }} , 
 	{ "name": "data_34_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_34_out", "role": "default" }} , 
 	{ "name": "data_34_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_34_out", "role": "ap_vld" }} , 
 	{ "name": "data_33_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_33_out", "role": "default" }} , 
 	{ "name": "data_33_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_33_out", "role": "ap_vld" }} , 
 	{ "name": "data_32_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_32_out", "role": "default" }} , 
 	{ "name": "data_32_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_32_out", "role": "ap_vld" }} , 
 	{ "name": "data_31_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_31_out", "role": "default" }} , 
 	{ "name": "data_31_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_31_out", "role": "ap_vld" }} , 
 	{ "name": "data_30_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_30_out", "role": "default" }} , 
 	{ "name": "data_30_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_30_out", "role": "ap_vld" }} , 
 	{ "name": "data_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_29_out", "role": "default" }} , 
 	{ "name": "data_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_29_out", "role": "ap_vld" }} , 
 	{ "name": "data_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_28_out", "role": "default" }} , 
 	{ "name": "data_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_28_out", "role": "ap_vld" }} , 
 	{ "name": "data_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_27_out", "role": "default" }} , 
 	{ "name": "data_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_27_out", "role": "ap_vld" }} , 
 	{ "name": "data_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_26_out", "role": "default" }} , 
 	{ "name": "data_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_26_out", "role": "ap_vld" }} , 
 	{ "name": "data_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_25_out", "role": "default" }} , 
 	{ "name": "data_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_25_out", "role": "ap_vld" }} , 
 	{ "name": "data_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_24_out", "role": "default" }} , 
 	{ "name": "data_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_24_out", "role": "ap_vld" }} , 
 	{ "name": "data_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_23_out", "role": "default" }} , 
 	{ "name": "data_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_23_out", "role": "ap_vld" }} , 
 	{ "name": "data_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_22_out", "role": "default" }} , 
 	{ "name": "data_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_22_out", "role": "ap_vld" }} , 
 	{ "name": "data_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_21_out", "role": "default" }} , 
 	{ "name": "data_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_21_out", "role": "ap_vld" }} , 
 	{ "name": "data_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_20_out", "role": "default" }} , 
 	{ "name": "data_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_20_out", "role": "ap_vld" }} , 
 	{ "name": "data_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_19_out", "role": "default" }} , 
 	{ "name": "data_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_19_out", "role": "ap_vld" }} , 
 	{ "name": "data_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_18_out", "role": "default" }} , 
 	{ "name": "data_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_18_out", "role": "ap_vld" }} , 
 	{ "name": "data_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_17_out", "role": "default" }} , 
 	{ "name": "data_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_17_out", "role": "ap_vld" }} , 
 	{ "name": "data_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_16_out", "role": "default" }} , 
 	{ "name": "data_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_16_out", "role": "ap_vld" }} , 
 	{ "name": "data_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_15_out", "role": "default" }} , 
 	{ "name": "data_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_15_out", "role": "ap_vld" }} , 
 	{ "name": "data_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_14_out", "role": "default" }} , 
 	{ "name": "data_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_14_out", "role": "ap_vld" }} , 
 	{ "name": "data_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_13_out", "role": "default" }} , 
 	{ "name": "data_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_13_out", "role": "ap_vld" }} , 
 	{ "name": "data_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_12_out", "role": "default" }} , 
 	{ "name": "data_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_12_out", "role": "ap_vld" }} , 
 	{ "name": "data_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_11_out", "role": "default" }} , 
 	{ "name": "data_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_11_out", "role": "ap_vld" }} , 
 	{ "name": "data_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_10_out", "role": "default" }} , 
 	{ "name": "data_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_10_out", "role": "ap_vld" }} , 
 	{ "name": "data_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_9_out", "role": "default" }} , 
 	{ "name": "data_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_9_out", "role": "ap_vld" }} , 
 	{ "name": "data_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_8_out", "role": "default" }} , 
 	{ "name": "data_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_8_out", "role": "ap_vld" }} , 
 	{ "name": "data_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_7_out", "role": "default" }} , 
 	{ "name": "data_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_7_out", "role": "ap_vld" }} , 
 	{ "name": "data_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_6_out", "role": "default" }} , 
 	{ "name": "data_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_6_out", "role": "ap_vld" }} , 
 	{ "name": "data_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_5_out", "role": "default" }} , 
 	{ "name": "data_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_5_out", "role": "ap_vld" }} , 
 	{ "name": "data_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_4_out", "role": "default" }} , 
 	{ "name": "data_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_4_out", "role": "ap_vld" }} , 
 	{ "name": "data_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_3_out", "role": "default" }} , 
 	{ "name": "data_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_3_out", "role": "ap_vld" }} , 
 	{ "name": "data_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_2_out", "role": "default" }} , 
 	{ "name": "data_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_2_out", "role": "ap_vld" }} , 
 	{ "name": "data_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_1_out", "role": "default" }} , 
 	{ "name": "data_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_1_out", "role": "ap_vld" }} , 
 	{ "name": "data_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_out", "role": "default" }} , 
 	{ "name": "data_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dense_array_array_ap_fixed_16_6_5_3_0_1u_config16_Pipeline_DataPrepare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer14_out", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "layer14_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "data_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "DataPrepare", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dense_array_array_ap_fixed_16_6_5_3_0_1u_config16_Pipeline_DataPrepare {
		layer14_out {Type I LastRead 0 FirstWrite -1}
		data_53_out {Type O LastRead -1 FirstWrite 0}
		data_52_out {Type O LastRead -1 FirstWrite 0}
		data_51_out {Type O LastRead -1 FirstWrite 0}
		data_50_out {Type O LastRead -1 FirstWrite 0}
		data_49_out {Type O LastRead -1 FirstWrite 0}
		data_48_out {Type O LastRead -1 FirstWrite 0}
		data_47_out {Type O LastRead -1 FirstWrite 0}
		data_46_out {Type O LastRead -1 FirstWrite 0}
		data_45_out {Type O LastRead -1 FirstWrite 0}
		data_44_out {Type O LastRead -1 FirstWrite 0}
		data_43_out {Type O LastRead -1 FirstWrite 0}
		data_42_out {Type O LastRead -1 FirstWrite 0}
		data_41_out {Type O LastRead -1 FirstWrite 0}
		data_40_out {Type O LastRead -1 FirstWrite 0}
		data_39_out {Type O LastRead -1 FirstWrite 0}
		data_38_out {Type O LastRead -1 FirstWrite 0}
		data_37_out {Type O LastRead -1 FirstWrite 0}
		data_36_out {Type O LastRead -1 FirstWrite 0}
		data_35_out {Type O LastRead -1 FirstWrite 0}
		data_34_out {Type O LastRead -1 FirstWrite 0}
		data_33_out {Type O LastRead -1 FirstWrite 0}
		data_32_out {Type O LastRead -1 FirstWrite 0}
		data_31_out {Type O LastRead -1 FirstWrite 0}
		data_30_out {Type O LastRead -1 FirstWrite 0}
		data_29_out {Type O LastRead -1 FirstWrite 0}
		data_28_out {Type O LastRead -1 FirstWrite 0}
		data_27_out {Type O LastRead -1 FirstWrite 0}
		data_26_out {Type O LastRead -1 FirstWrite 0}
		data_25_out {Type O LastRead -1 FirstWrite 0}
		data_24_out {Type O LastRead -1 FirstWrite 0}
		data_23_out {Type O LastRead -1 FirstWrite 0}
		data_22_out {Type O LastRead -1 FirstWrite 0}
		data_21_out {Type O LastRead -1 FirstWrite 0}
		data_20_out {Type O LastRead -1 FirstWrite 0}
		data_19_out {Type O LastRead -1 FirstWrite 0}
		data_18_out {Type O LastRead -1 FirstWrite 0}
		data_17_out {Type O LastRead -1 FirstWrite 0}
		data_16_out {Type O LastRead -1 FirstWrite 0}
		data_15_out {Type O LastRead -1 FirstWrite 0}
		data_14_out {Type O LastRead -1 FirstWrite 0}
		data_13_out {Type O LastRead -1 FirstWrite 0}
		data_12_out {Type O LastRead -1 FirstWrite 0}
		data_11_out {Type O LastRead -1 FirstWrite 0}
		data_10_out {Type O LastRead -1 FirstWrite 0}
		data_9_out {Type O LastRead -1 FirstWrite 0}
		data_8_out {Type O LastRead -1 FirstWrite 0}
		data_7_out {Type O LastRead -1 FirstWrite 0}
		data_6_out {Type O LastRead -1 FirstWrite 0}
		data_5_out {Type O LastRead -1 FirstWrite 0}
		data_4_out {Type O LastRead -1 FirstWrite 0}
		data_3_out {Type O LastRead -1 FirstWrite 0}
		data_2_out {Type O LastRead -1 FirstWrite 0}
		data_1_out {Type O LastRead -1 FirstWrite 0}
		data_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	layer14_out { ap_fifo {  { layer14_out_dout fifo_data_in 0 36 }  { layer14_out_empty_n fifo_status 0 1 }  { layer14_out_read fifo_port_we 1 1 }  { layer14_out_num_data_valid fifo_status_num_data_valid 0 5 }  { layer14_out_fifo_cap fifo_update 0 5 } } }
	data_53_out { ap_vld {  { data_53_out out_data 1 6 }  { data_53_out_ap_vld out_vld 1 1 } } }
	data_52_out { ap_vld {  { data_52_out out_data 1 6 }  { data_52_out_ap_vld out_vld 1 1 } } }
	data_51_out { ap_vld {  { data_51_out out_data 1 6 }  { data_51_out_ap_vld out_vld 1 1 } } }
	data_50_out { ap_vld {  { data_50_out out_data 1 6 }  { data_50_out_ap_vld out_vld 1 1 } } }
	data_49_out { ap_vld {  { data_49_out out_data 1 6 }  { data_49_out_ap_vld out_vld 1 1 } } }
	data_48_out { ap_vld {  { data_48_out out_data 1 6 }  { data_48_out_ap_vld out_vld 1 1 } } }
	data_47_out { ap_vld {  { data_47_out out_data 1 6 }  { data_47_out_ap_vld out_vld 1 1 } } }
	data_46_out { ap_vld {  { data_46_out out_data 1 6 }  { data_46_out_ap_vld out_vld 1 1 } } }
	data_45_out { ap_vld {  { data_45_out out_data 1 6 }  { data_45_out_ap_vld out_vld 1 1 } } }
	data_44_out { ap_vld {  { data_44_out out_data 1 6 }  { data_44_out_ap_vld out_vld 1 1 } } }
	data_43_out { ap_vld {  { data_43_out out_data 1 6 }  { data_43_out_ap_vld out_vld 1 1 } } }
	data_42_out { ap_vld {  { data_42_out out_data 1 6 }  { data_42_out_ap_vld out_vld 1 1 } } }
	data_41_out { ap_vld {  { data_41_out out_data 1 6 }  { data_41_out_ap_vld out_vld 1 1 } } }
	data_40_out { ap_vld {  { data_40_out out_data 1 6 }  { data_40_out_ap_vld out_vld 1 1 } } }
	data_39_out { ap_vld {  { data_39_out out_data 1 6 }  { data_39_out_ap_vld out_vld 1 1 } } }
	data_38_out { ap_vld {  { data_38_out out_data 1 6 }  { data_38_out_ap_vld out_vld 1 1 } } }
	data_37_out { ap_vld {  { data_37_out out_data 1 6 }  { data_37_out_ap_vld out_vld 1 1 } } }
	data_36_out { ap_vld {  { data_36_out out_data 1 6 }  { data_36_out_ap_vld out_vld 1 1 } } }
	data_35_out { ap_vld {  { data_35_out out_data 1 6 }  { data_35_out_ap_vld out_vld 1 1 } } }
	data_34_out { ap_vld {  { data_34_out out_data 1 6 }  { data_34_out_ap_vld out_vld 1 1 } } }
	data_33_out { ap_vld {  { data_33_out out_data 1 6 }  { data_33_out_ap_vld out_vld 1 1 } } }
	data_32_out { ap_vld {  { data_32_out out_data 1 6 }  { data_32_out_ap_vld out_vld 1 1 } } }
	data_31_out { ap_vld {  { data_31_out out_data 1 6 }  { data_31_out_ap_vld out_vld 1 1 } } }
	data_30_out { ap_vld {  { data_30_out out_data 1 6 }  { data_30_out_ap_vld out_vld 1 1 } } }
	data_29_out { ap_vld {  { data_29_out out_data 1 6 }  { data_29_out_ap_vld out_vld 1 1 } } }
	data_28_out { ap_vld {  { data_28_out out_data 1 6 }  { data_28_out_ap_vld out_vld 1 1 } } }
	data_27_out { ap_vld {  { data_27_out out_data 1 6 }  { data_27_out_ap_vld out_vld 1 1 } } }
	data_26_out { ap_vld {  { data_26_out out_data 1 6 }  { data_26_out_ap_vld out_vld 1 1 } } }
	data_25_out { ap_vld {  { data_25_out out_data 1 6 }  { data_25_out_ap_vld out_vld 1 1 } } }
	data_24_out { ap_vld {  { data_24_out out_data 1 6 }  { data_24_out_ap_vld out_vld 1 1 } } }
	data_23_out { ap_vld {  { data_23_out out_data 1 6 }  { data_23_out_ap_vld out_vld 1 1 } } }
	data_22_out { ap_vld {  { data_22_out out_data 1 6 }  { data_22_out_ap_vld out_vld 1 1 } } }
	data_21_out { ap_vld {  { data_21_out out_data 1 6 }  { data_21_out_ap_vld out_vld 1 1 } } }
	data_20_out { ap_vld {  { data_20_out out_data 1 6 }  { data_20_out_ap_vld out_vld 1 1 } } }
	data_19_out { ap_vld {  { data_19_out out_data 1 6 }  { data_19_out_ap_vld out_vld 1 1 } } }
	data_18_out { ap_vld {  { data_18_out out_data 1 6 }  { data_18_out_ap_vld out_vld 1 1 } } }
	data_17_out { ap_vld {  { data_17_out out_data 1 6 }  { data_17_out_ap_vld out_vld 1 1 } } }
	data_16_out { ap_vld {  { data_16_out out_data 1 6 }  { data_16_out_ap_vld out_vld 1 1 } } }
	data_15_out { ap_vld {  { data_15_out out_data 1 6 }  { data_15_out_ap_vld out_vld 1 1 } } }
	data_14_out { ap_vld {  { data_14_out out_data 1 6 }  { data_14_out_ap_vld out_vld 1 1 } } }
	data_13_out { ap_vld {  { data_13_out out_data 1 6 }  { data_13_out_ap_vld out_vld 1 1 } } }
	data_12_out { ap_vld {  { data_12_out out_data 1 6 }  { data_12_out_ap_vld out_vld 1 1 } } }
	data_11_out { ap_vld {  { data_11_out out_data 1 6 }  { data_11_out_ap_vld out_vld 1 1 } } }
	data_10_out { ap_vld {  { data_10_out out_data 1 6 }  { data_10_out_ap_vld out_vld 1 1 } } }
	data_9_out { ap_vld {  { data_9_out out_data 1 6 }  { data_9_out_ap_vld out_vld 1 1 } } }
	data_8_out { ap_vld {  { data_8_out out_data 1 6 }  { data_8_out_ap_vld out_vld 1 1 } } }
	data_7_out { ap_vld {  { data_7_out out_data 1 6 }  { data_7_out_ap_vld out_vld 1 1 } } }
	data_6_out { ap_vld {  { data_6_out out_data 1 6 }  { data_6_out_ap_vld out_vld 1 1 } } }
	data_5_out { ap_vld {  { data_5_out out_data 1 6 }  { data_5_out_ap_vld out_vld 1 1 } } }
	data_4_out { ap_vld {  { data_4_out out_data 1 6 }  { data_4_out_ap_vld out_vld 1 1 } } }
	data_3_out { ap_vld {  { data_3_out out_data 1 6 }  { data_3_out_ap_vld out_vld 1 1 } } }
	data_2_out { ap_vld {  { data_2_out out_data 1 6 }  { data_2_out_ap_vld out_vld 1 1 } } }
	data_1_out { ap_vld {  { data_1_out out_data 1 6 }  { data_1_out_ap_vld out_vld 1 1 } } }
	data_out { ap_vld {  { data_out out_data 1 6 }  { data_out_ap_vld out_vld 1 1 } } }
}
