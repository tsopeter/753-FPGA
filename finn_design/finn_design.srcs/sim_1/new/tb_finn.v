`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 01:15:59 PM
// Design Name: 
// Module Name: tb_finn
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_finn();

reg clk = 0;
reg rst_n = 0;

reg m_axis_0_tready = 1;
wire m_axis_0_tvalid;
wire [15:0] m_axis_0_tdata;

reg [7:0] s_axis_0_tdata = 0;
wire s_axis_0_tready;
reg s_axis_0_tvalid = 0;


always begin
    #5
    clk <= ~clk;
end

reg [31:0] state_counter = 0;

always @(posedge clk) begin
    state_counter <= state_counter + 1;
    
    case (state_counter)
        (0): begin
            rst_n <= 0;
        end
        (10): begin
            rst_n <= 1;
        end
        (20): begin
            s_axis_0_tvalid <= 1;
            s_axis_0_tdata <= 8'h02;
        end
        (4096+21): begin
            s_axis_0_tvalid <= 0;
        end
    endcase
end


finn_design_wrapper finn (
    .ap_clk(clk),
    .ap_rst_n(rst_n),
    
    .m_axis_0_tdata(m_axis_0_tdata),
    .m_axis_0_tready(m_axis_0_tready),
    .m_axis_0_tvalid(m_axis_0_tvalid),
    
    .s_axis_0_tdata(s_axis_0_tdata),
    .s_axis_0_tready(s_axis_0_tready),
    .s_axis_0_tvalid(s_axis_0_tvalid)
);


endmodule
