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

    localparam FIFO_DEPTH = 4096;

    reg [7:0] fifo_data [0:FIFO_DEPTH-1];
    integer wr_ptr = 0;
    integer rd_ptr = 0;
    integer packet_len = 0;

    reg sending = 0;

    reg [7:0] tdata_reg = 8'd0;
    reg       tvalid_reg = 1'b0;
    reg       tlast_reg  = 1'b0;

    assign m_axis_tdata  = tdata_reg;
    assign m_axis_tvalid = tvalid_reg;
    assign m_axis_tlast  = tlast_reg;

    always @(posedge clk) begin
        // Capture pixels into FIFO until pixel_last
        if (!sending && pixel_valid) begin
            fifo_data[wr_ptr] <= pixel_data;
            wr_ptr <= wr_ptr + 1;

            if (pixel_last) begin
                packet_len <= wr_ptr + 1;
                rd_ptr     <= 0;
                sending    <= 1;
            end
        end

        // Stream out after complete packet received
        if (sending && m_axis_tready) begin
            tdata_reg  <= fifo_data[rd_ptr];
            tvalid_reg <= 1'b1;
            tlast_reg  <= (rd_ptr == packet_len - 1);

            rd_ptr <= rd_ptr + 1;

            if (rd_ptr == packet_len - 1) begin
                sending   <= 0;
                wr_ptr    <= 0;
                packet_len <= 0;
            end
        end else if (!sending || !m_axis_tready) begin
            tvalid_reg <= 1'b0;
            tlast_reg  <= 1'b0;
        end
    end

endmodule
