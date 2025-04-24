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
    input  wire reset_camera,

    // SPI interface
    output wire spi_sclk,
    output wire spi_cs_n,
    output wire spi_mosi,
    input  wire spi_miso,

    // Pixel output
    output reg [7:0] pixel_data,
    output reg       pixel_valid,
    output reg       pixel_last,
    output reg       capture_done,
    output reg       camera_ready_to_capture,
    output wire [7:0] output_states
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
               RESET_0      = 15,
               WRITE_REG    = 20,
               WRITE_REG_1  = 21,
               READ_REG     = 22,
               READ_REG_1   = 23,
               READ_REG_2   = 24,
               READ_REG_3   = 25,
               INIT_0       = 26,
               INIT_1       = 27,
               INIT_2       = 28,
               INIT_3       = 29,
               INIT_4       = 30,
               WAIT_FOR_I2C_0 = 31,
               WAIT_FOR_I2C_1 = 32,
               READ_ID_0     = 33,
               READ_ID_1     = 34,
               INIT_5        = 35,
               INIT_6        = 36,
               INIT_7        = 38,
               INIT_8        = 39,
               DEBUG_0       = 40,
               PIX_FMT_0     = 41,
               RES_FMT_0     = 42,
               INIT_9        = 43,
               INIT_10       = 44,
               INIT_11       = 45,
               SET_CAPTURE_0 = 46,
               CAMERA_FLUSH_FIFO_0 = 47,
               CLEAR_FIFO_FLAG_0 = 48,
               START_CAPTURE_0 = 49,
               WAIT_TRIGGER_0 = 50,
               WAIT_TRIGGER_1 = 51,
               CAPTURE_IMAGE_0 = 52,
               CAPTURE_IMAGE_1 = 53,
               CAPTURE_IMAGE_2 = 54,
               CAPTURE_IMAGE_3 = 55,
               CAPTURE_IMAGE_4 = 56,
               CAPTURE_IMAGE_5 = 57,
               CAPTURE_IMAGE_6 = 58,
               READ_FIFO_LENGTH_0 = 59,
               READ_FIFO_LENGTH_1 = 60,
               READ_FIFO_LENGTH_2 = 61,
               READ_FIFO_LENGTH_3 = 62,
               READ_BUFFER_0 = 63,
               READ_BUFFER_1 = 64,
               READ_BUFFER_2 = 65,
               READ_BUFFER_3 = 66,
               SET_FIFO_BURST = 67,
               SET_FIFO_BURST_1 = 68,
               READ_BURST = 69,
               READ_BURST_1 = 70,
               DUMMY_READ_0 = 71,
               FIFO_READ_0 = 72,
               FIFO_READ_1 = 73,
               FIFO_READ_2 = 74,
               FIFO_READ_3 = 75,
               SM0 = 76,
               SM1 = 77,
               SM2 = 78,
               SM3 = 79,
               SM4 = 80;
              
    localparam WAIT_LIMIT   = 10;

    reg [31:0] state;
    reg [31:0] byte_count;
    reg [6:0] row, col;
    
    reg [31:0] wait_counter = 0;
    reg [31:0] ret_state;
    
    reg [31:0] return_state;
    reg [31:0] func_return_state;
    reg [31:0] camera_set_capture_return_state;
    reg [31:0] camera_read_buffer_return_state;
    reg [31:0] camera_init_return_state;
    
    reg [7:0] tx_addr_buf;
    reg [7:0] tx_data_buf;
    
    reg [7:0] rx_addr_buf;
    reg [7:0] rx_data_buf;

    
    wire [7:0] READ_MASK  = 8'h7f;      // and with reg
    wire [7:0] WRITE_MASK = 8'h80;      // or with reg
    
    wire [7:0] CAM_REG_SENSOR_RESET = 8'h07;
    wire [7:0] CAM_SENSOR_RESET_ENABLE = 8'b01000000;
    wire [7:0] CAM_REG_SENSOR_STATE = 8'h44;
    wire [7:0] CAM_REG_SENSOR_STATE_IDLE = 8'b00000010;
    wire [7:0] CAM_REG_SENSOR_ID = 8'h40;
    wire [7:0] CAM_REG_DEBUG_DEVICE_ADDR = 8'h0a;
    wire [7:0] CAM_IMG_PIX_FMT_RGB565 = 8'h02;
    wire [7:0] CAM_IMG_PIX_FMT_GRAY8  = 8'h00;
    
    wire [7:0] ARDUCHIP_FIFO = 8'h04;
    wire [7:0] ARDUCHIP_TRIG = 8'h44;
    
    wire [7:0] FIFO_CLEAR_MASK = 8'h01;
    wire [7:0] FIFO_START_MASK = 8'h02;
    
    wire [7:0] FIFO_SIZE1 = 8'h45;
    wire [7:0] FIFO_SIZE2 = 8'h46;
    wire [7:0] FIFO_SIZE3 = 8'h47;
    
    reg read_burst_set_last_flag = 0;
    
    wire [7:0] CAM_RES_96x96 = 8'd12;
    
    wire [7:0] CAP_DONE_MASK = 8'h04;
    
    reg camera_burst_first_flag = 0;
    reg [31:0] fifo_length = 0;
    
    localparam MAX_EXPOSURE = 1400;
    localparam MIN_EXPOSURE = 100;
    localparam MAX_GAIN     = 31;
    localparam MIN_GAIN     = 1;
    localparam SUPPORT_FOCUS = 0;
    localparam SUPPORT_SHARPNESS = 1;
    
    wire [7:0] DEVICE_ADDRESS = 8'h78;
    
    wire [7:0] RESOLUTION_CMD   = 8'h21;
    wire [7:0] PIXEL_FORMAT_CMD = 8'h20;
    wire [7:0] CAP_CMD  = 8'h04;
    wire [7:0] CAP_VAL  = 8'h01;
    wire [7:0] POLL_CMD = 8'h04;
    wire [7:0] BURST_RD = 8'h3C;
    wire [7:0] EMPTY    = 8'h00;
    
    reg  [7:0] rx_buf   = 8'h00;
    reg  skip_first_byte = 1;

    always @(posedge clk) begin
        if (rst) begin
            state        <= SM0;
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
                //////// Implementation for setting FIFO to burst
                SET_FIFO_BURST: begin
                    if (spi_din_rdy) begin
                        spi_din <= tx_addr_buf;
                        spi_din_vld <= 1;
                        spi_din_last <= 0;
                        
                        state <= WAIT;
                        ret_state <= SET_FIFO_BURST_1;
                        wait_counter <= 0;
                    end
                end
                
                SET_FIFO_BURST_1: begin
                    state <= return_state;
                end
                
                READ_BURST: begin
                    if (spi_din_rdy) begin
                        spi_din <= EMPTY;
                        spi_din_vld <= 1;
                        spi_din_last <= read_burst_set_last_flag;
                        
                        state <= READ_BURST_1;
                    end
                end
                
                READ_BURST_1: begin
                    if (spi_dout_vld) begin
                        rx_data_buf <= spi_dout;
                        state <= return_state;
                    end
                end
            
                /////// Implementation for writing to registers
                WRITE_REG: begin
                    if (spi_din_rdy) begin
                        spi_din <= tx_addr_buf | WRITE_MASK;
                        spi_din_vld <= 1;
                        spi_din_last <= 0;
                        
                        state <= WAIT;
                        ret_state <= WRITE_REG_1;
                        wait_counter <= 0;
                    end
                end
                
                WRITE_REG_1: begin
                    if (spi_din_rdy) begin
                        spi_din <= tx_data_buf;
                        spi_din_vld <= 1;
                        spi_din_last <= 1;
                        
                        state <= WAIT;
                        ret_state <= return_state;
                        wait_counter <= 0;
                    end
                end
                
                // Implementation for reading from registers
                READ_REG: begin
                    if (spi_din_rdy) begin
                        spi_din <= rx_addr_buf & READ_MASK;
                        spi_din_vld <= 1;
                        spi_din_last <= 0;
                        
                        state <= WAIT;
                        ret_state <= READ_REG_1;
                        wait_counter <= 0;
                    end
                end
                
                READ_REG_1: begin
                    if (spi_din_rdy) begin
                        spi_din <= EMPTY;
                        spi_din_vld <= 1;
                        spi_din_last <= 0;
                        
                        state <= WAIT;
                        ret_state <= READ_REG_2;
                        wait_counter <= 0;
                    end
                end
                
                READ_REG_2: begin
                    if (spi_din_rdy) begin
                        spi_din <= EMPTY;
                        spi_din_vld <= 1;
                        spi_din_last <= 1;
                        
                        state <= READ_REG_3;
                    end
                end
                
                READ_REG_3: begin
                    if (spi_dout_vld) begin
                        rx_data_buf <= spi_dout;
                        state <= return_state;
                    end
                end
                
                WAIT: begin
                    wait_counter <= wait_counter + 1;
                    if (wait_counter > WAIT_LIMIT) begin
                        state <= ret_state;
                    end
                end
                
                ///////////////////////////// Camera Initialization //////////////////////////////////////
                // reset
                INIT_0: begin
                    state <= RESET_0;
                    func_return_state <= INIT_1;
                end 
                
                // wait
                INIT_1: begin
                    state <= WAIT_FOR_I2C_0;
                    func_return_state <= INIT_2;
                end
                
                // set debug
                INIT_2: begin
                    state <= DEBUG_0;
                    func_return_state <= INIT_3;
                end
                
                // wait
                INIT_3: begin
                    state <= WAIT_FOR_I2C_0;
                    func_return_state <= INIT_6;
                end
                
                // set pixel format
                INIT_6: begin
                    state <= PIX_FMT_0;
                    func_return_state <= INIT_7;
                end
                
                // wait
                INIT_7: begin
                    state <= WAIT_FOR_I2C_0;
                    func_return_state <= INIT_8;
                end
                
                INIT_8: begin
                    state <= RES_FMT_0;
                    func_return_state <= INIT_9;
                end
                
                INIT_9: begin
                    state <= WAIT_FOR_I2C_0;
                    func_return_state <= INIT_10;
                end
                
                INIT_10: begin
                    state <= camera_init_return_state;
                end
                
                RESET_0: begin
                    tx_addr_buf  <= CAM_REG_SENSOR_RESET;
                    tx_data_buf  <= CAM_SENSOR_RESET_ENABLE;
                    state        <= WRITE_REG;
                    return_state <= func_return_state;
                end
                
                WAIT_FOR_I2C_0: begin
                    rx_addr_buf  <= CAM_REG_SENSOR_STATE;
                    state        <= READ_REG;
                    return_state <= WAIT_FOR_I2C_1;
                end
                
                WAIT_FOR_I2C_1: begin
                    if (rx_data_buf & 8'h03 != CAM_REG_SENSOR_STATE_IDLE) begin
                        state <= WAIT_FOR_I2C_0;
                    end else begin
                        state <= func_return_state;
                    end
                end
                
                DEBUG_0: begin
                    tx_addr_buf  <= CAM_REG_DEBUG_DEVICE_ADDR;
                    tx_data_buf  <= DEVICE_ADDRESS;
                    state        <= WRITE_REG;
                    return_state <= func_return_state;
                end
                
                PIX_FMT_0: begin
                    tx_addr_buf  <= PIXEL_FORMAT_CMD;
                    tx_data_buf  <= CAM_IMG_PIX_FMT_GRAY8;
                    state        <= WRITE_REG;
                    return_state <= func_return_state;
                end
                
                RES_FMT_0: begin
                    tx_addr_buf  <= RESOLUTION_CMD;
                    tx_data_buf  <= CAM_RES_96x96;
                    state        <= WRITE_REG;
                    return_state <= func_return_state;
                end
                
                ////////////////////////////////////// Image Setup //////////////////////////////////////////////
                
                CAMERA_FLUSH_FIFO_0: begin
                    tx_addr_buf <= ARDUCHIP_FIFO;
                    tx_data_buf <= FIFO_CLEAR_MASK;
                    state       <= WRITE_REG;
                    return_state <= func_return_state;
                end
                
                CLEAR_FIFO_FLAG_0: begin
                    tx_addr_buf <= ARDUCHIP_FIFO;
                    tx_data_buf <= FIFO_CLEAR_MASK;
                    state       <= WRITE_REG;
                    return_state <= func_return_state;
                end
                
                START_CAPTURE_0: begin
                    tx_addr_buf <= ARDUCHIP_FIFO;
                    tx_data_buf <= FIFO_START_MASK;
                    state       <= WRITE_REG;
                    return_state <= func_return_state;
                end
                
                WAIT_TRIGGER_0: begin
                    rx_addr_buf <= ARDUCHIP_TRIG;
                    state       <= READ_REG;
                    return_state <= WAIT_TRIGGER_1;
                end
                
                WAIT_TRIGGER_1: begin
                    if (rx_data_buf & CAP_DONE_MASK == 0) begin
                        state <= func_return_state;
                    end else begin
                        state <= WAIT_TRIGGER_0;
                    end
                end
                
                READ_FIFO_LENGTH_0: begin
                    fifo_length <= 0;
                    rx_addr_buf <= FIFO_SIZE1;
                    state       <= READ_REG;
                    return_state <= READ_FIFO_LENGTH_1;
                end
                
                READ_FIFO_LENGTH_1: begin
                    fifo_length <= fifo_length + rx_data_buf;
                    rx_addr_buf <= FIFO_SIZE2;
                    state       <= READ_REG;
                    return_state <= READ_FIFO_LENGTH_2;
                end
                
                READ_FIFO_LENGTH_2: begin
                    fifo_length <= fifo_length + rx_data_buf;
                    rx_addr_buf <= FIFO_SIZE3;
                    state       <= READ_REG;
                    return_state <= READ_FIFO_LENGTH_3;
                end
                
                READ_FIFO_LENGTH_3: begin
                    fifo_length <= fifo_length + (rx_data_buf & 8'h7f);
                    return_state <= func_return_state;
                end
                
                CAPTURE_IMAGE_0: begin
                    state <= CAMERA_FLUSH_FIFO_0;
                    func_return_state <= CAPTURE_IMAGE_1;
                end
                
                CAPTURE_IMAGE_1: begin
                    state <= CLEAR_FIFO_FLAG_0;
                    func_return_state <= CAPTURE_IMAGE_2;
                end
                
                CAPTURE_IMAGE_2: begin
                    state <= START_CAPTURE_0;
                    func_return_state <= CAPTURE_IMAGE_3;
                end
                
                CAPTURE_IMAGE_3: begin
                    state <= WAIT_TRIGGER_0;
                    func_return_state <= CAPTURE_IMAGE_4;
                end
                
                CAPTURE_IMAGE_4: begin
                    state <= READ_FIFO_LENGTH_0;
                    func_return_state <= CAPTURE_IMAGE_5;
                end
                
                CAPTURE_IMAGE_5: begin
                    camera_burst_first_flag <= 0;
                    state <= camera_set_capture_return_state;
                end
                
                /////////////////////////////////////// Reading Image /////////////////////////////////////////////////
                
                READ_BUFFER_0: begin
                    if (fifo_length == 0) begin
                        state <= camera_read_buffer_return_state;
                    end else begin
                        if (camera_burst_first_flag == 0) begin
                            camera_burst_first_flag <= 1;
                            state <= DUMMY_READ_0;
                        end else begin
                            state <= FIFO_READ_0;
                        end
                    end
                end
                
                READ_BUFFER_1: begin
                    state <= camera_read_buffer_return_state;
                end
                
                DUMMY_READ_0: begin
                    state <= READ_BURST;
                    read_burst_set_last_flag <= 0;
                    return_state <= FIFO_READ_0;
                end
                
                FIFO_READ_0: begin
                    state <= READ_BURST;
                    byte_count <= byte_count + 1;
                    return_state <= FIFO_READ_1;
                end
                
                FIFO_READ_1: begin
                    if (read_burst_set_last_flag) begin
                        pixel_data <= rx_data_buf;
                        pixel_valid <= 1;
                        pixel_last <= 1;
                        
                        state <= FIFO_READ_3;
                    end else begin
                        
                        pixel_data  <= rx_data_buf;
                        pixel_valid <= 1;
                        pixel_last <= 0;
                        
                        if (byte_count == (fifo_length - 1)) begin
                            read_burst_set_last_flag <= 1;
                        end
                        state <= FIFO_READ_2;
                    end
                end
                
                FIFO_READ_2: begin
                    pixel_valid <= 0;
                    pixel_last  <= 0;
                    state <= FIFO_READ_0;
                end
                
                FIFO_READ_3: begin
                    pixel_valid <= 0;
                    pixel_last <= 0;
                    state <= READ_BUFFER_1;
                end
                
                
                ///////////////////////////////////////////// Program //////////////////////////////////////////////
                
                //// Initialize the cameras
                SM0: begin
                    state <= INIT_0;
                    camera_init_return_state <= SM1;
                end
                
                //// Program starting point
                SM1: begin
                    capture_done <= 0;
                    camera_ready_to_capture <= 1;
                    if (reset_camera) begin
                        camera_ready_to_capture <= 0;
                        state <= SM0;
                    end else begin
                        if (start_capture) begin
                            camera_ready_to_capture <= 0;
                            state <= SM2;
                        end
                    end
                end
                
                //// Setup capture
                SM2: begin
                    state <= CAPTURE_IMAGE_0;
                    camera_set_capture_return_state <= SM3;
                end
                
                //// Read buffer
                SM3: begin
                    state <= READ_BUFFER_0;
                    camera_read_buffer_return_state <= SM4;
                end
                
                SM4: begin
                    capture_done <= 1;
                    state <= SM1;
                end
            endcase
        end
    end
    
    assign output_states = state;

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

