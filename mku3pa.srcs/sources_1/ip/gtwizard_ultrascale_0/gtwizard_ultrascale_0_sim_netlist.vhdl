-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Mar  4 20:22:58 2024
-- Host        : ubuntu running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ubuntu/Dev/mku3pa_debug/mku3pa.srcs/sources_1/ip/gtwizard_ultrascale_0/gtwizard_ultrascale_0_sim_netlist.vhdl
-- Design      : gtwizard_ultrascale_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku3p-ffvb676-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer is
  port (
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_in_out_reg_0 : out STD_LOGIC;
    rxresetdone_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_int_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer : entity is "gtwizard_ultrascale_v1_7_5_bit_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer is
  signal \^gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
  \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\(0) <= \^gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\(0);
gtwiz_reset_rx_done_int_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\(0),
      I1 => gtwiz_reset_rx_done_int_reg(0),
      O => i_in_out_reg_0
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rxresetdone_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \^gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\(0),
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_1 is
  port (
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_in_out_reg_0 : out STD_LOGIC;
    txresetdone_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sm_reset_tx_timer_clr_i_2 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_1 : entity is "gtwizard_ultrascale_v1_7_5_bit_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_1;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_1 is
  signal \^gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
  \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\(0) <= \^gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\(0);
\FSM_sequential_sm_reset_tx[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\(0),
      I1 => sm_reset_tx_timer_clr_i_2(0),
      O => i_in_out_reg_0
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => txresetdone_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \^gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\(0),
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_10 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_sm_reset_tx_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_sm_reset_tx_reg[1]\ : out STD_LOGIC;
    gtwiz_userclk_tx_active_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_sm_reset_tx_reg[0]\ : in STD_LOGIC;
    gtwiz_reset_tx_pll_and_datapath_dly : in STD_LOGIC;
    gtwiz_reset_tx_datapath_dly : in STD_LOGIC;
    sm_reset_tx_pll_timer_clr : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sm_reset_tx_timer_clr_reg : in STD_LOGIC;
    sm_reset_tx_timer_clr_reg_0 : in STD_LOGIC;
    plllock_tx_sync : in STD_LOGIC;
    \FSM_sequential_sm_reset_tx_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_sm_reset_tx_reg[0]_1\ : in STD_LOGIC;
    sm_reset_tx_pll_timer_sat : in STD_LOGIC;
    sm_reset_tx_timer_sat : in STD_LOGIC;
    sm_reset_tx_timer_clr_reg_1 : in STD_LOGIC;
    gtwiz_reset_tx_any_sync : in STD_LOGIC;
    GTYE4_CHANNEL_TXUSERRDY : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_10 : entity is "gtwizard_ultrascale_v1_7_5_bit_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_10;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_10 is
  signal \FSM_sequential_sm_reset_tx[2]_i_3_n_0\ : STD_LOGIC;
  signal gtwiz_reset_userclk_tx_active_sync : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  signal sm_reset_tx_timer_clr_i_2_n_0 : STD_LOGIC;
  signal txuserrdy_out_i_2_n_0 : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
\FSM_sequential_sm_reset_tx[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFFEEEEE"
    )
        port map (
      I0 => \FSM_sequential_sm_reset_tx[2]_i_3_n_0\,
      I1 => \FSM_sequential_sm_reset_tx_reg[0]\,
      I2 => gtwiz_reset_tx_pll_and_datapath_dly,
      I3 => gtwiz_reset_tx_datapath_dly,
      I4 => sm_reset_tx_pll_timer_clr,
      I5 => Q(0),
      O => E(0)
    );
\FSM_sequential_sm_reset_tx[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000088888888"
    )
        port map (
      I0 => \FSM_sequential_sm_reset_tx_reg[0]_0\,
      I1 => gtwiz_reset_userclk_tx_active_sync,
      I2 => sm_reset_tx_pll_timer_clr,
      I3 => \FSM_sequential_sm_reset_tx_reg[0]_1\,
      I4 => sm_reset_tx_pll_timer_sat,
      I5 => Q(0),
      O => \FSM_sequential_sm_reset_tx[2]_i_3_n_0\
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_userclk_tx_active_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => gtwiz_reset_userclk_tx_active_sync,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
sm_reset_tx_timer_clr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBEB282B"
    )
        port map (
      I0 => sm_reset_tx_timer_clr_i_2_n_0,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => sm_reset_tx_timer_clr_reg_1,
      O => \FSM_sequential_sm_reset_tx_reg[2]\
    );
sm_reset_tx_timer_clr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0C0A0C0F0F000F0"
    )
        port map (
      I0 => sm_reset_tx_timer_clr_reg,
      I1 => gtwiz_reset_userclk_tx_active_sync,
      I2 => sm_reset_tx_timer_clr_reg_0,
      I3 => Q(0),
      I4 => plllock_tx_sync,
      I5 => Q(2),
      O => sm_reset_tx_timer_clr_i_2_n_0
    );
txuserrdy_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFB000002AA"
    )
        port map (
      I0 => txuserrdy_out_i_2_n_0,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      I4 => gtwiz_reset_tx_any_sync,
      I5 => GTYE4_CHANNEL_TXUSERRDY(0),
      O => \FSM_sequential_sm_reset_tx_reg[1]\
    );
txuserrdy_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => sm_reset_tx_timer_sat,
      I1 => sm_reset_tx_timer_clr_reg_1,
      I2 => Q(2),
      I3 => Q(1),
      I4 => gtwiz_reset_userclk_tx_active_sync,
      O => txuserrdy_out_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_11 is
  port (
    plllock_rx_sync : out STD_LOGIC;
    i_in_out_reg_0 : out STD_LOGIC;
    i_in_out_reg_1 : out STD_LOGIC;
    qpll0lock_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gtwiz_reset_rx_done_int_reg : in STD_LOGIC;
    gtrxreset_out_reg : in STD_LOGIC;
    sm_reset_rx_timer_sat : in STD_LOGIC;
    gtwiz_reset_rx_done_int_reg_0 : in STD_LOGIC;
    gtwiz_reset_rx_done_int_reg_1 : in STD_LOGIC;
    gtwiz_reset_rx_done_int_reg_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_11 : entity is "gtwizard_ultrascale_v1_7_5_bit_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_11;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_11 is
  signal gtwiz_reset_rx_done_int : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  signal \^plllock_rx_sync\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
  plllock_rx_sync <= \^plllock_rx_sync\;
gtrxreset_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FFFF00"
    )
        port map (
      I0 => \^plllock_rx_sync\,
      I1 => gtrxreset_out_reg,
      I2 => sm_reset_rx_timer_sat,
      I3 => Q(1),
      I4 => Q(0),
      O => i_in_out_reg_0
    );
gtwiz_reset_rx_done_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAC0FFFFAAC00000"
    )
        port map (
      I0 => \^plllock_rx_sync\,
      I1 => gtwiz_reset_rx_done_int_reg_0,
      I2 => gtwiz_reset_rx_done_int_reg_1,
      I3 => Q(0),
      I4 => gtwiz_reset_rx_done_int,
      I5 => gtwiz_reset_rx_done_int_reg_2,
      O => i_in_out_reg_1
    );
gtwiz_reset_rx_done_int_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4400F000"
    )
        port map (
      I0 => \^plllock_rx_sync\,
      I1 => Q(1),
      I2 => gtwiz_reset_rx_done_int_reg,
      I3 => Q(2),
      I4 => Q(0),
      O => gtwiz_reset_rx_done_int
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => qpll0lock_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \^plllock_rx_sync\,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_12 is
  port (
    plllock_tx_sync : out STD_LOGIC;
    i_in_out_reg_0 : out STD_LOGIC;
    sm_reset_tx_timer_sat_reg : out STD_LOGIC;
    \FSM_sequential_sm_reset_tx_reg[0]\ : out STD_LOGIC;
    qpll0lock_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_int_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_sm_reset_tx_reg[0]_0\ : in STD_LOGIC;
    sm_reset_tx_timer_sat : in STD_LOGIC;
    gttxreset_out_reg : in STD_LOGIC;
    gtwiz_reset_tx_any_sync : in STD_LOGIC;
    gtwiz_reset_tx_done_int_reg_0 : in STD_LOGIC;
    gtwiz_reset_tx_done_int_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_12 : entity is "gtwizard_ultrascale_v1_7_5_bit_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_12;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_12 is
  signal gtwiz_reset_tx_done_int : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  signal \^plllock_tx_sync\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
  plllock_tx_sync <= \^plllock_tx_sync\;
\FSM_sequential_sm_reset_tx[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CFA00000000000"
    )
        port map (
      I0 => gtwiz_reset_tx_done_int_reg,
      I1 => \^plllock_tx_sync\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \FSM_sequential_sm_reset_tx_reg[0]_0\,
      O => i_in_out_reg_0
    );
gttxreset_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => sm_reset_tx_timer_sat,
      I1 => gttxreset_out_reg,
      I2 => \^plllock_tx_sync\,
      I3 => gtwiz_reset_tx_any_sync,
      I4 => Q(2),
      I5 => Q(1),
      O => sm_reset_tx_timer_sat_reg
    );
gtwiz_reset_tx_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF400"
    )
        port map (
      I0 => Q(0),
      I1 => \^plllock_tx_sync\,
      I2 => gtwiz_reset_tx_done_int_reg_0,
      I3 => gtwiz_reset_tx_done_int,
      I4 => gtwiz_reset_tx_done_int_reg_1,
      O => \FSM_sequential_sm_reset_tx_reg[0]\
    );
gtwiz_reset_tx_done_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000000040404040"
    )
        port map (
      I0 => \^plllock_tx_sync\,
      I1 => Q(1),
      I2 => Q(2),
      I3 => \FSM_sequential_sm_reset_tx_reg[0]_0\,
      I4 => gtwiz_reset_tx_done_int_reg,
      I5 => Q(0),
      O => gtwiz_reset_tx_done_int
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => qpll0lock_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \^plllock_tx_sync\,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_13 is
  port (
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_sm_reset_rx_reg[1]\ : out STD_LOGIC;
    sm_reset_rx_cdr_to_sat_reg : out STD_LOGIC;
    \FSM_sequential_sm_reset_rx_reg[2]\ : out STD_LOGIC;
    i_in_meta_reg_0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_sm_reset_rx_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    plllock_rx_sync : in STD_LOGIC;
    sm_reset_rx_cdr_to_sat : in STD_LOGIC;
    sm_reset_rx_cdr_to_clr_reg : in STD_LOGIC;
    sm_reset_rx_cdr_to_clr : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_13 : entity is "gtwizard_ultrascale_v1_7_5_bit_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_13;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_13 is
  signal \^gtwiz_reset_rx_cdr_stable_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  signal sm_reset_rx_cdr_to_clr_i_2_n_0 : STD_LOGIC;
  signal \^sm_reset_rx_cdr_to_sat_reg\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rxprogdivreset_out_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sm_reset_rx_cdr_to_clr_i_2 : label is "soft_lutpair4";
begin
  gtwiz_reset_rx_cdr_stable_out(0) <= \^gtwiz_reset_rx_cdr_stable_out\(0);
  sm_reset_rx_cdr_to_sat_reg <= \^sm_reset_rx_cdr_to_sat_reg\;
\FSM_sequential_sm_reset_rx[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A000AC0C000C0"
    )
        port map (
      I0 => \^sm_reset_rx_cdr_to_sat_reg\,
      I1 => \FSM_sequential_sm_reset_rx_reg[0]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => plllock_rx_sync,
      I5 => Q(2),
      O => \FSM_sequential_sm_reset_rx_reg[1]\
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta_reg_0,
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \^gtwiz_reset_rx_cdr_stable_out\(0),
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
rxprogdivreset_out_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_sat,
      I1 => \^gtwiz_reset_rx_cdr_stable_out\(0),
      O => \^sm_reset_rx_cdr_to_sat_reg\
    );
sm_reset_rx_cdr_to_clr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF0800AAAA"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_clr_i_2_n_0,
      I1 => sm_reset_rx_cdr_to_clr_reg,
      I2 => Q(2),
      I3 => plllock_rx_sync,
      I4 => Q(0),
      I5 => sm_reset_rx_cdr_to_clr,
      O => \FSM_sequential_sm_reset_rx_reg[2]\
    );
sm_reset_rx_cdr_to_clr_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_sat,
      I1 => \^gtwiz_reset_rx_cdr_stable_out\(0),
      I2 => Q(2),
      I3 => Q(1),
      O => sm_reset_rx_cdr_to_clr_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_2 is
  port (
    i_in_out_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxresetdone_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_2 : entity is "gtwizard_ultrascale_v1_7_5_bit_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_2;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_2 is
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rxresetdone_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => i_in_out_reg_0(0),
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_3 is
  port (
    i_in_out_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    txresetdone_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_3 : entity is "gtwizard_ultrascale_v1_7_5_bit_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_3;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_3 is
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => txresetdone_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => i_in_out_reg_0(0),
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_4 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    in0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_sm_reset_all_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_sm_reset_all_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_4 : entity is "gtwizard_ultrascale_v1_7_5_bit_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_4;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_4 is
  signal gtpowergood_sync : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
\FSM_sequential_sm_reset_all[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF0FAF00CFFFCFFF"
    )
        port map (
      I0 => gtpowergood_sync,
      I1 => \FSM_sequential_sm_reset_all_reg[0]\,
      I2 => Q(2),
      I3 => Q(0),
      I4 => \FSM_sequential_sm_reset_all_reg[0]_0\,
      I5 => Q(1),
      O => E(0)
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => in0,
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => gtpowergood_sync,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_5 is
  port (
    gtwiz_reset_rx_datapath_dly : out STD_LOGIC;
    in0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_5 : entity is "gtwizard_ultrascale_v1_7_5_bit_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_5;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_5 is
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => in0,
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => gtwiz_reset_rx_datapath_dly,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_6 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    in0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_sm_reset_rx_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_sm_reset_rx_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_sm_reset_rx_reg[0]_1\ : in STD_LOGIC;
    gtwiz_reset_rx_datapath_dly : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_6 : entity is "gtwizard_ultrascale_v1_7_5_bit_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_6;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_6 is
  signal \FSM_sequential_sm_reset_rx[2]_i_3_n_0\ : STD_LOGIC;
  signal gtwiz_reset_rx_pll_and_datapath_dly : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_rx[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_rx[1]_i_1\ : label is "soft_lutpair2";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
\FSM_sequential_sm_reset_rx[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF769976"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => gtwiz_reset_rx_pll_and_datapath_dly,
      I3 => Q(2),
      I4 => \FSM_sequential_sm_reset_rx_reg[0]\,
      O => D(0)
    );
\FSM_sequential_sm_reset_rx[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23EE23EF"
    )
        port map (
      I0 => \FSM_sequential_sm_reset_rx_reg[0]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => gtwiz_reset_rx_pll_and_datapath_dly,
      O => D(1)
    );
\FSM_sequential_sm_reset_rx[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_sequential_sm_reset_rx[2]_i_3_n_0\,
      I1 => \FSM_sequential_sm_reset_rx_reg[0]_0\,
      I2 => \FSM_sequential_sm_reset_rx_reg[0]_1\,
      O => E(0)
    );
\FSM_sequential_sm_reset_rx[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAFE"
    )
        port map (
      I0 => \FSM_sequential_sm_reset_rx_reg[0]\,
      I1 => gtwiz_reset_rx_pll_and_datapath_dly,
      I2 => gtwiz_reset_rx_datapath_dly,
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \FSM_sequential_sm_reset_rx[2]_i_3_n_0\
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => in0,
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => gtwiz_reset_rx_pll_and_datapath_dly,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_7 is
  port (
    gtwiz_reset_tx_datapath_dly : out STD_LOGIC;
    in0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_7 : entity is "gtwizard_ultrascale_v1_7_5_bit_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_7;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_7 is
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => in0,
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => gtwiz_reset_tx_datapath_dly,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_8 is
  port (
    gtwiz_reset_tx_pll_and_datapath_dly : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in0 : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_8 : entity is "gtwizard_ultrascale_v1_7_5_bit_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_8;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_8 is
  signal \^gtwiz_reset_tx_pll_and_datapath_dly\ : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_tx[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_tx[1]_i_1\ : label is "soft_lutpair3";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
  gtwiz_reset_tx_pll_and_datapath_dly <= \^gtwiz_reset_tx_pll_and_datapath_dly\;
\FSM_sequential_sm_reset_tx[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F3E"
    )
        port map (
      I0 => \^gtwiz_reset_tx_pll_and_datapath_dly\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      O => D(0)
    );
\FSM_sequential_sm_reset_tx[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FF1"
    )
        port map (
      I0 => \^gtwiz_reset_tx_pll_and_datapath_dly\,
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      O => D(1)
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => in0,
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => \^gtwiz_reset_tx_pll_and_datapath_dly\,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_9 is
  port (
    \FSM_sequential_sm_reset_rx_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_sm_reset_rx_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_sm_reset_rx_reg[2]\ : out STD_LOGIC;
    gtwiz_userclk_rx_active_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    plllock_rx_sync : in STD_LOGIC;
    sm_reset_rx_timer_clr_reg : in STD_LOGIC;
    \FSM_sequential_sm_reset_rx_reg[0]_0\ : in STD_LOGIC;
    sm_reset_rx_pll_timer_sat : in STD_LOGIC;
    sm_reset_rx_timer_clr_reg_0 : in STD_LOGIC;
    sm_reset_rx_timer_sat : in STD_LOGIC;
    sm_reset_rx_timer_clr_reg_1 : in STD_LOGIC;
    gtwiz_reset_rx_any_sync : in STD_LOGIC;
    GTYE4_CHANNEL_RXUSERRDY : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_9 : entity is "gtwizard_ultrascale_v1_7_5_bit_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_9;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_9 is
  signal gtwiz_reset_userclk_rx_active_sync : STD_LOGIC;
  signal i_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of i_in_meta : signal is "true";
  signal i_in_sync1 : STD_LOGIC;
  attribute async_reg of i_in_sync1 : signal is "true";
  signal i_in_sync2 : STD_LOGIC;
  attribute async_reg of i_in_sync2 : signal is "true";
  signal i_in_sync3 : STD_LOGIC;
  attribute async_reg of i_in_sync3 : signal is "true";
  signal rxuserrdy_out_i_2_n_0 : STD_LOGIC;
  signal sm_reset_rx_timer_clr_i_2_n_0 : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of i_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of i_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync1_reg : label is std.standard.true;
  attribute KEEP of i_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync2_reg : label is std.standard.true;
  attribute KEEP of i_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of i_in_sync3_reg : label is std.standard.true;
  attribute KEEP of i_in_sync3_reg : label is "yes";
begin
\FSM_sequential_sm_reset_rx[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2023202000000000"
    )
        port map (
      I0 => rxuserrdy_out_i_2_n_0,
      I1 => Q(1),
      I2 => Q(2),
      I3 => \FSM_sequential_sm_reset_rx_reg[0]_0\,
      I4 => sm_reset_rx_pll_timer_sat,
      I5 => Q(0),
      O => \FSM_sequential_sm_reset_rx_reg[1]\
    );
i_in_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_userclk_rx_active_out(0),
      Q => i_in_meta,
      R => '0'
    );
i_in_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync3,
      Q => gtwiz_reset_userclk_rx_active_sync,
      R => '0'
    );
i_in_sync1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_meta,
      Q => i_in_sync1,
      R => '0'
    );
i_in_sync2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync1,
      Q => i_in_sync2,
      R => '0'
    );
i_in_sync3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => i_in_sync2,
      Q => i_in_sync3,
      R => '0'
    );
rxuserrdy_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFAAF00000800"
    )
        port map (
      I0 => Q(2),
      I1 => rxuserrdy_out_i_2_n_0,
      I2 => Q(1),
      I3 => Q(0),
      I4 => gtwiz_reset_rx_any_sync,
      I5 => GTYE4_CHANNEL_RXUSERRDY(0),
      O => \FSM_sequential_sm_reset_rx_reg[2]\
    );
rxuserrdy_out_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sm_reset_rx_timer_clr_reg_0,
      I1 => sm_reset_rx_timer_sat,
      I2 => gtwiz_reset_userclk_rx_active_sync,
      O => rxuserrdy_out_i_2_n_0
    );
sm_reset_rx_timer_clr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFCCFF0EE0CC0F"
    )
        port map (
      I0 => sm_reset_rx_timer_clr_reg_1,
      I1 => sm_reset_rx_timer_clr_i_2_n_0,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => sm_reset_rx_timer_clr_reg_0,
      O => \FSM_sequential_sm_reset_rx_reg[0]\
    );
sm_reset_rx_timer_clr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44440000F4FF0000"
    )
        port map (
      I0 => Q(1),
      I1 => gtwiz_reset_userclk_rx_active_sync,
      I2 => plllock_rx_sync,
      I3 => Q(0),
      I4 => sm_reset_rx_timer_clr_reg,
      I5 => Q(2),
      O => sm_reset_rx_timer_clr_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtwiz_userclk_rx is
  port (
    gtwiz_userclk_rx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    lopt : out STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtwiz_userclk_rx : entity is "gtwizard_ultrascale_v1_7_5_gtwiz_userclk_rx";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtwiz_userclk_rx;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtwiz_userclk_rx is
  signal \<const1>\ : STD_LOGIC;
  signal \gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_meta\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_meta\ : signal is "true";
  signal \gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_sync\ : STD_LOGIC;
  attribute async_reg of \gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_sync\ : signal is "true";
  signal \^gtwiz_userclk_rx_usrclk2_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^lopt\ : STD_LOGIC;
  signal \^lopt_1\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_gtwiz_userclk_rx_main.bufg_gt_usrclk2_inst\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gen_gtwiz_userclk_rx_main.bufg_gt_usrclk2_inst\ : label is "MLO ";
  attribute BOX_TYPE of \gen_gtwiz_userclk_rx_main.bufg_gt_usrclk_inst\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gen_gtwiz_userclk_rx_main.bufg_gt_usrclk_inst\ : label is "MLO ";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_meta_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_meta_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_sync_reg\ : label is std.standard.true;
  attribute KEEP of \gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_sync_reg\ : label is "yes";
begin
  \^lopt\ <= lopt_1;
  \^lopt_1\ <= lopt_2;
  gtwiz_userclk_rx_active_out(0) <= \gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_sync\;
  gtwiz_userclk_rx_usrclk2_out(0) <= \^gtwiz_userclk_rx_usrclk2_out\(0);
  lopt <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\gen_gtwiz_userclk_rx_main.bufg_gt_usrclk2_inst\: unisim.vcomponents.BUFG_GT
     port map (
      CE => \^lopt\,
      CEMASK => '0',
      CLR => \^lopt_1\,
      CLRMASK => '0',
      DIV(2 downto 0) => B"001",
      I => rxoutclk_out(0),
      O => \^gtwiz_userclk_rx_usrclk2_out\(0)
    );
\gen_gtwiz_userclk_rx_main.bufg_gt_usrclk_inst\: unisim.vcomponents.BUFG_GT
     port map (
      CE => \^lopt\,
      CEMASK => '0',
      CLR => \^lopt_1\,
      CLRMASK => '0',
      DIV(2 downto 0) => B"000",
      I => rxoutclk_out(0),
      O => gtwiz_userclk_rx_usrclk_out(0)
    );
\gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_meta_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^gtwiz_userclk_rx_usrclk2_out\(0),
      CE => '1',
      CLR => gtwiz_userclk_rx_reset_in(0),
      D => '1',
      Q => \gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_meta\
    );
\gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_sync_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^gtwiz_userclk_rx_usrclk2_out\(0),
      CE => '1',
      CLR => gtwiz_userclk_rx_reset_in(0),
      D => \gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_meta\,
      Q => \gen_gtwiz_userclk_rx_main.gtwiz_userclk_rx_active_sync\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtwiz_userclk_tx is
  port (
    gtwiz_userclk_tx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    lopt : out STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtwiz_userclk_tx : entity is "gtwizard_ultrascale_v1_7_5_gtwiz_userclk_tx";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtwiz_userclk_tx;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtwiz_userclk_tx is
  signal \<const1>\ : STD_LOGIC;
  signal \gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_meta\ : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of \gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_meta\ : signal is "true";
  signal \gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_sync\ : STD_LOGIC;
  attribute async_reg of \gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_sync\ : signal is "true";
  signal \^gtwiz_userclk_tx_usrclk2_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^lopt\ : STD_LOGIC;
  signal \^lopt_1\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_gtwiz_userclk_tx_main.bufg_gt_usrclk2_inst\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gen_gtwiz_userclk_tx_main.bufg_gt_usrclk2_inst\ : label is "MLO ";
  attribute BOX_TYPE of \gen_gtwiz_userclk_tx_main.bufg_gt_usrclk_inst\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gen_gtwiz_userclk_tx_main.bufg_gt_usrclk_inst\ : label is "MLO ";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_meta_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_meta_reg\ : label is "yes";
  attribute ASYNC_REG_boolean of \gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_sync_reg\ : label is std.standard.true;
  attribute KEEP of \gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_sync_reg\ : label is "yes";
begin
  \^lopt\ <= lopt_1;
  \^lopt_1\ <= lopt_2;
  gtwiz_userclk_tx_active_out(0) <= \gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_sync\;
  gtwiz_userclk_tx_usrclk2_out(0) <= \^gtwiz_userclk_tx_usrclk2_out\(0);
  lopt <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\gen_gtwiz_userclk_tx_main.bufg_gt_usrclk2_inst\: unisim.vcomponents.BUFG_GT
     port map (
      CE => \^lopt\,
      CEMASK => '0',
      CLR => \^lopt_1\,
      CLRMASK => '0',
      DIV(2 downto 0) => B"001",
      I => txoutclk_out(0),
      O => \^gtwiz_userclk_tx_usrclk2_out\(0)
    );
\gen_gtwiz_userclk_tx_main.bufg_gt_usrclk_inst\: unisim.vcomponents.BUFG_GT
     port map (
      CE => \^lopt\,
      CEMASK => '0',
      CLR => \^lopt_1\,
      CLRMASK => '0',
      DIV(2 downto 0) => B"000",
      I => txoutclk_out(0),
      O => gtwiz_userclk_tx_usrclk_out(0)
    );
\gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_meta_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^gtwiz_userclk_tx_usrclk2_out\(0),
      CE => '1',
      CLR => gtwiz_userclk_tx_reset_in(0),
      D => '1',
      Q => \gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_meta\
    );
\gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_sync_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^gtwiz_userclk_tx_usrclk2_out\(0),
      CE => '1',
      CLR => gtwiz_userclk_tx_reset_in(0),
      D => \gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_meta\,
      Q => \gen_gtwiz_userclk_tx_main.gtwiz_userclk_tx_active_sync\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_channel is
  port (
    gtrxreset_out_reg : out STD_LOGIC;
    GTYE4_CHANNEL_GTPOWERGOOD : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrxreset_out_reg_0 : out STD_LOGIC;
    in0 : out STD_LOGIC;
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bufgtce_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bufgtreset_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllfbclklost_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cplllock_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllrefclklost_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dmonitoroutclk_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    drprdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclkmonitor_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtytxn_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierategen3_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierateidle_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pciesynctxsyncdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieusergen3rdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieuserphystatusrst_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieuserratestart_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    phystatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    powerpresent_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    resetexception_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrphdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchanbondseq_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchanisaligned_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchanrealign_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxckcaldone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcominitdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcomsasdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcomwakedet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlysresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxelecidle_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlfpstresetdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlfpsu2lpexitdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlfpsu3wakedet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintstarted_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintstrobedone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintstrobestarted_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoutclkfabric_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoutclkpcs_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphaligndone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphalignerr_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxratedone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxrecclkout_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsliderdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslipdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslipoutclkrdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslippmardy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncout_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxvalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txcomfinish_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txdccdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlysresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txoutclkfabric_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_TXOUTCLKPCS : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txphaligndone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txphinitdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txratedone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncout_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 255 downto 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcsrsvdout_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pinrsrvdas_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcierateqpllpd_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcierateqpllreset_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxdatavalid_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxheadervalid_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxstartofseq_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txbufstatus_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bufgtcemask_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    bufgtrstmask_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxbufstatus_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxstatus_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxchbondo_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rxheader_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxdataextendrsvd_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxmonitorout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bufgtdiv_out : out STD_LOGIC_VECTOR ( 17 downto 0 );
    cdrstepdir_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cdrstepsq_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cdrstepsx_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cfgreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clkrsvd0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clkrsvd1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllfreqlock_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cplllockdetclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cplllocken_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dmonfiforeset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dmonitorclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drprst_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    eyescantrigger_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    freqos_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtgrefclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtnorthrefclk0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtnorthrefclk1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_GTRXRESET : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrxresetsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtsouthrefclk0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtsouthrefclk1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_GTTXRESET : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gttxresetsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtyrxn_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    incpctrl_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieeqrxeqadaptdone_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierstidle_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pciersttxsyncstart_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieuserratedone_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll0outclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0freqlock_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll0outrefclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1freqlock_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll1outrefclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetovrd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxafecfoken_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrfreqreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbonden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbondmaster_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbondslave_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxckcalreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeagchold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeagcovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokfen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokfpulse_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokovren_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfekhhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfekhovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfelfhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfelfovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap10hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap10ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap11hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap11ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap12hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap12ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap13hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap13ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap14hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap14ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap15hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap15ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap2hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap2ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap3hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap3ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap4hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap4ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap5hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap5ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap6hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap6ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap7hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap7ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap8hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap8ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap9hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap9ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeuthold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeutovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfevphold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfevpovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfexyden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlybypass_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlyen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlyovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlysreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxeqtraining_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxgearboxslip_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlatclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmgchold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmgcovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmhfhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmhfovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmlfhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmlfklovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmoshold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmosovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoobreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoscalreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoshold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphalign_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphdlypd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphdlyreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_RXPROGDIVRESET : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxratemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslide_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslipoutclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslippma_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncallin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncmode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxtermination_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_RXUSERRDY : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk2_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    sigvalidclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txcominit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txcomsas_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txcomwake_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdccforcestart_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdccreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdetectrx_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlybypass_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlysreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyupdown_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlatclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlfpstreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlfpsu2lpexit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlfpsu3wake_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txmuxdcdexhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txmuxdcdorwren_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txoneszeros_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphalign_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphdlypd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphdlyreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphdlytstclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphinit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_TXPISOPD : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_TXPMARESET : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpolarity_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_TXPROGDIVRESET : in STD_LOGIC_VECTOR ( 0 to 0 );
    GTYE4_CHANNEL_TXRATEMODE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txswing_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncallin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncmode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_TXUSERRDY : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk2_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userdata_tx_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gtrsvd_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcsrsvdin_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tstin_in : in STD_LOGIC_VECTOR ( 39 downto 0 );
    rxelecidlemode_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxmonitorsel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txdeemph_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cpllrefclksel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxchbondlevel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxoutclksel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxrate_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txmargin_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txoutclksel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    GTYE4_CHANNEL_TXRATE : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxdfecfokfcnum_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxchbondi_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txpippmstepsize_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txheader_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rxckcalstart_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    txsequence_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    tx8b10bbypass_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txdataextendrsvd_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : out STD_LOGIC;
    lopt_3 : out STD_LOGIC;
    lopt_4 : in STD_LOGIC;
    lopt_5 : in STD_LOGIC;
    lopt_6 : out STD_LOGIC;
    lopt_7 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_channel : entity is "gtwizard_ultrascale_v1_7_5_gtye4_channel";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_channel;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_channel is
  signal \^gtye4_channel_gtpowergood\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^lopt_2\ : STD_LOGIC;
  signal \^lopt_3\ : STD_LOGIC;
  signal \^rxcdrlock_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rxoutclk_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^txoutclk_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \xlnx_opt_\ : STD_LOGIC;
  signal \xlnx_opt__1\ : STD_LOGIC;
  signal \xlnx_opt__2\ : STD_LOGIC;
  signal \xlnx_opt__3\ : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of BUFG_GT_SYNC : label is "MLO ";
  attribute OPT_MODIFIED of BUFG_GT_SYNC_1 : label is "MLO ";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gtye4_channel_gen.gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST\ : label is "PRIMITIVE";
begin
  GTYE4_CHANNEL_GTPOWERGOOD(1 downto 0) <= \^gtye4_channel_gtpowergood\(1 downto 0);
  \^lopt_2\ <= lopt_4;
  \^lopt_3\ <= lopt_5;
  lopt_2 <= \xlnx_opt_\;
  lopt_3 <= \xlnx_opt__1\;
  lopt_6 <= \xlnx_opt__2\;
  lopt_7 <= \xlnx_opt__3\;
  rxcdrlock_out(1 downto 0) <= \^rxcdrlock_out\(1 downto 0);
  rxoutclk_out(1 downto 0) <= \^rxoutclk_out\(1 downto 0);
  txoutclk_out(1 downto 0) <= \^txoutclk_out\(1 downto 0);
BUFG_GT_SYNC: unisim.vcomponents.BUFG_GT_SYNC
     port map (
      CE => lopt,
      CESYNC => \xlnx_opt_\,
      CLK => \^rxoutclk_out\(0),
      CLR => lopt_1,
      CLRSYNC => \xlnx_opt__1\
    );
BUFG_GT_SYNC_1: unisim.vcomponents.BUFG_GT_SYNC
     port map (
      CE => \^lopt_2\,
      CESYNC => \xlnx_opt__2\,
      CLK => \^txoutclk_out\(0),
      CLR => \^lopt_3\,
      CLRSYNC => \xlnx_opt__3\
    );
\gen_powergood_delay.intclk_rrst_n_r[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gtye4_channel_gtpowergood\(0),
      O => gtrxreset_out_reg
    );
\gen_powergood_delay.intclk_rrst_n_r[4]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gtye4_channel_gtpowergood\(1),
      O => gtrxreset_out_reg_0
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST\: unisim.vcomponents.GTYE4_CHANNEL
    generic map(
      ACJTAG_DEBUG_MODE => '0',
      ACJTAG_MODE => '0',
      ACJTAG_RESET => '0',
      ADAPT_CFG0 => X"0000",
      ADAPT_CFG1 => X"FB1C",
      ADAPT_CFG2 => X"0000",
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0000000000",
      ALIGN_COMMA_WORD => 1,
      ALIGN_MCOMMA_DET => "FALSE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "FALSE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      A_RXOSCALRESET => '0',
      A_RXPROGDIVRESET => '0',
      A_RXTERMINATION => '1',
      A_TXDIFFCTRL => B"01100",
      A_TXPROGDIVRESET => '0',
      CBCC_DATA_SOURCE_SEL => "ENCODED",
      CDR_SWAP_MODE_EN => '0',
      CFOK_PWRSVE_EN => '1',
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CH_HSPMUX => X"4040",
      CKCAL1_CFG_0 => B"1100000011000000",
      CKCAL1_CFG_1 => B"0001000011000000",
      CKCAL1_CFG_2 => B"0010000000001000",
      CKCAL1_CFG_3 => B"0000000000000000",
      CKCAL2_CFG_0 => B"1100000011000000",
      CKCAL2_CFG_1 => B"1000000011000000",
      CKCAL2_CFG_2 => B"0001000000000000",
      CKCAL2_CFG_3 => B"0000000000000000",
      CKCAL2_CFG_4 => B"0000000000000000",
      CLK_CORRECT_USE => "FALSE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 12,
      CLK_COR_MIN_LAT => 8,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0000000000",
      CLK_COR_SEQ_1_2 => B"0000000000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0000000000",
      CLK_COR_SEQ_2_2 => B"0000000000",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 1,
      CPLL_CFG0 => X"01FA",
      CPLL_CFG1 => X"002B",
      CPLL_CFG2 => X"0002",
      CPLL_CFG3 => X"0000",
      CPLL_FBDIV => 2,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG0 => X"02B2",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      CTLE3_OCAP_EXT_CTRL => B"000",
      CTLE3_OCAP_EXT_EN => '0',
      DDI_CTRL => B"00",
      DDI_REALIGN_WAIT => 15,
      DEC_MCOMMA_DETECT => "FALSE",
      DEC_PCOMMA_DETECT => "FALSE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DELAY_ELEC => '0',
      DMONITOR_CFG0 => B"00" & X"00",
      DMONITOR_CFG1 => X"00",
      ES_CLK_PHASE_SEL => '0',
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "FALSE",
      ES_HORZ_OFFSET => X"000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER0 => X"0000",
      ES_QUALIFIER1 => X"0000",
      ES_QUALIFIER2 => X"0000",
      ES_QUALIFIER3 => X"0000",
      ES_QUALIFIER4 => X"0000",
      ES_QUALIFIER5 => X"0000",
      ES_QUALIFIER6 => X"0000",
      ES_QUALIFIER7 => X"0000",
      ES_QUALIFIER8 => X"0000",
      ES_QUALIFIER9 => X"0000",
      ES_QUAL_MASK0 => X"0000",
      ES_QUAL_MASK1 => X"0000",
      ES_QUAL_MASK2 => X"0000",
      ES_QUAL_MASK3 => X"0000",
      ES_QUAL_MASK4 => X"0000",
      ES_QUAL_MASK5 => X"0000",
      ES_QUAL_MASK6 => X"0000",
      ES_QUAL_MASK7 => X"0000",
      ES_QUAL_MASK8 => X"0000",
      ES_QUAL_MASK9 => X"0000",
      ES_SDATA_MASK0 => X"0000",
      ES_SDATA_MASK1 => X"0000",
      ES_SDATA_MASK2 => X"0000",
      ES_SDATA_MASK3 => X"0000",
      ES_SDATA_MASK4 => X"0000",
      ES_SDATA_MASK5 => X"0000",
      ES_SDATA_MASK6 => X"0000",
      ES_SDATA_MASK7 => X"0000",
      ES_SDATA_MASK8 => X"0000",
      ES_SDATA_MASK9 => X"0000",
      EYESCAN_VP_RANGE => 0,
      EYE_SCAN_SWAP_EN => '0',
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"00001",
      ISCAN_CK_PH_SEL2 => '0',
      LOCAL_MASTER => '1',
      LPBK_BIAS_CTRL => 4,
      LPBK_EN_RCAL_B => '0',
      LPBK_EXT_RCAL => B"1000",
      LPBK_IND_CTRL0 => 5,
      LPBK_IND_CTRL1 => 5,
      LPBK_IND_CTRL2 => 5,
      LPBK_RG_CTRL => 2,
      OOBDIVCTL => B"00",
      OOB_PWRUP => '0',
      PCI3_AUTO_REALIGN => "OVR_1K_BLK",
      PCI3_PIPE_RX_ELECIDLE => '0',
      PCI3_RX_ASYNC_EBUF_BYPASS => B"00",
      PCI3_RX_ELECIDLE_EI2_ENABLE => '0',
      PCI3_RX_ELECIDLE_H2L_COUNT => B"000000",
      PCI3_RX_ELECIDLE_H2L_DISABLE => B"000",
      PCI3_RX_ELECIDLE_HI_COUNT => B"000000",
      PCI3_RX_ELECIDLE_LP4_DISABLE => '0',
      PCI3_RX_FIFO_DISABLE => '0',
      PCIE3_CLK_COR_EMPTY_THRSH => B"00000",
      PCIE3_CLK_COR_FULL_THRSH => B"010000",
      PCIE3_CLK_COR_MAX_LAT => B"00100",
      PCIE3_CLK_COR_MIN_LAT => B"00000",
      PCIE3_CLK_COR_THRSH_TIMER => B"001000",
      PCIE_64B_DYN_CLKSW_DIS => "FALSE",
      PCIE_BUFG_DIV_CTRL => X"3500",
      PCIE_GEN4_64BIT_INT_EN => "FALSE",
      PCIE_PLL_SEL_MODE_GEN12 => B"10",
      PCIE_PLL_SEL_MODE_GEN3 => B"10",
      PCIE_PLL_SEL_MODE_GEN4 => B"10",
      PCIE_RXPCS_CFG_GEN3 => X"0AA5",
      PCIE_RXPMA_CFG => X"280A",
      PCIE_TXPCS_CFG_GEN3 => X"2CA4",
      PCIE_TXPMA_CFG => X"280A",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD0 => X"0000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PREIQ_FREQ_BST => 1,
      RATE_SW_USE_DRP => '1',
      RCLK_SIPO_DLY_ENB => '0',
      RCLK_SIPO_INV_EN => '0',
      RTX_BUF_CML_CTRL => B"011",
      RTX_BUF_TERM_CTRL => B"00",
      RXBUFRESET_TIME => B"00011",
      RXBUF_ADDR_MODE => "FAST",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 57,
      RXBUF_THRESH_OVRD => "TRUE",
      RXBUF_THRESH_UNDFLW => 3,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG0 => X"0003",
      RXCDR_CFG0_GEN3 => X"0003",
      RXCDR_CFG1 => X"0000",
      RXCDR_CFG1_GEN3 => X"0000",
      RXCDR_CFG2 => X"0269",
      RXCDR_CFG2_GEN2 => B"10" & X"69",
      RXCDR_CFG2_GEN3 => X"0269",
      RXCDR_CFG2_GEN4 => X"0164",
      RXCDR_CFG3 => X"0012",
      RXCDR_CFG3_GEN2 => B"01" & X"2",
      RXCDR_CFG3_GEN3 => X"0012",
      RXCDR_CFG3_GEN4 => X"0012",
      RXCDR_CFG4 => X"5CF6",
      RXCDR_CFG4_GEN3 => X"5CF6",
      RXCDR_CFG5 => X"B46B",
      RXCDR_CFG5_GEN3 => X"146B",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG0 => X"2201",
      RXCDR_LOCK_CFG1 => X"9FFF",
      RXCDR_LOCK_CFG2 => X"0000",
      RXCDR_LOCK_CFG3 => X"0000",
      RXCDR_LOCK_CFG4 => X"0000",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXCFOK_CFG0 => X"0000",
      RXCFOK_CFG1 => X"8015",
      RXCFOK_CFG2 => X"02AE",
      RXCKCAL1_IQ_LOOP_RST_CFG => X"0000",
      RXCKCAL1_I_LOOP_RST_CFG => X"0000",
      RXCKCAL1_Q_LOOP_RST_CFG => X"0000",
      RXCKCAL2_DX_LOOP_RST_CFG => X"0000",
      RXCKCAL2_D_LOOP_RST_CFG => X"0000",
      RXCKCAL2_S_LOOP_RST_CFG => X"0000",
      RXCKCAL2_X_LOOP_RST_CFG => X"0000",
      RXDFELPMRESET_TIME => B"0001111",
      RXDFELPM_KL_CFG0 => X"0000",
      RXDFELPM_KL_CFG1 => X"A082",
      RXDFELPM_KL_CFG2 => X"0100",
      RXDFE_CFG0 => X"0A00",
      RXDFE_CFG1 => X"0000",
      RXDFE_GC_CFG0 => X"0000",
      RXDFE_GC_CFG1 => X"8000",
      RXDFE_GC_CFG2 => X"FFE0",
      RXDFE_H2_CFG0 => X"0000",
      RXDFE_H2_CFG1 => X"0002",
      RXDFE_H3_CFG0 => X"0000",
      RXDFE_H3_CFG1 => X"8002",
      RXDFE_H4_CFG0 => X"0000",
      RXDFE_H4_CFG1 => X"8002",
      RXDFE_H5_CFG0 => X"0000",
      RXDFE_H5_CFG1 => X"8002",
      RXDFE_H6_CFG0 => X"0000",
      RXDFE_H6_CFG1 => X"8002",
      RXDFE_H7_CFG0 => X"0000",
      RXDFE_H7_CFG1 => X"8002",
      RXDFE_H8_CFG0 => X"0000",
      RXDFE_H8_CFG1 => X"8002",
      RXDFE_H9_CFG0 => X"0000",
      RXDFE_H9_CFG1 => X"8002",
      RXDFE_HA_CFG0 => X"0000",
      RXDFE_HA_CFG1 => X"8002",
      RXDFE_HB_CFG0 => X"0000",
      RXDFE_HB_CFG1 => X"8002",
      RXDFE_HC_CFG0 => X"0000",
      RXDFE_HC_CFG1 => X"8002",
      RXDFE_HD_CFG0 => X"0000",
      RXDFE_HD_CFG1 => X"8002",
      RXDFE_HE_CFG0 => X"0000",
      RXDFE_HE_CFG1 => X"8002",
      RXDFE_HF_CFG0 => X"0000",
      RXDFE_HF_CFG1 => X"8002",
      RXDFE_KH_CFG0 => X"8000",
      RXDFE_KH_CFG1 => X"FE00",
      RXDFE_KH_CFG2 => X"0200",
      RXDFE_KH_CFG3 => X"4101",
      RXDFE_OS_CFG0 => X"2000",
      RXDFE_OS_CFG1 => X"8000",
      RXDFE_UT_CFG0 => X"0000",
      RXDFE_UT_CFG1 => X"0003",
      RXDFE_UT_CFG2 => X"0000",
      RXDFE_VP_CFG0 => X"0000",
      RXDFE_VP_CFG1 => X"0033",
      RXDLY_CFG => X"0010",
      RXDLY_LCFG => X"0030",
      RXELECIDLE_CFG => "SIGCFG_4",
      RXGBOX_FIFO_INIT_RD_ADDR => 4,
      RXGEARBOX_EN => "TRUE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_CFG => X"0000",
      RXLPM_GC_CFG => X"F800",
      RXLPM_KH_CFG0 => X"0000",
      RXLPM_KH_CFG1 => X"A002",
      RXLPM_OS_CFG0 => X"0000",
      RXLPM_OS_CFG1 => X"8002",
      RXOOB_CFG => B"000000110",
      RXOOB_CLK_CFG => "PMA",
      RXOSCALRESET_TIME => B"00011",
      RXOUT_DIV => 1,
      RXPCSRESET_TIME => B"00011",
      RXPHBEACON_CFG => X"0000",
      RXPHDLY_CFG => X"2070",
      RXPHSAMP_CFG => X"2100",
      RXPHSLIP_CFG => X"9933",
      RXPH_MONITOR_SEL => B"00000",
      RXPI_CFG0 => X"0102",
      RXPI_CFG1 => B"0000000001010100",
      RXPMACLK_SEL => "DATA",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXPRBS_LINKACQ_CNT => 15,
      RXREFCLKDIV2_SEL => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RXSYNC_MULTILANE => '1',
      RXSYNC_OVRD => '0',
      RXSYNC_SKIP_DA => '0',
      RX_AFE_CM_EN => '0',
      RX_BIAS_CFG0 => X"12B0",
      RX_BUFFER_CFG => B"000000",
      RX_CAPFF_SARC_ENB => '0',
      RX_CLK25_DIV => 7,
      RX_CLKMUX_EN => '1',
      RX_CLK_SLIP_OVRD => B"00000",
      RX_CM_BUF_CFG => B"1010",
      RX_CM_BUF_PD => '0',
      RX_CM_SEL => 2,
      RX_CM_TRIM => 10,
      RX_CTLE_PWR_SAVING => '0',
      RX_CTLE_RES_CTRL => B"0000",
      RX_DATA_WIDTH => 64,
      RX_DDI_SEL => B"000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DEGEN_CTRL => B"100",
      RX_DFELPM_CFG0 => 10,
      RX_DFELPM_CFG1 => '1',
      RX_DFELPM_KLKH_AGC_STUP_EN => '1',
      RX_DFE_AGC_CFG1 => 2,
      RX_DFE_KL_LPM_KH_CFG0 => 3,
      RX_DFE_KL_LPM_KH_CFG1 => 2,
      RX_DFE_KL_LPM_KL_CFG0 => B"11",
      RX_DFE_KL_LPM_KL_CFG1 => 2,
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_DIVRESET_TIME => B"00001",
      RX_EN_CTLE_RCAL_B => '0',
      RX_EN_SUM_RCAL_B => 0,
      RX_EYESCAN_VS_CODE => B"0000000",
      RX_EYESCAN_VS_NEG_DIR => '0',
      RX_EYESCAN_VS_RANGE => B"10",
      RX_EYESCAN_VS_UT_SIGN => '0',
      RX_FABINT_USRCLK_FLOP => '0',
      RX_I2V_FILTER_EN => '1',
      RX_INT_DATAWIDTH => 1,
      RX_PMA_POWER_SAVE => '0',
      RX_PMA_RSV0 => X"002F",
      RX_PROGDIV_CFG => 16.000000,
      RX_PROGDIV_RATE => X"0001",
      RX_RESLOAD_CTRL => B"0000",
      RX_RESLOAD_OVRD => '0',
      RX_SAMPLE_PERIOD => B"111",
      RX_SIG_VALID_DLY => 11,
      RX_SUM_DEGEN_AVTT_OVERITE => 0,
      RX_SUM_DFETAPREP_EN => '0',
      RX_SUM_IREF_TUNE => B"0000",
      RX_SUM_PWR_SAVING => 0,
      RX_SUM_RES_CTRL => B"0000",
      RX_SUM_VCMTUNE => B"1001",
      RX_SUM_VCM_BIAS_TUNE_EN => '1',
      RX_SUM_VCM_OVWR => '0',
      RX_SUM_VREF_TUNE => B"100",
      RX_TUNE_AFE_OS => B"10",
      RX_VREG_CTRL => B"010",
      RX_VREG_PDB => '1',
      RX_WIDEMODE_CDR => B"01",
      RX_WIDEMODE_CDR_GEN3 => B"00",
      RX_WIDEMODE_CDR_GEN4 => B"01",
      RX_XCLK_SEL => "RXDES",
      RX_XMODE_SEL => '1',
      SAMPLE_CLK_PHASE => '0',
      SAS_12G_MODE => '0',
      SATA_BURST_SEQ_LEN => B"1111",
      SATA_BURST_VAL => B"100",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"100",
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_MODE => "FAST",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "Z",
      SRSTMODE => '0',
      TAPDLY_SET_TX => B"00",
      TERM_RCAL_CFG => B"100001000000010",
      TERM_RCAL_OVRD => B"001",
      TRANS_TIME_RATE => X"0E",
      TST_RSV0 => X"00",
      TST_RSV1 => X"00",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"8010",
      TXDLY_LCFG => X"0030",
      TXDRV_FREQBAND => 0,
      TXFE_CFG0 => B"0000001111000010",
      TXFE_CFG1 => B"0110110000000000",
      TXFE_CFG2 => B"0110110000000000",
      TXFE_CFG3 => B"0110110000000000",
      TXFIFO_ADDR_CFG => "LOW",
      TXGBOX_FIFO_INIT_RD_ADDR => 4,
      TXGEARBOX_EN => "TRUE",
      TXOUT_DIV => 1,
      TXPCSRESET_TIME => B"00011",
      TXPHDLY_CFG0 => X"6070",
      TXPHDLY_CFG1 => X"000E",
      TXPH_CFG => X"0323",
      TXPH_CFG2 => X"0000",
      TXPH_MONITOR_SEL => B"00000",
      TXPI_CFG0 => B"0000001100000000",
      TXPI_CFG1 => B"0001000000000000",
      TXPI_GRAY_SEL => '0',
      TXPI_INVSTROBE_SEL => '0',
      TXPI_PPM => '0',
      TXPI_PPM_CFG => B"00000000",
      TXPI_SYNFREQ_PPM => B"001",
      TXPMARESET_TIME => B"00011",
      TXREFCLKDIV2_SEL => '0',
      TXSWBST_BST => 1,
      TXSWBST_EN => 0,
      TXSWBST_MAG => 4,
      TXSYNC_MULTILANE => '1',
      TXSYNC_OVRD => '0',
      TXSYNC_SKIP_DA => '0',
      TX_CLK25_DIV => 7,
      TX_CLKMUX_EN => '1',
      TX_DATA_WIDTH => 64,
      TX_DCC_LOOP_RST_CFG => X"0004",
      TX_DEEMPH0 => B"000000",
      TX_DEEMPH1 => B"000000",
      TX_DEEMPH2 => B"000000",
      TX_DEEMPH3 => B"000000",
      TX_DIVRESET_TIME => B"00001",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"100",
      TX_EIDLE_DEASSERT_DELAY => B"011",
      TX_FABINT_USRCLK_FLOP => '0',
      TX_FIFO_BYP_EN => '0',
      TX_IDLE_DATA_ZERO => '0',
      TX_INT_DATAWIDTH => 1,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1011000",
      TX_MARGIN_FULL_1 => B"1010111",
      TX_MARGIN_FULL_2 => B"1010101",
      TX_MARGIN_FULL_3 => B"1010011",
      TX_MARGIN_FULL_4 => B"1010001",
      TX_MARGIN_LOW_0 => B"1001100",
      TX_MARGIN_LOW_1 => B"1001011",
      TX_MARGIN_LOW_2 => B"1001000",
      TX_MARGIN_LOW_3 => B"1000010",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PHICAL_CFG0 => X"0020",
      TX_PHICAL_CFG1 => X"0040",
      TX_PI_BIASSET => 1,
      TX_PMADATA_OPT => '0',
      TX_PMA_POWER_SAVE => '0',
      TX_PMA_RSV0 => X"0000",
      TX_PMA_RSV1 => X"0000",
      TX_PROGCLK_SEL => "PREPI",
      TX_PROGDIV_CFG => 16.000000,
      TX_PROGDIV_RATE => X"0001",
      TX_RXDETECT_CFG => B"00" & X"032",
      TX_RXDETECT_REF => 5,
      TX_SAMPLE_PERIOD => B"111",
      TX_SW_MEAS => B"00",
      TX_VREG_CTRL => B"011",
      TX_VREG_PDB => '1',
      TX_VREG_VREFSEL => B"10",
      TX_XCLK_SEL => "TXOUT",
      USB_BOTH_BURST_IDLE => '0',
      USB_BURSTMAX_U3WAKE => B"1111111",
      USB_BURSTMIN_U3WAKE => B"1100011",
      USB_CLK_COR_EQ_EN => '0',
      USB_EXT_CNTL => '1',
      USB_IDLEMAX_POLLING => B"1010111011",
      USB_IDLEMIN_POLLING => B"0100101011",
      USB_LFPSPING_BURST => B"000000101",
      USB_LFPSPOLLING_BURST => B"000110001",
      USB_LFPSPOLLING_IDLE_MS => B"000000100",
      USB_LFPSU1EXIT_BURST => B"000011101",
      USB_LFPSU2LPEXIT_BURST_MS => B"001100011",
      USB_LFPSU3WAKE_BURST_MS => B"111110011",
      USB_LFPS_TPERIOD => B"0011",
      USB_LFPS_TPERIOD_ACCURATE => '1',
      USB_MODE => '0',
      USB_PCIE_ERR_REP_DIS => '0',
      USB_PING_SATA_MAX_INIT => 21,
      USB_PING_SATA_MIN_INIT => 12,
      USB_POLL_SATA_MAX_BURST => 8,
      USB_POLL_SATA_MIN_BURST => 4,
      USB_RAW_ELEC => '0',
      USB_RXIDLE_P0_CTRL => '1',
      USB_TXIDLE_TUNE_ENABLE => '1',
      USB_U1_SATA_MAX_WAKE => 7,
      USB_U1_SATA_MIN_WAKE => 4,
      USB_U2_SAS_MAX_COM => 64,
      USB_U2_SAS_MIN_COM => 36,
      USE_PCS_CLK_PHASE_SEL => '0',
      Y_ALL_MODE => '0'
    )
        port map (
      BUFGTCE => bufgtce_out(0),
      BUFGTCEMASK(2 downto 0) => bufgtcemask_out(2 downto 0),
      BUFGTDIV(8 downto 0) => bufgtdiv_out(8 downto 0),
      BUFGTRESET => bufgtreset_out(0),
      BUFGTRSTMASK(2 downto 0) => bufgtrstmask_out(2 downto 0),
      CDRSTEPDIR => cdrstepdir_in(0),
      CDRSTEPSQ => cdrstepsq_in(0),
      CDRSTEPSX => cdrstepsx_in(0),
      CFGRESET => cfgreset_in(0),
      CLKRSVD0 => clkrsvd0_in(0),
      CLKRSVD1 => clkrsvd1_in(0),
      CPLLFBCLKLOST => cpllfbclklost_out(0),
      CPLLFREQLOCK => cpllfreqlock_in(0),
      CPLLLOCK => cplllock_out(0),
      CPLLLOCKDETCLK => cplllockdetclk_in(0),
      CPLLLOCKEN => cplllocken_in(0),
      CPLLPD => cpllpd_in(0),
      CPLLREFCLKLOST => cpllrefclklost_out(0),
      CPLLREFCLKSEL(2 downto 0) => cpllrefclksel_in(2 downto 0),
      CPLLRESET => cpllreset_in(0),
      DMONFIFORESET => dmonfiforeset_in(0),
      DMONITORCLK => dmonitorclk_in(0),
      DMONITOROUT(15 downto 0) => dmonitorout_out(15 downto 0),
      DMONITOROUTCLK => dmonitoroutclk_out(0),
      DRPADDR(9 downto 0) => drpaddr_in(9 downto 0),
      DRPCLK => drpclk_in(0),
      DRPDI(15 downto 0) => drpdi_in(15 downto 0),
      DRPDO(15 downto 0) => drpdo_out(15 downto 0),
      DRPEN => drpen_in(0),
      DRPRDY => drprdy_out(0),
      DRPRST => drprst_in(0),
      DRPWE => drpwe_in(0),
      EYESCANDATAERROR => eyescandataerror_out(0),
      EYESCANRESET => eyescanreset_in(0),
      EYESCANTRIGGER => eyescantrigger_in(0),
      FREQOS => freqos_in(0),
      GTGREFCLK => gtgrefclk_in(0),
      GTNORTHREFCLK0 => gtnorthrefclk0_in(0),
      GTNORTHREFCLK1 => gtnorthrefclk1_in(0),
      GTPOWERGOOD => \^gtye4_channel_gtpowergood\(0),
      GTREFCLK0 => gtrefclk0_in(0),
      GTREFCLK1 => gtrefclk1_in(0),
      GTREFCLKMONITOR => gtrefclkmonitor_out(0),
      GTRSVD(15 downto 0) => gtrsvd_in(15 downto 0),
      GTRXRESET => GTYE4_CHANNEL_GTRXRESET(0),
      GTRXRESETSEL => gtrxresetsel_in(0),
      GTSOUTHREFCLK0 => gtsouthrefclk0_in(0),
      GTSOUTHREFCLK1 => gtsouthrefclk1_in(0),
      GTTXRESET => GTYE4_CHANNEL_GTTXRESET(0),
      GTTXRESETSEL => gttxresetsel_in(0),
      GTYRXN => gtyrxn_in(0),
      GTYRXP => gtyrxp_in(0),
      GTYTXN => gtytxn_out(0),
      GTYTXP => gtytxp_out(0),
      INCPCTRL => incpctrl_in(0),
      LOOPBACK(2 downto 0) => loopback_in(2 downto 0),
      PCIEEQRXEQADAPTDONE => pcieeqrxeqadaptdone_in(0),
      PCIERATEGEN3 => pcierategen3_out(0),
      PCIERATEIDLE => pcierateidle_out(0),
      PCIERATEQPLLPD(1 downto 0) => pcierateqpllpd_out(1 downto 0),
      PCIERATEQPLLRESET(1 downto 0) => pcierateqpllreset_out(1 downto 0),
      PCIERSTIDLE => pcierstidle_in(0),
      PCIERSTTXSYNCSTART => pciersttxsyncstart_in(0),
      PCIESYNCTXSYNCDONE => pciesynctxsyncdone_out(0),
      PCIEUSERGEN3RDY => pcieusergen3rdy_out(0),
      PCIEUSERPHYSTATUSRST => pcieuserphystatusrst_out(0),
      PCIEUSERRATEDONE => pcieuserratedone_in(0),
      PCIEUSERRATESTART => pcieuserratestart_out(0),
      PCSRSVDIN(15 downto 0) => pcsrsvdin_in(15 downto 0),
      PCSRSVDOUT(15 downto 0) => pcsrsvdout_out(15 downto 0),
      PHYSTATUS => phystatus_out(0),
      PINRSRVDAS(15 downto 0) => pinrsrvdas_out(15 downto 0),
      POWERPRESENT => powerpresent_out(0),
      QPLL0CLK => qpll0outclk_out(0),
      QPLL0FREQLOCK => qpll0freqlock_in(0),
      QPLL0REFCLK => qpll0outrefclk_out(0),
      QPLL1CLK => qpll1outclk_out(0),
      QPLL1FREQLOCK => qpll1freqlock_in(0),
      QPLL1REFCLK => qpll1outrefclk_out(0),
      RESETEXCEPTION => resetexception_out(0),
      RESETOVRD => resetovrd_in(0),
      RX8B10BEN => rx8b10ben_in(0),
      RXAFECFOKEN => rxafecfoken_in(0),
      RXBUFRESET => rxbufreset_in(0),
      RXBUFSTATUS(2 downto 0) => rxbufstatus_out(2 downto 0),
      RXBYTEISALIGNED => rxbyteisaligned_out(0),
      RXBYTEREALIGN => rxbyterealign_out(0),
      RXCDRFREQRESET => rxcdrfreqreset_in(0),
      RXCDRHOLD => rxcdrhold_in(0),
      RXCDRLOCK => \^rxcdrlock_out\(0),
      RXCDROVRDEN => rxcdrovrden_in(0),
      RXCDRPHDONE => rxcdrphdone_out(0),
      RXCDRRESET => rxcdrreset_in(0),
      RXCHANBONDSEQ => rxchanbondseq_out(0),
      RXCHANISALIGNED => rxchanisaligned_out(0),
      RXCHANREALIGN => rxchanrealign_out(0),
      RXCHBONDEN => rxchbonden_in(0),
      RXCHBONDI(4 downto 0) => rxchbondi_in(4 downto 0),
      RXCHBONDLEVEL(2 downto 0) => rxchbondlevel_in(2 downto 0),
      RXCHBONDMASTER => rxchbondmaster_in(0),
      RXCHBONDO(4 downto 0) => rxchbondo_out(4 downto 0),
      RXCHBONDSLAVE => rxchbondslave_in(0),
      RXCKCALDONE => rxckcaldone_out(0),
      RXCKCALRESET => rxckcalreset_in(0),
      RXCKCALSTART(6 downto 0) => rxckcalstart_in(6 downto 0),
      RXCLKCORCNT(1 downto 0) => rxclkcorcnt_out(1 downto 0),
      RXCOMINITDET => rxcominitdet_out(0),
      RXCOMMADET => rxcommadet_out(0),
      RXCOMMADETEN => rxcommadeten_in(0),
      RXCOMSASDET => rxcomsasdet_out(0),
      RXCOMWAKEDET => rxcomwakedet_out(0),
      RXCTRL0(15 downto 0) => rxctrl0_out(15 downto 0),
      RXCTRL1(15 downto 0) => rxctrl1_out(15 downto 0),
      RXCTRL2(7 downto 0) => rxctrl2_out(7 downto 0),
      RXCTRL3(7 downto 0) => rxctrl3_out(7 downto 0),
      RXDATA(127 downto 0) => rxdata_out(127 downto 0),
      RXDATAEXTENDRSVD(7 downto 0) => rxdataextendrsvd_out(7 downto 0),
      RXDATAVALID(1 downto 0) => rxdatavalid_out(1 downto 0),
      RXDFEAGCHOLD => rxdfeagchold_in(0),
      RXDFEAGCOVRDEN => rxdfeagcovrden_in(0),
      RXDFECFOKFCNUM(3 downto 0) => rxdfecfokfcnum_in(3 downto 0),
      RXDFECFOKFEN => rxdfecfokfen_in(0),
      RXDFECFOKFPULSE => rxdfecfokfpulse_in(0),
      RXDFECFOKHOLD => rxdfecfokhold_in(0),
      RXDFECFOKOVREN => rxdfecfokovren_in(0),
      RXDFEKHHOLD => rxdfekhhold_in(0),
      RXDFEKHOVRDEN => rxdfekhovrden_in(0),
      RXDFELFHOLD => rxdfelfhold_in(0),
      RXDFELFOVRDEN => rxdfelfovrden_in(0),
      RXDFELPMRESET => rxdfelpmreset_in(0),
      RXDFETAP10HOLD => rxdfetap10hold_in(0),
      RXDFETAP10OVRDEN => rxdfetap10ovrden_in(0),
      RXDFETAP11HOLD => rxdfetap11hold_in(0),
      RXDFETAP11OVRDEN => rxdfetap11ovrden_in(0),
      RXDFETAP12HOLD => rxdfetap12hold_in(0),
      RXDFETAP12OVRDEN => rxdfetap12ovrden_in(0),
      RXDFETAP13HOLD => rxdfetap13hold_in(0),
      RXDFETAP13OVRDEN => rxdfetap13ovrden_in(0),
      RXDFETAP14HOLD => rxdfetap14hold_in(0),
      RXDFETAP14OVRDEN => rxdfetap14ovrden_in(0),
      RXDFETAP15HOLD => rxdfetap15hold_in(0),
      RXDFETAP15OVRDEN => rxdfetap15ovrden_in(0),
      RXDFETAP2HOLD => rxdfetap2hold_in(0),
      RXDFETAP2OVRDEN => rxdfetap2ovrden_in(0),
      RXDFETAP3HOLD => rxdfetap3hold_in(0),
      RXDFETAP3OVRDEN => rxdfetap3ovrden_in(0),
      RXDFETAP4HOLD => rxdfetap4hold_in(0),
      RXDFETAP4OVRDEN => rxdfetap4ovrden_in(0),
      RXDFETAP5HOLD => rxdfetap5hold_in(0),
      RXDFETAP5OVRDEN => rxdfetap5ovrden_in(0),
      RXDFETAP6HOLD => rxdfetap6hold_in(0),
      RXDFETAP6OVRDEN => rxdfetap6ovrden_in(0),
      RXDFETAP7HOLD => rxdfetap7hold_in(0),
      RXDFETAP7OVRDEN => rxdfetap7ovrden_in(0),
      RXDFETAP8HOLD => rxdfetap8hold_in(0),
      RXDFETAP8OVRDEN => rxdfetap8ovrden_in(0),
      RXDFETAP9HOLD => rxdfetap9hold_in(0),
      RXDFETAP9OVRDEN => rxdfetap9ovrden_in(0),
      RXDFEUTHOLD => rxdfeuthold_in(0),
      RXDFEUTOVRDEN => rxdfeutovrden_in(0),
      RXDFEVPHOLD => rxdfevphold_in(0),
      RXDFEVPOVRDEN => rxdfevpovrden_in(0),
      RXDFEXYDEN => rxdfexyden_in(0),
      RXDLYBYPASS => rxdlybypass_in(0),
      RXDLYEN => rxdlyen_in(0),
      RXDLYOVRDEN => rxdlyovrden_in(0),
      RXDLYSRESET => rxdlysreset_in(0),
      RXDLYSRESETDONE => rxdlysresetdone_out(0),
      RXELECIDLE => rxelecidle_out(0),
      RXELECIDLEMODE(1 downto 0) => rxelecidlemode_in(1 downto 0),
      RXEQTRAINING => rxeqtraining_in(0),
      RXGEARBOXSLIP => rxgearboxslip_in(0),
      RXHEADER(5 downto 0) => rxheader_out(5 downto 0),
      RXHEADERVALID(1 downto 0) => rxheadervalid_out(1 downto 0),
      RXLATCLK => rxlatclk_in(0),
      RXLFPSTRESETDET => rxlfpstresetdet_out(0),
      RXLFPSU2LPEXITDET => rxlfpsu2lpexitdet_out(0),
      RXLFPSU3WAKEDET => rxlfpsu3wakedet_out(0),
      RXLPMEN => rxlpmen_in(0),
      RXLPMGCHOLD => rxlpmgchold_in(0),
      RXLPMGCOVRDEN => rxlpmgcovrden_in(0),
      RXLPMHFHOLD => rxlpmhfhold_in(0),
      RXLPMHFOVRDEN => rxlpmhfovrden_in(0),
      RXLPMLFHOLD => rxlpmlfhold_in(0),
      RXLPMLFKLOVRDEN => rxlpmlfklovrden_in(0),
      RXLPMOSHOLD => rxlpmoshold_in(0),
      RXLPMOSOVRDEN => rxlpmosovrden_in(0),
      RXMCOMMAALIGNEN => rxmcommaalignen_in(0),
      RXMONITOROUT(7 downto 0) => rxmonitorout_out(7 downto 0),
      RXMONITORSEL(1 downto 0) => rxmonitorsel_in(1 downto 0),
      RXOOBRESET => rxoobreset_in(0),
      RXOSCALRESET => rxoscalreset_in(0),
      RXOSHOLD => rxoshold_in(0),
      RXOSINTDONE => rxosintdone_out(0),
      RXOSINTSTARTED => rxosintstarted_out(0),
      RXOSINTSTROBEDONE => rxosintstrobedone_out(0),
      RXOSINTSTROBESTARTED => rxosintstrobestarted_out(0),
      RXOSOVRDEN => rxosovrden_in(0),
      RXOUTCLK => \^rxoutclk_out\(0),
      RXOUTCLKFABRIC => rxoutclkfabric_out(0),
      RXOUTCLKPCS => rxoutclkpcs_out(0),
      RXOUTCLKSEL(2 downto 0) => rxoutclksel_in(2 downto 0),
      RXPCOMMAALIGNEN => rxpcommaalignen_in(0),
      RXPCSRESET => rxpcsreset_in(0),
      RXPD(1 downto 0) => rxpd_in(1 downto 0),
      RXPHALIGN => rxphalign_in(0),
      RXPHALIGNDONE => rxphaligndone_out(0),
      RXPHALIGNEN => rxphalignen_in(0),
      RXPHALIGNERR => rxphalignerr_out(0),
      RXPHDLYPD => rxphdlypd_in(0),
      RXPHDLYRESET => rxphdlyreset_in(0),
      RXPLLCLKSEL(1 downto 0) => rxpllclksel_in(1 downto 0),
      RXPMARESET => rxpmareset_in(0),
      RXPMARESETDONE => rxpmaresetdone_out(0),
      RXPOLARITY => rxpolarity_in(0),
      RXPRBSCNTRESET => rxprbscntreset_in(0),
      RXPRBSERR => rxprbserr_out(0),
      RXPRBSLOCKED => rxprbslocked_out(0),
      RXPRBSSEL(3 downto 0) => rxprbssel_in(3 downto 0),
      RXPRGDIVRESETDONE => rxprgdivresetdone_out(0),
      RXPROGDIVRESET => GTYE4_CHANNEL_RXPROGDIVRESET(0),
      RXRATE(2 downto 0) => rxrate_in(2 downto 0),
      RXRATEDONE => rxratedone_out(0),
      RXRATEMODE => rxratemode_in(0),
      RXRECCLKOUT => rxrecclkout_out(0),
      RXRESETDONE => rxresetdone_out(0),
      RXSLIDE => rxslide_in(0),
      RXSLIDERDY => rxsliderdy_out(0),
      RXSLIPDONE => rxslipdone_out(0),
      RXSLIPOUTCLK => rxslipoutclk_in(0),
      RXSLIPOUTCLKRDY => rxslipoutclkrdy_out(0),
      RXSLIPPMA => rxslippma_in(0),
      RXSLIPPMARDY => rxslippmardy_out(0),
      RXSTARTOFSEQ(1 downto 0) => rxstartofseq_out(1 downto 0),
      RXSTATUS(2 downto 0) => rxstatus_out(2 downto 0),
      RXSYNCALLIN => rxsyncallin_in(0),
      RXSYNCDONE => rxsyncdone_out(0),
      RXSYNCIN => rxsyncin_in(0),
      RXSYNCMODE => rxsyncmode_in(0),
      RXSYNCOUT => rxsyncout_out(0),
      RXSYSCLKSEL(1 downto 0) => rxsysclksel_in(1 downto 0),
      RXTERMINATION => rxtermination_in(0),
      RXUSERRDY => GTYE4_CHANNEL_RXUSERRDY(0),
      RXUSRCLK => gtwiz_userclk_rx_usrclk_out(0),
      RXUSRCLK2 => gtwiz_userclk_rx_usrclk2_out(0),
      RXVALID => rxvalid_out(0),
      SIGVALIDCLK => sigvalidclk_in(0),
      TSTIN(19 downto 0) => tstin_in(19 downto 0),
      TX8B10BBYPASS(7 downto 0) => tx8b10bbypass_in(7 downto 0),
      TX8B10BEN => tx8b10ben_in(0),
      TXBUFSTATUS(1 downto 0) => txbufstatus_out(1 downto 0),
      TXCOMFINISH => txcomfinish_out(0),
      TXCOMINIT => txcominit_in(0),
      TXCOMSAS => txcomsas_in(0),
      TXCOMWAKE => txcomwake_in(0),
      TXCTRL0(15 downto 0) => txctrl0_in(15 downto 0),
      TXCTRL1(15 downto 0) => txctrl1_in(15 downto 0),
      TXCTRL2(7 downto 0) => txctrl2_in(7 downto 0),
      TXDATA(127 downto 64) => B"0000000000000000000000000000000000000000000000000000000000000000",
      TXDATA(63 downto 0) => gtwiz_userdata_tx_in(63 downto 0),
      TXDATAEXTENDRSVD(7 downto 0) => txdataextendrsvd_in(7 downto 0),
      TXDCCDONE => txdccdone_out(0),
      TXDCCFORCESTART => txdccforcestart_in(0),
      TXDCCRESET => txdccreset_in(0),
      TXDEEMPH(1 downto 0) => txdeemph_in(1 downto 0),
      TXDETECTRX => txdetectrx_in(0),
      TXDIFFCTRL(4 downto 0) => txdiffctrl_in(4 downto 0),
      TXDLYBYPASS => txdlybypass_in(0),
      TXDLYEN => txdlyen_in(0),
      TXDLYHOLD => txdlyhold_in(0),
      TXDLYOVRDEN => txdlyovrden_in(0),
      TXDLYSRESET => txdlysreset_in(0),
      TXDLYSRESETDONE => txdlysresetdone_out(0),
      TXDLYUPDOWN => txdlyupdown_in(0),
      TXELECIDLE => txelecidle_in(0),
      TXHEADER(5 downto 0) => txheader_in(5 downto 0),
      TXINHIBIT => txinhibit_in(0),
      TXLATCLK => txlatclk_in(0),
      TXLFPSTRESET => txlfpstreset_in(0),
      TXLFPSU2LPEXIT => txlfpsu2lpexit_in(0),
      TXLFPSU3WAKE => txlfpsu3wake_in(0),
      TXMAINCURSOR(6 downto 0) => txmaincursor_in(6 downto 0),
      TXMARGIN(2 downto 0) => txmargin_in(2 downto 0),
      TXMUXDCDEXHOLD => txmuxdcdexhold_in(0),
      TXMUXDCDORWREN => txmuxdcdorwren_in(0),
      TXONESZEROS => txoneszeros_in(0),
      TXOUTCLK => \^txoutclk_out\(0),
      TXOUTCLKFABRIC => txoutclkfabric_out(0),
      TXOUTCLKPCS => GTYE4_CHANNEL_TXOUTCLKPCS(0),
      TXOUTCLKSEL(2 downto 0) => txoutclksel_in(2 downto 0),
      TXPCSRESET => txpcsreset_in(0),
      TXPD(1 downto 0) => txpd_in(1 downto 0),
      TXPDELECIDLEMODE => txpdelecidlemode_in(0),
      TXPHALIGN => txphalign_in(0),
      TXPHALIGNDONE => txphaligndone_out(0),
      TXPHALIGNEN => txphalignen_in(0),
      TXPHDLYPD => txphdlypd_in(0),
      TXPHDLYRESET => txphdlyreset_in(0),
      TXPHDLYTSTCLK => txphdlytstclk_in(0),
      TXPHINIT => txphinit_in(0),
      TXPHINITDONE => txphinitdone_out(0),
      TXPHOVRDEN => txphovrden_in(0),
      TXPIPPMEN => txpippmen_in(0),
      TXPIPPMOVRDEN => txpippmovrden_in(0),
      TXPIPPMPD => txpippmpd_in(0),
      TXPIPPMSEL => txpippmsel_in(0),
      TXPIPPMSTEPSIZE(4 downto 0) => txpippmstepsize_in(4 downto 0),
      TXPISOPD => GTYE4_CHANNEL_TXPISOPD(0),
      TXPLLCLKSEL(1 downto 0) => txpllclksel_in(1 downto 0),
      TXPMARESET => GTYE4_CHANNEL_TXPMARESET(0),
      TXPMARESETDONE => txpmaresetdone_out(0),
      TXPOLARITY => txpolarity_in(0),
      TXPOSTCURSOR(4 downto 0) => txpostcursor_in(4 downto 0),
      TXPRBSFORCEERR => txprbsforceerr_in(0),
      TXPRBSSEL(3 downto 0) => txprbssel_in(3 downto 0),
      TXPRECURSOR(4 downto 0) => txprecursor_in(4 downto 0),
      TXPRGDIVRESETDONE => txprgdivresetdone_out(0),
      TXPROGDIVRESET => GTYE4_CHANNEL_TXPROGDIVRESET(0),
      TXRATE(2 downto 0) => GTYE4_CHANNEL_TXRATE(2 downto 0),
      TXRATEDONE => txratedone_out(0),
      TXRATEMODE => GTYE4_CHANNEL_TXRATEMODE(0),
      TXRESETDONE => txresetdone_out(0),
      TXSEQUENCE(6 downto 0) => txsequence_in(6 downto 0),
      TXSWING => txswing_in(0),
      TXSYNCALLIN => txsyncallin_in(0),
      TXSYNCDONE => txsyncdone_out(0),
      TXSYNCIN => txsyncin_in(0),
      TXSYNCMODE => txsyncmode_in(0),
      TXSYNCOUT => txsyncout_out(0),
      TXSYSCLKSEL(1 downto 0) => txsysclksel_in(1 downto 0),
      TXUSERRDY => GTYE4_CHANNEL_TXUSERRDY(0),
      TXUSRCLK => gtwiz_userclk_tx_usrclk_out(0),
      TXUSRCLK2 => gtwiz_userclk_tx_usrclk2_out(0)
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST\: unisim.vcomponents.GTYE4_CHANNEL
    generic map(
      ACJTAG_DEBUG_MODE => '0',
      ACJTAG_MODE => '0',
      ACJTAG_RESET => '0',
      ADAPT_CFG0 => X"0000",
      ADAPT_CFG1 => X"FB1C",
      ADAPT_CFG2 => X"0000",
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0000000000",
      ALIGN_COMMA_WORD => 1,
      ALIGN_MCOMMA_DET => "FALSE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "FALSE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      A_RXOSCALRESET => '0',
      A_RXPROGDIVRESET => '0',
      A_RXTERMINATION => '1',
      A_TXDIFFCTRL => B"01100",
      A_TXPROGDIVRESET => '0',
      CBCC_DATA_SOURCE_SEL => "ENCODED",
      CDR_SWAP_MODE_EN => '0',
      CFOK_PWRSVE_EN => '1',
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CH_HSPMUX => X"4040",
      CKCAL1_CFG_0 => B"1100000011000000",
      CKCAL1_CFG_1 => B"0001000011000000",
      CKCAL1_CFG_2 => B"0010000000001000",
      CKCAL1_CFG_3 => B"0000000000000000",
      CKCAL2_CFG_0 => B"1100000011000000",
      CKCAL2_CFG_1 => B"1000000011000000",
      CKCAL2_CFG_2 => B"0001000000000000",
      CKCAL2_CFG_3 => B"0000000000000000",
      CKCAL2_CFG_4 => B"0000000000000000",
      CLK_CORRECT_USE => "FALSE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 12,
      CLK_COR_MIN_LAT => 8,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0000000000",
      CLK_COR_SEQ_1_2 => B"0000000000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0000000000",
      CLK_COR_SEQ_2_2 => B"0000000000",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 1,
      CPLL_CFG0 => X"01FA",
      CPLL_CFG1 => X"002B",
      CPLL_CFG2 => X"0002",
      CPLL_CFG3 => X"0000",
      CPLL_FBDIV => 2,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG0 => X"02B2",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      CTLE3_OCAP_EXT_CTRL => B"000",
      CTLE3_OCAP_EXT_EN => '0',
      DDI_CTRL => B"00",
      DDI_REALIGN_WAIT => 15,
      DEC_MCOMMA_DETECT => "FALSE",
      DEC_PCOMMA_DETECT => "FALSE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DELAY_ELEC => '0',
      DMONITOR_CFG0 => B"00" & X"00",
      DMONITOR_CFG1 => X"00",
      ES_CLK_PHASE_SEL => '0',
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "FALSE",
      ES_HORZ_OFFSET => X"000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER0 => X"0000",
      ES_QUALIFIER1 => X"0000",
      ES_QUALIFIER2 => X"0000",
      ES_QUALIFIER3 => X"0000",
      ES_QUALIFIER4 => X"0000",
      ES_QUALIFIER5 => X"0000",
      ES_QUALIFIER6 => X"0000",
      ES_QUALIFIER7 => X"0000",
      ES_QUALIFIER8 => X"0000",
      ES_QUALIFIER9 => X"0000",
      ES_QUAL_MASK0 => X"0000",
      ES_QUAL_MASK1 => X"0000",
      ES_QUAL_MASK2 => X"0000",
      ES_QUAL_MASK3 => X"0000",
      ES_QUAL_MASK4 => X"0000",
      ES_QUAL_MASK5 => X"0000",
      ES_QUAL_MASK6 => X"0000",
      ES_QUAL_MASK7 => X"0000",
      ES_QUAL_MASK8 => X"0000",
      ES_QUAL_MASK9 => X"0000",
      ES_SDATA_MASK0 => X"0000",
      ES_SDATA_MASK1 => X"0000",
      ES_SDATA_MASK2 => X"0000",
      ES_SDATA_MASK3 => X"0000",
      ES_SDATA_MASK4 => X"0000",
      ES_SDATA_MASK5 => X"0000",
      ES_SDATA_MASK6 => X"0000",
      ES_SDATA_MASK7 => X"0000",
      ES_SDATA_MASK8 => X"0000",
      ES_SDATA_MASK9 => X"0000",
      EYESCAN_VP_RANGE => 0,
      EYE_SCAN_SWAP_EN => '0',
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"00001",
      ISCAN_CK_PH_SEL2 => '0',
      LOCAL_MASTER => '1',
      LPBK_BIAS_CTRL => 4,
      LPBK_EN_RCAL_B => '0',
      LPBK_EXT_RCAL => B"1000",
      LPBK_IND_CTRL0 => 5,
      LPBK_IND_CTRL1 => 5,
      LPBK_IND_CTRL2 => 5,
      LPBK_RG_CTRL => 2,
      OOBDIVCTL => B"00",
      OOB_PWRUP => '0',
      PCI3_AUTO_REALIGN => "OVR_1K_BLK",
      PCI3_PIPE_RX_ELECIDLE => '0',
      PCI3_RX_ASYNC_EBUF_BYPASS => B"00",
      PCI3_RX_ELECIDLE_EI2_ENABLE => '0',
      PCI3_RX_ELECIDLE_H2L_COUNT => B"000000",
      PCI3_RX_ELECIDLE_H2L_DISABLE => B"000",
      PCI3_RX_ELECIDLE_HI_COUNT => B"000000",
      PCI3_RX_ELECIDLE_LP4_DISABLE => '0',
      PCI3_RX_FIFO_DISABLE => '0',
      PCIE3_CLK_COR_EMPTY_THRSH => B"00000",
      PCIE3_CLK_COR_FULL_THRSH => B"010000",
      PCIE3_CLK_COR_MAX_LAT => B"00100",
      PCIE3_CLK_COR_MIN_LAT => B"00000",
      PCIE3_CLK_COR_THRSH_TIMER => B"001000",
      PCIE_64B_DYN_CLKSW_DIS => "FALSE",
      PCIE_BUFG_DIV_CTRL => X"3500",
      PCIE_GEN4_64BIT_INT_EN => "FALSE",
      PCIE_PLL_SEL_MODE_GEN12 => B"10",
      PCIE_PLL_SEL_MODE_GEN3 => B"10",
      PCIE_PLL_SEL_MODE_GEN4 => B"10",
      PCIE_RXPCS_CFG_GEN3 => X"0AA5",
      PCIE_RXPMA_CFG => X"280A",
      PCIE_TXPCS_CFG_GEN3 => X"2CA4",
      PCIE_TXPMA_CFG => X"280A",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD0 => X"0000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PREIQ_FREQ_BST => 1,
      RATE_SW_USE_DRP => '1',
      RCLK_SIPO_DLY_ENB => '0',
      RCLK_SIPO_INV_EN => '0',
      RTX_BUF_CML_CTRL => B"011",
      RTX_BUF_TERM_CTRL => B"00",
      RXBUFRESET_TIME => B"00011",
      RXBUF_ADDR_MODE => "FAST",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 57,
      RXBUF_THRESH_OVRD => "TRUE",
      RXBUF_THRESH_UNDFLW => 3,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG0 => X"0003",
      RXCDR_CFG0_GEN3 => X"0003",
      RXCDR_CFG1 => X"0000",
      RXCDR_CFG1_GEN3 => X"0000",
      RXCDR_CFG2 => X"0269",
      RXCDR_CFG2_GEN2 => B"10" & X"69",
      RXCDR_CFG2_GEN3 => X"0269",
      RXCDR_CFG2_GEN4 => X"0164",
      RXCDR_CFG3 => X"0012",
      RXCDR_CFG3_GEN2 => B"01" & X"2",
      RXCDR_CFG3_GEN3 => X"0012",
      RXCDR_CFG3_GEN4 => X"0012",
      RXCDR_CFG4 => X"5CF6",
      RXCDR_CFG4_GEN3 => X"5CF6",
      RXCDR_CFG5 => X"B46B",
      RXCDR_CFG5_GEN3 => X"146B",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG0 => X"2201",
      RXCDR_LOCK_CFG1 => X"9FFF",
      RXCDR_LOCK_CFG2 => X"0000",
      RXCDR_LOCK_CFG3 => X"0000",
      RXCDR_LOCK_CFG4 => X"0000",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXCFOK_CFG0 => X"0000",
      RXCFOK_CFG1 => X"8015",
      RXCFOK_CFG2 => X"02AE",
      RXCKCAL1_IQ_LOOP_RST_CFG => X"0000",
      RXCKCAL1_I_LOOP_RST_CFG => X"0000",
      RXCKCAL1_Q_LOOP_RST_CFG => X"0000",
      RXCKCAL2_DX_LOOP_RST_CFG => X"0000",
      RXCKCAL2_D_LOOP_RST_CFG => X"0000",
      RXCKCAL2_S_LOOP_RST_CFG => X"0000",
      RXCKCAL2_X_LOOP_RST_CFG => X"0000",
      RXDFELPMRESET_TIME => B"0001111",
      RXDFELPM_KL_CFG0 => X"0000",
      RXDFELPM_KL_CFG1 => X"A082",
      RXDFELPM_KL_CFG2 => X"0100",
      RXDFE_CFG0 => X"0A00",
      RXDFE_CFG1 => X"0000",
      RXDFE_GC_CFG0 => X"0000",
      RXDFE_GC_CFG1 => X"8000",
      RXDFE_GC_CFG2 => X"FFE0",
      RXDFE_H2_CFG0 => X"0000",
      RXDFE_H2_CFG1 => X"0002",
      RXDFE_H3_CFG0 => X"0000",
      RXDFE_H3_CFG1 => X"8002",
      RXDFE_H4_CFG0 => X"0000",
      RXDFE_H4_CFG1 => X"8002",
      RXDFE_H5_CFG0 => X"0000",
      RXDFE_H5_CFG1 => X"8002",
      RXDFE_H6_CFG0 => X"0000",
      RXDFE_H6_CFG1 => X"8002",
      RXDFE_H7_CFG0 => X"0000",
      RXDFE_H7_CFG1 => X"8002",
      RXDFE_H8_CFG0 => X"0000",
      RXDFE_H8_CFG1 => X"8002",
      RXDFE_H9_CFG0 => X"0000",
      RXDFE_H9_CFG1 => X"8002",
      RXDFE_HA_CFG0 => X"0000",
      RXDFE_HA_CFG1 => X"8002",
      RXDFE_HB_CFG0 => X"0000",
      RXDFE_HB_CFG1 => X"8002",
      RXDFE_HC_CFG0 => X"0000",
      RXDFE_HC_CFG1 => X"8002",
      RXDFE_HD_CFG0 => X"0000",
      RXDFE_HD_CFG1 => X"8002",
      RXDFE_HE_CFG0 => X"0000",
      RXDFE_HE_CFG1 => X"8002",
      RXDFE_HF_CFG0 => X"0000",
      RXDFE_HF_CFG1 => X"8002",
      RXDFE_KH_CFG0 => X"8000",
      RXDFE_KH_CFG1 => X"FE00",
      RXDFE_KH_CFG2 => X"0200",
      RXDFE_KH_CFG3 => X"4101",
      RXDFE_OS_CFG0 => X"2000",
      RXDFE_OS_CFG1 => X"8000",
      RXDFE_UT_CFG0 => X"0000",
      RXDFE_UT_CFG1 => X"0003",
      RXDFE_UT_CFG2 => X"0000",
      RXDFE_VP_CFG0 => X"0000",
      RXDFE_VP_CFG1 => X"0033",
      RXDLY_CFG => X"0010",
      RXDLY_LCFG => X"0030",
      RXELECIDLE_CFG => "SIGCFG_4",
      RXGBOX_FIFO_INIT_RD_ADDR => 4,
      RXGEARBOX_EN => "TRUE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_CFG => X"0000",
      RXLPM_GC_CFG => X"F800",
      RXLPM_KH_CFG0 => X"0000",
      RXLPM_KH_CFG1 => X"A002",
      RXLPM_OS_CFG0 => X"0000",
      RXLPM_OS_CFG1 => X"8002",
      RXOOB_CFG => B"000000110",
      RXOOB_CLK_CFG => "PMA",
      RXOSCALRESET_TIME => B"00011",
      RXOUT_DIV => 1,
      RXPCSRESET_TIME => B"00011",
      RXPHBEACON_CFG => X"0000",
      RXPHDLY_CFG => X"2070",
      RXPHSAMP_CFG => X"2100",
      RXPHSLIP_CFG => X"9933",
      RXPH_MONITOR_SEL => B"00000",
      RXPI_CFG0 => X"0102",
      RXPI_CFG1 => B"0000000001010100",
      RXPMACLK_SEL => "DATA",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXPRBS_LINKACQ_CNT => 15,
      RXREFCLKDIV2_SEL => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RXSYNC_MULTILANE => '1',
      RXSYNC_OVRD => '0',
      RXSYNC_SKIP_DA => '0',
      RX_AFE_CM_EN => '0',
      RX_BIAS_CFG0 => X"12B0",
      RX_BUFFER_CFG => B"000000",
      RX_CAPFF_SARC_ENB => '0',
      RX_CLK25_DIV => 7,
      RX_CLKMUX_EN => '1',
      RX_CLK_SLIP_OVRD => B"00000",
      RX_CM_BUF_CFG => B"1010",
      RX_CM_BUF_PD => '0',
      RX_CM_SEL => 2,
      RX_CM_TRIM => 10,
      RX_CTLE_PWR_SAVING => '0',
      RX_CTLE_RES_CTRL => B"0000",
      RX_DATA_WIDTH => 64,
      RX_DDI_SEL => B"000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DEGEN_CTRL => B"100",
      RX_DFELPM_CFG0 => 10,
      RX_DFELPM_CFG1 => '1',
      RX_DFELPM_KLKH_AGC_STUP_EN => '1',
      RX_DFE_AGC_CFG1 => 2,
      RX_DFE_KL_LPM_KH_CFG0 => 3,
      RX_DFE_KL_LPM_KH_CFG1 => 2,
      RX_DFE_KL_LPM_KL_CFG0 => B"11",
      RX_DFE_KL_LPM_KL_CFG1 => 2,
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_DIVRESET_TIME => B"00001",
      RX_EN_CTLE_RCAL_B => '0',
      RX_EN_SUM_RCAL_B => 0,
      RX_EYESCAN_VS_CODE => B"0000000",
      RX_EYESCAN_VS_NEG_DIR => '0',
      RX_EYESCAN_VS_RANGE => B"10",
      RX_EYESCAN_VS_UT_SIGN => '0',
      RX_FABINT_USRCLK_FLOP => '0',
      RX_I2V_FILTER_EN => '1',
      RX_INT_DATAWIDTH => 1,
      RX_PMA_POWER_SAVE => '0',
      RX_PMA_RSV0 => X"002F",
      RX_PROGDIV_CFG => 16.000000,
      RX_PROGDIV_RATE => X"0001",
      RX_RESLOAD_CTRL => B"0000",
      RX_RESLOAD_OVRD => '0',
      RX_SAMPLE_PERIOD => B"111",
      RX_SIG_VALID_DLY => 11,
      RX_SUM_DEGEN_AVTT_OVERITE => 0,
      RX_SUM_DFETAPREP_EN => '0',
      RX_SUM_IREF_TUNE => B"0000",
      RX_SUM_PWR_SAVING => 0,
      RX_SUM_RES_CTRL => B"0000",
      RX_SUM_VCMTUNE => B"1001",
      RX_SUM_VCM_BIAS_TUNE_EN => '1',
      RX_SUM_VCM_OVWR => '0',
      RX_SUM_VREF_TUNE => B"100",
      RX_TUNE_AFE_OS => B"10",
      RX_VREG_CTRL => B"010",
      RX_VREG_PDB => '1',
      RX_WIDEMODE_CDR => B"01",
      RX_WIDEMODE_CDR_GEN3 => B"00",
      RX_WIDEMODE_CDR_GEN4 => B"01",
      RX_XCLK_SEL => "RXDES",
      RX_XMODE_SEL => '1',
      SAMPLE_CLK_PHASE => '0',
      SAS_12G_MODE => '0',
      SATA_BURST_SEQ_LEN => B"1111",
      SATA_BURST_VAL => B"100",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"100",
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_MODE => "FAST",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "Z",
      SRSTMODE => '0',
      TAPDLY_SET_TX => B"00",
      TERM_RCAL_CFG => B"100001000000010",
      TERM_RCAL_OVRD => B"001",
      TRANS_TIME_RATE => X"0E",
      TST_RSV0 => X"00",
      TST_RSV1 => X"00",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"8010",
      TXDLY_LCFG => X"0030",
      TXDRV_FREQBAND => 0,
      TXFE_CFG0 => B"0000001111000010",
      TXFE_CFG1 => B"0110110000000000",
      TXFE_CFG2 => B"0110110000000000",
      TXFE_CFG3 => B"0110110000000000",
      TXFIFO_ADDR_CFG => "LOW",
      TXGBOX_FIFO_INIT_RD_ADDR => 4,
      TXGEARBOX_EN => "TRUE",
      TXOUT_DIV => 1,
      TXPCSRESET_TIME => B"00011",
      TXPHDLY_CFG0 => X"6070",
      TXPHDLY_CFG1 => X"000E",
      TXPH_CFG => X"0323",
      TXPH_CFG2 => X"0000",
      TXPH_MONITOR_SEL => B"00000",
      TXPI_CFG0 => B"0000001100000000",
      TXPI_CFG1 => B"0001000000000000",
      TXPI_GRAY_SEL => '0',
      TXPI_INVSTROBE_SEL => '0',
      TXPI_PPM => '0',
      TXPI_PPM_CFG => B"00000000",
      TXPI_SYNFREQ_PPM => B"001",
      TXPMARESET_TIME => B"00011",
      TXREFCLKDIV2_SEL => '0',
      TXSWBST_BST => 1,
      TXSWBST_EN => 0,
      TXSWBST_MAG => 4,
      TXSYNC_MULTILANE => '1',
      TXSYNC_OVRD => '0',
      TXSYNC_SKIP_DA => '0',
      TX_CLK25_DIV => 7,
      TX_CLKMUX_EN => '1',
      TX_DATA_WIDTH => 64,
      TX_DCC_LOOP_RST_CFG => X"0004",
      TX_DEEMPH0 => B"000000",
      TX_DEEMPH1 => B"000000",
      TX_DEEMPH2 => B"000000",
      TX_DEEMPH3 => B"000000",
      TX_DIVRESET_TIME => B"00001",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"100",
      TX_EIDLE_DEASSERT_DELAY => B"011",
      TX_FABINT_USRCLK_FLOP => '0',
      TX_FIFO_BYP_EN => '0',
      TX_IDLE_DATA_ZERO => '0',
      TX_INT_DATAWIDTH => 1,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1011000",
      TX_MARGIN_FULL_1 => B"1010111",
      TX_MARGIN_FULL_2 => B"1010101",
      TX_MARGIN_FULL_3 => B"1010011",
      TX_MARGIN_FULL_4 => B"1010001",
      TX_MARGIN_LOW_0 => B"1001100",
      TX_MARGIN_LOW_1 => B"1001011",
      TX_MARGIN_LOW_2 => B"1001000",
      TX_MARGIN_LOW_3 => B"1000010",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PHICAL_CFG0 => X"0020",
      TX_PHICAL_CFG1 => X"0040",
      TX_PI_BIASSET => 1,
      TX_PMADATA_OPT => '0',
      TX_PMA_POWER_SAVE => '0',
      TX_PMA_RSV0 => X"0000",
      TX_PMA_RSV1 => X"0000",
      TX_PROGCLK_SEL => "PREPI",
      TX_PROGDIV_CFG => 16.000000,
      TX_PROGDIV_RATE => X"0001",
      TX_RXDETECT_CFG => B"00" & X"032",
      TX_RXDETECT_REF => 5,
      TX_SAMPLE_PERIOD => B"111",
      TX_SW_MEAS => B"00",
      TX_VREG_CTRL => B"011",
      TX_VREG_PDB => '1',
      TX_VREG_VREFSEL => B"10",
      TX_XCLK_SEL => "TXOUT",
      USB_BOTH_BURST_IDLE => '0',
      USB_BURSTMAX_U3WAKE => B"1111111",
      USB_BURSTMIN_U3WAKE => B"1100011",
      USB_CLK_COR_EQ_EN => '0',
      USB_EXT_CNTL => '1',
      USB_IDLEMAX_POLLING => B"1010111011",
      USB_IDLEMIN_POLLING => B"0100101011",
      USB_LFPSPING_BURST => B"000000101",
      USB_LFPSPOLLING_BURST => B"000110001",
      USB_LFPSPOLLING_IDLE_MS => B"000000100",
      USB_LFPSU1EXIT_BURST => B"000011101",
      USB_LFPSU2LPEXIT_BURST_MS => B"001100011",
      USB_LFPSU3WAKE_BURST_MS => B"111110011",
      USB_LFPS_TPERIOD => B"0011",
      USB_LFPS_TPERIOD_ACCURATE => '1',
      USB_MODE => '0',
      USB_PCIE_ERR_REP_DIS => '0',
      USB_PING_SATA_MAX_INIT => 21,
      USB_PING_SATA_MIN_INIT => 12,
      USB_POLL_SATA_MAX_BURST => 8,
      USB_POLL_SATA_MIN_BURST => 4,
      USB_RAW_ELEC => '0',
      USB_RXIDLE_P0_CTRL => '1',
      USB_TXIDLE_TUNE_ENABLE => '1',
      USB_U1_SATA_MAX_WAKE => 7,
      USB_U1_SATA_MIN_WAKE => 4,
      USB_U2_SAS_MAX_COM => 64,
      USB_U2_SAS_MIN_COM => 36,
      USE_PCS_CLK_PHASE_SEL => '0',
      Y_ALL_MODE => '0'
    )
        port map (
      BUFGTCE => bufgtce_out(1),
      BUFGTCEMASK(2 downto 0) => bufgtcemask_out(5 downto 3),
      BUFGTDIV(8 downto 0) => bufgtdiv_out(17 downto 9),
      BUFGTRESET => bufgtreset_out(1),
      BUFGTRSTMASK(2 downto 0) => bufgtrstmask_out(5 downto 3),
      CDRSTEPDIR => cdrstepdir_in(1),
      CDRSTEPSQ => cdrstepsq_in(1),
      CDRSTEPSX => cdrstepsx_in(1),
      CFGRESET => cfgreset_in(1),
      CLKRSVD0 => clkrsvd0_in(1),
      CLKRSVD1 => clkrsvd1_in(1),
      CPLLFBCLKLOST => cpllfbclklost_out(1),
      CPLLFREQLOCK => cpllfreqlock_in(1),
      CPLLLOCK => cplllock_out(1),
      CPLLLOCKDETCLK => cplllockdetclk_in(1),
      CPLLLOCKEN => cplllocken_in(1),
      CPLLPD => cpllpd_in(1),
      CPLLREFCLKLOST => cpllrefclklost_out(1),
      CPLLREFCLKSEL(2 downto 0) => cpllrefclksel_in(5 downto 3),
      CPLLRESET => cpllreset_in(1),
      DMONFIFORESET => dmonfiforeset_in(1),
      DMONITORCLK => dmonitorclk_in(1),
      DMONITOROUT(15 downto 0) => dmonitorout_out(31 downto 16),
      DMONITOROUTCLK => dmonitoroutclk_out(1),
      DRPADDR(9 downto 0) => drpaddr_in(19 downto 10),
      DRPCLK => drpclk_in(1),
      DRPDI(15 downto 0) => drpdi_in(31 downto 16),
      DRPDO(15 downto 0) => drpdo_out(31 downto 16),
      DRPEN => drpen_in(1),
      DRPRDY => drprdy_out(1),
      DRPRST => drprst_in(1),
      DRPWE => drpwe_in(1),
      EYESCANDATAERROR => eyescandataerror_out(1),
      EYESCANRESET => eyescanreset_in(1),
      EYESCANTRIGGER => eyescantrigger_in(1),
      FREQOS => freqos_in(1),
      GTGREFCLK => gtgrefclk_in(1),
      GTNORTHREFCLK0 => gtnorthrefclk0_in(1),
      GTNORTHREFCLK1 => gtnorthrefclk1_in(1),
      GTPOWERGOOD => \^gtye4_channel_gtpowergood\(1),
      GTREFCLK0 => gtrefclk0_in(1),
      GTREFCLK1 => gtrefclk1_in(1),
      GTREFCLKMONITOR => gtrefclkmonitor_out(1),
      GTRSVD(15 downto 0) => gtrsvd_in(31 downto 16),
      GTRXRESET => GTYE4_CHANNEL_GTRXRESET(0),
      GTRXRESETSEL => gtrxresetsel_in(1),
      GTSOUTHREFCLK0 => gtsouthrefclk0_in(1),
      GTSOUTHREFCLK1 => gtsouthrefclk1_in(1),
      GTTXRESET => GTYE4_CHANNEL_GTTXRESET(1),
      GTTXRESETSEL => gttxresetsel_in(1),
      GTYRXN => gtyrxn_in(1),
      GTYRXP => gtyrxp_in(1),
      GTYTXN => gtytxn_out(1),
      GTYTXP => gtytxp_out(1),
      INCPCTRL => incpctrl_in(1),
      LOOPBACK(2 downto 0) => loopback_in(5 downto 3),
      PCIEEQRXEQADAPTDONE => pcieeqrxeqadaptdone_in(1),
      PCIERATEGEN3 => pcierategen3_out(1),
      PCIERATEIDLE => pcierateidle_out(1),
      PCIERATEQPLLPD(1 downto 0) => pcierateqpllpd_out(3 downto 2),
      PCIERATEQPLLRESET(1 downto 0) => pcierateqpllreset_out(3 downto 2),
      PCIERSTIDLE => pcierstidle_in(1),
      PCIERSTTXSYNCSTART => pciersttxsyncstart_in(1),
      PCIESYNCTXSYNCDONE => pciesynctxsyncdone_out(1),
      PCIEUSERGEN3RDY => pcieusergen3rdy_out(1),
      PCIEUSERPHYSTATUSRST => pcieuserphystatusrst_out(1),
      PCIEUSERRATEDONE => pcieuserratedone_in(1),
      PCIEUSERRATESTART => pcieuserratestart_out(1),
      PCSRSVDIN(15 downto 0) => pcsrsvdin_in(31 downto 16),
      PCSRSVDOUT(15 downto 0) => pcsrsvdout_out(31 downto 16),
      PHYSTATUS => phystatus_out(1),
      PINRSRVDAS(15 downto 0) => pinrsrvdas_out(31 downto 16),
      POWERPRESENT => powerpresent_out(1),
      QPLL0CLK => qpll0outclk_out(0),
      QPLL0FREQLOCK => qpll0freqlock_in(1),
      QPLL0REFCLK => qpll0outrefclk_out(0),
      QPLL1CLK => qpll1outclk_out(0),
      QPLL1FREQLOCK => qpll1freqlock_in(1),
      QPLL1REFCLK => qpll1outrefclk_out(0),
      RESETEXCEPTION => resetexception_out(1),
      RESETOVRD => resetovrd_in(1),
      RX8B10BEN => rx8b10ben_in(1),
      RXAFECFOKEN => rxafecfoken_in(1),
      RXBUFRESET => rxbufreset_in(1),
      RXBUFSTATUS(2 downto 0) => rxbufstatus_out(5 downto 3),
      RXBYTEISALIGNED => rxbyteisaligned_out(1),
      RXBYTEREALIGN => rxbyterealign_out(1),
      RXCDRFREQRESET => rxcdrfreqreset_in(1),
      RXCDRHOLD => rxcdrhold_in(1),
      RXCDRLOCK => \^rxcdrlock_out\(1),
      RXCDROVRDEN => rxcdrovrden_in(1),
      RXCDRPHDONE => rxcdrphdone_out(1),
      RXCDRRESET => rxcdrreset_in(1),
      RXCHANBONDSEQ => rxchanbondseq_out(1),
      RXCHANISALIGNED => rxchanisaligned_out(1),
      RXCHANREALIGN => rxchanrealign_out(1),
      RXCHBONDEN => rxchbonden_in(1),
      RXCHBONDI(4 downto 0) => rxchbondi_in(9 downto 5),
      RXCHBONDLEVEL(2 downto 0) => rxchbondlevel_in(5 downto 3),
      RXCHBONDMASTER => rxchbondmaster_in(1),
      RXCHBONDO(4 downto 0) => rxchbondo_out(9 downto 5),
      RXCHBONDSLAVE => rxchbondslave_in(1),
      RXCKCALDONE => rxckcaldone_out(1),
      RXCKCALRESET => rxckcalreset_in(1),
      RXCKCALSTART(6 downto 0) => rxckcalstart_in(13 downto 7),
      RXCLKCORCNT(1 downto 0) => rxclkcorcnt_out(3 downto 2),
      RXCOMINITDET => rxcominitdet_out(1),
      RXCOMMADET => rxcommadet_out(1),
      RXCOMMADETEN => rxcommadeten_in(1),
      RXCOMSASDET => rxcomsasdet_out(1),
      RXCOMWAKEDET => rxcomwakedet_out(1),
      RXCTRL0(15 downto 0) => rxctrl0_out(31 downto 16),
      RXCTRL1(15 downto 0) => rxctrl1_out(31 downto 16),
      RXCTRL2(7 downto 0) => rxctrl2_out(15 downto 8),
      RXCTRL3(7 downto 0) => rxctrl3_out(15 downto 8),
      RXDATA(127 downto 0) => rxdata_out(255 downto 128),
      RXDATAEXTENDRSVD(7 downto 0) => rxdataextendrsvd_out(15 downto 8),
      RXDATAVALID(1 downto 0) => rxdatavalid_out(3 downto 2),
      RXDFEAGCHOLD => rxdfeagchold_in(1),
      RXDFEAGCOVRDEN => rxdfeagcovrden_in(1),
      RXDFECFOKFCNUM(3 downto 0) => rxdfecfokfcnum_in(7 downto 4),
      RXDFECFOKFEN => rxdfecfokfen_in(1),
      RXDFECFOKFPULSE => rxdfecfokfpulse_in(1),
      RXDFECFOKHOLD => rxdfecfokhold_in(1),
      RXDFECFOKOVREN => rxdfecfokovren_in(1),
      RXDFEKHHOLD => rxdfekhhold_in(1),
      RXDFEKHOVRDEN => rxdfekhovrden_in(1),
      RXDFELFHOLD => rxdfelfhold_in(1),
      RXDFELFOVRDEN => rxdfelfovrden_in(1),
      RXDFELPMRESET => rxdfelpmreset_in(1),
      RXDFETAP10HOLD => rxdfetap10hold_in(1),
      RXDFETAP10OVRDEN => rxdfetap10ovrden_in(1),
      RXDFETAP11HOLD => rxdfetap11hold_in(1),
      RXDFETAP11OVRDEN => rxdfetap11ovrden_in(1),
      RXDFETAP12HOLD => rxdfetap12hold_in(1),
      RXDFETAP12OVRDEN => rxdfetap12ovrden_in(1),
      RXDFETAP13HOLD => rxdfetap13hold_in(1),
      RXDFETAP13OVRDEN => rxdfetap13ovrden_in(1),
      RXDFETAP14HOLD => rxdfetap14hold_in(1),
      RXDFETAP14OVRDEN => rxdfetap14ovrden_in(1),
      RXDFETAP15HOLD => rxdfetap15hold_in(1),
      RXDFETAP15OVRDEN => rxdfetap15ovrden_in(1),
      RXDFETAP2HOLD => rxdfetap2hold_in(1),
      RXDFETAP2OVRDEN => rxdfetap2ovrden_in(1),
      RXDFETAP3HOLD => rxdfetap3hold_in(1),
      RXDFETAP3OVRDEN => rxdfetap3ovrden_in(1),
      RXDFETAP4HOLD => rxdfetap4hold_in(1),
      RXDFETAP4OVRDEN => rxdfetap4ovrden_in(1),
      RXDFETAP5HOLD => rxdfetap5hold_in(1),
      RXDFETAP5OVRDEN => rxdfetap5ovrden_in(1),
      RXDFETAP6HOLD => rxdfetap6hold_in(1),
      RXDFETAP6OVRDEN => rxdfetap6ovrden_in(1),
      RXDFETAP7HOLD => rxdfetap7hold_in(1),
      RXDFETAP7OVRDEN => rxdfetap7ovrden_in(1),
      RXDFETAP8HOLD => rxdfetap8hold_in(1),
      RXDFETAP8OVRDEN => rxdfetap8ovrden_in(1),
      RXDFETAP9HOLD => rxdfetap9hold_in(1),
      RXDFETAP9OVRDEN => rxdfetap9ovrden_in(1),
      RXDFEUTHOLD => rxdfeuthold_in(1),
      RXDFEUTOVRDEN => rxdfeutovrden_in(1),
      RXDFEVPHOLD => rxdfevphold_in(1),
      RXDFEVPOVRDEN => rxdfevpovrden_in(1),
      RXDFEXYDEN => rxdfexyden_in(1),
      RXDLYBYPASS => rxdlybypass_in(1),
      RXDLYEN => rxdlyen_in(1),
      RXDLYOVRDEN => rxdlyovrden_in(1),
      RXDLYSRESET => rxdlysreset_in(1),
      RXDLYSRESETDONE => rxdlysresetdone_out(1),
      RXELECIDLE => rxelecidle_out(1),
      RXELECIDLEMODE(1 downto 0) => rxelecidlemode_in(3 downto 2),
      RXEQTRAINING => rxeqtraining_in(1),
      RXGEARBOXSLIP => rxgearboxslip_in(1),
      RXHEADER(5 downto 0) => rxheader_out(11 downto 6),
      RXHEADERVALID(1 downto 0) => rxheadervalid_out(3 downto 2),
      RXLATCLK => rxlatclk_in(1),
      RXLFPSTRESETDET => rxlfpstresetdet_out(1),
      RXLFPSU2LPEXITDET => rxlfpsu2lpexitdet_out(1),
      RXLFPSU3WAKEDET => rxlfpsu3wakedet_out(1),
      RXLPMEN => rxlpmen_in(1),
      RXLPMGCHOLD => rxlpmgchold_in(1),
      RXLPMGCOVRDEN => rxlpmgcovrden_in(1),
      RXLPMHFHOLD => rxlpmhfhold_in(1),
      RXLPMHFOVRDEN => rxlpmhfovrden_in(1),
      RXLPMLFHOLD => rxlpmlfhold_in(1),
      RXLPMLFKLOVRDEN => rxlpmlfklovrden_in(1),
      RXLPMOSHOLD => rxlpmoshold_in(1),
      RXLPMOSOVRDEN => rxlpmosovrden_in(1),
      RXMCOMMAALIGNEN => rxmcommaalignen_in(1),
      RXMONITOROUT(7 downto 0) => rxmonitorout_out(15 downto 8),
      RXMONITORSEL(1 downto 0) => rxmonitorsel_in(3 downto 2),
      RXOOBRESET => rxoobreset_in(1),
      RXOSCALRESET => rxoscalreset_in(1),
      RXOSHOLD => rxoshold_in(1),
      RXOSINTDONE => rxosintdone_out(1),
      RXOSINTSTARTED => rxosintstarted_out(1),
      RXOSINTSTROBEDONE => rxosintstrobedone_out(1),
      RXOSINTSTROBESTARTED => rxosintstrobestarted_out(1),
      RXOSOVRDEN => rxosovrden_in(1),
      RXOUTCLK => \^rxoutclk_out\(1),
      RXOUTCLKFABRIC => rxoutclkfabric_out(1),
      RXOUTCLKPCS => rxoutclkpcs_out(1),
      RXOUTCLKSEL(2 downto 0) => rxoutclksel_in(5 downto 3),
      RXPCOMMAALIGNEN => rxpcommaalignen_in(1),
      RXPCSRESET => rxpcsreset_in(1),
      RXPD(1 downto 0) => rxpd_in(3 downto 2),
      RXPHALIGN => rxphalign_in(1),
      RXPHALIGNDONE => rxphaligndone_out(1),
      RXPHALIGNEN => rxphalignen_in(1),
      RXPHALIGNERR => rxphalignerr_out(1),
      RXPHDLYPD => rxphdlypd_in(1),
      RXPHDLYRESET => rxphdlyreset_in(1),
      RXPLLCLKSEL(1 downto 0) => rxpllclksel_in(3 downto 2),
      RXPMARESET => rxpmareset_in(1),
      RXPMARESETDONE => rxpmaresetdone_out(1),
      RXPOLARITY => rxpolarity_in(1),
      RXPRBSCNTRESET => rxprbscntreset_in(1),
      RXPRBSERR => rxprbserr_out(1),
      RXPRBSLOCKED => rxprbslocked_out(1),
      RXPRBSSEL(3 downto 0) => rxprbssel_in(7 downto 4),
      RXPRGDIVRESETDONE => rxprgdivresetdone_out(1),
      RXPROGDIVRESET => GTYE4_CHANNEL_RXPROGDIVRESET(0),
      RXRATE(2 downto 0) => rxrate_in(5 downto 3),
      RXRATEDONE => rxratedone_out(1),
      RXRATEMODE => rxratemode_in(1),
      RXRECCLKOUT => rxrecclkout_out(1),
      RXRESETDONE => rxresetdone_out(1),
      RXSLIDE => rxslide_in(1),
      RXSLIDERDY => rxsliderdy_out(1),
      RXSLIPDONE => rxslipdone_out(1),
      RXSLIPOUTCLK => rxslipoutclk_in(1),
      RXSLIPOUTCLKRDY => rxslipoutclkrdy_out(1),
      RXSLIPPMA => rxslippma_in(1),
      RXSLIPPMARDY => rxslippmardy_out(1),
      RXSTARTOFSEQ(1 downto 0) => rxstartofseq_out(3 downto 2),
      RXSTATUS(2 downto 0) => rxstatus_out(5 downto 3),
      RXSYNCALLIN => rxsyncallin_in(1),
      RXSYNCDONE => rxsyncdone_out(1),
      RXSYNCIN => rxsyncin_in(1),
      RXSYNCMODE => rxsyncmode_in(1),
      RXSYNCOUT => rxsyncout_out(1),
      RXSYSCLKSEL(1 downto 0) => rxsysclksel_in(3 downto 2),
      RXTERMINATION => rxtermination_in(1),
      RXUSERRDY => GTYE4_CHANNEL_RXUSERRDY(0),
      RXUSRCLK => gtwiz_userclk_rx_usrclk_out(0),
      RXUSRCLK2 => gtwiz_userclk_rx_usrclk2_out(0),
      RXVALID => rxvalid_out(1),
      SIGVALIDCLK => sigvalidclk_in(1),
      TSTIN(19 downto 0) => tstin_in(39 downto 20),
      TX8B10BBYPASS(7 downto 0) => tx8b10bbypass_in(15 downto 8),
      TX8B10BEN => tx8b10ben_in(1),
      TXBUFSTATUS(1 downto 0) => txbufstatus_out(3 downto 2),
      TXCOMFINISH => txcomfinish_out(1),
      TXCOMINIT => txcominit_in(1),
      TXCOMSAS => txcomsas_in(1),
      TXCOMWAKE => txcomwake_in(1),
      TXCTRL0(15 downto 0) => txctrl0_in(31 downto 16),
      TXCTRL1(15 downto 0) => txctrl1_in(31 downto 16),
      TXCTRL2(7 downto 0) => txctrl2_in(15 downto 8),
      TXDATA(127 downto 64) => B"0000000000000000000000000000000000000000000000000000000000000000",
      TXDATA(63 downto 0) => gtwiz_userdata_tx_in(127 downto 64),
      TXDATAEXTENDRSVD(7 downto 0) => txdataextendrsvd_in(15 downto 8),
      TXDCCDONE => txdccdone_out(1),
      TXDCCFORCESTART => txdccforcestart_in(1),
      TXDCCRESET => txdccreset_in(1),
      TXDEEMPH(1 downto 0) => txdeemph_in(3 downto 2),
      TXDETECTRX => txdetectrx_in(1),
      TXDIFFCTRL(4 downto 0) => txdiffctrl_in(9 downto 5),
      TXDLYBYPASS => txdlybypass_in(1),
      TXDLYEN => txdlyen_in(1),
      TXDLYHOLD => txdlyhold_in(1),
      TXDLYOVRDEN => txdlyovrden_in(1),
      TXDLYSRESET => txdlysreset_in(1),
      TXDLYSRESETDONE => txdlysresetdone_out(1),
      TXDLYUPDOWN => txdlyupdown_in(1),
      TXELECIDLE => txelecidle_in(1),
      TXHEADER(5 downto 0) => txheader_in(11 downto 6),
      TXINHIBIT => txinhibit_in(1),
      TXLATCLK => txlatclk_in(1),
      TXLFPSTRESET => txlfpstreset_in(1),
      TXLFPSU2LPEXIT => txlfpsu2lpexit_in(1),
      TXLFPSU3WAKE => txlfpsu3wake_in(1),
      TXMAINCURSOR(6 downto 0) => txmaincursor_in(13 downto 7),
      TXMARGIN(2 downto 0) => txmargin_in(5 downto 3),
      TXMUXDCDEXHOLD => txmuxdcdexhold_in(1),
      TXMUXDCDORWREN => txmuxdcdorwren_in(1),
      TXONESZEROS => txoneszeros_in(1),
      TXOUTCLK => \^txoutclk_out\(1),
      TXOUTCLKFABRIC => txoutclkfabric_out(1),
      TXOUTCLKPCS => GTYE4_CHANNEL_TXOUTCLKPCS(1),
      TXOUTCLKSEL(2 downto 0) => txoutclksel_in(5 downto 3),
      TXPCSRESET => txpcsreset_in(1),
      TXPD(1 downto 0) => txpd_in(3 downto 2),
      TXPDELECIDLEMODE => txpdelecidlemode_in(1),
      TXPHALIGN => txphalign_in(1),
      TXPHALIGNDONE => txphaligndone_out(1),
      TXPHALIGNEN => txphalignen_in(1),
      TXPHDLYPD => txphdlypd_in(1),
      TXPHDLYRESET => txphdlyreset_in(1),
      TXPHDLYTSTCLK => txphdlytstclk_in(1),
      TXPHINIT => txphinit_in(1),
      TXPHINITDONE => txphinitdone_out(1),
      TXPHOVRDEN => txphovrden_in(1),
      TXPIPPMEN => txpippmen_in(1),
      TXPIPPMOVRDEN => txpippmovrden_in(1),
      TXPIPPMPD => txpippmpd_in(1),
      TXPIPPMSEL => txpippmsel_in(1),
      TXPIPPMSTEPSIZE(4 downto 0) => txpippmstepsize_in(9 downto 5),
      TXPISOPD => GTYE4_CHANNEL_TXPISOPD(1),
      TXPLLCLKSEL(1 downto 0) => txpllclksel_in(3 downto 2),
      TXPMARESET => GTYE4_CHANNEL_TXPMARESET(1),
      TXPMARESETDONE => txpmaresetdone_out(1),
      TXPOLARITY => txpolarity_in(1),
      TXPOSTCURSOR(4 downto 0) => txpostcursor_in(9 downto 5),
      TXPRBSFORCEERR => txprbsforceerr_in(1),
      TXPRBSSEL(3 downto 0) => txprbssel_in(7 downto 4),
      TXPRECURSOR(4 downto 0) => txprecursor_in(9 downto 5),
      TXPRGDIVRESETDONE => txprgdivresetdone_out(1),
      TXPROGDIVRESET => GTYE4_CHANNEL_TXPROGDIVRESET(0),
      TXRATE(2 downto 0) => GTYE4_CHANNEL_TXRATE(5 downto 3),
      TXRATEDONE => txratedone_out(1),
      TXRATEMODE => GTYE4_CHANNEL_TXRATEMODE(1),
      TXRESETDONE => txresetdone_out(1),
      TXSEQUENCE(6 downto 0) => txsequence_in(13 downto 7),
      TXSWING => txswing_in(1),
      TXSYNCALLIN => txsyncallin_in(1),
      TXSYNCDONE => txsyncdone_out(1),
      TXSYNCIN => txsyncin_in(1),
      TXSYNCMODE => txsyncmode_in(1),
      TXSYNCOUT => txsyncout_out(1),
      TXSYSCLKSEL(1 downto 0) => txsysclksel_in(3 downto 2),
      TXUSERRDY => GTYE4_CHANNEL_TXUSERRDY(0),
      TXUSRCLK => gtwiz_userclk_tx_usrclk_out(0),
      TXUSRCLK2 => gtwiz_userclk_tx_usrclk2_out(0)
    );
\i_in_inferred_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^rxcdrlock_out\(0),
      I1 => \^rxcdrlock_out\(1),
      O => in0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_common is
  port (
    drprdy_common_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor0_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor1_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubden_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubdwe_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdo_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubrsvdout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubtxuart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    sdm1testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    drpdo_common_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdaddr_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdi_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxrecclk0sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxrecclk1sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm0finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sdm1finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmarsvdout0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvdout1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_in0 : out STD_LOGIC;
    bgbypassb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgmonitorenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgpdb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgrcalovrdenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpclk_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpen_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0reset_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rcalenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubcfgstreamen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubdrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubenable_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubiolmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmcapture_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgupdate_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmshift_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmsysrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtck_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdi_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpdi_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdo_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sdm0width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm1width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubgpi_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubintr_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm0data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sdm1data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcierateqpll0_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pcierateqpll1_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll0refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll1refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ubmdmregen_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bgrcalovrd_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd2_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd3_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pmarsvd0_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll1fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd4_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_common : entity is "gtwizard_ultrascale_v1_7_5_gtye4_common";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_common;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_common is
  signal \^qpll0lock_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gtye4_common_gen.GTYE4_COMMON_PRIM_INST\ : label is "PRIMITIVE";
begin
  qpll0lock_out(0) <= \^qpll0lock_out\(0);
\gtye4_common_gen.GTYE4_COMMON_PRIM_INST\: unisim.vcomponents.GTYE4_COMMON
    generic map(
      AEN_QPLL0_FBDIV => '1',
      AEN_QPLL1_FBDIV => '1',
      AEN_SDM0TOGGLE => '0',
      AEN_SDM1TOGGLE => '0',
      A_SDM0TOGGLE => '0',
      A_SDM1DATA_HIGH => B"000000000",
      A_SDM1DATA_LOW => B"0000000000000000",
      A_SDM1TOGGLE => '0',
      BIAS_CFG0 => X"0000",
      BIAS_CFG1 => X"0000",
      BIAS_CFG2 => X"0524",
      BIAS_CFG3 => X"0041",
      BIAS_CFG4 => X"0010",
      BIAS_CFG_RSVD => X"0000",
      COMMON_CFG0 => X"0000",
      COMMON_CFG1 => X"0000",
      POR_CFG => X"0000",
      PPF0_CFG => X"0600",
      PPF1_CFG => X"0600",
      QPLL0CLKOUT_RATE => "HALF",
      QPLL0_CFG0 => X"331C",
      QPLL0_CFG1 => X"D038",
      QPLL0_CFG1_G3 => X"D038",
      QPLL0_CFG2 => X"87C0",
      QPLL0_CFG2_G3 => X"87C0",
      QPLL0_CFG3 => X"0120",
      QPLL0_CFG4 => X"0002",
      QPLL0_CP => B"0011111111",
      QPLL0_CP_G3 => B"0000001111",
      QPLL0_FBDIV => 66,
      QPLL0_FBDIV_G3 => 160,
      QPLL0_INIT_CFG0 => X"02B2",
      QPLL0_INIT_CFG1 => X"00",
      QPLL0_LOCK_CFG => X"25E8",
      QPLL0_LOCK_CFG_G3 => X"25E8",
      QPLL0_LPF => B"1000111111",
      QPLL0_LPF_G3 => B"0111010101",
      QPLL0_PCI_EN => '0',
      QPLL0_RATE_SW_USE_DRP => '1',
      QPLL0_REFCLK_DIV => 1,
      QPLL0_SDM_CFG0 => X"0080",
      QPLL0_SDM_CFG1 => X"0000",
      QPLL0_SDM_CFG2 => X"0000",
      QPLL1CLKOUT_RATE => "HALF",
      QPLL1_CFG0 => X"331C",
      QPLL1_CFG1 => X"D038",
      QPLL1_CFG1_G3 => X"D038",
      QPLL1_CFG2 => X"0FC3",
      QPLL1_CFG2_G3 => X"0FC3",
      QPLL1_CFG3 => X"0120",
      QPLL1_CFG4 => X"0002",
      QPLL1_CP => B"0011111111",
      QPLL1_CP_G3 => B"0001111111",
      QPLL1_FBDIV => 66,
      QPLL1_FBDIV_G3 => 80,
      QPLL1_INIT_CFG0 => X"02B2",
      QPLL1_INIT_CFG1 => X"00",
      QPLL1_LOCK_CFG => X"25E8",
      QPLL1_LOCK_CFG_G3 => X"25E8",
      QPLL1_LPF => B"1000011111",
      QPLL1_LPF_G3 => B"0111010100",
      QPLL1_PCI_EN => '0',
      QPLL1_RATE_SW_USE_DRP => '1',
      QPLL1_REFCLK_DIV => 1,
      QPLL1_SDM_CFG0 => X"0080",
      QPLL1_SDM_CFG1 => X"0000",
      QPLL1_SDM_CFG2 => X"0000",
      RSVD_ATTR0 => X"0000",
      RSVD_ATTR1 => X"0000",
      RSVD_ATTR2 => X"0000",
      RSVD_ATTR3 => X"0000",
      RXRECCLKOUT0_SEL => B"00",
      RXRECCLKOUT1_SEL => B"00",
      SARC_ENB => '0',
      SARC_SEL => '0',
      SDM0INITSEED0_0 => B"0000000100010001",
      SDM0INITSEED0_1 => B"000010001",
      SDM1INITSEED0_0 => B"0000000100010001",
      SDM1INITSEED0_1 => B"000010001",
      SIM_DEVICE => "ULTRASCALE_PLUS",
      SIM_MODE => "FAST",
      SIM_RESET_SPEEDUP => "TRUE",
      UB_CFG0 => X"0000",
      UB_CFG1 => X"0000",
      UB_CFG2 => X"0000",
      UB_CFG3 => X"0000",
      UB_CFG4 => X"0000",
      UB_CFG5 => X"0400",
      UB_CFG6 => X"0000"
    )
        port map (
      BGBYPASSB => bgbypassb_in(0),
      BGMONITORENB => bgmonitorenb_in(0),
      BGPDB => bgpdb_in(0),
      BGRCALOVRD(4 downto 0) => bgrcalovrd_in(4 downto 0),
      BGRCALOVRDENB => bgrcalovrdenb_in(0),
      DRPADDR(15 downto 0) => drpaddr_common_in(15 downto 0),
      DRPCLK => drpclk_common_in(0),
      DRPDI(15 downto 0) => drpdi_common_in(15 downto 0),
      DRPDO(15 downto 0) => drpdo_common_out(15 downto 0),
      DRPEN => drpen_common_in(0),
      DRPRDY => drprdy_common_out(0),
      DRPWE => drpwe_common_in(0),
      GTGREFCLK0 => gtgrefclk0_in(0),
      GTGREFCLK1 => gtgrefclk1_in(0),
      GTNORTHREFCLK00 => gtnorthrefclk00_in(0),
      GTNORTHREFCLK01 => gtnorthrefclk01_in(0),
      GTNORTHREFCLK10 => gtnorthrefclk10_in(0),
      GTNORTHREFCLK11 => gtnorthrefclk11_in(0),
      GTREFCLK00 => gtrefclk00_in(0),
      GTREFCLK01 => gtrefclk01_in(0),
      GTREFCLK10 => gtrefclk10_in(0),
      GTREFCLK11 => gtrefclk11_in(0),
      GTSOUTHREFCLK00 => gtsouthrefclk00_in(0),
      GTSOUTHREFCLK01 => gtsouthrefclk01_in(0),
      GTSOUTHREFCLK10 => gtsouthrefclk10_in(0),
      GTSOUTHREFCLK11 => gtsouthrefclk11_in(0),
      PCIERATEQPLL0(2 downto 0) => pcierateqpll0_in(2 downto 0),
      PCIERATEQPLL1(2 downto 0) => pcierateqpll1_in(2 downto 0),
      PMARSVD0(7 downto 0) => pmarsvd0_in(7 downto 0),
      PMARSVD1(7 downto 0) => pmarsvd1_in(7 downto 0),
      PMARSVDOUT0(7 downto 0) => pmarsvdout0_out(7 downto 0),
      PMARSVDOUT1(7 downto 0) => pmarsvdout1_out(7 downto 0),
      QPLL0CLKRSVD0 => qpll0clkrsvd0_in(0),
      QPLL0CLKRSVD1 => qpll0clkrsvd1_in(0),
      QPLL0FBCLKLOST => qpll0fbclklost_out(0),
      QPLL0FBDIV(7 downto 0) => qpll0fbdiv_in(7 downto 0),
      QPLL0LOCK => \^qpll0lock_out\(0),
      QPLL0LOCKDETCLK => qpll0lockdetclk_in(0),
      QPLL0LOCKEN => qpll0locken_in(0),
      QPLL0OUTCLK => qpll0outclk_out(0),
      QPLL0OUTREFCLK => qpll0outrefclk_out(0),
      QPLL0PD => qpll0pd_in(0),
      QPLL0REFCLKLOST => qpll0refclklost_out(0),
      QPLL0REFCLKSEL(2 downto 0) => qpll0refclksel_in(2 downto 0),
      QPLL0RESET => gtwiz_reset_qpll0reset_out(0),
      QPLL1CLKRSVD0 => qpll1clkrsvd0_in(0),
      QPLL1CLKRSVD1 => qpll1clkrsvd1_in(0),
      QPLL1FBCLKLOST => qpll1fbclklost_out(0),
      QPLL1FBDIV(7 downto 0) => qpll1fbdiv_in(7 downto 0),
      QPLL1LOCK => qpll1lock_out(0),
      QPLL1LOCKDETCLK => qpll1lockdetclk_in(0),
      QPLL1LOCKEN => qpll1locken_in(0),
      QPLL1OUTCLK => qpll1outclk_out(0),
      QPLL1OUTREFCLK => qpll1outrefclk_out(0),
      QPLL1PD => qpll1pd_in(0),
      QPLL1REFCLKLOST => qpll1refclklost_out(0),
      QPLL1REFCLKSEL(2 downto 0) => qpll1refclksel_in(2 downto 0),
      QPLL1RESET => qpll1reset_in(0),
      QPLLDMONITOR0(7 downto 0) => qplldmonitor0_out(7 downto 0),
      QPLLDMONITOR1(7 downto 0) => qplldmonitor1_out(7 downto 0),
      QPLLRSVD1(7 downto 0) => qpllrsvd1_in(7 downto 0),
      QPLLRSVD2(4 downto 0) => qpllrsvd2_in(4 downto 0),
      QPLLRSVD3(4 downto 0) => qpllrsvd3_in(4 downto 0),
      QPLLRSVD4(7 downto 0) => qpllrsvd4_in(7 downto 0),
      RCALENB => rcalenb_in(0),
      REFCLKOUTMONITOR0 => refclkoutmonitor0_out(0),
      REFCLKOUTMONITOR1 => refclkoutmonitor1_out(0),
      RXRECCLK0SEL(1 downto 0) => rxrecclk0sel_out(1 downto 0),
      RXRECCLK1SEL(1 downto 0) => rxrecclk1sel_out(1 downto 0),
      SDM0DATA(24 downto 0) => sdm0data_in(24 downto 0),
      SDM0FINALOUT(3 downto 0) => sdm0finalout_out(3 downto 0),
      SDM0RESET => sdm0reset_in(0),
      SDM0TESTDATA(14 downto 0) => sdm0testdata_out(14 downto 0),
      SDM0TOGGLE => sdm0toggle_in(0),
      SDM0WIDTH(1 downto 0) => sdm0width_in(1 downto 0),
      SDM1DATA(24 downto 0) => sdm1data_in(24 downto 0),
      SDM1FINALOUT(3 downto 0) => sdm1finalout_out(3 downto 0),
      SDM1RESET => sdm1reset_in(0),
      SDM1TESTDATA(14 downto 0) => sdm1testdata_out(14 downto 0),
      SDM1TOGGLE => sdm1toggle_in(0),
      SDM1WIDTH(1 downto 0) => sdm1width_in(1 downto 0),
      UBCFGSTREAMEN => ubcfgstreamen_in(0),
      UBDADDR(15 downto 0) => ubdaddr_out(15 downto 0),
      UBDEN => ubden_out(0),
      UBDI(15 downto 0) => ubdi_out(15 downto 0),
      UBDO(15 downto 0) => ubdo_in(15 downto 0),
      UBDRDY => ubdrdy_in(0),
      UBDWE => ubdwe_out(0),
      UBENABLE => ubenable_in(0),
      UBGPI(1 downto 0) => ubgpi_in(1 downto 0),
      UBINTR(1 downto 0) => ubintr_in(1 downto 0),
      UBIOLMBRST => ubiolmbrst_in(0),
      UBMBRST => ubmbrst_in(0),
      UBMDMCAPTURE => ubmdmcapture_in(0),
      UBMDMDBGRST => ubmdmdbgrst_in(0),
      UBMDMDBGUPDATE => ubmdmdbgupdate_in(0),
      UBMDMREGEN(3 downto 0) => ubmdmregen_in(3 downto 0),
      UBMDMSHIFT => ubmdmshift_in(0),
      UBMDMSYSRST => ubmdmsysrst_in(0),
      UBMDMTCK => ubmdmtck_in(0),
      UBMDMTDI => ubmdmtdi_in(0),
      UBMDMTDO => ubmdmtdo_out(0),
      UBRSVDOUT => ubrsvdout_out(0),
      UBTXUART => ubtxuart_out(0)
    );
\rst_in_meta_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^qpll0lock_out\(0),
      O => rst_in0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_delay_powergood is
  port (
    \out\ : out STD_LOGIC;
    GTYE4_CHANNEL_TXRATEMODE : out STD_LOGIC_VECTOR ( 0 to 0 );
    GTYE4_CHANNEL_TXRATE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    GTYE4_CHANNEL_TXPISOPD : out STD_LOGIC_VECTOR ( 0 to 0 );
    GTYE4_CHANNEL_TXPMARESET : out STD_LOGIC_VECTOR ( 0 to 0 );
    in0 : out STD_LOGIC;
    CLK : in STD_LOGIC;
    \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\ : in STD_LOGIC;
    txratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txpisopd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_in_meta_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_delay_powergood : entity is "gtwizard_ultrascale_v1_7_5_gtye4_delay_powergood";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_delay_powergood;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_delay_powergood is
  signal \gen_powergood_delay.intclk_rrst_n_r\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SHIFT_EXTRACT : string;
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r\ : signal is "NO";
  attribute async_reg : string;
  attribute async_reg of \gen_powergood_delay.intclk_rrst_n_r\ : signal is "true";
  signal \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.pwr_on_fsm\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \gen_powergood_delay.pwr_on_fsm\ : signal is "true";
  signal \gen_powergood_delay.pwr_on_fsm_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 2 downto 1 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ : label is "yes";
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ : label is "NO";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[1]\ : label is "yes";
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[1]\ : label is "NO";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[2]\ : label is "yes";
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[2]\ : label is "NO";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[3]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[3]\ : label is "yes";
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[3]\ : label is "NO";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[4]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[4]\ : label is "yes";
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[4]\ : label is "NO";
  attribute KEEP of \gen_powergood_delay.pwr_on_fsm_reg\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_powergood_delay.wait_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_powergood_delay.wait_cnt[2]_i_2\ : label is "soft_lutpair0";
begin
  \out\ <= \gen_powergood_delay.pwr_on_fsm\;
\gen_powergood_delay.intclk_rrst_n_r[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      O => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\,
      D => '1',
      Q => \gen_powergood_delay.intclk_rrst_n_r\(0)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\,
      D => \gen_powergood_delay.intclk_rrst_n_r\(0),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(1)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\,
      D => \gen_powergood_delay.intclk_rrst_n_r\(1),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(2)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\,
      D => \gen_powergood_delay.intclk_rrst_n_r\(2),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(3)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0\,
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\,
      D => \gen_powergood_delay.intclk_rrst_n_r\(3),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(4)
    );
\gen_powergood_delay.pwr_on_fsm_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => \gen_powergood_delay.wait_cnt_reg_n_0_[3]\,
      O => \gen_powergood_delay.pwr_on_fsm_i_1_n_0\
    );
\gen_powergood_delay.pwr_on_fsm_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\,
      D => \gen_powergood_delay.pwr_on_fsm_i_1_n_0\,
      Q => \gen_powergood_delay.pwr_on_fsm\
    );
\gen_powergood_delay.wait_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => \gen_powergood_delay.wait_cnt_reg_n_0_[0]\,
      O => \gen_powergood_delay.wait_cnt[0]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_powergood_delay.wait_cnt_reg_n_0_[0]\,
      I1 => \gen_powergood_delay.wait_cnt_reg_n_0_[1]\,
      O => p_2_in(1)
    );
\gen_powergood_delay.wait_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => \gen_powergood_delay.intclk_rrst_n_r\(4),
      O => \gen_powergood_delay.wait_cnt[2]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gen_powergood_delay.wait_cnt_reg_n_0_[0]\,
      I1 => \gen_powergood_delay.wait_cnt_reg_n_0_[1]\,
      I2 => \gen_powergood_delay.wait_cnt_reg_n_0_[2]\,
      O => p_2_in(2)
    );
\gen_powergood_delay.wait_cnt[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_powergood_delay.intclk_rrst_n_r\(4),
      O => \gen_powergood_delay.wait_cnt[3]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6AAA"
    )
        port map (
      I0 => \gen_powergood_delay.wait_cnt_reg_n_0_[3]\,
      I1 => \gen_powergood_delay.wait_cnt_reg_n_0_[2]\,
      I2 => \gen_powergood_delay.wait_cnt_reg_n_0_[0]\,
      I3 => \gen_powergood_delay.wait_cnt_reg_n_0_[1]\,
      I4 => \gen_powergood_delay.pwr_on_fsm\,
      O => \gen_powergood_delay.wait_cnt[3]_i_2_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gen_powergood_delay.wait_cnt[0]_i_1_n_0\,
      Q => \gen_powergood_delay.wait_cnt_reg_n_0_[0]\,
      R => \gen_powergood_delay.wait_cnt[3]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(1),
      Q => \gen_powergood_delay.wait_cnt_reg_n_0_[1]\,
      R => \gen_powergood_delay.wait_cnt[2]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => p_2_in(2),
      Q => \gen_powergood_delay.wait_cnt_reg_n_0_[2]\,
      R => \gen_powergood_delay.wait_cnt[2]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gen_powergood_delay.wait_cnt[3]_i_2_n_0\,
      Q => \gen_powergood_delay.wait_cnt_reg_n_0_[3]\,
      R => \gen_powergood_delay.wait_cnt[3]_i_1_n_0\
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => txpisopd_in(0),
      I1 => \gen_powergood_delay.pwr_on_fsm\,
      O => GTYE4_CHANNEL_TXPISOPD(0)
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => txpmareset_in(0),
      O => GTYE4_CHANNEL_TXPMARESET(0)
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => txratemode_in(0),
      I1 => \gen_powergood_delay.pwr_on_fsm\,
      O => GTYE4_CHANNEL_TXRATEMODE(0)
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => txrate_in(2),
      O => GTYE4_CHANNEL_TXRATE(2)
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => txrate_in(1),
      O => GTYE4_CHANNEL_TXRATE(1)
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => txrate_in(0),
      I1 => \gen_powergood_delay.pwr_on_fsm\,
      O => GTYE4_CHANNEL_TXRATE(0)
    );
i_in_inferred_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => i_in_meta_reg,
      O => in0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_delay_powergood_0 is
  port (
    \out\ : out STD_LOGIC;
    GTYE4_CHANNEL_TXRATEMODE : out STD_LOGIC_VECTOR ( 0 to 0 );
    GTYE4_CHANNEL_TXRATE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    GTYE4_CHANNEL_TXPISOPD : out STD_LOGIC_VECTOR ( 0 to 0 );
    GTYE4_CHANNEL_TXPMARESET : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\ : in STD_LOGIC;
    txratemode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txrate_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    txpisopd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpmareset_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_delay_powergood_0 : entity is "gtwizard_ultrascale_v1_7_5_gtye4_delay_powergood";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_delay_powergood_0;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_delay_powergood_0 is
  signal \gen_powergood_delay.intclk_rrst_n_r\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SHIFT_EXTRACT : string;
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r\ : signal is "NO";
  attribute async_reg : string;
  attribute async_reg of \gen_powergood_delay.intclk_rrst_n_r\ : signal is "true";
  signal \gen_powergood_delay.intclk_rrst_n_r[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.pwr_on_fsm\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \gen_powergood_delay.pwr_on_fsm\ : signal is "true";
  signal \gen_powergood_delay.pwr_on_fsm_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_powergood_delay.wait_cnt_reg_n_0_[3]\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ : label is "yes";
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[0]\ : label is "NO";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[1]\ : label is "yes";
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[1]\ : label is "NO";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[2]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[2]\ : label is "yes";
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[2]\ : label is "NO";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[3]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[3]\ : label is "yes";
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[3]\ : label is "NO";
  attribute ASYNC_REG_boolean of \gen_powergood_delay.intclk_rrst_n_r_reg[4]\ : label is std.standard.true;
  attribute KEEP of \gen_powergood_delay.intclk_rrst_n_r_reg[4]\ : label is "yes";
  attribute SHIFT_EXTRACT of \gen_powergood_delay.intclk_rrst_n_r_reg[4]\ : label is "NO";
  attribute KEEP of \gen_powergood_delay.pwr_on_fsm_reg\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_powergood_delay.wait_cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_powergood_delay.wait_cnt[2]_i_2\ : label is "soft_lutpair1";
begin
  \out\ <= \gen_powergood_delay.pwr_on_fsm\;
\gen_powergood_delay.intclk_rrst_n_r[4]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      O => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1__0_n_0\
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1__0_n_0\,
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\,
      D => '1',
      Q => \gen_powergood_delay.intclk_rrst_n_r\(0)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1__0_n_0\,
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\,
      D => \gen_powergood_delay.intclk_rrst_n_r\(0),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(1)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1__0_n_0\,
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\,
      D => \gen_powergood_delay.intclk_rrst_n_r\(1),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(2)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1__0_n_0\,
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\,
      D => \gen_powergood_delay.intclk_rrst_n_r\(2),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(3)
    );
\gen_powergood_delay.intclk_rrst_n_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \gen_powergood_delay.intclk_rrst_n_r[4]_i_1__0_n_0\,
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\,
      D => \gen_powergood_delay.intclk_rrst_n_r\(3),
      Q => \gen_powergood_delay.intclk_rrst_n_r\(4)
    );
\gen_powergood_delay.pwr_on_fsm_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => \gen_powergood_delay.wait_cnt_reg_n_0_[3]\,
      O => \gen_powergood_delay.pwr_on_fsm_i_1__0_n_0\
    );
\gen_powergood_delay.pwr_on_fsm_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\,
      D => \gen_powergood_delay.pwr_on_fsm_i_1__0_n_0\,
      Q => \gen_powergood_delay.pwr_on_fsm\
    );
\gen_powergood_delay.wait_cnt[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => \gen_powergood_delay.wait_cnt_reg_n_0_[0]\,
      O => \gen_powergood_delay.wait_cnt[0]_i_1__0_n_0\
    );
\gen_powergood_delay.wait_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_powergood_delay.wait_cnt_reg_n_0_[0]\,
      I1 => \gen_powergood_delay.wait_cnt_reg_n_0_[1]\,
      O => \gen_powergood_delay.wait_cnt[1]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => \gen_powergood_delay.intclk_rrst_n_r\(4),
      O => \gen_powergood_delay.wait_cnt[2]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gen_powergood_delay.wait_cnt_reg_n_0_[0]\,
      I1 => \gen_powergood_delay.wait_cnt_reg_n_0_[1]\,
      I2 => \gen_powergood_delay.wait_cnt_reg_n_0_[2]\,
      O => \gen_powergood_delay.wait_cnt[2]_i_2_n_0\
    );
\gen_powergood_delay.wait_cnt[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_powergood_delay.intclk_rrst_n_r\(4),
      O => \gen_powergood_delay.wait_cnt[3]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6AAA"
    )
        port map (
      I0 => \gen_powergood_delay.wait_cnt_reg_n_0_[3]\,
      I1 => \gen_powergood_delay.wait_cnt_reg_n_0_[2]\,
      I2 => \gen_powergood_delay.wait_cnt_reg_n_0_[0]\,
      I3 => \gen_powergood_delay.wait_cnt_reg_n_0_[1]\,
      I4 => \gen_powergood_delay.pwr_on_fsm\,
      O => \gen_powergood_delay.wait_cnt[3]_i_2_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gen_powergood_delay.wait_cnt[0]_i_1__0_n_0\,
      Q => \gen_powergood_delay.wait_cnt_reg_n_0_[0]\,
      R => \gen_powergood_delay.wait_cnt[3]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gen_powergood_delay.wait_cnt[1]_i_1_n_0\,
      Q => \gen_powergood_delay.wait_cnt_reg_n_0_[1]\,
      R => \gen_powergood_delay.wait_cnt[2]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gen_powergood_delay.wait_cnt[2]_i_2_n_0\,
      Q => \gen_powergood_delay.wait_cnt_reg_n_0_[2]\,
      R => \gen_powergood_delay.wait_cnt[2]_i_1_n_0\
    );
\gen_powergood_delay.wait_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \gen_powergood_delay.wait_cnt[3]_i_2_n_0\,
      Q => \gen_powergood_delay.wait_cnt_reg_n_0_[3]\,
      R => \gen_powergood_delay.wait_cnt[3]_i_1_n_0\
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => txpisopd_in(0),
      I1 => \gen_powergood_delay.pwr_on_fsm\,
      O => GTYE4_CHANNEL_TXPISOPD(0)
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => txpmareset_in(0),
      O => GTYE4_CHANNEL_TXPMARESET(0)
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => txratemode_in(0),
      I1 => \gen_powergood_delay.pwr_on_fsm\,
      O => GTYE4_CHANNEL_TXRATEMODE(0)
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => txrate_in(2),
      O => GTYE4_CHANNEL_TXRATE(2)
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_powergood_delay.pwr_on_fsm\,
      I1 => txrate_in(1),
      O => GTYE4_CHANNEL_TXRATE(1)
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => txrate_in(0),
      I1 => \gen_powergood_delay.pwr_on_fsm\,
      O => GTYE4_CHANNEL_TXRATE(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_inv_synchronizer is
  port (
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk2_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_in_sync2_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_inv_synchronizer : entity is "gtwizard_ultrascale_v1_7_5_reset_inv_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_inv_synchronizer;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_inv_synchronizer is
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal \rst_in_out_i_1__0_n_0\ : STD_LOGIC;
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
rst_in_meta_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_userclk_rx_usrclk2_out(0),
      CE => '1',
      CLR => \rst_in_out_i_1__0_n_0\,
      D => '1',
      Q => rst_in_meta
    );
\rst_in_out_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_in_sync2_reg_0,
      O => \rst_in_out_i_1__0_n_0\
    );
rst_in_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_userclk_rx_usrclk2_out(0),
      CE => '1',
      CLR => \rst_in_out_i_1__0_n_0\,
      D => rst_in_sync3,
      Q => gtwiz_reset_rx_done_out(0)
    );
rst_in_sync1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_userclk_rx_usrclk2_out(0),
      CE => '1',
      CLR => \rst_in_out_i_1__0_n_0\,
      D => rst_in_meta,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_userclk_rx_usrclk2_out(0),
      CE => '1',
      CLR => \rst_in_out_i_1__0_n_0\,
      D => rst_in_sync1,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_userclk_rx_usrclk2_out(0),
      CE => '1',
      CLR => \rst_in_out_i_1__0_n_0\,
      D => rst_in_sync2,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_inv_synchronizer_20 is
  port (
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk2_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_in_sync2_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_inv_synchronizer_20 : entity is "gtwizard_ultrascale_v1_7_5_reset_inv_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_inv_synchronizer_20;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_inv_synchronizer_20 is
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_out_i_1_n_0 : STD_LOGIC;
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
rst_in_meta_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_userclk_tx_usrclk2_out(0),
      CE => '1',
      CLR => rst_in_out_i_1_n_0,
      D => '1',
      Q => rst_in_meta
    );
rst_in_out_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_in_sync2_reg_0,
      O => rst_in_out_i_1_n_0
    );
rst_in_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_userclk_tx_usrclk2_out(0),
      CE => '1',
      CLR => rst_in_out_i_1_n_0,
      D => rst_in_sync3,
      Q => gtwiz_reset_tx_done_out(0)
    );
rst_in_sync1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_userclk_tx_usrclk2_out(0),
      CE => '1',
      CLR => rst_in_out_i_1_n_0,
      D => rst_in_meta,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_userclk_tx_usrclk2_out(0),
      CE => '1',
      CLR => rst_in_out_i_1_n_0,
      D => rst_in_sync1,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_userclk_tx_usrclk2_out(0),
      CE => '1',
      CLR => rst_in_out_i_1_n_0,
      D => rst_in_sync2,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer is
  port (
    gtwiz_reset_all_sync : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer : entity is "gtwizard_ultrascale_v1_7_5_reset_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer is
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => gtwiz_reset_all_in(0),
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => gtwiz_reset_all_in(0),
      Q => gtwiz_reset_all_sync
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => gtwiz_reset_all_in(0),
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => gtwiz_reset_all_in(0),
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => gtwiz_reset_all_in(0),
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_14 is
  port (
    gtwiz_reset_rx_any_sync : out STD_LOGIC;
    \FSM_sequential_sm_reset_rx_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_sm_reset_rx_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_sm_reset_rx_reg[1]_1\ : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int\ : in STD_LOGIC;
    rxprogdivreset_out_reg : in STD_LOGIC;
    GTYE4_CHANNEL_RXPROGDIVRESET : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrxreset_out_reg : in STD_LOGIC;
    GTYE4_CHANNEL_GTRXRESET : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_in_out_reg_0 : in STD_LOGIC;
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_in_out_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_14 : entity is "gtwizard_ultrascale_v1_7_5_reset_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_14;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_14 is
  signal gtwiz_reset_rx_any : STD_LOGIC;
  signal \^gtwiz_reset_rx_any_sync\ : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
  gtwiz_reset_rx_any_sync <= \^gtwiz_reset_rx_any_sync\;
gtrxreset_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFF00070000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => \^gtwiz_reset_rx_any_sync\,
      I4 => gtrxreset_out_reg,
      I5 => GTYE4_CHANNEL_GTRXRESET(0),
      O => \FSM_sequential_sm_reset_rx_reg[1]_1\
    );
pllreset_rx_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0010"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => \^gtwiz_reset_rx_any_sync\,
      I4 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int\,
      O => \FSM_sequential_sm_reset_rx_reg[1]\
    );
\rst_in_meta_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rst_in_out_reg_0,
      I1 => gtwiz_reset_rx_datapath_in(0),
      I2 => gtwiz_reset_rx_pll_and_datapath_in(0),
      I3 => rst_in_out_reg_1,
      O => gtwiz_reset_rx_any
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => gtwiz_reset_rx_any,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => gtwiz_reset_rx_any,
      Q => \^gtwiz_reset_rx_any_sync\
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => gtwiz_reset_rx_any,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => gtwiz_reset_rx_any,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => gtwiz_reset_rx_any,
      Q => rst_in_sync3
    );
rxprogdivreset_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00120012"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => \^gtwiz_reset_rx_any_sync\,
      I4 => rxprogdivreset_out_reg,
      I5 => GTYE4_CHANNEL_RXPROGDIVRESET(0),
      O => \FSM_sequential_sm_reset_rx_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_15 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_in_out_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_15 : entity is "gtwizard_ultrascale_v1_7_5_reset_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_15;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_15 is
  signal rst_in0_2 : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
\rst_in_meta_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gtwiz_reset_rx_datapath_in(0),
      I1 => rst_in_out_reg_0,
      O => rst_in0_2
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => rst_in0_2,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => rst_in0_2,
      Q => in0
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => rst_in0_2,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => rst_in0_2,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => rst_in0_2,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_16 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_in_out_reg_0 : in STD_LOGIC;
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_16 : entity is "gtwizard_ultrascale_v1_7_5_reset_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_16;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_16 is
  signal p_0_in_1 : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
\rst_in_meta_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_in_out_reg_0,
      I1 => gtwiz_reset_rx_pll_and_datapath_in(0),
      O => p_0_in_1
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => p_0_in_1,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => p_0_in_1,
      Q => in0
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => p_0_in_1,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => p_0_in_1,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => p_0_in_1,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_17 is
  port (
    gtwiz_reset_tx_any_sync : out STD_LOGIC;
    \FSM_sequential_sm_reset_tx_reg[1]\ : out STD_LOGIC;
    rst_in_out_reg_0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int\ : in STD_LOGIC;
    gttxreset_out_reg : in STD_LOGIC;
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_gttxreset_int\ : in STD_LOGIC;
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_in_out_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_17 : entity is "gtwizard_ultrascale_v1_7_5_reset_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_17;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_17 is
  signal gtwiz_reset_tx_any : STD_LOGIC;
  signal \^gtwiz_reset_tx_any_sync\ : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
  gtwiz_reset_tx_any_sync <= \^gtwiz_reset_tx_any_sync\;
gttxreset_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F3FFFFF3F3F0014"
    )
        port map (
      I0 => \^gtwiz_reset_tx_any_sync\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => gttxreset_out_reg,
      I5 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_gttxreset_int\,
      O => rst_in_out_reg_0
    );
pllreset_tx_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0010"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      I3 => \^gtwiz_reset_tx_any_sync\,
      I4 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int\,
      O => \FSM_sequential_sm_reset_tx_reg[1]\
    );
rst_in_meta_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => gtwiz_reset_tx_datapath_in(0),
      I1 => gtwiz_reset_tx_pll_and_datapath_in(0),
      I2 => rst_in_out_reg_1,
      O => gtwiz_reset_tx_any
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => gtwiz_reset_tx_any,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => gtwiz_reset_tx_any,
      Q => \^gtwiz_reset_tx_any_sync\
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => gtwiz_reset_tx_any,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => gtwiz_reset_tx_any,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => gtwiz_reset_tx_any,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_18 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_18 : entity is "gtwizard_ultrascale_v1_7_5_reset_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_18;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_18 is
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => gtwiz_reset_tx_datapath_in(0),
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => gtwiz_reset_tx_datapath_in(0),
      Q => in0
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => gtwiz_reset_tx_datapath_in(0),
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => gtwiz_reset_tx_datapath_in(0),
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => gtwiz_reset_tx_datapath_in(0),
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_19 is
  port (
    in0 : out STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_in_out_reg_0 : in STD_LOGIC;
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_19 : entity is "gtwizard_ultrascale_v1_7_5_reset_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_19;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_19 is
  signal p_1_in_0 : STD_LOGIC;
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
\rst_in_meta_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_in_out_reg_0,
      I1 => gtwiz_reset_tx_pll_and_datapath_in(0),
      O => p_1_in_0
    );
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => p_1_in_0,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => p_1_in_0,
      Q => in0
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => p_1_in_0,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => p_1_in_0,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => p_1_in_0,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_21 is
  port (
    GTYE4_CHANNEL_TXPROGDIVRESET : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_in0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_21 : entity is "gtwizard_ultrascale_v1_7_5_reset_synchronizer";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_21;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_21 is
  signal rst_in_meta : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_in_meta : signal is "true";
  signal rst_in_sync1 : STD_LOGIC;
  attribute async_reg of rst_in_sync1 : signal is "true";
  signal rst_in_sync2 : STD_LOGIC;
  attribute async_reg of rst_in_sync2 : signal is "true";
  signal rst_in_sync3 : STD_LOGIC;
  attribute async_reg of rst_in_sync3 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of rst_in_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of rst_in_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync1_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync1_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync2_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync2_reg : label is "yes";
  attribute ASYNC_REG_boolean of rst_in_sync3_reg : label is std.standard.true;
  attribute KEEP of rst_in_sync3_reg : label is "yes";
begin
rst_in_meta_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => '0',
      PRE => rst_in0,
      Q => rst_in_meta
    );
rst_in_out_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync3,
      PRE => rst_in0,
      Q => GTYE4_CHANNEL_TXPROGDIVRESET(0)
    );
rst_in_sync1_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_meta,
      PRE => rst_in0,
      Q => rst_in_sync1
    );
rst_in_sync2_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync1,
      PRE => rst_in0,
      Q => rst_in_sync2
    );
rst_in_sync3_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => rst_in_sync2,
      PRE => rst_in0,
      Q => rst_in_sync3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtye4_channel_wrapper is
  port (
    gtrxreset_out_reg : out STD_LOGIC;
    GTYE4_CHANNEL_GTPOWERGOOD : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrxreset_out_reg_0 : out STD_LOGIC;
    in0 : out STD_LOGIC;
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bufgtce_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bufgtreset_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllfbclklost_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cplllock_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllrefclklost_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dmonitoroutclk_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    drprdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclkmonitor_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtytxn_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierategen3_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierateidle_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pciesynctxsyncdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieusergen3rdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieuserphystatusrst_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieuserratestart_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    phystatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    powerpresent_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    resetexception_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrphdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchanbondseq_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchanisaligned_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchanrealign_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxckcaldone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcominitdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcomsasdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcomwakedet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlysresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxelecidle_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlfpstresetdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlfpsu2lpexitdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlfpsu3wakedet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintstarted_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintstrobedone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintstrobestarted_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoutclkfabric_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoutclkpcs_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphaligndone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphalignerr_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxratedone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxrecclkout_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsliderdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslipdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslipoutclkrdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslippmardy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncout_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxvalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txcomfinish_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txdccdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlysresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txoutclkfabric_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_TXOUTCLKPCS : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txphaligndone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txphinitdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txratedone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncout_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 255 downto 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcsrsvdout_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pinrsrvdas_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcierateqpllpd_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcierateqpllreset_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxdatavalid_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxheadervalid_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxstartofseq_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txbufstatus_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bufgtcemask_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    bufgtrstmask_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxbufstatus_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxstatus_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxchbondo_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rxheader_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxdataextendrsvd_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxmonitorout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bufgtdiv_out : out STD_LOGIC_VECTOR ( 17 downto 0 );
    cdrstepdir_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cdrstepsq_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cdrstepsx_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cfgreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clkrsvd0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clkrsvd1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllfreqlock_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cplllockdetclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cplllocken_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dmonfiforeset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dmonitorclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drprst_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    eyescantrigger_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    freqos_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtgrefclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtnorthrefclk0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtnorthrefclk1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_GTRXRESET : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrxresetsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtsouthrefclk0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtsouthrefclk1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_GTTXRESET : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gttxresetsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtyrxn_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    incpctrl_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieeqrxeqadaptdone_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierstidle_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pciersttxsyncstart_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieuserratedone_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll0outclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0freqlock_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll0outrefclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1freqlock_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll1outrefclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetovrd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxafecfoken_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrfreqreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbonden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbondmaster_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbondslave_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxckcalreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeagchold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeagcovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokfen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokfpulse_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokovren_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfekhhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfekhovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfelfhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfelfovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap10hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap10ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap11hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap11ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap12hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap12ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap13hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap13ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap14hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap14ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap15hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap15ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap2hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap2ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap3hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap3ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap4hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap4ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap5hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap5ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap6hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap6ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap7hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap7ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap8hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap8ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap9hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap9ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeuthold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeutovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfevphold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfevpovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfexyden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlybypass_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlyen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlyovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlysreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxeqtraining_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxgearboxslip_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlatclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmgchold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmgcovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmhfhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmhfovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmlfhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmlfklovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmoshold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmosovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoobreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoscalreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoshold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphalign_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphdlypd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphdlyreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_RXPROGDIVRESET : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxratemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslide_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslipoutclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslippma_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncallin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncmode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxtermination_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_RXUSERRDY : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk2_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    sigvalidclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txcominit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txcomsas_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txcomwake_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdccforcestart_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdccreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdetectrx_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlybypass_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlysreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyupdown_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlatclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlfpstreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlfpsu2lpexit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlfpsu3wake_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txmuxdcdexhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txmuxdcdorwren_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txoneszeros_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphalign_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphdlypd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphdlyreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphdlytstclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphinit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_TXPISOPD : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_TXPMARESET : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpolarity_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_TXPROGDIVRESET : in STD_LOGIC_VECTOR ( 0 to 0 );
    GTYE4_CHANNEL_TXRATEMODE : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txswing_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncallin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncmode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_TXUSERRDY : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk2_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userdata_tx_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gtrsvd_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcsrsvdin_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tstin_in : in STD_LOGIC_VECTOR ( 39 downto 0 );
    rxelecidlemode_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxmonitorsel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txdeemph_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cpllrefclksel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxchbondlevel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxoutclksel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxrate_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txmargin_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txoutclksel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    GTYE4_CHANNEL_TXRATE : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxdfecfokfcnum_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxchbondi_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txpippmstepsize_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txheader_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rxckcalstart_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    txsequence_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    tx8b10bbypass_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txdataextendrsvd_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    lopt : in STD_LOGIC;
    lopt_1 : in STD_LOGIC;
    lopt_2 : out STD_LOGIC;
    lopt_3 : out STD_LOGIC;
    lopt_4 : in STD_LOGIC;
    lopt_5 : in STD_LOGIC;
    lopt_6 : out STD_LOGIC;
    lopt_7 : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtye4_channel_wrapper : entity is "gtwizard_ultrascale_0_gtye4_channel_wrapper";
end gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtye4_channel_wrapper;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtye4_channel_wrapper is
begin
channel_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_channel
     port map (
      GTYE4_CHANNEL_GTPOWERGOOD(1 downto 0) => GTYE4_CHANNEL_GTPOWERGOOD(1 downto 0),
      GTYE4_CHANNEL_GTRXRESET(0) => GTYE4_CHANNEL_GTRXRESET(0),
      GTYE4_CHANNEL_GTTXRESET(1 downto 0) => GTYE4_CHANNEL_GTTXRESET(1 downto 0),
      GTYE4_CHANNEL_RXPROGDIVRESET(0) => GTYE4_CHANNEL_RXPROGDIVRESET(0),
      GTYE4_CHANNEL_RXUSERRDY(0) => GTYE4_CHANNEL_RXUSERRDY(0),
      GTYE4_CHANNEL_TXOUTCLKPCS(1 downto 0) => GTYE4_CHANNEL_TXOUTCLKPCS(1 downto 0),
      GTYE4_CHANNEL_TXPISOPD(1 downto 0) => GTYE4_CHANNEL_TXPISOPD(1 downto 0),
      GTYE4_CHANNEL_TXPMARESET(1 downto 0) => GTYE4_CHANNEL_TXPMARESET(1 downto 0),
      GTYE4_CHANNEL_TXPROGDIVRESET(0) => GTYE4_CHANNEL_TXPROGDIVRESET(0),
      GTYE4_CHANNEL_TXRATE(5 downto 0) => GTYE4_CHANNEL_TXRATE(5 downto 0),
      GTYE4_CHANNEL_TXRATEMODE(1 downto 0) => GTYE4_CHANNEL_TXRATEMODE(1 downto 0),
      GTYE4_CHANNEL_TXUSERRDY(0) => GTYE4_CHANNEL_TXUSERRDY(0),
      bufgtce_out(1 downto 0) => bufgtce_out(1 downto 0),
      bufgtcemask_out(5 downto 0) => bufgtcemask_out(5 downto 0),
      bufgtdiv_out(17 downto 0) => bufgtdiv_out(17 downto 0),
      bufgtreset_out(1 downto 0) => bufgtreset_out(1 downto 0),
      bufgtrstmask_out(5 downto 0) => bufgtrstmask_out(5 downto 0),
      cdrstepdir_in(1 downto 0) => cdrstepdir_in(1 downto 0),
      cdrstepsq_in(1 downto 0) => cdrstepsq_in(1 downto 0),
      cdrstepsx_in(1 downto 0) => cdrstepsx_in(1 downto 0),
      cfgreset_in(1 downto 0) => cfgreset_in(1 downto 0),
      clkrsvd0_in(1 downto 0) => clkrsvd0_in(1 downto 0),
      clkrsvd1_in(1 downto 0) => clkrsvd1_in(1 downto 0),
      cpllfbclklost_out(1 downto 0) => cpllfbclklost_out(1 downto 0),
      cpllfreqlock_in(1 downto 0) => cpllfreqlock_in(1 downto 0),
      cplllock_out(1 downto 0) => cplllock_out(1 downto 0),
      cplllockdetclk_in(1 downto 0) => cplllockdetclk_in(1 downto 0),
      cplllocken_in(1 downto 0) => cplllocken_in(1 downto 0),
      cpllpd_in(1 downto 0) => cpllpd_in(1 downto 0),
      cpllrefclklost_out(1 downto 0) => cpllrefclklost_out(1 downto 0),
      cpllrefclksel_in(5 downto 0) => cpllrefclksel_in(5 downto 0),
      cpllreset_in(1 downto 0) => cpllreset_in(1 downto 0),
      dmonfiforeset_in(1 downto 0) => dmonfiforeset_in(1 downto 0),
      dmonitorclk_in(1 downto 0) => dmonitorclk_in(1 downto 0),
      dmonitorout_out(31 downto 0) => dmonitorout_out(31 downto 0),
      dmonitoroutclk_out(1 downto 0) => dmonitoroutclk_out(1 downto 0),
      drpaddr_in(19 downto 0) => drpaddr_in(19 downto 0),
      drpclk_in(1 downto 0) => drpclk_in(1 downto 0),
      drpdi_in(31 downto 0) => drpdi_in(31 downto 0),
      drpdo_out(31 downto 0) => drpdo_out(31 downto 0),
      drpen_in(1 downto 0) => drpen_in(1 downto 0),
      drprdy_out(1 downto 0) => drprdy_out(1 downto 0),
      drprst_in(1 downto 0) => drprst_in(1 downto 0),
      drpwe_in(1 downto 0) => drpwe_in(1 downto 0),
      eyescandataerror_out(1 downto 0) => eyescandataerror_out(1 downto 0),
      eyescanreset_in(1 downto 0) => eyescanreset_in(1 downto 0),
      eyescantrigger_in(1 downto 0) => eyescantrigger_in(1 downto 0),
      freqos_in(1 downto 0) => freqos_in(1 downto 0),
      gtgrefclk_in(1 downto 0) => gtgrefclk_in(1 downto 0),
      gtnorthrefclk0_in(1 downto 0) => gtnorthrefclk0_in(1 downto 0),
      gtnorthrefclk1_in(1 downto 0) => gtnorthrefclk1_in(1 downto 0),
      gtrefclk0_in(1 downto 0) => gtrefclk0_in(1 downto 0),
      gtrefclk1_in(1 downto 0) => gtrefclk1_in(1 downto 0),
      gtrefclkmonitor_out(1 downto 0) => gtrefclkmonitor_out(1 downto 0),
      gtrsvd_in(31 downto 0) => gtrsvd_in(31 downto 0),
      gtrxreset_out_reg => gtrxreset_out_reg,
      gtrxreset_out_reg_0 => gtrxreset_out_reg_0,
      gtrxresetsel_in(1 downto 0) => gtrxresetsel_in(1 downto 0),
      gtsouthrefclk0_in(1 downto 0) => gtsouthrefclk0_in(1 downto 0),
      gtsouthrefclk1_in(1 downto 0) => gtsouthrefclk1_in(1 downto 0),
      gttxresetsel_in(1 downto 0) => gttxresetsel_in(1 downto 0),
      gtwiz_userclk_rx_usrclk2_out(0) => gtwiz_userclk_rx_usrclk2_out(0),
      gtwiz_userclk_rx_usrclk_out(0) => gtwiz_userclk_rx_usrclk_out(0),
      gtwiz_userclk_tx_usrclk2_out(0) => gtwiz_userclk_tx_usrclk2_out(0),
      gtwiz_userclk_tx_usrclk_out(0) => gtwiz_userclk_tx_usrclk_out(0),
      gtwiz_userdata_tx_in(127 downto 0) => gtwiz_userdata_tx_in(127 downto 0),
      gtyrxn_in(1 downto 0) => gtyrxn_in(1 downto 0),
      gtyrxp_in(1 downto 0) => gtyrxp_in(1 downto 0),
      gtytxn_out(1 downto 0) => gtytxn_out(1 downto 0),
      gtytxp_out(1 downto 0) => gtytxp_out(1 downto 0),
      in0 => in0,
      incpctrl_in(1 downto 0) => incpctrl_in(1 downto 0),
      loopback_in(5 downto 0) => loopback_in(5 downto 0),
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      lopt_3 => lopt_3,
      lopt_4 => lopt_4,
      lopt_5 => lopt_5,
      lopt_6 => lopt_6,
      lopt_7 => lopt_7,
      pcieeqrxeqadaptdone_in(1 downto 0) => pcieeqrxeqadaptdone_in(1 downto 0),
      pcierategen3_out(1 downto 0) => pcierategen3_out(1 downto 0),
      pcierateidle_out(1 downto 0) => pcierateidle_out(1 downto 0),
      pcierateqpllpd_out(3 downto 0) => pcierateqpllpd_out(3 downto 0),
      pcierateqpllreset_out(3 downto 0) => pcierateqpllreset_out(3 downto 0),
      pcierstidle_in(1 downto 0) => pcierstidle_in(1 downto 0),
      pciersttxsyncstart_in(1 downto 0) => pciersttxsyncstart_in(1 downto 0),
      pciesynctxsyncdone_out(1 downto 0) => pciesynctxsyncdone_out(1 downto 0),
      pcieusergen3rdy_out(1 downto 0) => pcieusergen3rdy_out(1 downto 0),
      pcieuserphystatusrst_out(1 downto 0) => pcieuserphystatusrst_out(1 downto 0),
      pcieuserratedone_in(1 downto 0) => pcieuserratedone_in(1 downto 0),
      pcieuserratestart_out(1 downto 0) => pcieuserratestart_out(1 downto 0),
      pcsrsvdin_in(31 downto 0) => pcsrsvdin_in(31 downto 0),
      pcsrsvdout_out(31 downto 0) => pcsrsvdout_out(31 downto 0),
      phystatus_out(1 downto 0) => phystatus_out(1 downto 0),
      pinrsrvdas_out(31 downto 0) => pinrsrvdas_out(31 downto 0),
      powerpresent_out(1 downto 0) => powerpresent_out(1 downto 0),
      qpll0freqlock_in(1 downto 0) => qpll0freqlock_in(1 downto 0),
      qpll0outclk_out(0) => qpll0outclk_out(0),
      qpll0outrefclk_out(0) => qpll0outrefclk_out(0),
      qpll1freqlock_in(1 downto 0) => qpll1freqlock_in(1 downto 0),
      qpll1outclk_out(0) => qpll1outclk_out(0),
      qpll1outrefclk_out(0) => qpll1outrefclk_out(0),
      resetexception_out(1 downto 0) => resetexception_out(1 downto 0),
      resetovrd_in(1 downto 0) => resetovrd_in(1 downto 0),
      rx8b10ben_in(1 downto 0) => rx8b10ben_in(1 downto 0),
      rxafecfoken_in(1 downto 0) => rxafecfoken_in(1 downto 0),
      rxbufreset_in(1 downto 0) => rxbufreset_in(1 downto 0),
      rxbufstatus_out(5 downto 0) => rxbufstatus_out(5 downto 0),
      rxbyteisaligned_out(1 downto 0) => rxbyteisaligned_out(1 downto 0),
      rxbyterealign_out(1 downto 0) => rxbyterealign_out(1 downto 0),
      rxcdrfreqreset_in(1 downto 0) => rxcdrfreqreset_in(1 downto 0),
      rxcdrhold_in(1 downto 0) => rxcdrhold_in(1 downto 0),
      rxcdrlock_out(1 downto 0) => rxcdrlock_out(1 downto 0),
      rxcdrovrden_in(1 downto 0) => rxcdrovrden_in(1 downto 0),
      rxcdrphdone_out(1 downto 0) => rxcdrphdone_out(1 downto 0),
      rxcdrreset_in(1 downto 0) => rxcdrreset_in(1 downto 0),
      rxchanbondseq_out(1 downto 0) => rxchanbondseq_out(1 downto 0),
      rxchanisaligned_out(1 downto 0) => rxchanisaligned_out(1 downto 0),
      rxchanrealign_out(1 downto 0) => rxchanrealign_out(1 downto 0),
      rxchbonden_in(1 downto 0) => rxchbonden_in(1 downto 0),
      rxchbondi_in(9 downto 0) => rxchbondi_in(9 downto 0),
      rxchbondlevel_in(5 downto 0) => rxchbondlevel_in(5 downto 0),
      rxchbondmaster_in(1 downto 0) => rxchbondmaster_in(1 downto 0),
      rxchbondo_out(9 downto 0) => rxchbondo_out(9 downto 0),
      rxchbondslave_in(1 downto 0) => rxchbondslave_in(1 downto 0),
      rxckcaldone_out(1 downto 0) => rxckcaldone_out(1 downto 0),
      rxckcalreset_in(1 downto 0) => rxckcalreset_in(1 downto 0),
      rxckcalstart_in(13 downto 0) => rxckcalstart_in(13 downto 0),
      rxclkcorcnt_out(3 downto 0) => rxclkcorcnt_out(3 downto 0),
      rxcominitdet_out(1 downto 0) => rxcominitdet_out(1 downto 0),
      rxcommadet_out(1 downto 0) => rxcommadet_out(1 downto 0),
      rxcommadeten_in(1 downto 0) => rxcommadeten_in(1 downto 0),
      rxcomsasdet_out(1 downto 0) => rxcomsasdet_out(1 downto 0),
      rxcomwakedet_out(1 downto 0) => rxcomwakedet_out(1 downto 0),
      rxctrl0_out(31 downto 0) => rxctrl0_out(31 downto 0),
      rxctrl1_out(31 downto 0) => rxctrl1_out(31 downto 0),
      rxctrl2_out(15 downto 0) => rxctrl2_out(15 downto 0),
      rxctrl3_out(15 downto 0) => rxctrl3_out(15 downto 0),
      rxdata_out(255 downto 0) => rxdata_out(255 downto 0),
      rxdataextendrsvd_out(15 downto 0) => rxdataextendrsvd_out(15 downto 0),
      rxdatavalid_out(3 downto 0) => rxdatavalid_out(3 downto 0),
      rxdfeagchold_in(1 downto 0) => rxdfeagchold_in(1 downto 0),
      rxdfeagcovrden_in(1 downto 0) => rxdfeagcovrden_in(1 downto 0),
      rxdfecfokfcnum_in(7 downto 0) => rxdfecfokfcnum_in(7 downto 0),
      rxdfecfokfen_in(1 downto 0) => rxdfecfokfen_in(1 downto 0),
      rxdfecfokfpulse_in(1 downto 0) => rxdfecfokfpulse_in(1 downto 0),
      rxdfecfokhold_in(1 downto 0) => rxdfecfokhold_in(1 downto 0),
      rxdfecfokovren_in(1 downto 0) => rxdfecfokovren_in(1 downto 0),
      rxdfekhhold_in(1 downto 0) => rxdfekhhold_in(1 downto 0),
      rxdfekhovrden_in(1 downto 0) => rxdfekhovrden_in(1 downto 0),
      rxdfelfhold_in(1 downto 0) => rxdfelfhold_in(1 downto 0),
      rxdfelfovrden_in(1 downto 0) => rxdfelfovrden_in(1 downto 0),
      rxdfelpmreset_in(1 downto 0) => rxdfelpmreset_in(1 downto 0),
      rxdfetap10hold_in(1 downto 0) => rxdfetap10hold_in(1 downto 0),
      rxdfetap10ovrden_in(1 downto 0) => rxdfetap10ovrden_in(1 downto 0),
      rxdfetap11hold_in(1 downto 0) => rxdfetap11hold_in(1 downto 0),
      rxdfetap11ovrden_in(1 downto 0) => rxdfetap11ovrden_in(1 downto 0),
      rxdfetap12hold_in(1 downto 0) => rxdfetap12hold_in(1 downto 0),
      rxdfetap12ovrden_in(1 downto 0) => rxdfetap12ovrden_in(1 downto 0),
      rxdfetap13hold_in(1 downto 0) => rxdfetap13hold_in(1 downto 0),
      rxdfetap13ovrden_in(1 downto 0) => rxdfetap13ovrden_in(1 downto 0),
      rxdfetap14hold_in(1 downto 0) => rxdfetap14hold_in(1 downto 0),
      rxdfetap14ovrden_in(1 downto 0) => rxdfetap14ovrden_in(1 downto 0),
      rxdfetap15hold_in(1 downto 0) => rxdfetap15hold_in(1 downto 0),
      rxdfetap15ovrden_in(1 downto 0) => rxdfetap15ovrden_in(1 downto 0),
      rxdfetap2hold_in(1 downto 0) => rxdfetap2hold_in(1 downto 0),
      rxdfetap2ovrden_in(1 downto 0) => rxdfetap2ovrden_in(1 downto 0),
      rxdfetap3hold_in(1 downto 0) => rxdfetap3hold_in(1 downto 0),
      rxdfetap3ovrden_in(1 downto 0) => rxdfetap3ovrden_in(1 downto 0),
      rxdfetap4hold_in(1 downto 0) => rxdfetap4hold_in(1 downto 0),
      rxdfetap4ovrden_in(1 downto 0) => rxdfetap4ovrden_in(1 downto 0),
      rxdfetap5hold_in(1 downto 0) => rxdfetap5hold_in(1 downto 0),
      rxdfetap5ovrden_in(1 downto 0) => rxdfetap5ovrden_in(1 downto 0),
      rxdfetap6hold_in(1 downto 0) => rxdfetap6hold_in(1 downto 0),
      rxdfetap6ovrden_in(1 downto 0) => rxdfetap6ovrden_in(1 downto 0),
      rxdfetap7hold_in(1 downto 0) => rxdfetap7hold_in(1 downto 0),
      rxdfetap7ovrden_in(1 downto 0) => rxdfetap7ovrden_in(1 downto 0),
      rxdfetap8hold_in(1 downto 0) => rxdfetap8hold_in(1 downto 0),
      rxdfetap8ovrden_in(1 downto 0) => rxdfetap8ovrden_in(1 downto 0),
      rxdfetap9hold_in(1 downto 0) => rxdfetap9hold_in(1 downto 0),
      rxdfetap9ovrden_in(1 downto 0) => rxdfetap9ovrden_in(1 downto 0),
      rxdfeuthold_in(1 downto 0) => rxdfeuthold_in(1 downto 0),
      rxdfeutovrden_in(1 downto 0) => rxdfeutovrden_in(1 downto 0),
      rxdfevphold_in(1 downto 0) => rxdfevphold_in(1 downto 0),
      rxdfevpovrden_in(1 downto 0) => rxdfevpovrden_in(1 downto 0),
      rxdfexyden_in(1 downto 0) => rxdfexyden_in(1 downto 0),
      rxdlybypass_in(1 downto 0) => rxdlybypass_in(1 downto 0),
      rxdlyen_in(1 downto 0) => rxdlyen_in(1 downto 0),
      rxdlyovrden_in(1 downto 0) => rxdlyovrden_in(1 downto 0),
      rxdlysreset_in(1 downto 0) => rxdlysreset_in(1 downto 0),
      rxdlysresetdone_out(1 downto 0) => rxdlysresetdone_out(1 downto 0),
      rxelecidle_out(1 downto 0) => rxelecidle_out(1 downto 0),
      rxelecidlemode_in(3 downto 0) => rxelecidlemode_in(3 downto 0),
      rxeqtraining_in(1 downto 0) => rxeqtraining_in(1 downto 0),
      rxgearboxslip_in(1 downto 0) => rxgearboxslip_in(1 downto 0),
      rxheader_out(11 downto 0) => rxheader_out(11 downto 0),
      rxheadervalid_out(3 downto 0) => rxheadervalid_out(3 downto 0),
      rxlatclk_in(1 downto 0) => rxlatclk_in(1 downto 0),
      rxlfpstresetdet_out(1 downto 0) => rxlfpstresetdet_out(1 downto 0),
      rxlfpsu2lpexitdet_out(1 downto 0) => rxlfpsu2lpexitdet_out(1 downto 0),
      rxlfpsu3wakedet_out(1 downto 0) => rxlfpsu3wakedet_out(1 downto 0),
      rxlpmen_in(1 downto 0) => rxlpmen_in(1 downto 0),
      rxlpmgchold_in(1 downto 0) => rxlpmgchold_in(1 downto 0),
      rxlpmgcovrden_in(1 downto 0) => rxlpmgcovrden_in(1 downto 0),
      rxlpmhfhold_in(1 downto 0) => rxlpmhfhold_in(1 downto 0),
      rxlpmhfovrden_in(1 downto 0) => rxlpmhfovrden_in(1 downto 0),
      rxlpmlfhold_in(1 downto 0) => rxlpmlfhold_in(1 downto 0),
      rxlpmlfklovrden_in(1 downto 0) => rxlpmlfklovrden_in(1 downto 0),
      rxlpmoshold_in(1 downto 0) => rxlpmoshold_in(1 downto 0),
      rxlpmosovrden_in(1 downto 0) => rxlpmosovrden_in(1 downto 0),
      rxmcommaalignen_in(1 downto 0) => rxmcommaalignen_in(1 downto 0),
      rxmonitorout_out(15 downto 0) => rxmonitorout_out(15 downto 0),
      rxmonitorsel_in(3 downto 0) => rxmonitorsel_in(3 downto 0),
      rxoobreset_in(1 downto 0) => rxoobreset_in(1 downto 0),
      rxoscalreset_in(1 downto 0) => rxoscalreset_in(1 downto 0),
      rxoshold_in(1 downto 0) => rxoshold_in(1 downto 0),
      rxosintdone_out(1 downto 0) => rxosintdone_out(1 downto 0),
      rxosintstarted_out(1 downto 0) => rxosintstarted_out(1 downto 0),
      rxosintstrobedone_out(1 downto 0) => rxosintstrobedone_out(1 downto 0),
      rxosintstrobestarted_out(1 downto 0) => rxosintstrobestarted_out(1 downto 0),
      rxosovrden_in(1 downto 0) => rxosovrden_in(1 downto 0),
      rxoutclk_out(1 downto 0) => rxoutclk_out(1 downto 0),
      rxoutclkfabric_out(1 downto 0) => rxoutclkfabric_out(1 downto 0),
      rxoutclkpcs_out(1 downto 0) => rxoutclkpcs_out(1 downto 0),
      rxoutclksel_in(5 downto 0) => rxoutclksel_in(5 downto 0),
      rxpcommaalignen_in(1 downto 0) => rxpcommaalignen_in(1 downto 0),
      rxpcsreset_in(1 downto 0) => rxpcsreset_in(1 downto 0),
      rxpd_in(3 downto 0) => rxpd_in(3 downto 0),
      rxphalign_in(1 downto 0) => rxphalign_in(1 downto 0),
      rxphaligndone_out(1 downto 0) => rxphaligndone_out(1 downto 0),
      rxphalignen_in(1 downto 0) => rxphalignen_in(1 downto 0),
      rxphalignerr_out(1 downto 0) => rxphalignerr_out(1 downto 0),
      rxphdlypd_in(1 downto 0) => rxphdlypd_in(1 downto 0),
      rxphdlyreset_in(1 downto 0) => rxphdlyreset_in(1 downto 0),
      rxpllclksel_in(3 downto 0) => rxpllclksel_in(3 downto 0),
      rxpmareset_in(1 downto 0) => rxpmareset_in(1 downto 0),
      rxpmaresetdone_out(1 downto 0) => rxpmaresetdone_out(1 downto 0),
      rxpolarity_in(1 downto 0) => rxpolarity_in(1 downto 0),
      rxprbscntreset_in(1 downto 0) => rxprbscntreset_in(1 downto 0),
      rxprbserr_out(1 downto 0) => rxprbserr_out(1 downto 0),
      rxprbslocked_out(1 downto 0) => rxprbslocked_out(1 downto 0),
      rxprbssel_in(7 downto 0) => rxprbssel_in(7 downto 0),
      rxprgdivresetdone_out(1 downto 0) => rxprgdivresetdone_out(1 downto 0),
      rxrate_in(5 downto 0) => rxrate_in(5 downto 0),
      rxratedone_out(1 downto 0) => rxratedone_out(1 downto 0),
      rxratemode_in(1 downto 0) => rxratemode_in(1 downto 0),
      rxrecclkout_out(1 downto 0) => rxrecclkout_out(1 downto 0),
      rxresetdone_out(1 downto 0) => rxresetdone_out(1 downto 0),
      rxslide_in(1 downto 0) => rxslide_in(1 downto 0),
      rxsliderdy_out(1 downto 0) => rxsliderdy_out(1 downto 0),
      rxslipdone_out(1 downto 0) => rxslipdone_out(1 downto 0),
      rxslipoutclk_in(1 downto 0) => rxslipoutclk_in(1 downto 0),
      rxslipoutclkrdy_out(1 downto 0) => rxslipoutclkrdy_out(1 downto 0),
      rxslippma_in(1 downto 0) => rxslippma_in(1 downto 0),
      rxslippmardy_out(1 downto 0) => rxslippmardy_out(1 downto 0),
      rxstartofseq_out(3 downto 0) => rxstartofseq_out(3 downto 0),
      rxstatus_out(5 downto 0) => rxstatus_out(5 downto 0),
      rxsyncallin_in(1 downto 0) => rxsyncallin_in(1 downto 0),
      rxsyncdone_out(1 downto 0) => rxsyncdone_out(1 downto 0),
      rxsyncin_in(1 downto 0) => rxsyncin_in(1 downto 0),
      rxsyncmode_in(1 downto 0) => rxsyncmode_in(1 downto 0),
      rxsyncout_out(1 downto 0) => rxsyncout_out(1 downto 0),
      rxsysclksel_in(3 downto 0) => rxsysclksel_in(3 downto 0),
      rxtermination_in(1 downto 0) => rxtermination_in(1 downto 0),
      rxvalid_out(1 downto 0) => rxvalid_out(1 downto 0),
      sigvalidclk_in(1 downto 0) => sigvalidclk_in(1 downto 0),
      tstin_in(39 downto 0) => tstin_in(39 downto 0),
      tx8b10bbypass_in(15 downto 0) => tx8b10bbypass_in(15 downto 0),
      tx8b10ben_in(1 downto 0) => tx8b10ben_in(1 downto 0),
      txbufstatus_out(3 downto 0) => txbufstatus_out(3 downto 0),
      txcomfinish_out(1 downto 0) => txcomfinish_out(1 downto 0),
      txcominit_in(1 downto 0) => txcominit_in(1 downto 0),
      txcomsas_in(1 downto 0) => txcomsas_in(1 downto 0),
      txcomwake_in(1 downto 0) => txcomwake_in(1 downto 0),
      txctrl0_in(31 downto 0) => txctrl0_in(31 downto 0),
      txctrl1_in(31 downto 0) => txctrl1_in(31 downto 0),
      txctrl2_in(15 downto 0) => txctrl2_in(15 downto 0),
      txdataextendrsvd_in(15 downto 0) => txdataextendrsvd_in(15 downto 0),
      txdccdone_out(1 downto 0) => txdccdone_out(1 downto 0),
      txdccforcestart_in(1 downto 0) => txdccforcestart_in(1 downto 0),
      txdccreset_in(1 downto 0) => txdccreset_in(1 downto 0),
      txdeemph_in(3 downto 0) => txdeemph_in(3 downto 0),
      txdetectrx_in(1 downto 0) => txdetectrx_in(1 downto 0),
      txdiffctrl_in(9 downto 0) => txdiffctrl_in(9 downto 0),
      txdlybypass_in(1 downto 0) => txdlybypass_in(1 downto 0),
      txdlyen_in(1 downto 0) => txdlyen_in(1 downto 0),
      txdlyhold_in(1 downto 0) => txdlyhold_in(1 downto 0),
      txdlyovrden_in(1 downto 0) => txdlyovrden_in(1 downto 0),
      txdlysreset_in(1 downto 0) => txdlysreset_in(1 downto 0),
      txdlysresetdone_out(1 downto 0) => txdlysresetdone_out(1 downto 0),
      txdlyupdown_in(1 downto 0) => txdlyupdown_in(1 downto 0),
      txelecidle_in(1 downto 0) => txelecidle_in(1 downto 0),
      txheader_in(11 downto 0) => txheader_in(11 downto 0),
      txinhibit_in(1 downto 0) => txinhibit_in(1 downto 0),
      txlatclk_in(1 downto 0) => txlatclk_in(1 downto 0),
      txlfpstreset_in(1 downto 0) => txlfpstreset_in(1 downto 0),
      txlfpsu2lpexit_in(1 downto 0) => txlfpsu2lpexit_in(1 downto 0),
      txlfpsu3wake_in(1 downto 0) => txlfpsu3wake_in(1 downto 0),
      txmaincursor_in(13 downto 0) => txmaincursor_in(13 downto 0),
      txmargin_in(5 downto 0) => txmargin_in(5 downto 0),
      txmuxdcdexhold_in(1 downto 0) => txmuxdcdexhold_in(1 downto 0),
      txmuxdcdorwren_in(1 downto 0) => txmuxdcdorwren_in(1 downto 0),
      txoneszeros_in(1 downto 0) => txoneszeros_in(1 downto 0),
      txoutclk_out(1 downto 0) => txoutclk_out(1 downto 0),
      txoutclkfabric_out(1 downto 0) => txoutclkfabric_out(1 downto 0),
      txoutclksel_in(5 downto 0) => txoutclksel_in(5 downto 0),
      txpcsreset_in(1 downto 0) => txpcsreset_in(1 downto 0),
      txpd_in(3 downto 0) => txpd_in(3 downto 0),
      txpdelecidlemode_in(1 downto 0) => txpdelecidlemode_in(1 downto 0),
      txphalign_in(1 downto 0) => txphalign_in(1 downto 0),
      txphaligndone_out(1 downto 0) => txphaligndone_out(1 downto 0),
      txphalignen_in(1 downto 0) => txphalignen_in(1 downto 0),
      txphdlypd_in(1 downto 0) => txphdlypd_in(1 downto 0),
      txphdlyreset_in(1 downto 0) => txphdlyreset_in(1 downto 0),
      txphdlytstclk_in(1 downto 0) => txphdlytstclk_in(1 downto 0),
      txphinit_in(1 downto 0) => txphinit_in(1 downto 0),
      txphinitdone_out(1 downto 0) => txphinitdone_out(1 downto 0),
      txphovrden_in(1 downto 0) => txphovrden_in(1 downto 0),
      txpippmen_in(1 downto 0) => txpippmen_in(1 downto 0),
      txpippmovrden_in(1 downto 0) => txpippmovrden_in(1 downto 0),
      txpippmpd_in(1 downto 0) => txpippmpd_in(1 downto 0),
      txpippmsel_in(1 downto 0) => txpippmsel_in(1 downto 0),
      txpippmstepsize_in(9 downto 0) => txpippmstepsize_in(9 downto 0),
      txpllclksel_in(3 downto 0) => txpllclksel_in(3 downto 0),
      txpmaresetdone_out(1 downto 0) => txpmaresetdone_out(1 downto 0),
      txpolarity_in(1 downto 0) => txpolarity_in(1 downto 0),
      txpostcursor_in(9 downto 0) => txpostcursor_in(9 downto 0),
      txprbsforceerr_in(1 downto 0) => txprbsforceerr_in(1 downto 0),
      txprbssel_in(7 downto 0) => txprbssel_in(7 downto 0),
      txprecursor_in(9 downto 0) => txprecursor_in(9 downto 0),
      txprgdivresetdone_out(1 downto 0) => txprgdivresetdone_out(1 downto 0),
      txratedone_out(1 downto 0) => txratedone_out(1 downto 0),
      txresetdone_out(1 downto 0) => txresetdone_out(1 downto 0),
      txsequence_in(13 downto 0) => txsequence_in(13 downto 0),
      txswing_in(1 downto 0) => txswing_in(1 downto 0),
      txsyncallin_in(1 downto 0) => txsyncallin_in(1 downto 0),
      txsyncdone_out(1 downto 0) => txsyncdone_out(1 downto 0),
      txsyncin_in(1 downto 0) => txsyncin_in(1 downto 0),
      txsyncmode_in(1 downto 0) => txsyncmode_in(1 downto 0),
      txsyncout_out(1 downto 0) => txsyncout_out(1 downto 0),
      txsysclksel_in(3 downto 0) => txsysclksel_in(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtye4_common_wrapper is
  port (
    drprdy_common_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor0_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor1_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubden_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubdwe_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdo_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubrsvdout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubtxuart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    sdm1testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    drpdo_common_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdaddr_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdi_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxrecclk0sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxrecclk1sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm0finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sdm1finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmarsvdout0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvdout1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_in0 : out STD_LOGIC;
    bgbypassb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgmonitorenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgpdb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgrcalovrdenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpclk_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpen_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0reset_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rcalenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubcfgstreamen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubdrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubenable_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubiolmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmcapture_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgupdate_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmshift_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmsysrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtck_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdi_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpdi_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdo_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sdm0width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm1width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubgpi_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubintr_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm0data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sdm1data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcierateqpll0_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pcierateqpll1_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll0refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll1refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ubmdmregen_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bgrcalovrd_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd2_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd3_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pmarsvd0_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll1fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd4_in : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtye4_common_wrapper : entity is "gtwizard_ultrascale_0_gtye4_common_wrapper";
end gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtye4_common_wrapper;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtye4_common_wrapper is
begin
common_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_common
     port map (
      bgbypassb_in(0) => bgbypassb_in(0),
      bgmonitorenb_in(0) => bgmonitorenb_in(0),
      bgpdb_in(0) => bgpdb_in(0),
      bgrcalovrd_in(4 downto 0) => bgrcalovrd_in(4 downto 0),
      bgrcalovrdenb_in(0) => bgrcalovrdenb_in(0),
      drpaddr_common_in(15 downto 0) => drpaddr_common_in(15 downto 0),
      drpclk_common_in(0) => drpclk_common_in(0),
      drpdi_common_in(15 downto 0) => drpdi_common_in(15 downto 0),
      drpdo_common_out(15 downto 0) => drpdo_common_out(15 downto 0),
      drpen_common_in(0) => drpen_common_in(0),
      drprdy_common_out(0) => drprdy_common_out(0),
      drpwe_common_in(0) => drpwe_common_in(0),
      gtgrefclk0_in(0) => gtgrefclk0_in(0),
      gtgrefclk1_in(0) => gtgrefclk1_in(0),
      gtnorthrefclk00_in(0) => gtnorthrefclk00_in(0),
      gtnorthrefclk01_in(0) => gtnorthrefclk01_in(0),
      gtnorthrefclk10_in(0) => gtnorthrefclk10_in(0),
      gtnorthrefclk11_in(0) => gtnorthrefclk11_in(0),
      gtrefclk00_in(0) => gtrefclk00_in(0),
      gtrefclk01_in(0) => gtrefclk01_in(0),
      gtrefclk10_in(0) => gtrefclk10_in(0),
      gtrefclk11_in(0) => gtrefclk11_in(0),
      gtsouthrefclk00_in(0) => gtsouthrefclk00_in(0),
      gtsouthrefclk01_in(0) => gtsouthrefclk01_in(0),
      gtsouthrefclk10_in(0) => gtsouthrefclk10_in(0),
      gtsouthrefclk11_in(0) => gtsouthrefclk11_in(0),
      gtwiz_reset_qpll0reset_out(0) => gtwiz_reset_qpll0reset_out(0),
      pcierateqpll0_in(2 downto 0) => pcierateqpll0_in(2 downto 0),
      pcierateqpll1_in(2 downto 0) => pcierateqpll1_in(2 downto 0),
      pmarsvd0_in(7 downto 0) => pmarsvd0_in(7 downto 0),
      pmarsvd1_in(7 downto 0) => pmarsvd1_in(7 downto 0),
      pmarsvdout0_out(7 downto 0) => pmarsvdout0_out(7 downto 0),
      pmarsvdout1_out(7 downto 0) => pmarsvdout1_out(7 downto 0),
      qpll0clkrsvd0_in(0) => qpll0clkrsvd0_in(0),
      qpll0clkrsvd1_in(0) => qpll0clkrsvd1_in(0),
      qpll0fbclklost_out(0) => qpll0fbclklost_out(0),
      qpll0fbdiv_in(7 downto 0) => qpll0fbdiv_in(7 downto 0),
      qpll0lock_out(0) => qpll0lock_out(0),
      qpll0lockdetclk_in(0) => qpll0lockdetclk_in(0),
      qpll0locken_in(0) => qpll0locken_in(0),
      qpll0outclk_out(0) => qpll0outclk_out(0),
      qpll0outrefclk_out(0) => qpll0outrefclk_out(0),
      qpll0pd_in(0) => qpll0pd_in(0),
      qpll0refclklost_out(0) => qpll0refclklost_out(0),
      qpll0refclksel_in(2 downto 0) => qpll0refclksel_in(2 downto 0),
      qpll1clkrsvd0_in(0) => qpll1clkrsvd0_in(0),
      qpll1clkrsvd1_in(0) => qpll1clkrsvd1_in(0),
      qpll1fbclklost_out(0) => qpll1fbclklost_out(0),
      qpll1fbdiv_in(7 downto 0) => qpll1fbdiv_in(7 downto 0),
      qpll1lock_out(0) => qpll1lock_out(0),
      qpll1lockdetclk_in(0) => qpll1lockdetclk_in(0),
      qpll1locken_in(0) => qpll1locken_in(0),
      qpll1outclk_out(0) => qpll1outclk_out(0),
      qpll1outrefclk_out(0) => qpll1outrefclk_out(0),
      qpll1pd_in(0) => qpll1pd_in(0),
      qpll1refclklost_out(0) => qpll1refclklost_out(0),
      qpll1refclksel_in(2 downto 0) => qpll1refclksel_in(2 downto 0),
      qpll1reset_in(0) => qpll1reset_in(0),
      qplldmonitor0_out(7 downto 0) => qplldmonitor0_out(7 downto 0),
      qplldmonitor1_out(7 downto 0) => qplldmonitor1_out(7 downto 0),
      qpllrsvd1_in(7 downto 0) => qpllrsvd1_in(7 downto 0),
      qpllrsvd2_in(4 downto 0) => qpllrsvd2_in(4 downto 0),
      qpllrsvd3_in(4 downto 0) => qpllrsvd3_in(4 downto 0),
      qpllrsvd4_in(7 downto 0) => qpllrsvd4_in(7 downto 0),
      rcalenb_in(0) => rcalenb_in(0),
      refclkoutmonitor0_out(0) => refclkoutmonitor0_out(0),
      refclkoutmonitor1_out(0) => refclkoutmonitor1_out(0),
      rst_in0 => rst_in0,
      rxrecclk0sel_out(1 downto 0) => rxrecclk0sel_out(1 downto 0),
      rxrecclk1sel_out(1 downto 0) => rxrecclk1sel_out(1 downto 0),
      sdm0data_in(24 downto 0) => sdm0data_in(24 downto 0),
      sdm0finalout_out(3 downto 0) => sdm0finalout_out(3 downto 0),
      sdm0reset_in(0) => sdm0reset_in(0),
      sdm0testdata_out(14 downto 0) => sdm0testdata_out(14 downto 0),
      sdm0toggle_in(0) => sdm0toggle_in(0),
      sdm0width_in(1 downto 0) => sdm0width_in(1 downto 0),
      sdm1data_in(24 downto 0) => sdm1data_in(24 downto 0),
      sdm1finalout_out(3 downto 0) => sdm1finalout_out(3 downto 0),
      sdm1reset_in(0) => sdm1reset_in(0),
      sdm1testdata_out(14 downto 0) => sdm1testdata_out(14 downto 0),
      sdm1toggle_in(0) => sdm1toggle_in(0),
      sdm1width_in(1 downto 0) => sdm1width_in(1 downto 0),
      ubcfgstreamen_in(0) => ubcfgstreamen_in(0),
      ubdaddr_out(15 downto 0) => ubdaddr_out(15 downto 0),
      ubden_out(0) => ubden_out(0),
      ubdi_out(15 downto 0) => ubdi_out(15 downto 0),
      ubdo_in(15 downto 0) => ubdo_in(15 downto 0),
      ubdrdy_in(0) => ubdrdy_in(0),
      ubdwe_out(0) => ubdwe_out(0),
      ubenable_in(0) => ubenable_in(0),
      ubgpi_in(1 downto 0) => ubgpi_in(1 downto 0),
      ubintr_in(1 downto 0) => ubintr_in(1 downto 0),
      ubiolmbrst_in(0) => ubiolmbrst_in(0),
      ubmbrst_in(0) => ubmbrst_in(0),
      ubmdmcapture_in(0) => ubmdmcapture_in(0),
      ubmdmdbgrst_in(0) => ubmdmdbgrst_in(0),
      ubmdmdbgupdate_in(0) => ubmdmdbgupdate_in(0),
      ubmdmregen_in(3 downto 0) => ubmdmregen_in(3 downto 0),
      ubmdmshift_in(0) => ubmdmshift_in(0),
      ubmdmsysrst_in(0) => ubmdmsysrst_in(0),
      ubmdmtck_in(0) => ubmdmtck_in(0),
      ubmdmtdi_in(0) => ubmdmtdi_in(0),
      ubmdmtdo_out(0) => ubmdmtdo_out(0),
      ubrsvdout_out(0) => ubrsvdout_out(0),
      ubtxuart_out(0) => ubtxuart_out(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtwiz_reset is
  port (
    GTYE4_CHANNEL_TXPROGDIVRESET : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    GTYE4_CHANNEL_TXUSERRDY : out STD_LOGIC_VECTOR ( 0 to 0 );
    GTYE4_CHANNEL_RXPROGDIVRESET : out STD_LOGIC_VECTOR ( 0 to 0 );
    GTYE4_CHANNEL_GTRXRESET : out STD_LOGIC_VECTOR ( 0 to 0 );
    GTYE4_CHANNEL_RXUSERRDY : out STD_LOGIC_VECTOR ( 0 to 0 );
    GTYE4_CHANNEL_GTTXRESET : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtwiz_reset_qpll0reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    in0 : in STD_LOGIC;
    gtwiz_userclk_tx_active_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lock_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_in_meta_reg : in STD_LOGIC;
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_in0 : in STD_LOGIC;
    gtwiz_userclk_tx_usrclk2_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk2_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_int_reg_0 : in STD_LOGIC;
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtpowergood_out : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GTYE4_CHANNEL_GTPOWERGOOD : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtwiz_reset_rx_done_int_reg_0 : in STD_LOGIC;
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtwiz_reset : entity is "gtwizard_ultrascale_v1_7_5_gtwiz_reset";
end gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtwiz_reset;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtwiz_reset is
  signal \FSM_sequential_sm_reset_all[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_all[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_all[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_all[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_all[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_rx[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_rx[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_rx[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_tx[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_tx[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sm_reset_tx[2]_i_8_n_0\ : STD_LOGIC;
  signal \^gtye4_channel_gtrxreset\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gtye4_channel_rxprogdivreset\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gtye4_channel_rxuserrdy\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gtye4_channel_txuserrdy\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bit_synchronizer_gtpowergood_inst_n_0 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_0 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_0 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_plllock_rx_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_plllock_rx_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_plllock_tx_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_plllock_tx_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_plllock_tx_inst_n_3 : STD_LOGIC;
  signal bit_synchronizer_rxcdrlock_inst_n_1 : STD_LOGIC;
  signal bit_synchronizer_rxcdrlock_inst_n_2 : STD_LOGIC;
  signal bit_synchronizer_rxcdrlock_inst_n_3 : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_gttxreset_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int\ : STD_LOGIC;
  signal gtwiz_reset_all_sync : STD_LOGIC;
  signal gtwiz_reset_rx_any_sync : STD_LOGIC;
  signal gtwiz_reset_rx_datapath_dly : STD_LOGIC;
  signal gtwiz_reset_rx_datapath_int_i_1_n_0 : STD_LOGIC;
  signal gtwiz_reset_rx_datapath_int_reg_n_0 : STD_LOGIC;
  signal gtwiz_reset_rx_datapath_sync : STD_LOGIC;
  signal gtwiz_reset_rx_done_int_reg_n_0 : STD_LOGIC;
  signal gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0 : STD_LOGIC;
  signal gtwiz_reset_rx_pll_and_datapath_int_reg_n_0 : STD_LOGIC;
  signal gtwiz_reset_rx_pll_and_datapath_sync : STD_LOGIC;
  signal gtwiz_reset_tx_any_sync : STD_LOGIC;
  signal gtwiz_reset_tx_datapath_dly : STD_LOGIC;
  signal gtwiz_reset_tx_datapath_sync : STD_LOGIC;
  signal gtwiz_reset_tx_done_int_i_2_n_0 : STD_LOGIC;
  signal gtwiz_reset_tx_done_int_reg_n_0 : STD_LOGIC;
  signal gtwiz_reset_tx_pll_and_datapath_dly : STD_LOGIC;
  signal gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0 : STD_LOGIC;
  signal gtwiz_reset_tx_pll_and_datapath_int_reg_n_0 : STD_LOGIC;
  signal gtwiz_reset_tx_pll_and_datapath_sync : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal plllock_rx_sync : STD_LOGIC;
  signal plllock_tx_sync : STD_LOGIC;
  signal reset_synchronizer_gtwiz_reset_rx_any_inst_n_1 : STD_LOGIC;
  signal reset_synchronizer_gtwiz_reset_rx_any_inst_n_2 : STD_LOGIC;
  signal reset_synchronizer_gtwiz_reset_rx_any_inst_n_3 : STD_LOGIC;
  signal reset_synchronizer_gtwiz_reset_tx_any_inst_n_1 : STD_LOGIC;
  signal reset_synchronizer_gtwiz_reset_tx_any_inst_n_2 : STD_LOGIC;
  signal sm_reset_all : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sm_reset_all_timer_clr_i_1_n_0 : STD_LOGIC;
  signal sm_reset_all_timer_clr_i_2_n_0 : STD_LOGIC;
  signal sm_reset_all_timer_clr_reg_n_0 : STD_LOGIC;
  signal sm_reset_all_timer_ctr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sm_reset_all_timer_ctr0_inferred__0/i__n_0\ : STD_LOGIC;
  signal \sm_reset_all_timer_ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_all_timer_ctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_all_timer_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal sm_reset_all_timer_sat : STD_LOGIC;
  signal sm_reset_all_timer_sat_i_1_n_0 : STD_LOGIC;
  signal sm_reset_rx : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sm_reset_rx_cdr_to_clr : STD_LOGIC;
  signal sm_reset_rx_cdr_to_clr_i_3_n_0 : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_3_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_4_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_5_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_6_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr[0]_i_7_n_0\ : STD_LOGIC;
  signal sm_reset_rx_cdr_to_ctr_reg : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat_i_1_n_0 : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat_i_2_n_0 : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat_i_3_n_0 : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat_i_4_n_0 : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat_i_5_n_0 : STD_LOGIC;
  signal sm_reset_rx_cdr_to_sat_i_6_n_0 : STD_LOGIC;
  signal sm_reset_rx_pll_timer_clr_i_1_n_0 : STD_LOGIC;
  signal sm_reset_rx_pll_timer_clr_reg_n_0 : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr[3]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr[9]_i_3_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_pll_timer_ctr_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sm_reset_rx_pll_timer_sat : STD_LOGIC;
  signal sm_reset_rx_pll_timer_sat_i_1_n_0 : STD_LOGIC;
  signal sm_reset_rx_pll_timer_sat_i_2_n_0 : STD_LOGIC;
  signal sm_reset_rx_pll_timer_sat_i_3_n_0 : STD_LOGIC;
  signal sm_reset_rx_timer_clr_reg_n_0 : STD_LOGIC;
  signal sm_reset_rx_timer_ctr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sm_reset_rx_timer_ctr0_inferred__0/i__n_0\ : STD_LOGIC;
  signal \sm_reset_rx_timer_ctr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_timer_ctr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_rx_timer_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal sm_reset_rx_timer_sat : STD_LOGIC;
  signal sm_reset_rx_timer_sat_i_1_n_0 : STD_LOGIC;
  signal sm_reset_tx : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sm_reset_tx_pll_timer_clr : STD_LOGIC;
  signal sm_reset_tx_pll_timer_clr_i_1_n_0 : STD_LOGIC;
  signal sm_reset_tx_pll_timer_clr_reg_n_0 : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr[2]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr[3]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\ : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr[9]_i_3_n_0\ : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\ : STD_LOGIC;
  signal \sm_reset_tx_pll_timer_ctr_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal sm_reset_tx_pll_timer_sat : STD_LOGIC;
  signal sm_reset_tx_pll_timer_sat_i_1_n_0 : STD_LOGIC;
  signal sm_reset_tx_pll_timer_sat_i_2_n_0 : STD_LOGIC;
  signal sm_reset_tx_pll_timer_sat_i_3_n_0 : STD_LOGIC;
  signal sm_reset_tx_timer_clr_reg_n_0 : STD_LOGIC;
  signal sm_reset_tx_timer_ctr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sm_reset_tx_timer_sat : STD_LOGIC;
  signal sm_reset_tx_timer_sat_i_1_n_0 : STD_LOGIC;
  signal \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_all[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_all[2]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_all[2]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_all[2]_i_4\ : label is "soft_lutpair15";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_all_reg[0]\ : label is "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_all_reg[1]\ : label is "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_all_reg[2]\ : label is "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_rx[1]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_rx[2]_i_6\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_rx_reg[0]\ : label is "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_rx_reg[1]\ : label is "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_rx_reg[2]\ : label is "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_tx[2]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_tx[2]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_tx[2]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_sm_reset_tx[2]_i_8\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_tx_reg[0]\ : label is "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_tx_reg[1]\ : label is "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_sm_reset_tx_reg[2]\ : label is "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001";
  attribute SOFT_HLUTNM of gtwiz_reset_rx_datapath_int_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of gtwiz_reset_tx_pll_and_datapath_int_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gtye4_channel_gen.gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sm_reset_all_timer_ctr[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sm_reset_all_timer_ctr[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of sm_reset_rx_cdr_to_clr_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sm_reset_rx_pll_timer_ctr[9]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of sm_reset_rx_pll_timer_sat_i_2 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sm_reset_rx_timer_ctr[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sm_reset_rx_timer_ctr[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of sm_reset_rx_timer_sat_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of sm_reset_tx_pll_timer_clr_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sm_reset_tx_pll_timer_ctr[9]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of sm_reset_tx_pll_timer_sat_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sm_reset_tx_timer_ctr[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sm_reset_tx_timer_ctr[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of sm_reset_tx_timer_sat_i_1 : label is "soft_lutpair9";
begin
  GTYE4_CHANNEL_GTRXRESET(0) <= \^gtye4_channel_gtrxreset\(0);
  GTYE4_CHANNEL_RXPROGDIVRESET(0) <= \^gtye4_channel_rxprogdivreset\(0);
  GTYE4_CHANNEL_RXUSERRDY(0) <= \^gtye4_channel_rxuserrdy\(0);
  GTYE4_CHANNEL_TXUSERRDY(0) <= \^gtye4_channel_txuserrdy\(0);
\FSM_sequential_sm_reset_all[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFF70000FFFFFF"
    )
        port map (
      I0 => gtwiz_reset_rx_done_int_reg_n_0,
      I1 => sm_reset_all_timer_sat,
      I2 => sm_reset_all_timer_clr_reg_n_0,
      I3 => sm_reset_all(2),
      I4 => sm_reset_all(1),
      I5 => sm_reset_all(0),
      O => \FSM_sequential_sm_reset_all[0]_i_1_n_0\
    );
\FSM_sequential_sm_reset_all[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => sm_reset_all(2),
      I1 => sm_reset_all(1),
      I2 => sm_reset_all(0),
      O => \FSM_sequential_sm_reset_all[1]_i_1_n_0\
    );
\FSM_sequential_sm_reset_all[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4A"
    )
        port map (
      I0 => sm_reset_all(2),
      I1 => sm_reset_all(0),
      I2 => sm_reset_all(1),
      O => \FSM_sequential_sm_reset_all[2]_i_2_n_0\
    );
\FSM_sequential_sm_reset_all[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sm_reset_all_timer_sat,
      I1 => gtwiz_reset_rx_done_int_reg_n_0,
      I2 => sm_reset_all_timer_clr_reg_n_0,
      O => \FSM_sequential_sm_reset_all[2]_i_3_n_0\
    );
\FSM_sequential_sm_reset_all[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sm_reset_all_timer_clr_reg_n_0,
      I1 => sm_reset_all_timer_sat,
      I2 => gtwiz_reset_tx_done_int_reg_n_0,
      O => \FSM_sequential_sm_reset_all[2]_i_4_n_0\
    );
\FSM_sequential_sm_reset_all_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtpowergood_inst_n_0,
      D => \FSM_sequential_sm_reset_all[0]_i_1_n_0\,
      Q => sm_reset_all(0),
      R => gtwiz_reset_all_sync
    );
\FSM_sequential_sm_reset_all_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtpowergood_inst_n_0,
      D => \FSM_sequential_sm_reset_all[1]_i_1_n_0\,
      Q => sm_reset_all(1),
      R => gtwiz_reset_all_sync
    );
\FSM_sequential_sm_reset_all_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtpowergood_inst_n_0,
      D => \FSM_sequential_sm_reset_all[2]_i_2_n_0\,
      Q => sm_reset_all(2),
      R => gtwiz_reset_all_sync
    );
\FSM_sequential_sm_reset_rx[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\(1),
      I1 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\(0),
      I2 => sm_reset_rx(1),
      I3 => sm_reset_rx_timer_sat,
      I4 => sm_reset_rx_timer_clr_reg_n_0,
      O => \FSM_sequential_sm_reset_rx[1]_i_2_n_0\
    );
\FSM_sequential_sm_reset_rx[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDDDDDDD88888888"
    )
        port map (
      I0 => sm_reset_rx(1),
      I1 => sm_reset_rx(0),
      I2 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\(0),
      I3 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\(1),
      I4 => \FSM_sequential_sm_reset_rx[2]_i_6_n_0\,
      I5 => sm_reset_rx(2),
      O => \FSM_sequential_sm_reset_rx[2]_i_2_n_0\
    );
\FSM_sequential_sm_reset_rx[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_rx_timer_sat,
      I1 => sm_reset_rx_timer_clr_reg_n_0,
      O => \FSM_sequential_sm_reset_rx[2]_i_6_n_0\
    );
\FSM_sequential_sm_reset_rx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2,
      D => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1,
      Q => sm_reset_rx(0),
      R => gtwiz_reset_rx_any_sync
    );
\FSM_sequential_sm_reset_rx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2,
      D => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_0,
      Q => sm_reset_rx(1),
      R => gtwiz_reset_rx_any_sync
    );
\FSM_sequential_sm_reset_rx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2,
      D => \FSM_sequential_sm_reset_rx[2]_i_2_n_0\,
      Q => sm_reset_rx(2),
      R => gtwiz_reset_rx_any_sync
    );
\FSM_sequential_sm_reset_tx[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => sm_reset_tx(0),
      I1 => sm_reset_tx(1),
      I2 => sm_reset_tx(2),
      O => \FSM_sequential_sm_reset_tx[2]_i_2_n_0\
    );
\FSM_sequential_sm_reset_tx[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_reset_tx(1),
      I1 => sm_reset_tx(2),
      O => sm_reset_tx_pll_timer_clr
    );
\FSM_sequential_sm_reset_tx[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => sm_reset_tx(1),
      I1 => sm_reset_tx(2),
      I2 => sm_reset_tx_timer_clr_reg_n_0,
      I3 => sm_reset_tx_timer_sat,
      O => \FSM_sequential_sm_reset_tx[2]_i_6_n_0\
    );
\FSM_sequential_sm_reset_tx[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sm_reset_tx_timer_sat,
      I1 => sm_reset_tx_timer_clr_reg_n_0,
      O => \FSM_sequential_sm_reset_tx[2]_i_8_n_0\
    );
\FSM_sequential_sm_reset_tx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_0,
      D => bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2,
      Q => sm_reset_tx(0),
      R => gtwiz_reset_tx_any_sync
    );
\FSM_sequential_sm_reset_tx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_0,
      D => bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1,
      Q => sm_reset_tx(1),
      R => gtwiz_reset_tx_any_sync
    );
\FSM_sequential_sm_reset_tx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_0,
      D => \FSM_sequential_sm_reset_tx[2]_i_2_n_0\,
      Q => sm_reset_tx(2),
      R => gtwiz_reset_tx_any_sync
    );
bit_synchronizer_gtpowergood_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_4
     port map (
      E(0) => bit_synchronizer_gtpowergood_inst_n_0,
      \FSM_sequential_sm_reset_all_reg[0]\ => \FSM_sequential_sm_reset_all[2]_i_3_n_0\,
      \FSM_sequential_sm_reset_all_reg[0]_0\ => \FSM_sequential_sm_reset_all[2]_i_4_n_0\,
      Q(2 downto 0) => sm_reset_all(2 downto 0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      in0 => in0
    );
bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_5
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_datapath_dly => gtwiz_reset_rx_datapath_dly,
      in0 => gtwiz_reset_rx_datapath_sync
    );
bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_6
     port map (
      D(1) => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_0,
      D(0) => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_1,
      E(0) => bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2,
      \FSM_sequential_sm_reset_rx_reg[0]\ => \FSM_sequential_sm_reset_rx[1]_i_2_n_0\,
      \FSM_sequential_sm_reset_rx_reg[0]_0\ => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0,
      \FSM_sequential_sm_reset_rx_reg[0]_1\ => bit_synchronizer_rxcdrlock_inst_n_1,
      Q(2 downto 0) => sm_reset_rx(2 downto 0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_datapath_dly => gtwiz_reset_rx_datapath_dly,
      in0 => gtwiz_reset_rx_pll_and_datapath_sync
    );
bit_synchronizer_gtwiz_reset_tx_datapath_dly_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_7
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_datapath_dly => gtwiz_reset_tx_datapath_dly,
      in0 => gtwiz_reset_tx_datapath_sync
    );
bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_8
     port map (
      D(1) => bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_1,
      D(0) => bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_2,
      Q(2 downto 0) => sm_reset_tx(2 downto 0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_pll_and_datapath_dly => gtwiz_reset_tx_pll_and_datapath_dly,
      in0 => gtwiz_reset_tx_pll_and_datapath_sync
    );
bit_synchronizer_gtwiz_reset_userclk_rx_active_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_9
     port map (
      \FSM_sequential_sm_reset_rx_reg[0]\ => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1,
      \FSM_sequential_sm_reset_rx_reg[0]_0\ => sm_reset_rx_pll_timer_clr_reg_n_0,
      \FSM_sequential_sm_reset_rx_reg[1]\ => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0,
      \FSM_sequential_sm_reset_rx_reg[2]\ => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2,
      GTYE4_CHANNEL_RXUSERRDY(0) => \^gtye4_channel_rxuserrdy\(0),
      Q(2 downto 0) => sm_reset_rx(2 downto 0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_any_sync => gtwiz_reset_rx_any_sync,
      gtwiz_userclk_rx_active_out(0) => gtwiz_userclk_rx_active_out(0),
      plllock_rx_sync => plllock_rx_sync,
      sm_reset_rx_pll_timer_sat => sm_reset_rx_pll_timer_sat,
      sm_reset_rx_timer_clr_reg => \FSM_sequential_sm_reset_rx[2]_i_6_n_0\,
      sm_reset_rx_timer_clr_reg_0 => sm_reset_rx_timer_clr_reg_n_0,
      sm_reset_rx_timer_clr_reg_1 => \FSM_sequential_sm_reset_rx[1]_i_2_n_0\,
      sm_reset_rx_timer_sat => sm_reset_rx_timer_sat
    );
bit_synchronizer_gtwiz_reset_userclk_tx_active_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_10
     port map (
      E(0) => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_0,
      \FSM_sequential_sm_reset_tx_reg[0]\ => bit_synchronizer_plllock_tx_inst_n_1,
      \FSM_sequential_sm_reset_tx_reg[0]_0\ => \FSM_sequential_sm_reset_tx[2]_i_6_n_0\,
      \FSM_sequential_sm_reset_tx_reg[0]_1\ => sm_reset_tx_pll_timer_clr_reg_n_0,
      \FSM_sequential_sm_reset_tx_reg[1]\ => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2,
      \FSM_sequential_sm_reset_tx_reg[2]\ => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1,
      GTYE4_CHANNEL_TXUSERRDY(0) => \^gtye4_channel_txuserrdy\(0),
      Q(2 downto 0) => sm_reset_tx(2 downto 0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_any_sync => gtwiz_reset_tx_any_sync,
      gtwiz_reset_tx_datapath_dly => gtwiz_reset_tx_datapath_dly,
      gtwiz_reset_tx_pll_and_datapath_dly => gtwiz_reset_tx_pll_and_datapath_dly,
      gtwiz_userclk_tx_active_out(0) => gtwiz_userclk_tx_active_out(0),
      plllock_tx_sync => plllock_tx_sync,
      sm_reset_tx_pll_timer_clr => sm_reset_tx_pll_timer_clr,
      sm_reset_tx_pll_timer_sat => sm_reset_tx_pll_timer_sat,
      sm_reset_tx_timer_clr_reg => gtwiz_reset_tx_done_int_reg_0,
      sm_reset_tx_timer_clr_reg_0 => \FSM_sequential_sm_reset_tx[2]_i_8_n_0\,
      sm_reset_tx_timer_clr_reg_1 => sm_reset_tx_timer_clr_reg_n_0,
      sm_reset_tx_timer_sat => sm_reset_tx_timer_sat
    );
bit_synchronizer_plllock_rx_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_11
     port map (
      Q(2 downto 0) => sm_reset_rx(2 downto 0),
      gtrxreset_out_reg => sm_reset_rx_timer_clr_reg_n_0,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_done_int_reg => \FSM_sequential_sm_reset_rx[1]_i_2_n_0\,
      gtwiz_reset_rx_done_int_reg_0 => gtwiz_reset_rx_done_int_reg_0,
      gtwiz_reset_rx_done_int_reg_1 => \FSM_sequential_sm_reset_rx[2]_i_6_n_0\,
      gtwiz_reset_rx_done_int_reg_2 => gtwiz_reset_rx_done_int_reg_n_0,
      i_in_out_reg_0 => bit_synchronizer_plllock_rx_inst_n_1,
      i_in_out_reg_1 => bit_synchronizer_plllock_rx_inst_n_2,
      plllock_rx_sync => plllock_rx_sync,
      qpll0lock_out(0) => qpll0lock_out(0),
      sm_reset_rx_timer_sat => sm_reset_rx_timer_sat
    );
bit_synchronizer_plllock_tx_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_12
     port map (
      \FSM_sequential_sm_reset_tx_reg[0]\ => bit_synchronizer_plllock_tx_inst_n_3,
      \FSM_sequential_sm_reset_tx_reg[0]_0\ => \FSM_sequential_sm_reset_tx[2]_i_8_n_0\,
      Q(2 downto 0) => sm_reset_tx(2 downto 0),
      gttxreset_out_reg => sm_reset_tx_timer_clr_reg_n_0,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_any_sync => gtwiz_reset_tx_any_sync,
      gtwiz_reset_tx_done_int_reg => gtwiz_reset_tx_done_int_reg_0,
      gtwiz_reset_tx_done_int_reg_0 => gtwiz_reset_tx_done_int_i_2_n_0,
      gtwiz_reset_tx_done_int_reg_1 => gtwiz_reset_tx_done_int_reg_n_0,
      i_in_out_reg_0 => bit_synchronizer_plllock_tx_inst_n_1,
      plllock_tx_sync => plllock_tx_sync,
      qpll0lock_out(0) => qpll0lock_out(0),
      sm_reset_tx_timer_sat => sm_reset_tx_timer_sat,
      sm_reset_tx_timer_sat_reg => bit_synchronizer_plllock_tx_inst_n_2
    );
bit_synchronizer_rxcdrlock_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_13
     port map (
      \FSM_sequential_sm_reset_rx_reg[0]\ => \FSM_sequential_sm_reset_rx[2]_i_6_n_0\,
      \FSM_sequential_sm_reset_rx_reg[1]\ => bit_synchronizer_rxcdrlock_inst_n_1,
      \FSM_sequential_sm_reset_rx_reg[2]\ => bit_synchronizer_rxcdrlock_inst_n_3,
      Q(2 downto 0) => sm_reset_rx(2 downto 0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_cdr_stable_out(0) => gtwiz_reset_rx_cdr_stable_out(0),
      i_in_meta_reg_0 => i_in_meta_reg,
      plllock_rx_sync => plllock_rx_sync,
      sm_reset_rx_cdr_to_clr => sm_reset_rx_cdr_to_clr,
      sm_reset_rx_cdr_to_clr_reg => sm_reset_rx_cdr_to_clr_i_3_n_0,
      sm_reset_rx_cdr_to_sat => sm_reset_rx_cdr_to_sat,
      sm_reset_rx_cdr_to_sat_reg => bit_synchronizer_rxcdrlock_inst_n_2
    );
gtrxreset_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => reset_synchronizer_gtwiz_reset_rx_any_inst_n_3,
      Q => \^gtye4_channel_gtrxreset\(0),
      R => '0'
    );
gttxreset_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => reset_synchronizer_gtwiz_reset_tx_any_inst_n_2,
      Q => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_gttxreset_int\,
      R => '0'
    );
\gtwiz_reset_qpll0reset_out[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int\,
      I1 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int\,
      O => gtwiz_reset_qpll0reset_out(0)
    );
gtwiz_reset_rx_datapath_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F740"
    )
        port map (
      I0 => sm_reset_all(2),
      I1 => sm_reset_all(0),
      I2 => sm_reset_all(1),
      I3 => gtwiz_reset_rx_datapath_int_reg_n_0,
      O => gtwiz_reset_rx_datapath_int_i_1_n_0
    );
gtwiz_reset_rx_datapath_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_reset_rx_datapath_int_i_1_n_0,
      Q => gtwiz_reset_rx_datapath_int_reg_n_0,
      R => gtwiz_reset_all_sync
    );
gtwiz_reset_rx_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_plllock_rx_inst_n_2,
      Q => gtwiz_reset_rx_done_int_reg_n_0,
      R => gtwiz_reset_rx_any_sync
    );
gtwiz_reset_rx_pll_and_datapath_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F704"
    )
        port map (
      I0 => sm_reset_all(0),
      I1 => sm_reset_all(2),
      I2 => sm_reset_all(1),
      I3 => gtwiz_reset_rx_pll_and_datapath_int_reg_n_0,
      O => gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0
    );
gtwiz_reset_rx_pll_and_datapath_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0,
      Q => gtwiz_reset_rx_pll_and_datapath_int_reg_n_0,
      R => gtwiz_reset_all_sync
    );
gtwiz_reset_tx_done_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => sm_reset_tx(1),
      I1 => sm_reset_tx_timer_sat,
      I2 => sm_reset_tx_timer_clr_reg_n_0,
      I3 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\(1),
      I4 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\(0),
      O => gtwiz_reset_tx_done_int_i_2_n_0
    );
gtwiz_reset_tx_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_plllock_tx_inst_n_3,
      Q => gtwiz_reset_tx_done_int_reg_n_0,
      R => gtwiz_reset_tx_any_sync
    );
gtwiz_reset_tx_pll_and_datapath_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB02"
    )
        port map (
      I0 => sm_reset_all(0),
      I1 => sm_reset_all(1),
      I2 => sm_reset_all(2),
      I3 => gtwiz_reset_tx_pll_and_datapath_int_reg_n_0,
      O => gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0
    );
gtwiz_reset_tx_pll_and_datapath_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0,
      Q => gtwiz_reset_tx_pll_and_datapath_int_reg_n_0,
      R => gtwiz_reset_all_sync
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_gttxreset_int\,
      I1 => gtpowergood_out(0),
      I2 => GTYE4_CHANNEL_GTPOWERGOOD(0),
      O => GTYE4_CHANNEL_GTTXRESET(0)
    );
\gtye4_channel_gen.gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_gttxreset_int\,
      I1 => gtpowergood_out(1),
      I2 => GTYE4_CHANNEL_GTPOWERGOOD(1),
      O => GTYE4_CHANNEL_GTTXRESET(1)
    );
pllreset_rx_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => reset_synchronizer_gtwiz_reset_rx_any_inst_n_1,
      Q => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int\,
      R => '0'
    );
pllreset_tx_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => reset_synchronizer_gtwiz_reset_tx_any_inst_n_1,
      Q => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int\,
      R => '0'
    );
reset_synchronizer_gtwiz_reset_all_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer
     port map (
      gtwiz_reset_all_in(0) => gtwiz_reset_all_in(0),
      gtwiz_reset_all_sync => gtwiz_reset_all_sync,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0)
    );
reset_synchronizer_gtwiz_reset_rx_any_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_14
     port map (
      \FSM_sequential_sm_reset_rx_reg[1]\ => reset_synchronizer_gtwiz_reset_rx_any_inst_n_1,
      \FSM_sequential_sm_reset_rx_reg[1]_0\ => reset_synchronizer_gtwiz_reset_rx_any_inst_n_2,
      \FSM_sequential_sm_reset_rx_reg[1]_1\ => reset_synchronizer_gtwiz_reset_rx_any_inst_n_3,
      GTYE4_CHANNEL_GTRXRESET(0) => \^gtye4_channel_gtrxreset\(0),
      GTYE4_CHANNEL_RXPROGDIVRESET(0) => \^gtye4_channel_rxprogdivreset\(0),
      Q(2 downto 0) => sm_reset_rx(2 downto 0),
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int\,
      gtrxreset_out_reg => bit_synchronizer_plllock_rx_inst_n_1,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_any_sync => gtwiz_reset_rx_any_sync,
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      rst_in_out_reg_0 => gtwiz_reset_rx_datapath_int_reg_n_0,
      rst_in_out_reg_1 => gtwiz_reset_rx_pll_and_datapath_int_reg_n_0,
      rxprogdivreset_out_reg => bit_synchronizer_rxcdrlock_inst_n_2
    );
reset_synchronizer_gtwiz_reset_rx_datapath_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_15
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      in0 => gtwiz_reset_rx_datapath_sync,
      rst_in_out_reg_0 => gtwiz_reset_rx_datapath_int_reg_n_0
    );
reset_synchronizer_gtwiz_reset_rx_pll_and_datapath_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_16
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      in0 => gtwiz_reset_rx_pll_and_datapath_sync,
      rst_in_out_reg_0 => gtwiz_reset_rx_pll_and_datapath_int_reg_n_0
    );
reset_synchronizer_gtwiz_reset_tx_any_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_17
     port map (
      \FSM_sequential_sm_reset_tx_reg[1]\ => reset_synchronizer_gtwiz_reset_tx_any_inst_n_1,
      Q(2 downto 0) => sm_reset_tx(2 downto 0),
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_gttxreset_int\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_gttxreset_int\,
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int\ => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int\,
      gttxreset_out_reg => bit_synchronizer_plllock_tx_inst_n_2,
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_any_sync => gtwiz_reset_tx_any_sync,
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      rst_in_out_reg_0 => reset_synchronizer_gtwiz_reset_tx_any_inst_n_2,
      rst_in_out_reg_1 => gtwiz_reset_tx_pll_and_datapath_int_reg_n_0
    );
reset_synchronizer_gtwiz_reset_tx_datapath_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_18
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      in0 => gtwiz_reset_tx_datapath_sync
    );
reset_synchronizer_gtwiz_reset_tx_pll_and_datapath_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_19
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      in0 => gtwiz_reset_tx_pll_and_datapath_sync,
      rst_in_out_reg_0 => gtwiz_reset_tx_pll_and_datapath_int_reg_n_0
    );
reset_synchronizer_rx_done_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_inv_synchronizer
     port map (
      gtwiz_reset_rx_done_out(0) => gtwiz_reset_rx_done_out(0),
      gtwiz_userclk_rx_usrclk2_out(0) => gtwiz_userclk_rx_usrclk2_out(0),
      rst_in_sync2_reg_0 => gtwiz_reset_rx_done_int_reg_n_0
    );
reset_synchronizer_tx_done_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_inv_synchronizer_20
     port map (
      gtwiz_reset_tx_done_out(0) => gtwiz_reset_tx_done_out(0),
      gtwiz_userclk_tx_usrclk2_out(0) => gtwiz_userclk_tx_usrclk2_out(0),
      rst_in_sync2_reg_0 => gtwiz_reset_tx_done_int_reg_n_0
    );
reset_synchronizer_txprogdivreset_inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_reset_synchronizer_21
     port map (
      GTYE4_CHANNEL_TXPROGDIVRESET(0) => GTYE4_CHANNEL_TXPROGDIVRESET(0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      rst_in0 => rst_in0
    );
rxprogdivreset_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => reset_synchronizer_gtwiz_reset_rx_any_inst_n_2,
      Q => \^gtye4_channel_rxprogdivreset\(0),
      R => '0'
    );
rxuserrdy_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2,
      Q => \^gtye4_channel_rxuserrdy\(0),
      R => '0'
    );
sm_reset_all_timer_clr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFA200A"
    )
        port map (
      I0 => sm_reset_all_timer_clr_i_2_n_0,
      I1 => sm_reset_all(1),
      I2 => sm_reset_all(2),
      I3 => sm_reset_all(0),
      I4 => sm_reset_all_timer_clr_reg_n_0,
      O => sm_reset_all_timer_clr_i_1_n_0
    );
sm_reset_all_timer_clr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B0003333BB33"
    )
        port map (
      I0 => gtwiz_reset_rx_done_int_reg_n_0,
      I1 => sm_reset_all(2),
      I2 => gtwiz_reset_tx_done_int_reg_n_0,
      I3 => sm_reset_all_timer_sat,
      I4 => sm_reset_all_timer_clr_reg_n_0,
      I5 => sm_reset_all(1),
      O => sm_reset_all_timer_clr_i_2_n_0
    );
sm_reset_all_timer_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_all_timer_clr_i_1_n_0,
      Q => sm_reset_all_timer_clr_reg_n_0,
      S => gtwiz_reset_all_sync
    );
\sm_reset_all_timer_ctr0_inferred__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sm_reset_all_timer_ctr(2),
      I1 => sm_reset_all_timer_ctr(0),
      I2 => sm_reset_all_timer_ctr(1),
      O => \sm_reset_all_timer_ctr0_inferred__0/i__n_0\
    );
\sm_reset_all_timer_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_reset_all_timer_ctr(0),
      O => \sm_reset_all_timer_ctr[0]_i_1_n_0\
    );
\sm_reset_all_timer_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sm_reset_all_timer_ctr(0),
      I1 => sm_reset_all_timer_ctr(1),
      O => \sm_reset_all_timer_ctr[1]_i_1_n_0\
    );
\sm_reset_all_timer_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sm_reset_all_timer_ctr(0),
      I1 => sm_reset_all_timer_ctr(1),
      I2 => sm_reset_all_timer_ctr(2),
      O => \sm_reset_all_timer_ctr[2]_i_1_n_0\
    );
\sm_reset_all_timer_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_all_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_all_timer_ctr[0]_i_1_n_0\,
      Q => sm_reset_all_timer_ctr(0),
      R => sm_reset_all_timer_clr_reg_n_0
    );
\sm_reset_all_timer_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_all_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_all_timer_ctr[1]_i_1_n_0\,
      Q => sm_reset_all_timer_ctr(1),
      R => sm_reset_all_timer_clr_reg_n_0
    );
\sm_reset_all_timer_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_all_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_all_timer_ctr[2]_i_1_n_0\,
      Q => sm_reset_all_timer_ctr(2),
      R => sm_reset_all_timer_clr_reg_n_0
    );
sm_reset_all_timer_sat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => sm_reset_all_timer_ctr(2),
      I1 => sm_reset_all_timer_ctr(0),
      I2 => sm_reset_all_timer_ctr(1),
      I3 => sm_reset_all_timer_sat,
      I4 => sm_reset_all_timer_clr_reg_n_0,
      O => sm_reset_all_timer_sat_i_1_n_0
    );
sm_reset_all_timer_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_all_timer_sat_i_1_n_0,
      Q => sm_reset_all_timer_sat,
      R => '0'
    );
sm_reset_rx_cdr_to_clr_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => sm_reset_rx_timer_clr_reg_n_0,
      I1 => sm_reset_rx_timer_sat,
      I2 => sm_reset_rx(1),
      O => sm_reset_rx_cdr_to_clr_i_3_n_0
    );
sm_reset_rx_cdr_to_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_rxcdrlock_inst_n_3,
      Q => sm_reset_rx_cdr_to_clr,
      S => gtwiz_reset_rx_any_sync
    );
\sm_reset_rx_cdr_to_ctr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(0),
      I1 => sm_reset_rx_cdr_to_ctr_reg(1),
      I2 => \sm_reset_rx_cdr_to_ctr[0]_i_3_n_0\,
      I3 => \sm_reset_rx_cdr_to_ctr[0]_i_4_n_0\,
      I4 => \sm_reset_rx_cdr_to_ctr[0]_i_5_n_0\,
      I5 => \sm_reset_rx_cdr_to_ctr[0]_i_6_n_0\,
      O => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFFFFFFFFFF"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(18),
      I1 => sm_reset_rx_cdr_to_ctr_reg(19),
      I2 => sm_reset_rx_cdr_to_ctr_reg(17),
      I3 => sm_reset_rx_cdr_to_ctr_reg(16),
      I4 => sm_reset_rx_cdr_to_ctr_reg(15),
      I5 => sm_reset_rx_cdr_to_ctr_reg(14),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_3_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(24),
      I1 => sm_reset_rx_cdr_to_ctr_reg(25),
      I2 => sm_reset_rx_cdr_to_ctr_reg(22),
      I3 => sm_reset_rx_cdr_to_ctr_reg(23),
      I4 => sm_reset_rx_cdr_to_ctr_reg(21),
      I5 => sm_reset_rx_cdr_to_ctr_reg(20),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_4_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFFFFFFFFFF"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(12),
      I1 => sm_reset_rx_cdr_to_ctr_reg(13),
      I2 => sm_reset_rx_cdr_to_ctr_reg(10),
      I3 => sm_reset_rx_cdr_to_ctr_reg(11),
      I4 => sm_reset_rx_cdr_to_ctr_reg(9),
      I5 => sm_reset_rx_cdr_to_ctr_reg(8),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_5_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7FFFFFFFFF"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(6),
      I1 => sm_reset_rx_cdr_to_ctr_reg(7),
      I2 => sm_reset_rx_cdr_to_ctr_reg(5),
      I3 => sm_reset_rx_cdr_to_ctr_reg(4),
      I4 => sm_reset_rx_cdr_to_ctr_reg(3),
      I5 => sm_reset_rx_cdr_to_ctr_reg(2),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_6_n_0\
    );
\sm_reset_rx_cdr_to_ctr[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(0),
      O => \sm_reset_rx_cdr_to_ctr[0]_i_7_n_0\
    );
\sm_reset_rx_cdr_to_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15\,
      Q => sm_reset_rx_cdr_to_ctr_reg(0),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0\,
      CO(6) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1\,
      CO(5) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2\,
      CO(4) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3\,
      CO(3) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_4\,
      CO(2) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5\,
      CO(1) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6\,
      CO(0) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8\,
      O(6) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9\,
      O(5) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10\,
      O(4) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11\,
      O(3) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12\,
      O(2) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13\,
      O(1) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14\,
      O(0) => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15\,
      S(7 downto 1) => sm_reset_rx_cdr_to_ctr_reg(7 downto 1),
      S(0) => \sm_reset_rx_cdr_to_ctr[0]_i_7_n_0\
    );
\sm_reset_rx_cdr_to_ctr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13\,
      Q => sm_reset_rx_cdr_to_ctr_reg(10),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12\,
      Q => sm_reset_rx_cdr_to_ctr_reg(11),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11\,
      Q => sm_reset_rx_cdr_to_ctr_reg(12),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10\,
      Q => sm_reset_rx_cdr_to_ctr_reg(13),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9\,
      Q => sm_reset_rx_cdr_to_ctr_reg(14),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8\,
      Q => sm_reset_rx_cdr_to_ctr_reg(15),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15\,
      Q => sm_reset_rx_cdr_to_ctr_reg(16),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0\,
      CO(6) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1\,
      CO(5) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2\,
      CO(4) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3\,
      CO(3) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_4\,
      CO(2) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5\,
      CO(1) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6\,
      CO(0) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8\,
      O(6) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9\,
      O(5) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10\,
      O(4) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11\,
      O(3) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12\,
      O(2) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13\,
      O(1) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14\,
      O(0) => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15\,
      S(7 downto 0) => sm_reset_rx_cdr_to_ctr_reg(23 downto 16)
    );
\sm_reset_rx_cdr_to_ctr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14\,
      Q => sm_reset_rx_cdr_to_ctr_reg(17),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13\,
      Q => sm_reset_rx_cdr_to_ctr_reg(18),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12\,
      Q => sm_reset_rx_cdr_to_ctr_reg(19),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14\,
      Q => sm_reset_rx_cdr_to_ctr_reg(1),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11\,
      Q => sm_reset_rx_cdr_to_ctr_reg(20),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10\,
      Q => sm_reset_rx_cdr_to_ctr_reg(21),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9\,
      Q => sm_reset_rx_cdr_to_ctr_reg(22),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8\,
      Q => sm_reset_rx_cdr_to_ctr_reg(23),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15\,
      Q => sm_reset_rx_cdr_to_ctr_reg(24),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1) => \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14\,
      O(0) => \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15\,
      S(7 downto 2) => B"000000",
      S(1 downto 0) => sm_reset_rx_cdr_to_ctr_reg(25 downto 24)
    );
\sm_reset_rx_cdr_to_ctr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14\,
      Q => sm_reset_rx_cdr_to_ctr_reg(25),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13\,
      Q => sm_reset_rx_cdr_to_ctr_reg(2),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12\,
      Q => sm_reset_rx_cdr_to_ctr_reg(3),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11\,
      Q => sm_reset_rx_cdr_to_ctr_reg(4),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10\,
      Q => sm_reset_rx_cdr_to_ctr_reg(5),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9\,
      Q => sm_reset_rx_cdr_to_ctr_reg(6),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8\,
      Q => sm_reset_rx_cdr_to_ctr_reg(7),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15\,
      Q => sm_reset_rx_cdr_to_ctr_reg(8),
      R => sm_reset_rx_cdr_to_clr
    );
\sm_reset_rx_cdr_to_ctr_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0\,
      CO(6) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1\,
      CO(5) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2\,
      CO(4) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3\,
      CO(3) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_4\,
      CO(2) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5\,
      CO(1) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6\,
      CO(0) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8\,
      O(6) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9\,
      O(5) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10\,
      O(4) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11\,
      O(3) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12\,
      O(2) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13\,
      O(1) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14\,
      O(0) => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15\,
      S(7 downto 0) => sm_reset_rx_cdr_to_ctr_reg(15 downto 8)
    );
\sm_reset_rx_cdr_to_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0\,
      D => \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14\,
      Q => sm_reset_rx_cdr_to_ctr_reg(9),
      R => sm_reset_rx_cdr_to_clr
    );
sm_reset_rx_cdr_to_sat_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_sat,
      I1 => sm_reset_rx_cdr_to_sat_i_2_n_0,
      I2 => sm_reset_rx_cdr_to_clr,
      O => sm_reset_rx_cdr_to_sat_i_1_n_0
    );
sm_reset_rx_cdr_to_sat_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_sat_i_3_n_0,
      I1 => sm_reset_rx_cdr_to_sat_i_4_n_0,
      I2 => sm_reset_rx_cdr_to_sat_i_5_n_0,
      I3 => sm_reset_rx_cdr_to_sat_i_6_n_0,
      I4 => sm_reset_rx_cdr_to_ctr_reg(0),
      I5 => sm_reset_rx_cdr_to_ctr_reg(1),
      O => sm_reset_rx_cdr_to_sat_i_2_n_0
    );
sm_reset_rx_cdr_to_sat_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(5),
      I1 => sm_reset_rx_cdr_to_ctr_reg(4),
      I2 => sm_reset_rx_cdr_to_ctr_reg(2),
      I3 => sm_reset_rx_cdr_to_ctr_reg(3),
      I4 => sm_reset_rx_cdr_to_ctr_reg(7),
      I5 => sm_reset_rx_cdr_to_ctr_reg(6),
      O => sm_reset_rx_cdr_to_sat_i_3_n_0
    );
sm_reset_rx_cdr_to_sat_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(22),
      I1 => sm_reset_rx_cdr_to_ctr_reg(23),
      I2 => sm_reset_rx_cdr_to_ctr_reg(20),
      I3 => sm_reset_rx_cdr_to_ctr_reg(21),
      I4 => sm_reset_rx_cdr_to_ctr_reg(25),
      I5 => sm_reset_rx_cdr_to_ctr_reg(24),
      O => sm_reset_rx_cdr_to_sat_i_4_n_0
    );
sm_reset_rx_cdr_to_sat_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(17),
      I1 => sm_reset_rx_cdr_to_ctr_reg(16),
      I2 => sm_reset_rx_cdr_to_ctr_reg(14),
      I3 => sm_reset_rx_cdr_to_ctr_reg(15),
      I4 => sm_reset_rx_cdr_to_ctr_reg(19),
      I5 => sm_reset_rx_cdr_to_ctr_reg(18),
      O => sm_reset_rx_cdr_to_sat_i_5_n_0
    );
sm_reset_rx_cdr_to_sat_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => sm_reset_rx_cdr_to_ctr_reg(10),
      I1 => sm_reset_rx_cdr_to_ctr_reg(11),
      I2 => sm_reset_rx_cdr_to_ctr_reg(8),
      I3 => sm_reset_rx_cdr_to_ctr_reg(9),
      I4 => sm_reset_rx_cdr_to_ctr_reg(13),
      I5 => sm_reset_rx_cdr_to_ctr_reg(12),
      O => sm_reset_rx_cdr_to_sat_i_6_n_0
    );
sm_reset_rx_cdr_to_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_rx_cdr_to_sat_i_1_n_0,
      Q => sm_reset_rx_cdr_to_sat,
      R => '0'
    );
sm_reset_rx_pll_timer_clr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF3000B"
    )
        port map (
      I0 => sm_reset_rx_pll_timer_sat,
      I1 => sm_reset_rx(0),
      I2 => sm_reset_rx(1),
      I3 => sm_reset_rx(2),
      I4 => sm_reset_rx_pll_timer_clr_reg_n_0,
      O => sm_reset_rx_pll_timer_clr_i_1_n_0
    );
sm_reset_rx_pll_timer_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_rx_pll_timer_clr_i_1_n_0,
      Q => sm_reset_rx_pll_timer_clr_reg_n_0,
      S => gtwiz_reset_rx_any_sync
    );
\sm_reset_rx_pll_timer_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\sm_reset_rx_pll_timer_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\sm_reset_rx_pll_timer_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      O => \sm_reset_rx_pll_timer_ctr[2]_i_1_n_0\
    );
\sm_reset_rx_pll_timer_ctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      O => \sm_reset_rx_pll_timer_ctr[3]_i_1_n_0\
    );
\sm_reset_rx_pll_timer_ctr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      O => \p_0_in__1\(4)
    );
\sm_reset_rx_pll_timer_ctr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I5 => \sm_reset_rx_pll_timer_ctr_reg__0\(5),
      O => \p_0_in__1\(5)
    );
\sm_reset_rx_pll_timer_ctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      O => \p_0_in__1\(6)
    );
\sm_reset_rx_pll_timer_ctr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      I1 => \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\,
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      O => \p_0_in__1\(7)
    );
\sm_reset_rx_pll_timer_ctr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(8),
      O => \p_0_in__1\(8)
    );
\sm_reset_rx_pll_timer_ctr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr[9]_i_3_n_0\,
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      O => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\
    );
\sm_reset_rx_pll_timer_ctr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(8),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(9),
      O => \p_0_in__1\(9)
    );
\sm_reset_rx_pll_timer_ctr[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(8),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(9),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(5),
      I5 => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      O => \sm_reset_rx_pll_timer_ctr[9]_i_3_n_0\
    );
\sm_reset_rx_pll_timer_ctr[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I5 => \sm_reset_rx_pll_timer_ctr_reg__0\(5),
      O => \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0\
    );
\sm_reset_rx_pll_timer_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(0),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(1),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \sm_reset_rx_pll_timer_ctr[2]_i_1_n_0\,
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \sm_reset_rx_pll_timer_ctr[3]_i_1_n_0\,
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(4),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(5),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(5),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(6),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(7),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(8),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(8),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
\sm_reset_rx_pll_timer_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__1\(9),
      Q => \sm_reset_rx_pll_timer_ctr_reg__0\(9),
      R => sm_reset_rx_pll_timer_clr_reg_n_0
    );
sm_reset_rx_pll_timer_sat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000ABAA"
    )
        port map (
      I0 => sm_reset_rx_pll_timer_sat,
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(3),
      I2 => sm_reset_rx_pll_timer_sat_i_2_n_0,
      I3 => sm_reset_rx_pll_timer_sat_i_3_n_0,
      I4 => sm_reset_rx_pll_timer_clr_reg_n_0,
      O => sm_reset_rx_pll_timer_sat_i_1_n_0
    );
sm_reset_rx_pll_timer_sat_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(2),
      O => sm_reset_rx_pll_timer_sat_i_2_n_0
    );
sm_reset_rx_pll_timer_sat_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \sm_reset_rx_pll_timer_ctr_reg__0\(6),
      I1 => \sm_reset_rx_pll_timer_ctr_reg__0\(7),
      I2 => \sm_reset_rx_pll_timer_ctr_reg__0\(4),
      I3 => \sm_reset_rx_pll_timer_ctr_reg__0\(5),
      I4 => \sm_reset_rx_pll_timer_ctr_reg__0\(9),
      I5 => \sm_reset_rx_pll_timer_ctr_reg__0\(8),
      O => sm_reset_rx_pll_timer_sat_i_3_n_0
    );
sm_reset_rx_pll_timer_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_rx_pll_timer_sat_i_1_n_0,
      Q => sm_reset_rx_pll_timer_sat,
      R => '0'
    );
sm_reset_rx_timer_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1,
      Q => sm_reset_rx_timer_clr_reg_n_0,
      S => gtwiz_reset_rx_any_sync
    );
\sm_reset_rx_timer_ctr0_inferred__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sm_reset_rx_timer_ctr(2),
      I1 => sm_reset_rx_timer_ctr(0),
      I2 => sm_reset_rx_timer_ctr(1),
      O => \sm_reset_rx_timer_ctr0_inferred__0/i__n_0\
    );
\sm_reset_rx_timer_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_reset_rx_timer_ctr(0),
      O => \sm_reset_rx_timer_ctr[0]_i_1_n_0\
    );
\sm_reset_rx_timer_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sm_reset_rx_timer_ctr(0),
      I1 => sm_reset_rx_timer_ctr(1),
      O => \sm_reset_rx_timer_ctr[1]_i_1_n_0\
    );
\sm_reset_rx_timer_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sm_reset_rx_timer_ctr(0),
      I1 => sm_reset_rx_timer_ctr(1),
      I2 => sm_reset_rx_timer_ctr(2),
      O => \sm_reset_rx_timer_ctr[2]_i_1_n_0\
    );
\sm_reset_rx_timer_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_rx_timer_ctr[0]_i_1_n_0\,
      Q => sm_reset_rx_timer_ctr(0),
      R => sm_reset_rx_timer_clr_reg_n_0
    );
\sm_reset_rx_timer_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_rx_timer_ctr[1]_i_1_n_0\,
      Q => sm_reset_rx_timer_ctr(1),
      R => sm_reset_rx_timer_clr_reg_n_0
    );
\sm_reset_rx_timer_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_rx_timer_ctr0_inferred__0/i__n_0\,
      D => \sm_reset_rx_timer_ctr[2]_i_1_n_0\,
      Q => sm_reset_rx_timer_ctr(2),
      R => sm_reset_rx_timer_clr_reg_n_0
    );
sm_reset_rx_timer_sat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => sm_reset_rx_timer_ctr(2),
      I1 => sm_reset_rx_timer_ctr(0),
      I2 => sm_reset_rx_timer_ctr(1),
      I3 => sm_reset_rx_timer_sat,
      I4 => sm_reset_rx_timer_clr_reg_n_0,
      O => sm_reset_rx_timer_sat_i_1_n_0
    );
sm_reset_rx_timer_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_rx_timer_sat_i_1_n_0,
      Q => sm_reset_rx_timer_sat,
      R => '0'
    );
sm_reset_tx_pll_timer_clr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF5000D"
    )
        port map (
      I0 => sm_reset_tx(0),
      I1 => sm_reset_tx_pll_timer_sat,
      I2 => sm_reset_tx(1),
      I3 => sm_reset_tx(2),
      I4 => sm_reset_tx_pll_timer_clr_reg_n_0,
      O => sm_reset_tx_pll_timer_clr_i_1_n_0
    );
sm_reset_tx_pll_timer_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_tx_pll_timer_clr_i_1_n_0,
      Q => sm_reset_tx_pll_timer_clr_reg_n_0,
      S => gtwiz_reset_tx_any_sync
    );
\sm_reset_tx_pll_timer_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\sm_reset_tx_pll_timer_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\sm_reset_tx_pll_timer_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      O => \sm_reset_tx_pll_timer_ctr[2]_i_1_n_0\
    );
\sm_reset_tx_pll_timer_ctr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      O => \sm_reset_tx_pll_timer_ctr[3]_i_1_n_0\
    );
\sm_reset_tx_pll_timer_ctr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\sm_reset_tx_pll_timer_ctr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I5 => \sm_reset_tx_pll_timer_ctr_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\sm_reset_tx_pll_timer_ctr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\sm_reset_tx_pll_timer_ctr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      I1 => \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\,
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\sm_reset_tx_pll_timer_ctr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(8),
      O => \p_0_in__0\(8)
    );
\sm_reset_tx_pll_timer_ctr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr[9]_i_3_n_0\,
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      O => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\
    );
\sm_reset_tx_pll_timer_ctr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\,
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(8),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(9),
      O => \p_0_in__0\(9)
    );
\sm_reset_tx_pll_timer_ctr[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(8),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(9),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(5),
      I5 => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      O => \sm_reset_tx_pll_timer_ctr[9]_i_3_n_0\
    );
\sm_reset_tx_pll_timer_ctr[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I5 => \sm_reset_tx_pll_timer_ctr_reg__0\(5),
      O => \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0\
    );
\sm_reset_tx_pll_timer_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \sm_reset_tx_pll_timer_ctr[2]_i_1_n_0\,
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \sm_reset_tx_pll_timer_ctr[3]_i_1_n_0\,
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(5),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(6),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(7),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(8),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(8),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
\sm_reset_tx_pll_timer_ctr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => \sm_reset_tx_pll_timer_ctr[9]_i_1_n_0\,
      D => \p_0_in__0\(9),
      Q => \sm_reset_tx_pll_timer_ctr_reg__0\(9),
      R => sm_reset_tx_pll_timer_clr_reg_n_0
    );
sm_reset_tx_pll_timer_sat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000ABAA"
    )
        port map (
      I0 => sm_reset_tx_pll_timer_sat,
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(3),
      I2 => sm_reset_tx_pll_timer_sat_i_2_n_0,
      I3 => sm_reset_tx_pll_timer_sat_i_3_n_0,
      I4 => sm_reset_tx_pll_timer_clr_reg_n_0,
      O => sm_reset_tx_pll_timer_sat_i_1_n_0
    );
sm_reset_tx_pll_timer_sat_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(1),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(0),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(2),
      O => sm_reset_tx_pll_timer_sat_i_2_n_0
    );
sm_reset_tx_pll_timer_sat_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \sm_reset_tx_pll_timer_ctr_reg__0\(6),
      I1 => \sm_reset_tx_pll_timer_ctr_reg__0\(7),
      I2 => \sm_reset_tx_pll_timer_ctr_reg__0\(4),
      I3 => \sm_reset_tx_pll_timer_ctr_reg__0\(5),
      I4 => \sm_reset_tx_pll_timer_ctr_reg__0\(9),
      I5 => \sm_reset_tx_pll_timer_ctr_reg__0\(8),
      O => sm_reset_tx_pll_timer_sat_i_3_n_0
    );
sm_reset_tx_pll_timer_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_tx_pll_timer_sat_i_1_n_0,
      Q => sm_reset_tx_pll_timer_sat,
      R => '0'
    );
sm_reset_tx_timer_clr_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1,
      Q => sm_reset_tx_timer_clr_reg_n_0,
      S => gtwiz_reset_tx_any_sync
    );
\sm_reset_tx_timer_ctr0_inferred__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sm_reset_tx_timer_ctr(2),
      I1 => sm_reset_tx_timer_ctr(0),
      I2 => sm_reset_tx_timer_ctr(1),
      O => p_0_in
    );
\sm_reset_tx_timer_ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sm_reset_tx_timer_ctr(0),
      O => p_1_in(0)
    );
\sm_reset_tx_timer_ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sm_reset_tx_timer_ctr(0),
      I1 => sm_reset_tx_timer_ctr(1),
      O => p_1_in(1)
    );
\sm_reset_tx_timer_ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sm_reset_tx_timer_ctr(0),
      I1 => sm_reset_tx_timer_ctr(1),
      I2 => sm_reset_tx_timer_ctr(2),
      O => p_1_in(2)
    );
\sm_reset_tx_timer_ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => p_0_in,
      D => p_1_in(0),
      Q => sm_reset_tx_timer_ctr(0),
      R => sm_reset_tx_timer_clr_reg_n_0
    );
\sm_reset_tx_timer_ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => p_0_in,
      D => p_1_in(1),
      Q => sm_reset_tx_timer_ctr(1),
      R => sm_reset_tx_timer_clr_reg_n_0
    );
\sm_reset_tx_timer_ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => p_0_in,
      D => p_1_in(2),
      Q => sm_reset_tx_timer_ctr(2),
      R => sm_reset_tx_timer_clr_reg_n_0
    );
sm_reset_tx_timer_sat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => sm_reset_tx_timer_ctr(2),
      I1 => sm_reset_tx_timer_ctr(0),
      I2 => sm_reset_tx_timer_ctr(1),
      I3 => sm_reset_tx_timer_sat,
      I4 => sm_reset_tx_timer_clr_reg_n_0,
      O => sm_reset_tx_timer_sat_i_1_n_0
    );
sm_reset_tx_timer_sat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => sm_reset_tx_timer_sat_i_1_n_0,
      Q => sm_reset_tx_timer_sat,
      R => '0'
    );
txuserrdy_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => gtwiz_reset_clk_freerun_in(0),
      CE => '1',
      D => bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2,
      Q => \^gtye4_channel_txuserrdy\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_gtye4 is
  port (
    gtpowergood_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtwiz_userclk_tx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtwiz_userclk_tx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtwiz_userclk_rx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    drprdy_common_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor0_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor1_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubden_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubdwe_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdo_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubrsvdout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubtxuart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    sdm1testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    drpdo_common_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdaddr_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdi_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxrecclk0sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxrecclk1sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm0finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sdm1finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmarsvdout0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvdout1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gtwiz_reset_qpll0reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    bufgtce_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bufgtreset_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllfbclklost_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cplllock_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllrefclklost_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dmonitoroutclk_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    drprdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclkmonitor_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtytxn_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierategen3_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierateidle_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pciesynctxsyncdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieusergen3rdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieuserphystatusrst_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieuserratestart_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    phystatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    powerpresent_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    resetexception_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrphdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchanbondseq_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchanisaligned_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchanrealign_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxckcaldone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcominitdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcomsasdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcomwakedet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlysresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxelecidle_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlfpstresetdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlfpsu2lpexitdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlfpsu3wakedet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintstarted_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintstrobedone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintstrobestarted_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoutclkfabric_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoutclkpcs_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphaligndone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphalignerr_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxratedone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxrecclkout_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsliderdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslipdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslipoutclkrdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslippmardy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncout_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxvalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txcomfinish_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txdccdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlysresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txoutclkfabric_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txoutclkpcs_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txphaligndone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txphinitdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txratedone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncout_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 255 downto 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcsrsvdout_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pinrsrvdas_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pcierateqpllpd_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcierateqpllreset_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxdatavalid_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxheadervalid_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxstartofseq_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txbufstatus_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bufgtcemask_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    bufgtrstmask_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxbufstatus_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxstatus_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxchbondo_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rxheader_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxdataextendrsvd_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxmonitorout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bufgtdiv_out : out STD_LOGIC_VECTOR ( 17 downto 0 );
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txratemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txrate_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txpisopd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtwiz_userclk_tx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgbypassb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgmonitorenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgpdb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgrcalovrdenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpclk_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpen_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rcalenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubcfgstreamen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubdrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubenable_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubiolmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmcapture_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgupdate_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmshift_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmsysrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtck_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdi_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpdi_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdo_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sdm0width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm1width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubgpi_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubintr_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm0data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sdm1data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    pcierateqpll0_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pcierateqpll1_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll0refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll1refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ubmdmregen_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bgrcalovrd_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd2_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd3_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pmarsvd0_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll1fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd4_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cdrstepdir_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cdrstepsq_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cdrstepsx_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cfgreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clkrsvd0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clkrsvd1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllfreqlock_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cplllockdetclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cplllocken_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dmonfiforeset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dmonitorclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drprst_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    eyescantrigger_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    freqos_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtgrefclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtnorthrefclk0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtnorthrefclk1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrxresetsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtsouthrefclk0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtsouthrefclk1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gttxresetsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtyrxn_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    incpctrl_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieeqrxeqadaptdone_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierstidle_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pciersttxsyncstart_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieuserratedone_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll0freqlock_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll1freqlock_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    resetovrd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxafecfoken_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrfreqreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbonden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbondmaster_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbondslave_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxckcalreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeagchold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeagcovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokfen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokfpulse_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokovren_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfekhhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfekhovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfelfhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfelfovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap10hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap10ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap11hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap11ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap12hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap12ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap13hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap13ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap14hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap14ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap15hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap15ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap2hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap2ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap3hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap3ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap4hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap4ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap5hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap5ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap6hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap6ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap7hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap7ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap8hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap8ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap9hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap9ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeuthold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeutovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfevphold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfevpovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfexyden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlybypass_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlyen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlyovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlysreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxeqtraining_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxgearboxslip_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlatclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmgchold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmgcovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmhfhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmhfovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmlfhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmlfklovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmoshold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmosovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoobreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoscalreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoshold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphalign_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphdlypd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphdlyreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxratemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslide_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslipoutclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslippma_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncallin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncmode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxtermination_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sigvalidclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txcominit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txcomsas_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txcomwake_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdccforcestart_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdccreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdetectrx_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlybypass_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlysreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyupdown_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlatclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlfpstreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlfpsu2lpexit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlfpsu3wake_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txmuxdcdexhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txmuxdcdorwren_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txoneszeros_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphalign_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphdlypd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphdlyreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphdlytstclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphinit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpolarity_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txswing_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncallin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncmode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtwiz_userdata_tx_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gtrsvd_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcsrsvdin_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tstin_in : in STD_LOGIC_VECTOR ( 39 downto 0 );
    rxelecidlemode_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxmonitorsel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txdeemph_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cpllrefclksel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxchbondlevel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxoutclksel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxrate_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txmargin_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txoutclksel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxdfecfokfcnum_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxchbondi_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txpippmstepsize_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txheader_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rxckcalstart_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    txsequence_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    tx8b10bbypass_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txdataextendrsvd_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txpmareset_in : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_gtye4 : entity is "gtwizard_ultrascale_0_gtwizard_gtye4";
end gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_gtye4;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_gtye4 is
  signal \gen_gtwizard_gtye4.gen_channel_container[2].gen_enabled_channel.gtye4_channel_wrapper_inst_n_0\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_channel_container[2].gen_enabled_channel.gtye4_channel_wrapper_inst_n_3\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_4\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_5\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[1].delay_powergood_inst_n_1\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[1].delay_powergood_inst_n_4\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[1].delay_powergood_inst_n_5\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_rxresetdone_inst_n_1\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_txresetdone_inst_n_1\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_gtpowergood_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_gtrxreset_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_rxcdrlock_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_rxprogdivreset_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_rxuserrdy_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_txprogdivreset_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_txuserrdy_int\ : STD_LOGIC;
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_gtwizard_gtye4.gtpowergood_int\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_gtwizard_gtye4.gttxreset_ch_int\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_gtwizard_gtye4.txpmareset_ch_int\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_gtwizard_gtye4.txrate_ch_int\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \^gtpowergood_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^gtwiz_reset_qpll0reset_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gtwiz_userclk_rx_active_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gtwiz_userclk_rx_usrclk2_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gtwiz_userclk_rx_usrclk_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gtwiz_userclk_tx_active_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gtwiz_userclk_tx_usrclk2_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gtwiz_userclk_tx_usrclk_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal lopt_2 : STD_LOGIC;
  signal lopt_3 : STD_LOGIC;
  signal lopt_4 : STD_LOGIC;
  signal lopt_5 : STD_LOGIC;
  signal \^qpll0lock_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^qpll0outclk_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^qpll0outrefclk_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^qpll1outclk_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^qpll1outrefclk_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_in0 : STD_LOGIC;
  signal \^rxoutclk_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rxresetdone_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^txoutclk_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^txoutclkpcs_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^txresetdone_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  gtpowergood_out(1 downto 0) <= \^gtpowergood_out\(1 downto 0);
  gtwiz_reset_qpll0reset_out(0) <= \^gtwiz_reset_qpll0reset_out\(0);
  gtwiz_userclk_rx_active_out(0) <= \^gtwiz_userclk_rx_active_out\(0);
  gtwiz_userclk_rx_usrclk2_out(0) <= \^gtwiz_userclk_rx_usrclk2_out\(0);
  gtwiz_userclk_rx_usrclk_out(0) <= \^gtwiz_userclk_rx_usrclk_out\(0);
  gtwiz_userclk_tx_active_out(0) <= \^gtwiz_userclk_tx_active_out\(0);
  gtwiz_userclk_tx_usrclk2_out(0) <= \^gtwiz_userclk_tx_usrclk2_out\(0);
  gtwiz_userclk_tx_usrclk_out(0) <= \^gtwiz_userclk_tx_usrclk_out\(0);
  qpll0lock_out(0) <= \^qpll0lock_out\(0);
  qpll0outclk_out(0) <= \^qpll0outclk_out\(0);
  qpll0outrefclk_out(0) <= \^qpll0outrefclk_out\(0);
  qpll1outclk_out(0) <= \^qpll1outclk_out\(0);
  qpll1outrefclk_out(0) <= \^qpll1outrefclk_out\(0);
  rxoutclk_out(1 downto 0) <= \^rxoutclk_out\(1 downto 0);
  rxresetdone_out(1 downto 0) <= \^rxresetdone_out\(1 downto 0);
  txoutclk_out(1 downto 0) <= \^txoutclk_out\(1 downto 0);
  txoutclkpcs_out(1 downto 0) <= \^txoutclkpcs_out\(1 downto 0);
  txresetdone_out(1 downto 0) <= \^txresetdone_out\(1 downto 0);
\gen_gtwizard_gtye4.gen_channel_container[2].gen_enabled_channel.gtye4_channel_wrapper_inst\: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtye4_channel_wrapper
     port map (
      GTYE4_CHANNEL_GTPOWERGOOD(1 downto 0) => \gen_gtwizard_gtye4.gtpowergood_int\(1 downto 0),
      GTYE4_CHANNEL_GTRXRESET(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_gtrxreset_int\,
      GTYE4_CHANNEL_GTTXRESET(1 downto 0) => \gen_gtwizard_gtye4.gttxreset_ch_int\(1 downto 0),
      GTYE4_CHANNEL_RXPROGDIVRESET(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_rxprogdivreset_int\,
      GTYE4_CHANNEL_RXUSERRDY(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_rxuserrdy_int\,
      GTYE4_CHANNEL_TXOUTCLKPCS(1 downto 0) => \^txoutclkpcs_out\(1 downto 0),
      GTYE4_CHANNEL_TXPISOPD(1) => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[1].delay_powergood_inst_n_5\,
      GTYE4_CHANNEL_TXPISOPD(0) => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_5\,
      GTYE4_CHANNEL_TXPMARESET(1 downto 0) => \gen_gtwizard_gtye4.txpmareset_ch_int\(1 downto 0),
      GTYE4_CHANNEL_TXPROGDIVRESET(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_txprogdivreset_int\,
      GTYE4_CHANNEL_TXRATE(5 downto 4) => \gen_gtwizard_gtye4.txrate_ch_int\(5 downto 4),
      GTYE4_CHANNEL_TXRATE(3) => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[1].delay_powergood_inst_n_4\,
      GTYE4_CHANNEL_TXRATE(2 downto 1) => \gen_gtwizard_gtye4.txrate_ch_int\(2 downto 1),
      GTYE4_CHANNEL_TXRATE(0) => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_4\,
      GTYE4_CHANNEL_TXRATEMODE(1) => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[1].delay_powergood_inst_n_1\,
      GTYE4_CHANNEL_TXRATEMODE(0) => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1\,
      GTYE4_CHANNEL_TXUSERRDY(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_txuserrdy_int\,
      bufgtce_out(1 downto 0) => bufgtce_out(1 downto 0),
      bufgtcemask_out(5 downto 0) => bufgtcemask_out(5 downto 0),
      bufgtdiv_out(17 downto 0) => bufgtdiv_out(17 downto 0),
      bufgtreset_out(1 downto 0) => bufgtreset_out(1 downto 0),
      bufgtrstmask_out(5 downto 0) => bufgtrstmask_out(5 downto 0),
      cdrstepdir_in(1 downto 0) => cdrstepdir_in(1 downto 0),
      cdrstepsq_in(1 downto 0) => cdrstepsq_in(1 downto 0),
      cdrstepsx_in(1 downto 0) => cdrstepsx_in(1 downto 0),
      cfgreset_in(1 downto 0) => cfgreset_in(1 downto 0),
      clkrsvd0_in(1 downto 0) => clkrsvd0_in(1 downto 0),
      clkrsvd1_in(1 downto 0) => clkrsvd1_in(1 downto 0),
      cpllfbclklost_out(1 downto 0) => cpllfbclklost_out(1 downto 0),
      cpllfreqlock_in(1 downto 0) => cpllfreqlock_in(1 downto 0),
      cplllock_out(1 downto 0) => cplllock_out(1 downto 0),
      cplllockdetclk_in(1 downto 0) => cplllockdetclk_in(1 downto 0),
      cplllocken_in(1 downto 0) => cplllocken_in(1 downto 0),
      cpllpd_in(1 downto 0) => cpllpd_in(1 downto 0),
      cpllrefclklost_out(1 downto 0) => cpllrefclklost_out(1 downto 0),
      cpllrefclksel_in(5 downto 0) => cpllrefclksel_in(5 downto 0),
      cpllreset_in(1 downto 0) => cpllreset_in(1 downto 0),
      dmonfiforeset_in(1 downto 0) => dmonfiforeset_in(1 downto 0),
      dmonitorclk_in(1 downto 0) => dmonitorclk_in(1 downto 0),
      dmonitorout_out(31 downto 0) => dmonitorout_out(31 downto 0),
      dmonitoroutclk_out(1 downto 0) => dmonitoroutclk_out(1 downto 0),
      drpaddr_in(19 downto 0) => drpaddr_in(19 downto 0),
      drpclk_in(1 downto 0) => drpclk_in(1 downto 0),
      drpdi_in(31 downto 0) => drpdi_in(31 downto 0),
      drpdo_out(31 downto 0) => drpdo_out(31 downto 0),
      drpen_in(1 downto 0) => drpen_in(1 downto 0),
      drprdy_out(1 downto 0) => drprdy_out(1 downto 0),
      drprst_in(1 downto 0) => drprst_in(1 downto 0),
      drpwe_in(1 downto 0) => drpwe_in(1 downto 0),
      eyescandataerror_out(1 downto 0) => eyescandataerror_out(1 downto 0),
      eyescanreset_in(1 downto 0) => eyescanreset_in(1 downto 0),
      eyescantrigger_in(1 downto 0) => eyescantrigger_in(1 downto 0),
      freqos_in(1 downto 0) => freqos_in(1 downto 0),
      gtgrefclk_in(1 downto 0) => gtgrefclk_in(1 downto 0),
      gtnorthrefclk0_in(1 downto 0) => gtnorthrefclk0_in(1 downto 0),
      gtnorthrefclk1_in(1 downto 0) => gtnorthrefclk1_in(1 downto 0),
      gtrefclk0_in(1 downto 0) => gtrefclk0_in(1 downto 0),
      gtrefclk1_in(1 downto 0) => gtrefclk1_in(1 downto 0),
      gtrefclkmonitor_out(1 downto 0) => gtrefclkmonitor_out(1 downto 0),
      gtrsvd_in(31 downto 0) => gtrsvd_in(31 downto 0),
      gtrxreset_out_reg => \gen_gtwizard_gtye4.gen_channel_container[2].gen_enabled_channel.gtye4_channel_wrapper_inst_n_0\,
      gtrxreset_out_reg_0 => \gen_gtwizard_gtye4.gen_channel_container[2].gen_enabled_channel.gtye4_channel_wrapper_inst_n_3\,
      gtrxresetsel_in(1 downto 0) => gtrxresetsel_in(1 downto 0),
      gtsouthrefclk0_in(1 downto 0) => gtsouthrefclk0_in(1 downto 0),
      gtsouthrefclk1_in(1 downto 0) => gtsouthrefclk1_in(1 downto 0),
      gttxresetsel_in(1 downto 0) => gttxresetsel_in(1 downto 0),
      gtwiz_userclk_rx_usrclk2_out(0) => \^gtwiz_userclk_rx_usrclk2_out\(0),
      gtwiz_userclk_rx_usrclk_out(0) => \^gtwiz_userclk_rx_usrclk_out\(0),
      gtwiz_userclk_tx_usrclk2_out(0) => \^gtwiz_userclk_tx_usrclk2_out\(0),
      gtwiz_userclk_tx_usrclk_out(0) => \^gtwiz_userclk_tx_usrclk_out\(0),
      gtwiz_userdata_tx_in(127 downto 0) => gtwiz_userdata_tx_in(127 downto 0),
      gtyrxn_in(1 downto 0) => gtyrxn_in(1 downto 0),
      gtyrxp_in(1 downto 0) => gtyrxp_in(1 downto 0),
      gtytxn_out(1 downto 0) => gtytxn_out(1 downto 0),
      gtytxp_out(1 downto 0) => gtytxp_out(1 downto 0),
      in0 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_rxcdrlock_int\,
      incpctrl_in(1 downto 0) => incpctrl_in(1 downto 0),
      loopback_in(5 downto 0) => loopback_in(5 downto 0),
      lopt => lopt,
      lopt_1 => gtwiz_userclk_rx_reset_in(0),
      lopt_2 => lopt_1,
      lopt_3 => lopt_2,
      lopt_4 => lopt_3,
      lopt_5 => gtwiz_userclk_tx_reset_in(0),
      lopt_6 => lopt_4,
      lopt_7 => lopt_5,
      pcieeqrxeqadaptdone_in(1 downto 0) => pcieeqrxeqadaptdone_in(1 downto 0),
      pcierategen3_out(1 downto 0) => pcierategen3_out(1 downto 0),
      pcierateidle_out(1 downto 0) => pcierateidle_out(1 downto 0),
      pcierateqpllpd_out(3 downto 0) => pcierateqpllpd_out(3 downto 0),
      pcierateqpllreset_out(3 downto 0) => pcierateqpllreset_out(3 downto 0),
      pcierstidle_in(1 downto 0) => pcierstidle_in(1 downto 0),
      pciersttxsyncstart_in(1 downto 0) => pciersttxsyncstart_in(1 downto 0),
      pciesynctxsyncdone_out(1 downto 0) => pciesynctxsyncdone_out(1 downto 0),
      pcieusergen3rdy_out(1 downto 0) => pcieusergen3rdy_out(1 downto 0),
      pcieuserphystatusrst_out(1 downto 0) => pcieuserphystatusrst_out(1 downto 0),
      pcieuserratedone_in(1 downto 0) => pcieuserratedone_in(1 downto 0),
      pcieuserratestart_out(1 downto 0) => pcieuserratestart_out(1 downto 0),
      pcsrsvdin_in(31 downto 0) => pcsrsvdin_in(31 downto 0),
      pcsrsvdout_out(31 downto 0) => pcsrsvdout_out(31 downto 0),
      phystatus_out(1 downto 0) => phystatus_out(1 downto 0),
      pinrsrvdas_out(31 downto 0) => pinrsrvdas_out(31 downto 0),
      powerpresent_out(1 downto 0) => powerpresent_out(1 downto 0),
      qpll0freqlock_in(1 downto 0) => qpll0freqlock_in(1 downto 0),
      qpll0outclk_out(0) => \^qpll0outclk_out\(0),
      qpll0outrefclk_out(0) => \^qpll0outrefclk_out\(0),
      qpll1freqlock_in(1 downto 0) => qpll1freqlock_in(1 downto 0),
      qpll1outclk_out(0) => \^qpll1outclk_out\(0),
      qpll1outrefclk_out(0) => \^qpll1outrefclk_out\(0),
      resetexception_out(1 downto 0) => resetexception_out(1 downto 0),
      resetovrd_in(1 downto 0) => resetovrd_in(1 downto 0),
      rx8b10ben_in(1 downto 0) => rx8b10ben_in(1 downto 0),
      rxafecfoken_in(1 downto 0) => rxafecfoken_in(1 downto 0),
      rxbufreset_in(1 downto 0) => rxbufreset_in(1 downto 0),
      rxbufstatus_out(5 downto 0) => rxbufstatus_out(5 downto 0),
      rxbyteisaligned_out(1 downto 0) => rxbyteisaligned_out(1 downto 0),
      rxbyterealign_out(1 downto 0) => rxbyterealign_out(1 downto 0),
      rxcdrfreqreset_in(1 downto 0) => rxcdrfreqreset_in(1 downto 0),
      rxcdrhold_in(1 downto 0) => rxcdrhold_in(1 downto 0),
      rxcdrlock_out(1 downto 0) => rxcdrlock_out(1 downto 0),
      rxcdrovrden_in(1 downto 0) => rxcdrovrden_in(1 downto 0),
      rxcdrphdone_out(1 downto 0) => rxcdrphdone_out(1 downto 0),
      rxcdrreset_in(1 downto 0) => rxcdrreset_in(1 downto 0),
      rxchanbondseq_out(1 downto 0) => rxchanbondseq_out(1 downto 0),
      rxchanisaligned_out(1 downto 0) => rxchanisaligned_out(1 downto 0),
      rxchanrealign_out(1 downto 0) => rxchanrealign_out(1 downto 0),
      rxchbonden_in(1 downto 0) => rxchbonden_in(1 downto 0),
      rxchbondi_in(9 downto 0) => rxchbondi_in(9 downto 0),
      rxchbondlevel_in(5 downto 0) => rxchbondlevel_in(5 downto 0),
      rxchbondmaster_in(1 downto 0) => rxchbondmaster_in(1 downto 0),
      rxchbondo_out(9 downto 0) => rxchbondo_out(9 downto 0),
      rxchbondslave_in(1 downto 0) => rxchbondslave_in(1 downto 0),
      rxckcaldone_out(1 downto 0) => rxckcaldone_out(1 downto 0),
      rxckcalreset_in(1 downto 0) => rxckcalreset_in(1 downto 0),
      rxckcalstart_in(13 downto 0) => rxckcalstart_in(13 downto 0),
      rxclkcorcnt_out(3 downto 0) => rxclkcorcnt_out(3 downto 0),
      rxcominitdet_out(1 downto 0) => rxcominitdet_out(1 downto 0),
      rxcommadet_out(1 downto 0) => rxcommadet_out(1 downto 0),
      rxcommadeten_in(1 downto 0) => rxcommadeten_in(1 downto 0),
      rxcomsasdet_out(1 downto 0) => rxcomsasdet_out(1 downto 0),
      rxcomwakedet_out(1 downto 0) => rxcomwakedet_out(1 downto 0),
      rxctrl0_out(31 downto 0) => rxctrl0_out(31 downto 0),
      rxctrl1_out(31 downto 0) => rxctrl1_out(31 downto 0),
      rxctrl2_out(15 downto 0) => rxctrl2_out(15 downto 0),
      rxctrl3_out(15 downto 0) => rxctrl3_out(15 downto 0),
      rxdata_out(255 downto 0) => rxdata_out(255 downto 0),
      rxdataextendrsvd_out(15 downto 0) => rxdataextendrsvd_out(15 downto 0),
      rxdatavalid_out(3 downto 0) => rxdatavalid_out(3 downto 0),
      rxdfeagchold_in(1 downto 0) => rxdfeagchold_in(1 downto 0),
      rxdfeagcovrden_in(1 downto 0) => rxdfeagcovrden_in(1 downto 0),
      rxdfecfokfcnum_in(7 downto 0) => rxdfecfokfcnum_in(7 downto 0),
      rxdfecfokfen_in(1 downto 0) => rxdfecfokfen_in(1 downto 0),
      rxdfecfokfpulse_in(1 downto 0) => rxdfecfokfpulse_in(1 downto 0),
      rxdfecfokhold_in(1 downto 0) => rxdfecfokhold_in(1 downto 0),
      rxdfecfokovren_in(1 downto 0) => rxdfecfokovren_in(1 downto 0),
      rxdfekhhold_in(1 downto 0) => rxdfekhhold_in(1 downto 0),
      rxdfekhovrden_in(1 downto 0) => rxdfekhovrden_in(1 downto 0),
      rxdfelfhold_in(1 downto 0) => rxdfelfhold_in(1 downto 0),
      rxdfelfovrden_in(1 downto 0) => rxdfelfovrden_in(1 downto 0),
      rxdfelpmreset_in(1 downto 0) => rxdfelpmreset_in(1 downto 0),
      rxdfetap10hold_in(1 downto 0) => rxdfetap10hold_in(1 downto 0),
      rxdfetap10ovrden_in(1 downto 0) => rxdfetap10ovrden_in(1 downto 0),
      rxdfetap11hold_in(1 downto 0) => rxdfetap11hold_in(1 downto 0),
      rxdfetap11ovrden_in(1 downto 0) => rxdfetap11ovrden_in(1 downto 0),
      rxdfetap12hold_in(1 downto 0) => rxdfetap12hold_in(1 downto 0),
      rxdfetap12ovrden_in(1 downto 0) => rxdfetap12ovrden_in(1 downto 0),
      rxdfetap13hold_in(1 downto 0) => rxdfetap13hold_in(1 downto 0),
      rxdfetap13ovrden_in(1 downto 0) => rxdfetap13ovrden_in(1 downto 0),
      rxdfetap14hold_in(1 downto 0) => rxdfetap14hold_in(1 downto 0),
      rxdfetap14ovrden_in(1 downto 0) => rxdfetap14ovrden_in(1 downto 0),
      rxdfetap15hold_in(1 downto 0) => rxdfetap15hold_in(1 downto 0),
      rxdfetap15ovrden_in(1 downto 0) => rxdfetap15ovrden_in(1 downto 0),
      rxdfetap2hold_in(1 downto 0) => rxdfetap2hold_in(1 downto 0),
      rxdfetap2ovrden_in(1 downto 0) => rxdfetap2ovrden_in(1 downto 0),
      rxdfetap3hold_in(1 downto 0) => rxdfetap3hold_in(1 downto 0),
      rxdfetap3ovrden_in(1 downto 0) => rxdfetap3ovrden_in(1 downto 0),
      rxdfetap4hold_in(1 downto 0) => rxdfetap4hold_in(1 downto 0),
      rxdfetap4ovrden_in(1 downto 0) => rxdfetap4ovrden_in(1 downto 0),
      rxdfetap5hold_in(1 downto 0) => rxdfetap5hold_in(1 downto 0),
      rxdfetap5ovrden_in(1 downto 0) => rxdfetap5ovrden_in(1 downto 0),
      rxdfetap6hold_in(1 downto 0) => rxdfetap6hold_in(1 downto 0),
      rxdfetap6ovrden_in(1 downto 0) => rxdfetap6ovrden_in(1 downto 0),
      rxdfetap7hold_in(1 downto 0) => rxdfetap7hold_in(1 downto 0),
      rxdfetap7ovrden_in(1 downto 0) => rxdfetap7ovrden_in(1 downto 0),
      rxdfetap8hold_in(1 downto 0) => rxdfetap8hold_in(1 downto 0),
      rxdfetap8ovrden_in(1 downto 0) => rxdfetap8ovrden_in(1 downto 0),
      rxdfetap9hold_in(1 downto 0) => rxdfetap9hold_in(1 downto 0),
      rxdfetap9ovrden_in(1 downto 0) => rxdfetap9ovrden_in(1 downto 0),
      rxdfeuthold_in(1 downto 0) => rxdfeuthold_in(1 downto 0),
      rxdfeutovrden_in(1 downto 0) => rxdfeutovrden_in(1 downto 0),
      rxdfevphold_in(1 downto 0) => rxdfevphold_in(1 downto 0),
      rxdfevpovrden_in(1 downto 0) => rxdfevpovrden_in(1 downto 0),
      rxdfexyden_in(1 downto 0) => rxdfexyden_in(1 downto 0),
      rxdlybypass_in(1 downto 0) => rxdlybypass_in(1 downto 0),
      rxdlyen_in(1 downto 0) => rxdlyen_in(1 downto 0),
      rxdlyovrden_in(1 downto 0) => rxdlyovrden_in(1 downto 0),
      rxdlysreset_in(1 downto 0) => rxdlysreset_in(1 downto 0),
      rxdlysresetdone_out(1 downto 0) => rxdlysresetdone_out(1 downto 0),
      rxelecidle_out(1 downto 0) => rxelecidle_out(1 downto 0),
      rxelecidlemode_in(3 downto 0) => rxelecidlemode_in(3 downto 0),
      rxeqtraining_in(1 downto 0) => rxeqtraining_in(1 downto 0),
      rxgearboxslip_in(1 downto 0) => rxgearboxslip_in(1 downto 0),
      rxheader_out(11 downto 0) => rxheader_out(11 downto 0),
      rxheadervalid_out(3 downto 0) => rxheadervalid_out(3 downto 0),
      rxlatclk_in(1 downto 0) => rxlatclk_in(1 downto 0),
      rxlfpstresetdet_out(1 downto 0) => rxlfpstresetdet_out(1 downto 0),
      rxlfpsu2lpexitdet_out(1 downto 0) => rxlfpsu2lpexitdet_out(1 downto 0),
      rxlfpsu3wakedet_out(1 downto 0) => rxlfpsu3wakedet_out(1 downto 0),
      rxlpmen_in(1 downto 0) => rxlpmen_in(1 downto 0),
      rxlpmgchold_in(1 downto 0) => rxlpmgchold_in(1 downto 0),
      rxlpmgcovrden_in(1 downto 0) => rxlpmgcovrden_in(1 downto 0),
      rxlpmhfhold_in(1 downto 0) => rxlpmhfhold_in(1 downto 0),
      rxlpmhfovrden_in(1 downto 0) => rxlpmhfovrden_in(1 downto 0),
      rxlpmlfhold_in(1 downto 0) => rxlpmlfhold_in(1 downto 0),
      rxlpmlfklovrden_in(1 downto 0) => rxlpmlfklovrden_in(1 downto 0),
      rxlpmoshold_in(1 downto 0) => rxlpmoshold_in(1 downto 0),
      rxlpmosovrden_in(1 downto 0) => rxlpmosovrden_in(1 downto 0),
      rxmcommaalignen_in(1 downto 0) => rxmcommaalignen_in(1 downto 0),
      rxmonitorout_out(15 downto 0) => rxmonitorout_out(15 downto 0),
      rxmonitorsel_in(3 downto 0) => rxmonitorsel_in(3 downto 0),
      rxoobreset_in(1 downto 0) => rxoobreset_in(1 downto 0),
      rxoscalreset_in(1 downto 0) => rxoscalreset_in(1 downto 0),
      rxoshold_in(1 downto 0) => rxoshold_in(1 downto 0),
      rxosintdone_out(1 downto 0) => rxosintdone_out(1 downto 0),
      rxosintstarted_out(1 downto 0) => rxosintstarted_out(1 downto 0),
      rxosintstrobedone_out(1 downto 0) => rxosintstrobedone_out(1 downto 0),
      rxosintstrobestarted_out(1 downto 0) => rxosintstrobestarted_out(1 downto 0),
      rxosovrden_in(1 downto 0) => rxosovrden_in(1 downto 0),
      rxoutclk_out(1 downto 0) => \^rxoutclk_out\(1 downto 0),
      rxoutclkfabric_out(1 downto 0) => rxoutclkfabric_out(1 downto 0),
      rxoutclkpcs_out(1 downto 0) => rxoutclkpcs_out(1 downto 0),
      rxoutclksel_in(5 downto 0) => rxoutclksel_in(5 downto 0),
      rxpcommaalignen_in(1 downto 0) => rxpcommaalignen_in(1 downto 0),
      rxpcsreset_in(1 downto 0) => rxpcsreset_in(1 downto 0),
      rxpd_in(3 downto 0) => rxpd_in(3 downto 0),
      rxphalign_in(1 downto 0) => rxphalign_in(1 downto 0),
      rxphaligndone_out(1 downto 0) => rxphaligndone_out(1 downto 0),
      rxphalignen_in(1 downto 0) => rxphalignen_in(1 downto 0),
      rxphalignerr_out(1 downto 0) => rxphalignerr_out(1 downto 0),
      rxphdlypd_in(1 downto 0) => rxphdlypd_in(1 downto 0),
      rxphdlyreset_in(1 downto 0) => rxphdlyreset_in(1 downto 0),
      rxpllclksel_in(3 downto 0) => rxpllclksel_in(3 downto 0),
      rxpmareset_in(1 downto 0) => rxpmareset_in(1 downto 0),
      rxpmaresetdone_out(1 downto 0) => rxpmaresetdone_out(1 downto 0),
      rxpolarity_in(1 downto 0) => rxpolarity_in(1 downto 0),
      rxprbscntreset_in(1 downto 0) => rxprbscntreset_in(1 downto 0),
      rxprbserr_out(1 downto 0) => rxprbserr_out(1 downto 0),
      rxprbslocked_out(1 downto 0) => rxprbslocked_out(1 downto 0),
      rxprbssel_in(7 downto 0) => rxprbssel_in(7 downto 0),
      rxprgdivresetdone_out(1 downto 0) => rxprgdivresetdone_out(1 downto 0),
      rxrate_in(5 downto 0) => rxrate_in(5 downto 0),
      rxratedone_out(1 downto 0) => rxratedone_out(1 downto 0),
      rxratemode_in(1 downto 0) => rxratemode_in(1 downto 0),
      rxrecclkout_out(1 downto 0) => rxrecclkout_out(1 downto 0),
      rxresetdone_out(1 downto 0) => \^rxresetdone_out\(1 downto 0),
      rxslide_in(1 downto 0) => rxslide_in(1 downto 0),
      rxsliderdy_out(1 downto 0) => rxsliderdy_out(1 downto 0),
      rxslipdone_out(1 downto 0) => rxslipdone_out(1 downto 0),
      rxslipoutclk_in(1 downto 0) => rxslipoutclk_in(1 downto 0),
      rxslipoutclkrdy_out(1 downto 0) => rxslipoutclkrdy_out(1 downto 0),
      rxslippma_in(1 downto 0) => rxslippma_in(1 downto 0),
      rxslippmardy_out(1 downto 0) => rxslippmardy_out(1 downto 0),
      rxstartofseq_out(3 downto 0) => rxstartofseq_out(3 downto 0),
      rxstatus_out(5 downto 0) => rxstatus_out(5 downto 0),
      rxsyncallin_in(1 downto 0) => rxsyncallin_in(1 downto 0),
      rxsyncdone_out(1 downto 0) => rxsyncdone_out(1 downto 0),
      rxsyncin_in(1 downto 0) => rxsyncin_in(1 downto 0),
      rxsyncmode_in(1 downto 0) => rxsyncmode_in(1 downto 0),
      rxsyncout_out(1 downto 0) => rxsyncout_out(1 downto 0),
      rxsysclksel_in(3 downto 0) => rxsysclksel_in(3 downto 0),
      rxtermination_in(1 downto 0) => rxtermination_in(1 downto 0),
      rxvalid_out(1 downto 0) => rxvalid_out(1 downto 0),
      sigvalidclk_in(1 downto 0) => sigvalidclk_in(1 downto 0),
      tstin_in(39 downto 0) => tstin_in(39 downto 0),
      tx8b10bbypass_in(15 downto 0) => tx8b10bbypass_in(15 downto 0),
      tx8b10ben_in(1 downto 0) => tx8b10ben_in(1 downto 0),
      txbufstatus_out(3 downto 0) => txbufstatus_out(3 downto 0),
      txcomfinish_out(1 downto 0) => txcomfinish_out(1 downto 0),
      txcominit_in(1 downto 0) => txcominit_in(1 downto 0),
      txcomsas_in(1 downto 0) => txcomsas_in(1 downto 0),
      txcomwake_in(1 downto 0) => txcomwake_in(1 downto 0),
      txctrl0_in(31 downto 0) => txctrl0_in(31 downto 0),
      txctrl1_in(31 downto 0) => txctrl1_in(31 downto 0),
      txctrl2_in(15 downto 0) => txctrl2_in(15 downto 0),
      txdataextendrsvd_in(15 downto 0) => txdataextendrsvd_in(15 downto 0),
      txdccdone_out(1 downto 0) => txdccdone_out(1 downto 0),
      txdccforcestart_in(1 downto 0) => txdccforcestart_in(1 downto 0),
      txdccreset_in(1 downto 0) => txdccreset_in(1 downto 0),
      txdeemph_in(3 downto 0) => txdeemph_in(3 downto 0),
      txdetectrx_in(1 downto 0) => txdetectrx_in(1 downto 0),
      txdiffctrl_in(9 downto 0) => txdiffctrl_in(9 downto 0),
      txdlybypass_in(1 downto 0) => txdlybypass_in(1 downto 0),
      txdlyen_in(1 downto 0) => txdlyen_in(1 downto 0),
      txdlyhold_in(1 downto 0) => txdlyhold_in(1 downto 0),
      txdlyovrden_in(1 downto 0) => txdlyovrden_in(1 downto 0),
      txdlysreset_in(1 downto 0) => txdlysreset_in(1 downto 0),
      txdlysresetdone_out(1 downto 0) => txdlysresetdone_out(1 downto 0),
      txdlyupdown_in(1 downto 0) => txdlyupdown_in(1 downto 0),
      txelecidle_in(1 downto 0) => txelecidle_in(1 downto 0),
      txheader_in(11 downto 0) => txheader_in(11 downto 0),
      txinhibit_in(1 downto 0) => txinhibit_in(1 downto 0),
      txlatclk_in(1 downto 0) => txlatclk_in(1 downto 0),
      txlfpstreset_in(1 downto 0) => txlfpstreset_in(1 downto 0),
      txlfpsu2lpexit_in(1 downto 0) => txlfpsu2lpexit_in(1 downto 0),
      txlfpsu3wake_in(1 downto 0) => txlfpsu3wake_in(1 downto 0),
      txmaincursor_in(13 downto 0) => txmaincursor_in(13 downto 0),
      txmargin_in(5 downto 0) => txmargin_in(5 downto 0),
      txmuxdcdexhold_in(1 downto 0) => txmuxdcdexhold_in(1 downto 0),
      txmuxdcdorwren_in(1 downto 0) => txmuxdcdorwren_in(1 downto 0),
      txoneszeros_in(1 downto 0) => txoneszeros_in(1 downto 0),
      txoutclk_out(1 downto 0) => \^txoutclk_out\(1 downto 0),
      txoutclkfabric_out(1 downto 0) => txoutclkfabric_out(1 downto 0),
      txoutclksel_in(5 downto 0) => txoutclksel_in(5 downto 0),
      txpcsreset_in(1 downto 0) => txpcsreset_in(1 downto 0),
      txpd_in(3 downto 0) => txpd_in(3 downto 0),
      txpdelecidlemode_in(1 downto 0) => txpdelecidlemode_in(1 downto 0),
      txphalign_in(1 downto 0) => txphalign_in(1 downto 0),
      txphaligndone_out(1 downto 0) => txphaligndone_out(1 downto 0),
      txphalignen_in(1 downto 0) => txphalignen_in(1 downto 0),
      txphdlypd_in(1 downto 0) => txphdlypd_in(1 downto 0),
      txphdlyreset_in(1 downto 0) => txphdlyreset_in(1 downto 0),
      txphdlytstclk_in(1 downto 0) => txphdlytstclk_in(1 downto 0),
      txphinit_in(1 downto 0) => txphinit_in(1 downto 0),
      txphinitdone_out(1 downto 0) => txphinitdone_out(1 downto 0),
      txphovrden_in(1 downto 0) => txphovrden_in(1 downto 0),
      txpippmen_in(1 downto 0) => txpippmen_in(1 downto 0),
      txpippmovrden_in(1 downto 0) => txpippmovrden_in(1 downto 0),
      txpippmpd_in(1 downto 0) => txpippmpd_in(1 downto 0),
      txpippmsel_in(1 downto 0) => txpippmsel_in(1 downto 0),
      txpippmstepsize_in(9 downto 0) => txpippmstepsize_in(9 downto 0),
      txpllclksel_in(3 downto 0) => txpllclksel_in(3 downto 0),
      txpmaresetdone_out(1 downto 0) => txpmaresetdone_out(1 downto 0),
      txpolarity_in(1 downto 0) => txpolarity_in(1 downto 0),
      txpostcursor_in(9 downto 0) => txpostcursor_in(9 downto 0),
      txprbsforceerr_in(1 downto 0) => txprbsforceerr_in(1 downto 0),
      txprbssel_in(7 downto 0) => txprbssel_in(7 downto 0),
      txprecursor_in(9 downto 0) => txprecursor_in(9 downto 0),
      txprgdivresetdone_out(1 downto 0) => txprgdivresetdone_out(1 downto 0),
      txratedone_out(1 downto 0) => txratedone_out(1 downto 0),
      txresetdone_out(1 downto 0) => \^txresetdone_out\(1 downto 0),
      txsequence_in(13 downto 0) => txsequence_in(13 downto 0),
      txswing_in(1 downto 0) => txswing_in(1 downto 0),
      txsyncallin_in(1 downto 0) => txsyncallin_in(1 downto 0),
      txsyncdone_out(1 downto 0) => txsyncdone_out(1 downto 0),
      txsyncin_in(1 downto 0) => txsyncin_in(1 downto 0),
      txsyncmode_in(1 downto 0) => txsyncmode_in(1 downto 0),
      txsyncout_out(1 downto 0) => txsyncout_out(1 downto 0),
      txsysclksel_in(3 downto 0) => txsysclksel_in(3 downto 0)
    );
\gen_gtwizard_gtye4.gen_common.gen_common_container[2].gen_enabled_common.gtye4_common_wrapper_inst\: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtye4_common_wrapper
     port map (
      bgbypassb_in(0) => bgbypassb_in(0),
      bgmonitorenb_in(0) => bgmonitorenb_in(0),
      bgpdb_in(0) => bgpdb_in(0),
      bgrcalovrd_in(4 downto 0) => bgrcalovrd_in(4 downto 0),
      bgrcalovrdenb_in(0) => bgrcalovrdenb_in(0),
      drpaddr_common_in(15 downto 0) => drpaddr_common_in(15 downto 0),
      drpclk_common_in(0) => drpclk_common_in(0),
      drpdi_common_in(15 downto 0) => drpdi_common_in(15 downto 0),
      drpdo_common_out(15 downto 0) => drpdo_common_out(15 downto 0),
      drpen_common_in(0) => drpen_common_in(0),
      drprdy_common_out(0) => drprdy_common_out(0),
      drpwe_common_in(0) => drpwe_common_in(0),
      gtgrefclk0_in(0) => gtgrefclk0_in(0),
      gtgrefclk1_in(0) => gtgrefclk1_in(0),
      gtnorthrefclk00_in(0) => gtnorthrefclk00_in(0),
      gtnorthrefclk01_in(0) => gtnorthrefclk01_in(0),
      gtnorthrefclk10_in(0) => gtnorthrefclk10_in(0),
      gtnorthrefclk11_in(0) => gtnorthrefclk11_in(0),
      gtrefclk00_in(0) => gtrefclk00_in(0),
      gtrefclk01_in(0) => gtrefclk01_in(0),
      gtrefclk10_in(0) => gtrefclk10_in(0),
      gtrefclk11_in(0) => gtrefclk11_in(0),
      gtsouthrefclk00_in(0) => gtsouthrefclk00_in(0),
      gtsouthrefclk01_in(0) => gtsouthrefclk01_in(0),
      gtsouthrefclk10_in(0) => gtsouthrefclk10_in(0),
      gtsouthrefclk11_in(0) => gtsouthrefclk11_in(0),
      gtwiz_reset_qpll0reset_out(0) => \^gtwiz_reset_qpll0reset_out\(0),
      pcierateqpll0_in(2 downto 0) => pcierateqpll0_in(2 downto 0),
      pcierateqpll1_in(2 downto 0) => pcierateqpll1_in(2 downto 0),
      pmarsvd0_in(7 downto 0) => pmarsvd0_in(7 downto 0),
      pmarsvd1_in(7 downto 0) => pmarsvd1_in(7 downto 0),
      pmarsvdout0_out(7 downto 0) => pmarsvdout0_out(7 downto 0),
      pmarsvdout1_out(7 downto 0) => pmarsvdout1_out(7 downto 0),
      qpll0clkrsvd0_in(0) => qpll0clkrsvd0_in(0),
      qpll0clkrsvd1_in(0) => qpll0clkrsvd1_in(0),
      qpll0fbclklost_out(0) => qpll0fbclklost_out(0),
      qpll0fbdiv_in(7 downto 0) => qpll0fbdiv_in(7 downto 0),
      qpll0lock_out(0) => \^qpll0lock_out\(0),
      qpll0lockdetclk_in(0) => qpll0lockdetclk_in(0),
      qpll0locken_in(0) => qpll0locken_in(0),
      qpll0outclk_out(0) => \^qpll0outclk_out\(0),
      qpll0outrefclk_out(0) => \^qpll0outrefclk_out\(0),
      qpll0pd_in(0) => qpll0pd_in(0),
      qpll0refclklost_out(0) => qpll0refclklost_out(0),
      qpll0refclksel_in(2 downto 0) => qpll0refclksel_in(2 downto 0),
      qpll1clkrsvd0_in(0) => qpll1clkrsvd0_in(0),
      qpll1clkrsvd1_in(0) => qpll1clkrsvd1_in(0),
      qpll1fbclklost_out(0) => qpll1fbclklost_out(0),
      qpll1fbdiv_in(7 downto 0) => qpll1fbdiv_in(7 downto 0),
      qpll1lock_out(0) => qpll1lock_out(0),
      qpll1lockdetclk_in(0) => qpll1lockdetclk_in(0),
      qpll1locken_in(0) => qpll1locken_in(0),
      qpll1outclk_out(0) => \^qpll1outclk_out\(0),
      qpll1outrefclk_out(0) => \^qpll1outrefclk_out\(0),
      qpll1pd_in(0) => qpll1pd_in(0),
      qpll1refclklost_out(0) => qpll1refclklost_out(0),
      qpll1refclksel_in(2 downto 0) => qpll1refclksel_in(2 downto 0),
      qpll1reset_in(0) => qpll1reset_in(0),
      qplldmonitor0_out(7 downto 0) => qplldmonitor0_out(7 downto 0),
      qplldmonitor1_out(7 downto 0) => qplldmonitor1_out(7 downto 0),
      qpllrsvd1_in(7 downto 0) => qpllrsvd1_in(7 downto 0),
      qpllrsvd2_in(4 downto 0) => qpllrsvd2_in(4 downto 0),
      qpllrsvd3_in(4 downto 0) => qpllrsvd3_in(4 downto 0),
      qpllrsvd4_in(7 downto 0) => qpllrsvd4_in(7 downto 0),
      rcalenb_in(0) => rcalenb_in(0),
      refclkoutmonitor0_out(0) => refclkoutmonitor0_out(0),
      refclkoutmonitor1_out(0) => refclkoutmonitor1_out(0),
      rst_in0 => rst_in0,
      rxrecclk0sel_out(1 downto 0) => rxrecclk0sel_out(1 downto 0),
      rxrecclk1sel_out(1 downto 0) => rxrecclk1sel_out(1 downto 0),
      sdm0data_in(24 downto 0) => sdm0data_in(24 downto 0),
      sdm0finalout_out(3 downto 0) => sdm0finalout_out(3 downto 0),
      sdm0reset_in(0) => sdm0reset_in(0),
      sdm0testdata_out(14 downto 0) => sdm0testdata_out(14 downto 0),
      sdm0toggle_in(0) => sdm0toggle_in(0),
      sdm0width_in(1 downto 0) => sdm0width_in(1 downto 0),
      sdm1data_in(24 downto 0) => sdm1data_in(24 downto 0),
      sdm1finalout_out(3 downto 0) => sdm1finalout_out(3 downto 0),
      sdm1reset_in(0) => sdm1reset_in(0),
      sdm1testdata_out(14 downto 0) => sdm1testdata_out(14 downto 0),
      sdm1toggle_in(0) => sdm1toggle_in(0),
      sdm1width_in(1 downto 0) => sdm1width_in(1 downto 0),
      ubcfgstreamen_in(0) => ubcfgstreamen_in(0),
      ubdaddr_out(15 downto 0) => ubdaddr_out(15 downto 0),
      ubden_out(0) => ubden_out(0),
      ubdi_out(15 downto 0) => ubdi_out(15 downto 0),
      ubdo_in(15 downto 0) => ubdo_in(15 downto 0),
      ubdrdy_in(0) => ubdrdy_in(0),
      ubdwe_out(0) => ubdwe_out(0),
      ubenable_in(0) => ubenable_in(0),
      ubgpi_in(1 downto 0) => ubgpi_in(1 downto 0),
      ubintr_in(1 downto 0) => ubintr_in(1 downto 0),
      ubiolmbrst_in(0) => ubiolmbrst_in(0),
      ubmbrst_in(0) => ubmbrst_in(0),
      ubmdmcapture_in(0) => ubmdmcapture_in(0),
      ubmdmdbgrst_in(0) => ubmdmdbgrst_in(0),
      ubmdmdbgupdate_in(0) => ubmdmdbgupdate_in(0),
      ubmdmregen_in(3 downto 0) => ubmdmregen_in(3 downto 0),
      ubmdmshift_in(0) => ubmdmshift_in(0),
      ubmdmsysrst_in(0) => ubmdmsysrst_in(0),
      ubmdmtck_in(0) => ubmdmtck_in(0),
      ubmdmtdi_in(0) => ubmdmtdi_in(0),
      ubmdmtdo_out(0) => ubmdmtdo_out(0),
      ubrsvdout_out(0) => ubrsvdout_out(0),
      ubtxuart_out(0) => ubtxuart_out(0)
    );
\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst\: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_delay_powergood
     port map (
      CLK => \^txoutclkpcs_out\(0),
      GTYE4_CHANNEL_TXPISOPD(0) => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_5\,
      GTYE4_CHANNEL_TXPMARESET(0) => \gen_gtwizard_gtye4.txpmareset_ch_int\(0),
      GTYE4_CHANNEL_TXRATE(2 downto 1) => \gen_gtwizard_gtye4.txrate_ch_int\(2 downto 1),
      GTYE4_CHANNEL_TXRATE(0) => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_4\,
      GTYE4_CHANNEL_TXRATEMODE(0) => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1\,
      \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\ => \gen_gtwizard_gtye4.gen_channel_container[2].gen_enabled_channel.gtye4_channel_wrapper_inst_n_0\,
      i_in_meta_reg => \^gtpowergood_out\(1),
      in0 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_gtpowergood_int\,
      \out\ => \^gtpowergood_out\(0),
      txpisopd_in(0) => txpisopd_in(0),
      txpmareset_in(0) => txpmareset_in(0),
      txrate_in(2 downto 0) => txrate_in(2 downto 0),
      txratemode_in(0) => txratemode_in(0)
    );
\gen_gtwizard_gtye4.gen_pwrgood_delay_inst[1].delay_powergood_inst\: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtye4_delay_powergood_0
     port map (
      CLK => \^txoutclkpcs_out\(1),
      GTYE4_CHANNEL_TXPISOPD(0) => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[1].delay_powergood_inst_n_5\,
      GTYE4_CHANNEL_TXPMARESET(0) => \gen_gtwizard_gtye4.txpmareset_ch_int\(1),
      GTYE4_CHANNEL_TXRATE(2 downto 1) => \gen_gtwizard_gtye4.txrate_ch_int\(5 downto 4),
      GTYE4_CHANNEL_TXRATE(0) => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[1].delay_powergood_inst_n_4\,
      GTYE4_CHANNEL_TXRATEMODE(0) => \gen_gtwizard_gtye4.gen_pwrgood_delay_inst[1].delay_powergood_inst_n_1\,
      \gen_powergood_delay.intclk_rrst_n_r_reg[0]_0\ => \gen_gtwizard_gtye4.gen_channel_container[2].gen_enabled_channel.gtye4_channel_wrapper_inst_n_3\,
      \out\ => \^gtpowergood_out\(1),
      txpisopd_in(0) => txpisopd_in(1),
      txpmareset_in(0) => txpmareset_in(1),
      txrate_in(2 downto 0) => txrate_in(5 downto 3),
      txratemode_in(0) => txratemode_in(1)
    );
\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_rxresetdone_inst\: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer
     port map (
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\(0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_rx_done_int_reg(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\(1),
      i_in_out_reg_0 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_rxresetdone_inst_n_1\,
      rxresetdone_out(0) => \^rxresetdone_out\(0)
    );
\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_txresetdone_inst\: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_1
     port map (
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\(0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      i_in_out_reg_0 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_txresetdone_inst_n_1\,
      sm_reset_tx_timer_clr_i_2(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\(1),
      txresetdone_out(0) => \^txresetdone_out\(0)
    );
\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[1].bit_synchronizer_rxresetdone_inst\: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_2
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      i_in_out_reg_0(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\(1),
      rxresetdone_out(0) => \^rxresetdone_out\(1)
    );
\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[1].bit_synchronizer_txresetdone_inst\: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_bit_synchronizer_3
     port map (
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      i_in_out_reg_0(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\(1),
      txresetdone_out(0) => \^txresetdone_out\(1)
    );
\gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst\: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtwiz_reset
     port map (
      GTYE4_CHANNEL_GTPOWERGOOD(1 downto 0) => \gen_gtwizard_gtye4.gtpowergood_int\(1 downto 0),
      GTYE4_CHANNEL_GTRXRESET(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_gtrxreset_int\,
      GTYE4_CHANNEL_GTTXRESET(1 downto 0) => \gen_gtwizard_gtye4.gttxreset_ch_int\(1 downto 0),
      GTYE4_CHANNEL_RXPROGDIVRESET(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_rxprogdivreset_int\,
      GTYE4_CHANNEL_RXUSERRDY(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_rxuserrdy_int\,
      GTYE4_CHANNEL_TXPROGDIVRESET(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_txprogdivreset_int\,
      GTYE4_CHANNEL_TXUSERRDY(0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_txuserrdy_int\,
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\(1 downto 0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync\(1 downto 0),
      \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\(1 downto 0) => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync\(1 downto 0),
      gtpowergood_out(1 downto 0) => \^gtpowergood_out\(1 downto 0),
      gtwiz_reset_all_in(0) => gtwiz_reset_all_in(0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_qpll0reset_out(0) => \^gtwiz_reset_qpll0reset_out\(0),
      gtwiz_reset_rx_cdr_stable_out(0) => gtwiz_reset_rx_cdr_stable_out(0),
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      gtwiz_reset_rx_done_int_reg_0 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_rxresetdone_inst_n_1\,
      gtwiz_reset_rx_done_out(0) => gtwiz_reset_rx_done_out(0),
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      gtwiz_reset_tx_done_int_reg_0 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_txresetdone_inst_n_1\,
      gtwiz_reset_tx_done_out(0) => gtwiz_reset_tx_done_out(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      gtwiz_userclk_rx_active_out(0) => \^gtwiz_userclk_rx_active_out\(0),
      gtwiz_userclk_rx_usrclk2_out(0) => \^gtwiz_userclk_rx_usrclk2_out\(0),
      gtwiz_userclk_tx_active_out(0) => \^gtwiz_userclk_tx_active_out\(0),
      gtwiz_userclk_tx_usrclk2_out(0) => \^gtwiz_userclk_tx_usrclk2_out\(0),
      i_in_meta_reg => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_rxcdrlock_int\,
      in0 => \gen_gtwizard_gtye4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_gtpowergood_int\,
      qpll0lock_out(0) => \^qpll0lock_out\(0),
      rst_in0 => rst_in0
    );
\gen_gtwizard_gtye4.gen_rx_user_clocking_internal.gen_single_instance.gtwiz_userclk_rx_inst\: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtwiz_userclk_rx
     port map (
      gtwiz_userclk_rx_active_out(0) => \^gtwiz_userclk_rx_active_out\(0),
      gtwiz_userclk_rx_reset_in(0) => gtwiz_userclk_rx_reset_in(0),
      gtwiz_userclk_rx_usrclk2_out(0) => \^gtwiz_userclk_rx_usrclk2_out\(0),
      gtwiz_userclk_rx_usrclk_out(0) => \^gtwiz_userclk_rx_usrclk_out\(0),
      lopt => lopt,
      lopt_1 => lopt_1,
      lopt_2 => lopt_2,
      rxoutclk_out(0) => \^rxoutclk_out\(0)
    );
\gen_gtwizard_gtye4.gen_tx_user_clocking_internal.gen_single_instance.gtwiz_userclk_tx_inst\: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_v1_7_5_gtwiz_userclk_tx
     port map (
      gtwiz_userclk_tx_active_out(0) => \^gtwiz_userclk_tx_active_out\(0),
      gtwiz_userclk_tx_reset_in(0) => gtwiz_userclk_tx_reset_in(0),
      gtwiz_userclk_tx_usrclk2_out(0) => \^gtwiz_userclk_tx_usrclk2_out\(0),
      gtwiz_userclk_tx_usrclk_out(0) => \^gtwiz_userclk_tx_usrclk_out\(0),
      lopt => lopt_3,
      lopt_1 => lopt_4,
      lopt_2 => lopt_5,
      txoutclk_out(0) => \^txoutclk_out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top is
  port (
    gtwiz_userclk_tx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_srcclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_srcclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_start_user_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_tx_error_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_start_user_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_buffbypass_rx_error_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0lock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll1lock_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll0reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_qpll1reset_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_gthe3_cpll_cal_txoutclk_period_in : in STD_LOGIC_VECTOR ( 35 downto 0 );
    gtwiz_gthe3_cpll_cal_cnt_tol_in : in STD_LOGIC_VECTOR ( 35 downto 0 );
    gtwiz_gthe3_cpll_cal_bufg_ce_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtwiz_gthe4_cpll_cal_txoutclk_period_in : in STD_LOGIC_VECTOR ( 35 downto 0 );
    gtwiz_gthe4_cpll_cal_cnt_tol_in : in STD_LOGIC_VECTOR ( 35 downto 0 );
    gtwiz_gthe4_cpll_cal_bufg_ce_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtwiz_gtye4_cpll_cal_txoutclk_period_in : in STD_LOGIC_VECTOR ( 35 downto 0 );
    gtwiz_gtye4_cpll_cal_cnt_tol_in : in STD_LOGIC_VECTOR ( 35 downto 0 );
    gtwiz_gtye4_cpll_cal_bufg_ce_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtwiz_userdata_tx_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    gtwiz_userdata_rx_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    bgbypassb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgmonitorenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgpdb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    bgrcalovrd_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    bgrcalovrdenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpaddr_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpclk_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpdi_common_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpwe_common_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtgrefclk1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk01_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk10_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtsouthrefclk11_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcierateqpll0_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pcierateqpll1_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pmarsvd0_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll0reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd0_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1clkrsvd1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1fbdiv_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll1lockdetclk_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1locken_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1pd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclksel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    qpll1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpllrsvd1_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    qpllrsvd2_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd3_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    qpllrsvd4_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rcalenb_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sdm0reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm0width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm1data_in : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sdm1reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1toggle_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdm1width_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tcongpi_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tconpowerup_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tconreset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    tconrsvdin1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubcfgstreamen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubdo_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdrdy_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubenable_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubgpi_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubintr_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ubiolmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmbrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmcapture_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmdbgupdate_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmregen_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ubmdmshift_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmsysrst_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtck_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdi_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    drpdo_common_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drprdy_common_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    pmarsvdout0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pmarsvdout1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qpll0fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1fbclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1lock_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll1refclklost_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qplldmonitor0_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    qplldmonitor1_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    refclkoutmonitor0_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    refclkoutmonitor1_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclk0_sel_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclk1_sel_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxrecclk0sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxrecclk1sel_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sdm0finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sdm0testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    sdm1finalout_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sdm1testdata_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    tcongpo_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    tconrsvdout0_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubdaddr_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubden_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubdi_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ubdwe_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubmdmtdo_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubrsvdout_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    ubtxuart_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    cdrstepdir_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cdrstepsq_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cdrstepsx_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cfgreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clkrsvd0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clkrsvd1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllfreqlock_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cplllockdetclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cplllocken_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllrefclksel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    cpllreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dmonfiforeset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dmonitorclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 19 downto 0 );
    drpclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    drpen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drprst_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    drpwe_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    elpcaldvorwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    elpcalpaorwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphicaldone_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphicalstart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphidrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphidwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphixrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    evoddphixwren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanmode_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    eyescanreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    eyescantrigger_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    freqos_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtgrefclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gthrxn_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gthrxp_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtnorthrefclk0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtnorthrefclk1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclk1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtresetsel_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtrsvd_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gtrxreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrxresetsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtsouthrefclk0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtsouthrefclk1_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gttxreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gttxresetsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    incpctrl_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtyrxn_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    loopback_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    looprsvd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    lpbkrxtxseren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    lpbktxrxseren_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcieeqrxeqadaptdone_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierstidle_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pciersttxsyncstart_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieuserratedone_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pcsrsvdin_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pcsrsvdin2_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    pmarsvdin_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0clk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll0freqlock_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll0refclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll1clk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll1freqlock_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    qpll1refclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    resetovrd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rstclkentx_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx8b10ben_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxafecfoken_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbufreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrfreqreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrresetrsv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxchbonden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbondi_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rxchbondlevel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxchbondmaster_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbondslave_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxckcalreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxckcalstart_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    rxcommadeten_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeagcctrl_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdccforcestart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfeagchold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeagcovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokfcnum_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxdfecfokfen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokfpulse_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfecfokovren_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfekhhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfekhovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfelfhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfelfovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfelpmreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap10hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap10ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap11hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap11ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap12hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap12ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap13hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap13ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap14hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap14ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap15hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap15ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap2hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap2ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap3hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap3ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap4hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap4ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap5hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap5ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap6hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap6ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap7hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap7ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap8hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap8ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap9hold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfetap9ovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeuthold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfeutovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfevphold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfevpovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdfevsen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxdfexyden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlybypass_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlyen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlyovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdlysreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxelecidlemode_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxeqtraining_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxgearboxslip_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlatclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmgchold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmgcovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmhfhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmhfovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmlfhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmlfklovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmoshold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlpmosovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxmcommaalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxmonitorsel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxoobreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoscalreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoshold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintcfg_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinten_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinthold_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosintstrobe_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosinttestovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxosovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoutclksel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxpcommaalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpcsreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpd_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxphalign_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphdlypd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphdlyreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphovrden_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxpllclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxpmareset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpolarity_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprbscntreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprbssel_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxprogdivreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxqpien_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    rxrate_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    rxratemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslide_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslipoutclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslippma_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncallin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncmode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsysclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rxtermination_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxuserrdy_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxusrclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxusrclk2_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sigvalidclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tstin_in : in STD_LOGIC_VECTOR ( 39 downto 0 );
    tx8b10bbypass_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tx8b10ben_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txbufdiffctrl_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txcominit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txcomsas_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txcomwake_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txctrl0_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    txctrl1_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    txctrl2_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txdata_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    txdataextendrsvd_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    txdccforcestart_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdccreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdeemph_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txdetectrx_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdiffctrl_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txdiffpd_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txdlybypass_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlysreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlyupdown_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txelecidle_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txelforcestart_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txheader_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    txinhibit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlatclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlfpstreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlfpsu2lpexit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txlfpsu3wake_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txmaincursor_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    txmargin_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txmuxdcdexhold_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txmuxdcdorwren_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txoneszeros_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txoutclksel_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txpcsreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpd_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txpdelecidlemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphalign_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphalignen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphdlypd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphdlyreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphdlytstclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphinit_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txphovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmen_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmovrden_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmpd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpippmstepsize_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txpisopd_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpllclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txpmareset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpolarity_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txpostcursor_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txpostcursorinv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprbsforceerr_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txprbssel_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    txprecursor_in : in STD_LOGIC_VECTOR ( 9 downto 0 );
    txprecursorinv_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txprogdivreset_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txqpibiasen_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpistrongpdown_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txqpiweakpup_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    txrate_in : in STD_LOGIC_VECTOR ( 5 downto 0 );
    txratemode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsequence_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    txswing_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncallin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncin_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncmode_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txsysclksel_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txuserrdy_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txusrclk_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txusrclk2_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bufgtce_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bufgtcemask_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    bufgtdiv_out : out STD_LOGIC_VECTOR ( 17 downto 0 );
    bufgtreset_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bufgtrstmask_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    cpllfbclklost_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cplllock_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cpllrefclklost_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dmonitorout_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dmonitoroutclk_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    drprdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    eyescandataerror_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gthtxn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gthtxp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtpowergood_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtrefclkmonitor_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtytxn_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierategen3_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierateidle_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcierateqpllpd_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcierateqpllreset_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pciesynctxsyncdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieusergen3rdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieuserphystatusrst_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcieuserratestart_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pcsrsvdout_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    phystatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pinrsrvdas_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    powerpresent_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    resetexception_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbufstatus_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxbyteisaligned_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxbyterealign_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrlock_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcdrphdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchanbondseq_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchanisaligned_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchanrealign_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxchbondo_out : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rxckcaldone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxclkcorcnt_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxcominitdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcommadet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcomsasdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcomwakedet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxctrl0_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxctrl1_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rxctrl2_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxctrl3_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxdata_out : out STD_LOGIC_VECTOR ( 255 downto 0 );
    rxdataextendrsvd_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxdatavalid_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxdlysresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxelecidle_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxheader_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rxheadervalid_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxlfpstresetdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlfpsu2lpexitdet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxlfpsu3wakedet_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxmonitorout_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    rxosintdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintstarted_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintstrobedone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxosintstrobestarted_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoutclk_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoutclkfabric_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxoutclkpcs_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphaligndone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxphalignerr_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprbserr_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprbslocked_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxqpisenn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxqpisenp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxratedone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxrecclkout_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsliderdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslipdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslipoutclkrdy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxslippmardy_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxstartofseq_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxstatus_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    rxsyncdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxsyncout_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxvalid_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txbufstatus_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txcomfinish_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txdccdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txdlysresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txoutclk_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txoutclkfabric_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txoutclkpcs_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txphaligndone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txphinitdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txqpisenn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txqpisenp_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    txratedone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txsyncout_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_CHANNEL_ENABLE : string;
  attribute C_CHANNEL_ENABLE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000";
  attribute C_COMMON_SCALING_FACTOR : integer;
  attribute C_COMMON_SCALING_FACTOR of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 1;
  attribute C_CPLL_VCO_FREQUENCY : string;
  attribute C_CPLL_VCO_FREQUENCY of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "2578.125000";
  attribute C_ENABLE_COMMON_USRCLK : integer;
  attribute C_ENABLE_COMMON_USRCLK of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_FORCE_COMMONS : integer;
  attribute C_FORCE_COMMONS of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_FREERUN_FREQUENCY : string;
  attribute C_FREERUN_FREQUENCY of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "125.000000";
  attribute C_GT_REV : integer;
  attribute C_GT_REV of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 67;
  attribute C_GT_TYPE : integer;
  attribute C_GT_TYPE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 3;
  attribute C_INCLUDE_CPLL_CAL : integer;
  attribute C_INCLUDE_CPLL_CAL of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 2;
  attribute C_LOCATE_COMMON : integer;
  attribute C_LOCATE_COMMON of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE : integer;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 2;
  attribute C_LOCATE_RESET_CONTROLLER : integer;
  attribute C_LOCATE_RESET_CONTROLLER of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_LOCATE_RX_USER_CLOCKING : integer;
  attribute C_LOCATE_RX_USER_CLOCKING of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_LOCATE_TX_USER_CLOCKING : integer;
  attribute C_LOCATE_TX_USER_CLOCKING of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING : integer;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_PCIE_CORECLK_FREQ : integer;
  attribute C_PCIE_CORECLK_FREQ of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 250;
  attribute C_PCIE_ENABLE : integer;
  attribute C_PCIE_ENABLE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL : integer;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_RESET_SEQUENCE_INTERVAL : integer;
  attribute C_RESET_SEQUENCE_INTERVAL of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_RX_BUFFBYPASS_MODE : integer;
  attribute C_RX_BUFFBYPASS_MODE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_RX_BUFFER_MODE : integer;
  attribute C_RX_BUFFER_MODE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 1;
  attribute C_RX_CB_DISP : string;
  attribute C_RX_CB_DISP of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CB_K : string;
  attribute C_RX_CB_K of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CB_LEN_SEQ : integer;
  attribute C_RX_CB_LEN_SEQ of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 1;
  attribute C_RX_CB_MAX_LEVEL : integer;
  attribute C_RX_CB_MAX_LEVEL of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 1;
  attribute C_RX_CB_NUM_SEQ : integer;
  attribute C_RX_CB_NUM_SEQ of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_RX_CB_VAL : string;
  attribute C_RX_CB_VAL of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_CC_DISP : string;
  attribute C_RX_CC_DISP of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CC_ENABLE : integer;
  attribute C_RX_CC_ENABLE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_RX_CC_K : string;
  attribute C_RX_CC_K of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "8'b00000000";
  attribute C_RX_CC_LEN_SEQ : integer;
  attribute C_RX_CC_LEN_SEQ of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 1;
  attribute C_RX_CC_NUM_SEQ : integer;
  attribute C_RX_CC_NUM_SEQ of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_RX_CC_PERIODICITY : integer;
  attribute C_RX_CC_PERIODICITY of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 5000;
  attribute C_RX_CC_VAL : string;
  attribute C_RX_CC_VAL of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_COMMA_M_ENABLE : integer;
  attribute C_RX_COMMA_M_ENABLE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_RX_COMMA_M_VAL : string;
  attribute C_RX_COMMA_M_VAL of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "10'b1010000011";
  attribute C_RX_COMMA_P_ENABLE : integer;
  attribute C_RX_COMMA_P_ENABLE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_RX_COMMA_P_VAL : string;
  attribute C_RX_COMMA_P_VAL of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "10'b0101111100";
  attribute C_RX_DATA_DECODING : integer;
  attribute C_RX_DATA_DECODING of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 2;
  attribute C_RX_ENABLE : integer;
  attribute C_RX_ENABLE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 1;
  attribute C_RX_INT_DATA_WIDTH : integer;
  attribute C_RX_INT_DATA_WIDTH of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 32;
  attribute C_RX_LINE_RATE : string;
  attribute C_RX_LINE_RATE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "10.312500";
  attribute C_RX_MASTER_CHANNEL_IDX : integer;
  attribute C_RX_MASTER_CHANNEL_IDX of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 10;
  attribute C_RX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_RX_OUTCLK_BUFG_GT_DIV of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 1;
  attribute C_RX_OUTCLK_FREQUENCY : string;
  attribute C_RX_OUTCLK_FREQUENCY of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "322.265625";
  attribute C_RX_OUTCLK_SOURCE : integer;
  attribute C_RX_OUTCLK_SOURCE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 4;
  attribute C_RX_PLL_TYPE : integer;
  attribute C_RX_PLL_TYPE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_RX_RECCLK_OUTPUT : string;
  attribute C_RX_RECCLK_OUTPUT of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_REFCLK_FREQUENCY : string;
  attribute C_RX_REFCLK_FREQUENCY of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "156.250000";
  attribute C_RX_SLIDE_MODE : integer;
  attribute C_RX_SLIDE_MODE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_RX_USER_CLOCKING_CONTENTS : integer;
  attribute C_RX_USER_CLOCKING_CONTENTS of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 1;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 2;
  attribute C_RX_USER_CLOCKING_SOURCE : integer;
  attribute C_RX_USER_CLOCKING_SOURCE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_RX_USER_DATA_WIDTH : integer;
  attribute C_RX_USER_DATA_WIDTH of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 64;
  attribute C_RX_USRCLK2_FREQUENCY : string;
  attribute C_RX_USRCLK2_FREQUENCY of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "161.132812";
  attribute C_RX_USRCLK_FREQUENCY : string;
  attribute C_RX_USRCLK_FREQUENCY of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "322.265625";
  attribute C_SECONDARY_QPLL_ENABLE : integer;
  attribute C_SECONDARY_QPLL_ENABLE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY : string;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "257.812500";
  attribute C_SIM_CPLL_CAL_BYPASS : integer;
  attribute C_SIM_CPLL_CAL_BYPASS of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 1;
  attribute C_TOTAL_NUM_CHANNELS : integer;
  attribute C_TOTAL_NUM_CHANNELS of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 2;
  attribute C_TOTAL_NUM_COMMONS : integer;
  attribute C_TOTAL_NUM_COMMONS of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 1;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE : integer;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_TXPROGDIV_FREQ_ENABLE : integer;
  attribute C_TXPROGDIV_FREQ_ENABLE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_TXPROGDIV_FREQ_SOURCE : integer;
  attribute C_TXPROGDIV_FREQ_SOURCE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_TXPROGDIV_FREQ_VAL : string;
  attribute C_TXPROGDIV_FREQ_VAL of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "322.265625";
  attribute C_TX_BUFFBYPASS_MODE : integer;
  attribute C_TX_BUFFBYPASS_MODE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_TX_BUFFER_MODE : integer;
  attribute C_TX_BUFFER_MODE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 1;
  attribute C_TX_DATA_ENCODING : integer;
  attribute C_TX_DATA_ENCODING of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 2;
  attribute C_TX_ENABLE : integer;
  attribute C_TX_ENABLE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 1;
  attribute C_TX_INT_DATA_WIDTH : integer;
  attribute C_TX_INT_DATA_WIDTH of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 32;
  attribute C_TX_LINE_RATE : string;
  attribute C_TX_LINE_RATE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "10.312500";
  attribute C_TX_MASTER_CHANNEL_IDX : integer;
  attribute C_TX_MASTER_CHANNEL_IDX of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 10;
  attribute C_TX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_TX_OUTCLK_BUFG_GT_DIV of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 1;
  attribute C_TX_OUTCLK_FREQUENCY : string;
  attribute C_TX_OUTCLK_FREQUENCY of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "322.265625";
  attribute C_TX_OUTCLK_SOURCE : integer;
  attribute C_TX_OUTCLK_SOURCE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 4;
  attribute C_TX_PLL_TYPE : integer;
  attribute C_TX_PLL_TYPE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_TX_REFCLK_FREQUENCY : string;
  attribute C_TX_REFCLK_FREQUENCY of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "156.250000";
  attribute C_TX_USER_CLOCKING_CONTENTS : integer;
  attribute C_TX_USER_CLOCKING_CONTENTS of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 1;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 2;
  attribute C_TX_USER_CLOCKING_SOURCE : integer;
  attribute C_TX_USER_CLOCKING_SOURCE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 0;
  attribute C_TX_USER_DATA_WIDTH : integer;
  attribute C_TX_USER_DATA_WIDTH of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 64;
  attribute C_TX_USRCLK2_FREQUENCY : string;
  attribute C_TX_USRCLK2_FREQUENCY of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "161.132812";
  attribute C_TX_USRCLK_FREQUENCY : string;
  attribute C_TX_USRCLK_FREQUENCY of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "322.265625";
  attribute C_USER_GTPOWERGOOD_DELAY_EN : integer;
  attribute C_USER_GTPOWERGOOD_DELAY_EN of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top : entity is "gtwizard_ultrascale_0_gtwizard_top";
end gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top;

architecture STRUCTURE of gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top is
  signal \<const0>\ : STD_LOGIC;
  signal \^qpll1reset_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^rxdata_out\ : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal \^rxoutclk_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^txoutclk_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  \^qpll1reset_in\(0) <= qpll1reset_in(0);
  gthtxn_out(0) <= \<const0>\;
  gthtxp_out(0) <= \<const0>\;
  gtwiz_buffbypass_rx_done_out(0) <= \<const0>\;
  gtwiz_buffbypass_rx_error_out(0) <= \<const0>\;
  gtwiz_buffbypass_tx_done_out(0) <= \<const0>\;
  gtwiz_buffbypass_tx_error_out(0) <= \<const0>\;
  gtwiz_reset_qpll1reset_out(0) <= \^qpll1reset_in\(0);
  gtwiz_userclk_rx_srcclk_out(0) <= \^rxoutclk_out\(0);
  gtwiz_userclk_tx_srcclk_out(0) <= \^txoutclk_out\(0);
  gtwiz_userdata_rx_out(127 downto 64) <= \^rxdata_out\(191 downto 128);
  gtwiz_userdata_rx_out(63 downto 0) <= \^rxdata_out\(63 downto 0);
  rxdata_out(255 downto 0) <= \^rxdata_out\(255 downto 0);
  rxoutclk_out(1 downto 0) <= \^rxoutclk_out\(1 downto 0);
  rxqpisenn_out(0) <= \<const0>\;
  rxqpisenp_out(0) <= \<const0>\;
  rxrecclk0_sel_out(0) <= \<const0>\;
  rxrecclk1_sel_out(0) <= \<const0>\;
  tcongpo_out(0) <= \<const0>\;
  tconrsvdout0_out(0) <= \<const0>\;
  txoutclk_out(1 downto 0) <= \^txoutclk_out\(1 downto 0);
  txqpisenn_out(0) <= \<const0>\;
  txqpisenp_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_gtwizard_gtye4_top.gtwizard_ultrascale_0_gtwizard_gtye4_inst\: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_gtye4
     port map (
      bgbypassb_in(0) => bgbypassb_in(0),
      bgmonitorenb_in(0) => bgmonitorenb_in(0),
      bgpdb_in(0) => bgpdb_in(0),
      bgrcalovrd_in(4 downto 0) => bgrcalovrd_in(4 downto 0),
      bgrcalovrdenb_in(0) => bgrcalovrdenb_in(0),
      bufgtce_out(1 downto 0) => bufgtce_out(1 downto 0),
      bufgtcemask_out(5 downto 0) => bufgtcemask_out(5 downto 0),
      bufgtdiv_out(17 downto 0) => bufgtdiv_out(17 downto 0),
      bufgtreset_out(1 downto 0) => bufgtreset_out(1 downto 0),
      bufgtrstmask_out(5 downto 0) => bufgtrstmask_out(5 downto 0),
      cdrstepdir_in(1 downto 0) => cdrstepdir_in(1 downto 0),
      cdrstepsq_in(1 downto 0) => cdrstepsq_in(1 downto 0),
      cdrstepsx_in(1 downto 0) => cdrstepsx_in(1 downto 0),
      cfgreset_in(1 downto 0) => cfgreset_in(1 downto 0),
      clkrsvd0_in(1 downto 0) => clkrsvd0_in(1 downto 0),
      clkrsvd1_in(1 downto 0) => clkrsvd1_in(1 downto 0),
      cpllfbclklost_out(1 downto 0) => cpllfbclklost_out(1 downto 0),
      cpllfreqlock_in(1 downto 0) => cpllfreqlock_in(1 downto 0),
      cplllock_out(1 downto 0) => cplllock_out(1 downto 0),
      cplllockdetclk_in(1 downto 0) => cplllockdetclk_in(1 downto 0),
      cplllocken_in(1 downto 0) => cplllocken_in(1 downto 0),
      cpllpd_in(1 downto 0) => cpllpd_in(1 downto 0),
      cpllrefclklost_out(1 downto 0) => cpllrefclklost_out(1 downto 0),
      cpllrefclksel_in(5 downto 0) => cpllrefclksel_in(5 downto 0),
      cpllreset_in(1 downto 0) => cpllreset_in(1 downto 0),
      dmonfiforeset_in(1 downto 0) => dmonfiforeset_in(1 downto 0),
      dmonitorclk_in(1 downto 0) => dmonitorclk_in(1 downto 0),
      dmonitorout_out(31 downto 0) => dmonitorout_out(31 downto 0),
      dmonitoroutclk_out(1 downto 0) => dmonitoroutclk_out(1 downto 0),
      drpaddr_common_in(15 downto 0) => drpaddr_common_in(15 downto 0),
      drpaddr_in(19 downto 0) => drpaddr_in(19 downto 0),
      drpclk_common_in(0) => drpclk_common_in(0),
      drpclk_in(1 downto 0) => drpclk_in(1 downto 0),
      drpdi_common_in(15 downto 0) => drpdi_common_in(15 downto 0),
      drpdi_in(31 downto 0) => drpdi_in(31 downto 0),
      drpdo_common_out(15 downto 0) => drpdo_common_out(15 downto 0),
      drpdo_out(31 downto 0) => drpdo_out(31 downto 0),
      drpen_common_in(0) => drpen_common_in(0),
      drpen_in(1 downto 0) => drpen_in(1 downto 0),
      drprdy_common_out(0) => drprdy_common_out(0),
      drprdy_out(1 downto 0) => drprdy_out(1 downto 0),
      drprst_in(1 downto 0) => drprst_in(1 downto 0),
      drpwe_common_in(0) => drpwe_common_in(0),
      drpwe_in(1 downto 0) => drpwe_in(1 downto 0),
      eyescandataerror_out(1 downto 0) => eyescandataerror_out(1 downto 0),
      eyescanreset_in(1 downto 0) => eyescanreset_in(1 downto 0),
      eyescantrigger_in(1 downto 0) => eyescantrigger_in(1 downto 0),
      freqos_in(1 downto 0) => freqos_in(1 downto 0),
      gtgrefclk0_in(0) => gtgrefclk0_in(0),
      gtgrefclk1_in(0) => gtgrefclk1_in(0),
      gtgrefclk_in(1 downto 0) => gtgrefclk_in(1 downto 0),
      gtnorthrefclk00_in(0) => gtnorthrefclk00_in(0),
      gtnorthrefclk01_in(0) => gtnorthrefclk01_in(0),
      gtnorthrefclk0_in(1 downto 0) => gtnorthrefclk0_in(1 downto 0),
      gtnorthrefclk10_in(0) => gtnorthrefclk10_in(0),
      gtnorthrefclk11_in(0) => gtnorthrefclk11_in(0),
      gtnorthrefclk1_in(1 downto 0) => gtnorthrefclk1_in(1 downto 0),
      gtpowergood_out(1 downto 0) => gtpowergood_out(1 downto 0),
      gtrefclk00_in(0) => gtrefclk00_in(0),
      gtrefclk01_in(0) => gtrefclk01_in(0),
      gtrefclk0_in(1 downto 0) => gtrefclk0_in(1 downto 0),
      gtrefclk10_in(0) => gtrefclk10_in(0),
      gtrefclk11_in(0) => gtrefclk11_in(0),
      gtrefclk1_in(1 downto 0) => gtrefclk1_in(1 downto 0),
      gtrefclkmonitor_out(1 downto 0) => gtrefclkmonitor_out(1 downto 0),
      gtrsvd_in(31 downto 0) => gtrsvd_in(31 downto 0),
      gtrxresetsel_in(1 downto 0) => gtrxresetsel_in(1 downto 0),
      gtsouthrefclk00_in(0) => gtsouthrefclk00_in(0),
      gtsouthrefclk01_in(0) => gtsouthrefclk01_in(0),
      gtsouthrefclk0_in(1 downto 0) => gtsouthrefclk0_in(1 downto 0),
      gtsouthrefclk10_in(0) => gtsouthrefclk10_in(0),
      gtsouthrefclk11_in(0) => gtsouthrefclk11_in(0),
      gtsouthrefclk1_in(1 downto 0) => gtsouthrefclk1_in(1 downto 0),
      gttxresetsel_in(1 downto 0) => gttxresetsel_in(1 downto 0),
      gtwiz_reset_all_in(0) => gtwiz_reset_all_in(0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_qpll0reset_out(0) => gtwiz_reset_qpll0reset_out(0),
      gtwiz_reset_rx_cdr_stable_out(0) => gtwiz_reset_rx_cdr_stable_out(0),
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      gtwiz_reset_rx_done_out(0) => gtwiz_reset_rx_done_out(0),
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      gtwiz_reset_tx_done_out(0) => gtwiz_reset_tx_done_out(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      gtwiz_userclk_rx_active_out(0) => gtwiz_userclk_rx_active_out(0),
      gtwiz_userclk_rx_reset_in(0) => gtwiz_userclk_rx_reset_in(0),
      gtwiz_userclk_rx_usrclk2_out(0) => gtwiz_userclk_rx_usrclk2_out(0),
      gtwiz_userclk_rx_usrclk_out(0) => gtwiz_userclk_rx_usrclk_out(0),
      gtwiz_userclk_tx_active_out(0) => gtwiz_userclk_tx_active_out(0),
      gtwiz_userclk_tx_reset_in(0) => gtwiz_userclk_tx_reset_in(0),
      gtwiz_userclk_tx_usrclk2_out(0) => gtwiz_userclk_tx_usrclk2_out(0),
      gtwiz_userclk_tx_usrclk_out(0) => gtwiz_userclk_tx_usrclk_out(0),
      gtwiz_userdata_tx_in(127 downto 0) => gtwiz_userdata_tx_in(127 downto 0),
      gtyrxn_in(1 downto 0) => gtyrxn_in(1 downto 0),
      gtyrxp_in(1 downto 0) => gtyrxp_in(1 downto 0),
      gtytxn_out(1 downto 0) => gtytxn_out(1 downto 0),
      gtytxp_out(1 downto 0) => gtytxp_out(1 downto 0),
      incpctrl_in(1 downto 0) => incpctrl_in(1 downto 0),
      loopback_in(5 downto 0) => loopback_in(5 downto 0),
      pcieeqrxeqadaptdone_in(1 downto 0) => pcieeqrxeqadaptdone_in(1 downto 0),
      pcierategen3_out(1 downto 0) => pcierategen3_out(1 downto 0),
      pcierateidle_out(1 downto 0) => pcierateidle_out(1 downto 0),
      pcierateqpll0_in(2 downto 0) => pcierateqpll0_in(2 downto 0),
      pcierateqpll1_in(2 downto 0) => pcierateqpll1_in(2 downto 0),
      pcierateqpllpd_out(3 downto 0) => pcierateqpllpd_out(3 downto 0),
      pcierateqpllreset_out(3 downto 0) => pcierateqpllreset_out(3 downto 0),
      pcierstidle_in(1 downto 0) => pcierstidle_in(1 downto 0),
      pciersttxsyncstart_in(1 downto 0) => pciersttxsyncstart_in(1 downto 0),
      pciesynctxsyncdone_out(1 downto 0) => pciesynctxsyncdone_out(1 downto 0),
      pcieusergen3rdy_out(1 downto 0) => pcieusergen3rdy_out(1 downto 0),
      pcieuserphystatusrst_out(1 downto 0) => pcieuserphystatusrst_out(1 downto 0),
      pcieuserratedone_in(1 downto 0) => pcieuserratedone_in(1 downto 0),
      pcieuserratestart_out(1 downto 0) => pcieuserratestart_out(1 downto 0),
      pcsrsvdin_in(31 downto 0) => pcsrsvdin_in(31 downto 0),
      pcsrsvdout_out(31 downto 0) => pcsrsvdout_out(31 downto 0),
      phystatus_out(1 downto 0) => phystatus_out(1 downto 0),
      pinrsrvdas_out(31 downto 0) => pinrsrvdas_out(31 downto 0),
      pmarsvd0_in(7 downto 0) => pmarsvd0_in(7 downto 0),
      pmarsvd1_in(7 downto 0) => pmarsvd1_in(7 downto 0),
      pmarsvdout0_out(7 downto 0) => pmarsvdout0_out(7 downto 0),
      pmarsvdout1_out(7 downto 0) => pmarsvdout1_out(7 downto 0),
      powerpresent_out(1 downto 0) => powerpresent_out(1 downto 0),
      qpll0clkrsvd0_in(0) => qpll0clkrsvd0_in(0),
      qpll0clkrsvd1_in(0) => qpll0clkrsvd1_in(0),
      qpll0fbclklost_out(0) => qpll0fbclklost_out(0),
      qpll0fbdiv_in(7 downto 0) => qpll0fbdiv_in(7 downto 0),
      qpll0freqlock_in(1 downto 0) => qpll0freqlock_in(1 downto 0),
      qpll0lock_out(0) => qpll0lock_out(0),
      qpll0lockdetclk_in(0) => qpll0lockdetclk_in(0),
      qpll0locken_in(0) => qpll0locken_in(0),
      qpll0outclk_out(0) => qpll0outclk_out(0),
      qpll0outrefclk_out(0) => qpll0outrefclk_out(0),
      qpll0pd_in(0) => qpll0pd_in(0),
      qpll0refclklost_out(0) => qpll0refclklost_out(0),
      qpll0refclksel_in(2 downto 0) => qpll0refclksel_in(2 downto 0),
      qpll1clkrsvd0_in(0) => qpll1clkrsvd0_in(0),
      qpll1clkrsvd1_in(0) => qpll1clkrsvd1_in(0),
      qpll1fbclklost_out(0) => qpll1fbclklost_out(0),
      qpll1fbdiv_in(7 downto 0) => qpll1fbdiv_in(7 downto 0),
      qpll1freqlock_in(1 downto 0) => qpll1freqlock_in(1 downto 0),
      qpll1lock_out(0) => qpll1lock_out(0),
      qpll1lockdetclk_in(0) => qpll1lockdetclk_in(0),
      qpll1locken_in(0) => qpll1locken_in(0),
      qpll1outclk_out(0) => qpll1outclk_out(0),
      qpll1outrefclk_out(0) => qpll1outrefclk_out(0),
      qpll1pd_in(0) => qpll1pd_in(0),
      qpll1refclklost_out(0) => qpll1refclklost_out(0),
      qpll1refclksel_in(2 downto 0) => qpll1refclksel_in(2 downto 0),
      qpll1reset_in(0) => \^qpll1reset_in\(0),
      qplldmonitor0_out(7 downto 0) => qplldmonitor0_out(7 downto 0),
      qplldmonitor1_out(7 downto 0) => qplldmonitor1_out(7 downto 0),
      qpllrsvd1_in(7 downto 0) => qpllrsvd1_in(7 downto 0),
      qpllrsvd2_in(4 downto 0) => qpllrsvd2_in(4 downto 0),
      qpllrsvd3_in(4 downto 0) => qpllrsvd3_in(4 downto 0),
      qpllrsvd4_in(7 downto 0) => qpllrsvd4_in(7 downto 0),
      rcalenb_in(0) => rcalenb_in(0),
      refclkoutmonitor0_out(0) => refclkoutmonitor0_out(0),
      refclkoutmonitor1_out(0) => refclkoutmonitor1_out(0),
      resetexception_out(1 downto 0) => resetexception_out(1 downto 0),
      resetovrd_in(1 downto 0) => resetovrd_in(1 downto 0),
      rx8b10ben_in(1 downto 0) => rx8b10ben_in(1 downto 0),
      rxafecfoken_in(1 downto 0) => rxafecfoken_in(1 downto 0),
      rxbufreset_in(1 downto 0) => rxbufreset_in(1 downto 0),
      rxbufstatus_out(5 downto 0) => rxbufstatus_out(5 downto 0),
      rxbyteisaligned_out(1 downto 0) => rxbyteisaligned_out(1 downto 0),
      rxbyterealign_out(1 downto 0) => rxbyterealign_out(1 downto 0),
      rxcdrfreqreset_in(1 downto 0) => rxcdrfreqreset_in(1 downto 0),
      rxcdrhold_in(1 downto 0) => rxcdrhold_in(1 downto 0),
      rxcdrlock_out(1 downto 0) => rxcdrlock_out(1 downto 0),
      rxcdrovrden_in(1 downto 0) => rxcdrovrden_in(1 downto 0),
      rxcdrphdone_out(1 downto 0) => rxcdrphdone_out(1 downto 0),
      rxcdrreset_in(1 downto 0) => rxcdrreset_in(1 downto 0),
      rxchanbondseq_out(1 downto 0) => rxchanbondseq_out(1 downto 0),
      rxchanisaligned_out(1 downto 0) => rxchanisaligned_out(1 downto 0),
      rxchanrealign_out(1 downto 0) => rxchanrealign_out(1 downto 0),
      rxchbonden_in(1 downto 0) => rxchbonden_in(1 downto 0),
      rxchbondi_in(9 downto 0) => rxchbondi_in(9 downto 0),
      rxchbondlevel_in(5 downto 0) => rxchbondlevel_in(5 downto 0),
      rxchbondmaster_in(1 downto 0) => rxchbondmaster_in(1 downto 0),
      rxchbondo_out(9 downto 0) => rxchbondo_out(9 downto 0),
      rxchbondslave_in(1 downto 0) => rxchbondslave_in(1 downto 0),
      rxckcaldone_out(1 downto 0) => rxckcaldone_out(1 downto 0),
      rxckcalreset_in(1 downto 0) => rxckcalreset_in(1 downto 0),
      rxckcalstart_in(13 downto 0) => rxckcalstart_in(13 downto 0),
      rxclkcorcnt_out(3 downto 0) => rxclkcorcnt_out(3 downto 0),
      rxcominitdet_out(1 downto 0) => rxcominitdet_out(1 downto 0),
      rxcommadet_out(1 downto 0) => rxcommadet_out(1 downto 0),
      rxcommadeten_in(1 downto 0) => rxcommadeten_in(1 downto 0),
      rxcomsasdet_out(1 downto 0) => rxcomsasdet_out(1 downto 0),
      rxcomwakedet_out(1 downto 0) => rxcomwakedet_out(1 downto 0),
      rxctrl0_out(31 downto 0) => rxctrl0_out(31 downto 0),
      rxctrl1_out(31 downto 0) => rxctrl1_out(31 downto 0),
      rxctrl2_out(15 downto 0) => rxctrl2_out(15 downto 0),
      rxctrl3_out(15 downto 0) => rxctrl3_out(15 downto 0),
      rxdata_out(255 downto 0) => \^rxdata_out\(255 downto 0),
      rxdataextendrsvd_out(15 downto 0) => rxdataextendrsvd_out(15 downto 0),
      rxdatavalid_out(3 downto 0) => rxdatavalid_out(3 downto 0),
      rxdfeagchold_in(1 downto 0) => rxdfeagchold_in(1 downto 0),
      rxdfeagcovrden_in(1 downto 0) => rxdfeagcovrden_in(1 downto 0),
      rxdfecfokfcnum_in(7 downto 0) => rxdfecfokfcnum_in(7 downto 0),
      rxdfecfokfen_in(1 downto 0) => rxdfecfokfen_in(1 downto 0),
      rxdfecfokfpulse_in(1 downto 0) => rxdfecfokfpulse_in(1 downto 0),
      rxdfecfokhold_in(1 downto 0) => rxdfecfokhold_in(1 downto 0),
      rxdfecfokovren_in(1 downto 0) => rxdfecfokovren_in(1 downto 0),
      rxdfekhhold_in(1 downto 0) => rxdfekhhold_in(1 downto 0),
      rxdfekhovrden_in(1 downto 0) => rxdfekhovrden_in(1 downto 0),
      rxdfelfhold_in(1 downto 0) => rxdfelfhold_in(1 downto 0),
      rxdfelfovrden_in(1 downto 0) => rxdfelfovrden_in(1 downto 0),
      rxdfelpmreset_in(1 downto 0) => rxdfelpmreset_in(1 downto 0),
      rxdfetap10hold_in(1 downto 0) => rxdfetap10hold_in(1 downto 0),
      rxdfetap10ovrden_in(1 downto 0) => rxdfetap10ovrden_in(1 downto 0),
      rxdfetap11hold_in(1 downto 0) => rxdfetap11hold_in(1 downto 0),
      rxdfetap11ovrden_in(1 downto 0) => rxdfetap11ovrden_in(1 downto 0),
      rxdfetap12hold_in(1 downto 0) => rxdfetap12hold_in(1 downto 0),
      rxdfetap12ovrden_in(1 downto 0) => rxdfetap12ovrden_in(1 downto 0),
      rxdfetap13hold_in(1 downto 0) => rxdfetap13hold_in(1 downto 0),
      rxdfetap13ovrden_in(1 downto 0) => rxdfetap13ovrden_in(1 downto 0),
      rxdfetap14hold_in(1 downto 0) => rxdfetap14hold_in(1 downto 0),
      rxdfetap14ovrden_in(1 downto 0) => rxdfetap14ovrden_in(1 downto 0),
      rxdfetap15hold_in(1 downto 0) => rxdfetap15hold_in(1 downto 0),
      rxdfetap15ovrden_in(1 downto 0) => rxdfetap15ovrden_in(1 downto 0),
      rxdfetap2hold_in(1 downto 0) => rxdfetap2hold_in(1 downto 0),
      rxdfetap2ovrden_in(1 downto 0) => rxdfetap2ovrden_in(1 downto 0),
      rxdfetap3hold_in(1 downto 0) => rxdfetap3hold_in(1 downto 0),
      rxdfetap3ovrden_in(1 downto 0) => rxdfetap3ovrden_in(1 downto 0),
      rxdfetap4hold_in(1 downto 0) => rxdfetap4hold_in(1 downto 0),
      rxdfetap4ovrden_in(1 downto 0) => rxdfetap4ovrden_in(1 downto 0),
      rxdfetap5hold_in(1 downto 0) => rxdfetap5hold_in(1 downto 0),
      rxdfetap5ovrden_in(1 downto 0) => rxdfetap5ovrden_in(1 downto 0),
      rxdfetap6hold_in(1 downto 0) => rxdfetap6hold_in(1 downto 0),
      rxdfetap6ovrden_in(1 downto 0) => rxdfetap6ovrden_in(1 downto 0),
      rxdfetap7hold_in(1 downto 0) => rxdfetap7hold_in(1 downto 0),
      rxdfetap7ovrden_in(1 downto 0) => rxdfetap7ovrden_in(1 downto 0),
      rxdfetap8hold_in(1 downto 0) => rxdfetap8hold_in(1 downto 0),
      rxdfetap8ovrden_in(1 downto 0) => rxdfetap8ovrden_in(1 downto 0),
      rxdfetap9hold_in(1 downto 0) => rxdfetap9hold_in(1 downto 0),
      rxdfetap9ovrden_in(1 downto 0) => rxdfetap9ovrden_in(1 downto 0),
      rxdfeuthold_in(1 downto 0) => rxdfeuthold_in(1 downto 0),
      rxdfeutovrden_in(1 downto 0) => rxdfeutovrden_in(1 downto 0),
      rxdfevphold_in(1 downto 0) => rxdfevphold_in(1 downto 0),
      rxdfevpovrden_in(1 downto 0) => rxdfevpovrden_in(1 downto 0),
      rxdfexyden_in(1 downto 0) => rxdfexyden_in(1 downto 0),
      rxdlybypass_in(1 downto 0) => rxdlybypass_in(1 downto 0),
      rxdlyen_in(1 downto 0) => rxdlyen_in(1 downto 0),
      rxdlyovrden_in(1 downto 0) => rxdlyovrden_in(1 downto 0),
      rxdlysreset_in(1 downto 0) => rxdlysreset_in(1 downto 0),
      rxdlysresetdone_out(1 downto 0) => rxdlysresetdone_out(1 downto 0),
      rxelecidle_out(1 downto 0) => rxelecidle_out(1 downto 0),
      rxelecidlemode_in(3 downto 0) => rxelecidlemode_in(3 downto 0),
      rxeqtraining_in(1 downto 0) => rxeqtraining_in(1 downto 0),
      rxgearboxslip_in(1 downto 0) => rxgearboxslip_in(1 downto 0),
      rxheader_out(11 downto 0) => rxheader_out(11 downto 0),
      rxheadervalid_out(3 downto 0) => rxheadervalid_out(3 downto 0),
      rxlatclk_in(1 downto 0) => rxlatclk_in(1 downto 0),
      rxlfpstresetdet_out(1 downto 0) => rxlfpstresetdet_out(1 downto 0),
      rxlfpsu2lpexitdet_out(1 downto 0) => rxlfpsu2lpexitdet_out(1 downto 0),
      rxlfpsu3wakedet_out(1 downto 0) => rxlfpsu3wakedet_out(1 downto 0),
      rxlpmen_in(1 downto 0) => rxlpmen_in(1 downto 0),
      rxlpmgchold_in(1 downto 0) => rxlpmgchold_in(1 downto 0),
      rxlpmgcovrden_in(1 downto 0) => rxlpmgcovrden_in(1 downto 0),
      rxlpmhfhold_in(1 downto 0) => rxlpmhfhold_in(1 downto 0),
      rxlpmhfovrden_in(1 downto 0) => rxlpmhfovrden_in(1 downto 0),
      rxlpmlfhold_in(1 downto 0) => rxlpmlfhold_in(1 downto 0),
      rxlpmlfklovrden_in(1 downto 0) => rxlpmlfklovrden_in(1 downto 0),
      rxlpmoshold_in(1 downto 0) => rxlpmoshold_in(1 downto 0),
      rxlpmosovrden_in(1 downto 0) => rxlpmosovrden_in(1 downto 0),
      rxmcommaalignen_in(1 downto 0) => rxmcommaalignen_in(1 downto 0),
      rxmonitorout_out(15 downto 0) => rxmonitorout_out(15 downto 0),
      rxmonitorsel_in(3 downto 0) => rxmonitorsel_in(3 downto 0),
      rxoobreset_in(1 downto 0) => rxoobreset_in(1 downto 0),
      rxoscalreset_in(1 downto 0) => rxoscalreset_in(1 downto 0),
      rxoshold_in(1 downto 0) => rxoshold_in(1 downto 0),
      rxosintdone_out(1 downto 0) => rxosintdone_out(1 downto 0),
      rxosintstarted_out(1 downto 0) => rxosintstarted_out(1 downto 0),
      rxosintstrobedone_out(1 downto 0) => rxosintstrobedone_out(1 downto 0),
      rxosintstrobestarted_out(1 downto 0) => rxosintstrobestarted_out(1 downto 0),
      rxosovrden_in(1 downto 0) => rxosovrden_in(1 downto 0),
      rxoutclk_out(1 downto 0) => \^rxoutclk_out\(1 downto 0),
      rxoutclkfabric_out(1 downto 0) => rxoutclkfabric_out(1 downto 0),
      rxoutclkpcs_out(1 downto 0) => rxoutclkpcs_out(1 downto 0),
      rxoutclksel_in(5 downto 0) => rxoutclksel_in(5 downto 0),
      rxpcommaalignen_in(1 downto 0) => rxpcommaalignen_in(1 downto 0),
      rxpcsreset_in(1 downto 0) => rxpcsreset_in(1 downto 0),
      rxpd_in(3 downto 0) => rxpd_in(3 downto 0),
      rxphalign_in(1 downto 0) => rxphalign_in(1 downto 0),
      rxphaligndone_out(1 downto 0) => rxphaligndone_out(1 downto 0),
      rxphalignen_in(1 downto 0) => rxphalignen_in(1 downto 0),
      rxphalignerr_out(1 downto 0) => rxphalignerr_out(1 downto 0),
      rxphdlypd_in(1 downto 0) => rxphdlypd_in(1 downto 0),
      rxphdlyreset_in(1 downto 0) => rxphdlyreset_in(1 downto 0),
      rxpllclksel_in(3 downto 0) => rxpllclksel_in(3 downto 0),
      rxpmareset_in(1 downto 0) => rxpmareset_in(1 downto 0),
      rxpmaresetdone_out(1 downto 0) => rxpmaresetdone_out(1 downto 0),
      rxpolarity_in(1 downto 0) => rxpolarity_in(1 downto 0),
      rxprbscntreset_in(1 downto 0) => rxprbscntreset_in(1 downto 0),
      rxprbserr_out(1 downto 0) => rxprbserr_out(1 downto 0),
      rxprbslocked_out(1 downto 0) => rxprbslocked_out(1 downto 0),
      rxprbssel_in(7 downto 0) => rxprbssel_in(7 downto 0),
      rxprgdivresetdone_out(1 downto 0) => rxprgdivresetdone_out(1 downto 0),
      rxrate_in(5 downto 0) => rxrate_in(5 downto 0),
      rxratedone_out(1 downto 0) => rxratedone_out(1 downto 0),
      rxratemode_in(1 downto 0) => rxratemode_in(1 downto 0),
      rxrecclk0sel_out(1 downto 0) => rxrecclk0sel_out(1 downto 0),
      rxrecclk1sel_out(1 downto 0) => rxrecclk1sel_out(1 downto 0),
      rxrecclkout_out(1 downto 0) => rxrecclkout_out(1 downto 0),
      rxresetdone_out(1 downto 0) => rxresetdone_out(1 downto 0),
      rxslide_in(1 downto 0) => rxslide_in(1 downto 0),
      rxsliderdy_out(1 downto 0) => rxsliderdy_out(1 downto 0),
      rxslipdone_out(1 downto 0) => rxslipdone_out(1 downto 0),
      rxslipoutclk_in(1 downto 0) => rxslipoutclk_in(1 downto 0),
      rxslipoutclkrdy_out(1 downto 0) => rxslipoutclkrdy_out(1 downto 0),
      rxslippma_in(1 downto 0) => rxslippma_in(1 downto 0),
      rxslippmardy_out(1 downto 0) => rxslippmardy_out(1 downto 0),
      rxstartofseq_out(3 downto 0) => rxstartofseq_out(3 downto 0),
      rxstatus_out(5 downto 0) => rxstatus_out(5 downto 0),
      rxsyncallin_in(1 downto 0) => rxsyncallin_in(1 downto 0),
      rxsyncdone_out(1 downto 0) => rxsyncdone_out(1 downto 0),
      rxsyncin_in(1 downto 0) => rxsyncin_in(1 downto 0),
      rxsyncmode_in(1 downto 0) => rxsyncmode_in(1 downto 0),
      rxsyncout_out(1 downto 0) => rxsyncout_out(1 downto 0),
      rxsysclksel_in(3 downto 0) => rxsysclksel_in(3 downto 0),
      rxtermination_in(1 downto 0) => rxtermination_in(1 downto 0),
      rxvalid_out(1 downto 0) => rxvalid_out(1 downto 0),
      sdm0data_in(24 downto 0) => sdm0data_in(24 downto 0),
      sdm0finalout_out(3 downto 0) => sdm0finalout_out(3 downto 0),
      sdm0reset_in(0) => sdm0reset_in(0),
      sdm0testdata_out(14 downto 0) => sdm0testdata_out(14 downto 0),
      sdm0toggle_in(0) => sdm0toggle_in(0),
      sdm0width_in(1 downto 0) => sdm0width_in(1 downto 0),
      sdm1data_in(24 downto 0) => sdm1data_in(24 downto 0),
      sdm1finalout_out(3 downto 0) => sdm1finalout_out(3 downto 0),
      sdm1reset_in(0) => sdm1reset_in(0),
      sdm1testdata_out(14 downto 0) => sdm1testdata_out(14 downto 0),
      sdm1toggle_in(0) => sdm1toggle_in(0),
      sdm1width_in(1 downto 0) => sdm1width_in(1 downto 0),
      sigvalidclk_in(1 downto 0) => sigvalidclk_in(1 downto 0),
      tstin_in(39 downto 0) => tstin_in(39 downto 0),
      tx8b10bbypass_in(15 downto 0) => tx8b10bbypass_in(15 downto 0),
      tx8b10ben_in(1 downto 0) => tx8b10ben_in(1 downto 0),
      txbufstatus_out(3 downto 0) => txbufstatus_out(3 downto 0),
      txcomfinish_out(1 downto 0) => txcomfinish_out(1 downto 0),
      txcominit_in(1 downto 0) => txcominit_in(1 downto 0),
      txcomsas_in(1 downto 0) => txcomsas_in(1 downto 0),
      txcomwake_in(1 downto 0) => txcomwake_in(1 downto 0),
      txctrl0_in(31 downto 0) => txctrl0_in(31 downto 0),
      txctrl1_in(31 downto 0) => txctrl1_in(31 downto 0),
      txctrl2_in(15 downto 0) => txctrl2_in(15 downto 0),
      txdataextendrsvd_in(15 downto 0) => txdataextendrsvd_in(15 downto 0),
      txdccdone_out(1 downto 0) => txdccdone_out(1 downto 0),
      txdccforcestart_in(1 downto 0) => txdccforcestart_in(1 downto 0),
      txdccreset_in(1 downto 0) => txdccreset_in(1 downto 0),
      txdeemph_in(3 downto 0) => txdeemph_in(3 downto 0),
      txdetectrx_in(1 downto 0) => txdetectrx_in(1 downto 0),
      txdiffctrl_in(9 downto 0) => txdiffctrl_in(9 downto 0),
      txdlybypass_in(1 downto 0) => txdlybypass_in(1 downto 0),
      txdlyen_in(1 downto 0) => txdlyen_in(1 downto 0),
      txdlyhold_in(1 downto 0) => txdlyhold_in(1 downto 0),
      txdlyovrden_in(1 downto 0) => txdlyovrden_in(1 downto 0),
      txdlysreset_in(1 downto 0) => txdlysreset_in(1 downto 0),
      txdlysresetdone_out(1 downto 0) => txdlysresetdone_out(1 downto 0),
      txdlyupdown_in(1 downto 0) => txdlyupdown_in(1 downto 0),
      txelecidle_in(1 downto 0) => txelecidle_in(1 downto 0),
      txheader_in(11 downto 0) => txheader_in(11 downto 0),
      txinhibit_in(1 downto 0) => txinhibit_in(1 downto 0),
      txlatclk_in(1 downto 0) => txlatclk_in(1 downto 0),
      txlfpstreset_in(1 downto 0) => txlfpstreset_in(1 downto 0),
      txlfpsu2lpexit_in(1 downto 0) => txlfpsu2lpexit_in(1 downto 0),
      txlfpsu3wake_in(1 downto 0) => txlfpsu3wake_in(1 downto 0),
      txmaincursor_in(13 downto 0) => txmaincursor_in(13 downto 0),
      txmargin_in(5 downto 0) => txmargin_in(5 downto 0),
      txmuxdcdexhold_in(1 downto 0) => txmuxdcdexhold_in(1 downto 0),
      txmuxdcdorwren_in(1 downto 0) => txmuxdcdorwren_in(1 downto 0),
      txoneszeros_in(1 downto 0) => txoneszeros_in(1 downto 0),
      txoutclk_out(1 downto 0) => \^txoutclk_out\(1 downto 0),
      txoutclkfabric_out(1 downto 0) => txoutclkfabric_out(1 downto 0),
      txoutclkpcs_out(1 downto 0) => txoutclkpcs_out(1 downto 0),
      txoutclksel_in(5 downto 0) => txoutclksel_in(5 downto 0),
      txpcsreset_in(1 downto 0) => txpcsreset_in(1 downto 0),
      txpd_in(3 downto 0) => txpd_in(3 downto 0),
      txpdelecidlemode_in(1 downto 0) => txpdelecidlemode_in(1 downto 0),
      txphalign_in(1 downto 0) => txphalign_in(1 downto 0),
      txphaligndone_out(1 downto 0) => txphaligndone_out(1 downto 0),
      txphalignen_in(1 downto 0) => txphalignen_in(1 downto 0),
      txphdlypd_in(1 downto 0) => txphdlypd_in(1 downto 0),
      txphdlyreset_in(1 downto 0) => txphdlyreset_in(1 downto 0),
      txphdlytstclk_in(1 downto 0) => txphdlytstclk_in(1 downto 0),
      txphinit_in(1 downto 0) => txphinit_in(1 downto 0),
      txphinitdone_out(1 downto 0) => txphinitdone_out(1 downto 0),
      txphovrden_in(1 downto 0) => txphovrden_in(1 downto 0),
      txpippmen_in(1 downto 0) => txpippmen_in(1 downto 0),
      txpippmovrden_in(1 downto 0) => txpippmovrden_in(1 downto 0),
      txpippmpd_in(1 downto 0) => txpippmpd_in(1 downto 0),
      txpippmsel_in(1 downto 0) => txpippmsel_in(1 downto 0),
      txpippmstepsize_in(9 downto 0) => txpippmstepsize_in(9 downto 0),
      txpisopd_in(1 downto 0) => txpisopd_in(1 downto 0),
      txpllclksel_in(3 downto 0) => txpllclksel_in(3 downto 0),
      txpmareset_in(1 downto 0) => txpmareset_in(1 downto 0),
      txpmaresetdone_out(1 downto 0) => txpmaresetdone_out(1 downto 0),
      txpolarity_in(1 downto 0) => txpolarity_in(1 downto 0),
      txpostcursor_in(9 downto 0) => txpostcursor_in(9 downto 0),
      txprbsforceerr_in(1 downto 0) => txprbsforceerr_in(1 downto 0),
      txprbssel_in(7 downto 0) => txprbssel_in(7 downto 0),
      txprecursor_in(9 downto 0) => txprecursor_in(9 downto 0),
      txprgdivresetdone_out(1 downto 0) => txprgdivresetdone_out(1 downto 0),
      txrate_in(5 downto 0) => txrate_in(5 downto 0),
      txratedone_out(1 downto 0) => txratedone_out(1 downto 0),
      txratemode_in(1 downto 0) => txratemode_in(1 downto 0),
      txresetdone_out(1 downto 0) => txresetdone_out(1 downto 0),
      txsequence_in(13 downto 0) => txsequence_in(13 downto 0),
      txswing_in(1 downto 0) => txswing_in(1 downto 0),
      txsyncallin_in(1 downto 0) => txsyncallin_in(1 downto 0),
      txsyncdone_out(1 downto 0) => txsyncdone_out(1 downto 0),
      txsyncin_in(1 downto 0) => txsyncin_in(1 downto 0),
      txsyncmode_in(1 downto 0) => txsyncmode_in(1 downto 0),
      txsyncout_out(1 downto 0) => txsyncout_out(1 downto 0),
      txsysclksel_in(3 downto 0) => txsysclksel_in(3 downto 0),
      ubcfgstreamen_in(0) => ubcfgstreamen_in(0),
      ubdaddr_out(15 downto 0) => ubdaddr_out(15 downto 0),
      ubden_out(0) => ubden_out(0),
      ubdi_out(15 downto 0) => ubdi_out(15 downto 0),
      ubdo_in(15 downto 0) => ubdo_in(15 downto 0),
      ubdrdy_in(0) => ubdrdy_in(0),
      ubdwe_out(0) => ubdwe_out(0),
      ubenable_in(0) => ubenable_in(0),
      ubgpi_in(1 downto 0) => ubgpi_in(1 downto 0),
      ubintr_in(1 downto 0) => ubintr_in(1 downto 0),
      ubiolmbrst_in(0) => ubiolmbrst_in(0),
      ubmbrst_in(0) => ubmbrst_in(0),
      ubmdmcapture_in(0) => ubmdmcapture_in(0),
      ubmdmdbgrst_in(0) => ubmdmdbgrst_in(0),
      ubmdmdbgupdate_in(0) => ubmdmdbgupdate_in(0),
      ubmdmregen_in(3 downto 0) => ubmdmregen_in(3 downto 0),
      ubmdmshift_in(0) => ubmdmshift_in(0),
      ubmdmsysrst_in(0) => ubmdmsysrst_in(0),
      ubmdmtck_in(0) => ubmdmtck_in(0),
      ubmdmtdi_in(0) => ubmdmtdi_in(0),
      ubmdmtdo_out(0) => ubmdmtdo_out(0),
      ubrsvdout_out(0) => ubrsvdout_out(0),
      ubtxuart_out(0) => ubtxuart_out(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gtwizard_ultrascale_0 is
  port (
    gtwiz_userclk_tx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_srcclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_tx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_reset_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_srcclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_usrclk2_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userclk_rx_active_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_clk_freerun_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_all_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_pll_and_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_datapath_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_cdr_stable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_tx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_reset_rx_done_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtwiz_userdata_tx_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    gtwiz_userdata_rx_out : out STD_LOGIC_VECTOR ( 127 downto 0 );
    gtrefclk00_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    qpll0outrefclk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gtyrxn_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gtyrxp_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxgearboxslip_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    txheader_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    txsequence_in : in STD_LOGIC_VECTOR ( 13 downto 0 );
    gtpowergood_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtytxn_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gtytxp_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxdatavalid_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxheader_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rxheadervalid_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rxpmaresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxprgdivresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rxstartofseq_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txpmaresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txprgdivresetdone_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of gtwizard_ultrascale_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of gtwizard_ultrascale_0 : entity is "gtwizard_ultrascale_0,gtwizard_ultrascale_0_gtwizard_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of gtwizard_ultrascale_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of gtwizard_ultrascale_0 : entity is "gtwizard_ultrascale_0_gtwizard_top,Vivado 2018.3";
end gtwizard_ultrascale_0;

architecture STRUCTURE of gtwizard_ultrascale_0 is
  signal NLW_inst_bufgtce_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_bufgtcemask_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_bufgtdiv_out_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_inst_bufgtreset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_bufgtrstmask_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_cpllfbclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_cplllock_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_cpllrefclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_dmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_dmonitoroutclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_drpdo_common_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_drpdo_out_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_drprdy_common_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_drprdy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_eyescandataerror_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_gthtxn_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gthtxp_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtrefclkmonitor_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_pcierategen3_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_pcierateidle_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_pcierateqpllpd_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_pcierateqpllreset_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_pciesynctxsyncdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_pcieusergen3rdy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_pcieuserphystatusrst_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_pcieuserratestart_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_pcsrsvdout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_phystatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_pinrsrvdas_out_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_pmarsvdout0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_pmarsvdout1_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_powerpresent_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_qpll0fbclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll0lock_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll0refclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1fbclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1lock_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1outclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1outrefclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qpll1refclklost_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_qplldmonitor0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_qplldmonitor1_out_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_refclkoutmonitor0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_refclkoutmonitor1_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_resetexception_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_rxbyteisaligned_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxbyterealign_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxcdrlock_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxcdrphdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxchanbondseq_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxchanisaligned_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxchanrealign_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxchbondo_out_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_inst_rxckcaldone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxclkcorcnt_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_rxcominitdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxcommadet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxcomsasdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxcomwakedet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxctrl0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_rxctrl1_out_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_rxctrl2_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_rxctrl3_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_rxdata_out_UNCONNECTED : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal NLW_inst_rxdataextendrsvd_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_rxdlysresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxelecidle_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxlfpstresetdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxmonitorout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_rxosintdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxosintstarted_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxosintstrobedone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxosintstrobestarted_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxoutclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxoutclkfabric_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxoutclkpcs_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxphaligndone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxphalignerr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxprbserr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxprbslocked_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxqpisenn_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxqpisenp_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxratedone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxrecclk0_sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxrecclk0sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxrecclk1_sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_rxrecclk1sel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxrecclkout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxsliderdy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxslipdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxslipoutclkrdy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxslippmardy_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_inst_rxsyncdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxsyncout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_rxvalid_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_sdm0finalout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_sdm0testdata_out_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_inst_sdm1finalout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_sdm1testdata_out_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal NLW_inst_tcongpo_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_tconrsvdout0_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txbufstatus_out_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_txcomfinish_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_txdccdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_txdlysresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_txoutclk_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_txoutclkfabric_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_txoutclkpcs_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_txphaligndone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_txphinitdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_txqpisenn_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txqpisenp_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_txratedone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_txresetdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_txsyncdone_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_txsyncout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_ubdaddr_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_ubden_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubdi_out_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_ubdwe_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubmdmtdo_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubrsvdout_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_ubtxuart_out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_CHANNEL_ENABLE : string;
  attribute C_CHANNEL_ENABLE of inst : label is "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110000000000";
  attribute C_COMMON_SCALING_FACTOR : integer;
  attribute C_COMMON_SCALING_FACTOR of inst : label is 1;
  attribute C_CPLL_VCO_FREQUENCY : string;
  attribute C_CPLL_VCO_FREQUENCY of inst : label is "2578.125000";
  attribute C_ENABLE_COMMON_USRCLK : integer;
  attribute C_ENABLE_COMMON_USRCLK of inst : label is 0;
  attribute C_FORCE_COMMONS : integer;
  attribute C_FORCE_COMMONS of inst : label is 0;
  attribute C_FREERUN_FREQUENCY : string;
  attribute C_FREERUN_FREQUENCY of inst : label is "125.000000";
  attribute C_GT_REV : integer;
  attribute C_GT_REV of inst : label is 67;
  attribute C_GT_TYPE : integer;
  attribute C_GT_TYPE of inst : label is 3;
  attribute C_INCLUDE_CPLL_CAL : integer;
  attribute C_INCLUDE_CPLL_CAL of inst : label is 2;
  attribute C_LOCATE_COMMON : integer;
  attribute C_LOCATE_COMMON of inst : label is 0;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE : integer;
  attribute C_LOCATE_IN_SYSTEM_IBERT_CORE of inst : label is 2;
  attribute C_LOCATE_RESET_CONTROLLER : integer;
  attribute C_LOCATE_RESET_CONTROLLER of inst : label is 0;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER of inst : label is 0;
  attribute C_LOCATE_RX_USER_CLOCKING : integer;
  attribute C_LOCATE_RX_USER_CLOCKING of inst : label is 0;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER : integer;
  attribute C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER of inst : label is 0;
  attribute C_LOCATE_TX_USER_CLOCKING : integer;
  attribute C_LOCATE_TX_USER_CLOCKING of inst : label is 0;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING : integer;
  attribute C_LOCATE_USER_DATA_WIDTH_SIZING of inst : label is 0;
  attribute C_PCIE_CORECLK_FREQ : integer;
  attribute C_PCIE_CORECLK_FREQ of inst : label is 250;
  attribute C_PCIE_ENABLE : integer;
  attribute C_PCIE_ENABLE of inst : label is 0;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL : integer;
  attribute C_RESET_CONTROLLER_INSTANCE_CTRL of inst : label is 0;
  attribute C_RESET_SEQUENCE_INTERVAL : integer;
  attribute C_RESET_SEQUENCE_INTERVAL of inst : label is 0;
  attribute C_RX_BUFFBYPASS_MODE : integer;
  attribute C_RX_BUFFBYPASS_MODE of inst : label is 0;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_RX_BUFFER_BYPASS_INSTANCE_CTRL of inst : label is 0;
  attribute C_RX_BUFFER_MODE : integer;
  attribute C_RX_BUFFER_MODE of inst : label is 1;
  attribute C_RX_CB_DISP : string;
  attribute C_RX_CB_DISP of inst : label is "8'b00000000";
  attribute C_RX_CB_K : string;
  attribute C_RX_CB_K of inst : label is "8'b00000000";
  attribute C_RX_CB_LEN_SEQ : integer;
  attribute C_RX_CB_LEN_SEQ of inst : label is 1;
  attribute C_RX_CB_MAX_LEVEL : integer;
  attribute C_RX_CB_MAX_LEVEL of inst : label is 1;
  attribute C_RX_CB_NUM_SEQ : integer;
  attribute C_RX_CB_NUM_SEQ of inst : label is 0;
  attribute C_RX_CB_VAL : string;
  attribute C_RX_CB_VAL of inst : label is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_CC_DISP : string;
  attribute C_RX_CC_DISP of inst : label is "8'b00000000";
  attribute C_RX_CC_ENABLE : integer;
  attribute C_RX_CC_ENABLE of inst : label is 0;
  attribute C_RX_CC_K : string;
  attribute C_RX_CC_K of inst : label is "8'b00000000";
  attribute C_RX_CC_LEN_SEQ : integer;
  attribute C_RX_CC_LEN_SEQ of inst : label is 1;
  attribute C_RX_CC_NUM_SEQ : integer;
  attribute C_RX_CC_NUM_SEQ of inst : label is 0;
  attribute C_RX_CC_PERIODICITY : integer;
  attribute C_RX_CC_PERIODICITY of inst : label is 5000;
  attribute C_RX_CC_VAL : string;
  attribute C_RX_CC_VAL of inst : label is "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_COMMA_M_ENABLE : integer;
  attribute C_RX_COMMA_M_ENABLE of inst : label is 0;
  attribute C_RX_COMMA_M_VAL : string;
  attribute C_RX_COMMA_M_VAL of inst : label is "10'b1010000011";
  attribute C_RX_COMMA_P_ENABLE : integer;
  attribute C_RX_COMMA_P_ENABLE of inst : label is 0;
  attribute C_RX_COMMA_P_VAL : string;
  attribute C_RX_COMMA_P_VAL of inst : label is "10'b0101111100";
  attribute C_RX_DATA_DECODING : integer;
  attribute C_RX_DATA_DECODING of inst : label is 2;
  attribute C_RX_ENABLE : integer;
  attribute C_RX_ENABLE of inst : label is 1;
  attribute C_RX_INT_DATA_WIDTH : integer;
  attribute C_RX_INT_DATA_WIDTH of inst : label is 32;
  attribute C_RX_LINE_RATE : string;
  attribute C_RX_LINE_RATE of inst : label is "10.312500";
  attribute C_RX_MASTER_CHANNEL_IDX : integer;
  attribute C_RX_MASTER_CHANNEL_IDX of inst : label is 10;
  attribute C_RX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_RX_OUTCLK_BUFG_GT_DIV of inst : label is 1;
  attribute C_RX_OUTCLK_FREQUENCY : string;
  attribute C_RX_OUTCLK_FREQUENCY of inst : label is "322.265625";
  attribute C_RX_OUTCLK_SOURCE : integer;
  attribute C_RX_OUTCLK_SOURCE of inst : label is 4;
  attribute C_RX_PLL_TYPE : integer;
  attribute C_RX_PLL_TYPE of inst : label is 0;
  attribute C_RX_RECCLK_OUTPUT : string;
  attribute C_RX_RECCLK_OUTPUT of inst : label is "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_RX_REFCLK_FREQUENCY : string;
  attribute C_RX_REFCLK_FREQUENCY of inst : label is "156.250000";
  attribute C_RX_SLIDE_MODE : integer;
  attribute C_RX_SLIDE_MODE of inst : label is 0;
  attribute C_RX_USER_CLOCKING_CONTENTS : integer;
  attribute C_RX_USER_CLOCKING_CONTENTS of inst : label is 0;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_RX_USER_CLOCKING_INSTANCE_CTRL of inst : label is 0;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of inst : label is 1;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of inst : label is 2;
  attribute C_RX_USER_CLOCKING_SOURCE : integer;
  attribute C_RX_USER_CLOCKING_SOURCE of inst : label is 0;
  attribute C_RX_USER_DATA_WIDTH : integer;
  attribute C_RX_USER_DATA_WIDTH of inst : label is 64;
  attribute C_RX_USRCLK2_FREQUENCY : string;
  attribute C_RX_USRCLK2_FREQUENCY of inst : label is "161.132812";
  attribute C_RX_USRCLK_FREQUENCY : string;
  attribute C_RX_USRCLK_FREQUENCY of inst : label is "322.265625";
  attribute C_SECONDARY_QPLL_ENABLE : integer;
  attribute C_SECONDARY_QPLL_ENABLE of inst : label is 0;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY : string;
  attribute C_SECONDARY_QPLL_REFCLK_FREQUENCY of inst : label is "257.812500";
  attribute C_SIM_CPLL_CAL_BYPASS : integer;
  attribute C_SIM_CPLL_CAL_BYPASS of inst : label is 1;
  attribute C_TOTAL_NUM_CHANNELS : integer;
  attribute C_TOTAL_NUM_CHANNELS of inst : label is 2;
  attribute C_TOTAL_NUM_COMMONS : integer;
  attribute C_TOTAL_NUM_COMMONS of inst : label is 1;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE : integer;
  attribute C_TOTAL_NUM_COMMONS_EXAMPLE of inst : label is 0;
  attribute C_TXPROGDIV_FREQ_ENABLE : integer;
  attribute C_TXPROGDIV_FREQ_ENABLE of inst : label is 0;
  attribute C_TXPROGDIV_FREQ_SOURCE : integer;
  attribute C_TXPROGDIV_FREQ_SOURCE of inst : label is 0;
  attribute C_TXPROGDIV_FREQ_VAL : string;
  attribute C_TXPROGDIV_FREQ_VAL of inst : label is "322.265625";
  attribute C_TX_BUFFBYPASS_MODE : integer;
  attribute C_TX_BUFFBYPASS_MODE of inst : label is 0;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL : integer;
  attribute C_TX_BUFFER_BYPASS_INSTANCE_CTRL of inst : label is 0;
  attribute C_TX_BUFFER_MODE : integer;
  attribute C_TX_BUFFER_MODE of inst : label is 1;
  attribute C_TX_DATA_ENCODING : integer;
  attribute C_TX_DATA_ENCODING of inst : label is 2;
  attribute C_TX_ENABLE : integer;
  attribute C_TX_ENABLE of inst : label is 1;
  attribute C_TX_INT_DATA_WIDTH : integer;
  attribute C_TX_INT_DATA_WIDTH of inst : label is 32;
  attribute C_TX_LINE_RATE : string;
  attribute C_TX_LINE_RATE of inst : label is "10.312500";
  attribute C_TX_MASTER_CHANNEL_IDX : integer;
  attribute C_TX_MASTER_CHANNEL_IDX of inst : label is 10;
  attribute C_TX_OUTCLK_BUFG_GT_DIV : integer;
  attribute C_TX_OUTCLK_BUFG_GT_DIV of inst : label is 1;
  attribute C_TX_OUTCLK_FREQUENCY : string;
  attribute C_TX_OUTCLK_FREQUENCY of inst : label is "322.265625";
  attribute C_TX_OUTCLK_SOURCE : integer;
  attribute C_TX_OUTCLK_SOURCE of inst : label is 4;
  attribute C_TX_PLL_TYPE : integer;
  attribute C_TX_PLL_TYPE of inst : label is 0;
  attribute C_TX_REFCLK_FREQUENCY : string;
  attribute C_TX_REFCLK_FREQUENCY of inst : label is "156.250000";
  attribute C_TX_USER_CLOCKING_CONTENTS : integer;
  attribute C_TX_USER_CLOCKING_CONTENTS of inst : label is 0;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL : integer;
  attribute C_TX_USER_CLOCKING_INSTANCE_CTRL of inst : label is 0;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK of inst : label is 1;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 : integer;
  attribute C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 of inst : label is 2;
  attribute C_TX_USER_CLOCKING_SOURCE : integer;
  attribute C_TX_USER_CLOCKING_SOURCE of inst : label is 0;
  attribute C_TX_USER_DATA_WIDTH : integer;
  attribute C_TX_USER_DATA_WIDTH of inst : label is 64;
  attribute C_TX_USRCLK2_FREQUENCY : string;
  attribute C_TX_USRCLK2_FREQUENCY of inst : label is "161.132812";
  attribute C_TX_USRCLK_FREQUENCY : string;
  attribute C_TX_USRCLK_FREQUENCY of inst : label is "322.265625";
  attribute C_USER_GTPOWERGOOD_DELAY_EN : integer;
  attribute C_USER_GTPOWERGOOD_DELAY_EN of inst : label is 1;
begin
inst: entity work.gtwizard_ultrascale_0_gtwizard_ultrascale_0_gtwizard_top
     port map (
      bgbypassb_in(0) => '1',
      bgmonitorenb_in(0) => '1',
      bgpdb_in(0) => '1',
      bgrcalovrd_in(4 downto 0) => B"10000",
      bgrcalovrdenb_in(0) => '1',
      bufgtce_out(1 downto 0) => NLW_inst_bufgtce_out_UNCONNECTED(1 downto 0),
      bufgtcemask_out(5 downto 0) => NLW_inst_bufgtcemask_out_UNCONNECTED(5 downto 0),
      bufgtdiv_out(17 downto 0) => NLW_inst_bufgtdiv_out_UNCONNECTED(17 downto 0),
      bufgtreset_out(1 downto 0) => NLW_inst_bufgtreset_out_UNCONNECTED(1 downto 0),
      bufgtrstmask_out(5 downto 0) => NLW_inst_bufgtrstmask_out_UNCONNECTED(5 downto 0),
      cdrstepdir_in(1 downto 0) => B"00",
      cdrstepsq_in(1 downto 0) => B"00",
      cdrstepsx_in(1 downto 0) => B"00",
      cfgreset_in(1 downto 0) => B"00",
      clkrsvd0_in(1 downto 0) => B"00",
      clkrsvd1_in(1 downto 0) => B"00",
      cpllfbclklost_out(1 downto 0) => NLW_inst_cpllfbclklost_out_UNCONNECTED(1 downto 0),
      cpllfreqlock_in(1 downto 0) => B"00",
      cplllock_out(1 downto 0) => NLW_inst_cplllock_out_UNCONNECTED(1 downto 0),
      cplllockdetclk_in(1 downto 0) => B"00",
      cplllocken_in(1 downto 0) => B"00",
      cpllpd_in(1 downto 0) => B"11",
      cpllrefclklost_out(1 downto 0) => NLW_inst_cpllrefclklost_out_UNCONNECTED(1 downto 0),
      cpllrefclksel_in(5 downto 0) => B"001001",
      cpllreset_in(1 downto 0) => B"11",
      dmonfiforeset_in(1 downto 0) => B"00",
      dmonitorclk_in(1 downto 0) => B"00",
      dmonitorout_out(31 downto 0) => NLW_inst_dmonitorout_out_UNCONNECTED(31 downto 0),
      dmonitoroutclk_out(1 downto 0) => NLW_inst_dmonitoroutclk_out_UNCONNECTED(1 downto 0),
      drpaddr_common_in(15 downto 0) => B"0000000000000000",
      drpaddr_in(19 downto 0) => B"00000000000000000000",
      drpclk_common_in(0) => '0',
      drpclk_in(1 downto 0) => B"00",
      drpdi_common_in(15 downto 0) => B"0000000000000000",
      drpdi_in(31 downto 0) => B"00000000000000000000000000000000",
      drpdo_common_out(15 downto 0) => NLW_inst_drpdo_common_out_UNCONNECTED(15 downto 0),
      drpdo_out(31 downto 0) => NLW_inst_drpdo_out_UNCONNECTED(31 downto 0),
      drpen_common_in(0) => '0',
      drpen_in(1 downto 0) => B"00",
      drprdy_common_out(0) => NLW_inst_drprdy_common_out_UNCONNECTED(0),
      drprdy_out(1 downto 0) => NLW_inst_drprdy_out_UNCONNECTED(1 downto 0),
      drprst_in(1 downto 0) => B"00",
      drpwe_common_in(0) => '0',
      drpwe_in(1 downto 0) => B"00",
      elpcaldvorwren_in(0) => '0',
      elpcalpaorwren_in(0) => '0',
      evoddphicaldone_in(0) => '0',
      evoddphicalstart_in(0) => '0',
      evoddphidrden_in(0) => '0',
      evoddphidwren_in(0) => '0',
      evoddphixrden_in(0) => '0',
      evoddphixwren_in(0) => '0',
      eyescandataerror_out(1 downto 0) => NLW_inst_eyescandataerror_out_UNCONNECTED(1 downto 0),
      eyescanmode_in(0) => '0',
      eyescanreset_in(1 downto 0) => B"00",
      eyescantrigger_in(1 downto 0) => B"00",
      freqos_in(1 downto 0) => B"00",
      gtgrefclk0_in(0) => '0',
      gtgrefclk1_in(0) => '0',
      gtgrefclk_in(1 downto 0) => B"00",
      gthrxn_in(0) => '0',
      gthrxp_in(0) => '0',
      gthtxn_out(0) => NLW_inst_gthtxn_out_UNCONNECTED(0),
      gthtxp_out(0) => NLW_inst_gthtxp_out_UNCONNECTED(0),
      gtnorthrefclk00_in(0) => '0',
      gtnorthrefclk01_in(0) => '0',
      gtnorthrefclk0_in(1 downto 0) => B"00",
      gtnorthrefclk10_in(0) => '0',
      gtnorthrefclk11_in(0) => '0',
      gtnorthrefclk1_in(1 downto 0) => B"00",
      gtpowergood_out(1 downto 0) => gtpowergood_out(1 downto 0),
      gtrefclk00_in(0) => gtrefclk00_in(0),
      gtrefclk01_in(0) => '0',
      gtrefclk0_in(1 downto 0) => B"00",
      gtrefclk10_in(0) => '0',
      gtrefclk11_in(0) => '0',
      gtrefclk1_in(1 downto 0) => B"00",
      gtrefclkmonitor_out(1 downto 0) => NLW_inst_gtrefclkmonitor_out_UNCONNECTED(1 downto 0),
      gtresetsel_in(0) => '0',
      gtrsvd_in(31 downto 0) => B"00000000000000000000000000000000",
      gtrxreset_in(1 downto 0) => B"00",
      gtrxresetsel_in(1 downto 0) => B"00",
      gtsouthrefclk00_in(0) => '0',
      gtsouthrefclk01_in(0) => '0',
      gtsouthrefclk0_in(1 downto 0) => B"00",
      gtsouthrefclk10_in(0) => '0',
      gtsouthrefclk11_in(0) => '0',
      gtsouthrefclk1_in(1 downto 0) => B"00",
      gttxreset_in(1 downto 0) => B"00",
      gttxresetsel_in(1 downto 0) => B"00",
      gtwiz_buffbypass_rx_done_out(0) => NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED(0),
      gtwiz_buffbypass_rx_error_out(0) => NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED(0),
      gtwiz_buffbypass_rx_reset_in(0) => '0',
      gtwiz_buffbypass_rx_start_user_in(0) => '0',
      gtwiz_buffbypass_tx_done_out(0) => NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED(0),
      gtwiz_buffbypass_tx_error_out(0) => NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED(0),
      gtwiz_buffbypass_tx_reset_in(0) => '0',
      gtwiz_buffbypass_tx_start_user_in(0) => '0',
      gtwiz_gthe3_cpll_cal_bufg_ce_in(1 downto 0) => B"00",
      gtwiz_gthe3_cpll_cal_cnt_tol_in(35 downto 0) => B"000000000000000000000000000000000000",
      gtwiz_gthe3_cpll_cal_txoutclk_period_in(35 downto 0) => B"000000000000000000000000000000000000",
      gtwiz_gthe4_cpll_cal_bufg_ce_in(1 downto 0) => B"00",
      gtwiz_gthe4_cpll_cal_cnt_tol_in(35 downto 0) => B"000000000000000000000000000000000000",
      gtwiz_gthe4_cpll_cal_txoutclk_period_in(35 downto 0) => B"000000000000000000000000000000000000",
      gtwiz_gtye4_cpll_cal_bufg_ce_in(1 downto 0) => B"00",
      gtwiz_gtye4_cpll_cal_cnt_tol_in(35 downto 0) => B"000000000000000000000000000000000000",
      gtwiz_gtye4_cpll_cal_txoutclk_period_in(35 downto 0) => B"000000000000000000000000000000000000",
      gtwiz_reset_all_in(0) => gtwiz_reset_all_in(0),
      gtwiz_reset_clk_freerun_in(0) => gtwiz_reset_clk_freerun_in(0),
      gtwiz_reset_qpll0lock_in(0) => '0',
      gtwiz_reset_qpll0reset_out(0) => NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED(0),
      gtwiz_reset_qpll1lock_in(0) => '0',
      gtwiz_reset_qpll1reset_out(0) => NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED(0),
      gtwiz_reset_rx_cdr_stable_out(0) => gtwiz_reset_rx_cdr_stable_out(0),
      gtwiz_reset_rx_datapath_in(0) => gtwiz_reset_rx_datapath_in(0),
      gtwiz_reset_rx_done_in(0) => '0',
      gtwiz_reset_rx_done_out(0) => gtwiz_reset_rx_done_out(0),
      gtwiz_reset_rx_pll_and_datapath_in(0) => gtwiz_reset_rx_pll_and_datapath_in(0),
      gtwiz_reset_tx_datapath_in(0) => gtwiz_reset_tx_datapath_in(0),
      gtwiz_reset_tx_done_in(0) => '0',
      gtwiz_reset_tx_done_out(0) => gtwiz_reset_tx_done_out(0),
      gtwiz_reset_tx_pll_and_datapath_in(0) => gtwiz_reset_tx_pll_and_datapath_in(0),
      gtwiz_userclk_rx_active_in(0) => '0',
      gtwiz_userclk_rx_active_out(0) => gtwiz_userclk_rx_active_out(0),
      gtwiz_userclk_rx_reset_in(0) => gtwiz_userclk_rx_reset_in(0),
      gtwiz_userclk_rx_srcclk_out(0) => gtwiz_userclk_rx_srcclk_out(0),
      gtwiz_userclk_rx_usrclk2_out(0) => gtwiz_userclk_rx_usrclk2_out(0),
      gtwiz_userclk_rx_usrclk_out(0) => gtwiz_userclk_rx_usrclk_out(0),
      gtwiz_userclk_tx_active_in(0) => '0',
      gtwiz_userclk_tx_active_out(0) => gtwiz_userclk_tx_active_out(0),
      gtwiz_userclk_tx_reset_in(0) => gtwiz_userclk_tx_reset_in(0),
      gtwiz_userclk_tx_srcclk_out(0) => gtwiz_userclk_tx_srcclk_out(0),
      gtwiz_userclk_tx_usrclk2_out(0) => gtwiz_userclk_tx_usrclk2_out(0),
      gtwiz_userclk_tx_usrclk_out(0) => gtwiz_userclk_tx_usrclk_out(0),
      gtwiz_userdata_rx_out(127 downto 0) => gtwiz_userdata_rx_out(127 downto 0),
      gtwiz_userdata_tx_in(127 downto 0) => gtwiz_userdata_tx_in(127 downto 0),
      gtyrxn_in(1 downto 0) => gtyrxn_in(1 downto 0),
      gtyrxp_in(1 downto 0) => gtyrxp_in(1 downto 0),
      gtytxn_out(1 downto 0) => gtytxn_out(1 downto 0),
      gtytxp_out(1 downto 0) => gtytxp_out(1 downto 0),
      incpctrl_in(1 downto 0) => B"00",
      loopback_in(5 downto 0) => B"000000",
      looprsvd_in(0) => '0',
      lpbkrxtxseren_in(0) => '0',
      lpbktxrxseren_in(0) => '0',
      pcieeqrxeqadaptdone_in(1 downto 0) => B"00",
      pcierategen3_out(1 downto 0) => NLW_inst_pcierategen3_out_UNCONNECTED(1 downto 0),
      pcierateidle_out(1 downto 0) => NLW_inst_pcierateidle_out_UNCONNECTED(1 downto 0),
      pcierateqpll0_in(2 downto 0) => B"000",
      pcierateqpll1_in(2 downto 0) => B"000",
      pcierateqpllpd_out(3 downto 0) => NLW_inst_pcierateqpllpd_out_UNCONNECTED(3 downto 0),
      pcierateqpllreset_out(3 downto 0) => NLW_inst_pcierateqpllreset_out_UNCONNECTED(3 downto 0),
      pcierstidle_in(1 downto 0) => B"00",
      pciersttxsyncstart_in(1 downto 0) => B"00",
      pciesynctxsyncdone_out(1 downto 0) => NLW_inst_pciesynctxsyncdone_out_UNCONNECTED(1 downto 0),
      pcieusergen3rdy_out(1 downto 0) => NLW_inst_pcieusergen3rdy_out_UNCONNECTED(1 downto 0),
      pcieuserphystatusrst_out(1 downto 0) => NLW_inst_pcieuserphystatusrst_out_UNCONNECTED(1 downto 0),
      pcieuserratedone_in(1 downto 0) => B"00",
      pcieuserratestart_out(1 downto 0) => NLW_inst_pcieuserratestart_out_UNCONNECTED(1 downto 0),
      pcsrsvdin2_in(0) => '0',
      pcsrsvdin_in(31 downto 0) => B"00000000000000000000000000000000",
      pcsrsvdout_out(31 downto 0) => NLW_inst_pcsrsvdout_out_UNCONNECTED(31 downto 0),
      phystatus_out(1 downto 0) => NLW_inst_phystatus_out_UNCONNECTED(1 downto 0),
      pinrsrvdas_out(31 downto 0) => NLW_inst_pinrsrvdas_out_UNCONNECTED(31 downto 0),
      pmarsvd0_in(7 downto 0) => B"00000000",
      pmarsvd1_in(7 downto 0) => B"00000000",
      pmarsvdin_in(0) => '0',
      pmarsvdout0_out(7 downto 0) => NLW_inst_pmarsvdout0_out_UNCONNECTED(7 downto 0),
      pmarsvdout1_out(7 downto 0) => NLW_inst_pmarsvdout1_out_UNCONNECTED(7 downto 0),
      powerpresent_out(1 downto 0) => NLW_inst_powerpresent_out_UNCONNECTED(1 downto 0),
      qpll0clk_in(1 downto 0) => B"00",
      qpll0clkrsvd0_in(0) => '0',
      qpll0clkrsvd1_in(0) => '0',
      qpll0fbclklost_out(0) => NLW_inst_qpll0fbclklost_out_UNCONNECTED(0),
      qpll0fbdiv_in(7 downto 0) => B"00000000",
      qpll0freqlock_in(1 downto 0) => B"00",
      qpll0lock_out(0) => NLW_inst_qpll0lock_out_UNCONNECTED(0),
      qpll0lockdetclk_in(0) => '0',
      qpll0locken_in(0) => '1',
      qpll0outclk_out(0) => qpll0outclk_out(0),
      qpll0outrefclk_out(0) => qpll0outrefclk_out(0),
      qpll0pd_in(0) => '0',
      qpll0refclk_in(1 downto 0) => B"00",
      qpll0refclklost_out(0) => NLW_inst_qpll0refclklost_out_UNCONNECTED(0),
      qpll0refclksel_in(2 downto 0) => B"001",
      qpll0reset_in(0) => '0',
      qpll1clk_in(1 downto 0) => B"00",
      qpll1clkrsvd0_in(0) => '0',
      qpll1clkrsvd1_in(0) => '0',
      qpll1fbclklost_out(0) => NLW_inst_qpll1fbclklost_out_UNCONNECTED(0),
      qpll1fbdiv_in(7 downto 0) => B"00000000",
      qpll1freqlock_in(1 downto 0) => B"00",
      qpll1lock_out(0) => NLW_inst_qpll1lock_out_UNCONNECTED(0),
      qpll1lockdetclk_in(0) => '0',
      qpll1locken_in(0) => '0',
      qpll1outclk_out(0) => NLW_inst_qpll1outclk_out_UNCONNECTED(0),
      qpll1outrefclk_out(0) => NLW_inst_qpll1outrefclk_out_UNCONNECTED(0),
      qpll1pd_in(0) => '1',
      qpll1refclk_in(1 downto 0) => B"00",
      qpll1refclklost_out(0) => NLW_inst_qpll1refclklost_out_UNCONNECTED(0),
      qpll1refclksel_in(2 downto 0) => B"001",
      qpll1reset_in(0) => '1',
      qplldmonitor0_out(7 downto 0) => NLW_inst_qplldmonitor0_out_UNCONNECTED(7 downto 0),
      qplldmonitor1_out(7 downto 0) => NLW_inst_qplldmonitor1_out_UNCONNECTED(7 downto 0),
      qpllrsvd1_in(7 downto 0) => B"00000000",
      qpllrsvd2_in(4 downto 0) => B"00000",
      qpllrsvd3_in(4 downto 0) => B"00000",
      qpllrsvd4_in(7 downto 0) => B"00000000",
      rcalenb_in(0) => '1',
      refclkoutmonitor0_out(0) => NLW_inst_refclkoutmonitor0_out_UNCONNECTED(0),
      refclkoutmonitor1_out(0) => NLW_inst_refclkoutmonitor1_out_UNCONNECTED(0),
      resetexception_out(1 downto 0) => NLW_inst_resetexception_out_UNCONNECTED(1 downto 0),
      resetovrd_in(1 downto 0) => B"00",
      rstclkentx_in(0) => '0',
      rx8b10ben_in(1 downto 0) => B"00",
      rxafecfoken_in(1 downto 0) => B"11",
      rxbufreset_in(1 downto 0) => B"00",
      rxbufstatus_out(5 downto 0) => NLW_inst_rxbufstatus_out_UNCONNECTED(5 downto 0),
      rxbyteisaligned_out(1 downto 0) => NLW_inst_rxbyteisaligned_out_UNCONNECTED(1 downto 0),
      rxbyterealign_out(1 downto 0) => NLW_inst_rxbyterealign_out_UNCONNECTED(1 downto 0),
      rxcdrfreqreset_in(1 downto 0) => B"00",
      rxcdrhold_in(1 downto 0) => B"00",
      rxcdrlock_out(1 downto 0) => NLW_inst_rxcdrlock_out_UNCONNECTED(1 downto 0),
      rxcdrovrden_in(1 downto 0) => B"00",
      rxcdrphdone_out(1 downto 0) => NLW_inst_rxcdrphdone_out_UNCONNECTED(1 downto 0),
      rxcdrreset_in(1 downto 0) => B"00",
      rxcdrresetrsv_in(0) => '0',
      rxchanbondseq_out(1 downto 0) => NLW_inst_rxchanbondseq_out_UNCONNECTED(1 downto 0),
      rxchanisaligned_out(1 downto 0) => NLW_inst_rxchanisaligned_out_UNCONNECTED(1 downto 0),
      rxchanrealign_out(1 downto 0) => NLW_inst_rxchanrealign_out_UNCONNECTED(1 downto 0),
      rxchbonden_in(1 downto 0) => B"00",
      rxchbondi_in(9 downto 0) => B"0000000000",
      rxchbondlevel_in(5 downto 0) => B"000000",
      rxchbondmaster_in(1 downto 0) => B"00",
      rxchbondo_out(9 downto 0) => NLW_inst_rxchbondo_out_UNCONNECTED(9 downto 0),
      rxchbondslave_in(1 downto 0) => B"00",
      rxckcaldone_out(1 downto 0) => NLW_inst_rxckcaldone_out_UNCONNECTED(1 downto 0),
      rxckcalreset_in(1 downto 0) => B"00",
      rxckcalstart_in(13 downto 0) => B"00000000000000",
      rxclkcorcnt_out(3 downto 0) => NLW_inst_rxclkcorcnt_out_UNCONNECTED(3 downto 0),
      rxcominitdet_out(1 downto 0) => NLW_inst_rxcominitdet_out_UNCONNECTED(1 downto 0),
      rxcommadet_out(1 downto 0) => NLW_inst_rxcommadet_out_UNCONNECTED(1 downto 0),
      rxcommadeten_in(1 downto 0) => B"00",
      rxcomsasdet_out(1 downto 0) => NLW_inst_rxcomsasdet_out_UNCONNECTED(1 downto 0),
      rxcomwakedet_out(1 downto 0) => NLW_inst_rxcomwakedet_out_UNCONNECTED(1 downto 0),
      rxctrl0_out(31 downto 0) => NLW_inst_rxctrl0_out_UNCONNECTED(31 downto 0),
      rxctrl1_out(31 downto 0) => NLW_inst_rxctrl1_out_UNCONNECTED(31 downto 0),
      rxctrl2_out(15 downto 0) => NLW_inst_rxctrl2_out_UNCONNECTED(15 downto 0),
      rxctrl3_out(15 downto 0) => NLW_inst_rxctrl3_out_UNCONNECTED(15 downto 0),
      rxdata_out(255 downto 0) => NLW_inst_rxdata_out_UNCONNECTED(255 downto 0),
      rxdataextendrsvd_out(15 downto 0) => NLW_inst_rxdataextendrsvd_out_UNCONNECTED(15 downto 0),
      rxdatavalid_out(3 downto 0) => rxdatavalid_out(3 downto 0),
      rxdccforcestart_in(0) => '0',
      rxdfeagcctrl_in(0) => '0',
      rxdfeagchold_in(1 downto 0) => B"00",
      rxdfeagcovrden_in(1 downto 0) => B"00",
      rxdfecfokfcnum_in(7 downto 0) => B"11011101",
      rxdfecfokfen_in(1 downto 0) => B"00",
      rxdfecfokfpulse_in(1 downto 0) => B"00",
      rxdfecfokhold_in(1 downto 0) => B"00",
      rxdfecfokovren_in(1 downto 0) => B"00",
      rxdfekhhold_in(1 downto 0) => B"00",
      rxdfekhovrden_in(1 downto 0) => B"00",
      rxdfelfhold_in(1 downto 0) => B"00",
      rxdfelfovrden_in(1 downto 0) => B"00",
      rxdfelpmreset_in(1 downto 0) => B"00",
      rxdfetap10hold_in(1 downto 0) => B"00",
      rxdfetap10ovrden_in(1 downto 0) => B"00",
      rxdfetap11hold_in(1 downto 0) => B"00",
      rxdfetap11ovrden_in(1 downto 0) => B"00",
      rxdfetap12hold_in(1 downto 0) => B"00",
      rxdfetap12ovrden_in(1 downto 0) => B"00",
      rxdfetap13hold_in(1 downto 0) => B"00",
      rxdfetap13ovrden_in(1 downto 0) => B"00",
      rxdfetap14hold_in(1 downto 0) => B"00",
      rxdfetap14ovrden_in(1 downto 0) => B"00",
      rxdfetap15hold_in(1 downto 0) => B"00",
      rxdfetap15ovrden_in(1 downto 0) => B"00",
      rxdfetap2hold_in(1 downto 0) => B"00",
      rxdfetap2ovrden_in(1 downto 0) => B"00",
      rxdfetap3hold_in(1 downto 0) => B"00",
      rxdfetap3ovrden_in(1 downto 0) => B"00",
      rxdfetap4hold_in(1 downto 0) => B"00",
      rxdfetap4ovrden_in(1 downto 0) => B"00",
      rxdfetap5hold_in(1 downto 0) => B"00",
      rxdfetap5ovrden_in(1 downto 0) => B"00",
      rxdfetap6hold_in(1 downto 0) => B"00",
      rxdfetap6ovrden_in(1 downto 0) => B"00",
      rxdfetap7hold_in(1 downto 0) => B"00",
      rxdfetap7ovrden_in(1 downto 0) => B"00",
      rxdfetap8hold_in(1 downto 0) => B"00",
      rxdfetap8ovrden_in(1 downto 0) => B"00",
      rxdfetap9hold_in(1 downto 0) => B"00",
      rxdfetap9ovrden_in(1 downto 0) => B"00",
      rxdfeuthold_in(1 downto 0) => B"00",
      rxdfeutovrden_in(1 downto 0) => B"00",
      rxdfevphold_in(1 downto 0) => B"00",
      rxdfevpovrden_in(1 downto 0) => B"00",
      rxdfevsen_in(0) => '0',
      rxdfexyden_in(1 downto 0) => B"11",
      rxdlybypass_in(1 downto 0) => B"11",
      rxdlyen_in(1 downto 0) => B"00",
      rxdlyovrden_in(1 downto 0) => B"00",
      rxdlysreset_in(1 downto 0) => B"00",
      rxdlysresetdone_out(1 downto 0) => NLW_inst_rxdlysresetdone_out_UNCONNECTED(1 downto 0),
      rxelecidle_out(1 downto 0) => NLW_inst_rxelecidle_out_UNCONNECTED(1 downto 0),
      rxelecidlemode_in(3 downto 0) => B"1111",
      rxeqtraining_in(1 downto 0) => B"00",
      rxgearboxslip_in(1 downto 0) => rxgearboxslip_in(1 downto 0),
      rxheader_out(11 downto 0) => rxheader_out(11 downto 0),
      rxheadervalid_out(3 downto 0) => rxheadervalid_out(3 downto 0),
      rxlatclk_in(1 downto 0) => B"00",
      rxlfpstresetdet_out(1 downto 0) => NLW_inst_rxlfpstresetdet_out_UNCONNECTED(1 downto 0),
      rxlfpsu2lpexitdet_out(1 downto 0) => NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED(1 downto 0),
      rxlfpsu3wakedet_out(1 downto 0) => NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED(1 downto 0),
      rxlpmen_in(1 downto 0) => B"11",
      rxlpmgchold_in(1 downto 0) => B"00",
      rxlpmgcovrden_in(1 downto 0) => B"00",
      rxlpmhfhold_in(1 downto 0) => B"00",
      rxlpmhfovrden_in(1 downto 0) => B"00",
      rxlpmlfhold_in(1 downto 0) => B"00",
      rxlpmlfklovrden_in(1 downto 0) => B"00",
      rxlpmoshold_in(1 downto 0) => B"00",
      rxlpmosovrden_in(1 downto 0) => B"00",
      rxmcommaalignen_in(1 downto 0) => B"00",
      rxmonitorout_out(15 downto 0) => NLW_inst_rxmonitorout_out_UNCONNECTED(15 downto 0),
      rxmonitorsel_in(3 downto 0) => B"0000",
      rxoobreset_in(1 downto 0) => B"00",
      rxoscalreset_in(1 downto 0) => B"00",
      rxoshold_in(1 downto 0) => B"00",
      rxosintcfg_in(0) => '0',
      rxosintdone_out(1 downto 0) => NLW_inst_rxosintdone_out_UNCONNECTED(1 downto 0),
      rxosinten_in(0) => '0',
      rxosinthold_in(0) => '0',
      rxosintovrden_in(0) => '0',
      rxosintstarted_out(1 downto 0) => NLW_inst_rxosintstarted_out_UNCONNECTED(1 downto 0),
      rxosintstrobe_in(0) => '0',
      rxosintstrobedone_out(1 downto 0) => NLW_inst_rxosintstrobedone_out_UNCONNECTED(1 downto 0),
      rxosintstrobestarted_out(1 downto 0) => NLW_inst_rxosintstrobestarted_out_UNCONNECTED(1 downto 0),
      rxosinttestovrden_in(0) => '0',
      rxosovrden_in(1 downto 0) => B"00",
      rxoutclk_out(1 downto 0) => NLW_inst_rxoutclk_out_UNCONNECTED(1 downto 0),
      rxoutclkfabric_out(1 downto 0) => NLW_inst_rxoutclkfabric_out_UNCONNECTED(1 downto 0),
      rxoutclkpcs_out(1 downto 0) => NLW_inst_rxoutclkpcs_out_UNCONNECTED(1 downto 0),
      rxoutclksel_in(5 downto 0) => B"101101",
      rxpcommaalignen_in(1 downto 0) => B"00",
      rxpcsreset_in(1 downto 0) => B"00",
      rxpd_in(3 downto 0) => B"0000",
      rxphalign_in(1 downto 0) => B"00",
      rxphaligndone_out(1 downto 0) => NLW_inst_rxphaligndone_out_UNCONNECTED(1 downto 0),
      rxphalignen_in(1 downto 0) => B"00",
      rxphalignerr_out(1 downto 0) => NLW_inst_rxphalignerr_out_UNCONNECTED(1 downto 0),
      rxphdlypd_in(1 downto 0) => B"11",
      rxphdlyreset_in(1 downto 0) => B"00",
      rxphovrden_in(0) => '0',
      rxpllclksel_in(3 downto 0) => B"1111",
      rxpmareset_in(1 downto 0) => B"00",
      rxpmaresetdone_out(1 downto 0) => rxpmaresetdone_out(1 downto 0),
      rxpolarity_in(1 downto 0) => B"00",
      rxprbscntreset_in(1 downto 0) => B"00",
      rxprbserr_out(1 downto 0) => NLW_inst_rxprbserr_out_UNCONNECTED(1 downto 0),
      rxprbslocked_out(1 downto 0) => NLW_inst_rxprbslocked_out_UNCONNECTED(1 downto 0),
      rxprbssel_in(7 downto 0) => B"00000000",
      rxprgdivresetdone_out(1 downto 0) => rxprgdivresetdone_out(1 downto 0),
      rxprogdivreset_in(1 downto 0) => B"00",
      rxqpien_in(0) => '0',
      rxqpisenn_out(0) => NLW_inst_rxqpisenn_out_UNCONNECTED(0),
      rxqpisenp_out(0) => NLW_inst_rxqpisenp_out_UNCONNECTED(0),
      rxrate_in(5 downto 0) => B"000000",
      rxratedone_out(1 downto 0) => NLW_inst_rxratedone_out_UNCONNECTED(1 downto 0),
      rxratemode_in(1 downto 0) => B"00",
      rxrecclk0_sel_out(0) => NLW_inst_rxrecclk0_sel_out_UNCONNECTED(0),
      rxrecclk0sel_out(1 downto 0) => NLW_inst_rxrecclk0sel_out_UNCONNECTED(1 downto 0),
      rxrecclk1_sel_out(0) => NLW_inst_rxrecclk1_sel_out_UNCONNECTED(0),
      rxrecclk1sel_out(1 downto 0) => NLW_inst_rxrecclk1sel_out_UNCONNECTED(1 downto 0),
      rxrecclkout_out(1 downto 0) => NLW_inst_rxrecclkout_out_UNCONNECTED(1 downto 0),
      rxresetdone_out(1 downto 0) => NLW_inst_rxresetdone_out_UNCONNECTED(1 downto 0),
      rxslide_in(1 downto 0) => B"00",
      rxsliderdy_out(1 downto 0) => NLW_inst_rxsliderdy_out_UNCONNECTED(1 downto 0),
      rxslipdone_out(1 downto 0) => NLW_inst_rxslipdone_out_UNCONNECTED(1 downto 0),
      rxslipoutclk_in(1 downto 0) => B"00",
      rxslipoutclkrdy_out(1 downto 0) => NLW_inst_rxslipoutclkrdy_out_UNCONNECTED(1 downto 0),
      rxslippma_in(1 downto 0) => B"00",
      rxslippmardy_out(1 downto 0) => NLW_inst_rxslippmardy_out_UNCONNECTED(1 downto 0),
      rxstartofseq_out(3 downto 0) => rxstartofseq_out(3 downto 0),
      rxstatus_out(5 downto 0) => NLW_inst_rxstatus_out_UNCONNECTED(5 downto 0),
      rxsyncallin_in(1 downto 0) => B"00",
      rxsyncdone_out(1 downto 0) => NLW_inst_rxsyncdone_out_UNCONNECTED(1 downto 0),
      rxsyncin_in(1 downto 0) => B"00",
      rxsyncmode_in(1 downto 0) => B"00",
      rxsyncout_out(1 downto 0) => NLW_inst_rxsyncout_out_UNCONNECTED(1 downto 0),
      rxsysclksel_in(3 downto 0) => B"1010",
      rxtermination_in(1 downto 0) => B"00",
      rxuserrdy_in(1 downto 0) => B"11",
      rxusrclk2_in(1 downto 0) => B"00",
      rxusrclk_in(1 downto 0) => B"00",
      rxvalid_out(1 downto 0) => NLW_inst_rxvalid_out_UNCONNECTED(1 downto 0),
      sdm0data_in(24 downto 0) => B"0000000000000000000000000",
      sdm0finalout_out(3 downto 0) => NLW_inst_sdm0finalout_out_UNCONNECTED(3 downto 0),
      sdm0reset_in(0) => '0',
      sdm0testdata_out(14 downto 0) => NLW_inst_sdm0testdata_out_UNCONNECTED(14 downto 0),
      sdm0toggle_in(0) => '0',
      sdm0width_in(1 downto 0) => B"00",
      sdm1data_in(24 downto 0) => B"0000000000000000000000000",
      sdm1finalout_out(3 downto 0) => NLW_inst_sdm1finalout_out_UNCONNECTED(3 downto 0),
      sdm1reset_in(0) => '0',
      sdm1testdata_out(14 downto 0) => NLW_inst_sdm1testdata_out_UNCONNECTED(14 downto 0),
      sdm1toggle_in(0) => '0',
      sdm1width_in(1 downto 0) => B"00",
      sigvalidclk_in(1 downto 0) => B"00",
      tcongpi_in(0) => '0',
      tcongpo_out(0) => NLW_inst_tcongpo_out_UNCONNECTED(0),
      tconpowerup_in(0) => '0',
      tconreset_in(0) => '0',
      tconrsvdin1_in(0) => '0',
      tconrsvdout0_out(0) => NLW_inst_tconrsvdout0_out_UNCONNECTED(0),
      tstin_in(39 downto 0) => B"0000000000000000000000000000000000000000",
      tx8b10bbypass_in(15 downto 0) => B"0000000000000000",
      tx8b10ben_in(1 downto 0) => B"00",
      txbufdiffctrl_in(0) => '0',
      txbufstatus_out(3 downto 0) => NLW_inst_txbufstatus_out_UNCONNECTED(3 downto 0),
      txcomfinish_out(1 downto 0) => NLW_inst_txcomfinish_out_UNCONNECTED(1 downto 0),
      txcominit_in(1 downto 0) => B"00",
      txcomsas_in(1 downto 0) => B"00",
      txcomwake_in(1 downto 0) => B"00",
      txctrl0_in(31 downto 0) => B"00000000000000000000000000000000",
      txctrl1_in(31 downto 0) => B"00000000000000000000000000000000",
      txctrl2_in(15 downto 0) => B"0000000000000000",
      txdata_in(255 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      txdataextendrsvd_in(15 downto 0) => B"0000000000000000",
      txdccdone_out(1 downto 0) => NLW_inst_txdccdone_out_UNCONNECTED(1 downto 0),
      txdccforcestart_in(1 downto 0) => B"00",
      txdccreset_in(1 downto 0) => B"00",
      txdeemph_in(3 downto 0) => B"0000",
      txdetectrx_in(1 downto 0) => B"00",
      txdiffctrl_in(9 downto 0) => B"1100011000",
      txdiffpd_in(0) => '0',
      txdlybypass_in(1 downto 0) => B"11",
      txdlyen_in(1 downto 0) => B"00",
      txdlyhold_in(1 downto 0) => B"00",
      txdlyovrden_in(1 downto 0) => B"00",
      txdlysreset_in(1 downto 0) => B"00",
      txdlysresetdone_out(1 downto 0) => NLW_inst_txdlysresetdone_out_UNCONNECTED(1 downto 0),
      txdlyupdown_in(1 downto 0) => B"00",
      txelecidle_in(1 downto 0) => B"00",
      txelforcestart_in(0) => '0',
      txheader_in(11 downto 0) => txheader_in(11 downto 0),
      txinhibit_in(1 downto 0) => B"00",
      txlatclk_in(1 downto 0) => B"00",
      txlfpstreset_in(1 downto 0) => B"00",
      txlfpsu2lpexit_in(1 downto 0) => B"00",
      txlfpsu3wake_in(1 downto 0) => B"00",
      txmaincursor_in(13 downto 0) => B"10100001010000",
      txmargin_in(5 downto 0) => B"000000",
      txmuxdcdexhold_in(1 downto 0) => B"00",
      txmuxdcdorwren_in(1 downto 0) => B"00",
      txoneszeros_in(1 downto 0) => B"00",
      txoutclk_out(1 downto 0) => NLW_inst_txoutclk_out_UNCONNECTED(1 downto 0),
      txoutclkfabric_out(1 downto 0) => NLW_inst_txoutclkfabric_out_UNCONNECTED(1 downto 0),
      txoutclkpcs_out(1 downto 0) => NLW_inst_txoutclkpcs_out_UNCONNECTED(1 downto 0),
      txoutclksel_in(5 downto 0) => B"101101",
      txpcsreset_in(1 downto 0) => B"00",
      txpd_in(3 downto 0) => B"0000",
      txpdelecidlemode_in(1 downto 0) => B"00",
      txphalign_in(1 downto 0) => B"00",
      txphaligndone_out(1 downto 0) => NLW_inst_txphaligndone_out_UNCONNECTED(1 downto 0),
      txphalignen_in(1 downto 0) => B"00",
      txphdlypd_in(1 downto 0) => B"11",
      txphdlyreset_in(1 downto 0) => B"00",
      txphdlytstclk_in(1 downto 0) => B"00",
      txphinit_in(1 downto 0) => B"00",
      txphinitdone_out(1 downto 0) => NLW_inst_txphinitdone_out_UNCONNECTED(1 downto 0),
      txphovrden_in(1 downto 0) => B"00",
      txpippmen_in(1 downto 0) => B"00",
      txpippmovrden_in(1 downto 0) => B"00",
      txpippmpd_in(1 downto 0) => B"00",
      txpippmsel_in(1 downto 0) => B"11",
      txpippmstepsize_in(9 downto 0) => B"0000000000",
      txpisopd_in(1 downto 0) => B"00",
      txpllclksel_in(3 downto 0) => B"1111",
      txpmareset_in(1 downto 0) => B"00",
      txpmaresetdone_out(1 downto 0) => txpmaresetdone_out(1 downto 0),
      txpolarity_in(1 downto 0) => B"00",
      txpostcursor_in(9 downto 0) => B"0000000000",
      txpostcursorinv_in(0) => '0',
      txprbsforceerr_in(1 downto 0) => B"00",
      txprbssel_in(7 downto 0) => B"00000000",
      txprecursor_in(9 downto 0) => B"0000000000",
      txprecursorinv_in(0) => '0',
      txprgdivresetdone_out(1 downto 0) => txprgdivresetdone_out(1 downto 0),
      txprogdivreset_in(1 downto 0) => B"00",
      txqpibiasen_in(0) => '0',
      txqpisenn_out(0) => NLW_inst_txqpisenn_out_UNCONNECTED(0),
      txqpisenp_out(0) => NLW_inst_txqpisenp_out_UNCONNECTED(0),
      txqpistrongpdown_in(0) => '0',
      txqpiweakpup_in(0) => '0',
      txrate_in(5 downto 0) => B"000000",
      txratedone_out(1 downto 0) => NLW_inst_txratedone_out_UNCONNECTED(1 downto 0),
      txratemode_in(1 downto 0) => B"00",
      txresetdone_out(1 downto 0) => NLW_inst_txresetdone_out_UNCONNECTED(1 downto 0),
      txsequence_in(13 downto 0) => txsequence_in(13 downto 0),
      txswing_in(1 downto 0) => B"00",
      txsyncallin_in(1 downto 0) => B"00",
      txsyncdone_out(1 downto 0) => NLW_inst_txsyncdone_out_UNCONNECTED(1 downto 0),
      txsyncin_in(1 downto 0) => B"00",
      txsyncmode_in(1 downto 0) => B"00",
      txsyncout_out(1 downto 0) => NLW_inst_txsyncout_out_UNCONNECTED(1 downto 0),
      txsysclksel_in(3 downto 0) => B"1010",
      txuserrdy_in(1 downto 0) => B"11",
      txusrclk2_in(1 downto 0) => B"00",
      txusrclk_in(1 downto 0) => B"00",
      ubcfgstreamen_in(0) => '0',
      ubdaddr_out(15 downto 0) => NLW_inst_ubdaddr_out_UNCONNECTED(15 downto 0),
      ubden_out(0) => NLW_inst_ubden_out_UNCONNECTED(0),
      ubdi_out(15 downto 0) => NLW_inst_ubdi_out_UNCONNECTED(15 downto 0),
      ubdo_in(15 downto 0) => B"0000000000000000",
      ubdrdy_in(0) => '0',
      ubdwe_out(0) => NLW_inst_ubdwe_out_UNCONNECTED(0),
      ubenable_in(0) => '0',
      ubgpi_in(1 downto 0) => B"00",
      ubintr_in(1 downto 0) => B"00",
      ubiolmbrst_in(0) => '0',
      ubmbrst_in(0) => '0',
      ubmdmcapture_in(0) => '0',
      ubmdmdbgrst_in(0) => '0',
      ubmdmdbgupdate_in(0) => '0',
      ubmdmregen_in(3 downto 0) => B"0000",
      ubmdmshift_in(0) => '0',
      ubmdmsysrst_in(0) => '0',
      ubmdmtck_in(0) => '0',
      ubmdmtdi_in(0) => '0',
      ubmdmtdo_out(0) => NLW_inst_ubmdmtdo_out_UNCONNECTED(0),
      ubrsvdout_out(0) => NLW_inst_ubrsvdout_out_UNCONNECTED(0),
      ubtxuart_out(0) => NLW_inst_ubtxuart_out_UNCONNECTED(0)
    );
end STRUCTURE;
