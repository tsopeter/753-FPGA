`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2025 05:57:12 PM
// Design Name: 
// Module Name: tb_decimate
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


module tb_decimate();

    reg clock = 0;
    reg rst = 0;
    
    reg [7:0] data_in = 8'h00;
    reg data_in_valid = 0;
    reg data_in_last  = 0;
    
    wire [11:0] row;
    wire [11:0] col;
    
    wire [7:0] data_out;
    wire data_out_valid;
    wire data_out_last;
    wire [1:0] data_v;
    
    always begin
        #5
        clock <= 1;
        #5
        clock <= 0;
    end
    
    reg [11:0] counter = 0;
    
    always @(posedge clock) begin
        counter <= counter + 1;
        data_in <= data_in + 1;
        
        case (counter)
            (0): begin
                rst <= 1;
            end
            (1): begin
                rst <= 0;
            end
            (10): begin
                data_in_valid <= 1;
            end
            (90): begin
                data_in_last <= 1;
            end
            (91): begin
                data_in_valid <= 0;
                data_in_last <= 0;
            end
            (120): begin
                data_in_valid <= 1;
            end
        endcase
    end
    
    decimate #(
        .ROW_MAX(9),
        .COL_MAX(9),
        .N_BYTES(36)
    ) dut (
        .clk(clock),
        .rst(rst),
        
        .data_in(data_in),
        .data_in_valid(data_in_valid),
        .data_in_last(data_in_last),
        
        .data_out(data_out),
        .data_out_last(data_out_last),
        .data_out_valid(data_out_valid),
        
        .row(row),
        .col(col)
    );
    
endmodule
