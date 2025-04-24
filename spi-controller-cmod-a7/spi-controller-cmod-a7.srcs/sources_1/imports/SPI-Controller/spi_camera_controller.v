`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Peter Tso
// Module: camera_controller
// Description: SPI FSM for Arducam B0400 with 64x64 decimation from 96x96
//////////////////////////////////////////////////////////////////////////////////

module spi_camera_controller #(
    parameter CLK_FREQ  = 100000000,    // 100 MHz
    parameter SCLK_FREQ =   5000000     //  5 MHz
)(
    input  wire clk,
    input  wire rst,
    input  wire start_capture,

    // SPI interface
    output wire spi_sclk,
    output wire spi_cs_n,
    output wire spi_mosi,
    input  wire spi_miso,

    // Pixel output
    output reg [7:0] pixel_data,
    output reg       pixel_valid,
    output reg       pixel_last,
    output reg       capture_done
);

    // SPI master interface
    reg  [7:0] spi_din;
    reg        spi_din_vld;
    reg        spi_din_last;
    wire       spi_din_rdy;
    wire [7:0] spi_dout;
    wire       spi_dout_vld;

    localparam IDLE         = 0,
               SEND_RES_0   = 1,
               SEND_RES_1   = 2,
               SEND_CAP_0   = 3,
               SEND_CAP_1   = 4,
               SEND_BURST   = 5,
               WAIT_DUMMY   = 6,
               STREAM_PIXELS= 7,
               DONE         = 8,
               WAIT         = 9,
               GET_PIXELS   = 10,
               WAIT_FOR_D   = 11;
               
    localparam WAIT_LIMIT   = 10;

    reg [4:0] state;
    reg [13:0] byte_count;
    reg [6:0] row, col;
    
    reg [31:0] wait_counter = 0;
    reg [4:0] ret_state;

    wire [7:0] RES_CMD  = 8'h21;
    wire [7:0] RES_VAL  = 8'h0A;
    wire [7:0] CAP_CMD  = 8'h04;
    wire [7:0] CAP_VAL  = 8'h02;
    wire [7:0] BURST_RD = 8'h3C;
    wire [7:0] EMPTY    = 8'h00;
    
    reg  [7:0] rx_buf   = 8'h00;
    reg  skip_first_byte = 1;

    always @(posedge clk) begin
        if (rst) begin
            state        <= IDLE;
            spi_din_vld  <= 0;
            spi_din_last <= 0;
            byte_count   <= 0;
            row          <= 0;
            col          <= 0;
            pixel_data   <= 0;
            pixel_valid  <= 0;
            pixel_last   <= 0;
            capture_done <= 0;
        end else begin
            spi_din_vld  <= 0;
            spi_din_last <= 0;
            pixel_valid  <= 0;
            pixel_last   <= 0;
            capture_done <= 0;

            case (state)
                IDLE: begin
                    if (start_capture) begin
                        state <= SEND_RES_0;
                    end
                end

                SEND_RES_0: begin
                    if (spi_din_rdy) begin
                        spi_din      <= RES_CMD;
                        spi_din_vld  <= 1;
                        spi_din_last <= 0;
                        state        <= WAIT;
                        ret_state    <= SEND_RES_1;
                        wait_counter <= 0;
                    end
                end
                
                WAIT: begin
                    wait_counter <= wait_counter + 1;
                    if (wait_counter > WAIT_LIMIT) begin
                        state <= ret_state;
                    end
                end

                SEND_RES_1: begin
                    if (spi_din_rdy) begin
                        spi_din      <= RES_VAL;
                        spi_din_vld  <= 1;
                        spi_din_last <= 1;
                        state        <= WAIT;
                        ret_state    <= SEND_CAP_0;
                        wait_counter <= 0;
                    end
                end

                SEND_CAP_0: begin
                    if (spi_din_rdy) begin
                        spi_din      <= CAP_CMD;
                        spi_din_vld  <= 1;
                        spi_din_last <= 0;
                        state        <= WAIT;
                        ret_state    <= SEND_CAP_1;
                        wait_counter <= 0;
                    end
                end

                SEND_CAP_1: begin
                    if (spi_din_rdy) begin
                        spi_din      <= CAP_VAL;
                        spi_din_vld  <= 1;
                        spi_din_last <= 1;
                        state        <= WAIT;
                        ret_state    <= SEND_BURST;
                        wait_counter <= 0;
                    end
                end

                SEND_BURST: begin
                    if (spi_din_rdy) begin
                        spi_din      <= BURST_RD;
                        spi_din_vld  <= 1;
                        spi_din_last <= 0;
                        state        <= WAIT;
                        ret_state    <= WAIT_DUMMY;
                        wait_counter <= 0;
                    end
                end

                WAIT_DUMMY: begin
                    if (spi_din_rdy) begin
                        spi_din    <= EMPTY;
                        spi_din_vld <= 1;
                        spi_din_last <= 0;
                        
                        col        <= 0;
                        row        <= 0;
                        byte_count <= 0;
                        state      <= WAIT;
                        ret_state  <= GET_PIXELS;
                        wait_counter <= 0;
                        skip_first_byte <= 1;
                    end
                end
                
                GET_PIXELS: begin
                    if (spi_dout_vld) begin
                        rx_buf <= spi_dout;
                        state <= STREAM_PIXELS;
                    end
                    if (spi_din_rdy) begin
                        spi_din      <= EMPTY;
                        spi_din_vld  <= 1;
                        spi_din_last <= (byte_count >= 9215);
                        
                        state      <= WAIT;
                        ret_state  <= GET_PIXELS;
                        wait_counter <= 0;
                    end
                end
                
                STREAM_PIXELS: begin
                    if (~skip_first_byte) begin
                        byte_count <= byte_count + 1;
                       
                            
                        if (col == 95) begin
                            col <= 0;
                            row <= row + 1;
                        end else begin
                            col <= col + 1;
                        end
    
                        if ((row % 3 != 2) && (col % 3 != 2)) begin
                            pixel_data  <= rx_buf;
                            pixel_valid <= 1;
                            pixel_last  <= (row == 95 && col == 95);
                        end
    
                        if (byte_count == 9215) begin
                            state <= DONE;
                        end
                        else begin
                            state <= GET_PIXELS;
                        end
                    end else begin
                        skip_first_byte <= 0;
                        state <= GET_PIXELS;
                    end
                end

                DONE: begin
                    capture_done <= 1;
                    state <= IDLE;
                end
            endcase
        end
    end

    spi_master #(
        .CLK_FREQ(CLK_FREQ),
        .SCLK_FREQ(SCLK_FREQ),
        .WORD_SIZE(8),
        .SLAVE_COUNT(1)
    ) spi_if (
        .CLK(clk),
        .RST(rst),
        .SCLK(spi_sclk),
        .CS_N(spi_cs_n),
        .MOSI(spi_mosi),
        .MISO(spi_miso),
        .DIN(spi_din),
        //.DIN_ADDR(1'b0),
        .DIN_LAST(spi_din_last),
        .DIN_VLD(spi_din_vld),
        .DIN_RDY(spi_din_rdy),
        .DOUT(spi_dout),
        .DOUT_VLD(spi_dout_vld)
    );

endmodule

