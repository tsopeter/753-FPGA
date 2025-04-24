`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025 05:47:55 PM
// Design Name: 
// Module Name: base
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


module base(
    output  wire spi_clk,
    output  wire spi_cs_n,
    output  wire spi_mosi,
    input   wire spi_miso
    );
    
wire clk;
reg  rst = 0;
reg  start_capture = 0;

wire [31:0] avb_address;
wire [31:0] avb_writedata;
reg  [31:0] avb_readdata;

wire avb_read, avb_write;

wire tvalid, tlast;
wire [7:0] tdata;

reg [31:0] counter = 0;
always @(posedge clk) begin
    if (counter < 100) begin
        counter <= counter + 1;
        start_capture <= 1;
    end
    else begin
        start_capture <= 0;
    end
end
    
design_1_wrapper soc (
    .FCLK(clk),
    .M_AVALON_0_address(avb_address),
    .M_AVALON_0_read(avb_read),
    .M_AVALON_0_readdata(avb_readdata),
    .M_AVALON_0_write(avb_write),
    .M_AVALON_0_writedata(avb_writedata)
);    
    
spi_camera_controller controller (
    .clk(clk),
    .rst(rst),
    .start_capture(start_capture),
    .spi_clk(spi_clk),
    .spi_cs_n(spi_cs_n),
    .spi_mosi(spi_mosi),
    .spi_miso(spi_miso),
    .m_axis_tdata(tdata),
    .m_axis_tvalid(tvalid),
    .m_axis_tready(1'h1),
    .m_axis_tlast(tlast)
);    

ila_wrapper ila (
    .clk_0(clk),
    .probe0_0(tvalid),
    .probe1_0(tdata)
);

endmodule
