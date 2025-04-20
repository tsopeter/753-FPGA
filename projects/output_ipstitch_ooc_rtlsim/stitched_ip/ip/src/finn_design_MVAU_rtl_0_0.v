// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:MVAU_rtl_0:1.0
// IP Revision: 1

(* X_CORE_INFO = "MVAU_rtl_0,Vivado 2024.2" *)
(* CHECK_LICENSE_TYPE = "finn_design_MVAU_rtl_0_0,MVAU_rtl_0,{}" *)
(* CORE_GENERATION_INFO = "finn_design_MVAU_rtl_0_0,MVAU_rtl_0,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=MVAU_rtl_0,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,IS_MVU=1,COMPUTE_CORE=mvu_4sx4u_dsp48e1,PUMPED_COMPUTE=0,MW=5,MH=1,PE=1,SIMD=1,ACTIVATION_WIDTH=4,WEIGHT_WIDTH=4,ACCU_WIDTH=16,NARROW_WEIGHTS=1,SIGNED_ACTIVATIONS=0,SEGMENTLEN=1,FORCE_BEHAVIORAL=0,WEIGHT_STREAM_WIDTH_BA=8,INPUT_STREAM_WIDTH_BA=8,OUTPUT_STREAM_WIDTH_BA=16}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module finn_design_MVAU_rtl_0_0 (
  ap_clk,
  ap_rst_n,
  weights_V_TDATA,
  weights_V_TVALID,
  weights_V_TREADY,
  in0_V_TDATA,
  in0_V_TVALID,
  in0_V_TREADY,
  out_V_TDATA,
  out_V_TVALID,
  out_V_TREADY
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst_n, ASSOCIATED_BUSIF weights_V:in0_V:out_V, FREQ_HZ 83333333, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN finn_design_ap_clk_0, INSERT_VIP 0" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 weights_V TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME weights_V, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 83333333, PHASE 0.0, CLK_DOMAIN finn_design_ap_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [7 : 0] weights_V_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 weights_V TVALID" *)
input wire weights_V_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 weights_V TREADY" *)
output wire weights_V_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in0_V TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME in0_V, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 83333333, PHASE 0.0, CLK_DOMAIN finn_design_ap_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [7 : 0] in0_V_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in0_V TVALID" *)
input wire in0_V_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 in0_V TREADY" *)
output wire in0_V_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_V TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_V, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 83333333, PHASE 0.0, CLK_DOMAIN finn_design_ap_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [15 : 0] out_V_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_V TVALID" *)
output wire out_V_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 out_V TREADY" *)
input wire out_V_TREADY;

  MVAU_rtl_0 #(
    .IS_MVU(1),
    .COMPUTE_CORE("mvu_4sx4u_dsp48e1"),
    .PUMPED_COMPUTE(0),
    .MW(5),
    .MH(1),
    .PE(1),
    .SIMD(1),
    .ACTIVATION_WIDTH(4),
    .WEIGHT_WIDTH(4),
    .ACCU_WIDTH(16),
    .NARROW_WEIGHTS(1),
    .SIGNED_ACTIVATIONS(0),
    .SEGMENTLEN(1),
    .FORCE_BEHAVIORAL(0),
    .WEIGHT_STREAM_WIDTH_BA(8),
    .INPUT_STREAM_WIDTH_BA(8),
    .OUTPUT_STREAM_WIDTH_BA(16)
  ) inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .weights_V_TDATA(weights_V_TDATA),
    .weights_V_TVALID(weights_V_TVALID),
    .weights_V_TREADY(weights_V_TREADY),
    .in0_V_TDATA(in0_V_TDATA),
    .in0_V_TVALID(in0_V_TVALID),
    .in0_V_TREADY(in0_V_TREADY),
    .out_V_TDATA(out_V_TDATA),
    .out_V_TVALID(out_V_TVALID),
    .out_V_TREADY(out_V_TREADY)
  );
endmodule
