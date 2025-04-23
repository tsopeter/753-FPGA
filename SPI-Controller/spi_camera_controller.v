`timescale 1ns / 1ps

//
// It takes about ~18.4 ms to read a single image
//
// It takes in images every 66.6 ms (15 fps)
module spi_camera_controller (
    input  wire        clk,        // 100 MHz system clock
    input  wire        rst,
    input  wire        start_capture, // <-- New trigger input
    output reg         spi_clk,
    output reg         spi_cs_n,
    output reg         spi_mosi,
    input  wire        spi_miso,
    output reg [7:0]   m_axis_tdata,
    output reg         m_axis_tvalid,
    input  wire        m_axis_tready,
    output reg         m_axis_tlast
);

    // Parameters
    localparam SCLK_DIV = 10;
    localparam IDLE        = 0,
               SET_REG     = 1,
               SET_VAL     = 2,
               BURST_CMD   = 3,
               LOOP        = 4,
               WRITE_SPI   = 5,
               READ_SPI    = 6,
               SEND_DATA   = 7,
               DONE        = 8;

    reg [3:0] state = IDLE, ret_state = IDLE;
    reg [7:0] tx_byte, rx_byte;
    reg [3:0] bit_cnt;
    reg [6:0] x, y;
    reg [1:0] skip_x, skip_y;
    reg [15:0] pixel_count;

    // SPI clock divider (100 MHz / 10 = 5 MHz)
    reg [3:0] clk_div = 0;
    wire spi_tick = (clk_div == SCLK_DIV - 1);

    always @(posedge clk) begin
        if (rst)
            clk_div <= 0;
        else
            clk_div <= spi_tick ? 0 : clk_div + 1;
    end

    always @(posedge clk) begin
        if (rst)
            spi_clk <= 0;
        else if (spi_tick)
            spi_clk <= ~spi_clk;
    end

    // Cross-domain signals
    reg [7:0] data_buf;
    reg       data_ready, data_ready_d;
    reg       burst_started = 0;

    // Main FSM: runs on falling edge of spi_clk (every 200 ns)
    always @(posedge clk) begin
        if (rst) begin
            state         <= IDLE;
            spi_cs_n      <= 1;
            spi_mosi      <= 0;
            bit_cnt       <= 0;
            x <= 0; y <= 0;
            skip_x <= 0; skip_y <= 0;
            pixel_count   <= 0;
            data_ready    <= 0;
        end else if (spi_tick && spi_clk == 0) begin
            data_ready <= 0;

            case (state)
                IDLE: begin
                    if (start_capture) begin
                        spi_cs_n   <= 0;
                        tx_byte    <= 8'h21; // reg address
                        ret_state  <= SET_VAL;
                        state      <= WRITE_SPI;
            
                        // Reset variables at start
                        x <= 0; y <= 0;
                        skip_x <= 0; skip_y <= 0;
                        pixel_count <= 0;
                    end
                end

                SET_VAL: begin
                    tx_byte    <= 8'h0A; // 96x96 mode
                    ret_state  <= BURST_CMD;
                    state      <= WRITE_SPI;
                end

                BURST_CMD: begin
                    spi_cs_n   <= 1;  // short deselect
                    spi_cs_n   <= 0;
                    tx_byte    <= 8'h3C;
                    ret_state  <= LOOP;
                    burst_started <= 0;  // <-- reset before read
                    state      <= WRITE_SPI;
                end

                LOOP: begin
                    state      <= READ_SPI;
                    ret_state  <= SEND_DATA;
                end

                WRITE_SPI: begin
                    spi_mosi <= tx_byte[7 - bit_cnt];
                    bit_cnt <= bit_cnt + 1;
                    if (bit_cnt == 7) begin
                        bit_cnt <= 0;
                        state   <= ret_state;
                    end
                end

                READ_SPI: begin
                    spi_mosi <= 0;
                    rx_byte[7 - bit_cnt] <= spi_miso;
                    bit_cnt <= bit_cnt + 1;
                    if (bit_cnt == 7) begin
                        bit_cnt <= 0;
                        state   <= ret_state;
                    end
                end

                SEND_DATA: begin
                    if (!burst_started) begin
                        burst_started <= 1;      // Skip this first dummy byte
                        state <= LOOP;
                    end else begin
                        data_buf   <= rx_byte;
                        data_ready <= 1;
            
                        // update row/col for skipping
                        skip_x <= skip_x + 1;
                        x <= x + 1;
                        
                        if (skip_x == 2)
                            skip_x <= 0;
        
                        if (x == 95) begin
                            x <= 0; 
                            y <= y + 1;
                            skip_x <= 0; 
                            skip_y <= skip_y + 1;
                    
                            if (skip_y == 2) 
                                skip_y <= 0;
                        end
                    
                        if (y == 96 && x == 0) begin
                            state <= DONE;
                            spi_cs_n <= 1;
                        end else begin
                            state <= LOOP;
                        end
                    end
                end

                DONE: begin
                    state <= IDLE;
                end
            endcase
        end
    end

    // Positive edge detector for data_ready
    reg data_ready_d;

    always @(posedge clk) begin
        data_ready_d <= data_ready;
        m_axis_tvalid <= 0;
        m_axis_tlast  <= 0;

        if (~data_ready_d && data_ready && m_axis_tready && (pixel_count <= 4095)) begin
            if (skip_x != 2 && skip_y != 2) begin
                m_axis_tdata  <= data_buf;
                m_axis_tvalid <= 1;
                pixel_count   <= pixel_count + 1;
                m_axis_tlast  <= (pixel_count == 4095);
            end
        end
    end


endmodule