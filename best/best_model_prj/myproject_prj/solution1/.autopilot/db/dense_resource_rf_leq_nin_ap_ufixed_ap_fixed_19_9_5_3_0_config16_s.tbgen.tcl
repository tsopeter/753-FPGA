set moduleName dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config16_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_rewind
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
set C_modelName {dense_resource_rf_leq_nin<ap_ufixed,ap_fixed<19,9,5,3,0>,config16>}
set C_modelType { int 16 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ data_0_val int 6 regular  }
	{ data_1_val int 6 regular  }
	{ data_2_val int 6 regular  }
	{ data_3_val int 6 regular  }
	{ data_4_val int 6 regular  }
	{ data_5_val int 6 regular  }
	{ data_6_val int 6 regular  }
	{ data_7_val int 6 regular  }
	{ data_8_val int 6 regular  }
	{ data_9_val int 6 regular  }
	{ data_10_val int 6 regular  }
	{ data_11_val int 6 regular  }
	{ data_12_val int 6 regular  }
	{ data_13_val int 6 regular  }
	{ data_14_val int 6 regular  }
	{ data_15_val int 6 regular  }
	{ data_16_val int 6 regular  }
	{ data_17_val int 6 regular  }
	{ data_18_val int 6 regular  }
	{ data_19_val int 6 regular  }
	{ data_20_val int 6 regular  }
	{ data_21_val int 6 regular  }
	{ data_22_val int 6 regular  }
	{ data_23_val int 6 regular  }
	{ data_24_val int 6 regular  }
	{ data_25_val int 6 regular  }
	{ data_26_val int 6 regular  }
	{ data_27_val int 6 regular  }
	{ data_28_val int 6 regular  }
	{ data_29_val int 6 regular  }
	{ data_30_val int 6 regular  }
	{ data_31_val int 6 regular  }
	{ data_32_val int 6 regular  }
	{ data_33_val int 6 regular  }
	{ data_34_val int 6 regular  }
	{ data_35_val int 6 regular  }
	{ data_36_val int 6 regular  }
	{ data_37_val int 6 regular  }
	{ data_38_val int 6 regular  }
	{ data_39_val int 6 regular  }
	{ data_40_val int 6 regular  }
	{ data_41_val int 6 regular  }
	{ data_42_val int 6 regular  }
	{ data_43_val int 6 regular  }
	{ data_44_val int 6 regular  }
	{ data_45_val int 6 regular  }
	{ data_46_val int 6 regular  }
	{ data_47_val int 6 regular  }
	{ data_48_val int 6 regular  }
	{ data_49_val int 6 regular  }
	{ data_50_val int 6 regular  }
	{ data_51_val int 6 regular  }
	{ data_52_val int 6 regular  }
	{ data_53_val int 6 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "data_0_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_1_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_2_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_3_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_4_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_5_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_6_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_7_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_8_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_9_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_10_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_11_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_12_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_13_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_14_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_15_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_16_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_17_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_18_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_19_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_20_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_21_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_22_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_23_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_24_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_25_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_26_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_27_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_28_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_29_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_30_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_31_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_32_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_33_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_34_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_35_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_36_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_37_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_38_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_39_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_40_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_41_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_42_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_43_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_44_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_45_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_46_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_47_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_48_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_49_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_50_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_51_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_52_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "data_53_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 16} ]}
# RTL Port declarations: 
set portNum 61
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_0_val sc_in sc_lv 6 signal 0 } 
	{ data_1_val sc_in sc_lv 6 signal 1 } 
	{ data_2_val sc_in sc_lv 6 signal 2 } 
	{ data_3_val sc_in sc_lv 6 signal 3 } 
	{ data_4_val sc_in sc_lv 6 signal 4 } 
	{ data_5_val sc_in sc_lv 6 signal 5 } 
	{ data_6_val sc_in sc_lv 6 signal 6 } 
	{ data_7_val sc_in sc_lv 6 signal 7 } 
	{ data_8_val sc_in sc_lv 6 signal 8 } 
	{ data_9_val sc_in sc_lv 6 signal 9 } 
	{ data_10_val sc_in sc_lv 6 signal 10 } 
	{ data_11_val sc_in sc_lv 6 signal 11 } 
	{ data_12_val sc_in sc_lv 6 signal 12 } 
	{ data_13_val sc_in sc_lv 6 signal 13 } 
	{ data_14_val sc_in sc_lv 6 signal 14 } 
	{ data_15_val sc_in sc_lv 6 signal 15 } 
	{ data_16_val sc_in sc_lv 6 signal 16 } 
	{ data_17_val sc_in sc_lv 6 signal 17 } 
	{ data_18_val sc_in sc_lv 6 signal 18 } 
	{ data_19_val sc_in sc_lv 6 signal 19 } 
	{ data_20_val sc_in sc_lv 6 signal 20 } 
	{ data_21_val sc_in sc_lv 6 signal 21 } 
	{ data_22_val sc_in sc_lv 6 signal 22 } 
	{ data_23_val sc_in sc_lv 6 signal 23 } 
	{ data_24_val sc_in sc_lv 6 signal 24 } 
	{ data_25_val sc_in sc_lv 6 signal 25 } 
	{ data_26_val sc_in sc_lv 6 signal 26 } 
	{ data_27_val sc_in sc_lv 6 signal 27 } 
	{ data_28_val sc_in sc_lv 6 signal 28 } 
	{ data_29_val sc_in sc_lv 6 signal 29 } 
	{ data_30_val sc_in sc_lv 6 signal 30 } 
	{ data_31_val sc_in sc_lv 6 signal 31 } 
	{ data_32_val sc_in sc_lv 6 signal 32 } 
	{ data_33_val sc_in sc_lv 6 signal 33 } 
	{ data_34_val sc_in sc_lv 6 signal 34 } 
	{ data_35_val sc_in sc_lv 6 signal 35 } 
	{ data_36_val sc_in sc_lv 6 signal 36 } 
	{ data_37_val sc_in sc_lv 6 signal 37 } 
	{ data_38_val sc_in sc_lv 6 signal 38 } 
	{ data_39_val sc_in sc_lv 6 signal 39 } 
	{ data_40_val sc_in sc_lv 6 signal 40 } 
	{ data_41_val sc_in sc_lv 6 signal 41 } 
	{ data_42_val sc_in sc_lv 6 signal 42 } 
	{ data_43_val sc_in sc_lv 6 signal 43 } 
	{ data_44_val sc_in sc_lv 6 signal 44 } 
	{ data_45_val sc_in sc_lv 6 signal 45 } 
	{ data_46_val sc_in sc_lv 6 signal 46 } 
	{ data_47_val sc_in sc_lv 6 signal 47 } 
	{ data_48_val sc_in sc_lv 6 signal 48 } 
	{ data_49_val sc_in sc_lv 6 signal 49 } 
	{ data_50_val sc_in sc_lv 6 signal 50 } 
	{ data_51_val sc_in sc_lv 6 signal 51 } 
	{ data_52_val sc_in sc_lv 6 signal 52 } 
	{ data_53_val sc_in sc_lv 6 signal 53 } 
	{ ap_return sc_out sc_lv 16 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_0_val", "role": "default" }} , 
 	{ "name": "data_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_1_val", "role": "default" }} , 
 	{ "name": "data_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_2_val", "role": "default" }} , 
 	{ "name": "data_3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_3_val", "role": "default" }} , 
 	{ "name": "data_4_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_4_val", "role": "default" }} , 
 	{ "name": "data_5_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_5_val", "role": "default" }} , 
 	{ "name": "data_6_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_6_val", "role": "default" }} , 
 	{ "name": "data_7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_7_val", "role": "default" }} , 
 	{ "name": "data_8_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_8_val", "role": "default" }} , 
 	{ "name": "data_9_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_9_val", "role": "default" }} , 
 	{ "name": "data_10_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_10_val", "role": "default" }} , 
 	{ "name": "data_11_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_11_val", "role": "default" }} , 
 	{ "name": "data_12_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_12_val", "role": "default" }} , 
 	{ "name": "data_13_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_13_val", "role": "default" }} , 
 	{ "name": "data_14_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_14_val", "role": "default" }} , 
 	{ "name": "data_15_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_15_val", "role": "default" }} , 
 	{ "name": "data_16_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_16_val", "role": "default" }} , 
 	{ "name": "data_17_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_17_val", "role": "default" }} , 
 	{ "name": "data_18_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_18_val", "role": "default" }} , 
 	{ "name": "data_19_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_19_val", "role": "default" }} , 
 	{ "name": "data_20_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_20_val", "role": "default" }} , 
 	{ "name": "data_21_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_21_val", "role": "default" }} , 
 	{ "name": "data_22_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_22_val", "role": "default" }} , 
 	{ "name": "data_23_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_23_val", "role": "default" }} , 
 	{ "name": "data_24_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_24_val", "role": "default" }} , 
 	{ "name": "data_25_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_25_val", "role": "default" }} , 
 	{ "name": "data_26_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_26_val", "role": "default" }} , 
 	{ "name": "data_27_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_27_val", "role": "default" }} , 
 	{ "name": "data_28_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_28_val", "role": "default" }} , 
 	{ "name": "data_29_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_29_val", "role": "default" }} , 
 	{ "name": "data_30_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_30_val", "role": "default" }} , 
 	{ "name": "data_31_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_31_val", "role": "default" }} , 
 	{ "name": "data_32_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_32_val", "role": "default" }} , 
 	{ "name": "data_33_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_33_val", "role": "default" }} , 
 	{ "name": "data_34_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_34_val", "role": "default" }} , 
 	{ "name": "data_35_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_35_val", "role": "default" }} , 
 	{ "name": "data_36_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_36_val", "role": "default" }} , 
 	{ "name": "data_37_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_37_val", "role": "default" }} , 
 	{ "name": "data_38_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_38_val", "role": "default" }} , 
 	{ "name": "data_39_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_39_val", "role": "default" }} , 
 	{ "name": "data_40_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_40_val", "role": "default" }} , 
 	{ "name": "data_41_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_41_val", "role": "default" }} , 
 	{ "name": "data_42_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_42_val", "role": "default" }} , 
 	{ "name": "data_43_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_43_val", "role": "default" }} , 
 	{ "name": "data_44_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_44_val", "role": "default" }} , 
 	{ "name": "data_45_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_45_val", "role": "default" }} , 
 	{ "name": "data_46_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_46_val", "role": "default" }} , 
 	{ "name": "data_47_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_47_val", "role": "default" }} , 
 	{ "name": "data_48_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_48_val", "role": "default" }} , 
 	{ "name": "data_49_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_49_val", "role": "default" }} , 
 	{ "name": "data_50_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_50_val", "role": "default" }} , 
 	{ "name": "data_51_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_51_val", "role": "default" }} , 
 	{ "name": "data_52_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_52_val", "role": "default" }} , 
 	{ "name": "data_53_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_53_val", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config16_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "54", "EstimateLatencyMax" : "55",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_10_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_11_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_12_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_13_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_14_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_15_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_16_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_17_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_18_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_19_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_20_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_21_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_22_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_23_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_24_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_25_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_26_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_27_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_28_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_29_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_30_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_31_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_32_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_33_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_34_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_35_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_36_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_37_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_38_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_39_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_40_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_41_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_42_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_43_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_44_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_45_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_46_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_47_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_48_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_49_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_50_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_51_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_52_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_53_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "w16", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.w16_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_109_6_6_1_1_U587", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_6ns_4s_16s_16_1_1_U588", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config16_s {
		data_0_val {Type I LastRead 1 FirstWrite -1}
		data_1_val {Type I LastRead 1 FirstWrite -1}
		data_2_val {Type I LastRead 1 FirstWrite -1}
		data_3_val {Type I LastRead 1 FirstWrite -1}
		data_4_val {Type I LastRead 1 FirstWrite -1}
		data_5_val {Type I LastRead 1 FirstWrite -1}
		data_6_val {Type I LastRead 1 FirstWrite -1}
		data_7_val {Type I LastRead 1 FirstWrite -1}
		data_8_val {Type I LastRead 1 FirstWrite -1}
		data_9_val {Type I LastRead 1 FirstWrite -1}
		data_10_val {Type I LastRead 1 FirstWrite -1}
		data_11_val {Type I LastRead 1 FirstWrite -1}
		data_12_val {Type I LastRead 1 FirstWrite -1}
		data_13_val {Type I LastRead 1 FirstWrite -1}
		data_14_val {Type I LastRead 1 FirstWrite -1}
		data_15_val {Type I LastRead 1 FirstWrite -1}
		data_16_val {Type I LastRead 1 FirstWrite -1}
		data_17_val {Type I LastRead 1 FirstWrite -1}
		data_18_val {Type I LastRead 1 FirstWrite -1}
		data_19_val {Type I LastRead 1 FirstWrite -1}
		data_20_val {Type I LastRead 1 FirstWrite -1}
		data_21_val {Type I LastRead 1 FirstWrite -1}
		data_22_val {Type I LastRead 1 FirstWrite -1}
		data_23_val {Type I LastRead 1 FirstWrite -1}
		data_24_val {Type I LastRead 1 FirstWrite -1}
		data_25_val {Type I LastRead 1 FirstWrite -1}
		data_26_val {Type I LastRead 1 FirstWrite -1}
		data_27_val {Type I LastRead 1 FirstWrite -1}
		data_28_val {Type I LastRead 1 FirstWrite -1}
		data_29_val {Type I LastRead 1 FirstWrite -1}
		data_30_val {Type I LastRead 1 FirstWrite -1}
		data_31_val {Type I LastRead 1 FirstWrite -1}
		data_32_val {Type I LastRead 1 FirstWrite -1}
		data_33_val {Type I LastRead 1 FirstWrite -1}
		data_34_val {Type I LastRead 1 FirstWrite -1}
		data_35_val {Type I LastRead 1 FirstWrite -1}
		data_36_val {Type I LastRead 1 FirstWrite -1}
		data_37_val {Type I LastRead 1 FirstWrite -1}
		data_38_val {Type I LastRead 1 FirstWrite -1}
		data_39_val {Type I LastRead 1 FirstWrite -1}
		data_40_val {Type I LastRead 1 FirstWrite -1}
		data_41_val {Type I LastRead 1 FirstWrite -1}
		data_42_val {Type I LastRead 1 FirstWrite -1}
		data_43_val {Type I LastRead 1 FirstWrite -1}
		data_44_val {Type I LastRead 1 FirstWrite -1}
		data_45_val {Type I LastRead 1 FirstWrite -1}
		data_46_val {Type I LastRead 1 FirstWrite -1}
		data_47_val {Type I LastRead 1 FirstWrite -1}
		data_48_val {Type I LastRead 1 FirstWrite -1}
		data_49_val {Type I LastRead 1 FirstWrite -1}
		data_50_val {Type I LastRead 1 FirstWrite -1}
		data_51_val {Type I LastRead 1 FirstWrite -1}
		data_52_val {Type I LastRead 1 FirstWrite -1}
		data_53_val {Type I LastRead 1 FirstWrite -1}
		w16 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "54", "Max" : "55"}
	, {"Name" : "Interval", "Min" : "54", "Max" : "54"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_0_val { ap_none {  { data_0_val in_data 0 6 } } }
	data_1_val { ap_none {  { data_1_val in_data 0 6 } } }
	data_2_val { ap_none {  { data_2_val in_data 0 6 } } }
	data_3_val { ap_none {  { data_3_val in_data 0 6 } } }
	data_4_val { ap_none {  { data_4_val in_data 0 6 } } }
	data_5_val { ap_none {  { data_5_val in_data 0 6 } } }
	data_6_val { ap_none {  { data_6_val in_data 0 6 } } }
	data_7_val { ap_none {  { data_7_val in_data 0 6 } } }
	data_8_val { ap_none {  { data_8_val in_data 0 6 } } }
	data_9_val { ap_none {  { data_9_val in_data 0 6 } } }
	data_10_val { ap_none {  { data_10_val in_data 0 6 } } }
	data_11_val { ap_none {  { data_11_val in_data 0 6 } } }
	data_12_val { ap_none {  { data_12_val in_data 0 6 } } }
	data_13_val { ap_none {  { data_13_val in_data 0 6 } } }
	data_14_val { ap_none {  { data_14_val in_data 0 6 } } }
	data_15_val { ap_none {  { data_15_val in_data 0 6 } } }
	data_16_val { ap_none {  { data_16_val in_data 0 6 } } }
	data_17_val { ap_none {  { data_17_val in_data 0 6 } } }
	data_18_val { ap_none {  { data_18_val in_data 0 6 } } }
	data_19_val { ap_none {  { data_19_val in_data 0 6 } } }
	data_20_val { ap_none {  { data_20_val in_data 0 6 } } }
	data_21_val { ap_none {  { data_21_val in_data 0 6 } } }
	data_22_val { ap_none {  { data_22_val in_data 0 6 } } }
	data_23_val { ap_none {  { data_23_val in_data 0 6 } } }
	data_24_val { ap_none {  { data_24_val in_data 0 6 } } }
	data_25_val { ap_none {  { data_25_val in_data 0 6 } } }
	data_26_val { ap_none {  { data_26_val in_data 0 6 } } }
	data_27_val { ap_none {  { data_27_val in_data 0 6 } } }
	data_28_val { ap_none {  { data_28_val in_data 0 6 } } }
	data_29_val { ap_none {  { data_29_val in_data 0 6 } } }
	data_30_val { ap_none {  { data_30_val in_data 0 6 } } }
	data_31_val { ap_none {  { data_31_val in_data 0 6 } } }
	data_32_val { ap_none {  { data_32_val in_data 0 6 } } }
	data_33_val { ap_none {  { data_33_val in_data 0 6 } } }
	data_34_val { ap_none {  { data_34_val in_data 0 6 } } }
	data_35_val { ap_none {  { data_35_val in_data 0 6 } } }
	data_36_val { ap_none {  { data_36_val in_data 0 6 } } }
	data_37_val { ap_none {  { data_37_val in_data 0 6 } } }
	data_38_val { ap_none {  { data_38_val in_data 0 6 } } }
	data_39_val { ap_none {  { data_39_val in_data 0 6 } } }
	data_40_val { ap_none {  { data_40_val in_data 0 6 } } }
	data_41_val { ap_none {  { data_41_val in_data 0 6 } } }
	data_42_val { ap_none {  { data_42_val in_data 0 6 } } }
	data_43_val { ap_none {  { data_43_val in_data 0 6 } } }
	data_44_val { ap_none {  { data_44_val in_data 0 6 } } }
	data_45_val { ap_none {  { data_45_val in_data 0 6 } } }
	data_46_val { ap_none {  { data_46_val in_data 0 6 } } }
	data_47_val { ap_none {  { data_47_val in_data 0 6 } } }
	data_48_val { ap_none {  { data_48_val in_data 0 6 } } }
	data_49_val { ap_none {  { data_49_val in_data 0 6 } } }
	data_50_val { ap_none {  { data_50_val in_data 0 6 } } }
	data_51_val { ap_none {  { data_51_val in_data 0 6 } } }
	data_52_val { ap_none {  { data_52_val in_data 0 6 } } }
	data_53_val { ap_none {  { data_53_val in_data 0 6 } } }
}
