-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Thu Oct 22 16:03:55 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top S7_PHS_ctrl_23_0 -prefix
--               S7_PHS_ctrl_23_0_ S7_PHS_ctrl_5_0_sim_netlist.vhdl
-- Design      : S7_PHS_ctrl_5_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity S7_PHS_ctrl_23_0_PHS_ctrl_real is
  port (
    status : out STD_LOGIC;
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    ena_out : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    port_phs_in : in STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end S7_PHS_ctrl_23_0_PHS_ctrl_real;

architecture STRUCTURE of S7_PHS_ctrl_23_0_PHS_ctrl_real is
  signal \deb_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \deb_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \deb_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \deb_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \deb_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \deb_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \deb_cnt[6]_i_4_n_0\ : STD_LOGIC;
  signal \deb_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \deb_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \deb_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \deb_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \deb_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \deb_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \deb_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \deb_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal ena : STD_LOGIC;
  signal \ena_dly_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \ena_dly_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \ena_dly_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal ena_dly_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ena_out_i_1_n_0 : STD_LOGIC;
  signal ena_out_i_2_n_0 : STD_LOGIC;
  signal eqOp8_in : STD_LOGIC;
  signal \eqOp_inferred__5/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__5/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__5/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal irq0_L2S_i : STD_LOGIC;
  signal irq0_L2S_i_i_1_n_0 : STD_LOGIC;
  signal irq0_clr_i : STD_LOGIC;
  signal irq1_S2L_i : STD_LOGIC;
  signal irq1_S2L_i_i_1_n_0 : STD_LOGIC;
  signal irq1_clr_i : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal plusOp : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal port_phs : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of port_phs : signal is "true";
  signal port_phs_meta : STD_LOGIC;
  attribute async_reg of port_phs_meta : signal is "true";
  signal port_pwm_out3_out : STD_LOGIC;
  signal port_pwm_out6_out : STD_LOGIC;
  signal port_pwm_out_i_10_n_0 : STD_LOGIC;
  signal port_pwm_out_i_11_n_0 : STD_LOGIC;
  signal port_pwm_out_i_12_n_0 : STD_LOGIC;
  signal port_pwm_out_i_3_n_0 : STD_LOGIC;
  signal port_pwm_out_i_4_n_0 : STD_LOGIC;
  signal port_pwm_out_i_5_n_0 : STD_LOGIC;
  signal port_pwm_out_i_6_n_0 : STD_LOGIC;
  signal port_pwm_out_i_7_n_0 : STD_LOGIC;
  signal port_pwm_out_i_8_n_0 : STD_LOGIC;
  signal port_pwm_out_i_9_n_0 : STD_LOGIC;
  signal \pwm_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \pwm_cnt[9]_i_4_n_0\ : STD_LOGIC;
  signal pwm_cnt_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pwm_int : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \pwm_maxcnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_maxcnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_maxcnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_maxcnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_maxcnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_maxcnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_maxcnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_maxcnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \pwm_maxcnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \pwm_maxcnt[9]_i_4_n_0\ : STD_LOGIC;
  signal \pwm_maxcnt[9]_i_5_n_0\ : STD_LOGIC;
  signal \pwm_maxcnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \pwm_maxcnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \pwm_maxcnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \pwm_maxcnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \pwm_maxcnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \pwm_maxcnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \pwm_maxcnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \pwm_maxcnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \pwm_maxcnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \pwm_maxcnt_reg_n_0_[9]\ : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal resetn : STD_LOGIC;
  signal status_i : STD_LOGIC;
  signal vld : STD_LOGIC;
  signal vld_in_i : STD_LOGIC;
  signal vld_in_i_i_1_n_0 : STD_LOGIC;
  signal \NLW_eqOp_inferred__5/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \deb_cnt[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \deb_cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \deb_cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \deb_cnt[4]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \deb_cnt[5]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \deb_cnt[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ena_dly_cnt[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ena_dly_cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ena_dly_cnt[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ena_dly_cnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ena_dly_cnt[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ena_dly_cnt[7]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ena_dly_cnt[7]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ena_out_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of irq1_S2L_i_i_1 : label is "soft_lutpair7";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of port_phs_meta_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of port_phs_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of port_phs_reg : label is std.standard.true;
  attribute IOB : string;
  attribute IOB of port_phs_reg : label is "TRUE";
  attribute KEEP of port_phs_reg : label is "yes";
  attribute SOFT_HLUTNM of port_pwm_out_i_10 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of port_pwm_out_i_9 : label is "soft_lutpair15";
  attribute IOB of port_pwm_out_reg : label is "TRUE";
  attribute SOFT_HLUTNM of \pwm_cnt[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \pwm_cnt[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pwm_cnt[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pwm_cnt[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pwm_cnt[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pwm_cnt[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pwm_cnt[9]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pwm_maxcnt[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \pwm_maxcnt[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \pwm_maxcnt[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \pwm_maxcnt[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \pwm_maxcnt[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \pwm_maxcnt[9]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \pwm_maxcnt[9]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of vld_in_i_i_1 : label is "soft_lutpair7";
begin
\deb_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deb_cnt_reg_n_0_[0]\,
      O => plusOp(0)
    );
\deb_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \deb_cnt[4]_i_2_n_0\,
      I1 => \deb_cnt_reg_n_0_[0]\,
      I2 => \deb_cnt_reg_n_0_[1]\,
      O => p_1_in(1)
    );
\deb_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CC9"
    )
        port map (
      I0 => \deb_cnt[4]_i_2_n_0\,
      I1 => \deb_cnt_reg_n_0_[2]\,
      I2 => \deb_cnt_reg_n_0_[0]\,
      I3 => \deb_cnt_reg_n_0_[1]\,
      O => p_1_in(2)
    );
\deb_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFE8001"
    )
        port map (
      I0 => \deb_cnt[4]_i_2_n_0\,
      I1 => \deb_cnt_reg_n_0_[2]\,
      I2 => \deb_cnt_reg_n_0_[0]\,
      I3 => \deb_cnt_reg_n_0_[1]\,
      I4 => \deb_cnt_reg_n_0_[3]\,
      O => p_1_in(3)
    );
\deb_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCCCCCCCCCCCCC9"
    )
        port map (
      I0 => \deb_cnt[4]_i_2_n_0\,
      I1 => \deb_cnt_reg_n_0_[4]\,
      I2 => \deb_cnt_reg_n_0_[2]\,
      I3 => \deb_cnt_reg_n_0_[3]\,
      I4 => \deb_cnt_reg_n_0_[1]\,
      I5 => \deb_cnt_reg_n_0_[0]\,
      O => p_1_in(4)
    );
\deb_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFFFFFF0000"
    )
        port map (
      I0 => \deb_cnt_reg_n_0_[4]\,
      I1 => \deb_cnt[4]_i_3_n_0\,
      I2 => \deb_cnt_reg_n_0_[5]\,
      I3 => \deb_cnt_reg_n_0_[6]\,
      I4 => port_phs_meta,
      I5 => p_0_in7_in,
      O => \deb_cnt[4]_i_2_n_0\
    );
\deb_cnt[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \deb_cnt_reg_n_0_[0]\,
      I1 => \deb_cnt_reg_n_0_[1]\,
      I2 => \deb_cnt_reg_n_0_[3]\,
      I3 => \deb_cnt_reg_n_0_[2]\,
      O => \deb_cnt[4]_i_3_n_0\
    );
\deb_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909F09F9808E09F9"
    )
        port map (
      I0 => \deb_cnt_reg_n_0_[5]\,
      I1 => \deb_cnt[5]_i_2_n_0\,
      I2 => port_phs_meta,
      I3 => \deb_cnt[5]_i_3_n_0\,
      I4 => p_0_in7_in,
      I5 => \deb_cnt_reg_n_0_[6]\,
      O => p_1_in(5)
    );
\deb_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \deb_cnt_reg_n_0_[4]\,
      I1 => \deb_cnt_reg_n_0_[2]\,
      I2 => \deb_cnt_reg_n_0_[3]\,
      I3 => \deb_cnt_reg_n_0_[1]\,
      I4 => \deb_cnt_reg_n_0_[0]\,
      O => \deb_cnt[5]_i_2_n_0\
    );
\deb_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9555555555555555"
    )
        port map (
      I0 => \deb_cnt_reg_n_0_[5]\,
      I1 => \deb_cnt_reg_n_0_[0]\,
      I2 => \deb_cnt_reg_n_0_[1]\,
      I3 => \deb_cnt_reg_n_0_[3]\,
      I4 => \deb_cnt_reg_n_0_[2]\,
      I5 => \deb_cnt_reg_n_0_[4]\,
      O => \deb_cnt[5]_i_3_n_0\
    );
\deb_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F33737333333F33"
    )
        port map (
      I0 => \deb_cnt[6]_i_3_n_0\,
      I1 => resetn,
      I2 => \deb_cnt_reg_n_0_[6]\,
      I3 => \deb_cnt[6]_i_4_n_0\,
      I4 => port_phs_meta,
      I5 => p_0_in7_in,
      O => \deb_cnt[6]_i_1_n_0\
    );
\deb_cnt[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6015F906"
    )
        port map (
      I0 => p_0_in7_in,
      I1 => port_phs_meta,
      I2 => \deb_cnt[6]_i_3_n_0\,
      I3 => \deb_cnt_reg_n_0_[6]\,
      I4 => \deb_cnt[6]_i_4_n_0\,
      O => p_1_in(6)
    );
\deb_cnt[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \deb_cnt_reg_n_0_[0]\,
      I1 => \deb_cnt_reg_n_0_[1]\,
      I2 => \deb_cnt_reg_n_0_[3]\,
      I3 => \deb_cnt_reg_n_0_[2]\,
      I4 => \deb_cnt_reg_n_0_[4]\,
      I5 => \deb_cnt_reg_n_0_[5]\,
      O => \deb_cnt[6]_i_3_n_0\
    );
\deb_cnt[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \deb_cnt_reg_n_0_[5]\,
      I1 => \deb_cnt_reg_n_0_[0]\,
      I2 => \deb_cnt_reg_n_0_[1]\,
      I3 => \deb_cnt_reg_n_0_[3]\,
      I4 => \deb_cnt_reg_n_0_[2]\,
      I5 => \deb_cnt_reg_n_0_[4]\,
      O => \deb_cnt[6]_i_4_n_0\
    );
\deb_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAA2AAAAAAA"
    )
        port map (
      I0 => p_0_in7_in,
      I1 => \deb_cnt_reg_n_0_[5]\,
      I2 => \deb_cnt_reg_n_0_[4]\,
      I3 => \deb_cnt[7]_i_2_n_0\,
      I4 => \deb_cnt_reg_n_0_[6]\,
      I5 => port_phs_meta,
      O => p_1_in(7)
    );
\deb_cnt[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \deb_cnt_reg_n_0_[0]\,
      I1 => \deb_cnt_reg_n_0_[1]\,
      I2 => \deb_cnt_reg_n_0_[3]\,
      I3 => \deb_cnt_reg_n_0_[2]\,
      O => \deb_cnt[7]_i_2_n_0\
    );
\deb_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => plusOp(0),
      Q => \deb_cnt_reg_n_0_[0]\,
      R => \deb_cnt[6]_i_1_n_0\
    );
\deb_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_1_in(1),
      Q => \deb_cnt_reg_n_0_[1]\,
      R => \deb_cnt[6]_i_1_n_0\
    );
\deb_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_1_in(2),
      Q => \deb_cnt_reg_n_0_[2]\,
      R => \deb_cnt[6]_i_1_n_0\
    );
\deb_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_1_in(3),
      Q => \deb_cnt_reg_n_0_[3]\,
      R => \deb_cnt[6]_i_1_n_0\
    );
\deb_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_1_in(4),
      Q => \deb_cnt_reg_n_0_[4]\,
      R => \deb_cnt[6]_i_1_n_0\
    );
\deb_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_1_in(5),
      Q => \deb_cnt_reg_n_0_[5]\,
      R => \deb_cnt[6]_i_1_n_0\
    );
\deb_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_1_in(6),
      Q => \deb_cnt_reg_n_0_[6]\,
      R => \deb_cnt[6]_i_1_n_0\
    );
\deb_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_1_in(7),
      Q => p_0_in7_in,
      R => reset
    );
\ena_dly_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ena_dly_cnt_reg(0),
      O => \plusOp__0\(0)
    );
\ena_dly_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ena_dly_cnt_reg(0),
      I1 => ena_dly_cnt_reg(1),
      O => \plusOp__0\(1)
    );
\ena_dly_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => ena_dly_cnt_reg(2),
      I1 => ena_dly_cnt_reg(0),
      I2 => ena_dly_cnt_reg(1),
      O => \plusOp__0\(2)
    );
\ena_dly_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => ena_dly_cnt_reg(3),
      I1 => ena_dly_cnt_reg(1),
      I2 => ena_dly_cnt_reg(0),
      I3 => ena_dly_cnt_reg(2),
      O => \plusOp__0\(3)
    );
\ena_dly_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => ena_dly_cnt_reg(2),
      I1 => ena_dly_cnt_reg(0),
      I2 => ena_dly_cnt_reg(1),
      I3 => ena_dly_cnt_reg(3),
      I4 => ena_dly_cnt_reg(4),
      O => \plusOp__0\(4)
    );
\ena_dly_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => ena_dly_cnt_reg(5),
      I1 => ena_dly_cnt_reg(2),
      I2 => ena_dly_cnt_reg(0),
      I3 => ena_dly_cnt_reg(1),
      I4 => ena_dly_cnt_reg(3),
      I5 => ena_dly_cnt_reg(4),
      O => \plusOp__0\(5)
    );
\ena_dly_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => ena_dly_cnt_reg(6),
      I1 => \ena_dly_cnt[7]_i_4_n_0\,
      I2 => ena_dly_cnt_reg(5),
      O => \plusOp__0\(6)
    );
\ena_dly_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000008FFFFFFFF"
    )
        port map (
      I0 => ena_dly_cnt_reg(4),
      I1 => ena_dly_cnt_reg(1),
      I2 => ena_dly_cnt_reg(5),
      I3 => ena_dly_cnt_reg(3),
      I4 => ena_out_i_2_n_0,
      I5 => resetn,
      O => \ena_dly_cnt[7]_i_1_n_0\
    );
\ena_dly_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ena_out_i_2_n_0,
      I1 => ena_dly_cnt_reg(1),
      I2 => ena,
      I3 => ena_dly_cnt_reg(4),
      I4 => ena_dly_cnt_reg(3),
      I5 => ena_dly_cnt_reg(5),
      O => \ena_dly_cnt[7]_i_2_n_0\
    );
\ena_dly_cnt[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => ena_dly_cnt_reg(7),
      I1 => ena_dly_cnt_reg(5),
      I2 => \ena_dly_cnt[7]_i_4_n_0\,
      I3 => ena_dly_cnt_reg(6),
      O => \plusOp__0\(7)
    );
\ena_dly_cnt[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => ena_dly_cnt_reg(4),
      I1 => ena_dly_cnt_reg(3),
      I2 => ena_dly_cnt_reg(1),
      I3 => ena_dly_cnt_reg(0),
      I4 => ena_dly_cnt_reg(2),
      O => \ena_dly_cnt[7]_i_4_n_0\
    );
\ena_dly_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \ena_dly_cnt[7]_i_2_n_0\,
      D => \plusOp__0\(0),
      Q => ena_dly_cnt_reg(0),
      R => \ena_dly_cnt[7]_i_1_n_0\
    );
\ena_dly_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \ena_dly_cnt[7]_i_2_n_0\,
      D => \plusOp__0\(1),
      Q => ena_dly_cnt_reg(1),
      R => \ena_dly_cnt[7]_i_1_n_0\
    );
\ena_dly_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \ena_dly_cnt[7]_i_2_n_0\,
      D => \plusOp__0\(2),
      Q => ena_dly_cnt_reg(2),
      R => \ena_dly_cnt[7]_i_1_n_0\
    );
\ena_dly_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \ena_dly_cnt[7]_i_2_n_0\,
      D => \plusOp__0\(3),
      Q => ena_dly_cnt_reg(3),
      R => \ena_dly_cnt[7]_i_1_n_0\
    );
\ena_dly_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \ena_dly_cnt[7]_i_2_n_0\,
      D => \plusOp__0\(4),
      Q => ena_dly_cnt_reg(4),
      R => \ena_dly_cnt[7]_i_1_n_0\
    );
\ena_dly_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \ena_dly_cnt[7]_i_2_n_0\,
      D => \plusOp__0\(5),
      Q => ena_dly_cnt_reg(5),
      R => \ena_dly_cnt[7]_i_1_n_0\
    );
\ena_dly_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \ena_dly_cnt[7]_i_2_n_0\,
      D => \plusOp__0\(6),
      Q => ena_dly_cnt_reg(6),
      R => \ena_dly_cnt[7]_i_1_n_0\
    );
\ena_dly_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \ena_dly_cnt[7]_i_2_n_0\,
      D => \plusOp__0\(7),
      Q => ena_dly_cnt_reg(7),
      R => \ena_dly_cnt[7]_i_1_n_0\
    );
ena_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => ena_dly_cnt_reg(4),
      I1 => ena_dly_cnt_reg(1),
      I2 => ena_dly_cnt_reg(5),
      I3 => ena_dly_cnt_reg(3),
      I4 => ena_out_i_2_n_0,
      I5 => resetn,
      O => ena_out_i_1_n_0
    );
ena_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ena_dly_cnt_reg(7),
      I1 => ena_dly_cnt_reg(0),
      I2 => ena_dly_cnt_reg(6),
      I3 => ena_dly_cnt_reg(2),
      O => ena_out_i_2_n_0
    );
ena_out_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ena_out_i_1_n_0,
      Q => ena_out,
      R => '0'
    );
ena_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ena_in,
      Q => ena,
      R => reset
    );
\eqOp_inferred__5/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp8_in,
      CO(2) => \eqOp_inferred__5/i__carry_n_1\,
      CO(1) => \eqOp_inferred__5/i__carry_n_2\,
      CO(0) => \eqOp_inferred__5/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__5/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pwm_maxcnt_reg_n_0_[9]\,
      I1 => pwm_cnt_reg(9),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \pwm_maxcnt_reg_n_0_[7]\,
      I1 => pwm_cnt_reg(7),
      I2 => pwm_cnt_reg(8),
      I3 => \pwm_maxcnt_reg_n_0_[8]\,
      I4 => pwm_cnt_reg(6),
      I5 => \pwm_maxcnt_reg_n_0_[6]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \pwm_maxcnt_reg_n_0_[5]\,
      I1 => pwm_cnt_reg(5),
      I2 => pwm_cnt_reg(3),
      I3 => \pwm_maxcnt_reg_n_0_[3]\,
      I4 => pwm_cnt_reg(4),
      I5 => \pwm_maxcnt_reg_n_0_[4]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \pwm_maxcnt_reg_n_0_[2]\,
      I1 => pwm_cnt_reg(2),
      I2 => pwm_cnt_reg(0),
      I3 => \pwm_maxcnt_reg_n_0_[0]\,
      I4 => pwm_cnt_reg(1),
      I5 => \pwm_maxcnt_reg_n_0_[1]\,
      O => \i__carry_i_4_n_0\
    );
irq0_L2S_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7530"
    )
        port map (
      I0 => irq0_clr_i,
      I1 => p_0_in7_in,
      I2 => status_i,
      I3 => irq0_L2S_i,
      O => irq0_L2S_i_i_1_n_0
    );
irq0_L2S_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => irq0_L2S_i_i_1_n_0,
      Q => irq0_L2S_i,
      R => reset
    );
irq0_L2S_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => irq0_L2S_i,
      Q => irq0_L2S,
      R => reset
    );
irq0_clr_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => irq0_clr,
      Q => irq0_clr_i,
      R => reset
    );
irq1_S2L_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7530"
    )
        port map (
      I0 => irq1_clr_i,
      I1 => status_i,
      I2 => p_0_in7_in,
      I3 => irq1_S2L_i,
      O => irq1_S2L_i_i_1_n_0
    );
irq1_S2L_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => irq1_S2L_i_i_1_n_0,
      Q => irq1_S2L_i,
      R => reset
    );
irq1_S2L_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => irq1_S2L_i,
      Q => irq1_S2L,
      R => reset
    );
irq1_clr_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => irq1_clr,
      Q => irq1_clr_i,
      R => reset
    );
port_phs_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => port_phs,
      Q => port_phs_meta,
      R => reset
    );
port_phs_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => port_phs_in,
      Q => port_phs,
      R => reset
    );
port_pwm_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => resetn,
      I1 => port_pwm_out_i_4_n_0,
      I2 => port_pwm_out_i_5_n_0,
      I3 => pwm_int(2),
      I4 => pwm_int(1),
      I5 => pwm_int(0),
      O => port_pwm_out6_out
    );
port_pwm_out_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => pwm_cnt_reg(2),
      I1 => pwm_cnt_reg(1),
      I2 => pwm_cnt_reg(0),
      O => port_pwm_out_i_10_n_0
    );
port_pwm_out_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => pwm_cnt_reg(4),
      I1 => pwm_cnt_reg(3),
      I2 => pwm_cnt_reg(9),
      I3 => pwm_cnt_reg(6),
      O => port_pwm_out_i_11_n_0
    );
port_pwm_out_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
        port map (
      I0 => \pwm_maxcnt_reg_n_0_[7]\,
      I1 => \pwm_maxcnt_reg_n_0_[9]\,
      I2 => \pwm_maxcnt_reg_n_0_[3]\,
      I3 => \pwm_maxcnt_reg_n_0_[6]\,
      I4 => \pwm_maxcnt_reg_n_0_[8]\,
      I5 => \pwm_maxcnt_reg_n_0_[1]\,
      O => port_pwm_out_i_12_n_0
    );
port_pwm_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => resetn,
      I1 => port_pwm_out_i_6_n_0,
      I2 => port_pwm_out_i_4_n_0,
      I3 => eqOp8_in,
      O => port_pwm_out3_out
    );
port_pwm_out_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FA"
    )
        port map (
      I0 => port_pwm_out_i_7_n_0,
      I1 => port_pwm_out_i_6_n_0,
      I2 => port_pwm_out_i_4_n_0,
      I3 => eqOp8_in,
      O => port_pwm_out_i_3_n_0
    );
port_pwm_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => pwm_cnt_reg(6),
      I1 => pwm_cnt_reg(9),
      I2 => pwm_cnt_reg(5),
      I3 => pwm_cnt_reg(7),
      I4 => port_pwm_out_i_8_n_0,
      O => port_pwm_out_i_4_n_0
    );
port_pwm_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => pwm_int(7),
      I1 => pwm_int(8),
      I2 => pwm_int(6),
      I3 => pwm_int(5),
      I4 => pwm_int(9),
      I5 => port_pwm_out_i_9_n_0,
      O => port_pwm_out_i_5_n_0
    );
port_pwm_out_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => port_pwm_out_i_10_n_0,
      I1 => port_pwm_out_i_11_n_0,
      I2 => pwm_cnt_reg(8),
      I3 => pwm_cnt_reg(5),
      I4 => pwm_cnt_reg(7),
      O => port_pwm_out_i_6_n_0
    );
port_pwm_out_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \pwm_maxcnt_reg_n_0_[2]\,
      I1 => \pwm_maxcnt_reg_n_0_[5]\,
      I2 => \pwm_maxcnt_reg_n_0_[0]\,
      I3 => \pwm_maxcnt_reg_n_0_[4]\,
      I4 => port_pwm_out_i_12_n_0,
      O => port_pwm_out_i_7_n_0
    );
port_pwm_out_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pwm_cnt_reg(1),
      I1 => pwm_cnt_reg(0),
      I2 => pwm_cnt_reg(2),
      I3 => pwm_cnt_reg(8),
      I4 => pwm_cnt_reg(3),
      I5 => pwm_cnt_reg(4),
      O => port_pwm_out_i_8_n_0
    );
port_pwm_out_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_int(3),
      I1 => pwm_int(4),
      O => port_pwm_out_i_9_n_0
    );
port_pwm_out_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => port_pwm_out3_out,
      D => port_pwm_out_i_3_n_0,
      Q => port_pwm_out,
      R => port_pwm_out6_out
    );
\pwm_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      O => \plusOp__1\(0)
    );
\pwm_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      I1 => pwm_cnt_reg(1),
      O => \plusOp__1\(1)
    );
\pwm_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => pwm_cnt_reg(2),
      I1 => pwm_cnt_reg(1),
      I2 => pwm_cnt_reg(0),
      O => \pwm_cnt[2]_i_1_n_0\
    );
\pwm_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => pwm_cnt_reg(3),
      I1 => pwm_cnt_reg(0),
      I2 => pwm_cnt_reg(1),
      I3 => pwm_cnt_reg(2),
      O => \plusOp__1\(3)
    );
\pwm_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => pwm_cnt_reg(4),
      I1 => pwm_cnt_reg(3),
      I2 => pwm_cnt_reg(0),
      I3 => pwm_cnt_reg(1),
      I4 => pwm_cnt_reg(2),
      O => \plusOp__1\(4)
    );
\pwm_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => pwm_cnt_reg(5),
      I1 => pwm_cnt_reg(4),
      I2 => pwm_cnt_reg(3),
      I3 => pwm_cnt_reg(0),
      I4 => pwm_cnt_reg(1),
      I5 => pwm_cnt_reg(2),
      O => \pwm_cnt[5]_i_1_n_0\
    );
\pwm_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => pwm_cnt_reg(6),
      I1 => \pwm_cnt[9]_i_4_n_0\,
      I2 => pwm_cnt_reg(5),
      O => \plusOp__1\(6)
    );
\pwm_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => pwm_cnt_reg(7),
      I1 => pwm_cnt_reg(5),
      I2 => \pwm_cnt[9]_i_4_n_0\,
      I3 => pwm_cnt_reg(6),
      O => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => pwm_cnt_reg(8),
      I1 => pwm_cnt_reg(6),
      I2 => \pwm_cnt[9]_i_4_n_0\,
      I3 => pwm_cnt_reg(5),
      I4 => pwm_cnt_reg(7),
      O => \plusOp__1\(8)
    );
\pwm_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => port_pwm_out_i_6_n_0,
      I1 => resetn,
      O => \pwm_cnt[9]_i_1_n_0\
    );
\pwm_cnt[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ena,
      I1 => port_pwm_out_i_4_n_0,
      O => \pwm_cnt[9]_i_2_n_0\
    );
\pwm_cnt[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => pwm_cnt_reg(9),
      I1 => pwm_cnt_reg(7),
      I2 => pwm_cnt_reg(5),
      I3 => \pwm_cnt[9]_i_4_n_0\,
      I4 => pwm_cnt_reg(6),
      I5 => pwm_cnt_reg(8),
      O => \plusOp__1\(9)
    );
\pwm_cnt[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => pwm_cnt_reg(2),
      I1 => pwm_cnt_reg(1),
      I2 => pwm_cnt_reg(0),
      I3 => pwm_cnt_reg(3),
      I4 => pwm_cnt_reg(4),
      O => \pwm_cnt[9]_i_4_n_0\
    );
\pwm_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(0),
      Q => pwm_cnt_reg(0),
      R => \pwm_cnt[9]_i_1_n_0\
    );
\pwm_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(1),
      Q => pwm_cnt_reg(1),
      R => \pwm_cnt[9]_i_1_n_0\
    );
\pwm_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_cnt[9]_i_2_n_0\,
      D => \pwm_cnt[2]_i_1_n_0\,
      Q => pwm_cnt_reg(2),
      R => \pwm_cnt[9]_i_1_n_0\
    );
\pwm_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(3),
      Q => pwm_cnt_reg(3),
      R => \pwm_cnt[9]_i_1_n_0\
    );
\pwm_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(4),
      Q => pwm_cnt_reg(4),
      R => \pwm_cnt[9]_i_1_n_0\
    );
\pwm_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_cnt[9]_i_2_n_0\,
      D => \pwm_cnt[5]_i_1_n_0\,
      Q => pwm_cnt_reg(5),
      R => \pwm_cnt[9]_i_1_n_0\
    );
\pwm_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(6),
      Q => pwm_cnt_reg(6),
      R => \pwm_cnt[9]_i_1_n_0\
    );
\pwm_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_cnt[9]_i_2_n_0\,
      D => \pwm_cnt[7]_i_1_n_0\,
      Q => pwm_cnt_reg(7),
      R => \pwm_cnt[9]_i_1_n_0\
    );
\pwm_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(8),
      Q => pwm_cnt_reg(8),
      R => \pwm_cnt[9]_i_1_n_0\
    );
\pwm_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_cnt[9]_i_2_n_0\,
      D => \plusOp__1\(9),
      Q => pwm_cnt_reg(9),
      R => \pwm_cnt[9]_i_1_n_0\
    );
\pwm_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld,
      D => pwm_val(0),
      Q => pwm_int(0),
      R => reset
    );
\pwm_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld,
      D => pwm_val(1),
      Q => pwm_int(1),
      R => reset
    );
\pwm_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld,
      D => pwm_val(2),
      Q => pwm_int(2),
      R => reset
    );
\pwm_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld,
      D => pwm_val(3),
      Q => pwm_int(3),
      R => reset
    );
\pwm_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld,
      D => pwm_val(4),
      Q => pwm_int(4),
      R => reset
    );
\pwm_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld,
      D => pwm_val(5),
      Q => pwm_int(5),
      R => reset
    );
\pwm_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld,
      D => pwm_val(6),
      Q => pwm_int(6),
      R => reset
    );
\pwm_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld,
      D => pwm_val(7),
      Q => pwm_int(7),
      R => reset
    );
\pwm_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld,
      D => pwm_val(8),
      Q => pwm_int(8),
      R => reset
    );
\pwm_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => vld,
      D => pwm_val(9),
      Q => pwm_int(9),
      R => reset
    );
\pwm_maxcnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_int(3),
      I1 => \pwm_maxcnt[9]_i_3_n_0\,
      O => \pwm_maxcnt[3]_i_1_n_0\
    );
\pwm_maxcnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \pwm_maxcnt[9]_i_3_n_0\,
      I1 => resetn,
      O => \pwm_maxcnt[4]_i_1_n_0\
    );
\pwm_maxcnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_int(5),
      I1 => \pwm_maxcnt[9]_i_3_n_0\,
      O => \pwm_maxcnt[5]_i_1_n_0\
    );
\pwm_maxcnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_int(6),
      I1 => \pwm_maxcnt[9]_i_3_n_0\,
      O => \pwm_maxcnt[6]_i_1_n_0\
    );
\pwm_maxcnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_int(7),
      I1 => \pwm_maxcnt[9]_i_3_n_0\,
      O => \pwm_maxcnt[7]_i_1_n_0\
    );
\pwm_maxcnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_int(8),
      I1 => \pwm_maxcnt[9]_i_3_n_0\,
      O => \pwm_maxcnt[8]_i_1_n_0\
    );
\pwm_maxcnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ena,
      I1 => \pwm_maxcnt[9]_i_3_n_0\,
      O => \pwm_maxcnt[9]_i_1_n_0\
    );
\pwm_maxcnt[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => pwm_int(9),
      I1 => \pwm_maxcnt[9]_i_3_n_0\,
      O => \pwm_maxcnt[9]_i_2_n_0\
    );
\pwm_maxcnt[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EC000000"
    )
        port map (
      I0 => \pwm_maxcnt[9]_i_4_n_0\,
      I1 => pwm_int(4),
      I2 => pwm_int(3),
      I3 => pwm_int(8),
      I4 => pwm_int(9),
      I5 => \pwm_maxcnt[9]_i_5_n_0\,
      O => \pwm_maxcnt[9]_i_3_n_0\
    );
\pwm_maxcnt[9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => pwm_int(2),
      I1 => pwm_int(1),
      I2 => pwm_int(0),
      O => \pwm_maxcnt[9]_i_4_n_0\
    );
\pwm_maxcnt[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pwm_int(7),
      I1 => ena,
      I2 => pwm_int(6),
      I3 => pwm_int(5),
      O => \pwm_maxcnt[9]_i_5_n_0\
    );
\pwm_maxcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => ena,
      D => pwm_int(0),
      Q => \pwm_maxcnt_reg_n_0_[0]\,
      R => \pwm_maxcnt[4]_i_1_n_0\
    );
\pwm_maxcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => ena,
      D => pwm_int(1),
      Q => \pwm_maxcnt_reg_n_0_[1]\,
      R => \pwm_maxcnt[4]_i_1_n_0\
    );
\pwm_maxcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => ena,
      D => pwm_int(2),
      Q => \pwm_maxcnt_reg_n_0_[2]\,
      R => \pwm_maxcnt[4]_i_1_n_0\
    );
\pwm_maxcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_maxcnt[9]_i_1_n_0\,
      D => \pwm_maxcnt[3]_i_1_n_0\,
      Q => \pwm_maxcnt_reg_n_0_[3]\,
      R => reset
    );
\pwm_maxcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => ena,
      D => pwm_int(4),
      Q => \pwm_maxcnt_reg_n_0_[4]\,
      R => \pwm_maxcnt[4]_i_1_n_0\
    );
\pwm_maxcnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_maxcnt[9]_i_1_n_0\,
      D => \pwm_maxcnt[5]_i_1_n_0\,
      Q => \pwm_maxcnt_reg_n_0_[5]\,
      R => reset
    );
\pwm_maxcnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_maxcnt[9]_i_1_n_0\,
      D => \pwm_maxcnt[6]_i_1_n_0\,
      Q => \pwm_maxcnt_reg_n_0_[6]\,
      R => reset
    );
\pwm_maxcnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_maxcnt[9]_i_1_n_0\,
      D => \pwm_maxcnt[7]_i_1_n_0\,
      Q => \pwm_maxcnt_reg_n_0_[7]\,
      R => reset
    );
\pwm_maxcnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_maxcnt[9]_i_1_n_0\,
      D => \pwm_maxcnt[8]_i_1_n_0\,
      Q => \pwm_maxcnt_reg_n_0_[8]\,
      R => reset
    );
\pwm_maxcnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \pwm_maxcnt[9]_i_1_n_0\,
      D => \pwm_maxcnt[9]_i_2_n_0\,
      Q => \pwm_maxcnt_reg_n_0_[9]\,
      R => reset
    );
resetn_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => resetn,
      R => '0'
    );
status_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => reset
    );
status_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => p_0_in7_in,
      Q => status_i,
      R => reset
    );
status_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => status_i,
      Q => status,
      R => reset
    );
vld_in_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in7_in,
      I1 => status_i,
      O => vld_in_i_i_1_n_0
    );
vld_in_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => vld_in_i_i_1_n_0,
      Q => vld_in_i,
      R => reset
    );
vld_in_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => vld_in_i,
      Q => vld_in,
      R => reset
    );
vld_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => vld_out,
      Q => vld,
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity S7_PHS_ctrl_23_0_PHS_ctrl is
  port (
    status : out STD_LOGIC;
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    ena_out : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    port_phs_in : in STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end S7_PHS_ctrl_23_0_PHS_ctrl;

architecture STRUCTURE of S7_PHS_ctrl_23_0_PHS_ctrl is
begin
\R.PHS_ctrl\: entity work.S7_PHS_ctrl_23_0_PHS_ctrl_real
     port map (
      aclk => aclk,
      aresetn => aresetn,
      ena_in => ena_in,
      ena_out => ena_out,
      irq0_L2S => irq0_L2S,
      irq0_clr => irq0_clr,
      irq1_S2L => irq1_S2L,
      irq1_clr => irq1_clr,
      port_phs_in => port_phs_in,
      port_pwm_out => port_pwm_out,
      pwm_val(9 downto 0) => pwm_val(9 downto 0),
      status => status,
      vld_in => vld_in,
      vld_out => vld_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity S7_PHS_ctrl_23_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_in : in STD_LOGIC;
    ena_out : out STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 9 downto 0 );
    status : out STD_LOGIC;
    irq_mask : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq0_L2S : out STD_LOGIC;
    irq1_S2L : out STD_LOGIC;
    irq0_clr : in STD_LOGIC;
    irq1_clr : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_out : out STD_LOGIC;
    port_phs_in : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of S7_PHS_ctrl_23_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of S7_PHS_ctrl_23_0 : entity is "S7_PHS_ctrl_5_0,PHS_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of S7_PHS_ctrl_23_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of S7_PHS_ctrl_23_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of S7_PHS_ctrl_23_0 : entity is "PHS_ctrl,Vivado 2019.1.3";
end S7_PHS_ctrl_23_0;

architecture STRUCTURE of S7_PHS_ctrl_23_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF PHS_regs, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of irq0_L2S : signal is "Mindway:user:PHS_reg_if:1.0 PHS_regs irq0_L2S";
  attribute x_interface_info of irq0_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS_regs irq0_L2S_clr";
  attribute x_interface_info of irq1_S2L : signal is "Mindway:user:PHS_reg_if:1.0 PHS_regs irq1_S2L";
  attribute x_interface_info of irq1_clr : signal is "Mindway:user:PHS_reg_if:1.0 PHS_regs irq1_S2L_clr";
  attribute x_interface_info of port_phs_in : signal is "Mindway:user:PHS_IOs:1.0 PHS_ios phs_in";
  attribute x_interface_info of port_pwm_out : signal is "Mindway:user:PHS_IOs:1.0 PHS_ios pwm_out";
  attribute x_interface_info of status : signal is "Mindway:user:PHS_reg_if:1.0 PHS_regs status";
  attribute x_interface_info of vld_in : signal is "Mindway:user:PHS_reg_if:1.0 PHS_regs valid_in";
  attribute x_interface_info of vld_out : signal is "Mindway:user:PHS_reg_if:1.0 PHS_regs vld_out";
  attribute x_interface_info of irq_mask : signal is "Mindway:user:PHS_reg_if:1.0 PHS_regs irq_mask";
  attribute x_interface_info of pwm_val : signal is "Mindway:user:PHS_reg_if:1.0 PHS_regs pwm_val";
begin
U0: entity work.S7_PHS_ctrl_23_0_PHS_ctrl
     port map (
      aclk => aclk,
      aresetn => aresetn,
      ena_in => ena_in,
      ena_out => ena_out,
      irq0_L2S => irq0_L2S,
      irq0_clr => irq0_clr,
      irq1_S2L => irq1_S2L,
      irq1_clr => irq1_clr,
      port_phs_in => port_phs_in,
      port_pwm_out => port_pwm_out,
      pwm_val(9 downto 0) => pwm_val(9 downto 0),
      status => status,
      vld_in => vld_in,
      vld_out => vld_out
    );
end STRUCTURE;
