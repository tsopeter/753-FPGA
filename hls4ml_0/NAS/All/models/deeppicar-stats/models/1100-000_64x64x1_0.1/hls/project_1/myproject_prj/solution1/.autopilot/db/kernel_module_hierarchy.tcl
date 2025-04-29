set ModuleHierarchy {[{
"Name" : "myproject","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "conv_2d_cl_array_ap_uint_8_1u_array_ap_fixed_20_16_5_3_0_2u_config2_U0","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "2","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_16_5_3_0_2u_config2_s_fu_118","ID" : "3","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_uint_8_1u_config2_s_fu_131","ID" : "4","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_gt_nin_rem0_ap_uint_ap_fixed_20_16_5_3_0_config2_mult_s_fu_195","ID" : "5","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "6","Type" : "pipeline"},]},]},]},]},
	{"Name" : "relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config4_U0","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","ID" : "8","Type" : "pipeline"},]},
	{"Name" : "conv_2d_cl_array_ap_ufixed_2u_array_ap_fixed_19_9_5_3_0_4u_config5_U0","ID" : "9","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "10","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_4u_config5_s_fu_176","ID" : "11","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config5_s_fu_195","ID" : "12","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config5_mult_s_fu_319","ID" : "13","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "14","Type" : "pipeline"},]},]},]},]},
	{"Name" : "relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config7_U0","ID" : "15","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","ID" : "16","Type" : "pipeline"},]},
	{"Name" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_20_10_5_3_0_5u_config8_U0","ID" : "17","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "18","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_10_5_3_0_5u_config8_s_fu_300","ID" : "19","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config8_s_fu_327","ID" : "20","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_20_10_5_3_0_config8_mult_s_fu_571","ID" : "21","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "22","Type" : "pipeline"},]},]},]},]},
	{"Name" : "relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config10_U0","ID" : "23","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","ID" : "24","Type" : "pipeline"},]},
	{"Name" : "dense_array_ap_ufixed_5u_array_ap_fixed_16_6_5_3_0_1u_config12_U0","ID" : "25","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_dense_array_array_ap_fixed_16_6_5_3_0_1u_config12_Pipeline_DataPrepare_fu_533","ID" : "26","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "DataPrepare","ID" : "27","Type" : "pipeline"},]},
		{"Name" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_16_6_5_3_0_config12_s_fu_664","ID" : "28","Type" : "pipeline",
			"SubLoops" : [
			{"Name" : "ReuseLoop","ID" : "29","Type" : "pipeline"},]},]},
	{"Name" : "linear_array_ap_fixed_1u_array_ap_fixed_4_0_5_3_0_1u_linear_config13_U0","ID" : "30","Type" : "sequential"},]
}]}