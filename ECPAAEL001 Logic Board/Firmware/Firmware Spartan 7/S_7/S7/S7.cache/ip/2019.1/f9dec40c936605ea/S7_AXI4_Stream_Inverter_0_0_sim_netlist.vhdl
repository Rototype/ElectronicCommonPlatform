-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Apr 30 15:17:41 2021
-- Host        : LAPTOP-3UDEBL19 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_AXI4_Stream_Inverter_0_0_sim_netlist.vhdl
-- Design      : S7_AXI4_Stream_Inverter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Inverter is
  port (
    Q : out STD_LOGIC_VECTOR ( 30 downto 0 );
    file_dimension : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    resetn : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Inverter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Inverter is
  signal \^q\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^file_dimension\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \image_length_vct[15]_i_1_n_0\ : STD_LOGIC;
  signal \image_length_vct[31]_i_1_n_0\ : STD_LOGIC;
  signal \image_length_vct[31]_i_2_n_0\ : STD_LOGIC;
  signal \image_length_vct[31]_i_3_n_0\ : STD_LOGIC;
  signal \image_length_vct[31]_i_4_n_0\ : STD_LOGIC;
  signal \image_length_vct[31]_i_5_n_0\ : STD_LOGIC;
  signal \image_length_vct[31]_i_6_n_0\ : STD_LOGIC;
  signal \image_length_vct[31]_i_7_n_0\ : STD_LOGIC;
  signal \image_length_vct[31]_i_8_n_0\ : STD_LOGIC;
  signal \image_length_vct[31]_i_9_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[0]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[1]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[2]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[3]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[4]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[5]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[6]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[7]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[7]_i_2_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[7]_i_3_n_0\ : STD_LOGIC;
  signal \inverted_tdata_3rdB[0]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_3rdB[1]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_3rdB[2]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_3rdB[3]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_3rdB[4]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_3rdB[5]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_3rdB[6]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_3rdB[7]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_LSB[0]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_LSB[1]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_LSB[2]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_LSB[3]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_LSB[4]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_LSB[5]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_LSB[6]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_LSB[7]_i_1_n_0\ : STD_LOGIC;
  signal inverted_tdata_MSB0 : STD_LOGIC;
  signal \inverted_tdata_MSB[0]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[1]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[2]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[3]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[4]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[5]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[6]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[7]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[7]_i_3_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[7]_i_4_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[7]_i_5_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal packet_counter_vct3 : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \packet_counter_vct3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__0_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__0_n_1\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__0_n_2\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__0_n_3\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__1_n_1\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__1_n_2\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__1_n_3\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__2_n_1\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__2_n_2\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__2_n_3\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__3_n_1\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__3_n_2\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__3_n_3\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__4_n_1\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__4_n_2\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__4_n_3\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__5_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__5_n_1\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__5_n_2\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__5_n_3\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__6_n_1\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__6_n_2\ : STD_LOGIC;
  signal \packet_counter_vct3_carry__6_n_3\ : STD_LOGIC;
  signal packet_counter_vct3_carry_i_1_n_0 : STD_LOGIC;
  signal packet_counter_vct3_carry_i_2_n_0 : STD_LOGIC;
  signal packet_counter_vct3_carry_i_3_n_0 : STD_LOGIC;
  signal packet_counter_vct3_carry_n_0 : STD_LOGIC;
  signal packet_counter_vct3_carry_n_1 : STD_LOGIC;
  signal packet_counter_vct3_carry_n_2 : STD_LOGIC;
  signal packet_counter_vct3_carry_n_3 : STD_LOGIC;
  signal \packet_counter_vct[10]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[11]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[12]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[13]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[14]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[15]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[16]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[17]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[18]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[19]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[1]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[20]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[21]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[22]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[23]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[24]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[25]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[26]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[27]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[28]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[29]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[2]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[30]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[31]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[31]_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[31]_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[31]_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[31]_i_6_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[31]_i_7_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[31]_i_8_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[31]_i_9_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[3]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[4]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[4]_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[5]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[6]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[7]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[8]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[9]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \packet_counter_vct_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \packet_counter_vct_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \packet_counter_vct_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \packet_counter_vct_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \packet_counter_vct_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \packet_counter_vct_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \packet_counter_vct_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \packet_counter_vct_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \packet_counter_vct_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \packet_counter_vct_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \packet_counter_vct_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \packet_counter_vct_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \packet_counter_vct_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \packet_counter_vct_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \packet_counter_vct_reg[31]_i_5_n_2\ : STD_LOGIC;
  signal \packet_counter_vct_reg[31]_i_5_n_3\ : STD_LOGIC;
  signal \packet_counter_vct_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \packet_counter_vct_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \packet_counter_vct_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \packet_counter_vct_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \packet_counter_vct_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \packet_counter_vct_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal NLW_packet_counter_vct3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_packet_counter_vct3_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_packet_counter_vct_reg[31]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_packet_counter_vct_reg[31]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \inverted_tdata_2ndB[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \inverted_tdata_2ndB[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \inverted_tdata_2ndB[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \inverted_tdata_2ndB[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \inverted_tdata_2ndB[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \inverted_tdata_2ndB[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \inverted_tdata_2ndB[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \inverted_tdata_2ndB[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \inverted_tdata_LSB[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \inverted_tdata_LSB[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \inverted_tdata_LSB[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \inverted_tdata_LSB[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \inverted_tdata_LSB[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \inverted_tdata_LSB[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \inverted_tdata_LSB[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \inverted_tdata_LSB[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \inverted_tdata_MSB[7]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \inverted_tdata_MSB[7]_i_5\ : label is "soft_lutpair0";
begin
  Q(30 downto 0) <= \^q\(30 downto 0);
  file_dimension(31 downto 0) <= \^file_dimension\(31 downto 0);
\image_length_vct[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \image_length_vct[31]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \image_length_vct[31]_i_3_n_0\,
      O => \image_length_vct[15]_i_1_n_0\
    );
\image_length_vct[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \image_length_vct[31]_i_2_n_0\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \image_length_vct[31]_i_3_n_0\,
      O => \image_length_vct[31]_i_1_n_0\
    );
\image_length_vct[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => resetn,
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => m00_axis_tready,
      I5 => s00_axis_tvalid,
      O => \image_length_vct[31]_i_2_n_0\
    );
\image_length_vct[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \image_length_vct[31]_i_4_n_0\,
      I1 => \image_length_vct[31]_i_5_n_0\,
      I2 => \image_length_vct[31]_i_6_n_0\,
      I3 => \image_length_vct[31]_i_7_n_0\,
      I4 => \image_length_vct[31]_i_8_n_0\,
      I5 => \image_length_vct[31]_i_9_n_0\,
      O => \image_length_vct[31]_i_3_n_0\
    );
\image_length_vct[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(20),
      I1 => \^q\(19),
      I2 => \^q\(22),
      I3 => \^q\(21),
      O => \image_length_vct[31]_i_4_n_0\
    );
\image_length_vct[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(24),
      I1 => \^q\(23),
      I2 => \^q\(26),
      I3 => \^q\(25),
      O => \image_length_vct[31]_i_5_n_0\
    );
\image_length_vct[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(11),
      I2 => \^q\(14),
      I3 => \^q\(13),
      O => \image_length_vct[31]_i_6_n_0\
    );
\image_length_vct[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(16),
      I1 => \^q\(15),
      I2 => \^q\(18),
      I3 => \^q\(17),
      O => \image_length_vct[31]_i_7_n_0\
    );
\image_length_vct[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(10),
      I3 => \^q\(9),
      O => \image_length_vct[31]_i_8_n_0\
    );
\image_length_vct[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^q\(30),
      I2 => \^q\(27),
      I3 => \^q\(28),
      I4 => \^q\(6),
      I5 => \^q\(5),
      O => \image_length_vct[31]_i_9_n_0\
    );
\image_length_vct_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(16),
      Q => \^file_dimension\(0),
      R => '0'
    );
\image_length_vct_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(26),
      Q => \^file_dimension\(10),
      R => '0'
    );
\image_length_vct_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(27),
      Q => \^file_dimension\(11),
      R => '0'
    );
\image_length_vct_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(28),
      Q => \^file_dimension\(12),
      R => '0'
    );
\image_length_vct_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(29),
      Q => \^file_dimension\(13),
      R => '0'
    );
\image_length_vct_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(30),
      Q => \^file_dimension\(14),
      R => '0'
    );
\image_length_vct_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(31),
      Q => \^file_dimension\(15),
      R => '0'
    );
\image_length_vct_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(0),
      Q => \^file_dimension\(16),
      R => '0'
    );
\image_length_vct_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(1),
      Q => \^file_dimension\(17),
      R => '0'
    );
\image_length_vct_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(2),
      Q => \^file_dimension\(18),
      R => '0'
    );
\image_length_vct_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(3),
      Q => \^file_dimension\(19),
      R => '0'
    );
\image_length_vct_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(17),
      Q => \^file_dimension\(1),
      R => '0'
    );
\image_length_vct_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(4),
      Q => \^file_dimension\(20),
      R => '0'
    );
\image_length_vct_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(5),
      Q => \^file_dimension\(21),
      R => '0'
    );
\image_length_vct_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(6),
      Q => \^file_dimension\(22),
      R => '0'
    );
\image_length_vct_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(7),
      Q => \^file_dimension\(23),
      R => '0'
    );
\image_length_vct_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(8),
      Q => \^file_dimension\(24),
      R => '0'
    );
\image_length_vct_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(9),
      Q => \^file_dimension\(25),
      R => '0'
    );
\image_length_vct_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(10),
      Q => \^file_dimension\(26),
      R => '0'
    );
\image_length_vct_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(11),
      Q => \^file_dimension\(27),
      R => '0'
    );
\image_length_vct_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(12),
      Q => \^file_dimension\(28),
      R => '0'
    );
\image_length_vct_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(13),
      Q => \^file_dimension\(29),
      R => '0'
    );
\image_length_vct_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(18),
      Q => \^file_dimension\(2),
      R => '0'
    );
\image_length_vct_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(14),
      Q => \^file_dimension\(30),
      R => '0'
    );
\image_length_vct_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[31]_i_1_n_0\,
      D => s00_axis_tdata(15),
      Q => \^file_dimension\(31),
      R => '0'
    );
\image_length_vct_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(19),
      Q => \^file_dimension\(3),
      R => '0'
    );
\image_length_vct_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(20),
      Q => \^file_dimension\(4),
      R => '0'
    );
\image_length_vct_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(21),
      Q => \^file_dimension\(5),
      R => '0'
    );
\image_length_vct_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(22),
      Q => \^file_dimension\(6),
      R => '0'
    );
\image_length_vct_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(23),
      Q => \^file_dimension\(7),
      R => '0'
    );
\image_length_vct_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(24),
      Q => \^file_dimension\(8),
      R => '0'
    );
\image_length_vct_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(25),
      Q => \^file_dimension\(9),
      R => '0'
    );
\inverted_tdata_2ndB[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(8),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_2ndB[0]_i_1_n_0\
    );
\inverted_tdata_2ndB[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(9),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_2ndB[1]_i_1_n_0\
    );
\inverted_tdata_2ndB[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(10),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_2ndB[2]_i_1_n_0\
    );
\inverted_tdata_2ndB[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(11),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_2ndB[3]_i_1_n_0\
    );
\inverted_tdata_2ndB[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(12),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_2ndB[4]_i_1_n_0\
    );
\inverted_tdata_2ndB[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(13),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_2ndB[5]_i_1_n_0\
    );
\inverted_tdata_2ndB[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(14),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_2ndB[6]_i_1_n_0\
    );
\inverted_tdata_2ndB[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(15),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_2ndB[7]_i_1_n_0\
    );
\inverted_tdata_2ndB[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001FFF5FFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(4),
      I3 => \^q\(3),
      I4 => \^q\(0),
      I5 => \image_length_vct[31]_i_3_n_0\,
      O => \inverted_tdata_2ndB[7]_i_2_n_0\
    );
\inverted_tdata_2ndB[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => \inverted_tdata_2ndB[7]_i_3_n_0\
    );
\inverted_tdata_2ndB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_2ndB[0]_i_1_n_0\,
      Q => m00_axis_tdata(8),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_2ndB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_2ndB[1]_i_1_n_0\,
      Q => m00_axis_tdata(9),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_2ndB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_2ndB[2]_i_1_n_0\,
      Q => m00_axis_tdata(10),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_2ndB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_2ndB[3]_i_1_n_0\,
      Q => m00_axis_tdata(11),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_2ndB_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_2ndB[4]_i_1_n_0\,
      Q => m00_axis_tdata(12),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_2ndB_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_2ndB[5]_i_1_n_0\,
      Q => m00_axis_tdata(13),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_2ndB_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_2ndB[6]_i_1_n_0\,
      Q => m00_axis_tdata(14),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_2ndB_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_2ndB[7]_i_1_n_0\,
      Q => m00_axis_tdata(15),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_3rdB[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(16),
      O => \inverted_tdata_3rdB[0]_i_1_n_0\
    );
\inverted_tdata_3rdB[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(17),
      O => \inverted_tdata_3rdB[1]_i_1_n_0\
    );
\inverted_tdata_3rdB[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(18),
      O => \inverted_tdata_3rdB[2]_i_1_n_0\
    );
\inverted_tdata_3rdB[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(19),
      O => \inverted_tdata_3rdB[3]_i_1_n_0\
    );
\inverted_tdata_3rdB[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(20),
      O => \inverted_tdata_3rdB[4]_i_1_n_0\
    );
\inverted_tdata_3rdB[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(21),
      O => \inverted_tdata_3rdB[5]_i_1_n_0\
    );
\inverted_tdata_3rdB[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(22),
      O => \inverted_tdata_3rdB[6]_i_1_n_0\
    );
\inverted_tdata_3rdB[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(23),
      O => \inverted_tdata_3rdB[7]_i_1_n_0\
    );
\inverted_tdata_3rdB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_3rdB[0]_i_1_n_0\,
      Q => m00_axis_tdata(16),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_3rdB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_3rdB[1]_i_1_n_0\,
      Q => m00_axis_tdata(17),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_3rdB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_3rdB[2]_i_1_n_0\,
      Q => m00_axis_tdata(18),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_3rdB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_3rdB[3]_i_1_n_0\,
      Q => m00_axis_tdata(19),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_3rdB_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_3rdB[4]_i_1_n_0\,
      Q => m00_axis_tdata(20),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_3rdB_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_3rdB[5]_i_1_n_0\,
      Q => m00_axis_tdata(21),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_3rdB_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_3rdB[6]_i_1_n_0\,
      Q => m00_axis_tdata(22),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_3rdB_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_3rdB[7]_i_1_n_0\,
      Q => m00_axis_tdata(23),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_LSB[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(0),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_LSB[0]_i_1_n_0\
    );
\inverted_tdata_LSB[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(1),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_LSB[1]_i_1_n_0\
    );
\inverted_tdata_LSB[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(2),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_LSB[2]_i_1_n_0\
    );
\inverted_tdata_LSB[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(3),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_LSB[3]_i_1_n_0\
    );
\inverted_tdata_LSB[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(4),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_LSB[4]_i_1_n_0\
    );
\inverted_tdata_LSB[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(5),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_LSB[5]_i_1_n_0\
    );
\inverted_tdata_LSB[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(6),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_LSB[6]_i_1_n_0\
    );
\inverted_tdata_LSB[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => s00_axis_tdata(7),
      I2 => \inverted_tdata_2ndB[7]_i_3_n_0\,
      O => \inverted_tdata_LSB[7]_i_1_n_0\
    );
\inverted_tdata_LSB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_LSB[0]_i_1_n_0\,
      Q => m00_axis_tdata(0),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_LSB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_LSB[1]_i_1_n_0\,
      Q => m00_axis_tdata(1),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_LSB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_LSB[2]_i_1_n_0\,
      Q => m00_axis_tdata(2),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_LSB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_LSB[3]_i_1_n_0\,
      Q => m00_axis_tdata(3),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_LSB_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_LSB[4]_i_1_n_0\,
      Q => m00_axis_tdata(4),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_LSB_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_LSB[5]_i_1_n_0\,
      Q => m00_axis_tdata(5),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_LSB_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_LSB[6]_i_1_n_0\,
      Q => m00_axis_tdata(6),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_LSB_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_LSB[7]_i_1_n_0\,
      Q => m00_axis_tdata(7),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(24),
      O => \inverted_tdata_MSB[0]_i_1_n_0\
    );
\inverted_tdata_MSB[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(25),
      O => \inverted_tdata_MSB[1]_i_1_n_0\
    );
\inverted_tdata_MSB[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(26),
      O => \inverted_tdata_MSB[2]_i_1_n_0\
    );
\inverted_tdata_MSB[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(27),
      O => \inverted_tdata_MSB[3]_i_1_n_0\
    );
\inverted_tdata_MSB[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(28),
      O => \inverted_tdata_MSB[4]_i_1_n_0\
    );
\inverted_tdata_MSB[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(29),
      O => \inverted_tdata_MSB[5]_i_1_n_0\
    );
\inverted_tdata_MSB[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(30),
      O => \inverted_tdata_MSB[6]_i_1_n_0\
    );
\inverted_tdata_MSB[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => m00_axis_tready,
      O => inverted_tdata_MSB0
    );
\inverted_tdata_MSB[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF80FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I5 => s00_axis_tdata(31),
      O => \inverted_tdata_MSB[7]_i_3_n_0\
    );
\inverted_tdata_MSB[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \image_length_vct[31]_i_3_n_0\,
      O => \inverted_tdata_MSB[7]_i_4_n_0\
    );
\inverted_tdata_MSB[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000777F"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \image_length_vct[31]_i_3_n_0\,
      O => \inverted_tdata_MSB[7]_i_5_n_0\
    );
\inverted_tdata_MSB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_MSB[0]_i_1_n_0\,
      Q => m00_axis_tdata(24),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_MSB[1]_i_1_n_0\,
      Q => m00_axis_tdata(25),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_MSB[2]_i_1_n_0\,
      Q => m00_axis_tdata(26),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_MSB[3]_i_1_n_0\,
      Q => m00_axis_tdata(27),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_MSB[4]_i_1_n_0\,
      Q => m00_axis_tdata(28),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_MSB[5]_i_1_n_0\,
      Q => m00_axis_tdata(29),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_MSB[6]_i_1_n_0\,
      Q => m00_axis_tdata(30),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \inverted_tdata_MSB[7]_i_3_n_0\,
      Q => m00_axis_tdata(31),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
out_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s00_axis_tlast,
      Q => m00_axis_tlast,
      R => '0'
    );
out_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s00_axis_tvalid,
      Q => m00_axis_tvalid,
      R => '0'
    );
packet_counter_vct3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => packet_counter_vct3_carry_n_0,
      CO(2) => packet_counter_vct3_carry_n_1,
      CO(1) => packet_counter_vct3_carry_n_2,
      CO(0) => packet_counter_vct3_carry_n_3,
      CYINIT => '1',
      DI(3 downto 1) => \^q\(2 downto 0),
      DI(0) => '0',
      O(3 downto 2) => packet_counter_vct3(3 downto 2),
      O(1 downto 0) => NLW_packet_counter_vct3_carry_O_UNCONNECTED(1 downto 0),
      S(3) => packet_counter_vct3_carry_i_1_n_0,
      S(2) => packet_counter_vct3_carry_i_2_n_0,
      S(1) => packet_counter_vct3_carry_i_3_n_0,
      S(0) => p_0_in(0)
    );
\packet_counter_vct3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => packet_counter_vct3_carry_n_0,
      CO(3) => \packet_counter_vct3_carry__0_n_0\,
      CO(2) => \packet_counter_vct3_carry__0_n_1\,
      CO(1) => \packet_counter_vct3_carry__0_n_2\,
      CO(0) => \packet_counter_vct3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(6 downto 3),
      O(3 downto 0) => packet_counter_vct3(7 downto 4),
      S(3) => \packet_counter_vct3_carry__0_i_1_n_0\,
      S(2) => \packet_counter_vct3_carry__0_i_2_n_0\,
      S(1) => \packet_counter_vct3_carry__0_i_3_n_0\,
      S(0) => \packet_counter_vct3_carry__0_i_4_n_0\
    );
\packet_counter_vct3_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^file_dimension\(7),
      O => \packet_counter_vct3_carry__0_i_1_n_0\
    );
\packet_counter_vct3_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^file_dimension\(6),
      O => \packet_counter_vct3_carry__0_i_2_n_0\
    );
\packet_counter_vct3_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^file_dimension\(5),
      O => \packet_counter_vct3_carry__0_i_3_n_0\
    );
\packet_counter_vct3_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^file_dimension\(4),
      O => \packet_counter_vct3_carry__0_i_4_n_0\
    );
\packet_counter_vct3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct3_carry__0_n_0\,
      CO(3) => \packet_counter_vct3_carry__1_n_0\,
      CO(2) => \packet_counter_vct3_carry__1_n_1\,
      CO(1) => \packet_counter_vct3_carry__1_n_2\,
      CO(0) => \packet_counter_vct3_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(10 downto 7),
      O(3 downto 0) => packet_counter_vct3(11 downto 8),
      S(3) => \packet_counter_vct3_carry__1_i_1_n_0\,
      S(2) => \packet_counter_vct3_carry__1_i_2_n_0\,
      S(1) => \packet_counter_vct3_carry__1_i_3_n_0\,
      S(0) => \packet_counter_vct3_carry__1_i_4_n_0\
    );
\packet_counter_vct3_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^file_dimension\(11),
      O => \packet_counter_vct3_carry__1_i_1_n_0\
    );
\packet_counter_vct3_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^file_dimension\(10),
      O => \packet_counter_vct3_carry__1_i_2_n_0\
    );
\packet_counter_vct3_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^file_dimension\(9),
      O => \packet_counter_vct3_carry__1_i_3_n_0\
    );
\packet_counter_vct3_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^file_dimension\(8),
      O => \packet_counter_vct3_carry__1_i_4_n_0\
    );
\packet_counter_vct3_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct3_carry__1_n_0\,
      CO(3) => \packet_counter_vct3_carry__2_n_0\,
      CO(2) => \packet_counter_vct3_carry__2_n_1\,
      CO(1) => \packet_counter_vct3_carry__2_n_2\,
      CO(0) => \packet_counter_vct3_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(14 downto 11),
      O(3 downto 0) => packet_counter_vct3(15 downto 12),
      S(3) => \packet_counter_vct3_carry__2_i_1_n_0\,
      S(2) => \packet_counter_vct3_carry__2_i_2_n_0\,
      S(1) => \packet_counter_vct3_carry__2_i_3_n_0\,
      S(0) => \packet_counter_vct3_carry__2_i_4_n_0\
    );
\packet_counter_vct3_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(14),
      I1 => \^file_dimension\(15),
      O => \packet_counter_vct3_carry__2_i_1_n_0\
    );
\packet_counter_vct3_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^file_dimension\(14),
      O => \packet_counter_vct3_carry__2_i_2_n_0\
    );
\packet_counter_vct3_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^file_dimension\(13),
      O => \packet_counter_vct3_carry__2_i_3_n_0\
    );
\packet_counter_vct3_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(11),
      I1 => \^file_dimension\(12),
      O => \packet_counter_vct3_carry__2_i_4_n_0\
    );
\packet_counter_vct3_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct3_carry__2_n_0\,
      CO(3) => \packet_counter_vct3_carry__3_n_0\,
      CO(2) => \packet_counter_vct3_carry__3_n_1\,
      CO(1) => \packet_counter_vct3_carry__3_n_2\,
      CO(0) => \packet_counter_vct3_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(18 downto 15),
      O(3 downto 0) => packet_counter_vct3(19 downto 16),
      S(3) => \packet_counter_vct3_carry__3_i_1_n_0\,
      S(2) => \packet_counter_vct3_carry__3_i_2_n_0\,
      S(1) => \packet_counter_vct3_carry__3_i_3_n_0\,
      S(0) => \packet_counter_vct3_carry__3_i_4_n_0\
    );
\packet_counter_vct3_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(18),
      I1 => \^file_dimension\(19),
      O => \packet_counter_vct3_carry__3_i_1_n_0\
    );
\packet_counter_vct3_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(17),
      I1 => \^file_dimension\(18),
      O => \packet_counter_vct3_carry__3_i_2_n_0\
    );
\packet_counter_vct3_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(16),
      I1 => \^file_dimension\(17),
      O => \packet_counter_vct3_carry__3_i_3_n_0\
    );
\packet_counter_vct3_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(15),
      I1 => \^file_dimension\(16),
      O => \packet_counter_vct3_carry__3_i_4_n_0\
    );
\packet_counter_vct3_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct3_carry__3_n_0\,
      CO(3) => \packet_counter_vct3_carry__4_n_0\,
      CO(2) => \packet_counter_vct3_carry__4_n_1\,
      CO(1) => \packet_counter_vct3_carry__4_n_2\,
      CO(0) => \packet_counter_vct3_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(22 downto 19),
      O(3 downto 0) => packet_counter_vct3(23 downto 20),
      S(3) => \packet_counter_vct3_carry__4_i_1_n_0\,
      S(2) => \packet_counter_vct3_carry__4_i_2_n_0\,
      S(1) => \packet_counter_vct3_carry__4_i_3_n_0\,
      S(0) => \packet_counter_vct3_carry__4_i_4_n_0\
    );
\packet_counter_vct3_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(22),
      I1 => \^file_dimension\(23),
      O => \packet_counter_vct3_carry__4_i_1_n_0\
    );
\packet_counter_vct3_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(21),
      I1 => \^file_dimension\(22),
      O => \packet_counter_vct3_carry__4_i_2_n_0\
    );
\packet_counter_vct3_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(20),
      I1 => \^file_dimension\(21),
      O => \packet_counter_vct3_carry__4_i_3_n_0\
    );
\packet_counter_vct3_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(19),
      I1 => \^file_dimension\(20),
      O => \packet_counter_vct3_carry__4_i_4_n_0\
    );
\packet_counter_vct3_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct3_carry__4_n_0\,
      CO(3) => \packet_counter_vct3_carry__5_n_0\,
      CO(2) => \packet_counter_vct3_carry__5_n_1\,
      CO(1) => \packet_counter_vct3_carry__5_n_2\,
      CO(0) => \packet_counter_vct3_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(26 downto 23),
      O(3 downto 0) => packet_counter_vct3(27 downto 24),
      S(3) => \packet_counter_vct3_carry__5_i_1_n_0\,
      S(2) => \packet_counter_vct3_carry__5_i_2_n_0\,
      S(1) => \packet_counter_vct3_carry__5_i_3_n_0\,
      S(0) => \packet_counter_vct3_carry__5_i_4_n_0\
    );
\packet_counter_vct3_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(26),
      I1 => \^file_dimension\(27),
      O => \packet_counter_vct3_carry__5_i_1_n_0\
    );
\packet_counter_vct3_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(25),
      I1 => \^file_dimension\(26),
      O => \packet_counter_vct3_carry__5_i_2_n_0\
    );
\packet_counter_vct3_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(24),
      I1 => \^file_dimension\(25),
      O => \packet_counter_vct3_carry__5_i_3_n_0\
    );
\packet_counter_vct3_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(23),
      I1 => \^file_dimension\(24),
      O => \packet_counter_vct3_carry__5_i_4_n_0\
    );
\packet_counter_vct3_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct3_carry__5_n_0\,
      CO(3) => \NLW_packet_counter_vct3_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \packet_counter_vct3_carry__6_n_1\,
      CO(1) => \packet_counter_vct3_carry__6_n_2\,
      CO(0) => \packet_counter_vct3_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^q\(29 downto 27),
      O(3 downto 0) => packet_counter_vct3(31 downto 28),
      S(3) => \packet_counter_vct3_carry__6_i_1_n_0\,
      S(2) => \packet_counter_vct3_carry__6_i_2_n_0\,
      S(1) => \packet_counter_vct3_carry__6_i_3_n_0\,
      S(0) => \packet_counter_vct3_carry__6_i_4_n_0\
    );
\packet_counter_vct3_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(30),
      I1 => \^file_dimension\(31),
      O => \packet_counter_vct3_carry__6_i_1_n_0\
    );
\packet_counter_vct3_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(29),
      I1 => \^file_dimension\(30),
      O => \packet_counter_vct3_carry__6_i_2_n_0\
    );
\packet_counter_vct3_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(28),
      I1 => \^file_dimension\(29),
      O => \packet_counter_vct3_carry__6_i_3_n_0\
    );
\packet_counter_vct3_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(27),
      I1 => \^file_dimension\(28),
      O => \packet_counter_vct3_carry__6_i_4_n_0\
    );
packet_counter_vct3_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^file_dimension\(3),
      O => packet_counter_vct3_carry_i_1_n_0
    );
packet_counter_vct3_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^file_dimension\(2),
      O => packet_counter_vct3_carry_i_2_n_0
    );
packet_counter_vct3_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^file_dimension\(1),
      O => packet_counter_vct3_carry_i_3_n_0
    );
packet_counter_vct3_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^file_dimension\(0),
      O => p_0_in(0)
    );
\packet_counter_vct[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(10),
      O => \packet_counter_vct[10]_i_1_n_0\
    );
\packet_counter_vct[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(11),
      O => \packet_counter_vct[11]_i_1_n_0\
    );
\packet_counter_vct[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(12),
      O => \packet_counter_vct[12]_i_1_n_0\
    );
\packet_counter_vct[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(13),
      O => \packet_counter_vct[13]_i_1_n_0\
    );
\packet_counter_vct[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(14),
      O => \packet_counter_vct[14]_i_1_n_0\
    );
\packet_counter_vct[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(15),
      O => \packet_counter_vct[15]_i_1_n_0\
    );
\packet_counter_vct[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(16),
      O => \packet_counter_vct[16]_i_1_n_0\
    );
\packet_counter_vct[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(17),
      O => \packet_counter_vct[17]_i_1_n_0\
    );
\packet_counter_vct[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(18),
      O => \packet_counter_vct[18]_i_1_n_0\
    );
\packet_counter_vct[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(19),
      O => \packet_counter_vct[19]_i_1_n_0\
    );
\packet_counter_vct[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(1),
      O => \packet_counter_vct[1]_i_1_n_0\
    );
\packet_counter_vct[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(20),
      O => \packet_counter_vct[20]_i_1_n_0\
    );
\packet_counter_vct[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(21),
      O => \packet_counter_vct[21]_i_1_n_0\
    );
\packet_counter_vct[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(22),
      O => \packet_counter_vct[22]_i_1_n_0\
    );
\packet_counter_vct[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(23),
      O => \packet_counter_vct[23]_i_1_n_0\
    );
\packet_counter_vct[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(24),
      O => \packet_counter_vct[24]_i_1_n_0\
    );
\packet_counter_vct[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(25),
      O => \packet_counter_vct[25]_i_1_n_0\
    );
\packet_counter_vct[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(26),
      O => \packet_counter_vct[26]_i_1_n_0\
    );
\packet_counter_vct[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(27),
      O => \packet_counter_vct[27]_i_1_n_0\
    );
\packet_counter_vct[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(28),
      O => \packet_counter_vct[28]_i_1_n_0\
    );
\packet_counter_vct[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(29),
      O => \packet_counter_vct[29]_i_1_n_0\
    );
\packet_counter_vct[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(2),
      O => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(30),
      O => \packet_counter_vct[30]_i_1_n_0\
    );
\packet_counter_vct[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(31),
      O => \packet_counter_vct[31]_i_1_n_0\
    );
\packet_counter_vct[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => packet_counter_vct3(13),
      I1 => packet_counter_vct3(14),
      I2 => packet_counter_vct3(11),
      I3 => packet_counter_vct3(12),
      I4 => \packet_counter_vct[31]_i_6_n_0\,
      O => \packet_counter_vct[31]_i_2_n_0\
    );
\packet_counter_vct[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => packet_counter_vct3(5),
      I1 => packet_counter_vct3(6),
      I2 => packet_counter_vct3(3),
      I3 => packet_counter_vct3(4),
      I4 => \packet_counter_vct[31]_i_7_n_0\,
      O => \packet_counter_vct[31]_i_3_n_0\
    );
\packet_counter_vct[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \packet_counter_vct[31]_i_8_n_0\,
      I1 => packet_counter_vct3(20),
      I2 => packet_counter_vct3(19),
      I3 => packet_counter_vct3(22),
      I4 => packet_counter_vct3(21),
      I5 => \packet_counter_vct[31]_i_9_n_0\,
      O => \packet_counter_vct[31]_i_4_n_0\
    );
\packet_counter_vct[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => packet_counter_vct3(16),
      I1 => packet_counter_vct3(15),
      I2 => packet_counter_vct3(18),
      I3 => packet_counter_vct3(17),
      O => \packet_counter_vct[31]_i_6_n_0\
    );
\packet_counter_vct[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => packet_counter_vct3(8),
      I1 => packet_counter_vct3(7),
      I2 => packet_counter_vct3(10),
      I3 => packet_counter_vct3(9),
      O => \packet_counter_vct[31]_i_7_n_0\
    );
\packet_counter_vct[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => packet_counter_vct3(24),
      I1 => packet_counter_vct3(23),
      I2 => packet_counter_vct3(26),
      I3 => packet_counter_vct3(25),
      O => \packet_counter_vct[31]_i_8_n_0\
    );
\packet_counter_vct[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => packet_counter_vct3(29),
      I1 => packet_counter_vct3(30),
      I2 => packet_counter_vct3(27),
      I3 => packet_counter_vct3(28),
      I4 => s00_axis_tlast,
      I5 => packet_counter_vct3(2),
      O => \packet_counter_vct[31]_i_9_n_0\
    );
\packet_counter_vct[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(3),
      O => \packet_counter_vct[3]_i_1_n_0\
    );
\packet_counter_vct[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(4),
      O => \packet_counter_vct[4]_i_1_n_0\
    );
\packet_counter_vct[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \packet_counter_vct[4]_i_3_n_0\
    );
\packet_counter_vct[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(5),
      O => \packet_counter_vct[5]_i_1_n_0\
    );
\packet_counter_vct[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(6),
      O => \packet_counter_vct[6]_i_1_n_0\
    );
\packet_counter_vct[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(7),
      O => \packet_counter_vct[7]_i_1_n_0\
    );
\packet_counter_vct[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(8),
      O => \packet_counter_vct[8]_i_1_n_0\
    );
\packet_counter_vct[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \inverted_tdata_2ndB[7]_i_2_n_0\,
      I1 => packet_counter_vct3(31),
      I2 => \packet_counter_vct[31]_i_2_n_0\,
      I3 => \packet_counter_vct[31]_i_3_n_0\,
      I4 => \packet_counter_vct[31]_i_4_n_0\,
      I5 => data0(9),
      O => \packet_counter_vct[9]_i_1_n_0\
    );
\packet_counter_vct_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[10]_i_1_n_0\,
      Q => \^q\(9),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[11]_i_1_n_0\,
      Q => \^q\(10),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[12]_i_1_n_0\,
      Q => \^q\(11),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct_reg[8]_i_2_n_0\,
      CO(3) => \packet_counter_vct_reg[12]_i_2_n_0\,
      CO(2) => \packet_counter_vct_reg[12]_i_2_n_1\,
      CO(1) => \packet_counter_vct_reg[12]_i_2_n_2\,
      CO(0) => \packet_counter_vct_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => \^q\(11 downto 8)
    );
\packet_counter_vct_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[13]_i_1_n_0\,
      Q => \^q\(12),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[14]_i_1_n_0\,
      Q => \^q\(13),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[15]_i_1_n_0\,
      Q => \^q\(14),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[16]_i_1_n_0\,
      Q => \^q\(15),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct_reg[12]_i_2_n_0\,
      CO(3) => \packet_counter_vct_reg[16]_i_2_n_0\,
      CO(2) => \packet_counter_vct_reg[16]_i_2_n_1\,
      CO(1) => \packet_counter_vct_reg[16]_i_2_n_2\,
      CO(0) => \packet_counter_vct_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => \^q\(15 downto 12)
    );
\packet_counter_vct_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[17]_i_1_n_0\,
      Q => \^q\(16),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[18]_i_1_n_0\,
      Q => \^q\(17),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[19]_i_1_n_0\,
      Q => \^q\(18),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[1]_i_1_n_0\,
      Q => \^q\(0),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[20]_i_1_n_0\,
      Q => \^q\(19),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct_reg[16]_i_2_n_0\,
      CO(3) => \packet_counter_vct_reg[20]_i_2_n_0\,
      CO(2) => \packet_counter_vct_reg[20]_i_2_n_1\,
      CO(1) => \packet_counter_vct_reg[20]_i_2_n_2\,
      CO(0) => \packet_counter_vct_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => \^q\(19 downto 16)
    );
\packet_counter_vct_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[21]_i_1_n_0\,
      Q => \^q\(20),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[22]_i_1_n_0\,
      Q => \^q\(21),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[23]_i_1_n_0\,
      Q => \^q\(22),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[24]_i_1_n_0\,
      Q => \^q\(23),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct_reg[20]_i_2_n_0\,
      CO(3) => \packet_counter_vct_reg[24]_i_2_n_0\,
      CO(2) => \packet_counter_vct_reg[24]_i_2_n_1\,
      CO(1) => \packet_counter_vct_reg[24]_i_2_n_2\,
      CO(0) => \packet_counter_vct_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => \^q\(23 downto 20)
    );
\packet_counter_vct_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[25]_i_1_n_0\,
      Q => \^q\(24),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[26]_i_1_n_0\,
      Q => \^q\(25),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[27]_i_1_n_0\,
      Q => \^q\(26),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[28]_i_1_n_0\,
      Q => \^q\(27),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct_reg[24]_i_2_n_0\,
      CO(3) => \packet_counter_vct_reg[28]_i_2_n_0\,
      CO(2) => \packet_counter_vct_reg[28]_i_2_n_1\,
      CO(1) => \packet_counter_vct_reg[28]_i_2_n_2\,
      CO(0) => \packet_counter_vct_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => \^q\(27 downto 24)
    );
\packet_counter_vct_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[29]_i_1_n_0\,
      Q => \^q\(28),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[2]_i_1_n_0\,
      Q => \^q\(1),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[30]_i_1_n_0\,
      Q => \^q\(29),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[31]_i_1_n_0\,
      Q => \^q\(30),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[31]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_packet_counter_vct_reg[31]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \packet_counter_vct_reg[31]_i_5_n_2\,
      CO(0) => \packet_counter_vct_reg[31]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_packet_counter_vct_reg[31]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => \^q\(30 downto 28)
    );
\packet_counter_vct_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[3]_i_1_n_0\,
      Q => \^q\(2),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[4]_i_1_n_0\,
      Q => \^q\(3),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \packet_counter_vct_reg[4]_i_2_n_0\,
      CO(2) => \packet_counter_vct_reg[4]_i_2_n_1\,
      CO(1) => \packet_counter_vct_reg[4]_i_2_n_2\,
      CO(0) => \packet_counter_vct_reg[4]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^q\(1),
      DI(0) => '0',
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 2) => \^q\(3 downto 2),
      S(1) => \packet_counter_vct[4]_i_3_n_0\,
      S(0) => \^q\(0)
    );
\packet_counter_vct_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[5]_i_1_n_0\,
      Q => \^q\(4),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[6]_i_1_n_0\,
      Q => \^q\(5),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[7]_i_1_n_0\,
      Q => \^q\(6),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[8]_i_1_n_0\,
      Q => \^q\(7),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\packet_counter_vct_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct_reg[4]_i_2_n_0\,
      CO(3) => \packet_counter_vct_reg[8]_i_2_n_0\,
      CO(2) => \packet_counter_vct_reg[8]_i_2_n_1\,
      CO(1) => \packet_counter_vct_reg[8]_i_2_n_2\,
      CO(0) => \packet_counter_vct_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => \^q\(7 downto 4)
    );
\packet_counter_vct_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct[9]_i_1_n_0\,
      Q => \^q\(8),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI4Stream_Inverter is
  port (
    counter : out STD_LOGIC_VECTOR ( 30 downto 0 );
    file_dimension : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    resetn : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI4Stream_Inverter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI4Stream_Inverter is
begin
Inst_Inverter: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Inverter
     port map (
      Q(30 downto 0) => counter(30 downto 0),
      clk => clk,
      file_dimension(31 downto 0) => file_dimension(31 downto 0),
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      resetn => resetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    resetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    counter : out STD_LOGIC_VECTOR ( 31 downto 0 );
    file_dimension : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "S7_AXI4_Stream_Inverter_0_0,AXI4Stream_Inverter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "AXI4Stream_Inverter,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^counter\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^m00_axis_tready\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF S00_AXIS:M00_AXIS, ASSOCIATED_RESET resetn:counter:file_dimension, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute x_interface_info of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute x_interface_info of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute x_interface_info of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute x_interface_parameter of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute x_interface_info of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute x_interface_info of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute x_interface_info of counter : signal is "xilinx.com:signal:data:1.0 counter DATA";
  attribute x_interface_parameter of counter : signal is "XIL_INTERFACENAME counter, LAYERED_METADATA undef";
  attribute x_interface_info of file_dimension : signal is "xilinx.com:signal:data:1.0 file_dimension DATA";
  attribute x_interface_parameter of file_dimension : signal is "XIL_INTERFACENAME file_dimension, LAYERED_METADATA undef";
  attribute x_interface_info of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute x_interface_parameter of m00_axis_tdata : signal is "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute x_interface_parameter of s00_axis_tdata : signal is "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN S7_util_ds_buf_0_0_IBUF_OUT, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  \^m00_axis_tready\ <= m00_axis_tready;
  counter(31 downto 1) <= \^counter\(31 downto 1);
  counter(0) <= \<const0>\;
  s00_axis_tready <= \^m00_axis_tready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI4Stream_Inverter
     port map (
      clk => clk,
      counter(30 downto 0) => \^counter\(31 downto 1),
      file_dimension(31 downto 0) => file_dimension(31 downto 0),
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => \^m00_axis_tready\,
      m00_axis_tvalid => m00_axis_tvalid,
      resetn => resetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
