`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2025 05:49:53 PM
// Design Name: 
// Module Name: decimate
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


module decimate#(
    parameter ROW_MAX = 96,
    parameter COL_MAX = 96,
    parameter N_BYTES = 4096
    )(
    input  wire clk,
    input  wire rst,
    input  wire [95:0] bitmask,
    
    input  wire [7:0] data_in,
    input  wire       data_in_valid,
    input  wire       data_in_last,
    
    output reg  [7:0] data_out,
    output reg        data_out_valid,
    output reg        data_out_last,
    
    output reg [11:0] row,
    output reg [11:0] col
    );
    
    reg [11:0] row_counter = 0;
    reg [11:0] col_counter = 0;
    
    reg [31:0] byte_counter = 0;
    
    always @(posedge clk) begin
        row <= row_counter;
        col <= col_counter;
        if (rst) begin
            row_counter <= 0;
            col_counter <= 0;
            data_out    <= 0;
            data_out_valid <= 0;
            data_out_last <= 0;
            byte_counter <= 0;
        end else begin
            data_out <= 0;
            data_out_last <= 0;
            data_out_valid <= 0;
            
            if (data_in_valid) begin
            
                data_out <= data_in;
                
                if ((bitmask[row_counter] == 0) || (bitmask[col_counter] == 0)) begin
                    data_out_valid <= 0;
                end else begin
                    data_out_valid <= 1;
                    byte_counter <= byte_counter + 1;
                    
                    if (byte_counter == (N_BYTES-1)) begin
                        data_out_last <= 1;
                    end
                end
                
                col_counter <= col_counter + 1;
                
                if (col_counter >= (COL_MAX-1)) begin
                    col_counter <= 0;
                    row_counter <= row_counter + 1;
                end
                
                if ((row_counter == (ROW_MAX -1)) && (col_counter == (COL_MAX - 1))) begin
                    col_counter <= 0;
                    row_counter <= 0;
                    byte_counter <= 0;
                end
            end
        end    
    end
endmodule
