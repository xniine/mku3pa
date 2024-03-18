`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2024 11:04:04 PM
// Design Name: 
// Module Name: eth_wrapper
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


module eth_wrapper (
    input  wire         clk,
    input  wire         rst,
    
    input  wire         gt_reset  ,
    input  wire         gt_clock  ,
    input  wire         gt_clk_p  ,
    input  wire         gt_clk_n  ,
    input  wire [  1:0] gt_rxp    ,
    input  wire [  1:0] gt_rxn    ,
    output wire [  1:0] gt_txp    ,
    output wire [  1:0] gt_txn    ,
    
    output wire         tx_usrclk2,
    output wire [  1:0] rx_locked ,
    
    input  wire [127:0] tx_tdata  , 
    input  wire [ 15:0] tx_tkeep  , 
    input  wire [  1:0] tx_tvalid , 
    output wire [  1:0] tx_tready , 
    input  wire [  1:0] tx_tlast  ,
    
    output wire [127:0] rx_tdata  ,
    output wire [ 15:0] rx_tkeep  ,
    output wire [  1:0] rx_tvalid ,
    input  wire [  1:0] rx_tready ,
    output wire [  1:0] rx_tlast
    );
    
    //////////////////////////////////////////////////////////////////////////////
    // Transceiver
    //////////////////////////////////////////////////////////////////////////////
    wire         gt_reset_tx_done;
    wire         gt_reset_rx_done;
    wire         gt_refclk       ;
    wire         gt_tx_usrclk2   ;
    wire         gt_rx_usrclk2   ;
    
    wire [ 13:0] gt_txsequence   ;
    wire [ 11:0] gt_txheader     ;
    wire [127:0] gt_userdata_tx  ;
    
    wire [  1:0] gt_rxgearboxslip;
    wire [  3:0] gt_rxheadervalid;
    wire [  3:0] gt_rxdatavalid  ;
    wire [ 11:0] gt_rxheader     ;
    wire [127:0] gt_userdata_rx  ;
    
    //----------------------------------------------------------------------------
    IBUFDS_GTE4(.O(gt_refclk), .I(gt_clk_p), .IB(gt_clk_n), .CEB(1'h0), .ODIV2(1'h0));
    
    gtwizard_ultrascale_0 gtwizard_ultrascale_0_inst (
        .gtwiz_userclk_tx_usrclk2_out      (gt_tx_usrclk2   ), // output
        .gtwiz_userclk_rx_usrclk2_out      (gt_rx_usrclk2   ), // output
        .gtwiz_userclk_tx_reset_in         (1'h0            ), // input
        .gtwiz_userclk_rx_reset_in         (1'h0            ), // input
        .gtwiz_reset_clk_freerun_in        (gt_clock        ), // input
        
        .gtwiz_reset_all_in                (gt_reset        ), // input
        .gtwiz_reset_tx_pll_and_datapath_in(1'h0            ), // input
        .gtwiz_reset_tx_datapath_in        (1'h0            ), // input
        .gtwiz_reset_rx_pll_and_datapath_in(1'h0            ), // input
        .gtwiz_reset_rx_datapath_in        (1'h0            ), // input
        .gtwiz_reset_tx_done_out           (gt_reset_tx_done), // output
        .gtwiz_reset_rx_done_out           (gt_reset_rx_done), // output

        .gtrefclk00_in                     (gt_refclk       ), // input
        .gtyrxn_in                         (gt_rxn          ), // input
        .gtyrxp_in                         (gt_rxp          ), // input
        .gtytxn_out                        (gt_txn          ), // output
        .gtytxp_out                        (gt_txp          ), // output

        .txsequence_in                     (gt_txsequence   ), // input
        .txheader_in                       (gt_txheader     ), // input
        .gtwiz_userdata_tx_in              (gt_userdata_tx  ), // input
        
        .rxgearboxslip_in                  (gt_rxgearboxslip), // input
        .rxheadervalid_out                 (gt_rxheadervalid), // output
        .rxdatavalid_out                   (gt_rxdatavalid  ), // output
        .rxheader_out                      (gt_rxheader     ), // output
        .gtwiz_userdata_rx_out             (gt_userdata_rx  )  // output
    );
    
    //////////////////////////////////////////////////////////////////////////////
    // 10G PHY/MAC
    //////////////////////////////////////////////////////////////////////////////
    wire [63:0] tx_userdata   [1:0];
    wire [ 5:0] tx_header     [1:0];
    
    wire [ 1:0] rx_gearboxslip[1:0];
    wire [ 1:0] rx_datavalid  [1:0];
    wire [ 1:0] rx_headervalid[1:0];
    wire [63:0] rx_userdata   [1:0];
    wire [ 5:0] rx_header     [1:0];
    
    wire [63:0] xgmii_txd     [1:0];
    wire [ 7:0] xgmii_txc     [1:0];
    wire [63:0] xgmii_rxd     [1:0];
    wire [ 7:0] xgmii_rxc     [1:0];
    
    wire [63:0] tx_axis_tdata [1:0];
    wire [ 7:0] tx_axis_tkeep [1:0];
    wire [ 0:0] tx_axis_tvalid[1:0];
    wire [ 0:0] tx_axis_tready[1:0];
    wire [ 0:0] tx_axis_tlast [1:0];
    
    wire [63:0] rx_axis_tdata [1:0];
    wire [ 7:0] rx_axis_tkeep [1:0];
    wire [ 0:0] rx_axis_tvalid[1:0];
    wire [ 0:0] rx_axis_tready[1:0];
    wire [ 0:0] rx_axis_tlast [1:0];
    
    wire [ 1:0] rx_block_lock;
    
    assign tx_usrclk2 = gt_tx_usrclk2;
    assign rx_locked  = rx_block_lock;
    //////////////////////////////////////////////////////////////////////////////
    reg [6:0] txsequence;
    //----------------------------------------------------------------------------
    // TX sequence and reset
    //----------------------------------------------------------------------------
    always @(posedge gt_tx_usrclk2) begin
        if (gt_reset_tx_done && txsequence != 7'd32) begin
            txsequence <= txsequence + 1'b1;
        end else begin
            txsequence <= 7'd0;
        end
    end
    
    //////////////////////////////////////////////////////////////////////////////
    wire gt_tx_reset = !gt_reset_tx_done;
    wire gt_rx_reset = !gt_reset_rx_done;
    //----------------------------------------------------------------------------
    reg  txusrclk2_ce; // Walkaround for txsequence handling
    wire gt_tx_clk;
    always @(posedge gt_tx_usrclk2) begin
        if (gt_reset_tx_done && txsequence != 7'd31) begin
            txusrclk2_ce <= 1'b1;
        end else begin
            txusrclk2_ce <= 1'b0;
        end
    end
    //----------------------------------------------------------------------------
    BUFHCE bufhce_0 (.I(gt_tx_usrclk2), .O(gt_tx_clk), .CE(txusrclk2_ce));
    
    //////////////////////////////////////////////////////////////////////////////
    genvar n1;
    generate
    for (n1 = 0; n1 < 2; n1 = n1 + 1) begin
        //------------------------------------------------------------------------
        wire rxusrclk2_ce = rx_headervalid[n1] && rx_datavalid[n1]; // Walkaround for for invalid rxheader/data
        wire gt_rx_clk;
        //------------------------------------------------------------------------
        BUFHCE bufhce_1 (.I(gt_rx_usrclk2), .O(gt_rx_clk), .CE(rxusrclk2_ce));
    
        //////////////////////////////////////////////////////////////////////////
        eth_phy_10g #(
            .SLIP_COUNT_WIDTH(5),
            .BIT_REVERSE(1)
        )
        eth_phy_10g_inst (
            .tx_clk            (gt_tx_clk         ),
            .tx_rst            (gt_tx_reset       ),
            .rx_clk            (gt_rx_clk         ),
            .rx_rst            (gt_rx_reset       ),
            
            .xgmii_txd         (xgmii_txd     [n1]),
            .xgmii_txc         (xgmii_txc     [n1]),
            .xgmii_rxd         (xgmii_rxd     [n1]),
            .xgmii_rxc         (xgmii_rxc     [n1]),
            
            .serdes_tx_data    (tx_userdata   [n1]),
            .serdes_tx_hdr     (tx_header     [n1]),
            .serdes_rx_data    (rx_userdata   [n1]),
            .serdes_rx_hdr     (rx_header     [n1]),
            .serdes_rx_bitslip (rx_gearboxslip[n1]),
            .rx_block_lock     (rx_block_lock [n1]),
            .rx_high_ber       (                  ),
            .tx_prbs31_enable  (1'b0              ),
            .rx_prbs31_enable  (1'b0              )
        );
        
        //////////////////////////////////////////////////////////////////////////
        eth_mac_10g_fifo #(
            .ENABLE_PADDING(1),
            .ENABLE_DIC(1),
            .MIN_FRAME_LENGTH(64),
            .TX_FIFO_DEPTH(4096),
            .TX_FRAME_FIFO(   1),
            .RX_FIFO_DEPTH(4096 * 2),
            .RX_FRAME_FIFO(   1)
        )
        eth_mac_10g_fifo_inst (
            .tx_clk            (gt_tx_clk         ),
            .tx_rst            (gt_tx_reset       ),
            .rx_clk            (gt_rx_clk         ),
            .rx_rst            (gt_rx_reset       ),
            .logic_clk         (clk               ),
            .logic_rst         (rst               ),
            // AXI output
            .tx_axis_tdata     (tx_axis_tdata [n1]),
            .tx_axis_tkeep     (tx_axis_tkeep [n1]),
            .tx_axis_tvalid    (tx_axis_tvalid[n1]),
            .tx_axis_tready    (tx_axis_tready[n1]),
            .tx_axis_tlast     (tx_axis_tlast [n1]),
            .tx_axis_tuser     (1'h0              ),
            // AXI input
            .rx_axis_tdata     (rx_axis_tdata [n1]),
            .rx_axis_tkeep     (rx_axis_tkeep [n1]),
            .rx_axis_tvalid    (rx_axis_tvalid[n1]),
            .rx_axis_tready    (rx_axis_tready[n1]),
            .rx_axis_tlast     (rx_axis_tlast [n1]),
            .rx_axis_tuser     (1'h0              ),
            // XGMII
            .xgmii_txd         (xgmii_txd     [n1]),
            .xgmii_txc         (xgmii_txc     [n1]),
            .xgmii_rxd         (xgmii_rxd     [n1]),
            .xgmii_rxc         (xgmii_rxc     [n1]),
            // FIFO
            .tx_fifo_overflow  (                  ),
            .tx_fifo_bad_frame (                  ),
            .tx_fifo_good_frame(                  ),
            .rx_error_bad_frame(                  ),
            .rx_error_bad_fcs  (                  ),
            .rx_fifo_overflow  (                  ),
            .rx_fifo_bad_frame (                  ),
            .rx_fifo_good_frame(                  ),
            .ifg_delay         (8'd12             )
        );
    end
    endgenerate
    
    //////////////////////////////////////////////////////////////////////////////
    assign gt_rxgearboxslip = {rx_gearboxslip[1],rx_gearboxslip[0]};
    assign gt_txsequence    = {txsequence       ,txsequence       };
    assign gt_txheader      = {tx_header     [1],tx_header     [0]};
    assign gt_userdata_tx   = {tx_userdata   [1],tx_userdata   [0]};
    //---------------------------------------------------------------------------- 
    assign {rx_headervalid[1],rx_headervalid[0]} = gt_rxheadervalid;
    assign {rx_datavalid  [1],rx_datavalid  [0]} = gt_rxdatavalid  ;
    assign {rx_header     [1],rx_header     [0]} = gt_rxheader     ;
    assign {rx_userdata   [1],rx_userdata   [0]} = gt_userdata_rx  ;
    //////////////////////////////////////////////////////////////////////////////
    assign {tx_axis_tdata [1],tx_axis_tdata [0]} = tx_tdata ;
    assign {tx_axis_tkeep [1],tx_axis_tkeep [0]} = tx_tkeep ;
    assign {tx_axis_tvalid[1],tx_axis_tvalid[0]} = tx_tvalid;
    assign {tx_axis_tlast [1],tx_axis_tlast [0]} = tx_tlast ;
    //----------------------------------------------------------------------------
    assign tx_tready = {tx_axis_tready[1],tx_axis_tready[0]};
    //----------------------------------------------------------------------------
    assign rx_tdata  = {rx_axis_tdata [1],rx_axis_tdata [0]};
    assign rx_tkeep  = {rx_axis_tkeep [1],rx_axis_tkeep [0]};
    assign rx_tvalid = {rx_axis_tvalid[1],rx_axis_tvalid[0]};
    assign rx_tlast  = {rx_axis_tlast [1],rx_axis_tlast [0]};
    //----------------------------------------------------------------------------
    assign {rx_axis_tready[1],rx_axis_tready[0]} = rx_tready;
    
endmodule
