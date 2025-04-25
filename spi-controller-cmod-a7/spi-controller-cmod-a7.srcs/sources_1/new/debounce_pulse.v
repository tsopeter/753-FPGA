module debounce_pulse #(
    parameter CLK_FREQ_HZ = 50000000,       // Clock frequency
    parameter DEBOUNCE_TIME_MS = 100         // Debounce time in milliseconds
)(
    input  wire clk,
    input  wire rst,
    input  wire btn_in,      // Raw button input
    output reg  btn_pulse    // 1-clock-cycle pulse on valid press 
);

    // Calculate number of samples for debounce period
    localparam integer DEBOUNCE_COUNT_MAX = (CLK_FREQ_HZ / 1000000) * DEBOUNCE_TIME_MS;

    // Debounce signal tracking
    reg [15:0] debounce_counter = 0;
    reg        btn_sync_0 = 0, btn_sync_1 = 0;    // for synchronizing to clk
    reg        btn_debounced = 0;
    reg        btn_debounced_prev = 0;

    // Synchronize btn_in to system clock
    always @(posedge clk) begin
        btn_sync_0 <= btn_in;
        btn_sync_1 <= btn_sync_0;
    end

    // Debounce FSM
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            debounce_counter   <= 0;
            btn_debounced      <= 0;
        end else begin
            if (btn_sync_1 == btn_debounced) begin
                debounce_counter <= 0;
            end else begin
                debounce_counter <= debounce_counter + 1;
                if (debounce_counter >= DEBOUNCE_COUNT_MAX) begin
                    btn_debounced <= btn_sync_1;
                    debounce_counter <= 0;
                end
            end
        end
    end

    // Pulse generation on rising edge
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            btn_pulse <= 0;
            btn_debounced_prev <= 0;
        end else begin
            btn_debounced_prev <= btn_debounced;
            btn_pulse <= (btn_debounced == 1) && (btn_debounced_prev == 0);
        end
    end

endmodule

