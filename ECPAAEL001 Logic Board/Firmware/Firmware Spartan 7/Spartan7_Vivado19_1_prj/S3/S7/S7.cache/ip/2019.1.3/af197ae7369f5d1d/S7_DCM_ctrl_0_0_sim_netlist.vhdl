-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Wed Jul 29 04:12:48 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_DCM_ctrl_0_0_sim_netlist.vhdl
-- Design      : S7_DCM_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_ctrl_real is
  port (
    rst_200_loc : out STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_in1_reg_0 : out STD_LOGIC;
    port_in2_reg_0 : out STD_LOGIC;
    port_pwm_reg_0 : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aresetn : in STD_LOGIC;
    clk200 : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    brake : in STD_LOGIC;
    run : in STD_LOGIC;
    aclk : in STD_LOGIC;
    dir : in STD_LOGIC;
    pwm_frq : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pwm_val : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_ctrl_real;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_ctrl_real is
  signal aresetn_loc : STD_LOGIC;
  signal aresetn_loc_200 : STD_LOGIC;
  signal brake_d1 : STD_LOGIC;
  signal brake_d2 : STD_LOGIC;
  signal brake_loc : STD_LOGIC;
  signal brake_loc_i_1_n_0 : STD_LOGIC;
  signal dir_d1 : STD_LOGIC;
  signal dir_d2 : STD_LOGIC;
  signal dir_loc : STD_LOGIC;
  signal ena_cnt : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \ena_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \ena_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \ena_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \ena_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \ena_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \ena_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \ena_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \ena_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal ena_i_1_n_0 : STD_LOGIC;
  signal ena_i_2_n_0 : STD_LOGIC;
  signal ena_i_3_n_0 : STD_LOGIC;
  signal ena_i_4_n_0 : STD_LOGIC;
  signal ena_reg_n_0 : STD_LOGIC;
  signal eqOp2_in : STD_LOGIC;
  signal \eqOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal gtOp_carry_i_1_n_0 : STD_LOGIC;
  signal gtOp_carry_i_2_n_0 : STD_LOGIC;
  signal gtOp_carry_i_3_n_0 : STD_LOGIC;
  signal gtOp_carry_i_4_n_0 : STD_LOGIC;
  signal gtOp_carry_i_5_n_0 : STD_LOGIC;
  signal gtOp_carry_i_6_n_0 : STD_LOGIC;
  signal gtOp_carry_i_7_n_0 : STD_LOGIC;
  signal gtOp_carry_i_8_n_0 : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \neqOp__0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal port_in1_i_1_n_0 : STD_LOGIC;
  signal port_in2_i_1_n_0 : STD_LOGIC;
  signal port_pwm_i_1_n_0 : STD_LOGIC;
  signal port_pwm_i_2_n_0 : STD_LOGIC;
  signal port_pwm_i_3_n_0 : STD_LOGIC;
  signal \pwm_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \pwm_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \pwm_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal pwm_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pwm_ena : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal pwm_ena0 : STD_LOGIC;
  signal pwm_ena_loc : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \pwm_ena_loc[0]_i_2_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[0]_i_3_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[1]_i_2_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[1]_i_3_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[2]_i_2_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[2]_i_3_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[3]_i_2_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[3]_i_3_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[4]_i_2_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[4]_i_3_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[5]_i_2_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[5]_i_3_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[6]_i_2_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[6]_i_3_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[7]_i_2_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[7]_i_3_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[8]_i_2_n_0\ : STD_LOGIC;
  signal \pwm_ena_loc[8]_i_3_n_0\ : STD_LOGIC;
  signal pwm_ena_loc_0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal pwm_frq_loc : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal pwm_val_loc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reset : STD_LOGIC;
  signal reset_200_i_1_n_0 : STD_LOGIC;
  signal reset_i_1_n_0 : STD_LOGIC;
  signal \^rst_200_loc\ : STD_LOGIC;
  signal run_d1 : STD_LOGIC;
  signal run_d2 : STD_LOGIC;
  signal run_fine_i_1_n_0 : STD_LOGIC;
  signal run_fine_i_2_n_0 : STD_LOGIC;
  signal run_fine_reg_n_0 : STD_LOGIC;
  signal run_loc : STD_LOGIC;
  signal run_loc_i_1_n_0 : STD_LOGIC;
  signal run_on : STD_LOGIC;
  signal run_on0 : STD_LOGIC;
  signal \status_loc[0]_i_1_n_0\ : STD_LOGIC;
  signal status_loc_d1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal status_loc_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \status_loc_reg_n_0_[0]\ : STD_LOGIC;
  signal \status_loc_reg_n_0_[1]\ : STD_LOGIC;
  signal vld_out_loc : STD_LOGIC;
  signal \NLW_eqOp_inferred__1/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_eqOp_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ena_cnt[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ena_cnt[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ena_cnt[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ena_cnt[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ena_cnt[8]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ena_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ena_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of port_in1_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of port_in2_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pwm_cnt[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pwm_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pwm_cnt[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pwm_cnt[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pwm_cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pwm_cnt[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pwm_cnt[7]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pwm_cnt[7]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pwm_cnt[7]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of run_loc_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of run_on_i_1 : label is "soft_lutpair9";
begin
  rst_200_loc <= \^rst_200_loc\;
aresetn_loc_200_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => aresetn,
      Q => aresetn_loc_200,
      R => '0'
    );
aresetn_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => aresetn_loc,
      R => '0'
    );
brake_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => vld_out_loc,
      D => brake,
      Q => brake_d1,
      R => \^rst_200_loc\
    );
brake_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => brake_d1,
      Q => brake_d2,
      R => \^rst_200_loc\
    );
brake_loc_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => brake_d1,
      I1 => brake_d2,
      I2 => brake_loc,
      O => brake_loc_i_1_n_0
    );
brake_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => brake_loc_i_1_n_0,
      Q => brake_loc,
      R => \^rst_200_loc\
    );
dir_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => vld_out_loc,
      D => dir,
      Q => dir_d1,
      R => \^rst_200_loc\
    );
dir_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => dir_d1,
      Q => dir_d2,
      R => \^rst_200_loc\
    );
dir_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => dir_d2,
      Q => dir_loc,
      R => \^rst_200_loc\
    );
\ena_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \ena_cnt_reg_n_0_[0]\,
      I1 => eqOp2_in,
      I2 => ena_i_2_n_0,
      I3 => \^rst_200_loc\,
      O => \ena_cnt[0]_i_1_n_0\
    );
\ena_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444747774777444"
    )
        port map (
      I0 => run_on,
      I1 => ena_i_2_n_0,
      I2 => ena_i_3_n_0,
      I3 => eqOp2_in,
      I4 => \ena_cnt_reg_n_0_[0]\,
      I5 => \ena_cnt_reg_n_0_[1]\,
      O => ena_cnt(1)
    );
\ena_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7477744474447477"
    )
        port map (
      I0 => run_on,
      I1 => ena_i_2_n_0,
      I2 => ena_i_3_n_0,
      I3 => eqOp2_in,
      I4 => \ena_cnt_reg_n_0_[2]\,
      I5 => \ena_cnt[2]_i_2_n_0\,
      O => ena_cnt(2)
    );
\ena_cnt[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \ena_cnt_reg_n_0_[0]\,
      I1 => \ena_cnt_reg_n_0_[1]\,
      O => \ena_cnt[2]_i_2_n_0\
    );
\ena_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444747774777444"
    )
        port map (
      I0 => run_on,
      I1 => ena_i_2_n_0,
      I2 => ena_i_3_n_0,
      I3 => eqOp2_in,
      I4 => \ena_cnt_reg_n_0_[3]\,
      I5 => \ena_cnt[3]_i_2_n_0\,
      O => ena_cnt(3)
    );
\ena_cnt[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \ena_cnt_reg_n_0_[2]\,
      I1 => \ena_cnt_reg_n_0_[1]\,
      I2 => \ena_cnt_reg_n_0_[0]\,
      O => \ena_cnt[3]_i_2_n_0\
    );
\ena_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74777444"
    )
        port map (
      I0 => run_on,
      I1 => ena_i_2_n_0,
      I2 => ena_i_3_n_0,
      I3 => eqOp2_in,
      I4 => \ena_cnt[4]_i_2_n_0\,
      O => ena_cnt(4)
    );
\ena_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \ena_cnt_reg_n_0_[4]\,
      I1 => \ena_cnt_reg_n_0_[2]\,
      I2 => \ena_cnt_reg_n_0_[1]\,
      I3 => \ena_cnt_reg_n_0_[0]\,
      I4 => \ena_cnt_reg_n_0_[3]\,
      O => \ena_cnt[4]_i_2_n_0\
    );
\ena_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444747774777444"
    )
        port map (
      I0 => run_on,
      I1 => ena_i_2_n_0,
      I2 => ena_i_3_n_0,
      I3 => eqOp2_in,
      I4 => \ena_cnt_reg_n_0_[5]\,
      I5 => \ena_cnt[5]_i_2_n_0\,
      O => ena_cnt(5)
    );
\ena_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \ena_cnt_reg_n_0_[0]\,
      I1 => \ena_cnt_reg_n_0_[1]\,
      I2 => \ena_cnt_reg_n_0_[2]\,
      I3 => \ena_cnt_reg_n_0_[4]\,
      I4 => \ena_cnt_reg_n_0_[3]\,
      O => \ena_cnt[5]_i_2_n_0\
    );
\ena_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444747774777444"
    )
        port map (
      I0 => run_on,
      I1 => ena_i_2_n_0,
      I2 => ena_i_3_n_0,
      I3 => eqOp2_in,
      I4 => \ena_cnt_reg_n_0_[6]\,
      I5 => \ena_cnt[6]_i_2_n_0\,
      O => ena_cnt(6)
    );
\ena_cnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \ena_cnt_reg_n_0_[3]\,
      I1 => \ena_cnt_reg_n_0_[4]\,
      I2 => \ena_cnt_reg_n_0_[2]\,
      I3 => \ena_cnt_reg_n_0_[1]\,
      I4 => \ena_cnt_reg_n_0_[0]\,
      I5 => \ena_cnt_reg_n_0_[5]\,
      O => \ena_cnt[6]_i_2_n_0\
    );
\ena_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444747774777444"
    )
        port map (
      I0 => run_on,
      I1 => ena_i_2_n_0,
      I2 => ena_i_3_n_0,
      I3 => eqOp2_in,
      I4 => \ena_cnt_reg_n_0_[7]\,
      I5 => \ena_cnt[7]_i_2_n_0\,
      O => ena_cnt(7)
    );
\ena_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \ena_cnt_reg_n_0_[6]\,
      I1 => \ena_cnt_reg_n_0_[5]\,
      I2 => \ena_cnt[5]_i_2_n_0\,
      O => \ena_cnt[7]_i_2_n_0\
    );
\ena_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0DDFFDDF0DD"
    )
        port map (
      I0 => \ena_cnt[8]_i_2_n_0\,
      I1 => \ena_cnt_reg_n_0_[8]\,
      I2 => ena_i_3_n_0,
      I3 => eqOp2_in,
      I4 => ena_i_2_n_0,
      I5 => run_on,
      O => ena_cnt(8)
    );
\ena_cnt[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \ena_cnt_reg_n_0_[7]\,
      I1 => \ena_cnt[5]_i_2_n_0\,
      I2 => \ena_cnt_reg_n_0_[5]\,
      I3 => \ena_cnt_reg_n_0_[6]\,
      O => \ena_cnt[8]_i_2_n_0\
    );
\ena_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => \ena_cnt[0]_i_1_n_0\,
      Q => \ena_cnt_reg_n_0_[0]\,
      R => '0'
    );
\ena_cnt_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ena_cnt(1),
      Q => \ena_cnt_reg_n_0_[1]\,
      S => \^rst_200_loc\
    );
\ena_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ena_cnt(2),
      Q => \ena_cnt_reg_n_0_[2]\,
      S => \^rst_200_loc\
    );
\ena_cnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ena_cnt(3),
      Q => \ena_cnt_reg_n_0_[3]\,
      S => \^rst_200_loc\
    );
\ena_cnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ena_cnt(4),
      Q => \ena_cnt_reg_n_0_[4]\,
      S => \^rst_200_loc\
    );
\ena_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ena_cnt(5),
      Q => \ena_cnt_reg_n_0_[5]\,
      S => \^rst_200_loc\
    );
\ena_cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ena_cnt(6),
      Q => \ena_cnt_reg_n_0_[6]\,
      S => \^rst_200_loc\
    );
\ena_cnt_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ena_cnt(7),
      Q => \ena_cnt_reg_n_0_[7]\,
      S => \^rst_200_loc\
    );
\ena_cnt_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ena_cnt(8),
      Q => \ena_cnt_reg_n_0_[8]\,
      S => \^rst_200_loc\
    );
ena_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => run_on,
      I1 => ena_i_2_n_0,
      I2 => eqOp2_in,
      I3 => ena_i_3_n_0,
      O => ena_i_1_n_0
    );
ena_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \ena_cnt[5]_i_2_n_0\,
      I1 => \ena_cnt_reg_n_0_[5]\,
      I2 => \ena_cnt_reg_n_0_[6]\,
      I3 => \ena_cnt_reg_n_0_[7]\,
      I4 => \ena_cnt_reg_n_0_[8]\,
      O => ena_i_2_n_0
    );
ena_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => run_loc,
      I1 => ena_i_4_n_0,
      I2 => pwm_cnt_reg(5),
      I3 => pwm_cnt_reg(0),
      I4 => pwm_cnt_reg(6),
      I5 => pwm_cnt_reg(2),
      O => ena_i_3_n_0
    );
ena_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pwm_cnt_reg(3),
      I1 => pwm_cnt_reg(1),
      I2 => pwm_cnt_reg(7),
      I3 => pwm_cnt_reg(4),
      O => ena_i_4_n_0
    );
ena_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => ena_i_1_n_0,
      Q => ena_reg_n_0,
      R => \^rst_200_loc\
    );
\eqOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_eqOp_inferred__1/i__carry_CO_UNCONNECTED\(3),
      CO(2) => eqOp2_in,
      CO(1) => \eqOp_inferred__1/i__carry_n_2\,
      CO(0) => \eqOp_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_1_n_0\,
      S(1) => \i__carry_i_2_n_0\,
      S(0) => \i__carry_i_3_n_0\
    );
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3) => gtOp_carry_i_1_n_0,
      DI(2) => gtOp_carry_i_2_n_0,
      DI(1) => gtOp_carry_i_3_n_0,
      DI(0) => gtOp_carry_i_4_n_0,
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => gtOp_carry_i_5_n_0,
      S(2) => gtOp_carry_i_6_n_0,
      S(1) => gtOp_carry_i_7_n_0,
      S(0) => gtOp_carry_i_8_n_0
    );
gtOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pwm_cnt_reg(7),
      I1 => pwm_val_loc(7),
      I2 => pwm_cnt_reg(6),
      I3 => pwm_val_loc(6),
      O => gtOp_carry_i_1_n_0
    );
gtOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pwm_cnt_reg(5),
      I1 => pwm_val_loc(5),
      I2 => pwm_cnt_reg(4),
      I3 => pwm_val_loc(4),
      O => gtOp_carry_i_2_n_0
    );
gtOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pwm_cnt_reg(3),
      I1 => pwm_val_loc(3),
      I2 => pwm_cnt_reg(2),
      I3 => pwm_val_loc(2),
      O => gtOp_carry_i_3_n_0
    );
gtOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => pwm_cnt_reg(1),
      I1 => pwm_val_loc(1),
      I2 => pwm_cnt_reg(0),
      I3 => pwm_val_loc(0),
      O => gtOp_carry_i_4_n_0
    );
gtOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pwm_val_loc(7),
      I1 => pwm_cnt_reg(7),
      I2 => pwm_val_loc(6),
      I3 => pwm_cnt_reg(6),
      O => gtOp_carry_i_5_n_0
    );
gtOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pwm_val_loc(5),
      I1 => pwm_cnt_reg(5),
      I2 => pwm_val_loc(4),
      I3 => pwm_cnt_reg(4),
      O => gtOp_carry_i_6_n_0
    );
gtOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pwm_val_loc(3),
      I1 => pwm_cnt_reg(3),
      I2 => pwm_val_loc(2),
      I3 => pwm_cnt_reg(2),
      O => gtOp_carry_i_7_n_0
    );
gtOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pwm_val_loc(1),
      I1 => pwm_cnt_reg(1),
      I2 => pwm_val_loc(0),
      I3 => pwm_cnt_reg(0),
      O => gtOp_carry_i_8_n_0
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \ena_cnt_reg_n_0_[6]\,
      I1 => pwm_ena(6),
      I2 => \ena_cnt_reg_n_0_[7]\,
      I3 => pwm_ena(7),
      I4 => pwm_ena(8),
      I5 => \ena_cnt_reg_n_0_[8]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => pwm_ena(5),
      I1 => \ena_cnt_reg_n_0_[5]\,
      I2 => \ena_cnt_reg_n_0_[3]\,
      I3 => pwm_ena(3),
      I4 => \ena_cnt_reg_n_0_[4]\,
      I5 => pwm_ena(4),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \ena_cnt_reg_n_0_[2]\,
      I1 => pwm_ena(2),
      I2 => \ena_cnt_reg_n_0_[0]\,
      I3 => pwm_ena(0),
      I4 => pwm_ena(1),
      I5 => \ena_cnt_reg_n_0_[1]\,
      O => \i__carry_i_3_n_0\
    );
neqOp: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => status_loc_d2(0),
      I1 => status_loc_d1(0),
      I2 => status_loc_d2(1),
      I3 => status_loc_d1(1),
      O => \neqOp__0\
    );
port_in1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => brake_loc,
      I1 => run_loc,
      I2 => run_fine_reg_n_0,
      I3 => dir_loc,
      O => port_in1_i_1_n_0
    );
port_in1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => port_in1_i_1_n_0,
      Q => port_in1_reg_0,
      R => \^rst_200_loc\
    );
port_in2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAFE"
    )
        port map (
      I0 => brake_loc,
      I1 => run_loc,
      I2 => run_fine_reg_n_0,
      I3 => dir_loc,
      O => port_in2_i_1_n_0
    );
port_in2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => port_in2_i_1_n_0,
      Q => port_in2_reg_0,
      R => \^rst_200_loc\
    );
port_pwm_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000A8"
    )
        port map (
      I0 => port_pwm_i_2_n_0,
      I1 => run_fine_reg_n_0,
      I2 => run_loc,
      I3 => \^rst_200_loc\,
      I4 => brake_loc,
      I5 => gtOp,
      O => port_pwm_i_1_n_0
    );
port_pwm_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => pwm_val_loc(1),
      I1 => pwm_val_loc(2),
      I2 => pwm_val_loc(0),
      I3 => pwm_val_loc(3),
      I4 => port_pwm_i_3_n_0,
      O => port_pwm_i_2_n_0
    );
port_pwm_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pwm_val_loc(7),
      I1 => pwm_val_loc(4),
      I2 => pwm_val_loc(6),
      I3 => pwm_val_loc(5),
      O => port_pwm_i_3_n_0
    );
port_pwm_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => port_pwm_i_1_n_0,
      Q => port_pwm_reg_0,
      R => '0'
    );
\pwm_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      O => plusOp(0)
    );
\pwm_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      I1 => pwm_cnt_reg(1),
      O => plusOp(1)
    );
\pwm_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => pwm_cnt_reg(2),
      I1 => pwm_cnt_reg(0),
      I2 => pwm_cnt_reg(1),
      O => plusOp(2)
    );
\pwm_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => pwm_cnt_reg(3),
      I1 => pwm_cnt_reg(1),
      I2 => pwm_cnt_reg(0),
      I3 => pwm_cnt_reg(2),
      O => plusOp(3)
    );
\pwm_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => pwm_cnt_reg(2),
      I1 => pwm_cnt_reg(0),
      I2 => pwm_cnt_reg(1),
      I3 => pwm_cnt_reg(3),
      I4 => pwm_cnt_reg(4),
      O => plusOp(4)
    );
\pwm_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => pwm_cnt_reg(5),
      I1 => pwm_cnt_reg(2),
      I2 => pwm_cnt_reg(0),
      I3 => pwm_cnt_reg(1),
      I4 => pwm_cnt_reg(3),
      I5 => pwm_cnt_reg(4),
      O => plusOp(5)
    );
\pwm_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => pwm_cnt_reg(6),
      I1 => \pwm_cnt[7]_i_4_n_0\,
      I2 => pwm_cnt_reg(5),
      O => plusOp(6)
    );
\pwm_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^rst_200_loc\,
      I1 => \pwm_cnt[7]_i_3_n_0\,
      I2 => ena_reg_n_0,
      O => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => pwm_cnt_reg(7),
      I1 => pwm_cnt_reg(5),
      I2 => \pwm_cnt[7]_i_4_n_0\,
      I3 => pwm_cnt_reg(6),
      O => plusOp(7)
    );
\pwm_cnt[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => pwm_cnt_reg(2),
      I1 => pwm_cnt_reg(6),
      I2 => pwm_cnt_reg(0),
      I3 => pwm_cnt_reg(5),
      I4 => ena_i_4_n_0,
      O => \pwm_cnt[7]_i_3_n_0\
    );
\pwm_cnt[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => pwm_cnt_reg(4),
      I1 => pwm_cnt_reg(3),
      I2 => pwm_cnt_reg(1),
      I3 => pwm_cnt_reg(0),
      I4 => pwm_cnt_reg(2),
      O => \pwm_cnt[7]_i_4_n_0\
    );
\pwm_cnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => ena_reg_n_0,
      D => plusOp(0),
      Q => pwm_cnt_reg(0),
      S => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => ena_reg_n_0,
      D => plusOp(1),
      Q => pwm_cnt_reg(1),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => ena_reg_n_0,
      D => plusOp(2),
      Q => pwm_cnt_reg(2),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => ena_reg_n_0,
      D => plusOp(3),
      Q => pwm_cnt_reg(3),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => ena_reg_n_0,
      D => plusOp(4),
      Q => pwm_cnt_reg(4),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => ena_reg_n_0,
      D => plusOp(5),
      Q => pwm_cnt_reg(5),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => ena_reg_n_0,
      D => plusOp(6),
      Q => pwm_cnt_reg(6),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => ena_reg_n_0,
      D => plusOp(7),
      Q => pwm_cnt_reg(7),
      R => \pwm_cnt[7]_i_1_n_0\
    );
\pwm_ena[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ena_reg_n_0,
      I1 => run_on,
      O => pwm_ena0
    );
\pwm_ena_loc[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1200000000040000"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(6),
      I2 => pwm_frq_loc(5),
      I3 => pwm_frq_loc(3),
      I4 => pwm_frq_loc(4),
      I5 => pwm_frq_loc(2),
      O => \pwm_ena_loc[0]_i_2_n_0\
    );
\pwm_ena_loc[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000820100020800"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(2),
      I2 => pwm_frq_loc(4),
      I3 => pwm_frq_loc(3),
      I4 => pwm_frq_loc(5),
      I5 => pwm_frq_loc(6),
      O => \pwm_ena_loc[0]_i_3_n_0\
    );
\pwm_ena_loc[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200001008000"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(2),
      I2 => pwm_frq_loc(4),
      I3 => pwm_frq_loc(3),
      I4 => pwm_frq_loc(5),
      I5 => pwm_frq_loc(6),
      O => \pwm_ena_loc[1]_i_2_n_0\
    );
\pwm_ena_loc[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020100000000"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(2),
      I2 => pwm_frq_loc(4),
      I3 => pwm_frq_loc(3),
      I4 => pwm_frq_loc(5),
      I5 => pwm_frq_loc(6),
      O => \pwm_ena_loc[1]_i_3_n_0\
    );
\pwm_ena_loc[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000014808000000"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(6),
      I2 => pwm_frq_loc(5),
      I3 => pwm_frq_loc(4),
      I4 => pwm_frq_loc(3),
      I5 => pwm_frq_loc(2),
      O => \pwm_ena_loc[2]_i_2_n_0\
    );
\pwm_ena_loc[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0820120000000004"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(6),
      I2 => pwm_frq_loc(5),
      I3 => pwm_frq_loc(3),
      I4 => pwm_frq_loc(4),
      I5 => pwm_frq_loc(2),
      O => \pwm_ena_loc[2]_i_3_n_0\
    );
\pwm_ena_loc[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010802000020"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(2),
      I2 => pwm_frq_loc(3),
      I3 => pwm_frq_loc(4),
      I4 => pwm_frq_loc(5),
      I5 => pwm_frq_loc(6),
      O => \pwm_ena_loc[3]_i_2_n_0\
    );
\pwm_ena_loc[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004100000000824"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(6),
      I2 => pwm_frq_loc(5),
      I3 => pwm_frq_loc(3),
      I4 => pwm_frq_loc(4),
      I5 => pwm_frq_loc(2),
      O => \pwm_ena_loc[3]_i_3_n_0\
    );
\pwm_ena_loc[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB7DBFDFF"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(2),
      I2 => pwm_frq_loc(5),
      I3 => pwm_frq_loc(3),
      I4 => pwm_frq_loc(4),
      I5 => pwm_frq_loc(6),
      O => \pwm_ena_loc[4]_i_2_n_0\
    );
\pwm_ena_loc[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7BFFF7F"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(2),
      I2 => pwm_frq_loc(3),
      I3 => pwm_frq_loc(4),
      I4 => pwm_frq_loc(5),
      I5 => pwm_frq_loc(6),
      O => \pwm_ena_loc[4]_i_3_n_0\
    );
\pwm_ena_loc[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000041000840"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(5),
      I2 => pwm_frq_loc(3),
      I3 => pwm_frq_loc(4),
      I4 => pwm_frq_loc(2),
      I5 => pwm_frq_loc(6),
      O => \pwm_ena_loc[5]_i_2_n_0\
    );
\pwm_ena_loc[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004820000"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(2),
      I2 => pwm_frq_loc(4),
      I3 => pwm_frq_loc(3),
      I4 => pwm_frq_loc(5),
      I5 => pwm_frq_loc(6),
      O => \pwm_ena_loc[5]_i_3_n_0\
    );
\pwm_ena_loc[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008420"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(2),
      I2 => pwm_frq_loc(3),
      I3 => pwm_frq_loc(4),
      I4 => pwm_frq_loc(5),
      I5 => pwm_frq_loc(6),
      O => \pwm_ena_loc[6]_i_2_n_0\
    );
\pwm_ena_loc[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => pwm_frq_loc(6),
      I1 => pwm_frq_loc(5),
      I2 => pwm_frq_loc(3),
      I3 => pwm_frq_loc(4),
      I4 => pwm_frq_loc(2),
      I5 => pwm_frq_loc(1),
      O => \pwm_ena_loc[6]_i_3_n_0\
    );
\pwm_ena_loc[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFDFEBFD7EBFF7F"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(6),
      I2 => pwm_frq_loc(2),
      I3 => pwm_frq_loc(3),
      I4 => pwm_frq_loc(4),
      I5 => pwm_frq_loc(5),
      O => \pwm_ena_loc[7]_i_2_n_0\
    );
\pwm_ena_loc[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFEFFD7EBFF7FB"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(6),
      I2 => pwm_frq_loc(2),
      I3 => pwm_frq_loc(3),
      I4 => pwm_frq_loc(4),
      I5 => pwm_frq_loc(5),
      O => \pwm_ena_loc[7]_i_3_n_0\
    );
\pwm_ena_loc[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFDFEBFD7EBFD7F"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(6),
      I2 => pwm_frq_loc(2),
      I3 => pwm_frq_loc(3),
      I4 => pwm_frq_loc(4),
      I5 => pwm_frq_loc(5),
      O => \pwm_ena_loc[8]_i_2_n_0\
    );
\pwm_ena_loc[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFEFFD7EBFD7FB"
    )
        port map (
      I0 => pwm_frq_loc(1),
      I1 => pwm_frq_loc(6),
      I2 => pwm_frq_loc(2),
      I3 => pwm_frq_loc(3),
      I4 => pwm_frq_loc(4),
      I5 => pwm_frq_loc(5),
      O => \pwm_ena_loc[8]_i_3_n_0\
    );
\pwm_ena_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => pwm_ena_loc_0(0),
      Q => pwm_ena_loc(0),
      R => \^rst_200_loc\
    );
\pwm_ena_loc_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pwm_ena_loc[0]_i_2_n_0\,
      I1 => \pwm_ena_loc[0]_i_3_n_0\,
      O => pwm_ena_loc_0(0),
      S => pwm_frq_loc(0)
    );
\pwm_ena_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => pwm_ena_loc_0(1),
      Q => pwm_ena_loc(1),
      R => \^rst_200_loc\
    );
\pwm_ena_loc_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pwm_ena_loc[1]_i_2_n_0\,
      I1 => \pwm_ena_loc[1]_i_3_n_0\,
      O => pwm_ena_loc_0(1),
      S => pwm_frq_loc(0)
    );
\pwm_ena_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => pwm_ena_loc_0(2),
      Q => pwm_ena_loc(2),
      R => \^rst_200_loc\
    );
\pwm_ena_loc_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pwm_ena_loc[2]_i_2_n_0\,
      I1 => \pwm_ena_loc[2]_i_3_n_0\,
      O => pwm_ena_loc_0(2),
      S => pwm_frq_loc(0)
    );
\pwm_ena_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => pwm_ena_loc_0(3),
      Q => pwm_ena_loc(3),
      R => \^rst_200_loc\
    );
\pwm_ena_loc_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pwm_ena_loc[3]_i_2_n_0\,
      I1 => \pwm_ena_loc[3]_i_3_n_0\,
      O => pwm_ena_loc_0(3),
      S => pwm_frq_loc(0)
    );
\pwm_ena_loc_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => pwm_ena_loc_0(4),
      Q => pwm_ena_loc(4),
      S => \^rst_200_loc\
    );
\pwm_ena_loc_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pwm_ena_loc[4]_i_2_n_0\,
      I1 => \pwm_ena_loc[4]_i_3_n_0\,
      O => pwm_ena_loc_0(4),
      S => pwm_frq_loc(0)
    );
\pwm_ena_loc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => pwm_ena_loc_0(5),
      Q => pwm_ena_loc(5),
      R => \^rst_200_loc\
    );
\pwm_ena_loc_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pwm_ena_loc[5]_i_2_n_0\,
      I1 => \pwm_ena_loc[5]_i_3_n_0\,
      O => pwm_ena_loc_0(5),
      S => pwm_frq_loc(0)
    );
\pwm_ena_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => pwm_ena_loc_0(6),
      Q => pwm_ena_loc(6),
      R => \^rst_200_loc\
    );
\pwm_ena_loc_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pwm_ena_loc[6]_i_2_n_0\,
      I1 => \pwm_ena_loc[6]_i_3_n_0\,
      O => pwm_ena_loc_0(6),
      S => pwm_frq_loc(0)
    );
\pwm_ena_loc_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => pwm_ena_loc_0(7),
      Q => pwm_ena_loc(7),
      S => \^rst_200_loc\
    );
\pwm_ena_loc_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pwm_ena_loc[7]_i_2_n_0\,
      I1 => \pwm_ena_loc[7]_i_3_n_0\,
      O => pwm_ena_loc_0(7),
      S => pwm_frq_loc(0)
    );
\pwm_ena_loc_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => pwm_ena_loc_0(8),
      Q => pwm_ena_loc(8),
      S => \^rst_200_loc\
    );
\pwm_ena_loc_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \pwm_ena_loc[8]_i_2_n_0\,
      I1 => \pwm_ena_loc[8]_i_3_n_0\,
      O => pwm_ena_loc_0(8),
      S => pwm_frq_loc(0)
    );
\pwm_ena_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => pwm_ena0,
      D => pwm_ena_loc(0),
      Q => pwm_ena(0),
      R => \^rst_200_loc\
    );
\pwm_ena_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => pwm_ena0,
      D => pwm_ena_loc(1),
      Q => pwm_ena(1),
      R => \^rst_200_loc\
    );
\pwm_ena_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => pwm_ena0,
      D => pwm_ena_loc(2),
      Q => pwm_ena(2),
      R => \^rst_200_loc\
    );
\pwm_ena_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => pwm_ena0,
      D => pwm_ena_loc(3),
      Q => pwm_ena(3),
      R => \^rst_200_loc\
    );
\pwm_ena_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => pwm_ena0,
      D => pwm_ena_loc(4),
      Q => pwm_ena(4),
      S => \^rst_200_loc\
    );
\pwm_ena_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => pwm_ena0,
      D => pwm_ena_loc(5),
      Q => pwm_ena(5),
      R => \^rst_200_loc\
    );
\pwm_ena_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => pwm_ena0,
      D => pwm_ena_loc(6),
      Q => pwm_ena(6),
      R => \^rst_200_loc\
    );
\pwm_ena_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => pwm_ena0,
      D => pwm_ena_loc(7),
      Q => pwm_ena(7),
      S => \^rst_200_loc\
    );
\pwm_ena_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => pwm_ena0,
      D => pwm_ena_loc(8),
      Q => pwm_ena(8),
      S => \^rst_200_loc\
    );
\pwm_frq_loc_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => vld_out_loc,
      D => pwm_frq(0),
      Q => pwm_frq_loc(0),
      S => \^rst_200_loc\
    );
\pwm_frq_loc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => vld_out_loc,
      D => pwm_frq(1),
      Q => pwm_frq_loc(1),
      R => \^rst_200_loc\
    );
\pwm_frq_loc_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk200,
      CE => vld_out_loc,
      D => pwm_frq(2),
      Q => pwm_frq_loc(2),
      S => \^rst_200_loc\
    );
\pwm_frq_loc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => vld_out_loc,
      D => pwm_frq(3),
      Q => pwm_frq_loc(3),
      R => \^rst_200_loc\
    );
\pwm_frq_loc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => vld_out_loc,
      D => pwm_frq(4),
      Q => pwm_frq_loc(4),
      R => \^rst_200_loc\
    );
\pwm_frq_loc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => vld_out_loc,
      D => pwm_frq(5),
      Q => pwm_frq_loc(5),
      R => \^rst_200_loc\
    );
\pwm_frq_loc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => vld_out_loc,
      D => pwm_frq(6),
      Q => pwm_frq_loc(6),
      R => \^rst_200_loc\
    );
\pwm_val_loc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => vld_out_loc,
      D => pwm_val(0),
      Q => pwm_val_loc(0),
      R => \^rst_200_loc\
    );
\pwm_val_loc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => vld_out_loc,
      D => pwm_val(1),
      Q => pwm_val_loc(1),
      R => \^rst_200_loc\
    );
\pwm_val_loc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => vld_out_loc,
      D => pwm_val(2),
      Q => pwm_val_loc(2),
      R => \^rst_200_loc\
    );
\pwm_val_loc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => vld_out_loc,
      D => pwm_val(3),
      Q => pwm_val_loc(3),
      R => \^rst_200_loc\
    );
\pwm_val_loc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => vld_out_loc,
      D => pwm_val(4),
      Q => pwm_val_loc(4),
      R => \^rst_200_loc\
    );
\pwm_val_loc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => vld_out_loc,
      D => pwm_val(5),
      Q => pwm_val_loc(5),
      R => \^rst_200_loc\
    );
\pwm_val_loc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => vld_out_loc,
      D => pwm_val(6),
      Q => pwm_val_loc(6),
      R => \^rst_200_loc\
    );
\pwm_val_loc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => vld_out_loc,
      D => pwm_val(7),
      Q => pwm_val_loc(7),
      R => \^rst_200_loc\
    );
reset_200_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn_loc_200,
      O => reset_200_i_1_n_0
    );
reset_200_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk200,
      CE => '1',
      D => reset_200_i_1_n_0,
      Q => \^rst_200_loc\,
      R => '0'
    );
reset_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn_loc,
      O => reset_i_1_n_0
    );
reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => reset_i_1_n_0,
      Q => reset,
      R => '0'
    );
run_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => vld_out_loc,
      D => run,
      Q => run_d1,
      R => \^rst_200_loc\
    );
run_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => run_d1,
      Q => run_d2,
      R => \^rst_200_loc\
    );
run_fine_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA2A"
    )
        port map (
      I0 => run_fine_i_2_n_0,
      I1 => ena_i_3_n_0,
      I2 => eqOp2_in,
      I3 => ena_i_2_n_0,
      I4 => \^rst_200_loc\,
      O => run_fine_i_1_n_0
    );
run_fine_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => run_on,
      I1 => \ena_cnt_reg_n_0_[8]\,
      I2 => \ena_cnt_reg_n_0_[6]\,
      I3 => \ena_cnt[6]_i_2_n_0\,
      I4 => \ena_cnt_reg_n_0_[7]\,
      I5 => run_fine_reg_n_0,
      O => run_fine_i_2_n_0
    );
run_fine_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => run_fine_i_1_n_0,
      Q => run_fine_reg_n_0,
      R => '0'
    );
run_loc_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => run_d1,
      I1 => run_d2,
      I2 => run_loc,
      O => run_loc_i_1_n_0
    );
run_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => run_loc_i_1_n_0,
      Q => run_loc,
      R => \^rst_200_loc\
    );
run_on_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => run_d1,
      I1 => run_d2,
      O => run_on0
    );
run_on_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => run_on0,
      Q => run_on,
      R => \^rst_200_loc\
    );
\status_loc[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000E"
    )
        port map (
      I0 => run_fine_reg_n_0,
      I1 => run_loc,
      I2 => \^rst_200_loc\,
      I3 => brake_loc,
      O => \status_loc[0]_i_1_n_0\
    );
\status_loc_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \status_loc_reg_n_0_[0]\,
      Q => status_loc_d1(0),
      R => reset
    );
\status_loc_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \status_loc_reg_n_0_[1]\,
      Q => status_loc_d1(1),
      R => reset
    );
\status_loc_d2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => status_loc_d1(0),
      Q => status_loc_d2(0),
      R => reset
    );
\status_loc_d2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => status_loc_d1(1),
      Q => status_loc_d2(1),
      R => reset
    );
\status_loc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \status_loc[0]_i_1_n_0\,
      Q => \status_loc_reg_n_0_[0]\,
      R => '0'
    );
\status_loc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => brake_loc,
      Q => \status_loc_reg_n_0_[1]\,
      R => \^rst_200_loc\
    );
\status_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => status_loc_d2(0),
      Q => status(0),
      R => reset
    );
\status_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => status_loc_d2(1),
      Q => status(1),
      R => reset
    );
vld_in_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \neqOp__0\,
      Q => vld_in,
      R => reset
    );
vld_out_loc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk200,
      CE => '1',
      D => vld_out,
      Q => vld_out_loc,
      R => \^rst_200_loc\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_ctrl is
  port (
    status : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vld_in : out STD_LOGIC;
    port_pwm : out STD_LOGIC;
    port_in1 : out STD_LOGIC;
    port_in2 : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    clk200 : in STD_LOGIC;
    vld_out : in STD_LOGIC;
    brake : in STD_LOGIC;
    run : in STD_LOGIC;
    pwm_frq : in STD_LOGIC_VECTOR ( 6 downto 0 );
    aclk : in STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dir : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_ctrl is
  signal \R.DCM_ctrl_i_n_2\ : STD_LOGIC;
  signal \R.DCM_ctrl_i_n_3\ : STD_LOGIC;
  signal \R.DCM_ctrl_i_n_4\ : STD_LOGIC;
  signal rst_200_loc : STD_LOGIC;
  attribute IOB : string;
  attribute IOB of port_in1_reg : label is "TRUE";
  attribute IOB of port_in2_reg : label is "TRUE";
  attribute IOB of port_pwm_reg : label is "TRUE";
begin
\R.DCM_ctrl_i\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_ctrl_real
     port map (
      aclk => aclk,
      aresetn => aresetn,
      brake => brake,
      clk200 => clk200,
      dir => dir,
      port_in1_reg_0 => \R.DCM_ctrl_i_n_2\,
      port_in2_reg_0 => \R.DCM_ctrl_i_n_3\,
      port_pwm_reg_0 => \R.DCM_ctrl_i_n_4\,
      pwm_frq(6 downto 0) => pwm_frq(6 downto 0),
      pwm_val(7 downto 0) => pwm_val(7 downto 0),
      rst_200_loc => rst_200_loc,
      run => run,
      status(1 downto 0) => status(1 downto 0),
      vld_in => vld_in,
      vld_out => vld_out
    );
port_in1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \R.DCM_ctrl_i_n_2\,
      Q => port_in1,
      R => rst_200_loc
    );
port_in2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \R.DCM_ctrl_i_n_3\,
      Q => port_in2,
      R => rst_200_loc
    );
port_pwm_reg: unisim.vcomponents.FDRE
     port map (
      C => clk200,
      CE => '1',
      D => \R.DCM_ctrl_i_n_4\,
      Q => port_pwm,
      R => rst_200_loc
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    clk200 : in STD_LOGIC;
    pwm_val : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm_frq : in STD_LOGIC_VECTOR ( 6 downto 0 );
    dir : in STD_LOGIC;
    run : in STD_LOGIC;
    brake : in STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vld_in : out STD_LOGIC;
    vld_out : in STD_LOGIC;
    port_pwm : out STD_LOGIC;
    port_in1 : out STD_LOGIC;
    port_in2 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "S7_DCM_ctrl_0_0,DCM_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "DCM_ctrl,Vivado 2019.1.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, ASSOCIATED_BUSIF DCM_IO:DCM_reg_if, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of brake : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if brake";
  attribute x_interface_info of clk200 : signal is "xilinx.com:signal:clock:1.0 clk200 CLK";
  attribute x_interface_parameter of clk200 : signal is "XIL_INTERFACENAME clk200, ASSOCIATED_RESET aresetn, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  attribute x_interface_info of dir : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if dir";
  attribute x_interface_info of port_in1 : signal is "Mindway:user:DCM_IOs:1.0 DCM_IO in1";
  attribute x_interface_info of port_in2 : signal is "Mindway:user:DCM_IOs:1.0 DCM_IO in2";
  attribute x_interface_info of port_pwm : signal is "Mindway:user:DCM_IOs:1.0 DCM_IO pwm";
  attribute x_interface_info of run : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if run";
  attribute x_interface_info of vld_in : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if vld_in";
  attribute x_interface_info of vld_out : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if vld_out";
  attribute x_interface_info of pwm_frq : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if pwm_frq";
  attribute x_interface_info of pwm_val : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if pwm_val";
  attribute x_interface_info of status : signal is "mindway:user:DCM_reg_if:1.0 DCM_reg_if status";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DCM_ctrl
     port map (
      aclk => aclk,
      aresetn => aresetn,
      brake => brake,
      clk200 => clk200,
      dir => dir,
      port_in1 => port_in1,
      port_in2 => port_in2,
      port_pwm => port_pwm,
      pwm_frq(6 downto 0) => pwm_frq(6 downto 0),
      pwm_val(7 downto 0) => pwm_val(7 downto 0),
      run => run,
      status(1 downto 0) => status(1 downto 0),
      vld_in => vld_in,
      vld_out => vld_out
    );
end STRUCTURE;
