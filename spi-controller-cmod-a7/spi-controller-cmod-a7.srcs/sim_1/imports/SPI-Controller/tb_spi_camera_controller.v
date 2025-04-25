`timescale 1ns / 1ps

module tb_spi_camera_controller;

    reg clk = 0;
    reg rst = 1;
    reg start_capture = 0;

    // SPI lines
    wire spi_cs;
    wire spi_clk;
    wire spi_mosi;
    reg  spi_miso;
    
    
    wire [7:0] pixel_data;
    wire pixel_valid;
    wire pixel_last;
    wire capture_done;

    // Clock generation (100 MHz)
    always #5 clk = ~clk;

    // Instantiate DUT
    spi_camera_test_wr dut (
        .clk(clk),
        .rst(rst),
        .start_capture(start_capture),
        .spi_cs_n(spi_cs),
        .spi_sclk(spi_clk),
        .spi_mosi(spi_mosi),
        .spi_miso(spi_miso),
        
        .pixel_data(pixel_data),
        .pixel_valid(pixel_valid),
        .pixel_last(pixel_last),
        .capture_done(capture_done)
    );

    // Simulated MISO behavior: shift out dummy pixel values
    reg [7:0] next_pixel = 8'h01;
    always @(negedge spi_clk) begin
        if (!spi_cs)
            spi_miso <= next_pixel[7];
    end

    always @(posedge spi_clk) begin
        if (!spi_cs)
            next_pixel <= {next_pixel[6:0], 1'b0};  // Shift left
    end

    reg [15:0] pixel_counter = 0;
    always @(posedge spi_cs) begin
        next_pixel <= pixel_counter[7:0];
        pixel_counter <= pixel_counter + 1;
    end
    
    reg [15:0] valid_counter = 0;
    always @(posedge clk) begin
        // count pixel_valid
        if (pixel_valid) begin
            valid_counter <= valid_counter + 1;
        end
    end

    // Test sequence
    initial begin
        $display("Starting SPI Camera Controller Testbench");

        // Wait and trigger capture
        #500;
        rst = 0;
        
        #40000
        start_capture = 1;
        #1000;
        start_capture = 0;

        // Wait until frame capture is done
        #100000;
        $display("Frame capture completed!");
    end
endmodule

