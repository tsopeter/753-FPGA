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
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
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


// IP VLNV: Peter:PilotNet:myproject:1.0
// IP Revision: 0

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module accel_myproject_0_0 (
  input_1_TVALID,
  input_1_TREADY,
  input_1_TDATA,
  layer16_out_TVALID,
  layer16_out_TREADY,
  layer16_out_TDATA,
  ap_clk,
  ap_rst_n,
  ap_start,
  ap_done,
  ap_ready,
  ap_idle
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_1 TVALID" *)
input wire input_1_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_1 TREADY" *)
output wire input_1_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME input_1, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN accel_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 input_1 TDATA" *)
input wire [7 : 0] input_1_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 layer16_out TVALID" *)
output wire layer16_out_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 layer16_out TREADY" *)
input wire layer16_out_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME layer16_out, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN accel_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 layer16_out TDATA" *)
output wire [15 : 0] layer16_out_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF input_1:layer16_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN accel_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  myproject inst (
    .input_1_TVALID(input_1_TVALID),
    .input_1_TREADY(input_1_TREADY),
    .input_1_TDATA(input_1_TDATA),
    .layer16_out_TVALID(layer16_out_TVALID),
    .layer16_out_TREADY(layer16_out_TREADY),
    .layer16_out_TDATA(layer16_out_TDATA),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_ready(ap_ready),
    .ap_idle(ap_idle)
  );
endmodule
