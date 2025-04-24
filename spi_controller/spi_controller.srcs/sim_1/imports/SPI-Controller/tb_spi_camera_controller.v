`timescale 1ns / 1ps

module tb_spi_camera_controller;

    reg clk;
    reg rst;

    wire spi_cs;
    wire spi_sclk;
    wire spi_mosi;
    reg  spi_miso;

    wire [7:0] m_axis_tdata;
    wire       m_axis_tvalid;
    reg        m_axis_tready;
    wire       m_axis_tlast;
    
    reg start_capture = 1'h0;

    // Instantiate the Device Under Test
    spi_camera_controller uut (
        .clk(clk),
        .rst(rst),
        .start_capture(start_capture),
        .spi_cs_n(spi_cs),
        .spi_clk(spi_sclk),
        .spi_mosi(spi_mosi),
        .spi_miso(spi_miso),
        
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tlast(m_axis_tlast)
    );

    // Clock generation
    initial clk = 0;
    always #5 clk = ~clk; // 100 MHz

    // Simulated SPI behavior (loopback for now)
    always @(posedge clk) begin
        if (spi_cs == 0 && spi_sclk == 1) begin
            spi_miso <= 1'b1; // simple dummy data for now
        end
    end

    // Test sequence
    initial begin
        rst = 1;
        m_axis_tready = 1;
        spi_miso = 0;

        #100;
        start_capture <= 1;
        rst = 0;
        
        #200;
        start_capture <= 0;

        // Run for some time
        #1000000;
    end
endmodule
