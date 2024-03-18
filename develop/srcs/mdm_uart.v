
module mdm_uart (
    input  wire clk,
    input  wire rst,
    // UART
    input  wire        uart_txd,
    output reg         uart_rxd,
    input  wire [15:0] uart_div, // Clock Divider
    // AXI-Lite
    output reg  [ 4:0] m_axi_awaddr ,
    output reg         m_axi_awvalid,
    input  wire        m_axi_awready,
    output reg  [31:0] m_axi_wdata  ,
    output reg  [ 3:0] m_axi_wstrb  ,
    output reg         m_axi_wvalid ,
    input  wire        m_axi_wready ,
    input  wire [ 1:0] m_axi_bresp  ,
    input  wire        m_axi_bvalid ,
    output reg         m_axi_bready ,
    output reg  [ 4:0] m_axi_araddr ,
    output reg         m_axi_arvalid,
    input  wire        m_axi_arready,
    input  wire [31:0] m_axi_rdata  ,
    input  wire [ 1:0] m_axi_rresp  ,
    input  wire        m_axi_rvalid ,
    output reg         m_axi_rready
    );
    ////////////////////////////////////////////////////////////////////////////
    // UART Clock
    reg [15:0] clk_cnt;
    reg        clk_pos;
    always @(posedge clk) begin
        if (rst) begin
            clk_cnt <= 16'h1;
            clk_pos <=  1'h0;
        end else begin
            if (clk_cnt == uart_div) begin
                clk_cnt <= 16'h1;
                clk_pos <=  1'h1;
            end else begin
                clk_cnt <= clk_cnt + 1'h1;
                clk_pos <= 1'h0;
            end
        end
    end

    ////////////////////////////////////////////////////////////////////////////
    // URT-TXD
    reg [ 7:0] tx_fifo_vec [1023:0];
    reg [ 9:0] tx_head_reg;
    reg [ 9:0] tx_tail_reg;
    //--------------------------------------------------------------------------
    reg        tx_temp_reg;
    reg [ 7:0] tx_data_reg;
    reg [ 3:0] tx_indx_reg;
    reg [15:0] tx_ccnt_reg; // Clock Counter for UART Sampling

    always @(posedge clk) begin
        if (rst) begin
            tx_head_reg <=   'h0;
            tx_temp_reg <=  1'h0;
            tx_data_reg <=  8'h0;
            tx_indx_reg <=  4'hF;
            tx_ccnt_reg <= 16'h0;
        end else
        if (tx_ccnt_reg) begin
            tx_ccnt_reg <= tx_ccnt_reg - 1'h1;
        end else begin
            case(tx_indx_reg)
                4'hF: begin
                    if (tx_temp_reg && !uart_txd) begin
                        tx_ccnt_reg <= uart_div + uart_div[15:1];
                        tx_data_reg <= 8'h0;
                        tx_indx_reg <= 4'h0;
                    end
                end
                4'h0, 4'h1, 4'h2, 4'h3, 4'h4, 4'h5, 4'h6, 4'h7: begin
                    tx_ccnt_reg <= uart_div;
                    tx_data_reg <= tx_data_reg | ({7'h0,uart_txd} << tx_indx_reg);
                    tx_indx_reg <= tx_indx_reg + 1'h1;
                end
                4'h8: begin
                    if (tx_head_reg + 1'h1 != tx_tail_reg) begin
                        tx_fifo_vec[tx_head_reg] <= tx_data_reg;
                        tx_head_reg <= tx_head_reg + 1'h1;
                    end
                    tx_indx_reg <= 4'hF;
                end
            endcase
            tx_temp_reg <= uart_txd;
        end
    end

    ////////////////////////////////////////////////////////////////////////////
    // UART-RXD
    reg  [7:0] rx_fifo_vec [255:0];
    reg  [7:0] rx_head_reg;
    reg  [7:0] rx_tail_reg;
    //--------------------------------------------------------------------------
    reg  [3:0] rx_indx_reg;
    reg  [7:0] rx_data_reg;
    
    always @(posedge clk) begin
        if (rst) begin
            rx_tail_reg <=  'h0;
            rx_indx_reg <= 4'h0;
            uart_rxd    <= 1'h1;
        end else
        if (clk_pos) begin
            case (rx_indx_reg)
                4'h0: begin
                    if (rx_head_reg != rx_tail_reg) begin
                        rx_indx_reg <= rx_indx_reg + 1'h1;
                        rx_data_reg <= rx_fifo_vec[rx_tail_reg];
                        rx_tail_reg <= rx_tail_reg + 1'h1;
                        uart_rxd    <= 1'h0;
                    end
                end
                4'h1, 4'h2, 4'h3, 4'h4, 4'h5, 4'h6, 4'h7: begin
                    rx_indx_reg <= rx_indx_reg + 1'h1;
                    uart_rxd    <= rx_data_reg[0:0];
                    rx_data_reg <= rx_data_reg[6:1];
                end
                4'h8: begin
                    rx_indx_reg <= rx_indx_reg + 1'h1;
                    uart_rxd    <= ^rx_data_reg[6:0];
                end
                4'h9: begin
                    rx_indx_reg <= 1'h0;
                    uart_rxd    <= 1'h1;
                end
            endcase
        end
    end

    ////////////////////////////////////////////////////////////////////////////
    // Registers:
    // -------------------------------------------------------------------------
    // 0x00 |  Rx  | 31-8 | RxData |
    // 0x04 |  Tx  | 31-8 | TxData |
    // 0x08 | STAT | 31-8 | Parity | Frame | Overrun | IntEn | TxF/TxE/RxF/RxV
    // 0x0C | CTRL | 31-5 | EnIntr |  3-2  | RxTxRst |
    // -------------------------------------------------------------------------
    // State-machine for Xilinx MDM
    ////////////////////////////////////////////////////////////////////////////
    localparam REG_RXD = 5'h00;
    localparam REG_TXD = 5'h04;
    localparam REG_STA = 5'h08;
    localparam REG_CTL = 5'h0C;
    
    ////////////////////////////////////////////////////////////////////////////
    localparam STATE_INI_WAIT = 8'h0;
    localparam STATE_INI_ST_A = 8'h1;
    localparam STATE_INI_ST_D = 8'h2;
    localparam STATE_TXD_WR_D = 8'h3;
    localparam STATE_TXD_WR_B = 8'h4;
    localparam STATE_RXD_RD_A = 8'h5;
    localparam STATE_RXD_RD_D = 8'h6;
    
    reg [ 7:0] state_reg;
    
    always @(posedge clk) begin
        if (rst) begin
            state_reg     <= STATE_INI_WAIT;
            m_axi_awvalid <=  1'h0;
            m_axi_awaddr  <=  5'h0;
            m_axi_wvalid  <=  1'h0;
            m_axi_wdata   <= 32'h0;
            m_axi_wstrb   <=  4'h0;
            m_axi_bready  <=  1'h0;
            m_axi_arvalid <=  1'h0;
            m_axi_araddr  <=  5'h0;
            m_axi_rready  <=  1'h0;
            
            rx_head_reg   <=   'h0;
            tx_tail_reg   <=   'h0;
        end else begin
            case (state_reg)
                STATE_INI_WAIT: begin
                    if (clk_pos) begin
                        state_reg     <= STATE_INI_ST_A;
                        m_axi_araddr  <= REG_STA;
                        m_axi_arvalid <= 1'h1;
                    end
                end
                STATE_INI_ST_A: begin
                    if (m_axi_arvalid && m_axi_arready) begin
                        m_axi_arvalid <= 1'h0;
                        state_reg     <= STATE_INI_ST_D;
                        m_axi_rready  <= 1'h1;
                    end
                end
                STATE_INI_ST_D: begin
                    if (m_axi_rvalid && m_axi_rready) begin
                        m_axi_rready <= 1'h0;
                        if (m_axi_rdata[0] == 1'h1 && rx_tail_reg != rx_head_reg + 1'h1) begin
                            state_reg     <= STATE_RXD_RD_A;
                            m_axi_araddr  <= REG_RXD;
                            m_axi_arvalid <= 1'h1;
                        end else
                        if (m_axi_rdata[3] != 1'h1 && tx_head_reg != tx_tail_reg) begin
                            state_reg     <= STATE_TXD_WR_D;
                            m_axi_awaddr  <= REG_TXD;
                            m_axi_awvalid <= 1'h1;
                            m_axi_wvalid  <= 1'h1;
                            m_axi_wstrb   <= 4'h1;
                            m_axi_wdata   <= tx_fifo_vec[tx_tail_reg];
                            tx_tail_reg   <= tx_tail_reg + 1'h1;
                        end else begin
                            state_reg <= STATE_INI_WAIT;
                        end
                    end
                end
                //--------------------------------------------------------------
                STATE_RXD_RD_A: begin
                    if (m_axi_arvalid && m_axi_arready) begin
                        m_axi_arvalid <= 1'h0;
                        state_reg     <= STATE_RXD_RD_D;
                        m_axi_rready  <= 1'h1;
                    end
                end
                STATE_RXD_RD_D: begin
                    if (m_axi_rvalid && m_axi_rready) begin
                        m_axi_rready  <= 1'h0;
                        state_reg     <= STATE_INI_ST_A;
                        m_axi_araddr  <= REG_STA;
                        m_axi_arvalid <= 1'h1;
                        rx_fifo_vec[rx_head_reg] <= m_axi_rdata;
                        rx_head_reg <= rx_head_reg + 1'h1;
                    end
                end
                //------------------------------------------------------------------------------------------------------------------------
                STATE_TXD_WR_D: begin
                    if (m_axi_awvalid && m_axi_awready) begin
                        m_axi_awvalid <= 1'h0;
                        if (!m_axi_wvalid || m_axi_wvalid && m_axi_wready) begin
                            state_reg    <= STATE_TXD_WR_B;
                            m_axi_bready <= 1'h1;
                        end
                    end
                    if (m_axi_wvalid && m_axi_wready) begin
                        m_axi_wvalid <= 1'h0;
                        if (!m_axi_awvalid) begin
                            state_reg    <= STATE_TXD_WR_B;
                            m_axi_bready <= 1'h1;
                        end
                    end
                end
                STATE_TXD_WR_B: begin
                    if (m_axi_bvalid && m_axi_bready) begin
                        m_axi_bready  <= 1'h0;
                        state_reg     <= STATE_INI_ST_A;
                        m_axi_arvalid <= 1'h1;
                        m_axi_araddr  <= REG_STA;
                    end
                end
            endcase
        end
    end
endmodule

