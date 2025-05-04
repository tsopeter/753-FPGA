`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2025 05:11:47 PM
// Design Name: 
// Module Name: tb_pilotnet
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


module tb_pilotnet();

reg clk = 0;
wire done, idle, ready;
reg rst = 0;

wire tvalid_out;
wire tready_out = 1'h1;
reg start = 0;

wire [15:0] data_out;

reg tvalid = 0;
wire tready;

reg [7:0] data_input;

always begin
    #50;
    clk <= ~clk;
end

reg [7:0] image [0:4096];
reg [11:0] counter = 0;
reg [3:0] state = 0;


initial begin
    $readmemh("data.hex", image);
end

always @(posedge clk) begin
    tvalid <= 0;

    case (state)
        (4'h0): begin
            rst   <= 1'h0;
            state <= 4'h1;
        end
        (4'h1): begin
            rst   <= 1'h1;
            start <= 1'h1;
            state <= 4'h3;
        end
        (4'h3): begin
            if (tready) begin
                tvalid <= 1;
                data_input <= image[counter];
                counter <= counter + 1;   
            end
            if (counter >= 4095) begin
                counter <= 0;
                state <= 4'h4;
            end
        end
        (4'h4): begin
            if (tvalid_out) begin
                state <= 4'h3;
            end
        end
    endcase
end


accel_wrapper dut (
    .ap_clk_0(clk),
    .ap_rst_n_0(rst),
    
    .ap_ctrl_0_done(done),
    .ap_ctrl_0_idle(idle),
    .ap_ctrl_0_ready(ready),
    .ap_ctrl_0_start(start),
    
    .input_1_0_tdata(data_input),
    .input_1_0_tready(tready),
    .input_1_0_tvalid(tvalid),
    
    .layer16_out_0_tdata(data_out),
    .layer16_out_0_tready(tready_out),
    .layer16_out_0_tvalid(tvalid_out)
);
endmodule
