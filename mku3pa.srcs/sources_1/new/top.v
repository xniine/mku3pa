`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2022 03:22:50 PM
// Design Name: 
// Module Name: top
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


module top(
    output wire        DDR4_ACT_N,
    output wire [16:0] DDR4_ADR  ,
    output wire [ 1:0] DDR4_BA   ,
    output wire [ 0:0] DDR4_BG   ,
    output wire [ 0:0] DDR4_CKE  ,
    output wire [ 0:0] DDR4_ODT  ,
    output wire [ 0:0] DDR4_CS_N ,
    output wire [ 0:0] DDR4_CK_T ,
    output wire [ 0:0] DDR4_CK_C ,
    output wire        DDR4_RST_N,
    inout  wire [ 3:0] DDR4_DM   ,
    inout  wire [31:0] DDR4_DQ   ,
    inout  wire [ 3:0] DDR4_DQS_T,
    inout  wire [ 3:0] DDR4_DQS_C,
    
    output wire [1:0] ZSFP_TXP,
    output wire [1:0] ZSFP_TXN,
    input  wire [1:0] ZSFP_RXP,
    input  wire [1:0] ZSFP_RXN,
    /*
    output wire [3:0] QSFP_TXP,
    output wire [3:0] QSFP_TXN,
    input  wire [3:0] QSFP_RXP,
    input  wire [3:0] QSFP_RXN,
    */
    inout  wire       ZSFP_CLKSCL ,
    inout  wire       ZSFP_CLKSDA ,
    output wire [1:0] ZSFP_RS0    ,
    output wire [1:0] ZSFP_RS1    ,
    output wire [1:0] ZSFP_TX_DIS ,
    
    inout  wire       QSFP_CLKSCL ,
    inout  wire       QSFP_CLKSDA ,
    inout  wire       QSFP_I2C_SCL,
    inout  wire       QSFP_I2C_SDA,
    output wire       QSFP_LPMODE ,
    output wire       QSFP_MODSELL,
    output wire       QSFP_RESETL ,
    input  wire       QSFP_INTL   ,
    input  wire       QSFP_MODPRSL,

    input  wire       CLK_100M,
    input  wire       CLK_100M_P,
    input  wire       CLK_100M_N,
    
    input  wire       ZSFP_CLK_P,
    input  wire       ZSFP_CLK_N,
    
    input  wire       QSFP_CLK_P,
    input  wire       QSFP_CLK_N,
    
    output wire [2:0] LED,
    input  wire       KEY
    );
    
    OBUF(.O(ZSFP_TX_DIS[0]), .I(1'h0));
    OBUF(.O(ZSFP_RS0   [0]), .I(1'h0));
    OBUF(.O(ZSFP_RS1   [0]), .I(1'h0));
    
    OBUF(.O(ZSFP_TX_DIS[1]), .I(1'h0));
    OBUF(.O(ZSFP_RS0   [1]), .I(1'h0));
    OBUF(.O(ZSFP_RS1   [1]), .I(1'h0));
    
    //////////////////////////////////////////////////////////////////////////////
    // (100MHz) Ext Clock and (On-baord) KEY
    //----------------------------------------------------------------------------
    wire clk_100m, key_in;
    //----------------------------------------------------------------------------
    IBUFG(.O(clk_100m), .I(CLK_100M));
    debounce #(.N(1)) debounce_inst (
        .clk(clk_100m),
        .switch_in(!KEY),
        .switch_out(key_in)
    );
    
    //////////////////////////////////////////////////////////////////////////////
    // VIO for Soft-reset
    //----------------------------------------------------------------------------
    wire soft_reset;
    vio_0 vio_0_inst(
        .clk       (clk_100m  ),
        .probe_out0(soft_reset)
    );
    
    //////////////////////////////////////////////////////////////////////////////
    // Clock Generation
    //----------------------------------------------------------------------------
    wire mmcm_in = clk_100m, mmcm_rst = soft_reset || key_in;
    wire mmcm_clkfb, mmcm_locked;
    wire mmcm_out0;
    wire mmcm_out1;
    wire mmcm_out2;
    wire mmcm_out3;
    wire mmcm_out4;
    wire mmcm_out5;
    //----------------------------------------------------------------------------
    // MMCM instance
    // PFD range: 10 MHz to 500 MHz
    // VCO range: 600 MHz to 1440 MHz
    // 100 MHz in, M = 10, D = 1 sets Fvco = 1000 MHz (in range)
    // 0) Divide by 7.5 to get output frequency of 133MHz
    // 1) Divide by   8 to get output frequency of 125MHz
    // 2) Divide by   6 to get output frequency of 166MHz
    // 3) Divide by   5 to get output frequency of 200MHz
    // 4) Divide by   4 to get output frequency of 250MHz
    // 5) Divide by   3 to get output frequency of 333MHz
    //----------------------------------------------------------------------------
    MMCME2_BASE #(
        .BANDWIDTH("OPTIMIZED"),   // Jitter programming (OPTIMIZED, HIGH, LOW)
        .CLKFBOUT_MULT_F(10.0),    // Multiply value for all CLKOUT (2.000-64.000).
        .CLKFBOUT_PHASE(0.0),      // Phase offset in degrees of CLKFB (-360.000-360.000).
        .CLKIN1_PERIOD(10.0),      // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
        // CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for each CLKOUT (1-128)
        .CLKOUT1_DIVIDE( 8),
        .CLKOUT2_DIVIDE( 6),
        .CLKOUT3_DIVIDE( 5),
        .CLKOUT4_DIVIDE( 4),
        .CLKOUT5_DIVIDE( 3),
        .CLKOUT6_DIVIDE(),
        .CLKOUT0_DIVIDE_F(7.5),    // Divide amount for CLKOUT0 (1.000-128.000).
        // CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for each CLKOUT (0.01-0.99).
        .CLKOUT0_DUTY_CYCLE(0.5),
        .CLKOUT1_DUTY_CYCLE(0.5),
        .CLKOUT2_DUTY_CYCLE(0.5),
        .CLKOUT3_DUTY_CYCLE(0.5),
        .CLKOUT4_DUTY_CYCLE(0.5),
        .CLKOUT5_DUTY_CYCLE(0.5),
        .CLKOUT6_DUTY_CYCLE(0.5),
        // CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
        .CLKOUT0_PHASE(0.0),
        .CLKOUT1_PHASE(0.0),
        .CLKOUT2_PHASE(0.0),
        .CLKOUT3_PHASE(0.0),
        .CLKOUT4_PHASE(0.0),
        .CLKOUT5_PHASE(0.0),
        .CLKOUT6_PHASE(0.0),
        .CLKOUT4_CASCADE("FALSE"), // Cascade CLKOUT4 counter with CLKOUT6 (FALSE, TRUE)
        .DIVCLK_DIVIDE(1),         // Master division value (1-106)
        .REF_JITTER1(0.0),         // Reference input jitter in UI (0.000-0.999).
        .STARTUP_WAIT("FALSE")     // Delays DONE until MMCM is locked (FALSE, TRUE)
    )
    mmcm2_base_0 (
        .CLKOUT0 (mmcm_out0),  // 1-bit output: CLKOUT0
        .CLKOUT0B(),           // 1-bit output: Inverted CLKOUT0
        .CLKOUT1 (mmcm_out1),  // 1-bit output: CLKOUT1
        .CLKOUT1B(),           // 1-bit output: Inverted CLKOUT1
        .CLKOUT2 (mmcm_out2),  // 1-bit output: CLKOUT2
        .CLKOUT2B(),           // 1-bit output: Inverted CLKOUT2
        .CLKOUT3 (mmcm_out3),  // 1-bit output: CLKOUT3
        .CLKOUT3B(),           // 1-bit output: Inverted CLKOUT3
        .CLKOUT4 (mmcm_out4),  // 1-bit output: CLKOUT4
        .CLKOUT5 (mmcm_out5),  // 1-bit output: CLKOUT5
        .CLKOUT6 (),           // 1-bit output: CLKOUT6
        .CLKFBOUT(mmcm_clkfb), // 1-bit output: Feedback clock
        .CLKFBOUTB(),          // 1-bit output: Inverted CLKFBOUT
        .LOCKED(mmcm_locked),  // 1-bit output: LOCK
        .CLKIN1(mmcm_in),      // 1-bit input : Clock
        .PWRDWN(1'b0),         // 1-bit input : Power-down
        .RST(mmcm_rst),        // 1-bit input : Reset
        .CLKFBIN(mmcm_clkfb)   // 1-bit input : Feedback clock
    );
    //----------------------------------------------------------------------------
    wire clk_133m = mmcm_out0;
    wire clk_125m = mmcm_out1;
    wire clk_166m = mmcm_out2;
    wire clk_200m = mmcm_out3;
    wire clk_250m = mmcm_out4;
    wire clk_333m = mmcm_out5;
    //----------------------------------------------------------------------------
    wire reset = !mmcm_locked;
    wire rst_n = !reset;
    wire clock = clk_100m;
    
    //////////////////////////////////////////////////////////////////////////////
    // SFP+ to GMII (200MHz Internal CLK)
    //----------------------------------------------------------------------------
    wire [63:0] sfp_rx_tdata [1:0], sfp_tx_tdata [1:0]; 
    wire [ 7:0] sfp_rx_tkeep [1:0], sfp_tx_tkeep [1:0]; 
    wire        sfp_rx_tvalid[1:0], sfp_tx_tvalid[1:0]; 
    wire        sfp_rx_tready[1:0], sfp_tx_tready[1:0]; 
    wire        sfp_rx_tlast [1:0], sfp_tx_tlast [1:0];
    wire [ 1:0] sfp_rx_locked ;
    wire        sfp_tx_usrclk2;
    
    assign sfp_tx_tvalid[1] = 1'h0;
    assign sfp_rx_tready[1] = 1'h0;
    //----------------------------------------------------------------------------
    eth_wrapper eth_wrapper_inst (
        .clk        (clk_200m),
        .rst        (reset),
        
        .gt_clock   (clk_125m  ),
        .gt_reset   (reset     ),
        .gt_clk_p   (ZSFP_CLK_P),
        .gt_clk_n   (ZSFP_CLK_N),
        .gt_rxp     (ZSFP_RXP  ),
        .gt_rxn     (ZSFP_RXN  ),
        .gt_txp     (ZSFP_TXP  ),
        .gt_txn     (ZSFP_TXN  ),
        
        .tx_tdata   (sfp_tx_tdata [0]), 
        .tx_tkeep   (sfp_tx_tkeep [0]), 
        .tx_tvalid  (sfp_tx_tvalid[0]), 
        .tx_tready  (sfp_tx_tready[0]), 
        .tx_tlast   (sfp_tx_tlast [0]),
        
        .rx_tdata   (sfp_rx_tdata [0]), 
        .rx_tkeep   (sfp_rx_tkeep [0]), 
        .rx_tvalid  (sfp_rx_tvalid[0]), 
        .rx_tready  (sfp_rx_tready[0]), 
        .rx_tlast   (sfp_rx_tlast [0]),
        
        .tx_usrclk2 (sfp_tx_usrclk2  ),
        .rx_locked  (sfp_rx_locked   )
    );
    //----------------------------------------------------------------------------
    wire       eth_0_gtx_clk = clk_125m;
    wire       eth_0_tx_clk;
    wire       eth_0_tx_en ;
    wire       eth_0_tx_er ;
    wire [7:0] eth_0_txd   ;
    wire       eth_0_rx_clk;
    wire       eth_0_rx_dv ;
    wire       eth_0_rx_er ;
    wire [7:0] eth_0_rxd   ;
    //----------------------------------------------------------------------------
    eth_gmii_fifo eth_gmii_fifo_inst (
        .gtx_clk(clk_125m),
        .clk    (clk_200m),
        .rst    (reset),
        // Ethernet: 1000BASE-T GMII
        .gmii_rx_clk   (eth_0_tx_clk),
        .gmii_rxd      (eth_0_txd   ),
        .gmii_rx_dv    (eth_0_tx_en ),
        .gmii_rx_er    (eth_0_tx_er ),
        
        .gmii_tx_clk   (eth_0_rx_clk),
        .gmii_txd      (eth_0_rxd   ),
        .gmii_tx_en    (eth_0_rx_dv ),
        .gmii_tx_er    (eth_0_rx_er ),
        // AXI Output/Input
        .tx_axis_tdata (sfp_rx_tdata [0]),
        .tx_axis_tkeep (sfp_rx_tkeep [0]),
        .tx_axis_tvalid(sfp_rx_tvalid[0]),
        .tx_axis_tready(sfp_rx_tready[0]),
        .tx_axis_tlast (sfp_rx_tlast [0]),
        
        .rx_axis_tdata (sfp_tx_tdata [0]),
        .rx_axis_tkeep (sfp_tx_tkeep [0]),
        .rx_axis_tvalid(sfp_tx_tvalid[0]),
        .rx_axis_tready(sfp_tx_tready[0]),
        .rx_axis_tlast (sfp_tx_tlast [0])
    );
    
    //////////////////////////////////////////////////////////////////////////////
    // Access to STARTUP QSPI Flash
    //----------------------------------------------------------------------------
    wire       qspi_eos;
    wire [3:0] qspi_di ;
    wire [3:0] qspi_do ;
    wire [3:0] qspi_dt ;
    wire       qspi_ck ;
    wire       qspi_cs ;
    //----------------------------------------------------------------------------
    STARTUPE3 #(
       .PROG_USR("FALSE"),  // Activate program event security feature. Requires encrypted bitstreams.
       .SIM_CCLK_FREQ(0.0)  // Set the Configuration Clock Frequency (ns) for simulation
    )
    STARTUPE3_inst (
       .CFGCLK   (        ), // 1-bit output: Configuration main clock output
       .CFGMCLK  (        ), // 1-bit output: Configuration internal oscillator clock output
       .DI       (qspi_di ), // 4-bit output: Allow receiving on the D input pin
       .EOS      (qspi_eos), // 1-bit output: Active-High output signal indicating the End Of Startup
       .PREQ     (        ), // 1-bit output: PROGRAM request to fabric output
       .DO       (qspi_do ), // 4-bit input: Allows control of the D pin output
       .DTS      (qspi_dt ), // 4-bit input: Allows tristate of the D pin
       .FCSBO    (qspi_cs ), // 1-bit input: Controls the FCS_B pin for flash access
       .FCSBTS   (1'h0    ), // 1-bit input: Tristate the FCS_B pin
       .GSR      (1'h0    ), // 1-bit input: Global Set/Reset input (GSR cannot be used for the port)
       .GTS      (1'h0    ), // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
       .KEYCLEARB(1'h0    ), // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
       .PACK     (1'h0    ), // 1-bit input: PROGRAM acknowledge input
       .USRCCLKO (qspi_ck ), // 1-bit input: User CCLK input
       .USRCCLKTS(1'h0    ), // 1-bit input: User CCLK 3-state enable input
       .USRDONEO (1'h1    ), // 1-bit input: User DONE pin output control
       .USRDONETS(1'h1    )  // 1-bit input: User DONE 3-state enable output
    );
    //----------------------------------------------------------------------------
    wire [3:0] qspi_oe;
    assign qspi_dt = ~qspi_oe;
    
    //////////////////////////////////////////////////////////////////////////////
    // Xilinx MDM to UART
    //----------------------------------------------------------------------------
    wire [ 4:0] mdm_uart_axi_awaddr ;
    wire        mdm_uart_axi_awvalid;
    wire        mdm_uart_axi_awready;
    wire [31:0] mdm_uart_axi_wdata  ;
    wire [ 3:0] mdm_uart_axi_wstrb  ;
    wire        mdm_uart_axi_wvalid ;
    wire        mdm_uart_axi_wready ;
    wire [ 1:0] mdm_uart_axi_bresp  ;
    wire        mdm_uart_axi_bvalid ;
    wire        mdm_uart_axi_bready ;
    wire [ 4:0] mdm_uart_axi_araddr ;
    wire        mdm_uart_axi_arvalid;
    wire        mdm_uart_axi_arready;
    wire [31:0] mdm_uart_axi_rdata  ;
    wire [ 1:0] mdm_uart_axi_rresp  ;
    wire        mdm_uart_axi_rvalid ;
    wire        mdm_uart_axi_rready ;
    wire        mdm_interrupt;
    wire        mdm_sys_reset;
    wire        uart_txd, uart_rxd;
    
    mdm_uart mdm_uart (
        .clk(clock),
        .rst(reset | mdm_sys_reset),
        
        .uart_txd(uart_txd),
        .uart_rxd(uart_rxd),
        .uart_div(868), // 100M / 115200 = 868
        
        .m_axi_awaddr (mdm_uart_axi_awaddr ),
        .m_axi_awvalid(mdm_uart_axi_awvalid),
        .m_axi_awready(mdm_uart_axi_awready),
        .m_axi_wdata  (mdm_uart_axi_wdata  ),
        .m_axi_wstrb  (mdm_uart_axi_wstrb  ),
        .m_axi_wvalid (mdm_uart_axi_wvalid ),
        .m_axi_wready (mdm_uart_axi_wready ),
        .m_axi_bresp  (mdm_uart_axi_bresp  ),
        .m_axi_bvalid (mdm_uart_axi_bvalid ),
        .m_axi_bready (mdm_uart_axi_bready ),
        .m_axi_araddr (mdm_uart_axi_araddr ),
        .m_axi_arvalid(mdm_uart_axi_arvalid),
        .m_axi_arready(mdm_uart_axi_arready),
        .m_axi_rdata  (mdm_uart_axi_rdata  ),
        .m_axi_rresp  (mdm_uart_axi_rresp  ),
        .m_axi_rvalid (mdm_uart_axi_rvalid ),
        .m_axi_rready (mdm_uart_axi_rready )
    );
    //----------------------------------------------------------------------------
    mdm_0 mdm_0 (
        .S_AXI_ACLK   (clock),
        .S_AXI_ARESETN(rst_n),
        .Interrupt    (mdm_interrupt),
        .Debug_SYS_Rst(mdm_sys_reset),
        
        .S_AXI_AWADDR (mdm_uart_axi_awaddr ),
        .S_AXI_AWVALID(mdm_uart_axi_awvalid),
        .S_AXI_AWREADY(mdm_uart_axi_awready),
        .S_AXI_WDATA  (mdm_uart_axi_wdata  ),
        .S_AXI_WSTRB  (mdm_uart_axi_wstrb  ),
        .S_AXI_WVALID (mdm_uart_axi_wvalid ),
        .S_AXI_WREADY (mdm_uart_axi_wready ),
        .S_AXI_BRESP  (mdm_uart_axi_bresp  ),
        .S_AXI_BVALID (mdm_uart_axi_bvalid ),
        .S_AXI_BREADY (mdm_uart_axi_bready ),
        .S_AXI_ARADDR (mdm_uart_axi_araddr ),
        .S_AXI_ARVALID(mdm_uart_axi_arvalid),
        .S_AXI_ARREADY(mdm_uart_axi_arready),
        .S_AXI_RDATA  (mdm_uart_axi_rdata  ),
        .S_AXI_RRESP  (mdm_uart_axi_rresp  ),
        .S_AXI_RVALID (mdm_uart_axi_rvalid ),
        .S_AXI_RREADY (mdm_uart_axi_rready )
    );
    
    //////////////////////////////////////////////////////////////////////////////
    // DDR4 Memory Interface Generator (MIG) at 1000MHz / 4 = 250MHz CLK
    //----------------------------------------------------------------------------
    wire        ddr4_ui_clock;
    wire        ddr4_ui_reset;
    wire        ddr4_ui_resetn = !ddr4_ui_reset;
    //----------------------------------------------------------------------------
    wire        ddr4_s_axi_resetn = !reset;
    wire [ 3:0] ddr4_s_axi_awid   ;
    wire [31:0] ddr4_s_axi_awaddr ;
    wire [ 7:0] ddr4_s_axi_awlen  ;
    wire [ 2:0] ddr4_s_axi_awsize ;
    wire [ 1:0] ddr4_s_axi_awburst;
    wire        ddr4_s_axi_awlock ;
    wire [ 3:0] ddr4_s_axi_awcache;
    wire [ 2:0] ddr4_s_axi_awprot ;
    wire [ 3:0] ddr4_s_axi_awqos  ;
    wire        ddr4_s_axi_awvalid;
    wire        ddr4_s_axi_awready;
    wire [63:0] ddr4_s_axi_wdata  ;
    wire [ 7:0] ddr4_s_axi_wstrb  ;
    wire        ddr4_s_axi_wlast  ;
    wire        ddr4_s_axi_wvalid ;
    wire        ddr4_s_axi_wready ;
    wire [ 3:0] ddr4_s_axi_bid    ;
    wire [ 1:0] ddr4_s_axi_bresp  ;
    wire        ddr4_s_axi_bvalid ;
    wire        ddr4_s_axi_bready ;
    wire [ 3:0] ddr4_s_axi_arid   ;
    wire [31:0] ddr4_s_axi_araddr ;
    wire [ 7:0] ddr4_s_axi_arlen  ;
    wire [ 2:0] ddr4_s_axi_arsize ;
    wire [ 1:0] ddr4_s_axi_arburst;
    wire        ddr4_s_axi_arlock ;
    wire [ 3:0] ddr4_s_axi_arcache;
    wire [ 2:0] ddr4_s_axi_arprot ;
    wire [ 3:0] ddr4_s_axi_arqos  ;
    wire        ddr4_s_axi_arvalid;
    wire        ddr4_s_axi_arready;
    wire [ 3:0] ddr4_s_axi_rid    ;
    wire [63:0] ddr4_s_axi_rdata  ;
    wire [ 1:0] ddr4_s_axi_rresp  ;
    wire        ddr4_s_axi_rlast  ;
    wire        ddr4_s_axi_rvalid ;
    wire        ddr4_s_axi_rready ;
    //----------------------------------------------------------------------------
    ddr4_0 ddr4_0 (
        .sys_rst                (reset     ),
        .c0_sys_clk_p           (CLK_100M_P),
        .c0_sys_clk_n           (CLK_100M_N),
        
        .c0_ddr4_act_n          (DDR4_ACT_N),
        .c0_ddr4_adr            (DDR4_ADR  ),
        .c0_ddr4_ba             (DDR4_BA   ),
        .c0_ddr4_bg             (DDR4_BG   ),
        .c0_ddr4_cke            (DDR4_CKE  ),
        .c0_ddr4_odt            (DDR4_ODT  ),
        .c0_ddr4_cs_n           (DDR4_CS_N ),
        .c0_ddr4_ck_t           (DDR4_CK_T ),
        .c0_ddr4_ck_c           (DDR4_CK_C ),
        .c0_ddr4_reset_n        (DDR4_RST_N),
        .c0_ddr4_dm_dbi_n       (DDR4_DM   ),
        .c0_ddr4_dq             (DDR4_DQ   ),
        .c0_ddr4_dqs_t          (DDR4_DQS_T),
        .c0_ddr4_dqs_c          (DDR4_DQS_C),

        .c0_init_calib_complete (),
        .c0_ddr4_ui_clk         (ddr4_ui_clock),
        .c0_ddr4_ui_clk_sync_rst(ddr4_ui_reset),
        
        .c0_ddr4_aresetn        (ddr4_s_axi_resetn ),
        .c0_ddr4_s_axi_awid     (ddr4_s_axi_awid   ),
        .c0_ddr4_s_axi_awaddr   (ddr4_s_axi_awaddr ),
        .c0_ddr4_s_axi_awlen    (ddr4_s_axi_awlen  ),
        .c0_ddr4_s_axi_awsize   (ddr4_s_axi_awsize ),
        .c0_ddr4_s_axi_awburst  (ddr4_s_axi_awburst),
        .c0_ddr4_s_axi_awlock   (ddr4_s_axi_awlock ),
        .c0_ddr4_s_axi_awcache  (ddr4_s_axi_awcache),
        .c0_ddr4_s_axi_awprot   (ddr4_s_axi_awprot ),
        .c0_ddr4_s_axi_awqos    (ddr4_s_axi_awqos  ),
        .c0_ddr4_s_axi_awvalid  (ddr4_s_axi_awvalid),
        .c0_ddr4_s_axi_awready  (ddr4_s_axi_awready),
        
        .c0_ddr4_s_axi_wdata    (ddr4_s_axi_wdata  ),
        .c0_ddr4_s_axi_wstrb    (ddr4_s_axi_wstrb  ),
        .c0_ddr4_s_axi_wlast    (ddr4_s_axi_wlast  ),
        .c0_ddr4_s_axi_wvalid   (ddr4_s_axi_wvalid ),
        .c0_ddr4_s_axi_wready   (ddr4_s_axi_wready ),
        
        .c0_ddr4_s_axi_bid      (ddr4_s_axi_bid    ),
        .c0_ddr4_s_axi_bresp    (ddr4_s_axi_bresp  ),
        .c0_ddr4_s_axi_bvalid   (ddr4_s_axi_bvalid ),
        .c0_ddr4_s_axi_bready   (ddr4_s_axi_bready ),
        
        .c0_ddr4_s_axi_arid     (ddr4_s_axi_arid   ),
        .c0_ddr4_s_axi_araddr   (ddr4_s_axi_araddr ),
        .c0_ddr4_s_axi_arlen    (ddr4_s_axi_arlen  ),
        .c0_ddr4_s_axi_arsize   (ddr4_s_axi_arsize ),
        .c0_ddr4_s_axi_arburst  (ddr4_s_axi_arburst),
        .c0_ddr4_s_axi_arlock   (ddr4_s_axi_arlock ),
        .c0_ddr4_s_axi_arcache  (ddr4_s_axi_arcache),
        .c0_ddr4_s_axi_arprot   (ddr4_s_axi_arprot ),
        .c0_ddr4_s_axi_arqos    (ddr4_s_axi_arqos  ),
        .c0_ddr4_s_axi_arvalid  (ddr4_s_axi_arvalid),
        .c0_ddr4_s_axi_arready  (ddr4_s_axi_arready),
        
        .c0_ddr4_s_axi_rid      (ddr4_s_axi_rid    ),
        .c0_ddr4_s_axi_rdata    (ddr4_s_axi_rdata  ),
        .c0_ddr4_s_axi_rresp    (ddr4_s_axi_rresp  ),
        .c0_ddr4_s_axi_rlast    (ddr4_s_axi_rlast  ),
        .c0_ddr4_s_axi_rvalid   (ddr4_s_axi_rvalid ),
        .c0_ddr4_s_axi_rready   (ddr4_s_axi_rready ),
        
        .dbg_clk                (),
        .dbg_bus                ()
    );
    
    //////////////////////////////////////////////////////////////////////////////
    // Convert DDR 250MHz CLK to Rocket-Chip 100MHz CLK
    //----------------------------------------------------------------------------
    wire [ 3:0] mem_axi4_awid   ;
    wire [31:0] mem_axi4_awaddr ;
    wire [ 7:0] mem_axi4_awlen  ;
    wire [ 2:0] mem_axi4_awsize ;
    wire [ 1:0] mem_axi4_awburst;
    wire        mem_axi4_awlock ;
    wire [ 3:0] mem_axi4_awcache;
    wire [ 2:0] mem_axi4_awprot ;
    wire [ 3:0] mem_axi4_awqos  ;
    wire        mem_axi4_awvalid;
    wire        mem_axi4_awready;
    wire [63:0] mem_axi4_wdata  ;
    wire [ 7:0] mem_axi4_wstrb  ;
    wire        mem_axi4_wlast  ;
    wire        mem_axi4_wvalid ;
    wire        mem_axi4_wready ;
    wire [ 3:0] mem_axi4_bid    ;
    wire [ 1:0] mem_axi4_bresp  ;
    wire        mem_axi4_bvalid ;
    wire        mem_axi4_bready ;
    wire [ 3:0] mem_axi4_arid   ;
    wire [31:0] mem_axi4_araddr ;
    wire [ 7:0] mem_axi4_arlen  ;
    wire [ 2:0] mem_axi4_arsize ;
    wire [ 1:0] mem_axi4_arburst;
    wire        mem_axi4_arlock ;
    wire [ 3:0] mem_axi4_arcache;
    wire [ 2:0] mem_axi4_arprot ;
    wire [ 3:0] mem_axi4_arqos  ;
    wire        mem_axi4_arvalid;
    wire        mem_axi4_arready;
    wire [ 3:0] mem_axi4_rid    ;
    wire [63:0] mem_axi4_rdata  ;
    wire [ 1:0] mem_axi4_rresp  ;
    wire        mem_axi4_rlast  ;
    wire        mem_axi4_rvalid ;
    wire        mem_axi4_rready ;
    //----------------------------------------------------------------------------
    axi_clock_converter_0 axi_clock_converter_0 (
        .m_axi_aclk    (ddr4_ui_clock),
        .m_axi_aresetn (ddr4_ui_resetn),
        
        .m_axi_awid    (ddr4_s_axi_awid   ),
        .m_axi_awaddr  (ddr4_s_axi_awaddr ),
        .m_axi_awlen   (ddr4_s_axi_awlen  ),
        .m_axi_awsize  (ddr4_s_axi_awsize ),
        .m_axi_awburst (ddr4_s_axi_awburst),
        .m_axi_awlock  (ddr4_s_axi_awlock ),
        .m_axi_awcache (ddr4_s_axi_awcache),
        .m_axi_awprot  (ddr4_s_axi_awprot ),
        .m_axi_awregion(),
        .m_axi_awqos   (ddr4_s_axi_awqos  ),
        .m_axi_awvalid (ddr4_s_axi_awvalid),
        .m_axi_awready (ddr4_s_axi_awready),
        .m_axi_wdata   (ddr4_s_axi_wdata  ),
        .m_axi_wstrb   (ddr4_s_axi_wstrb  ),
        .m_axi_wlast   (ddr4_s_axi_wlast  ),
        .m_axi_wvalid  (ddr4_s_axi_wvalid ),
        .m_axi_wready  (ddr4_s_axi_wready ),
        .m_axi_bid     (ddr4_s_axi_bid    ),
        .m_axi_bresp   (ddr4_s_axi_bresp  ),
        .m_axi_bvalid  (ddr4_s_axi_bvalid ),
        .m_axi_bready  (ddr4_s_axi_bready ),
        .m_axi_arid    (ddr4_s_axi_arid   ),
        .m_axi_araddr  (ddr4_s_axi_araddr ),
        .m_axi_arlen   (ddr4_s_axi_arlen  ),
        .m_axi_arsize  (ddr4_s_axi_arsize ),
        .m_axi_arburst (ddr4_s_axi_arburst),
        .m_axi_arlock  (ddr4_s_axi_arlock ),
        .m_axi_arcache (ddr4_s_axi_arcache),
        .m_axi_arprot  (ddr4_s_axi_arprot ),
        .m_axi_arregion(),
        .m_axi_arqos   (ddr4_s_axi_arqos  ),
        .m_axi_arvalid (ddr4_s_axi_arvalid),
        .m_axi_arready (ddr4_s_axi_arready),
        .m_axi_rid     (ddr4_s_axi_rid    ),
        .m_axi_rdata   (ddr4_s_axi_rdata  ),
        .m_axi_rresp   (ddr4_s_axi_rresp  ),
        .m_axi_rlast   (ddr4_s_axi_rlast  ),
        .m_axi_rvalid  (ddr4_s_axi_rvalid ),
        .m_axi_rready  (ddr4_s_axi_rready ),
        
        .s_axi_aclk    (clock),
        .s_axi_aresetn (rst_n),
        
        .s_axi_awid    (mem_axi4_awid   ),
        .s_axi_awaddr  (mem_axi4_awaddr ),
        .s_axi_awlen   (mem_axi4_awlen  ),
        .s_axi_awsize  (mem_axi4_awsize ),
        .s_axi_awburst (mem_axi4_awburst),
        .s_axi_awlock  (mem_axi4_awlock ),
        .s_axi_awcache (mem_axi4_awcache),
        .s_axi_awprot  (mem_axi4_awprot ),
        .s_axi_awregion('h0),
        .s_axi_awqos   (mem_axi4_awqos  ),
        .s_axi_awvalid (mem_axi4_awvalid),
        .s_axi_awready (mem_axi4_awready),
        .s_axi_wdata   (mem_axi4_wdata  ),
        .s_axi_wstrb   (mem_axi4_wstrb  ),
        .s_axi_wlast   (mem_axi4_wlast  ),
        .s_axi_wvalid  (mem_axi4_wvalid ),
        .s_axi_wready  (mem_axi4_wready ),
        .s_axi_bid     (mem_axi4_bid    ),
        .s_axi_bresp   (mem_axi4_bresp  ),
        .s_axi_bvalid  (mem_axi4_bvalid ),
        .s_axi_bready  (mem_axi4_bready ),
        .s_axi_arid    (mem_axi4_arid   ),
        .s_axi_araddr  (mem_axi4_araddr ),
        .s_axi_arlen   (mem_axi4_arlen  ),
        .s_axi_arsize  (mem_axi4_arsize ),
        .s_axi_arburst (mem_axi4_arburst),
        .s_axi_arlock  (mem_axi4_arlock ),
        .s_axi_arcache (mem_axi4_arcache),
        .s_axi_arprot  (mem_axi4_arprot ),
        .s_axi_arregion('h0),
        .s_axi_arqos   (mem_axi4_arqos  ),
        .s_axi_arvalid (mem_axi4_arvalid),
        .s_axi_arready (mem_axi4_arready),
        .s_axi_rid     (mem_axi4_rid    ),
        .s_axi_rdata   (mem_axi4_rdata  ),
        .s_axi_rresp   (mem_axi4_rresp  ),
        .s_axi_rlast   (mem_axi4_rlast  ),
        .s_axi_rvalid  (mem_axi4_rvalid ),
        .s_axi_rready  (mem_axi4_rready )
    );
    
    //////////////////////////////////////////////////////////////////////////////
    // Rocket-Chip RISC-V Core at 100M CLK
    //----------------------------------------------------------------------------
    RocketSystem rocketSystem (
        .clock(clock),
        .reset(reset),

        .uart_0_rxd              (uart_rxd),
        .uart_0_txd              (uart_txd),
        
        .mem_axi4_0_aw_bits_id   (mem_axi4_awid   ), // AXI to DDR at System Clock (100MHz)
        .mem_axi4_0_aw_bits_addr (mem_axi4_awaddr ),
        .mem_axi4_0_aw_bits_len  (mem_axi4_awlen  ),
        .mem_axi4_0_aw_bits_size (mem_axi4_awsize ),
        .mem_axi4_0_aw_bits_burst(mem_axi4_awburst),
        .mem_axi4_0_aw_bits_lock (mem_axi4_awlock ),
        .mem_axi4_0_aw_bits_cache(mem_axi4_awcache),
        .mem_axi4_0_aw_bits_prot (mem_axi4_awprot ),
        .mem_axi4_0_aw_bits_qos  (mem_axi4_awqos  ),
        .mem_axi4_0_aw_valid     (mem_axi4_awvalid),
        .mem_axi4_0_aw_ready     (mem_axi4_awready),
        .mem_axi4_0_w_bits_data  (mem_axi4_wdata  ),
        .mem_axi4_0_w_bits_strb  (mem_axi4_wstrb  ),
        .mem_axi4_0_w_bits_last  (mem_axi4_wlast  ),
        .mem_axi4_0_w_valid      (mem_axi4_wvalid ),
        .mem_axi4_0_w_ready      (mem_axi4_wready ),
        .mem_axi4_0_b_bits_id    (mem_axi4_bid    ),
        .mem_axi4_0_b_bits_resp  (mem_axi4_bresp  ),
        .mem_axi4_0_b_valid      (mem_axi4_bvalid ),
        .mem_axi4_0_b_ready      (mem_axi4_bready ),
        .mem_axi4_0_ar_bits_id   (mem_axi4_arid   ),
        .mem_axi4_0_ar_bits_addr (mem_axi4_araddr ),
        .mem_axi4_0_ar_bits_len  (mem_axi4_arlen  ),
        .mem_axi4_0_ar_bits_size (mem_axi4_arsize ),
        .mem_axi4_0_ar_bits_burst(mem_axi4_arburst),
        .mem_axi4_0_ar_bits_lock (mem_axi4_arlock ),
        .mem_axi4_0_ar_bits_cache(mem_axi4_arcache),
        .mem_axi4_0_ar_bits_prot (mem_axi4_arprot ),
        .mem_axi4_0_ar_bits_qos  (mem_axi4_arqos  ),
        .mem_axi4_0_ar_valid     (mem_axi4_arvalid),
        .mem_axi4_0_ar_ready     (mem_axi4_arready),
        .mem_axi4_0_r_bits_id    (mem_axi4_rid    ),
        .mem_axi4_0_r_bits_data  (mem_axi4_rdata  ),
        .mem_axi4_0_r_bits_resp  (mem_axi4_rresp  ),
        .mem_axi4_0_r_bits_last  (mem_axi4_rlast  ),
        .mem_axi4_0_r_valid      (mem_axi4_rvalid ),
        .mem_axi4_0_r_ready      (mem_axi4_rready ),
        
        .eth_clk_0_clock(eth_0_gtx_clk), // GMII Interface at 125MHz
        .eth_0_rx_clk   (eth_0_rx_clk ),
        .eth_0_rx_dv    (eth_0_rx_dv  ),
        .eth_0_rx_er    (eth_0_rx_er  ),
        .eth_0_rxd      (eth_0_rxd    ),
        .eth_0_tx_clk   (eth_0_tx_clk ),
        .eth_0_tx_en    (eth_0_tx_en  ),
        .eth_0_tx_er    (eth_0_tx_er  ),
        .eth_0_txd      (eth_0_txd    ),
        .eth_0_status   (1'h1         ),
        .eth_0_phy_ad   (5'h0         ),
        .eth_0_phy_id   (32'h02000000 ),
       
        .qspi_0_sck     (qspi_ck      ), // QSPI at System Clock (100MHz)
        .qspi_0_dq_0_o  (qspi_do[0]   ),
        .qspi_0_dq_1_o  (qspi_do[1]   ),
        .qspi_0_dq_2_o  (qspi_do[2]   ),
        .qspi_0_dq_3_o  (qspi_do[3]   ),
        .qspi_0_dq_0_oe (qspi_oe[0]   ),
        .qspi_0_dq_1_oe (qspi_oe[1]   ),
        .qspi_0_dq_2_oe (qspi_oe[2]   ),
        .qspi_0_dq_3_oe (qspi_oe[3]   ),
        .qspi_0_dq_0_i  (qspi_di[0]   ),
        .qspi_0_dq_1_i  (qspi_di[1]   ),
        .qspi_0_dq_2_i  (qspi_di[2]   ),
        .qspi_0_dq_3_i  (qspi_di[3]   ),
        .qspi_0_dq_0_ie (),
        .qspi_0_dq_1_ie (),
        .qspi_0_dq_2_ie (),
        .qspi_0_dq_3_ie (),
        .qspi_0_cs_0    (qspi_cs)
    );
    
    //////////////////////////////////////////////////////////////////////////////
    // LED
    //----------------------------------------------------------------------------
    reg  [31:0] count = 32'h0;
    reg  [ 2:0] light;
    always @(posedge clock) begin
        if (reset || count == 32'd100_000_000) begin
            count <= 32'h0;
            light <= reset ? 3'h6 : ({light[0],light} >> 1);
        end else begin
            count <= count + 1'h1;
        end
    end
    //----------------------------------------------------------------------------
    assign LED = light;

    //////////////////////////////////////////////////////////////////////////////
    // Trouble-shooting & Debug
    //----------------------------------------------------------------------------
    /*
    wire not_s2_dont_nack_uncached = ~( rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_valid_uncached_pending & 
                                        rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_a_ready);
    wire not_s2_dont_nack_misc     = ~( rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_valid_masked &
                                     ~(|rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache._s2_meta_error_T) & 
                                        rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_req_cmd == 5'h17);
    wire not_s2_valid_hit          = ~( rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_valid_hit_pre_data_ecc);
    wire not_s2_meta_error         = ~(|rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache._s2_meta_error_T);
    wire replay_mem                =  ( rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.dcache_kill_mem   ||
                                        rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.mem_reg_replay    ||
                                        rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.fpu_kill_mem      );
    */
    //----------------------------------------------------------------------------
    ila_0 ila_0 (
        .clk(clock),
        .probe0({
            /////////////////////////////
            // TTC
            //---------------------------
            /*
            rocketSystem.ttcClockDomainWrapper.ttc_0.auto_control_xing_in_a_valid,
            rocketSystem.ttcClockDomainWrapper.ttc_0.auto_control_xing_in_a_bits_opcode,
            rocketSystem.ttcClockDomainWrapper.ttc_0.auto_control_xing_in_a_bits_source,
            rocketSystem.ttcClockDomainWrapper.ttc_0.auto_control_xing_in_a_bits_data,
            rocketSystem.ttcClockDomainWrapper.ttc_0.auto_control_xing_in_a_bits_size,
            rocketSystem.ttcClockDomainWrapper.ttc_0.auto_control_xing_in_a_bits_mask,
            rocketSystem.ttcClockDomainWrapper.ttc_0.auto_control_xing_in_a_bits_address,
            
            rocketSystem.ttcClockDomainWrapper.ttc_0.auto_control_xing_in_d_valid,
            rocketSystem.ttcClockDomainWrapper.ttc_0.auto_control_xing_in_d_bits_opcode,
            rocketSystem.ttcClockDomainWrapper.ttc_0.auto_control_xing_in_d_bits_source,
            rocketSystem.ttcClockDomainWrapper.ttc_0.auto_control_xing_in_d_bits_data,
            rocketSystem.ttcClockDomainWrapper.ttc_0.auto_control_xing_in_d_bits_size,
            
            rocketSystem.ttcClockDomainWrapper.ttc_0.timer0.io_ctl_out_count_out,
            rocketSystem.ttcClockDomainWrapper.ttc_0.timer0.io_ctl_in_interrupt_en,
            rocketSystem.ttcClockDomainWrapper.ttc_0.timer0.io_ctl_in_interrupt_ac,
            rocketSystem.ttcClockDomainWrapper.ttc_0.timer0.io_ctl_in_clock_ctl,
            rocketSystem.ttcClockDomainWrapper.ttc_0.timer0.io_ctl_in_count_ctl,
            rocketSystem.ttcClockDomainWrapper.ttc_0.auto_int_xing_out_sync_0,
            */
            /////////////////////////////
            // Ethernet
            //---------------------------
            /*
            rocketSystem.ethClockDomainWrapper.auto_eth_0_control_xing_in_a_valid,
            rocketSystem.ethClockDomainWrapper.auto_eth_0_control_xing_in_a_ready,
            rocketSystem.ethClockDomainWrapper.auto_eth_0_control_xing_in_a_bits_opcode,
            rocketSystem.ethClockDomainWrapper.auto_eth_0_control_xing_in_a_bits_size,
            rocketSystem.ethClockDomainWrapper.auto_eth_0_control_xing_in_a_bits_source,
            rocketSystem.ethClockDomainWrapper.auto_eth_0_control_xing_in_a_bits_address,
            rocketSystem.ethClockDomainWrapper.auto_eth_0_control_xing_in_a_bits_data,
            rocketSystem.ethClockDomainWrapper.auto_eth_0_control_xing_in_d_valid,
            rocketSystem.ethClockDomainWrapper.auto_eth_0_control_xing_in_d_ready,
            rocketSystem.ethClockDomainWrapper.auto_eth_0_control_xing_in_d_bits_opcode,
            rocketSystem.ethClockDomainWrapper.auto_eth_0_control_xing_in_d_bits_size,
            rocketSystem.ethClockDomainWrapper.auto_eth_0_control_xing_in_d_bits_source,
            rocketSystem.ethClockDomainWrapper.auto_eth_0_control_xing_in_d_bits_data,
            
            rocketSystem.ethClockDomainWrapper.auto_eth_0_int_xing_out_sync_0,
            rocketSystem.ethClockDomainWrapper.eth_0.output_ISR,
            rocketSystem.ethClockDomainWrapper.eth_0.output_IMR,
            rocketSystem.ethClockDomainWrapper.eth_0.inputs_IER,
            rocketSystem.ethClockDomainWrapper.eth_0.inputs_IDR,
            rocketSystem.ethClockDomainWrapper.eth_0.inputs_TBQPH,
            rocketSystem.ethClockDomainWrapper.eth_0.inputs_TBQP,
            rocketSystem.ethClockDomainWrapper.eth_0.inputs_NCR,
            rocketSystem.ethClockDomainWrapper.eth_0.inputs_MAN,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.io_man_en,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.io_man_do,
            
            rocketSystem.ethClockDomainWrapper.eth_0.eth.io_dma_a_valid,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.io_dma_d_valid,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.io_dma_a_ready,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.io_dma_d_ready,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.io_dma_a_bits_opcode,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.io_dma_d_bits_opcode,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.io_dma_a_bits_source,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.io_dma_d_bits_source,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.io_dma_a_bits_address,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.io_dma_a_bits_data,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.io_dma_a_bits_size,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.io_dma_d_bits_data,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.io_dma_d_bits_size,
            
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_txq.io_txq_en,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_txq.txq_ptr,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_txq.txq_ren,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_txq.txq_fwd,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_txq.state,
            
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_rxq.io_rxq_en,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_rxq.rxq_ptr,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_rxq.req_ptr,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_rxq.rsp_ptr,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_rxq.state,
            
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.req_act_0,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.req_act_1,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.req_act_2,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.req_act_3,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.rsp_rdy_0,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.rsp_rdy_1,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.rsp_rdy_2,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.rsp_rdy_3,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.rsp_tag_0,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.rsp_tag_1,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.rsp_tag_2,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.rsp_tag_3,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.req_tg0,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.rsp_fwd,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.rsp_ptr,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.rsp_hdr,
            
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.io_dma_do_0_valid,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.io_dma_do_1_valid,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.io_dma_di_0_valid,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.io_dma_di_1_valid,
            
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.io_dma_do_0_last,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.io_dma_do_1_last,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.io_dma_di_0_last,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.io_dma_di_1_last,
            
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.io_dma_ad_0,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.io_dma_ad_1,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.io_dma_sz_0,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.io_dma_sz_1,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.io_dma_we_0,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_dma.io_dma_we_1,
            
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_rxq.fifo.io_deq_valid,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_rxq.fifo.io_deq_ready,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_rxq.fifo.io_deq_last,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_rxq.fifo.io_deq_data,
            rocketSystem.ethClockDomainWrapper.eth_0.eth.gem_rxq.fifo.io_deq_meta,
            */
            /////////////////////////////
            // TTC
            //---------------------------
            /*
            rocketSystem.ttcClockDomainWrapper.auto_ttc_0_control_xing_in_a_valid,
            rocketSystem.ttcClockDomainWrapper.auto_ttc_0_control_xing_in_a_ready,
            rocketSystem.ttcClockDomainWrapper.auto_ttc_0_control_xing_in_a_bits_opcode,
            rocketSystem.ttcClockDomainWrapper.auto_ttc_0_control_xing_in_a_bits_size,
            rocketSystem.ttcClockDomainWrapper.auto_ttc_0_control_xing_in_a_bits_source,
            rocketSystem.ttcClockDomainWrapper.auto_ttc_0_control_xing_in_a_bits_address,
            rocketSystem.ttcClockDomainWrapper.auto_ttc_0_control_xing_in_a_bits_data,
            rocketSystem.ttcClockDomainWrapper.auto_ttc_0_control_xing_in_d_valid,
            rocketSystem.ttcClockDomainWrapper.auto_ttc_0_control_xing_in_d_ready,
            rocketSystem.ttcClockDomainWrapper.auto_ttc_0_control_xing_in_d_bits_opcode,
            rocketSystem.ttcClockDomainWrapper.auto_ttc_0_control_xing_in_d_bits_size,
            rocketSystem.ttcClockDomainWrapper.auto_ttc_0_control_xing_in_d_bits_source,
            rocketSystem.ttcClockDomainWrapper.auto_ttc_0_control_xing_in_d_bits_data,
            
            rocketSystem.ttcClockDomainWrapper.ttc_0.counter0.io_ctl_in_clock_control,
            rocketSystem.ttcClockDomainWrapper.ttc_0.counter0.io_reset_ack,
            */
            /////////////////////////////
            // QSPI Flash & UART
            //---------------------------
            /*
            qspi_eos,
            qspi_di ,
            qspi_do ,
            qspi_dt ,
            qspi_ck ,
            qspi_cs , 
            //---------------------------
            mdm_uart.state_reg,
            mdm_uart.clk_pos,
            uart_rxd,
            uart_txd,
            */
            /////////////////////////////
            // BUS Topology
            //--------------------------
            /*
            // CPU -> DCache
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.io_cpu_req_bits_addr,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.io_cpu_req_valid,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.io_cpu_resp_valid,
            
            // DCache -> SBUS
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_a_valid,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_d_valid,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_a_ready,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_d_ready,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_a_bits_opcode,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_d_bits_opcode,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_a_bits_address,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_a_bits_size,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_a_bits_source,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_d_bits_size,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_d_bits_source,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_d_bits_sink,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_d_bits_data,
            
            // CPU/DCache -> SBUS
            rocketSystem.subsystem_sbus.auto_coupler_from_tile_tl_master_clock_xing_in_a_valid,
            rocketSystem.subsystem_sbus.auto_coupler_from_tile_tl_master_clock_xing_in_d_valid,
            rocketSystem.subsystem_sbus.auto_coupler_from_tile_tl_master_clock_xing_in_a_ready,
            rocketSystem.subsystem_sbus.auto_coupler_from_tile_tl_master_clock_xing_in_a_bits_opcode,
            rocketSystem.subsystem_sbus.auto_coupler_from_tile_tl_master_clock_xing_in_c_bits_opcode,
            rocketSystem.subsystem_sbus.auto_coupler_from_tile_tl_master_clock_xing_in_a_bits_address,
            //rocketSystem.subsystem_sbus.auto_coupler_from_tile_tl_master_clock_xing_in_a_bits_size,
            //rocketSystem.subsystem_sbus.auto_coupler_from_tile_tl_master_clock_xing_in_a_bits_source,
            //rocketSystem.subsystem_sbus.auto_coupler_from_tile_tl_master_clock_xing_in_d_bits_size,
            //rocketSystem.subsystem_sbus.auto_coupler_from_tile_tl_master_clock_xing_in_d_bits_source,
            //rocketSystem.subsystem_sbus.auto_coupler_from_tile_tl_master_clock_xing_in_d_bits_sink,
            //rocketSystem.subsystem_sbus.auto_coupler_from_tile_tl_master_clock_xing_in_d_bits_data,
            
            // FBUS -> SBUS
            rocketSystem.subsystem_sbus.auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_valid,
            rocketSystem.subsystem_sbus.auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_valid,
            rocketSystem.subsystem_sbus.auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_ready,
            rocketSystem.subsystem_sbus.auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_ready,
            rocketSystem.subsystem_sbus.auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_opcode,
            rocketSystem.subsystem_sbus.auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_opcode,
            rocketSystem.subsystem_sbus.auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_address,
            //rocketSystem.subsystem_sbus.auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_size,
            //rocketSystem.subsystem_sbus.auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_a_bits_source,
            //rocketSystem.subsystem_sbus.auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_size,
            //rocketSystem.subsystem_sbus.auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_source,
            //rocketSystem.subsystem_sbus.auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_sink,
            //rocketSystem.subsystem_sbus.auto_coupler_from_bus_named_subsystem_fbus_bus_xing_in_d_bits_data,
            
            // SBUS -> L2 Wrapper (Broadcast)
            rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_a_valid,
            rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_b_valid,
            rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_c_valid,
            rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_d_valid,
            rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_a_ready,
            rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_d_ready,
            rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_a_bits_opcode,
            rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_c_bits_opcode,
            rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_d_bits_opcode,
            rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_a_bits_address,
            rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_b_bits_address,
            //rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_a_bits_size,
            //rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_a_bits_source,
            //rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_d_bits_size,
            //rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_d_bits_source,
            //rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_d_bits_sink,
            //rocketSystem.subsystem_l2_wrapper.auto_coherent_jbar_in_d_bits_data,
            
            // SBUS -> CBUS
            rocketSystem.subsystem_sbus.auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_valid,
            rocketSystem.subsystem_sbus.auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_valid,
            rocketSystem.subsystem_sbus.auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_ready,
            rocketSystem.subsystem_sbus.auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_ready,
            //rocketSystem.subsystem_sbus.auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_opcode,
            //rocketSystem.subsystem_sbus.auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_opcode,
            //rocketSystem.subsystem_sbus.auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_address,
            //rocketSystem.subsystem_sbus.auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_size,
            //rocketSystem.subsystem_sbus.auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_a_bits_source,
            //rocketSystem.subsystem_sbus.auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_size,
            //rocketSystem.subsystem_sbus.auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_source,
            //rocketSystem.subsystem_sbus.auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_sink,
            //rocketSystem.subsystem_sbus.auto_coupler_to_bus_named_subsystem_cbus_bus_xing_out_d_bits_data,
            
            // CBUS -> PBUS
            rocketSystem.subsystem_cbus.auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_valid,
            rocketSystem.subsystem_cbus.auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_valid,
            rocketSystem.subsystem_cbus.auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_ready,
            rocketSystem.subsystem_cbus.auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_ready,
            //rocketSystem.subsystem_cbus.auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_opcode,
            //rocketSystem.subsystem_cbus.auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_opcode,
            //rocketSystem.subsystem_cbus.auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_address,
            //rocketSystem.subsystem_cbus.auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_size,
            //rocketSystem.subsystem_cbus.auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_a_bits_source,
            //rocketSystem.subsystem_cbus.auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_size,
            //rocketSystem.subsystem_cbus.auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_source,
            //rocketSystem.subsystem_cbus.auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_sink,
            //rocketSystem.subsystem_cbus.auto_coupler_to_bus_named_subsystem_pbus_bus_xing_out_d_bits_data,
            
            // PBUS Input
            //rocketSystem.subsystem_pbus.auto_bus_xing_in_a_valid,
            //rocketSystem.subsystem_pbus.auto_bus_xing_in_d_valid,
            //rocketSystem.subsystem_pbus.auto_bus_xing_in_a_ready,
            //rocketSystem.subsystem_pbus.auto_bus_xing_in_d_ready,
            //rocketSystem.subsystem_pbus.auto_bus_xing_in_a_bits_opcode,
            //rocketSystem.subsystem_pbus.auto_bus_xing_in_d_bits_opcode,
            //rocketSystem.subsystem_pbus.auto_bus_xing_in_a_bits_address,
            //rocketSystem.subsystem_pbus.auto_bus_xing_in_a_bits_size,
            //rocketSystem.subsystem_pbus.auto_bus_xing_in_a_bits_source,
            //rocketSystem.subsystem_pbus.auto_bus_xing_in_d_bits_size,
            //rocketSystem.subsystem_pbus.auto_bus_xing_in_d_bits_source,
            //rocketSystem.subsystem_pbus.auto_bus_xing_in_d_bits_sink,
            //rocketSystem.subsystem_pbus.auto_bus_xing_in_d_bits_data,
            */
            /////////////////////////////
            // DCache TLB
            //---------------------------
            /*
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s1_hit_way,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_hit_way,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.probe_bits_address,  
                                                                     
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.resetting,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.metaArb_io_in_1_valid,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.metaArb_io_in_2_valid,                                                 
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.metaArb_io_in_3_valid,                                                  
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.metaArb_io_in_4_valid,                                                    
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.metaArb_io_in_6_valid,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.dataArb_io_in_0_valid,                                                    
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.dataArb_io_in_1_valid,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.dataArb_io_in_2_valid,                                                 
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.dataArb_io_in_3_valid,
            
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_req_size,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_req_addr,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.inWriteback,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.releaseRejected,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_release_data_valid,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s1_release_data_valid,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.release_ack_wait,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.release_state,
            
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_valid_hit_pre_data_ecc, // s2_valid_uncached_pending
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_valid_miss,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_uncached,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.uncachedInFlight_0,
            
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_hit_state_state, // s2_uncached
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_pma_must_alloc,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_pma_cacheable,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_req_no_alloc,
            
            // DCache -> Memory
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_c_bits_param, // Tile-Link Output
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_c_bits_address,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_a_bits_address,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_d_bits_opcode,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_c_bits_opcode,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_a_bits_opcode,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_d_valid,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_d_ready,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_c_valid,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_c_ready,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_b_valid,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_b_ready,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_a_valid,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.auto_out_a_ready, // s2_nack_uncached
            */
            /////////////////////////////
            // CPU EX/MEM/WB Status
            //--------------------------
            /*
            // rocketSystem.tile_prci_domain.tile_reset_domain_tile.core._csr_io_trace_0_valid, // Trace(0), valid
            // rocketSystem.tile_prci_domain.tile_reset_domain_tile.core._csr_io_trace_0_iaddr, // Trace(0), iaddr
            // rocketSystem.tile_prci_domain.tile_reset_domain_tile.core._ibuf_io_inst_0_valid,
            // rocketSystem.tile_prci_domain.tile_reset_domain_tile.core._ibuf_io_pc,
            
            //---------------------------
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.replay_wb_common,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.take_pc_wb,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.take_pc_mem,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.take_pc_mem_wb,
            
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.ex_reg_pc,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.ex_reg_valid,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.ex_reg_replay,
            //rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.ex_reg_xcpt,
            // 
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.mem_reg_pc,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.mem_reg_valid,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.mem_reg_replay,
            //rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.mem_reg_xcpt,
            // 
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.wb_reg_pc,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.wb_reg_valid,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.wb_reg_replay,
            //rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.wb_reg_xcpt,
            
            //--------------------------
            // CPU Stalld && DCache NACK
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_valid_uncached_pending, // s2_nack_uncached
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_valid_masked          , // s2_nack_misc
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_req_cmd               , // s2_nack_misc
            not_s2_meta_error, // s2_nack_misc
            
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache._io_cpu_s2_nack_output, // s2_nack
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.dcache.s2_valid_no_xcpt , // s2_nack
            not_s2_dont_nack_uncached, // s2_nack
            not_s2_dont_nack_misc    , // s2_nack
            not_s2_valid_hit         , // s2_nack
            
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.dcache_blocked_blocked, // ctrl_stalld
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.id_mem_busy        , // ctrl_stalld
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.id_reg_fence       , // ctrl_stalld
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.id_reg_pause       , // ctrl_stalld
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.data_hazard_mem    , // ctrl_stalld
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core._ctrl_stalld_T_28  , // ctrl_stalld
            
            //--------------------------
            // SBoard & RF Write Back
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core._r, // sboard
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.ex_reg_inst [11:7], // waddr
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.mem_reg_inst[11:7], // waddr
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.wb_reg_inst [11:7], // waddr
            
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.ll_wen  ,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.ll_waddr,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.rf_wen  ,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.rf_waddr,
            
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.io_dmem_req_valid       , 
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.io_dmem_req_bits_tag    ,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.io_dmem_req_bits_cmd    ,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.io_dmem_req_bits_addr   ,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.io_dmem_req_bits_size   ,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.io_dmem_resp_valid      ,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.io_dmem_resp_bits_replay,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.io_dmem_resp_bits_tag   ,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.io_dmem_resp_bits_data  ,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.io_dmem_resp_bits_size  ,
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.io_dmem_resp_bits_has_data,
            
            //--------------------------
            replay_mem, // replay_mem
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.dcache_kill_mem    , // replay_mem
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.mem_ctrl_mem       , // dcache_kill_mem
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.io_dmem_replay_next, // dcache_kill_mem
            
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.replay_ex          , // replay_ex
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.ex_ctrl_mem        , // replay_ex_structural
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.io_dmem_req_ready  , // replay_ex_structural
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.ex_ctrl_div        , // replay_ex_structural
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core._div_io_req_ready  , // replay_ex_structural
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.wb_dcache_miss     , // replay_ex_load_use
            rocketSystem.tile_prci_domain.tile_reset_domain_tile.core.ex_reg_load_use    , // replay_ex_load_use
            */
            /////////////////////////////
            // DDR
            //---------------------------
            /*
            mem_axi4_awaddr ,
            mem_axi4_awlen  ,
            mem_axi4_awsize ,
            mem_axi4_awvalid,
            mem_axi4_awready,
            mem_axi4_wvalid ,
            mem_axi4_wready ,
            mem_axi4_bresp  ,
            mem_axi4_bvalid ,
            mem_axi4_bready ,
            mem_axi4_araddr ,
            mem_axi4_arlen  ,
            mem_axi4_arsize ,
            mem_axi4_arvalid,
            mem_axi4_arready,
            mem_axi4_rvalid ,
            mem_axi4_rready ,
            */
            /////////////////////////////
            reset
        })
    );
    //----------------------------------------------------------------------------
    /*
    ila_0 ila_1 (
        .clk(clk_125m),
        .probe0({
            eth_0_txd  ,
            eth_0_tx_en,
            eth_0_tx_er,
            eth_0_rxd  ,
            eth_0_rx_dv,
            eth_0_rx_er
        })
    );
    ila_0 ila_1 (
        .clk(sfp_tx_usrclk2),
        .probe0({
            sfp_rx_tvalid[0],
            sfp_rx_tready[0],
            sfp_rx_tlast [0],
            sfp_rx_tdata [0],
            
            eth_wrapper_inst.genblk1[0].eth_mac_10g_fifo_inst.xgmii_rxd,
            eth_wrapper_inst.genblk1[0].eth_mac_10g_fifo_inst.xgmii_rxc,
            
            eth_wrapper_inst.genblk1[0].eth_mac_10g_fifo_inst.rx_fifo.m_axis_tvalid,
            eth_wrapper_inst.genblk1[0].eth_mac_10g_fifo_inst.rx_fifo.m_axis_tlast,
            eth_wrapper_inst.genblk1[0].eth_mac_10g_fifo_inst.rx_fifo.s_axis_tvalid,
            eth_wrapper_inst.genblk1[0].eth_mac_10g_fifo_inst.rx_fifo.s_axis_tlast,
            eth_wrapper_inst.genblk1[0].eth_mac_10g_fifo_inst.rx_fifo.s_axis_tuser,
            eth_wrapper_inst.genblk1[0].eth_mac_10g_fifo_inst.rx_fifo.s_axis_tdata,
            eth_wrapper_inst.genblk1[0].eth_mac_10g_fifo_inst.rx_fifo.s_status_overflow,
            eth_wrapper_inst.genblk1[0].eth_mac_10g_fifo_inst.rx_fifo.s_status_bad_frame,
            eth_wrapper_inst.genblk1[0].eth_mac_10g_fifo_inst.rx_error_bad_frame,
            eth_wrapper_inst.genblk1[0].eth_mac_10g_fifo_inst.rx_error_bad_fcs,
            
            eth_wrapper_inst.rx_headervalid[0],
            eth_wrapper_inst.rx_datavalid  [0],
            eth_wrapper_inst.rx_header     [0],
            eth_wrapper_inst.rx_userdata   [0],
            eth_wrapper_inst.rx_gearboxslip[0],
            eth_wrapper_inst.tx_header     [0],
            eth_wrapper_inst.tx_userdata   [0],
            eth_wrapper_inst.txsequence,
            
            eth_wrapper_inst.gt_reset_tx_done,
            eth_wrapper_inst.gt_reset_rx_done,
            eth_wrapper_inst.rx_block_lock,
            eth_wrapper_inst.genblk1[0].gt_rx_clk,
            eth_wrapper_inst.gt_tx_clk
        })
    );
    */
endmodule
