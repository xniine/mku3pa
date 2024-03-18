
`timescale 1ns/1ns

///////////////////////////////////////////////////////////////////////////////
// Ethernet GMII to AXIS
///////////////////////////////////////////////////////////////////////////////
module eth_gmii_fifo(
    // Clock with synchronous reset
    input  wire        gtx_clk       ,
    input  wire        clk           ,
    input  wire        rst           ,
    // Ethernet: 1000BASE-T GMII
    input  wire        gmii_rx_clk   ,
    input  wire [7:0]  gmii_rxd      ,
    input  wire        gmii_rx_dv    ,
    input  wire        gmii_rx_er    ,
    output wire        gmii_tx_clk   ,
    output wire [7:0]  gmii_txd      ,
    output wire        gmii_tx_en    ,
    output wire        gmii_tx_er    ,
    // AXI input/output
    input  wire [63:0] tx_axis_tdata ,
    input  wire [ 7:0] tx_axis_tkeep ,
    input  wire        tx_axis_tvalid,
    output wire        tx_axis_tready,
    input  wire        tx_axis_tlast ,
    input  wire        tx_axis_tuser ,
    output wire [63:0] rx_axis_tdata ,
    output wire [ 7:0] rx_axis_tkeep ,
    output wire        rx_axis_tvalid,
    input  wire        rx_axis_tready,
    output wire        rx_axis_tlast ,
    output wire        rx_axis_tuser
    );
       
    assign gmii_tx_clk = gtx_clk;
    eth_mac_1g_fifo #(
        .AXIS_DATA_WIDTH   (64),
        .ENABLE_PADDING    (1),
        .MIN_FRAME_LENGTH  (64),
        .TX_FRAME_FIFO     (1),
        .RX_FRAME_FIFO     (1)
    )
    eth_mac_1g_fifo_inst (
        .logic_clk         (clk           ), // AXIS CLK
        .logic_rst         (rst           ),
        // AXIS to FIFO and IP/Ethernet
        .tx_axis_tdata     (tx_axis_tdata ),
        .tx_axis_tkeep     (tx_axis_tkeep ),
        .tx_axis_tvalid    (tx_axis_tvalid),
        .tx_axis_tready    (tx_axis_tready),
        .tx_axis_tlast     (tx_axis_tlast ),
        .tx_axis_tuser     (tx_axis_tuser ),
        .rx_axis_tdata     (rx_axis_tdata ),
        .rx_axis_tkeep     (rx_axis_tkeep ),
        .rx_axis_tvalid    (rx_axis_tvalid),
        .rx_axis_tready    (rx_axis_tready),
        .rx_axis_tlast     (rx_axis_tlast ),
        .rx_axis_tuser     (rx_axis_tuser ),
        // GMII/MII interface
        .gmii_rxd          (gmii_rxd      ),
        .gmii_rx_dv        (gmii_rx_dv    ),
        .gmii_rx_er        (gmii_rx_er    ),
        .gmii_txd          (gmii_txd      ),
        .gmii_tx_en        (gmii_tx_en    ),
        .gmii_tx_er        (gmii_tx_er    ),
        // Clock & Control
        .rx_clk            (gmii_rx_clk   ),
        .tx_clk            (gtx_clk       ),
        .rx_clk_enable     (1'b1          ),
        .tx_clk_enable     (1'b1          ),
        .rx_mii_select     (1'b0          ),
        .tx_mii_select     (1'b0          ),
        // Statistics
        .tx_fifo_overflow  (              ),
        .tx_fifo_bad_frame (              ),
        .tx_fifo_good_frame(              ),
        .rx_error_bad_frame(              ),
        .rx_error_bad_fcs  (              ),
        .rx_fifo_overflow  (              ),
        .rx_fifo_bad_frame (              ),
        .rx_fifo_good_frame(              ),
        // Configuration, inter-frame-gap -> 12 CLK
        .ifg_delay         (8'd12)
    );
endmodule

