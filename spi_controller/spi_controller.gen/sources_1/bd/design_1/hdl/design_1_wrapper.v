//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Wed Apr 23 20:25:27 2025
//Host        : LAPTOP-3I9GNI1F running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (FCLK,
    M_AVALON_0_address,
    M_AVALON_0_read,
    M_AVALON_0_readdata,
    M_AVALON_0_write,
    M_AVALON_0_writedata);
  output FCLK;
  output [31:0]M_AVALON_0_address;
  output M_AVALON_0_read;
  input [31:0]M_AVALON_0_readdata;
  output M_AVALON_0_write;
  output [31:0]M_AVALON_0_writedata;

  wire FCLK;
  wire [31:0]M_AVALON_0_address;
  wire M_AVALON_0_read;
  wire [31:0]M_AVALON_0_readdata;
  wire M_AVALON_0_write;
  wire [31:0]M_AVALON_0_writedata;

  design_1 design_1_i
       (.FCLK(FCLK),
        .M_AVALON_0_address(M_AVALON_0_address),
        .M_AVALON_0_read(M_AVALON_0_read),
        .M_AVALON_0_readdata(M_AVALON_0_readdata),
        .M_AVALON_0_write(M_AVALON_0_write),
        .M_AVALON_0_writedata(M_AVALON_0_writedata));
endmodule
