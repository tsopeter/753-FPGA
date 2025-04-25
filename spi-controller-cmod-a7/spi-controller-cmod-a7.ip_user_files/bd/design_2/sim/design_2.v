//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Thu Apr 24 11:33:18 2025
//Host        : LAPTOP-3I9GNI1F running 64-bit major release  (build 9200)
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
   (clk_0,
    probe0_0,
    probe1_0,
    probe2_0,
    probe3_0,
    probe4_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_2_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  input [0:0]probe0_0;
  input [0:0]probe1_0;
  input [0:0]probe2_0;
  input [0:0]probe3_0;
  input [0:0]probe4_0;

  wire clk_0_1;
  wire [0:0]probe0_0_1;
  wire [0:0]probe1_0_1;
  wire [0:0]probe2_0_1;
  wire [0:0]probe3_0_1;
  wire [0:0]probe4_0_1;

  assign clk_0_1 = clk_0;
  assign probe0_0_1 = probe0_0[0];
  assign probe1_0_1 = probe1_0[0];
  assign probe2_0_1 = probe2_0[0];
  assign probe3_0_1 = probe3_0[0];
  assign probe4_0_1 = probe4_0[0];
  design_2_ila_0_0 ila_0
       (.clk(clk_0_1),
        .probe0(probe0_0_1),
        .probe1(probe1_0_1),
        .probe2(probe2_0_1),
        .probe3(probe3_0_1),
        .probe4(probe4_0_1));
endmodule
