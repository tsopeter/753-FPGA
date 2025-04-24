`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025 08:37:12 PM
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
    input  wire sysclk,
    output wire spi_clk,
    output wire spi_cs_n,
    output wire spi_mosi,
    input  wire spi_miso,
    input  wire start_capture
    );
    
    wire clk;
    wire [7:0] tdata;
    wire tvalid;
    wire tlast;
    
    wire send;
    
    wire [7:0] pdata;
    wire pvalid;
    wire plast;
    
    wire capture_done;
    
    design_1_wrapper design_1 (
        .clk_in1_0(sysclk),
        .clk_out1_0(clk),
        .probe0_0(send),
        .probe1_0(tdata),
        .probe2_0(tvalid),
        .reset_0(1'h0),
        .clk_0(clk)
    );
    
    design_2_wrapper design_2 (
        .clk_0(clk),
        .probe0_0(spi_clk),
        .probe1_0(spi_cs_n),
        .probe2_0(spi_mosi),
        .probe3_0(spi_miso),
        .probe4_0(start_capture)
    );

    spi_camera_axis_wrapper spi_camera (
        .clk(clk),
        .rst(1'h0),
        .spi_clk(spi_clk),
        .spi_cs_n(spi_cs_n),
        .spi_mosi(spi_mosi),
        .spi_miso(spi_miso),
        
        .start_capture(start_capture),
        .capture_done(capture_done),
        .m_axis_tdata(tdata),
        .m_axis_tvalid(tvalid),
        .m_axis_tlast(tlast),
        .m_axis_tready(1'h1),
        
        .pixel_data(pdata),
        .pixel_last(plast),
        .pixel_valid(pvalid),
        
        .send(send)
    );
    
endmodule
