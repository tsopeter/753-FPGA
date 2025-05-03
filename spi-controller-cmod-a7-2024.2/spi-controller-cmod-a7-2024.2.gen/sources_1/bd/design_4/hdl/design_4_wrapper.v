//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Sat May  3 18:12:04 2025
//Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
//Command     : generate_target design_4_wrapper.bd
//Design      : design_4_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_4_wrapper
   (clk_in1_0,
    clk_out1_0,
    reset_0);
  input clk_in1_0;
  output clk_out1_0;
  input reset_0;

  wire clk_in1_0;
  wire clk_out1_0;
  wire reset_0;

  design_4 design_4_i
       (.clk_in1_0(clk_in1_0),
        .clk_out1_0(clk_out1_0),
        .reset_0(reset_0));
endmodule
