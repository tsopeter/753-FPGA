// ==============================================================
// Generated by Vitis HLS v2024.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module myproject_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_void_conv_2d_buffer_rbkb_core (
    clk,
    ce,
    din,
    addr,
    dout);

parameter DATA_WIDTH = 8;
parameter ADDR_WIDTH = 6;
parameter DEPTH = 64;

input clk;
input ce;
input [DATA_WIDTH-1:0] din;
input [ADDR_WIDTH-1:0] addr;
output [DATA_WIDTH-1:0] dout;

reg[DATA_WIDTH-1:0] ShiftRegMem[0:DEPTH-1];

integer i;


initial
begin
    for(i=0;i<DEPTH;i=i+1)
        ShiftRegMem[i] <= {DATA_WIDTH{1'b0}};
end

always @ (posedge clk)
begin
    if (ce)
    begin
        for(i=0;i<DEPTH-1;i=i+1)
            ShiftRegMem[i+1] <= ShiftRegMem[i];
        ShiftRegMem[0] <= din;
    end
end


assign dout = ShiftRegMem[addr];




endmodule

module myproject_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_void_conv_2d_buffer_rbkb (
    clk,
    reset,
    address0,
    ce0,
    we0,
    d0,
    q0);

parameter DataWidth = 8;
parameter AddressRange = 64;
parameter AddressWidth = 6;

input clk;
input reset;
input [AddressWidth-1:0] address0;
input ce0;
input we0;
input [DataWidth-1:0] d0;
output [DataWidth-1:0] q0;

myproject_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_void_conv_2d_buffer_rbkb_core #(
    .DATA_WIDTH( DataWidth ),
    .ADDR_WIDTH( AddressWidth ),
    .DEPTH( AddressRange ))
myproject_shift_line_buffer_array_ap_fixed_8_1_4_0_0_1u_config3_s_void_conv_2d_buffer_rbkb_core_U(
    .clk(clk),
    .ce(we0),
    .din(d0),
    .addr(address0),
    .dout(q0)
);

endmodule
