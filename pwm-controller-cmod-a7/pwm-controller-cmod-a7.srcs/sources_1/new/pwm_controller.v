`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2025 06:27:27 PM
// Design Name: 
// Module Name: pwm_controller
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


module pwm_controller#(
    parameter CLK_FREQ = 100_000_000  // in Hz
)(
    input  wire clk,
    input  wire rst,
    
    input  wire [3:0] angle,
    
    output reg  pwm_pin
    );
    
    localparam PWM_FREQ_HZ = 50;
    localparam PWM_PERIOD_CYCLES = CLK_FREQ / PWM_FREQ_HZ;  // 20 m cycles (20 ms)
    
    localparam NUM_ANGLES = 11;
    localparam MIN_DUTY   = 100_000;
    localparam MAX_DUTY   = 200_000;
    
    
    // we have 20 (angles, -1.0 to 1.0)
    reg [31:0] duty_table [0:(NUM_ANGLES-1)];
    reg [31:0] duty_counter = 0;
    
    // create the duty_table
    genvar i;
    generate
        for (i = 0; i < NUM_ANGLES; i = i + 1) begin
            initial begin
                duty_table[ i] = MIN_DUTY + i * (MAX_DUTY - MIN_DUTY) / (NUM_ANGLES-1);
            end
        end
    endgenerate
    
    always @(posedge clk) begin
        if (rst) begin
            duty_counter <= 0;
            pwm_pin <= 0;
        end else begin
            if (duty_counter < duty_table[angle]) begin
                duty_counter <= duty_counter + 1;
                pwm_pin <= 1;
            end else if (duty_counter < PWM_PERIOD_CYCLES) begin
                duty_counter <= duty_counter + 1;
                pwm_pin <= 0;
            end else begin
                duty_counter <= 0;
                pwm_pin <= 0;
            end
        end
    end
    
endmodule
