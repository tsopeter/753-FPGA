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
    input  wire reset_camera,
    output wire capture_done,
    output wire camera_ready_to_capture,
    
    input  wire m_axis_tready,
    output wire [7:0] m_axis_tdata,
    output wire m_axis_tvalid,
    output wire m_axis_tlast,
    
    // debug
    output wire [7:0] pixel_data,
    output wire pixel_last,
    output wire pixel_valid,
    
    output wire send,
    output wire [7:0] states,
    output wire [7:0] spi_dout,
    output wire       spi_dout_vld,
    output wire last_flag,
    output wire [31:0] byte_count
);
    
    wire [7:0] gray_data;
    wire       gray_valid;
    wire       gray_last;
    
    yuv422_2_gray8 cvt (
        .clk(clk),
        .rst(rst),
        
        .pixel_value(pixel_data),
        .pixel_valid(pixel_valid),
        .pixel_last(pixel_last),
        
        .data_out(gray_data),
        .data_valid(gray_valid),
        .data_last(gray_last)
    );

    spi_camera_controller controller (
        .clk(clk),
        .rst(rst),
        .start_capture(start_capture),
        .reset_camera(reset_camera),
        .capture_done(capture_done),
        .camera_ready_to_capture(camera_ready_to_capture),
        .spi_sclk(spi_clk),
        .spi_cs_n(spi_cs_n),
        .spi_mosi(spi_mosi),
        .spi_miso(spi_miso),
        .pixel_data(pixel_data),
        .pixel_valid(pixel_valid),
        .pixel_last(pixel_last),
        .output_states(states),
        
        .spi_dout_vld_dbg(spi_dout_vld),
        .spi_dout_dbg(spi_dout),
        .read_burst_set_last_flag_dbg(last_flag),
        .byte_count_dbg(byte_count)
    );    
    
    spi_camera_stream_bridge bridge (
        .clk(clk),
        .pixel_data(gray_data),
        .pixel_valid(gray_valid),
        .pixel_last(gray_last),
        
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        
        .send(send)
    );
    
    
endmodule
