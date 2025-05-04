set ModuleHierarchy {[{
"Name" : "myproject","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "linear_array_ap_uint_1u_array_ap_fixed_8_1_4_0_0_1u_linear_config2_U0","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "LinearActLoop","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_20_9_5_3_0_2u_config3_U0","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "4","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_9_5_3_0_2u_config3_s_fu_114","ID" : "5","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_fu_131","ID" : "6","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_20_9_5_3_0_config3_mult_s_fu_195","ID" : "7","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "8","Type" : "pipeline"},]},]},]},]},
	{"Name" : "relu_array_ap_fixed_2u_array_ap_ufixed_6_0_4_0_0_2u_relu_config5_U0","ID" : "9","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","ID" : "10","Type" : "pipeline"},]},
	{"Name" : "conv_2d_cl_array_ap_ufixed_2u_array_ap_fixed_19_9_5_3_0_4u_config6_U0","ID" : "11","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "12","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_4u_config6_s_fu_176","ID" : "13","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_2u_config6_s_fu_195","ID" : "14","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config6_mult_s_fu_319","ID" : "15","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "16","Type" : "pipeline"},]},]},]},]},
	{"Name" : "relu_array_ap_fixed_4u_array_ap_ufixed_6_0_4_0_0_4u_relu_config8_U0","ID" : "17","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","ID" : "18","Type" : "pipeline"},]},
	{"Name" : "conv_2d_cl_array_ap_ufixed_4u_array_ap_fixed_20_10_5_3_0_5u_config9_U0","ID" : "19","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "20","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_20_10_5_3_0_5u_config9_s_fu_300","ID" : "21","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_4u_config9_s_fu_327","ID" : "22","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_20_10_5_3_0_config9_mult_s_fu_571","ID" : "23","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "24","Type" : "pipeline"},]},]},]},]},
	{"Name" : "relu_array_ap_fixed_5u_array_ap_ufixed_6_0_4_0_0_5u_relu_config11_U0","ID" : "25","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","ID" : "26","Type" : "pipeline"},]},
	{"Name" : "conv_2d_cl_array_ap_ufixed_5u_array_ap_fixed_19_9_5_3_0_6u_config12_U0","ID" : "27","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "28","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_19_9_5_3_0_6u_config12_s_fu_182","ID" : "29","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_ufixed_6_0_4_0_0_5u_config12_s_fu_211","ID" : "30","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config12_mult_s_fu_335","ID" : "31","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","ID" : "32","Type" : "pipeline"},]},]},]},]},
	{"Name" : "relu_array_ap_fixed_6u_array_ap_ufixed_6_0_4_0_0_6u_relu_config14_U0","ID" : "33","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","ID" : "34","Type" : "pipeline"},]},
	{"Name" : "dense_array_ap_ufixed_6u_array_ap_fixed_19_9_5_3_0_1u_config16_U0","ID" : "35","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_dense_array_array_ap_fixed_19_9_5_3_0_1u_config16_Pipeline_DataPrepare_fu_255","ID" : "36","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "DataPrepare","ID" : "37","Type" : "pipeline"},]},
		{"Name" : "grp_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_19_9_5_3_0_config16_s_fu_315","ID" : "38","Type" : "pipeline",
			"SubLoops" : [
			{"Name" : "ReuseLoop","ID" : "39","Type" : "pipeline"},]},]},]
}]}