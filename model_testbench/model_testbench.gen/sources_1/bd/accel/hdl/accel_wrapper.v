//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Sun May  4 17:25:56 2025
//Host        : LAPTOP-3I9GNI1F running 64-bit major release  (build 9200)
//Command     : generate_target accel_wrapper.bd
//Design      : accel_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module accel_wrapper
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
  input ap_clk_0;
  output ap_ctrl_0_done;
  output ap_ctrl_0_idle;
  output ap_ctrl_0_ready;
  input ap_ctrl_0_start;
  input ap_rst_n_0;
  input [7:0]input_1_0_tdata;
  output input_1_0_tready;
  input input_1_0_tvalid;
  output [15:0]layer16_out_0_tdata;
  input layer16_out_0_tready;
  output layer16_out_0_tvalid;

  wire ap_clk_0;
  wire ap_ctrl_0_done;
  wire ap_ctrl_0_idle;
  wire ap_ctrl_0_ready;
  wire ap_ctrl_0_start;
  wire ap_rst_n_0;
  wire [7:0]input_1_0_tdata;
  wire input_1_0_tready;
  wire input_1_0_tvalid;
  wire [15:0]layer16_out_0_tdata;
  wire layer16_out_0_tready;
  wire layer16_out_0_tvalid;

  accel accel_i
       (.ap_clk_0(ap_clk_0),
        .ap_ctrl_0_done(ap_ctrl_0_done),
        .ap_ctrl_0_idle(ap_ctrl_0_idle),
        .ap_ctrl_0_ready(ap_ctrl_0_ready),
        .ap_ctrl_0_start(ap_ctrl_0_start),
        .ap_rst_n_0(ap_rst_n_0),
        .input_1_0_tdata(input_1_0_tdata),
        .input_1_0_tready(input_1_0_tready),
        .input_1_0_tvalid(input_1_0_tvalid),
        .layer16_out_0_tdata(layer16_out_0_tdata),
        .layer16_out_0_tready(layer16_out_0_tready),
        .layer16_out_0_tvalid(layer16_out_0_tvalid));
endmodule
