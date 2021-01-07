-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Tue May  5 10:18:24 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_SOL_ctrl_3_0_sim_netlist.vhdl
-- Design      : S7_SOL_ctrl_3_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_ctrl_real is
  port (
    rst_100_loc : out STD_LOGIC;
    vld_in : out STD_LOGIC;
    port_pwm_reg_0 : out STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    run : in STD_LOGIC;
    time_full : in STD_LOGIC_VECTOR ( 10 downto 0 );
    pwm_val : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_ctrl_real;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_ctrl_real is
  signal aresetn_loc : STD_LOGIC;
  signal ena : STD_LOGIC;
  signal ena_cnt : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \ena_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \ena_cnt[11]_i_2_n_0\ : STD_LOGIC;
  signal \ena_cnt[11]_i_3_n_0\ : STD_LOGIC;
  signal \ena_cnt[11]_i_5_n_0\ : STD_LOGIC;
  signal \ena_cnt[11]_i_6_n_0\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \ena_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal ena_i_1_n_0 : STD_LOGIC;
  signal eqOp0_in : STD_LOGIC;
  signal eqOp1_in : STD_LOGIC;
  signal \eqOp__10\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_0\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_1\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \eqOp_inferred__3/i__carry_n_3\ : STD_LOGIC;
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
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal mS_cnt : STD_LOGIC;
  signal \mS_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \mS_cnt[7]_i_6_n_0\ : STD_LOGIC;
  signal \mS_cnt[7]_i_7_n_0\ : STD_LOGIC;
  signal \mS_cnt[7]_i_8_n_0\ : STD_LOGIC;
  signal mS_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \neqOp__0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal port_pwm_i_1_n_0 : STD_LOGIC;
  signal port_pwm_i_2_n_0 : STD_LOGIC;
  signal port_pwm_i_3_n_0 : STD_LOGIC;
  signal pwm_cnt : STD_LOGIC;
  signal \pwm_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \pwm_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \pwm_cnt[7]_i_5_n_0\ : STD_LOGIC;
  signal pwm_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pwm_full_i_1_n_0 : STD_LOGIC;
  signal pwm_full_i_2_n_0 : STD_LOGIC;
  signal pwm_full_reg_n_0 : STD_LOGIC;
  signal pwm_val_loc : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reset_i_1_n_0 : STD_LOGIC;
  signal \^rst_100_loc\ : STD_LOGIC;
  signal run_d1 : STD_LOGIC;
  signal run_d2 : STD_LOGIC;
  signal run_loc : STD_LOGIC;
  signal run_loc_i_1_n_0 : STD_LOGIC;
  signal run_off : STD_LOGIC;
  signal run_off_i_1_n_0 : STD_LOGIC;
  signal run_on : STD_LOGIC;
  signal run_on0 : STD_LOGIC;
  signal status_loc : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \status_loc[0]_i_1_n_0\ : STD_LOGIC;
  signal status_loc_d1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \status_loc_reg_n_0_[0]\ : STD_LOGIC;
  signal \status_loc_reg_n_0_[1]\ : STD_LOGIC;
  signal time_cnt : STD_LOGIC;
  signal \time_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \time_cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal time_cnt_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal time_full_loc : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \NLW_eqOp_inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mS_cnt[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mS_cnt[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mS_cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \mS_cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mS_cnt[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mS_cnt[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mS_cnt[7]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mS_cnt[7]_i_8\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of port_pwm_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pwm_cnt[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pwm_cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pwm_cnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pwm_cnt[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \pwm_cnt[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \pwm_cnt[7]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of pwm_full_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of run_loc_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of run_off_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of run_on_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \status_loc[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \time_cnt[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \time_cnt[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \time_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \time_cnt[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \time_cnt[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \time_cnt[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \time_cnt[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \time_cnt[9]_i_1\ : label is "soft_lutpair2";
begin
  rst_100_loc <= \^rst_100_loc\;
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
\ena_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF2FFFF"
    )
        port map (
      I0 => \ena_cnt[11]_i_2_n_0\,
      I1 => \ena_cnt[11]_i_3_n_0\,
      I2 => \eqOp__10\,
      I3 => \^rst_100_loc\,
      I4 => \ena_cnt_reg_n_0_[0]\,
      O => \ena_cnt[0]_i_1_n_0\
    );
\ena_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FDD0FFF0F000F22"
    )
        port map (
      I0 => \ena_cnt[11]_i_2_n_0\,
      I1 => \ena_cnt[11]_i_3_n_0\,
      I2 => run_on,
      I3 => \eqOp__10\,
      I4 => run_loc,
      I5 => plusOp(10),
      O => ena_cnt(10)
    );
\ena_cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FDD0FFF0F000F22"
    )
        port map (
      I0 => \ena_cnt[11]_i_2_n_0\,
      I1 => \ena_cnt[11]_i_3_n_0\,
      I2 => run_on,
      I3 => \eqOp__10\,
      I4 => run_loc,
      I5 => plusOp(11),
      O => ena_cnt(11)
    );
\ena_cnt[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \ena_cnt_reg_n_0_[10]\,
      I1 => \ena_cnt_reg_n_0_[9]\,
      I2 => \ena_cnt_reg_n_0_[11]\,
      I3 => \ena_cnt_reg_n_0_[6]\,
      I4 => \ena_cnt_reg_n_0_[7]\,
      I5 => \ena_cnt_reg_n_0_[8]\,
      O => \ena_cnt[11]_i_2_n_0\
    );
\ena_cnt[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => \ena_cnt_reg_n_0_[1]\,
      I1 => \ena_cnt_reg_n_0_[4]\,
      I2 => \ena_cnt_reg_n_0_[5]\,
      I3 => \ena_cnt_reg_n_0_[3]\,
      I4 => \ena_cnt_reg_n_0_[0]\,
      I5 => \ena_cnt_reg_n_0_[2]\,
      O => \ena_cnt[11]_i_3_n_0\
    );
\ena_cnt[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ena_cnt[11]_i_5_n_0\,
      I1 => \ena_cnt[11]_i_6_n_0\,
      O => \eqOp__10\
    );
\ena_cnt[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \ena_cnt_reg_n_0_[9]\,
      I1 => \ena_cnt_reg_n_0_[11]\,
      I2 => \ena_cnt_reg_n_0_[10]\,
      I3 => \ena_cnt_reg_n_0_[8]\,
      I4 => \ena_cnt_reg_n_0_[6]\,
      I5 => \ena_cnt_reg_n_0_[7]\,
      O => \ena_cnt[11]_i_5_n_0\
    );
\ena_cnt[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \ena_cnt_reg_n_0_[0]\,
      I1 => \ena_cnt_reg_n_0_[1]\,
      I2 => \ena_cnt_reg_n_0_[2]\,
      I3 => \ena_cnt_reg_n_0_[3]\,
      I4 => \ena_cnt_reg_n_0_[4]\,
      I5 => \ena_cnt_reg_n_0_[5]\,
      O => \ena_cnt[11]_i_6_n_0\
    );
\ena_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FDD0FFF0F000F22"
    )
        port map (
      I0 => \ena_cnt[11]_i_2_n_0\,
      I1 => \ena_cnt[11]_i_3_n_0\,
      I2 => run_on,
      I3 => \eqOp__10\,
      I4 => run_loc,
      I5 => plusOp(1),
      O => ena_cnt(1)
    );
\ena_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FDD0FFF0F000F22"
    )
        port map (
      I0 => \ena_cnt[11]_i_2_n_0\,
      I1 => \ena_cnt[11]_i_3_n_0\,
      I2 => run_on,
      I3 => \eqOp__10\,
      I4 => run_loc,
      I5 => plusOp(2),
      O => ena_cnt(2)
    );
\ena_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FDD0FFF0F000F22"
    )
        port map (
      I0 => \ena_cnt[11]_i_2_n_0\,
      I1 => \ena_cnt[11]_i_3_n_0\,
      I2 => run_on,
      I3 => \eqOp__10\,
      I4 => run_loc,
      I5 => plusOp(3),
      O => ena_cnt(3)
    );
\ena_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FDD0FFF0F000F22"
    )
        port map (
      I0 => \ena_cnt[11]_i_2_n_0\,
      I1 => \ena_cnt[11]_i_3_n_0\,
      I2 => run_on,
      I3 => \eqOp__10\,
      I4 => run_loc,
      I5 => plusOp(4),
      O => ena_cnt(4)
    );
\ena_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FDD0FFF0F000F22"
    )
        port map (
      I0 => \ena_cnt[11]_i_2_n_0\,
      I1 => \ena_cnt[11]_i_3_n_0\,
      I2 => run_on,
      I3 => \eqOp__10\,
      I4 => run_loc,
      I5 => plusOp(5),
      O => ena_cnt(5)
    );
\ena_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FDD0FFF0F000F22"
    )
        port map (
      I0 => \ena_cnt[11]_i_2_n_0\,
      I1 => \ena_cnt[11]_i_3_n_0\,
      I2 => run_on,
      I3 => \eqOp__10\,
      I4 => run_loc,
      I5 => plusOp(6),
      O => ena_cnt(6)
    );
\ena_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FDD0FFF0F000F22"
    )
        port map (
      I0 => \ena_cnt[11]_i_2_n_0\,
      I1 => \ena_cnt[11]_i_3_n_0\,
      I2 => run_on,
      I3 => \eqOp__10\,
      I4 => run_loc,
      I5 => plusOp(7),
      O => ena_cnt(7)
    );
\ena_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FDD0FFF0F000F22"
    )
        port map (
      I0 => \ena_cnt[11]_i_2_n_0\,
      I1 => \ena_cnt[11]_i_3_n_0\,
      I2 => run_on,
      I3 => \eqOp__10\,
      I4 => run_loc,
      I5 => plusOp(8),
      O => ena_cnt(8)
    );
\ena_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FDD0FFF0F000F22"
    )
        port map (
      I0 => \ena_cnt[11]_i_2_n_0\,
      I1 => \ena_cnt[11]_i_3_n_0\,
      I2 => run_on,
      I3 => \eqOp__10\,
      I4 => run_loc,
      I5 => plusOp(9),
      O => ena_cnt(9)
    );
\ena_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \ena_cnt[0]_i_1_n_0\,
      Q => \ena_cnt_reg_n_0_[0]\,
      R => '0'
    );
\ena_cnt_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ena_cnt(10),
      Q => \ena_cnt_reg_n_0_[10]\,
      S => \^rst_100_loc\
    );
\ena_cnt_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ena_cnt(11),
      Q => \ena_cnt_reg_n_0_[11]\,
      S => \^rst_100_loc\
    );
\ena_cnt_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ena_cnt(1),
      Q => \ena_cnt_reg_n_0_[1]\,
      S => \^rst_100_loc\
    );
\ena_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ena_cnt(2),
      Q => \ena_cnt_reg_n_0_[2]\,
      S => \^rst_100_loc\
    );
\ena_cnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ena_cnt(3),
      Q => \ena_cnt_reg_n_0_[3]\,
      S => \^rst_100_loc\
    );
\ena_cnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ena_cnt(4),
      Q => \ena_cnt_reg_n_0_[4]\,
      S => \^rst_100_loc\
    );
\ena_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ena_cnt(5),
      Q => \ena_cnt_reg_n_0_[5]\,
      S => \^rst_100_loc\
    );
\ena_cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ena_cnt(6),
      Q => \ena_cnt_reg_n_0_[6]\,
      S => \^rst_100_loc\
    );
\ena_cnt_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ena_cnt(7),
      Q => \ena_cnt_reg_n_0_[7]\,
      S => \^rst_100_loc\
    );
\ena_cnt_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ena_cnt(8),
      Q => \ena_cnt_reg_n_0_[8]\,
      S => \^rst_100_loc\
    );
\ena_cnt_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ena_cnt(9),
      Q => \ena_cnt_reg_n_0_[9]\,
      S => \^rst_100_loc\
    );
ena_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF002020"
    )
        port map (
      I0 => \ena_cnt[11]_i_2_n_0\,
      I1 => \ena_cnt[11]_i_3_n_0\,
      I2 => run_loc,
      I3 => run_on,
      I4 => \eqOp__10\,
      I5 => \^rst_100_loc\,
      O => ena_i_1_n_0
    );
ena_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => ena_i_1_n_0,
      Q => ena,
      R => '0'
    );
\eqOp_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \eqOp_inferred__3/i__carry_n_0\,
      CO(2) => \eqOp_inferred__3/i__carry_n_1\,
      CO(1) => \eqOp_inferred__3/i__carry_n_2\,
      CO(0) => \eqOp_inferred__3/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_inferred__3/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
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
      INIT => X"2F02"
    )
        port map (
      I0 => pwm_cnt_reg(6),
      I1 => pwm_val_loc(6),
      I2 => pwm_val_loc(7),
      I3 => pwm_cnt_reg(7),
      O => gtOp_carry_i_1_n_0
    );
gtOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pwm_cnt_reg(4),
      I1 => pwm_val_loc(4),
      I2 => pwm_val_loc(5),
      I3 => pwm_cnt_reg(5),
      O => gtOp_carry_i_2_n_0
    );
gtOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pwm_cnt_reg(2),
      I1 => pwm_val_loc(2),
      I2 => pwm_val_loc(3),
      I3 => pwm_cnt_reg(3),
      O => gtOp_carry_i_3_n_0
    );
gtOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      I1 => pwm_val_loc(0),
      I2 => pwm_val_loc(1),
      I3 => pwm_cnt_reg(1),
      O => gtOp_carry_i_4_n_0
    );
gtOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pwm_cnt_reg(6),
      I1 => pwm_val_loc(6),
      I2 => pwm_cnt_reg(7),
      I3 => pwm_val_loc(7),
      O => gtOp_carry_i_5_n_0
    );
gtOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pwm_cnt_reg(4),
      I1 => pwm_val_loc(4),
      I2 => pwm_cnt_reg(5),
      I3 => pwm_val_loc(5),
      O => gtOp_carry_i_6_n_0
    );
gtOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pwm_cnt_reg(2),
      I1 => pwm_val_loc(2),
      I2 => pwm_cnt_reg(3),
      I3 => pwm_val_loc(3),
      O => gtOp_carry_i_7_n_0
    );
gtOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      I1 => pwm_val_loc(0),
      I2 => pwm_cnt_reg(1),
      I3 => pwm_val_loc(1),
      O => gtOp_carry_i_8_n_0
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => time_cnt_reg(9),
      I1 => time_full_loc(9),
      I2 => time_cnt_reg(10),
      I3 => time_full_loc(10),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => time_cnt_reg(6),
      I1 => time_full_loc(6),
      I2 => time_full_loc(8),
      I3 => time_cnt_reg(8),
      I4 => time_full_loc(7),
      I5 => time_cnt_reg(7),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => time_cnt_reg(3),
      I1 => time_full_loc(3),
      I2 => time_full_loc(5),
      I3 => time_cnt_reg(5),
      I4 => time_full_loc(4),
      I5 => time_cnt_reg(4),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => time_cnt_reg(0),
      I1 => time_full_loc(0),
      I2 => time_full_loc(2),
      I3 => time_cnt_reg(2),
      I4 => time_full_loc(1),
      I5 => time_cnt_reg(1),
      O => \i__carry_i_4_n_0\
    );
\mS_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mS_cnt_reg(0),
      O => \plusOp__1\(0)
    );
\mS_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => mS_cnt_reg(0),
      I1 => mS_cnt_reg(1),
      O => \plusOp__1\(1)
    );
\mS_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => mS_cnt_reg(0),
      I1 => mS_cnt_reg(1),
      I2 => mS_cnt_reg(2),
      O => \plusOp__1\(2)
    );
\mS_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => mS_cnt_reg(1),
      I1 => mS_cnt_reg(0),
      I2 => mS_cnt_reg(2),
      I3 => mS_cnt_reg(3),
      O => \plusOp__1\(3)
    );
\mS_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => mS_cnt_reg(2),
      I1 => mS_cnt_reg(0),
      I2 => mS_cnt_reg(1),
      I3 => mS_cnt_reg(3),
      I4 => mS_cnt_reg(4),
      O => \plusOp__1\(4)
    );
\mS_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => mS_cnt_reg(3),
      I1 => mS_cnt_reg(1),
      I2 => mS_cnt_reg(0),
      I3 => mS_cnt_reg(2),
      I4 => mS_cnt_reg(4),
      I5 => mS_cnt_reg(5),
      O => \plusOp__1\(5)
    );
\mS_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mS_cnt[7]_i_7_n_0\,
      I1 => mS_cnt_reg(6),
      O => \plusOp__1\(6)
    );
\mS_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDDDDDDD"
    )
        port map (
      I0 => run_loc,
      I1 => run_on,
      I2 => eqOp1_in,
      I3 => eqOp0_in,
      I4 => ena,
      I5 => \mS_cnt[7]_i_6_n_0\,
      O => mS_cnt
    );
\mS_cnt[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pwm_cnt[7]_i_3_n_0\,
      O => \mS_cnt[7]_i_2_n_0\
    );
\mS_cnt[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \mS_cnt[7]_i_7_n_0\,
      I1 => mS_cnt_reg(6),
      I2 => mS_cnt_reg(7),
      O => \plusOp__1\(7)
    );
\mS_cnt[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => pwm_cnt_reg(1),
      I1 => pwm_cnt_reg(3),
      I2 => pwm_cnt_reg(4),
      I3 => pwm_cnt_reg(7),
      I4 => \pwm_cnt[7]_i_5_n_0\,
      O => eqOp1_in
    );
\mS_cnt[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => mS_cnt_reg(3),
      I1 => mS_cnt_reg(5),
      I2 => mS_cnt_reg(7),
      I3 => mS_cnt_reg(6),
      I4 => \mS_cnt[7]_i_8_n_0\,
      O => eqOp0_in
    );
\mS_cnt[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^rst_100_loc\,
      I1 => run_off,
      O => \mS_cnt[7]_i_6_n_0\
    );
\mS_cnt[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => mS_cnt_reg(5),
      I1 => mS_cnt_reg(3),
      I2 => mS_cnt_reg(1),
      I3 => mS_cnt_reg(0),
      I4 => mS_cnt_reg(2),
      I5 => mS_cnt_reg(4),
      O => \mS_cnt[7]_i_7_n_0\
    );
\mS_cnt[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => mS_cnt_reg(0),
      I1 => mS_cnt_reg(4),
      I2 => mS_cnt_reg(2),
      I3 => mS_cnt_reg(1),
      O => \mS_cnt[7]_i_8_n_0\
    );
\mS_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mS_cnt[7]_i_2_n_0\,
      D => \plusOp__1\(0),
      Q => mS_cnt_reg(0),
      R => mS_cnt
    );
\mS_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mS_cnt[7]_i_2_n_0\,
      D => \plusOp__1\(1),
      Q => mS_cnt_reg(1),
      R => mS_cnt
    );
\mS_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mS_cnt[7]_i_2_n_0\,
      D => \plusOp__1\(2),
      Q => mS_cnt_reg(2),
      R => mS_cnt
    );
\mS_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mS_cnt[7]_i_2_n_0\,
      D => \plusOp__1\(3),
      Q => mS_cnt_reg(3),
      R => mS_cnt
    );
\mS_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mS_cnt[7]_i_2_n_0\,
      D => \plusOp__1\(4),
      Q => mS_cnt_reg(4),
      R => mS_cnt
    );
\mS_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mS_cnt[7]_i_2_n_0\,
      D => \plusOp__1\(5),
      Q => mS_cnt_reg(5),
      R => mS_cnt
    );
\mS_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mS_cnt[7]_i_2_n_0\,
      D => \plusOp__1\(6),
      Q => mS_cnt_reg(6),
      R => mS_cnt
    );
\mS_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \mS_cnt[7]_i_2_n_0\,
      D => \plusOp__1\(7),
      Q => mS_cnt_reg(7),
      R => mS_cnt
    );
neqOp: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => status_loc_d1(0),
      I1 => \status_loc_reg_n_0_[0]\,
      I2 => status_loc_d1(1),
      I3 => \status_loc_reg_n_0_[1]\,
      O => \neqOp__0\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \ena_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3) => \ena_cnt_reg_n_0_[4]\,
      S(2) => \ena_cnt_reg_n_0_[3]\,
      S(1) => \ena_cnt_reg_n_0_[2]\,
      S(0) => \ena_cnt_reg_n_0_[1]\
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3) => \ena_cnt_reg_n_0_[8]\,
      S(2) => \ena_cnt_reg_n_0_[7]\,
      S(1) => \ena_cnt_reg_n_0_[6]\,
      S(0) => \ena_cnt_reg_n_0_[5]\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(11 downto 9),
      S(3) => '0',
      S(2) => \ena_cnt_reg_n_0_[11]\,
      S(1) => \ena_cnt_reg_n_0_[10]\,
      S(0) => \ena_cnt_reg_n_0_[9]\
    );
port_pwm_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => gtOp,
      I1 => pwm_full_reg_n_0,
      I2 => port_pwm_i_2_n_0,
      I3 => \^rst_100_loc\,
      O => port_pwm_i_1_n_0
    );
port_pwm_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => port_pwm_i_3_n_0,
      I1 => pwm_val_loc(7),
      I2 => pwm_val_loc(6),
      I3 => pwm_val_loc(4),
      I4 => pwm_val_loc(5),
      I5 => run_loc,
      O => port_pwm_i_2_n_0
    );
port_pwm_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pwm_val_loc(2),
      I1 => pwm_val_loc(3),
      I2 => pwm_val_loc(0),
      I3 => pwm_val_loc(1),
      O => port_pwm_i_3_n_0
    );
port_pwm_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
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
      O => \plusOp__0\(0)
    );
\pwm_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      I1 => pwm_cnt_reg(1),
      O => \plusOp__0\(1)
    );
\pwm_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => pwm_cnt_reg(0),
      I1 => pwm_cnt_reg(1),
      I2 => pwm_cnt_reg(2),
      O => \plusOp__0\(2)
    );
\pwm_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => pwm_cnt_reg(1),
      I1 => pwm_cnt_reg(0),
      I2 => pwm_cnt_reg(2),
      I3 => pwm_cnt_reg(3),
      O => \plusOp__0\(3)
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
      O => \plusOp__0\(4)
    );
\pwm_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => pwm_cnt_reg(3),
      I1 => pwm_cnt_reg(1),
      I2 => pwm_cnt_reg(0),
      I3 => pwm_cnt_reg(2),
      I4 => pwm_cnt_reg(4),
      I5 => pwm_cnt_reg(5),
      O => \plusOp__0\(5)
    );
\pwm_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pwm_cnt[7]_i_4_n_0\,
      I1 => pwm_cnt_reg(6),
      O => \plusOp__0\(6)
    );
\pwm_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => run_loc,
      I1 => run_on,
      I2 => \pwm_cnt[7]_i_3_n_0\,
      I3 => \^rst_100_loc\,
      I4 => run_off,
      O => pwm_cnt
    );
\pwm_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \pwm_cnt[7]_i_4_n_0\,
      I1 => pwm_cnt_reg(6),
      I2 => pwm_cnt_reg(7),
      O => \plusOp__0\(7)
    );
\pwm_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => ena,
      I1 => \pwm_cnt[7]_i_5_n_0\,
      I2 => pwm_cnt_reg(7),
      I3 => pwm_cnt_reg(4),
      I4 => pwm_cnt_reg(3),
      I5 => pwm_cnt_reg(1),
      O => \pwm_cnt[7]_i_3_n_0\
    );
\pwm_cnt[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => pwm_cnt_reg(5),
      I1 => pwm_cnt_reg(3),
      I2 => pwm_cnt_reg(1),
      I3 => pwm_cnt_reg(0),
      I4 => pwm_cnt_reg(2),
      I5 => pwm_cnt_reg(4),
      O => \pwm_cnt[7]_i_4_n_0\
    );
\pwm_cnt[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => pwm_cnt_reg(5),
      I1 => pwm_cnt_reg(2),
      I2 => pwm_cnt_reg(0),
      I3 => pwm_cnt_reg(6),
      O => \pwm_cnt[7]_i_5_n_0\
    );
\pwm_cnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => ena,
      D => \plusOp__0\(0),
      Q => pwm_cnt_reg(0),
      S => pwm_cnt
    );
\pwm_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => ena,
      D => \plusOp__0\(1),
      Q => pwm_cnt_reg(1),
      R => pwm_cnt
    );
\pwm_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => ena,
      D => \plusOp__0\(2),
      Q => pwm_cnt_reg(2),
      R => pwm_cnt
    );
\pwm_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => ena,
      D => \plusOp__0\(3),
      Q => pwm_cnt_reg(3),
      R => pwm_cnt
    );
\pwm_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => ena,
      D => \plusOp__0\(4),
      Q => pwm_cnt_reg(4),
      R => pwm_cnt
    );
\pwm_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => ena,
      D => \plusOp__0\(5),
      Q => pwm_cnt_reg(5),
      R => pwm_cnt
    );
\pwm_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => ena,
      D => \plusOp__0\(6),
      Q => pwm_cnt_reg(6),
      R => pwm_cnt
    );
\pwm_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => ena,
      D => \plusOp__0\(7),
      Q => pwm_cnt_reg(7),
      R => pwm_cnt
    );
pwm_full_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => pwm_full_i_2_n_0,
      I1 => run_off,
      I2 => \^rst_100_loc\,
      O => pwm_full_i_1_n_0
    );
pwm_full_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEEEEEEAAAAAAAA"
    )
        port map (
      I0 => run_on,
      I1 => run_loc,
      I2 => \pwm_cnt[7]_i_3_n_0\,
      I3 => \eqOp_inferred__3/i__carry_n_0\,
      I4 => eqOp0_in,
      I5 => pwm_full_reg_n_0,
      O => pwm_full_i_2_n_0
    );
pwm_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => pwm_full_i_1_n_0,
      Q => pwm_full_reg_n_0,
      R => '0'
    );
\pwm_val_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => pwm_val(0),
      Q => pwm_val_loc(0),
      R => \^rst_100_loc\
    );
\pwm_val_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => pwm_val(1),
      Q => pwm_val_loc(1),
      R => \^rst_100_loc\
    );
\pwm_val_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => pwm_val(2),
      Q => pwm_val_loc(2),
      R => \^rst_100_loc\
    );
\pwm_val_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => pwm_val(3),
      Q => pwm_val_loc(3),
      R => \^rst_100_loc\
    );
\pwm_val_loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => pwm_val(4),
      Q => pwm_val_loc(4),
      R => \^rst_100_loc\
    );
\pwm_val_loc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => pwm_val(5),
      Q => pwm_val_loc(5),
      R => \^rst_100_loc\
    );
\pwm_val_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => pwm_val(6),
      Q => pwm_val_loc(6),
      R => \^rst_100_loc\
    );
\pwm_val_loc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => pwm_val(7),
      Q => pwm_val_loc(7),
      R => \^rst_100_loc\
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
      Q => \^rst_100_loc\,
      R => '0'
    );
run_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => run,
      Q => run_d1,
      R => \^rst_100_loc\
    );
run_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => run_d1,
      Q => run_d2,
      R => \^rst_100_loc\
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
      C => aclk,
      CE => '1',
      D => run_loc_i_1_n_0,
      Q => run_loc,
      R => \^rst_100_loc\
    );
run_off_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => run_d1,
      I1 => run_d2,
      I2 => \^rst_100_loc\,
      O => run_off_i_1_n_0
    );
run_off_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => run_off_i_1_n_0,
      Q => run_off,
      R => '0'
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
      C => aclk,
      CE => '1',
      D => run_on0,
      Q => run_on,
      R => \^rst_100_loc\
    );
\status_loc[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => run_loc,
      I1 => pwm_full_reg_n_0,
      I2 => \^rst_100_loc\,
      O => \status_loc[0]_i_1_n_0\
    );
\status_loc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pwm_full_reg_n_0,
      I1 => run_loc,
      O => status_loc(1)
    );
\status_loc_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \status_loc_reg_n_0_[0]\,
      Q => status_loc_d1(0),
      R => \^rst_100_loc\
    );
\status_loc_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \status_loc_reg_n_0_[1]\,
      Q => status_loc_d1(1),
      R => \^rst_100_loc\
    );
\status_loc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \status_loc[0]_i_1_n_0\,
      Q => \status_loc_reg_n_0_[0]\,
      R => '0'
    );
\status_loc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => status_loc(1),
      Q => \status_loc_reg_n_0_[1]\,
      R => \^rst_100_loc\
    );
\status_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => status_loc_d1(0),
      Q => status(0),
      R => \^rst_100_loc\
    );
\status_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => status_loc_d1(1),
      Q => status(1),
      R => \^rst_100_loc\
    );
\time_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_cnt_reg(0),
      O => \plusOp__2\(0)
    );
\time_cnt[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^rst_100_loc\,
      I1 => run_on,
      I2 => run_off,
      O => \time_cnt[10]_i_1_n_0\
    );
\time_cnt[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => run_loc,
      I1 => \eqOp_inferred__3/i__carry_n_0\,
      I2 => eqOp0_in,
      I3 => \pwm_cnt[7]_i_3_n_0\,
      O => time_cnt
    );
\time_cnt[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => time_cnt_reg(8),
      I1 => time_cnt_reg(6),
      I2 => \time_cnt[10]_i_4_n_0\,
      I3 => time_cnt_reg(7),
      I4 => time_cnt_reg(9),
      I5 => time_cnt_reg(10),
      O => \plusOp__2\(10)
    );
\time_cnt[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => time_cnt_reg(5),
      I1 => time_cnt_reg(3),
      I2 => time_cnt_reg(1),
      I3 => time_cnt_reg(0),
      I4 => time_cnt_reg(2),
      I5 => time_cnt_reg(4),
      O => \time_cnt[10]_i_4_n_0\
    );
\time_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => time_cnt_reg(0),
      I1 => time_cnt_reg(1),
      O => \plusOp__2\(1)
    );
\time_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => time_cnt_reg(0),
      I1 => time_cnt_reg(1),
      I2 => time_cnt_reg(2),
      O => \plusOp__2\(2)
    );
\time_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => time_cnt_reg(1),
      I1 => time_cnt_reg(0),
      I2 => time_cnt_reg(2),
      I3 => time_cnt_reg(3),
      O => \plusOp__2\(3)
    );
\time_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => time_cnt_reg(2),
      I1 => time_cnt_reg(0),
      I2 => time_cnt_reg(1),
      I3 => time_cnt_reg(3),
      I4 => time_cnt_reg(4),
      O => \plusOp__2\(4)
    );
\time_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => time_cnt_reg(3),
      I1 => time_cnt_reg(1),
      I2 => time_cnt_reg(0),
      I3 => time_cnt_reg(2),
      I4 => time_cnt_reg(4),
      I5 => time_cnt_reg(5),
      O => \plusOp__2\(5)
    );
\time_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \time_cnt[10]_i_4_n_0\,
      I1 => time_cnt_reg(6),
      O => \plusOp__2\(6)
    );
\time_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \time_cnt[10]_i_4_n_0\,
      I1 => time_cnt_reg(6),
      I2 => time_cnt_reg(7),
      O => \plusOp__2\(7)
    );
\time_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => time_cnt_reg(6),
      I1 => \time_cnt[10]_i_4_n_0\,
      I2 => time_cnt_reg(7),
      I3 => time_cnt_reg(8),
      O => \plusOp__2\(8)
    );
\time_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => time_cnt_reg(7),
      I1 => \time_cnt[10]_i_4_n_0\,
      I2 => time_cnt_reg(6),
      I3 => time_cnt_reg(8),
      I4 => time_cnt_reg(9),
      O => \plusOp__2\(9)
    );
\time_cnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => time_cnt,
      D => \plusOp__2\(0),
      Q => time_cnt_reg(0),
      S => \time_cnt[10]_i_1_n_0\
    );
\time_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => time_cnt,
      D => \plusOp__2\(10),
      Q => time_cnt_reg(10),
      R => \time_cnt[10]_i_1_n_0\
    );
\time_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => time_cnt,
      D => \plusOp__2\(1),
      Q => time_cnt_reg(1),
      R => \time_cnt[10]_i_1_n_0\
    );
\time_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => time_cnt,
      D => \plusOp__2\(2),
      Q => time_cnt_reg(2),
      R => \time_cnt[10]_i_1_n_0\
    );
\time_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => time_cnt,
      D => \plusOp__2\(3),
      Q => time_cnt_reg(3),
      R => \time_cnt[10]_i_1_n_0\
    );
\time_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => time_cnt,
      D => \plusOp__2\(4),
      Q => time_cnt_reg(4),
      R => \time_cnt[10]_i_1_n_0\
    );
\time_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => time_cnt,
      D => \plusOp__2\(5),
      Q => time_cnt_reg(5),
      R => \time_cnt[10]_i_1_n_0\
    );
\time_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => time_cnt,
      D => \plusOp__2\(6),
      Q => time_cnt_reg(6),
      R => \time_cnt[10]_i_1_n_0\
    );
\time_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => time_cnt,
      D => \plusOp__2\(7),
      Q => time_cnt_reg(7),
      R => \time_cnt[10]_i_1_n_0\
    );
\time_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => time_cnt,
      D => \plusOp__2\(8),
      Q => time_cnt_reg(8),
      R => \time_cnt[10]_i_1_n_0\
    );
\time_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => time_cnt,
      D => \plusOp__2\(9),
      Q => time_cnt_reg(9),
      R => \time_cnt[10]_i_1_n_0\
    );
\time_full_loc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => time_full(0),
      Q => time_full_loc(0),
      R => \^rst_100_loc\
    );
\time_full_loc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => time_full(10),
      Q => time_full_loc(10),
      R => \^rst_100_loc\
    );
\time_full_loc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => time_full(1),
      Q => time_full_loc(1),
      R => \^rst_100_loc\
    );
\time_full_loc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => time_full(2),
      Q => time_full_loc(2),
      R => \^rst_100_loc\
    );
\time_full_loc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => time_full(3),
      Q => time_full_loc(3),
      R => \^rst_100_loc\
    );
\time_full_loc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => time_full(4),
      Q => time_full_loc(4),
      R => \^rst_100_loc\
    );
\time_full_loc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => time_full(5),
      Q => time_full_loc(5),
      R => \^rst_100_loc\
    );
\time_full_loc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => time_full(6),
      Q => time_full_loc(6),
      R => \^rst_100_loc\
    );
\time_full_loc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => time_full(7),
      Q => time_full_loc(7),
      R => \^rst_100_loc\
    );
\time_full_loc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => time_full(8),
      Q => time_full_loc(8),
      R => \^rst_100_loc\
    );
\time_full_loc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => time_full(9),
      Q => time_full_loc(9),
      R => \^rst_100_loc\
    );
vld_in_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \neqOp__0\,
      Q => vld_in,
      R => \^rst_100_loc\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_ctrl is
  port (
    status : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vld_in : out STD_LOGIC;
    port_pwm : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    run : in STD_LOGIC;
    time_full : in STD_LOGIC_VECTOR ( 10 downto 0 );
    pwm_val : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_ctrl is
  signal \R.SOL_ctrl_n_2\ : STD_LOGIC;
  signal rst_100_loc : STD_LOGIC;
  attribute IOB : string;
  attribute IOB of port_pwm_reg : label is "TRUE";
begin
\R.SOL_ctrl\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_ctrl_real
     port map (
      aclk => aclk,
      aresetn => aresetn,
      port_pwm_reg_0 => \R.SOL_ctrl_n_2\,
      pwm_val(7 downto 0) => pwm_val(7 downto 0),
      rst_100_loc => rst_100_loc,
      run => run,
      status(1 downto 0) => status(1 downto 0),
      time_full(10 downto 0) => time_full(10 downto 0),
      vld_in => vld_in
    );
port_pwm_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \R.SOL_ctrl_n_2\,
      Q => port_pwm,
      R => rst_100_loc
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
    pwm_val : in STD_LOGIC_VECTOR ( 7 downto 0 );
    time_full : in STD_LOGIC_VECTOR ( 10 downto 0 );
    run : in STD_LOGIC;
    status : out STD_LOGIC_VECTOR ( 1 downto 0 );
    vld_in : out STD_LOGIC;
    vld_out : in STD_LOGIC;
    port_pwm : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "S7_SOL_ctrl_3_0,SOL_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SOL_ctrl,Vivado 2019.1.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of port_pwm : signal is "mindway:user:SOL_IOs:1.0 SOL_IOs port_pwm";
  attribute x_interface_info of run : signal is "mindway:user:SOL_reg_if:1.0 SOL_regs run";
  attribute x_interface_info of vld_in : signal is "mindway:user:SOL_reg_if:1.0 SOL_regs vld_in";
  attribute x_interface_info of vld_out : signal is "mindway:user:SOL_reg_if:1.0 SOL_regs vld_out";
  attribute x_interface_info of pwm_val : signal is "mindway:user:SOL_reg_if:1.0 SOL_regs pwm_val";
  attribute x_interface_info of status : signal is "mindway:user:SOL_reg_if:1.0 SOL_regs status";
  attribute x_interface_info of time_full : signal is "mindway:user:SOL_reg_if:1.0 SOL_regs time_full";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_ctrl
     port map (
      aclk => aclk,
      aresetn => aresetn,
      port_pwm => port_pwm,
      pwm_val(7 downto 0) => pwm_val(7 downto 0),
      run => run,
      status(1 downto 0) => status(1 downto 0),
      time_full(10 downto 0) => time_full(10 downto 0),
      vld_in => vld_in
    );
end STRUCTURE;
