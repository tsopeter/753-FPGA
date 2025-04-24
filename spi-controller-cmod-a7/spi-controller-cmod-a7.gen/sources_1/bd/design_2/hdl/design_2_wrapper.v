//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Thu Apr 24 16:26:36 2025
//Host        : LAPTOP-3I9GNI1F running 64-bit major release  (build 9200)
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
   (clk_0,
    probe0_0,
    probe1_0,
    probe2_0,
    probe3_0,
    probe4_0,
    probe5_0);
  input clk_0;
  input [0:0]probe0_0;
  input [0:0]probe1_0;
  input [0:0]probe2_0;
  input [0:0]probe3_0;
  input [0:0]probe4_0;
  input [7:0]probe5_0;

  wire clk_0;
  wire [0:0]probe0_0;
  wire [0:0]probe1_0;
  wire [0:0]probe2_0;
  wire [0:0]probe3_0;
  wire [0:0]probe4_0;
  wire [7:0]probe5_0;

  design_2 design_2_i
       (.clk_0(clk_0),
        .probe0_0(probe0_0),
        .probe1_0(probe1_0),
        .probe2_0(probe2_0),
        .probe3_0(probe3_0),
        .probe4_0(probe4_0),
        .probe5_0(probe5_0));
endmodule
