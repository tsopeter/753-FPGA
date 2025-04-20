//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Sun Apr 20 02:17:32 2025
//Host        : finn_dev_root running 64-bit Ubuntu 22.04.1 LTS
//Command     : generate_target finn_design.bd
//Design      : finn_design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MVAU_hls_0_imp_7OH4JA
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]MVAU_hls_0_wstrm_m_axis_0_TDATA;
  wire MVAU_hls_0_wstrm_m_axis_0_TREADY;
  wire MVAU_hls_0_wstrm_m_axis_0_TVALID;
  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_MVAU_hls_0_0 MVAU_hls_0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(in0_V_tdata),
        .in0_V_TREADY(in0_V_tready),
        .in0_V_TVALID(in0_V_tvalid),
        .out_V_TDATA(out_V_tdata),
        .out_V_TREADY(out_V_tready),
        .out_V_TVALID(out_V_tvalid),
        .weights_V_TDATA(MVAU_hls_0_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MVAU_hls_0_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MVAU_hls_0_wstrm_m_axis_0_TVALID));
  finn_design_MVAU_hls_0_wstrm_0 MVAU_hls_0_wstrm
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MVAU_hls_0_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MVAU_hls_0_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MVAU_hls_0_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module MVAU_hls_1_imp_ZIW0NT
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]MVAU_hls_1_wstrm_m_axis_0_TDATA;
  wire MVAU_hls_1_wstrm_m_axis_0_TREADY;
  wire MVAU_hls_1_wstrm_m_axis_0_TVALID;
  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_MVAU_hls_1_0 MVAU_hls_1
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(in0_V_tdata),
        .in0_V_TREADY(in0_V_tready),
        .in0_V_TVALID(in0_V_tvalid),
        .out_V_TDATA(out_V_tdata),
        .out_V_TREADY(out_V_tready),
        .out_V_TVALID(out_V_tvalid),
        .weights_V_TDATA(MVAU_hls_1_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MVAU_hls_1_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MVAU_hls_1_wstrm_m_axis_0_TVALID));
  finn_design_MVAU_hls_1_wstrm_0 MVAU_hls_1_wstrm
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MVAU_hls_1_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MVAU_hls_1_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MVAU_hls_1_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module MVAU_hls_2_imp_1WP2WTL
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]MVAU_hls_2_wstrm_m_axis_0_TDATA;
  wire MVAU_hls_2_wstrm_m_axis_0_TREADY;
  wire MVAU_hls_2_wstrm_m_axis_0_TVALID;
  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_MVAU_hls_2_0 MVAU_hls_2
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(in0_V_tdata),
        .in0_V_TREADY(in0_V_tready),
        .in0_V_TVALID(in0_V_tvalid),
        .out_V_TDATA(out_V_tdata),
        .out_V_TREADY(out_V_tready),
        .out_V_TVALID(out_V_tvalid),
        .weights_V_TDATA(MVAU_hls_2_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MVAU_hls_2_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MVAU_hls_2_wstrm_m_axis_0_TVALID));
  finn_design_MVAU_hls_2_wstrm_0 MVAU_hls_2_wstrm
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MVAU_hls_2_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MVAU_hls_2_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MVAU_hls_2_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module MVAU_hls_3_imp_U0RWZQ
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]MVAU_hls_3_wstrm_m_axis_0_TDATA;
  wire MVAU_hls_3_wstrm_m_axis_0_TREADY;
  wire MVAU_hls_3_wstrm_m_axis_0_TVALID;
  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_MVAU_hls_3_0 MVAU_hls_3
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(in0_V_tdata),
        .in0_V_TREADY(in0_V_tready),
        .in0_V_TVALID(in0_V_tvalid),
        .out_V_TDATA(out_V_tdata),
        .out_V_TREADY(out_V_tready),
        .out_V_TVALID(out_V_tvalid),
        .weights_V_TDATA(MVAU_hls_3_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MVAU_hls_3_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MVAU_hls_3_wstrm_m_axis_0_TVALID));
  finn_design_MVAU_hls_3_wstrm_0 MVAU_hls_3_wstrm
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MVAU_hls_3_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MVAU_hls_3_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MVAU_hls_3_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module MVAU_hls_4_imp_6UFUIX
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]MVAU_hls_4_wstrm_m_axis_0_TDATA;
  wire MVAU_hls_4_wstrm_m_axis_0_TREADY;
  wire MVAU_hls_4_wstrm_m_axis_0_TVALID;
  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_MVAU_hls_4_0 MVAU_hls_4
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(in0_V_tdata),
        .in0_V_TREADY(in0_V_tready),
        .in0_V_TVALID(in0_V_tvalid),
        .out_V_TDATA(out_V_tdata),
        .out_V_TREADY(out_V_tready),
        .out_V_TVALID(out_V_tvalid),
        .weights_V_TDATA(MVAU_hls_4_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MVAU_hls_4_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MVAU_hls_4_wstrm_m_axis_0_TVALID));
  finn_design_MVAU_hls_4_wstrm_0 MVAU_hls_4_wstrm
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MVAU_hls_4_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MVAU_hls_4_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MVAU_hls_4_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module MVAU_hls_5_imp_10D3G9Y
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]MVAU_hls_5_wstrm_m_axis_0_TDATA;
  wire MVAU_hls_5_wstrm_m_axis_0_TREADY;
  wire MVAU_hls_5_wstrm_m_axis_0_TVALID;
  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_MVAU_hls_5_0 MVAU_hls_5
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(in0_V_tdata),
        .in0_V_TREADY(in0_V_tready),
        .in0_V_TVALID(in0_V_tvalid),
        .out_V_TDATA(out_V_tdata),
        .out_V_TREADY(out_V_tready),
        .out_V_TVALID(out_V_tvalid),
        .weights_V_TDATA(MVAU_hls_5_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MVAU_hls_5_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MVAU_hls_5_wstrm_m_axis_0_TVALID));
  finn_design_MVAU_hls_5_wstrm_0 MVAU_hls_5_wstrm
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MVAU_hls_5_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MVAU_hls_5_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MVAU_hls_5_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module MVAU_hls_6_imp_1VUVQAE
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]MVAU_hls_6_wstrm_m_axis_0_TDATA;
  wire MVAU_hls_6_wstrm_m_axis_0_TREADY;
  wire MVAU_hls_6_wstrm_m_axis_0_TVALID;
  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_MVAU_hls_6_0 MVAU_hls_6
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(in0_V_tdata),
        .in0_V_TREADY(in0_V_tready),
        .in0_V_TVALID(in0_V_tvalid),
        .out_V_TDATA(out_V_tdata),
        .out_V_TREADY(out_V_tready),
        .out_V_TVALID(out_V_tvalid),
        .weights_V_TDATA(MVAU_hls_6_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MVAU_hls_6_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MVAU_hls_6_wstrm_m_axis_0_TVALID));
  finn_design_MVAU_hls_6_wstrm_0 MVAU_hls_6_wstrm
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MVAU_hls_6_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MVAU_hls_6_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MVAU_hls_6_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module MVAU_hls_7_imp_UUTMEX
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]MVAU_hls_7_wstrm_m_axis_0_TDATA;
  wire MVAU_hls_7_wstrm_m_axis_0_TREADY;
  wire MVAU_hls_7_wstrm_m_axis_0_TVALID;
  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_MVAU_hls_7_0 MVAU_hls_7
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(in0_V_tdata),
        .in0_V_TREADY(in0_V_tready),
        .in0_V_TVALID(in0_V_tvalid),
        .out_V_TDATA(out_V_tdata),
        .out_V_TREADY(out_V_tready),
        .out_V_TVALID(out_V_tvalid),
        .weights_V_TDATA(MVAU_hls_7_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MVAU_hls_7_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MVAU_hls_7_wstrm_m_axis_0_TVALID));
  finn_design_MVAU_hls_7_wstrm_0 MVAU_hls_7_wstrm
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MVAU_hls_7_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MVAU_hls_7_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MVAU_hls_7_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module MVAU_rtl_0_imp_1DNJB9Y
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [15:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire [7:0]MVAU_rtl_0_wstrm_m_axis_0_TDATA;
  wire MVAU_rtl_0_wstrm_m_axis_0_TREADY;
  wire MVAU_rtl_0_wstrm_m_axis_0_TVALID;
  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [15:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_MVAU_rtl_0_0 MVAU_rtl_0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(in0_V_tdata),
        .in0_V_TREADY(in0_V_tready),
        .in0_V_TVALID(in0_V_tvalid),
        .out_V_TDATA(out_V_tdata),
        .out_V_TREADY(out_V_tready),
        .out_V_TVALID(out_V_tvalid),
        .weights_V_TDATA(MVAU_rtl_0_wstrm_m_axis_0_TDATA),
        .weights_V_TREADY(MVAU_rtl_0_wstrm_m_axis_0_TREADY),
        .weights_V_TVALID(MVAU_rtl_0_wstrm_m_axis_0_TVALID));
  finn_design_MVAU_rtl_0_wstrm_0 MVAU_rtl_0_wstrm
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .araddr({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .arprot({1'b0,1'b0,1'b0}),
        .arvalid(1'b0),
        .awaddr({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .awprot({1'b0,1'b0,1'b0}),
        .awvalid(1'b0),
        .bready(1'b0),
        .m_axis_0_tdata(MVAU_rtl_0_wstrm_m_axis_0_TDATA),
        .m_axis_0_tready(MVAU_rtl_0_wstrm_m_axis_0_TREADY),
        .m_axis_0_tvalid(MVAU_rtl_0_wstrm_m_axis_0_TVALID),
        .rready(1'b0),
        .wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wstrb({1'b1,1'b1,1'b1,1'b1}),
        .wvalid(1'b0));
endmodule

module StreamingFIFO_rtl_1_0_imp_63VN1H
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_fifo_0 fifo
       (.m_axis_tdata(out_V_tdata),
        .m_axis_tready(out_V_tready),
        .m_axis_tvalid(out_V_tvalid),
        .s_axis_aclk(ap_clk),
        .s_axis_aresetn(ap_rst_n),
        .s_axis_tdata(in0_V_tdata),
        .s_axis_tready(in0_V_tready),
        .s_axis_tvalid(in0_V_tvalid));
endmodule

module StreamingFIFO_rtl_1_1_imp_13AVZT6
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_fifo_1 fifo
       (.m_axis_tdata(out_V_tdata),
        .m_axis_tready(out_V_tready),
        .m_axis_tvalid(out_V_tvalid),
        .s_axis_aclk(ap_clk),
        .s_axis_aresetn(ap_rst_n),
        .s_axis_tdata(in0_V_tdata),
        .s_axis_tready(in0_V_tready),
        .s_axis_tvalid(in0_V_tvalid));
endmodule

module StreamingFIFO_rtl_1_2_imp_1XFEDQ2
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_fifo_2 fifo
       (.m_axis_tdata(out_V_tdata),
        .m_axis_tready(out_V_tready),
        .m_axis_tvalid(out_V_tvalid),
        .s_axis_aclk(ap_clk),
        .s_axis_aresetn(ap_rst_n),
        .s_axis_tdata(in0_V_tdata),
        .s_axis_tready(in0_V_tready),
        .s_axis_tvalid(in0_V_tvalid));
endmodule

module StreamingFIFO_rtl_1_3_imp_R31YFP
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_fifo_3 fifo
       (.m_axis_tdata(out_V_tdata),
        .m_axis_tready(out_V_tready),
        .m_axis_tvalid(out_V_tvalid),
        .s_axis_aclk(ap_clk),
        .s_axis_aresetn(ap_rst_n),
        .s_axis_tdata(in0_V_tdata),
        .s_axis_tready(in0_V_tready),
        .s_axis_tvalid(in0_V_tvalid));
endmodule

module StreamingFIFO_rtl_2_0_imp_TIN64E
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_fifo_4 fifo
       (.m_axis_tdata(out_V_tdata),
        .m_axis_tready(out_V_tready),
        .m_axis_tvalid(out_V_tvalid),
        .s_axis_aclk(ap_clk),
        .s_axis_aresetn(ap_rst_n),
        .s_axis_tdata(in0_V_tdata),
        .s_axis_tready(in0_V_tready),
        .s_axis_tvalid(in0_V_tvalid));
endmodule

module StreamingFIFO_rtl_3_0_imp_1WNHJUW
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_fifo_5 fifo
       (.m_axis_tdata(out_V_tdata),
        .m_axis_tready(out_V_tready),
        .m_axis_tvalid(out_V_tvalid),
        .s_axis_aclk(ap_clk),
        .s_axis_aresetn(ap_rst_n),
        .s_axis_tdata(in0_V_tdata),
        .s_axis_tready(in0_V_tready),
        .s_axis_tvalid(in0_V_tvalid));
endmodule

module StreamingFIFO_rtl_3_1_imp_U6M6QV
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_fifo_6 fifo
       (.m_axis_tdata(out_V_tdata),
        .m_axis_tready(out_V_tready),
        .m_axis_tvalid(out_V_tvalid),
        .s_axis_aclk(ap_clk),
        .s_axis_aresetn(ap_rst_n),
        .s_axis_tdata(in0_V_tdata),
        .s_axis_tready(in0_V_tready),
        .s_axis_tvalid(in0_V_tvalid));
endmodule

module StreamingFIFO_rtl_3_2_imp_7L1ZKN
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_fifo_7 fifo
       (.m_axis_tdata(out_V_tdata),
        .m_axis_tready(out_V_tready),
        .m_axis_tvalid(out_V_tvalid),
        .s_axis_aclk(ap_clk),
        .s_axis_aresetn(ap_rst_n),
        .s_axis_tdata(in0_V_tdata),
        .s_axis_tready(in0_V_tready),
        .s_axis_tvalid(in0_V_tvalid));
endmodule

module StreamingFIFO_rtl_3_3_imp_ZS1U7S
   (ap_clk,
    ap_rst_n,
    in0_V_tdata,
    in0_V_tready,
    in0_V_tvalid,
    out_V_tdata,
    out_V_tready,
    out_V_tvalid);
  input ap_clk;
  input ap_rst_n;
  input [7:0]in0_V_tdata;
  output in0_V_tready;
  input in0_V_tvalid;
  output [7:0]out_V_tdata;
  input out_V_tready;
  output out_V_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]in0_V_tdata;
  wire in0_V_tready;
  wire in0_V_tvalid;
  wire [7:0]out_V_tdata;
  wire out_V_tready;
  wire out_V_tvalid;

  finn_design_fifo_8 fifo
       (.m_axis_tdata(out_V_tdata),
        .m_axis_tready(out_V_tready),
        .m_axis_tvalid(out_V_tvalid),
        .s_axis_aclk(ap_clk),
        .s_axis_aresetn(ap_rst_n),
        .s_axis_tdata(in0_V_tdata),
        .s_axis_tready(in0_V_tready),
        .s_axis_tvalid(in0_V_tvalid));
endmodule

(* CORE_GENERATION_INFO = "finn_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=finn_design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=67,numReposBlks=49,numNonXlnxBlks=0,numHierBlks=18,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=8,numHdlrefBlks=23,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "finn_design.hwdef" *) 
module finn_design
   (ap_clk,
    ap_rst_n,
    m_axis_0_tdata,
    m_axis_0_tready,
    m_axis_0_tvalid,
    s_axis_0_tdata,
    s_axis_0_tready,
    s_axis_0_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF s_axis_0:m_axis_0, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN finn_design_ap_clk_0, FREQ_HZ 83333333, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 TDATA" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_0, CLK_DOMAIN finn_design_ap_clk_0, FREQ_HZ 83333333, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [15:0]m_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 TREADY" *) input m_axis_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_0 TVALID" *) output m_axis_0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TDATA" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_0, CLK_DOMAIN finn_design_ap_clk_0, FREQ_HZ 83333333, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]s_axis_0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TREADY" *) output s_axis_0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_0 TVALID" *) input s_axis_0_tvalid;

  wire [7:0]ConvolutionInputGenerator_rtl_0_out_V_TDATA;
  wire ConvolutionInputGenerator_rtl_0_out_V_TREADY;
  wire ConvolutionInputGenerator_rtl_0_out_V_TVALID;
  wire [7:0]ConvolutionInputGenerator_rtl_1_out_V_TDATA;
  wire ConvolutionInputGenerator_rtl_1_out_V_TREADY;
  wire ConvolutionInputGenerator_rtl_1_out_V_TVALID;
  wire [7:0]ConvolutionInputGenerator_rtl_2_out_V_TDATA;
  wire ConvolutionInputGenerator_rtl_2_out_V_TREADY;
  wire ConvolutionInputGenerator_rtl_2_out_V_TVALID;
  wire [7:0]ConvolutionInputGenerator_rtl_3_out_V_TDATA;
  wire ConvolutionInputGenerator_rtl_3_out_V_TREADY;
  wire ConvolutionInputGenerator_rtl_3_out_V_TVALID;
  wire [7:0]ConvolutionInputGenerator_rtl_4_out_V_TDATA;
  wire ConvolutionInputGenerator_rtl_4_out_V_TREADY;
  wire ConvolutionInputGenerator_rtl_4_out_V_TVALID;
  wire [7:0]MVAU_hls_0_out_V_TDATA;
  wire MVAU_hls_0_out_V_TREADY;
  wire MVAU_hls_0_out_V_TVALID;
  wire [7:0]MVAU_hls_1_out_V_TDATA;
  wire MVAU_hls_1_out_V_TREADY;
  wire MVAU_hls_1_out_V_TVALID;
  wire [7:0]MVAU_hls_2_out_V_TDATA;
  wire MVAU_hls_2_out_V_TREADY;
  wire MVAU_hls_2_out_V_TVALID;
  wire [7:0]MVAU_hls_3_out_V_TDATA;
  wire MVAU_hls_3_out_V_TREADY;
  wire MVAU_hls_3_out_V_TVALID;
  wire [7:0]MVAU_hls_4_out_V_TDATA;
  wire MVAU_hls_4_out_V_TREADY;
  wire MVAU_hls_4_out_V_TVALID;
  wire [7:0]MVAU_hls_5_out_V_TDATA;
  wire MVAU_hls_5_out_V_TREADY;
  wire MVAU_hls_5_out_V_TVALID;
  wire [7:0]MVAU_hls_6_out_V_TDATA;
  wire MVAU_hls_6_out_V_TREADY;
  wire MVAU_hls_6_out_V_TVALID;
  wire [7:0]MVAU_hls_7_out_V_TDATA;
  wire MVAU_hls_7_out_V_TREADY;
  wire MVAU_hls_7_out_V_TVALID;
  wire [15:0]MVAU_rtl_0_out_V_TDATA;
  wire MVAU_rtl_0_out_V_TREADY;
  wire MVAU_rtl_0_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_0_out_V_TDATA;
  wire StreamingFIFO_rtl_0_out_V_TREADY;
  wire StreamingFIFO_rtl_0_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_10_out_V_TDATA;
  wire StreamingFIFO_rtl_10_out_V_TREADY;
  wire StreamingFIFO_rtl_10_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_11_out_V_TDATA;
  wire StreamingFIFO_rtl_11_out_V_TREADY;
  wire StreamingFIFO_rtl_11_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_12_out_V_TDATA;
  wire StreamingFIFO_rtl_12_out_V_TREADY;
  wire StreamingFIFO_rtl_12_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_13_out_V_TDATA;
  wire StreamingFIFO_rtl_13_out_V_TREADY;
  wire StreamingFIFO_rtl_13_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_1_0_out_V_TDATA;
  wire StreamingFIFO_rtl_1_0_out_V_TREADY;
  wire StreamingFIFO_rtl_1_0_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_1_1_out_V_TDATA;
  wire StreamingFIFO_rtl_1_1_out_V_TREADY;
  wire StreamingFIFO_rtl_1_1_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_1_2_out_V_TDATA;
  wire StreamingFIFO_rtl_1_2_out_V_TREADY;
  wire StreamingFIFO_rtl_1_2_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_1_3_out_V_TDATA;
  wire StreamingFIFO_rtl_1_3_out_V_TREADY;
  wire StreamingFIFO_rtl_1_3_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_1_4_out_V_TDATA;
  wire StreamingFIFO_rtl_1_4_out_V_TREADY;
  wire StreamingFIFO_rtl_1_4_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_1_5_out_V_TDATA;
  wire StreamingFIFO_rtl_1_5_out_V_TREADY;
  wire StreamingFIFO_rtl_1_5_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_2_0_out_V_TDATA;
  wire StreamingFIFO_rtl_2_0_out_V_TREADY;
  wire StreamingFIFO_rtl_2_0_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_2_1_out_V_TDATA;
  wire StreamingFIFO_rtl_2_1_out_V_TREADY;
  wire StreamingFIFO_rtl_2_1_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_3_0_out_V_TDATA;
  wire StreamingFIFO_rtl_3_0_out_V_TREADY;
  wire StreamingFIFO_rtl_3_0_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_3_1_out_V_TDATA;
  wire StreamingFIFO_rtl_3_1_out_V_TREADY;
  wire StreamingFIFO_rtl_3_1_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_3_2_out_V_TDATA;
  wire StreamingFIFO_rtl_3_2_out_V_TREADY;
  wire StreamingFIFO_rtl_3_2_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_3_3_out_V_TDATA;
  wire StreamingFIFO_rtl_3_3_out_V_TREADY;
  wire StreamingFIFO_rtl_3_3_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_3_4_out_V_TDATA;
  wire StreamingFIFO_rtl_3_4_out_V_TREADY;
  wire StreamingFIFO_rtl_3_4_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_4_out_V_TDATA;
  wire StreamingFIFO_rtl_4_out_V_TREADY;
  wire StreamingFIFO_rtl_4_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_5_0_out_V_TDATA;
  wire StreamingFIFO_rtl_5_0_out_V_TREADY;
  wire StreamingFIFO_rtl_5_0_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_5_1_out_V_TDATA;
  wire StreamingFIFO_rtl_5_1_out_V_TREADY;
  wire StreamingFIFO_rtl_5_1_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_6_out_V_TDATA;
  wire StreamingFIFO_rtl_6_out_V_TREADY;
  wire StreamingFIFO_rtl_6_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_7_out_V_TDATA;
  wire StreamingFIFO_rtl_7_out_V_TREADY;
  wire StreamingFIFO_rtl_7_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_8_out_V_TDATA;
  wire StreamingFIFO_rtl_8_out_V_TREADY;
  wire StreamingFIFO_rtl_8_out_V_TVALID;
  wire [7:0]StreamingFIFO_rtl_9_out_V_TDATA;
  wire StreamingFIFO_rtl_9_out_V_TREADY;
  wire StreamingFIFO_rtl_9_out_V_TVALID;
  wire ap_clk;
  wire ap_rst_n;
  wire [15:0]m_axis_0_tdata;
  wire m_axis_0_tready;
  wire m_axis_0_tvalid;
  wire [7:0]s_axis_0_tdata;
  wire s_axis_0_tready;
  wire s_axis_0_tvalid;

  finn_design_ConvolutionInputGenerator_rtl_0_0 ConvolutionInputGenerator_rtl_0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(StreamingFIFO_rtl_0_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_rtl_0_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_rtl_0_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_rtl_0_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_rtl_0_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_rtl_0_out_V_TVALID));
  finn_design_ConvolutionInputGenerator_rtl_1_0 ConvolutionInputGenerator_rtl_1
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(StreamingFIFO_rtl_2_1_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_rtl_2_1_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_rtl_2_1_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_rtl_1_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_rtl_1_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_rtl_1_out_V_TVALID));
  finn_design_ConvolutionInputGenerator_rtl_2_0 ConvolutionInputGenerator_rtl_2
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(StreamingFIFO_rtl_4_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_rtl_4_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_rtl_4_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_rtl_2_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_rtl_2_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_rtl_2_out_V_TVALID));
  finn_design_ConvolutionInputGenerator_rtl_3_0 ConvolutionInputGenerator_rtl_3
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(StreamingFIFO_rtl_6_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_rtl_6_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_rtl_6_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_rtl_3_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_rtl_3_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_rtl_3_out_V_TVALID));
  finn_design_ConvolutionInputGenerator_rtl_4_0 ConvolutionInputGenerator_rtl_4
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(StreamingFIFO_rtl_8_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_rtl_8_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_rtl_8_out_V_TVALID),
        .out_V_TDATA(ConvolutionInputGenerator_rtl_4_out_V_TDATA),
        .out_V_TREADY(ConvolutionInputGenerator_rtl_4_out_V_TREADY),
        .out_V_TVALID(ConvolutionInputGenerator_rtl_4_out_V_TVALID));
  MVAU_hls_0_imp_7OH4JA MVAU_hls_0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(StreamingFIFO_rtl_1_5_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_rtl_1_5_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_rtl_1_5_out_V_TVALID),
        .out_V_tdata(MVAU_hls_0_out_V_TDATA),
        .out_V_tready(MVAU_hls_0_out_V_TREADY),
        .out_V_tvalid(MVAU_hls_0_out_V_TVALID));
  MVAU_hls_1_imp_ZIW0NT MVAU_hls_1
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(StreamingFIFO_rtl_3_4_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_rtl_3_4_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_rtl_3_4_out_V_TVALID),
        .out_V_tdata(MVAU_hls_1_out_V_TDATA),
        .out_V_tready(MVAU_hls_1_out_V_TREADY),
        .out_V_tvalid(MVAU_hls_1_out_V_TVALID));
  MVAU_hls_2_imp_1WP2WTL MVAU_hls_2
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(StreamingFIFO_rtl_5_1_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_rtl_5_1_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_rtl_5_1_out_V_TVALID),
        .out_V_tdata(MVAU_hls_2_out_V_TDATA),
        .out_V_tready(MVAU_hls_2_out_V_TREADY),
        .out_V_tvalid(MVAU_hls_2_out_V_TVALID));
  MVAU_hls_3_imp_U0RWZQ MVAU_hls_3
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(StreamingFIFO_rtl_7_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_rtl_7_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_rtl_7_out_V_TVALID),
        .out_V_tdata(MVAU_hls_3_out_V_TDATA),
        .out_V_tready(MVAU_hls_3_out_V_TREADY),
        .out_V_tvalid(MVAU_hls_3_out_V_TVALID));
  MVAU_hls_4_imp_6UFUIX MVAU_hls_4
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(StreamingFIFO_rtl_9_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_rtl_9_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_rtl_9_out_V_TVALID),
        .out_V_tdata(MVAU_hls_4_out_V_TDATA),
        .out_V_tready(MVAU_hls_4_out_V_TREADY),
        .out_V_tvalid(MVAU_hls_4_out_V_TVALID));
  MVAU_hls_5_imp_10D3G9Y MVAU_hls_5
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(StreamingFIFO_rtl_10_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_rtl_10_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_rtl_10_out_V_TVALID),
        .out_V_tdata(MVAU_hls_5_out_V_TDATA),
        .out_V_tready(MVAU_hls_5_out_V_TREADY),
        .out_V_tvalid(MVAU_hls_5_out_V_TVALID));
  MVAU_hls_6_imp_1VUVQAE MVAU_hls_6
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(StreamingFIFO_rtl_11_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_rtl_11_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_rtl_11_out_V_TVALID),
        .out_V_tdata(MVAU_hls_6_out_V_TDATA),
        .out_V_tready(MVAU_hls_6_out_V_TREADY),
        .out_V_tvalid(MVAU_hls_6_out_V_TVALID));
  MVAU_hls_7_imp_UUTMEX MVAU_hls_7
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(StreamingFIFO_rtl_12_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_rtl_12_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_rtl_12_out_V_TVALID),
        .out_V_tdata(MVAU_hls_7_out_V_TDATA),
        .out_V_tready(MVAU_hls_7_out_V_TREADY),
        .out_V_tvalid(MVAU_hls_7_out_V_TVALID));
  MVAU_rtl_0_imp_1DNJB9Y MVAU_rtl_0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(StreamingFIFO_rtl_13_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_rtl_13_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_rtl_13_out_V_TVALID),
        .out_V_tdata(MVAU_rtl_0_out_V_TDATA),
        .out_V_tready(MVAU_rtl_0_out_V_TREADY),
        .out_V_tvalid(MVAU_rtl_0_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_0_0 StreamingFIFO_rtl_0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(s_axis_0_tdata),
        .in0_V_TREADY(s_axis_0_tready),
        .in0_V_TVALID(s_axis_0_tvalid),
        .out_V_TDATA(StreamingFIFO_rtl_0_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_0_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_0_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_10_0 StreamingFIFO_rtl_10
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(MVAU_hls_4_out_V_TDATA),
        .in0_V_TREADY(MVAU_hls_4_out_V_TREADY),
        .in0_V_TVALID(MVAU_hls_4_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_rtl_10_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_10_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_10_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_11_0 StreamingFIFO_rtl_11
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(MVAU_hls_5_out_V_TDATA),
        .in0_V_TREADY(MVAU_hls_5_out_V_TREADY),
        .in0_V_TVALID(MVAU_hls_5_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_rtl_11_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_11_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_11_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_12_0 StreamingFIFO_rtl_12
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(MVAU_hls_6_out_V_TDATA),
        .in0_V_TREADY(MVAU_hls_6_out_V_TREADY),
        .in0_V_TVALID(MVAU_hls_6_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_rtl_12_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_12_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_12_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_13_0 StreamingFIFO_rtl_13
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(MVAU_hls_7_out_V_TDATA),
        .in0_V_TREADY(MVAU_hls_7_out_V_TREADY),
        .in0_V_TVALID(MVAU_hls_7_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_rtl_13_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_13_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_13_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_14_0 StreamingFIFO_rtl_14
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(MVAU_rtl_0_out_V_TDATA),
        .in0_V_TREADY(MVAU_rtl_0_out_V_TREADY),
        .in0_V_TVALID(MVAU_rtl_0_out_V_TVALID),
        .out_V_TDATA(m_axis_0_tdata),
        .out_V_TREADY(m_axis_0_tready),
        .out_V_TVALID(m_axis_0_tvalid));
  StreamingFIFO_rtl_1_0_imp_63VN1H StreamingFIFO_rtl_1_0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(ConvolutionInputGenerator_rtl_0_out_V_TDATA),
        .in0_V_tready(ConvolutionInputGenerator_rtl_0_out_V_TREADY),
        .in0_V_tvalid(ConvolutionInputGenerator_rtl_0_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_rtl_1_0_out_V_TDATA),
        .out_V_tready(StreamingFIFO_rtl_1_0_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_rtl_1_0_out_V_TVALID));
  StreamingFIFO_rtl_1_1_imp_13AVZT6 StreamingFIFO_rtl_1_1
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(StreamingFIFO_rtl_1_0_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_rtl_1_0_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_rtl_1_0_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_rtl_1_1_out_V_TDATA),
        .out_V_tready(StreamingFIFO_rtl_1_1_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_rtl_1_1_out_V_TVALID));
  StreamingFIFO_rtl_1_2_imp_1XFEDQ2 StreamingFIFO_rtl_1_2
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(StreamingFIFO_rtl_1_1_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_rtl_1_1_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_rtl_1_1_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_rtl_1_2_out_V_TDATA),
        .out_V_tready(StreamingFIFO_rtl_1_2_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_rtl_1_2_out_V_TVALID));
  StreamingFIFO_rtl_1_3_imp_R31YFP StreamingFIFO_rtl_1_3
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(StreamingFIFO_rtl_1_2_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_rtl_1_2_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_rtl_1_2_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_rtl_1_3_out_V_TDATA),
        .out_V_tready(StreamingFIFO_rtl_1_3_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_rtl_1_3_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_1_4_0 StreamingFIFO_rtl_1_4
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(StreamingFIFO_rtl_1_3_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_rtl_1_3_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_rtl_1_3_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_rtl_1_4_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_1_4_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_1_4_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_1_5_0 StreamingFIFO_rtl_1_5
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(StreamingFIFO_rtl_1_4_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_rtl_1_4_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_rtl_1_4_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_rtl_1_5_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_1_5_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_1_5_out_V_TVALID));
  StreamingFIFO_rtl_2_0_imp_TIN64E StreamingFIFO_rtl_2_0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(MVAU_hls_0_out_V_TDATA),
        .in0_V_tready(MVAU_hls_0_out_V_TREADY),
        .in0_V_tvalid(MVAU_hls_0_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_rtl_2_0_out_V_TDATA),
        .out_V_tready(StreamingFIFO_rtl_2_0_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_rtl_2_0_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_2_1_0 StreamingFIFO_rtl_2_1
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(StreamingFIFO_rtl_2_0_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_rtl_2_0_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_rtl_2_0_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_rtl_2_1_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_2_1_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_2_1_out_V_TVALID));
  StreamingFIFO_rtl_3_0_imp_1WNHJUW StreamingFIFO_rtl_3_0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(ConvolutionInputGenerator_rtl_1_out_V_TDATA),
        .in0_V_tready(ConvolutionInputGenerator_rtl_1_out_V_TREADY),
        .in0_V_tvalid(ConvolutionInputGenerator_rtl_1_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_rtl_3_0_out_V_TDATA),
        .out_V_tready(StreamingFIFO_rtl_3_0_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_rtl_3_0_out_V_TVALID));
  StreamingFIFO_rtl_3_1_imp_U6M6QV StreamingFIFO_rtl_3_1
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(StreamingFIFO_rtl_3_0_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_rtl_3_0_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_rtl_3_0_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_rtl_3_1_out_V_TDATA),
        .out_V_tready(StreamingFIFO_rtl_3_1_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_rtl_3_1_out_V_TVALID));
  StreamingFIFO_rtl_3_2_imp_7L1ZKN StreamingFIFO_rtl_3_2
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(StreamingFIFO_rtl_3_1_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_rtl_3_1_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_rtl_3_1_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_rtl_3_2_out_V_TDATA),
        .out_V_tready(StreamingFIFO_rtl_3_2_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_rtl_3_2_out_V_TVALID));
  StreamingFIFO_rtl_3_3_imp_ZS1U7S StreamingFIFO_rtl_3_3
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_tdata(StreamingFIFO_rtl_3_2_out_V_TDATA),
        .in0_V_tready(StreamingFIFO_rtl_3_2_out_V_TREADY),
        .in0_V_tvalid(StreamingFIFO_rtl_3_2_out_V_TVALID),
        .out_V_tdata(StreamingFIFO_rtl_3_3_out_V_TDATA),
        .out_V_tready(StreamingFIFO_rtl_3_3_out_V_TREADY),
        .out_V_tvalid(StreamingFIFO_rtl_3_3_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_3_4_0 StreamingFIFO_rtl_3_4
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(StreamingFIFO_rtl_3_3_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_rtl_3_3_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_rtl_3_3_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_rtl_3_4_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_3_4_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_3_4_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_4_0 StreamingFIFO_rtl_4
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(MVAU_hls_1_out_V_TDATA),
        .in0_V_TREADY(MVAU_hls_1_out_V_TREADY),
        .in0_V_TVALID(MVAU_hls_1_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_rtl_4_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_4_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_4_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_5_0_0 StreamingFIFO_rtl_5_0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(ConvolutionInputGenerator_rtl_2_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_rtl_2_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_rtl_2_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_rtl_5_0_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_5_0_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_5_0_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_5_1_0 StreamingFIFO_rtl_5_1
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(StreamingFIFO_rtl_5_0_out_V_TDATA),
        .in0_V_TREADY(StreamingFIFO_rtl_5_0_out_V_TREADY),
        .in0_V_TVALID(StreamingFIFO_rtl_5_0_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_rtl_5_1_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_5_1_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_5_1_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_6_0 StreamingFIFO_rtl_6
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(MVAU_hls_2_out_V_TDATA),
        .in0_V_TREADY(MVAU_hls_2_out_V_TREADY),
        .in0_V_TVALID(MVAU_hls_2_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_rtl_6_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_6_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_6_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_7_0 StreamingFIFO_rtl_7
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(ConvolutionInputGenerator_rtl_3_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_rtl_3_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_rtl_3_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_rtl_7_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_7_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_7_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_8_0 StreamingFIFO_rtl_8
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(MVAU_hls_3_out_V_TDATA),
        .in0_V_TREADY(MVAU_hls_3_out_V_TREADY),
        .in0_V_TVALID(MVAU_hls_3_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_rtl_8_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_8_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_8_out_V_TVALID));
  finn_design_StreamingFIFO_rtl_9_0 StreamingFIFO_rtl_9
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in0_V_TDATA(ConvolutionInputGenerator_rtl_4_out_V_TDATA),
        .in0_V_TREADY(ConvolutionInputGenerator_rtl_4_out_V_TREADY),
        .in0_V_TVALID(ConvolutionInputGenerator_rtl_4_out_V_TVALID),
        .out_V_TDATA(StreamingFIFO_rtl_9_out_V_TDATA),
        .out_V_TREADY(StreamingFIFO_rtl_9_out_V_TREADY),
        .out_V_TVALID(StreamingFIFO_rtl_9_out_V_TVALID));
endmodule
