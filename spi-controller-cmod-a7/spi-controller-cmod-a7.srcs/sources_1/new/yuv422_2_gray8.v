`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2025 10:39:25 AM
// Design Name: 
// Module Name: yuv422_2_gray8
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


module yuv422_2_gray8(
    input  wire clk,
    input  wire rst,
    
    input  wire [7:0] pixel_value,
    input  wire       pixel_valid,
    input  wire       pixel_last,
    
    output reg  [7:0] data_out,
    output reg        data_valid,
    output reg        data_last
    );
    reg state = 0;
    reg [7:0] temp = 0;
    
    always @(posedge clk) begin
        if (rst) begin
            state <= 0;
            temp  <= 0;
            data_valid <= 0;
            data_last <= 0;
        end else begin
            case (state)
                (1'h0): begin
                    data_valid <= 0;
                    data_last  <= 0;
                    if (pixel_valid) begin
                    
                        // temp
                        temp <= pixel_value;
                        
                        // output
                        data_out <= 0;
                        data_last <= pixel_last;
                        data_valid <= 0;
                        
                        // next state
                        state <= 1'h1;    
                    end
                end
                (1'h1): begin
                    data_valid <= 0;
                    data_last  <= 0;
                    if (pixel_valid) begin
                    
                        //temp
                    
                        // output
                        data_out <= temp;  
                        data_last <= pixel_last;
                        data_valid <= 1;
                       
                        // next state
                        state <= 1'h0;
                    end
                end
            endcase
        end
    end
    
    
endmodule
