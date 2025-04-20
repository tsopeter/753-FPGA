create_project finn_vivado_stitch_proj /tmp/finn_dev_root/vivado_stitch_proj_4g29v702 -part xc7s25csga225-1
set_msg_config -id {[BD 41-1753]} -suppress
set_property ip_repo_paths [list $::env(FINN_ROOT)/finn-rtllib/memstream /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_0_6oncw52d /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_0_9ue28ch7 /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_1_0_q4ylkh8o /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_1_1_uslq6kd9 /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_1_2_gq8rbv62 /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_1_3_tjpjdy6j /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_1_4_8pcqgtdz /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_1_5_y2vvzh9v /tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_0_9tmw50rx/project_MVAU_hls_0/sol1/impl/ip /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_2_0__32roo90 /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_2_1_0y8wxh5i /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_1_37dsiurb /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_3_0_y2b3e0u7 /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_3_1_ravub1m9 /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_3_2_uh35zon9 /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_3_3_rgze098l /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_3_4_6rkwbdlt /tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_1_tzf29ljv/project_MVAU_hls_1/sol1/impl/ip /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_4_ip56qb54 /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_2_z930jqzx /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_5_0_9nn8xc1s /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_5_1_f58d_l7s /tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_2_r07ns4_z/project_MVAU_hls_2/sol1/impl/ip /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_6_v7cg0zqn /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_3_k9ymzjjy /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_7_sp00r4m7 /tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_3_en1zw_ib/project_MVAU_hls_3/sol1/impl/ip /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_8__c8hfmk8 /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_4_52uw0bzh /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_9__vo3ww3y /tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_4_99q9woyy/project_MVAU_hls_4/sol1/impl/ip /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_10_egvbypl6 /tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_5_nvq94m66/project_MVAU_hls_5/sol1/impl/ip /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_11_dhav8tsd /tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_6_bel7uuog/project_MVAU_hls_6/sol1/impl/ip /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_12_vpvgfggy /tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_7_ptwujrl6/project_MVAU_hls_7/sol1/impl/ip /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_13_jw6ncvct /tmp/finn_dev_root/code_gen_ipgen_MVAU_rtl_0_8lvb43ez /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_14_iwhfydh4] [current_project]
update_ip_catalog
create_bd_design "finn_design"
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_0_6oncw52d/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_0_6oncw52d/StreamingFIFO_rtl_0.v
create_bd_cell -type module -reference StreamingFIFO_rtl_0 StreamingFIFO_rtl_0
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_0_9ue28ch7/swg_pkg.sv
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_0_9ue28ch7/ConvolutionInputGenerator_rtl_0_wrapper.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_0_9ue28ch7/ConvolutionInputGenerator_rtl_0_impl.sv
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_0_9ue28ch7/swg_common.sv
create_bd_cell -type module -reference ConvolutionInputGenerator_rtl_0 ConvolutionInputGenerator_rtl_0
create_bd_cell -type hier StreamingFIFO_rtl_1_0
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_1_0/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_1_0/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_1_0/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_1_0/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_1_0/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {16384}] [get_bd_cells /StreamingFIFO_rtl_1_0/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_1_0/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_1_0/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_0/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_1_0/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_0/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_1_0/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_1_0/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_1_0/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_1_0/ap_clk] [get_bd_pins StreamingFIFO_rtl_1_0/fifo/s_axis_aclk]
create_bd_cell -type hier StreamingFIFO_rtl_1_1
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_1_1/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_1_1/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_1_1/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_1_1/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_1_1/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {4096}] [get_bd_cells /StreamingFIFO_rtl_1_1/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_1_1/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_1_1/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_1/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_1_1/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_1/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_1_1/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_1_1/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_1_1/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_1_1/ap_clk] [get_bd_pins StreamingFIFO_rtl_1_1/fifo/s_axis_aclk]
create_bd_cell -type hier StreamingFIFO_rtl_1_2
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_1_2/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_1_2/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_1_2/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_1_2/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_1_2/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {1024}] [get_bd_cells /StreamingFIFO_rtl_1_2/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_1_2/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_1_2/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_2/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_1_2/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_2/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_1_2/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_1_2/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_1_2/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_1_2/ap_clk] [get_bd_pins StreamingFIFO_rtl_1_2/fifo/s_axis_aclk]
create_bd_cell -type hier StreamingFIFO_rtl_1_3
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_1_3/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_1_3/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_1_3/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_1_3/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_1_3/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {512}] [get_bd_cells /StreamingFIFO_rtl_1_3/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_1_3/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_1_3/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_3/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_1_3/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_3/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_1_3/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_1_3/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_1_3/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_1_3/ap_clk] [get_bd_pins StreamingFIFO_rtl_1_3/fifo/s_axis_aclk]
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_1_4_8pcqgtdz/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_1_4_8pcqgtdz/StreamingFIFO_rtl_1_4.v
create_bd_cell -type module -reference StreamingFIFO_rtl_1_4 StreamingFIFO_rtl_1_4
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_1_5_y2vvzh9v/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_1_5_y2vvzh9v/StreamingFIFO_rtl_1_5.v
create_bd_cell -type module -reference StreamingFIFO_rtl_1_5 StreamingFIFO_rtl_1_5
create_bd_cell -type hier MVAU_hls_0
create_bd_pin -dir I -type clk /MVAU_hls_0/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_0/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_0/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_0/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_0:1.0 /MVAU_hls_0/MVAU_hls_0
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_0/MVAU_hls_0_wstrm
set_property -dict [list CONFIG.DEPTH {300} CONFIG.WIDTH {8} CONFIG.INIT_FILE {/tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_0_9tmw50rx/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_0/MVAU_hls_0_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_0/MVAU_hls_0_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_0/MVAU_hls_0/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_0/ap_rst_n] [get_bd_pins MVAU_hls_0/MVAU_hls_0_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_0/ap_clk] [get_bd_pins MVAU_hls_0/MVAU_hls_0_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_0/ap_rst_n] [get_bd_pins MVAU_hls_0/MVAU_hls_0/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_0/ap_clk] [get_bd_pins MVAU_hls_0/MVAU_hls_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_0/in0_V] [get_bd_intf_pins MVAU_hls_0/MVAU_hls_0/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_0/out_V] [get_bd_intf_pins MVAU_hls_0/MVAU_hls_0/out_V]
save_bd_design
create_bd_cell -type hier StreamingFIFO_rtl_2_0
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_2_0/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_2_0/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_2_0/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_2_0/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_2_0/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {4096}] [get_bd_cells /StreamingFIFO_rtl_2_0/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_2_0/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_2_0/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_2_0/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_2_0/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_2_0/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_2_0/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_2_0/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_2_0/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_2_0/ap_clk] [get_bd_pins StreamingFIFO_rtl_2_0/fifo/s_axis_aclk]
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_2_1_0y8wxh5i/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_2_1_0y8wxh5i/StreamingFIFO_rtl_2_1.v
create_bd_cell -type module -reference StreamingFIFO_rtl_2_1 StreamingFIFO_rtl_2_1
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_1_37dsiurb/swg_pkg.sv
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_1_37dsiurb/ConvolutionInputGenerator_rtl_1_wrapper.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_1_37dsiurb/ConvolutionInputGenerator_rtl_1_impl.sv
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_1_37dsiurb/swg_common.sv
create_bd_cell -type module -reference ConvolutionInputGenerator_rtl_1 ConvolutionInputGenerator_rtl_1
create_bd_cell -type hier StreamingFIFO_rtl_3_0
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_3_0/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_3_0/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_3_0/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_3_0/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_3_0/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {32768}] [get_bd_cells /StreamingFIFO_rtl_3_0/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_3_0/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_3_0/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_0/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_3_0/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_0/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_3_0/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_3_0/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_3_0/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_3_0/ap_clk] [get_bd_pins StreamingFIFO_rtl_3_0/fifo/s_axis_aclk]
create_bd_cell -type hier StreamingFIFO_rtl_3_1
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_3_1/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_3_1/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_3_1/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_3_1/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_3_1/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {16384}] [get_bd_cells /StreamingFIFO_rtl_3_1/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_3_1/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_3_1/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_1/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_3_1/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_1/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_3_1/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_3_1/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_3_1/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_3_1/ap_clk] [get_bd_pins StreamingFIFO_rtl_3_1/fifo/s_axis_aclk]
create_bd_cell -type hier StreamingFIFO_rtl_3_2
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_3_2/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_3_2/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_3_2/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_3_2/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_3_2/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {1024}] [get_bd_cells /StreamingFIFO_rtl_3_2/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_3_2/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_3_2/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_2/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_3_2/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_2/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_3_2/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_3_2/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_3_2/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_3_2/ap_clk] [get_bd_pins StreamingFIFO_rtl_3_2/fifo/s_axis_aclk]
create_bd_cell -type hier StreamingFIFO_rtl_3_3
create_bd_pin -dir I -type clk /StreamingFIFO_rtl_3_3/ap_clk
create_bd_pin -dir I -type rst /StreamingFIFO_rtl_3_3/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_3_3/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /StreamingFIFO_rtl_3_3/in0_V
create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:2.0 /StreamingFIFO_rtl_3_3/fifo
set_property -dict [list CONFIG.FIFO_DEPTH {512}] [get_bd_cells /StreamingFIFO_rtl_3_3/fifo]
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {auto}] [get_bd_cells /StreamingFIFO_rtl_3_3/fifo]
set_property -dict [list CONFIG.TDATA_NUM_BYTES {1}] [get_bd_cells /StreamingFIFO_rtl_3_3/fifo]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_3/fifo/M_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_3_3/out_V]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_3/fifo/S_AXIS] [get_bd_intf_pins StreamingFIFO_rtl_3_3/in0_V]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_3_3/ap_rst_n] [get_bd_pins StreamingFIFO_rtl_3_3/fifo/s_axis_aresetn]
connect_bd_net [get_bd_pins StreamingFIFO_rtl_3_3/ap_clk] [get_bd_pins StreamingFIFO_rtl_3_3/fifo/s_axis_aclk]
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_3_4_6rkwbdlt/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_3_4_6rkwbdlt/StreamingFIFO_rtl_3_4.v
create_bd_cell -type module -reference StreamingFIFO_rtl_3_4 StreamingFIFO_rtl_3_4
create_bd_cell -type hier MVAU_hls_1
create_bd_pin -dir I -type clk /MVAU_hls_1/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_1/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_1/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_1/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_1:1.0 /MVAU_hls_1/MVAU_hls_1
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_1/MVAU_hls_1_wstrm
set_property -dict [list CONFIG.DEPTH {5400} CONFIG.WIDTH {8} CONFIG.INIT_FILE {/tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_1_tzf29ljv/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_1/MVAU_hls_1_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_1/MVAU_hls_1_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_1/MVAU_hls_1/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_1/ap_rst_n] [get_bd_pins MVAU_hls_1/MVAU_hls_1_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_1/ap_clk] [get_bd_pins MVAU_hls_1/MVAU_hls_1_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_1/ap_rst_n] [get_bd_pins MVAU_hls_1/MVAU_hls_1/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_1/ap_clk] [get_bd_pins MVAU_hls_1/MVAU_hls_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_1/in0_V] [get_bd_intf_pins MVAU_hls_1/MVAU_hls_1/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_1/out_V] [get_bd_intf_pins MVAU_hls_1/MVAU_hls_1/out_V]
save_bd_design
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_4_ip56qb54/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_4_ip56qb54/StreamingFIFO_rtl_4.v
create_bd_cell -type module -reference StreamingFIFO_rtl_4 StreamingFIFO_rtl_4
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_2_z930jqzx/swg_pkg.sv
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_2_z930jqzx/ConvolutionInputGenerator_rtl_2_wrapper.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_2_z930jqzx/ConvolutionInputGenerator_rtl_2_impl.sv
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_2_z930jqzx/swg_common.sv
create_bd_cell -type module -reference ConvolutionInputGenerator_rtl_2 ConvolutionInputGenerator_rtl_2
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_5_0_9nn8xc1s/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_5_0_9nn8xc1s/StreamingFIFO_rtl_5_0.v
create_bd_cell -type module -reference StreamingFIFO_rtl_5_0 StreamingFIFO_rtl_5_0
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_5_1_f58d_l7s/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_5_1_f58d_l7s/StreamingFIFO_rtl_5_1.v
create_bd_cell -type module -reference StreamingFIFO_rtl_5_1 StreamingFIFO_rtl_5_1
create_bd_cell -type hier MVAU_hls_2
create_bd_pin -dir I -type clk /MVAU_hls_2/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_2/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_2/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_2/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_2:1.0 /MVAU_hls_2/MVAU_hls_2
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_2/MVAU_hls_2_wstrm
set_property -dict [list CONFIG.DEPTH {10800} CONFIG.WIDTH {8} CONFIG.INIT_FILE {/tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_2_r07ns4_z/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_2/MVAU_hls_2_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_2/MVAU_hls_2_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_2/MVAU_hls_2/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_2/ap_rst_n] [get_bd_pins MVAU_hls_2/MVAU_hls_2_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_2/ap_clk] [get_bd_pins MVAU_hls_2/MVAU_hls_2_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_2/ap_rst_n] [get_bd_pins MVAU_hls_2/MVAU_hls_2/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_2/ap_clk] [get_bd_pins MVAU_hls_2/MVAU_hls_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_2/in0_V] [get_bd_intf_pins MVAU_hls_2/MVAU_hls_2/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_2/out_V] [get_bd_intf_pins MVAU_hls_2/MVAU_hls_2/out_V]
save_bd_design
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_6_v7cg0zqn/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_6_v7cg0zqn/StreamingFIFO_rtl_6.v
create_bd_cell -type module -reference StreamingFIFO_rtl_6 StreamingFIFO_rtl_6
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_3_k9ymzjjy/swg_pkg.sv
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_3_k9ymzjjy/ConvolutionInputGenerator_rtl_3_wrapper.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_3_k9ymzjjy/ConvolutionInputGenerator_rtl_3_impl.sv
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_3_k9ymzjjy/swg_common.sv
create_bd_cell -type module -reference ConvolutionInputGenerator_rtl_3 ConvolutionInputGenerator_rtl_3
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_7_sp00r4m7/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_7_sp00r4m7/StreamingFIFO_rtl_7.v
create_bd_cell -type module -reference StreamingFIFO_rtl_7 StreamingFIFO_rtl_7
create_bd_cell -type hier MVAU_hls_3
create_bd_pin -dir I -type clk /MVAU_hls_3/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_3/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_3/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_3/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_3:1.0 /MVAU_hls_3/MVAU_hls_3
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_3/MVAU_hls_3_wstrm
set_property -dict [list CONFIG.DEPTH {6912} CONFIG.WIDTH {8} CONFIG.INIT_FILE {/tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_3_en1zw_ib/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_3/MVAU_hls_3_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_3/MVAU_hls_3_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_3/MVAU_hls_3/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_3/ap_rst_n] [get_bd_pins MVAU_hls_3/MVAU_hls_3_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_3/ap_clk] [get_bd_pins MVAU_hls_3/MVAU_hls_3_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_3/ap_rst_n] [get_bd_pins MVAU_hls_3/MVAU_hls_3/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_3/ap_clk] [get_bd_pins MVAU_hls_3/MVAU_hls_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_3/in0_V] [get_bd_intf_pins MVAU_hls_3/MVAU_hls_3/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_3/out_V] [get_bd_intf_pins MVAU_hls_3/MVAU_hls_3/out_V]
save_bd_design
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_8__c8hfmk8/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_8__c8hfmk8/StreamingFIFO_rtl_8.v
create_bd_cell -type module -reference StreamingFIFO_rtl_8 StreamingFIFO_rtl_8
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_4_52uw0bzh/swg_pkg.sv
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_4_52uw0bzh/ConvolutionInputGenerator_rtl_4_wrapper.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_4_52uw0bzh/ConvolutionInputGenerator_rtl_4_impl.sv
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_ConvolutionInputGenerator_rtl_4_52uw0bzh/swg_common.sv
create_bd_cell -type module -reference ConvolutionInputGenerator_rtl_4 ConvolutionInputGenerator_rtl_4
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_9__vo3ww3y/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_9__vo3ww3y/StreamingFIFO_rtl_9.v
create_bd_cell -type module -reference StreamingFIFO_rtl_9 StreamingFIFO_rtl_9
create_bd_cell -type hier MVAU_hls_4
create_bd_pin -dir I -type clk /MVAU_hls_4/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_4/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_4/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_4/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_4:1.0 /MVAU_hls_4/MVAU_hls_4
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_4/MVAU_hls_4_wstrm
set_property -dict [list CONFIG.DEPTH {9216} CONFIG.WIDTH {8} CONFIG.INIT_FILE {/tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_4_99q9woyy/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_4/MVAU_hls_4_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_4/MVAU_hls_4_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_4/MVAU_hls_4/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_4/ap_rst_n] [get_bd_pins MVAU_hls_4/MVAU_hls_4_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_4/ap_clk] [get_bd_pins MVAU_hls_4/MVAU_hls_4_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_4/ap_rst_n] [get_bd_pins MVAU_hls_4/MVAU_hls_4/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_4/ap_clk] [get_bd_pins MVAU_hls_4/MVAU_hls_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_4/in0_V] [get_bd_intf_pins MVAU_hls_4/MVAU_hls_4/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_4/out_V] [get_bd_intf_pins MVAU_hls_4/MVAU_hls_4/out_V]
save_bd_design
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_10_egvbypl6/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_10_egvbypl6/StreamingFIFO_rtl_10.v
create_bd_cell -type module -reference StreamingFIFO_rtl_10 StreamingFIFO_rtl_10
create_bd_cell -type hier MVAU_hls_5
create_bd_pin -dir I -type clk /MVAU_hls_5/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_5/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_5/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_5/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_5:1.0 /MVAU_hls_5/MVAU_hls_5
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_5/MVAU_hls_5_wstrm
set_property -dict [list CONFIG.DEPTH {1600} CONFIG.WIDTH {8} CONFIG.INIT_FILE {/tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_5_nvq94m66/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_5/MVAU_hls_5_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_5/MVAU_hls_5_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_5/MVAU_hls_5/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_5/ap_rst_n] [get_bd_pins MVAU_hls_5/MVAU_hls_5_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_5/ap_clk] [get_bd_pins MVAU_hls_5/MVAU_hls_5_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_5/ap_rst_n] [get_bd_pins MVAU_hls_5/MVAU_hls_5/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_5/ap_clk] [get_bd_pins MVAU_hls_5/MVAU_hls_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_5/in0_V] [get_bd_intf_pins MVAU_hls_5/MVAU_hls_5/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_5/out_V] [get_bd_intf_pins MVAU_hls_5/MVAU_hls_5/out_V]
save_bd_design
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_11_dhav8tsd/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_11_dhav8tsd/StreamingFIFO_rtl_11.v
create_bd_cell -type module -reference StreamingFIFO_rtl_11 StreamingFIFO_rtl_11
create_bd_cell -type hier MVAU_hls_6
create_bd_pin -dir I -type clk /MVAU_hls_6/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_6/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_6/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_6/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_6:1.0 /MVAU_hls_6/MVAU_hls_6
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_6/MVAU_hls_6_wstrm
set_property -dict [list CONFIG.DEPTH {1250} CONFIG.WIDTH {8} CONFIG.INIT_FILE {/tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_6_bel7uuog/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_6/MVAU_hls_6_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_6/MVAU_hls_6_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_6/MVAU_hls_6/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_6/ap_rst_n] [get_bd_pins MVAU_hls_6/MVAU_hls_6_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_6/ap_clk] [get_bd_pins MVAU_hls_6/MVAU_hls_6_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_6/ap_rst_n] [get_bd_pins MVAU_hls_6/MVAU_hls_6/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_6/ap_clk] [get_bd_pins MVAU_hls_6/MVAU_hls_6/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_6/in0_V] [get_bd_intf_pins MVAU_hls_6/MVAU_hls_6/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_6/out_V] [get_bd_intf_pins MVAU_hls_6/MVAU_hls_6/out_V]
save_bd_design
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_12_vpvgfggy/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_12_vpvgfggy/StreamingFIFO_rtl_12.v
create_bd_cell -type module -reference StreamingFIFO_rtl_12 StreamingFIFO_rtl_12
create_bd_cell -type hier MVAU_hls_7
create_bd_pin -dir I -type clk /MVAU_hls_7/ap_clk
create_bd_pin -dir I -type rst /MVAU_hls_7/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_7/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_hls_7/in0_V
create_bd_cell -type ip -vlnv xilinx.com:hls:MVAU_hls_7:1.0 /MVAU_hls_7/MVAU_hls_7
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_hls_7/MVAU_hls_7_wstrm
set_property -dict [list CONFIG.DEPTH {125} CONFIG.WIDTH {8} CONFIG.INIT_FILE {/tmp/finn_dev_root/code_gen_ipgen_MVAU_hls_7_ptwujrl6/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_hls_7/MVAU_hls_7_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_7/MVAU_hls_7_wstrm/m_axis_0] [get_bd_intf_pins MVAU_hls_7/MVAU_hls_7/weights_V]
connect_bd_net [get_bd_pins MVAU_hls_7/ap_rst_n] [get_bd_pins MVAU_hls_7/MVAU_hls_7_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_7/ap_clk] [get_bd_pins MVAU_hls_7/MVAU_hls_7_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_hls_7/ap_rst_n] [get_bd_pins MVAU_hls_7/MVAU_hls_7/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_hls_7/ap_clk] [get_bd_pins MVAU_hls_7/MVAU_hls_7/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_7/in0_V] [get_bd_intf_pins MVAU_hls_7/MVAU_hls_7/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_7/out_V] [get_bd_intf_pins MVAU_hls_7/MVAU_hls_7/out_V]
save_bd_design
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_13_jw6ncvct/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_13_jw6ncvct/StreamingFIFO_rtl_13.v
create_bd_cell -type module -reference StreamingFIFO_rtl_13 StreamingFIFO_rtl_13
create_bd_cell -type hier MVAU_rtl_0
create_bd_pin -dir I -type clk /MVAU_rtl_0/ap_clk
create_bd_pin -dir I -type rst /MVAU_rtl_0/ap_rst_n
create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_rtl_0/out_V
create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 /MVAU_rtl_0/in0_V
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_MVAU_rtl_0_8lvb43ez/MVAU_rtl_0_wrapper.v
add_files -norecurse /home/petertso/Documents/finn/finn-rtllib/mvu/mvu_vvu_axi.sv
add_files -norecurse /home/petertso/Documents/finn/finn-rtllib/mvu/replay_buffer.sv
add_files -norecurse /home/petertso/Documents/finn/finn-rtllib/mvu/mvu_4sx4u.sv
add_files -norecurse /home/petertso/Documents/finn/finn-rtllib/mvu/mvu_vvu_8sx9_dsp58.sv
add_files -norecurse /home/petertso/Documents/finn/finn-rtllib/mvu/mvu_8sx8u_dsp48.sv
create_bd_cell -type hier -reference MVAU_rtl_0 /MVAU_rtl_0/MVAU_rtl_0
create_bd_cell -type ip -vlnv amd.com:finn:memstream:1.0 /MVAU_rtl_0/MVAU_rtl_0_wstrm
set_property -dict [list CONFIG.DEPTH {5} CONFIG.WIDTH {8} CONFIG.INIT_FILE {/tmp/finn_dev_root/code_gen_ipgen_MVAU_rtl_0_8lvb43ez/memblock.dat} CONFIG.RAM_STYLE {auto} ] [get_bd_cells /MVAU_rtl_0/MVAU_rtl_0_wstrm]
connect_bd_intf_net [get_bd_intf_pins MVAU_rtl_0/MVAU_rtl_0_wstrm/m_axis_0] [get_bd_intf_pins MVAU_rtl_0/MVAU_rtl_0/weights_V]
connect_bd_net [get_bd_pins MVAU_rtl_0/ap_rst_n] [get_bd_pins MVAU_rtl_0/MVAU_rtl_0_wstrm/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_rtl_0/ap_clk] [get_bd_pins MVAU_rtl_0/MVAU_rtl_0_wstrm/ap_clk]
connect_bd_net [get_bd_pins MVAU_rtl_0/ap_rst_n] [get_bd_pins MVAU_rtl_0/MVAU_rtl_0/ap_rst_n]
connect_bd_net [get_bd_pins MVAU_rtl_0/ap_clk] [get_bd_pins MVAU_rtl_0/MVAU_rtl_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_rtl_0/in0_V] [get_bd_intf_pins MVAU_rtl_0/MVAU_rtl_0/in0_V]
connect_bd_intf_net [get_bd_intf_pins MVAU_rtl_0/out_V] [get_bd_intf_pins MVAU_rtl_0/MVAU_rtl_0/out_V]
save_bd_design
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_14_iwhfydh4/Q_srl.v
add_files -norecurse /tmp/finn_dev_root/code_gen_ipgen_StreamingFIFO_rtl_14_iwhfydh4/StreamingFIFO_rtl_14.v
create_bd_cell -type module -reference StreamingFIFO_rtl_14 StreamingFIFO_rtl_14
make_bd_pins_external [get_bd_pins StreamingFIFO_rtl_0/ap_clk]
set_property name ap_clk [get_bd_ports ap_clk_0]
make_bd_pins_external [get_bd_pins StreamingFIFO_rtl_0/ap_rst_n]
set_property name ap_rst_n [get_bd_ports ap_rst_n_0]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_rtl_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_rtl_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_0/out_V] [get_bd_intf_pins ConvolutionInputGenerator_rtl_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_1_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_1_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_rtl_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_1_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_1_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_1_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_1_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_1_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_1_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_1/out_V] [get_bd_intf_pins StreamingFIFO_rtl_1_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_1_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_1_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_2/out_V] [get_bd_intf_pins StreamingFIFO_rtl_1_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_1_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_1_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_3/out_V] [get_bd_intf_pins StreamingFIFO_rtl_1_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_1_5/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_1_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_4/out_V] [get_bd_intf_pins StreamingFIFO_rtl_1_5/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_1_5/out_V] [get_bd_intf_pins MVAU_hls_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_2_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_2_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_2_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_2_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_2_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_2_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_2_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_rtl_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_rtl_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_2_1/out_V] [get_bd_intf_pins ConvolutionInputGenerator_rtl_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_3_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_3_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_rtl_1/out_V] [get_bd_intf_pins StreamingFIFO_rtl_3_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_3_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_3_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_3_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_3_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_3_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_1/out_V] [get_bd_intf_pins StreamingFIFO_rtl_3_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_3_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_3_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_2/out_V] [get_bd_intf_pins StreamingFIFO_rtl_3_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_3_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_3_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_3/out_V] [get_bd_intf_pins StreamingFIFO_rtl_3_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_3_4/out_V] [get_bd_intf_pins MVAU_hls_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_1/out_V] [get_bd_intf_pins StreamingFIFO_rtl_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_rtl_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_rtl_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_4/out_V] [get_bd_intf_pins ConvolutionInputGenerator_rtl_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_5_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_5_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_rtl_2/out_V] [get_bd_intf_pins StreamingFIFO_rtl_5_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_5_1/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_5_1/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_5_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_5_1/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_2/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_2/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_5_1/out_V] [get_bd_intf_pins MVAU_hls_2/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_6/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_6/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_2/out_V] [get_bd_intf_pins StreamingFIFO_rtl_6/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_rtl_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_rtl_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_6/out_V] [get_bd_intf_pins ConvolutionInputGenerator_rtl_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_7/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_7/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_rtl_3/out_V] [get_bd_intf_pins StreamingFIFO_rtl_7/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_3/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_3/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_7/out_V] [get_bd_intf_pins MVAU_hls_3/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_8/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_8/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_3/out_V] [get_bd_intf_pins StreamingFIFO_rtl_8/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins ConvolutionInputGenerator_rtl_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins ConvolutionInputGenerator_rtl_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_8/out_V] [get_bd_intf_pins ConvolutionInputGenerator_rtl_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_9/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_9/ap_clk]
connect_bd_intf_net [get_bd_intf_pins ConvolutionInputGenerator_rtl_4/out_V] [get_bd_intf_pins StreamingFIFO_rtl_9/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_4/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_4/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_9/out_V] [get_bd_intf_pins MVAU_hls_4/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_10/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_10/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_4/out_V] [get_bd_intf_pins StreamingFIFO_rtl_10/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_5/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_5/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_10/out_V] [get_bd_intf_pins MVAU_hls_5/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_11/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_11/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_5/out_V] [get_bd_intf_pins StreamingFIFO_rtl_11/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_6/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_6/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_11/out_V] [get_bd_intf_pins MVAU_hls_6/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_12/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_12/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_6/out_V] [get_bd_intf_pins StreamingFIFO_rtl_12/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_hls_7/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_hls_7/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_12/out_V] [get_bd_intf_pins MVAU_hls_7/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_13/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_13/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_hls_7/out_V] [get_bd_intf_pins StreamingFIFO_rtl_13/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins MVAU_rtl_0/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins MVAU_rtl_0/ap_clk]
connect_bd_intf_net [get_bd_intf_pins StreamingFIFO_rtl_13/out_V] [get_bd_intf_pins MVAU_rtl_0/in0_V]
connect_bd_net [get_bd_ports ap_rst_n] [get_bd_pins StreamingFIFO_rtl_14/ap_rst_n]
connect_bd_net [get_bd_ports ap_clk] [get_bd_pins StreamingFIFO_rtl_14/ap_clk]
connect_bd_intf_net [get_bd_intf_pins MVAU_rtl_0/out_V] [get_bd_intf_pins StreamingFIFO_rtl_14/in0_V]
make_bd_intf_pins_external [get_bd_intf_pins StreamingFIFO_rtl_0/in0_V]
set_property name s_axis_0 [get_bd_intf_ports in0_V_0]
make_bd_intf_pins_external [get_bd_intf_pins StreamingFIFO_rtl_14/out_V]
set_property name m_axis_0 [get_bd_intf_ports out_V_0]
set_property CONFIG.FREQ_HZ 83333333 [get_bd_ports /ap_clk]
validate_bd_design
save_bd_design
make_wrapper -files [get_files /tmp/finn_dev_root/vivado_stitch_proj_4g29v702/finn_vivado_stitch_proj.srcs/sources_1/bd/finn_design/finn_design.bd] -top
add_files -norecurse /tmp/finn_dev_root/vivado_stitch_proj_4g29v702/finn_vivado_stitch_proj.srcs/sources_1/bd/finn_design/hdl/finn_design_wrapper.v
set_property top finn_design_wrapper [current_fileset]
ipx::package_project -root_dir /tmp/finn_dev_root/vivado_stitch_proj_4g29v702/ip -vendor xilinx_finn -library finn -taxonomy /UserIP -module finn_design -import_files
set_property ipi_drc {ignore_freq_hz true} [ipx::current_core]
ipx::remove_segment -quiet m_axi_gmem0:APERTURE_0 [ipx::get_address_spaces m_axi_gmem0 -of_objects [ipx::current_core]]
set_property core_revision 2 [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
ipx::create_xgui_files [ipx::find_open_core xilinx_finn:finn:finn_design:1.0]
set_property value_resolve_type user [ipx::get_bus_parameters -of [ipx::get_bus_interfaces -of [ipx::current_core ]]]

set core [ipx::current_core]

# Add rudimentary driver
file copy -force data ip/
set file_group [ipx::add_file_group -type software_driver {} $core]
set_property type mdd       [ipx::add_file data/finn_design.mdd $file_group]
set_property type tclSource [ipx::add_file data/finn_design.tcl $file_group]

# Remove all XCI references to subcores
set impl_files [ipx::get_file_groups xilinx_implementation -of $core]
foreach xci [ipx::get_files -of $impl_files {*.xci}] {
    ipx::remove_file [get_property NAME $xci] $impl_files
}

# Construct a single flat memory map for each AXI-lite interface port
foreach port [get_bd_intf_ports -filter {CONFIG.PROTOCOL==AXI4LITE}] {
    set pin $port
    set awidth ""
    while { $awidth == "" } {
        set pins [get_bd_intf_pins -of [get_bd_intf_nets -boundary_type lower -of $pin]]
        set kill [lsearch $pins $pin]
        if { $kill >= 0 } { set pins [lreplace $pins $kill $kill] }
        if { [llength $pins] != 1 } { break }
        set pin [lindex $pins 0]
        set awidth [get_property CONFIG.ADDR_WIDTH $pin]
    }
    if { $awidth == "" } {
       puts "CRITICAL WARNING: Unable to construct address map for $port."
    } {
       set range [expr 2**$awidth]
       set range [expr $range < 4096 ? 4096 : $range]
       puts "INFO: Building address map for $port: 0+:$range"
       set name [get_property NAME $port]
       set addr_block [ipx::add_address_block Reg0 [ipx::add_memory_map $name $core]]
       set_property range $range $addr_block
       set_property slave_memory_map_ref $name [ipx::get_bus_interfaces $name -of $core]
    }
}

# Finalize and Save
ipx::update_checksums $core
ipx::save_core $core

# Remove stale subcore references from component.xml
file rename -force ip/component.xml ip/component.bak
set ifile [open ip/component.bak r]
set ofile [open ip/component.xml w]
set buf [list]
set kill 0
while { [eof $ifile] != 1 } {
    gets $ifile line
    if { [string match {*<spirit:fileSet>*} $line] == 1 } {
        foreach l $buf { puts $ofile $l }
        set buf [list $line]
    } elseif { [llength $buf] > 0 } {
        lappend buf $line

        if { [string match {*</spirit:fileSet>*} $line] == 1 } {
            if { $kill == 0 } { foreach l $buf { puts $ofile $l } }
            set buf [list]
            set kill 0
        } elseif { [string match {*<xilinx:subCoreRef>*} $line] == 1 } {
            set kill 1
        }
    } else {
        puts $ofile $line
    }
}
close $ifile
close $ofile

set all_v_files [get_files -filter {USED_IN_SYNTHESIS == 1 && (FILE_TYPE == Verilog || FILE_TYPE == SystemVerilog || FILE_TYPE =="Verilog Header")}]
set fp [open /tmp/finn_dev_root/vivado_stitch_proj_4g29v702/all_verilog_srcs.txt w]
foreach vf $all_v_files {puts $fp $vf}
close $fp
