`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2025 09:22:41 AM
// Design Name: 
// Module Name: spi_camera_axis_wrapper
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


module spi_camera_axis_wrapper(
    input  wire clk,
    input  wire rst,
    output wire spi_clk,
    output wire spi_cs_n,
    output wire spi_mosi,
    input  wire spi_miso,
    
    input  wire start_capture,
    output wire capture_done,
    
    input  wire m_axis_tready,
    output wire [7:0] m_axis_tdata,
    output wire m_axis_tvalid,
    output wire m_axis_tlast
);

    wire [7:0] pixel_data;
    wire pixel_valid;
    wire pixel_last;
    
    spi_camera_controller (
        .clk(clk),
        .rst(rst),
        .start_capture(start_capture),
        .capture_done(capture_done),
        .spi_clk(spi_clk),
        .spi_cs_n(spi_cs_n),
        .spi_mosi(spi_mosi),
        .spi_miso(spi_miso),
        .pixel_data(pixel_data),
        .pixel_valid(pixel_valid),
        .pixel_last(pixel_last)
    );    
    
    spi_camera_stream_bridge bridge (
        .clk(clk),
        .pixel_data(pixel_data),
        .pixel_valid(pixel_valid),
        .pixel_last(pixel_last),
        
        .m_axis_tdata(m_axis_data),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready)
    );
    
    
endmodule
