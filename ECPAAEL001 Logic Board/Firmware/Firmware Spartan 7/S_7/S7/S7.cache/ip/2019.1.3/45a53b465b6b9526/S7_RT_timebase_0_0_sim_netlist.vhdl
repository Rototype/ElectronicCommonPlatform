-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Tue May  5 10:11:52 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_RT_timebase_0_0_sim_netlist.vhdl
-- Design      : S7_RT_timebase_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RT_timebase is
  port (
    ena_PHS : out STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RT_timebase;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RT_timebase is
  signal ena_PHS_i_3_n_0 : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal \phs_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \phs_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \phs_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \phs_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \phs_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \phs_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \phs_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \phs_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \phs_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \phs_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \phs_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \phs_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \phs_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \phs_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \phs_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \phs_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \phs_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \phs_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \phs_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \phs_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \phs_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \phs_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal resetn : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ena_PHS_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \phs_cnt[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \phs_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \phs_cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \phs_cnt[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \phs_cnt[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \phs_cnt[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \phs_cnt[8]_i_1\ : label is "soft_lutpair0";
begin
ena_PHS_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => reset
    );
ena_PHS_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => ena_PHS_i_3_n_0,
      I1 => \phs_cnt_reg_n_0_[2]\,
      I2 => \phs_cnt_reg_n_0_[3]\,
      I3 => \phs_cnt_reg_n_0_[0]\,
      I4 => \phs_cnt_reg_n_0_[1]\,
      O => eqOp
    );
ena_PHS_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \phs_cnt_reg_n_0_[5]\,
      I1 => \phs_cnt_reg_n_0_[4]\,
      I2 => \phs_cnt_reg_n_0_[6]\,
      I3 => \phs_cnt_reg_n_0_[7]\,
      I4 => \phs_cnt_reg_n_0_[9]\,
      I5 => \phs_cnt_reg_n_0_[8]\,
      O => ena_PHS_i_3_n_0
    );
ena_PHS_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => eqOp,
      Q => ena_PHS,
      R => reset
    );
\phs_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \phs_cnt_reg_n_0_[0]\,
      I1 => eqOp,
      O => \phs_cnt[0]_i_1_n_0\
    );
\phs_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \phs_cnt_reg_n_0_[1]\,
      I1 => \phs_cnt_reg_n_0_[0]\,
      I2 => eqOp,
      O => \phs_cnt[1]_i_1_n_0\
    );
\phs_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \phs_cnt_reg_n_0_[2]\,
      I1 => \phs_cnt_reg_n_0_[0]\,
      I2 => \phs_cnt_reg_n_0_[1]\,
      I3 => eqOp,
      O => \phs_cnt[2]_i_1_n_0\
    );
\phs_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA0000"
    )
        port map (
      I0 => \phs_cnt_reg_n_0_[3]\,
      I1 => \phs_cnt_reg_n_0_[2]\,
      I2 => \phs_cnt_reg_n_0_[1]\,
      I3 => \phs_cnt_reg_n_0_[0]\,
      I4 => resetn,
      I5 => eqOp,
      O => \phs_cnt[3]_i_1_n_0\
    );
\phs_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA0000"
    )
        port map (
      I0 => \phs_cnt_reg_n_0_[4]\,
      I1 => \phs_cnt_reg_n_0_[3]\,
      I2 => \phs_cnt[5]_i_2_n_0\,
      I3 => \phs_cnt_reg_n_0_[2]\,
      I4 => resetn,
      I5 => eqOp,
      O => \phs_cnt[4]_i_1_n_0\
    );
\phs_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \phs_cnt_reg_n_0_[5]\,
      I1 => \phs_cnt_reg_n_0_[4]\,
      I2 => \phs_cnt_reg_n_0_[2]\,
      I3 => \phs_cnt[5]_i_2_n_0\,
      I4 => \phs_cnt_reg_n_0_[3]\,
      I5 => eqOp,
      O => \phs_cnt[5]_i_1_n_0\
    );
\phs_cnt[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \phs_cnt_reg_n_0_[0]\,
      I1 => \phs_cnt_reg_n_0_[1]\,
      O => \phs_cnt[5]_i_2_n_0\
    );
\phs_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \phs_cnt_reg_n_0_[6]\,
      I1 => \phs_cnt[9]_i_2_n_0\,
      I2 => eqOp,
      O => \phs_cnt[6]_i_1_n_0\
    );
\phs_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \phs_cnt_reg_n_0_[7]\,
      I1 => \phs_cnt_reg_n_0_[6]\,
      I2 => \phs_cnt[9]_i_2_n_0\,
      I3 => eqOp,
      O => \phs_cnt[7]_i_1_n_0\
    );
\phs_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \phs_cnt_reg_n_0_[8]\,
      I1 => \phs_cnt_reg_n_0_[7]\,
      I2 => \phs_cnt[9]_i_2_n_0\,
      I3 => \phs_cnt_reg_n_0_[6]\,
      I4 => eqOp,
      O => \phs_cnt[8]_i_1_n_0\
    );
\phs_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \phs_cnt_reg_n_0_[9]\,
      I1 => \phs_cnt_reg_n_0_[8]\,
      I2 => \phs_cnt_reg_n_0_[6]\,
      I3 => \phs_cnt[9]_i_2_n_0\,
      I4 => \phs_cnt_reg_n_0_[7]\,
      I5 => eqOp,
      O => \phs_cnt[9]_i_1_n_0\
    );
\phs_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \phs_cnt_reg_n_0_[5]\,
      I1 => \phs_cnt_reg_n_0_[3]\,
      I2 => \phs_cnt_reg_n_0_[0]\,
      I3 => \phs_cnt_reg_n_0_[1]\,
      I4 => \phs_cnt_reg_n_0_[2]\,
      I5 => \phs_cnt_reg_n_0_[4]\,
      O => \phs_cnt[9]_i_2_n_0\
    );
\phs_cnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \phs_cnt[0]_i_1_n_0\,
      Q => \phs_cnt_reg_n_0_[0]\,
      S => reset
    );
\phs_cnt_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \phs_cnt[1]_i_1_n_0\,
      Q => \phs_cnt_reg_n_0_[1]\,
      S => reset
    );
\phs_cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \phs_cnt[2]_i_1_n_0\,
      Q => \phs_cnt_reg_n_0_[2]\,
      S => reset
    );
\phs_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \phs_cnt[3]_i_1_n_0\,
      Q => \phs_cnt_reg_n_0_[3]\,
      R => '0'
    );
\phs_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \phs_cnt[4]_i_1_n_0\,
      Q => \phs_cnt_reg_n_0_[4]\,
      R => '0'
    );
\phs_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \phs_cnt[5]_i_1_n_0\,
      Q => \phs_cnt_reg_n_0_[5]\,
      S => reset
    );
\phs_cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \phs_cnt[6]_i_1_n_0\,
      Q => \phs_cnt_reg_n_0_[6]\,
      S => reset
    );
\phs_cnt_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \phs_cnt[7]_i_1_n_0\,
      Q => \phs_cnt_reg_n_0_[7]\,
      S => reset
    );
\phs_cnt_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \phs_cnt[8]_i_1_n_0\,
      Q => \phs_cnt_reg_n_0_[8]\,
      S => reset
    );
\phs_cnt_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \phs_cnt[9]_i_1_n_0\,
      Q => \phs_cnt_reg_n_0_[9]\,
      S => reset
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
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    ena_PHS : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "S7_RT_timebase_0_0,RT_timebase,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "RT_timebase,Vivado 2019.1.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RT_timebase
     port map (
      aclk => aclk,
      aresetn => aresetn,
      ena_PHS => ena_PHS
    );
end STRUCTURE;
