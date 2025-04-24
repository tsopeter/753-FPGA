module spi_camera_stream_bridge (
    input  wire        clk,

    input  wire [7:0]  pixel_data,
    input  wire        pixel_valid,
    input  wire        pixel_last,

    output wire [7:0]  m_axis_tdata,
    output wire        m_axis_tvalid,
    output wire        m_axis_tlast,
    input  wire        m_axis_tready
);

    // FIFO to hold pixel data
    reg  [7:0] fifo_data [0:4095];
    reg        fifo_last [0:4095];
    integer    wr_ptr = 0;
    integer    rd_ptr = 0;
    reg        fifo_empty = 1;

    reg [7:0]  tdata_reg;
    reg        tvalid_reg = 0;
    reg        tlast_reg = 0;

    assign m_axis_tdata  = tdata_reg;
    assign m_axis_tvalid = tvalid_reg;
    assign m_axis_tlast  = tlast_reg;

    always @(posedge clk) begin
        // Writing to FIFO
        if (pixel_valid) begin
            fifo_data[wr_ptr] <= pixel_data;
            fifo_last[wr_ptr] <= pixel_last;
            wr_ptr <= wr_ptr + 1;
        end

        // Streaming out if tready and data available
        if (m_axis_tready && !fifo_empty) begin
            tdata_reg  <= fifo_data[rd_ptr];
            tlast_reg  <= fifo_last[rd_ptr];
            tvalid_reg <= 1;

            rd_ptr <= rd_ptr + 1;
        end else begin
            tvalid_reg <= 0;
        end

        // Update empty flag
        fifo_empty <= (rd_ptr == wr_ptr);
    end

endmodule
