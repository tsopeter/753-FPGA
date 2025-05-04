//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Sun May  4 17:25:56 2025
//Host        : LAPTOP-3I9GNI1F running 64-bit major release  (build 9200)
//Command     : generate_target accel.bd
//Design      : accel
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "accel,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=accel,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "accel.hwdef" *) 
module accel
   (ap_clk_0,
    ap_ctrl_0_done,
    ap_ctrl_0_idle,
    ap_ctrl_0_ready,
    ap_ctrl_0_start,
    ap_rst_n_0,
    input_1_0_tdata,
    input_1_0_tready,
    input_1_0_tvalid,
    layer16_out_0_tdata,
    layer16_out_0_tready,
    layer16_out_0_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK_0, ASSOCIATED_BUSIF input_1_0:layer16_out_0, ASSOCIATED_RESET ap_rst_n_0, CLK_DOMAIN accel_ap_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 done" *) output ap_ctrl_0_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 idle" *) output ap_ctrl_0_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 ready" *) output ap_ctrl_0_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl_0 start" *) input ap_ctrl_0_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_1_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME input_1_0, CLK_DOMAIN accel_ap_clk_0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]input_1_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_1_0 TREADY" *) output input_1_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_1_0 TVALID" *) input input_1_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 layer16_out_0 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME layer16_out_0, CLK_DOMAIN accel_ap_clk_0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [15:0]layer16_out_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 layer16_out_0 TREADY" *) input layer16_out_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 layer16_out_0 TVALID" *) output layer16_out_0_tvalid;

  wire ap_clk_0_1;
  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire ap_rst_n_0_1;
  wire [7:0]input_1_0_1_TDATA;
  wire input_1_0_1_TREADY;
  wire input_1_0_1_TVALID;
  wire [15:0]myproject_0_layer16_out_TDATA;
  wire myproject_0_layer16_out_TREADY;
  wire myproject_0_layer16_out_TVALID;

  assign ap_clk_0_1 = ap_clk_0;
  assign ap_ctrl_0_1_start = ap_ctrl_0_start;
  assign ap_ctrl_0_done = ap_ctrl_0_1_done;
  assign ap_ctrl_0_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_0_ready = ap_ctrl_0_1_ready;
  assign ap_rst_n_0_1 = ap_rst_n_0;
  assign input_1_0_1_TDATA = input_1_0_tdata[7:0];
  assign input_1_0_1_TVALID = input_1_0_tvalid;
  assign input_1_0_tready = input_1_0_1_TREADY;
  assign layer16_out_0_tdata[15:0] = myproject_0_layer16_out_TDATA;
  assign layer16_out_0_tvalid = myproject_0_layer16_out_TVALID;
  assign myproject_0_layer16_out_TREADY = layer16_out_0_tready;
  accel_myproject_0_0 myproject_0
       (.ap_clk(ap_clk_0_1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_rst_n(ap_rst_n_0_1),
        .ap_start(ap_ctrl_0_1_start),
        .input_1_TDATA(input_1_0_1_TDATA),
        .input_1_TREADY(input_1_0_1_TREADY),
        .input_1_TVALID(input_1_0_1_TVALID),
        .layer16_out_TDATA(myproject_0_layer16_out_TDATA),
        .layer16_out_TREADY(myproject_0_layer16_out_TREADY),
        .layer16_out_TVALID(myproject_0_layer16_out_TVALID));
endmodule
