-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon May  3 09:46:44 2021
-- Host        : LAPTOP-21897QU1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/MW/RTT/VVD/Z/Z1/RTT_RLB_Z7_BASE/RTT_PRO.srcs/sources_1/bd/system/ip/system_AXI4Stream_Inverter_0_0/system_AXI4Stream_Inverter_0_0_sim_netlist.vhdl
-- Design      : system_AXI4Stream_Inverter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z015clg485-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_AXI4Stream_Inverter_0_0_Inverter is
  port (
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_AXI4Stream_Inverter_0_0_Inverter : entity is "Inverter";
end system_AXI4Stream_Inverter_0_0_Inverter;

architecture STRUCTURE of system_AXI4Stream_Inverter_0_0_Inverter is
  signal image_length_vct : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \image_length_vct[15]_i_1_n_0\ : STD_LOGIC;
  signal \image_length_vct[31]_i_1_n_0\ : STD_LOGIC;
  signal \image_length_vct[31]_i_2_n_0\ : STD_LOGIC;
  signal \image_length_vct[31]_i_3_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[0]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[1]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[2]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[3]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[4]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[5]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[6]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_2ndB[7]_i_1_n_0\ : STD_LOGIC;
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
  signal \inverted_tdata_MSB[7]_i_1_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[7]_i_4_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[7]_i_5_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[7]_i_6_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[7]_i_7_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[7]_i_8_n_0\ : STD_LOGIC;
  signal \inverted_tdata_MSB[7]_i_9_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \packet_counter_vct2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__0_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__0_n_1\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__0_n_2\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__0_n_3\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__0_n_4\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__0_n_5\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__0_n_6\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__0_n_7\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__1_n_1\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__1_n_2\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__1_n_3\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__1_n_4\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__1_n_5\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__1_n_6\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__1_n_7\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__2_n_1\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__2_n_2\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__2_n_3\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__2_n_4\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__2_n_5\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__2_n_6\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__2_n_7\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__3_n_1\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__3_n_2\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__3_n_3\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__3_n_4\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__3_n_5\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__3_n_6\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__3_n_7\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__4_n_1\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__4_n_2\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__4_n_3\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__4_n_4\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__4_n_5\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__4_n_6\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__4_n_7\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__5_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__5_n_1\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__5_n_2\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__5_n_3\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__5_n_4\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__5_n_5\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__5_n_6\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__5_n_7\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__6_n_1\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__6_n_2\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__6_n_3\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__6_n_4\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__6_n_5\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__6_n_6\ : STD_LOGIC;
  signal \packet_counter_vct2_carry__6_n_7\ : STD_LOGIC;
  signal packet_counter_vct2_carry_i_1_n_0 : STD_LOGIC;
  signal packet_counter_vct2_carry_i_2_n_0 : STD_LOGIC;
  signal packet_counter_vct2_carry_n_0 : STD_LOGIC;
  signal packet_counter_vct2_carry_n_1 : STD_LOGIC;
  signal packet_counter_vct2_carry_n_2 : STD_LOGIC;
  signal packet_counter_vct2_carry_n_3 : STD_LOGIC;
  signal packet_counter_vct2_carry_n_4 : STD_LOGIC;
  signal packet_counter_vct2_carry_n_5 : STD_LOGIC;
  signal \packet_counter_vct[2]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[2]_i_3_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[2]_i_4_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[2]_i_5_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[2]_i_6_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[2]_i_7_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[2]_i_8_n_0\ : STD_LOGIC;
  signal \packet_counter_vct[2]_i_9_n_0\ : STD_LOGIC;
  signal packet_counter_vct_reg : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \packet_counter_vct_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \packet_counter_vct_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \packet_counter_vct_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \packet_counter_vct_reg[10]_i_1_n_4\ : STD_LOGIC;
  signal \packet_counter_vct_reg[10]_i_1_n_5\ : STD_LOGIC;
  signal \packet_counter_vct_reg[10]_i_1_n_6\ : STD_LOGIC;
  signal \packet_counter_vct_reg[10]_i_1_n_7\ : STD_LOGIC;
  signal \packet_counter_vct_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \packet_counter_vct_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \packet_counter_vct_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \packet_counter_vct_reg[14]_i_1_n_4\ : STD_LOGIC;
  signal \packet_counter_vct_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \packet_counter_vct_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \packet_counter_vct_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \packet_counter_vct_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct_reg[18]_i_1_n_1\ : STD_LOGIC;
  signal \packet_counter_vct_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \packet_counter_vct_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \packet_counter_vct_reg[18]_i_1_n_4\ : STD_LOGIC;
  signal \packet_counter_vct_reg[18]_i_1_n_5\ : STD_LOGIC;
  signal \packet_counter_vct_reg[18]_i_1_n_6\ : STD_LOGIC;
  signal \packet_counter_vct_reg[18]_i_1_n_7\ : STD_LOGIC;
  signal \packet_counter_vct_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct_reg[22]_i_1_n_1\ : STD_LOGIC;
  signal \packet_counter_vct_reg[22]_i_1_n_2\ : STD_LOGIC;
  signal \packet_counter_vct_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \packet_counter_vct_reg[22]_i_1_n_4\ : STD_LOGIC;
  signal \packet_counter_vct_reg[22]_i_1_n_5\ : STD_LOGIC;
  signal \packet_counter_vct_reg[22]_i_1_n_6\ : STD_LOGIC;
  signal \packet_counter_vct_reg[22]_i_1_n_7\ : STD_LOGIC;
  signal \packet_counter_vct_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct_reg[26]_i_1_n_1\ : STD_LOGIC;
  signal \packet_counter_vct_reg[26]_i_1_n_2\ : STD_LOGIC;
  signal \packet_counter_vct_reg[26]_i_1_n_3\ : STD_LOGIC;
  signal \packet_counter_vct_reg[26]_i_1_n_4\ : STD_LOGIC;
  signal \packet_counter_vct_reg[26]_i_1_n_5\ : STD_LOGIC;
  signal \packet_counter_vct_reg[26]_i_1_n_6\ : STD_LOGIC;
  signal \packet_counter_vct_reg[26]_i_1_n_7\ : STD_LOGIC;
  signal \packet_counter_vct_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_vct_reg[2]_i_2_n_1\ : STD_LOGIC;
  signal \packet_counter_vct_reg[2]_i_2_n_2\ : STD_LOGIC;
  signal \packet_counter_vct_reg[2]_i_2_n_3\ : STD_LOGIC;
  signal \packet_counter_vct_reg[2]_i_2_n_4\ : STD_LOGIC;
  signal \packet_counter_vct_reg[2]_i_2_n_5\ : STD_LOGIC;
  signal \packet_counter_vct_reg[2]_i_2_n_6\ : STD_LOGIC;
  signal \packet_counter_vct_reg[2]_i_2_n_7\ : STD_LOGIC;
  signal \packet_counter_vct_reg[30]_i_1_n_3\ : STD_LOGIC;
  signal \packet_counter_vct_reg[30]_i_1_n_6\ : STD_LOGIC;
  signal \packet_counter_vct_reg[30]_i_1_n_7\ : STD_LOGIC;
  signal \packet_counter_vct_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \packet_counter_vct_reg[6]_i_1_n_1\ : STD_LOGIC;
  signal \packet_counter_vct_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \packet_counter_vct_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \packet_counter_vct_reg[6]_i_1_n_4\ : STD_LOGIC;
  signal \packet_counter_vct_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal \packet_counter_vct_reg[6]_i_1_n_6\ : STD_LOGIC;
  signal \packet_counter_vct_reg[6]_i_1_n_7\ : STD_LOGIC;
  signal tlast_memory_i_1_n_0 : STD_LOGIC;
  signal tlast_memory_reg_n_0 : STD_LOGIC;
  signal NLW_packet_counter_vct2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_packet_counter_vct2_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_packet_counter_vct_reg[30]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_packet_counter_vct_reg[30]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \image_length_vct[31]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \packet_counter_vct[2]_i_5\ : label is "soft_lutpair0";
begin
\image_length_vct[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(3),
      I3 => packet_counter_vct_reg(4),
      I4 => \image_length_vct[31]_i_2_n_0\,
      I5 => \image_length_vct[31]_i_3_n_0\,
      O => \image_length_vct[15]_i_1_n_0\
    );
\image_length_vct[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(3),
      I3 => packet_counter_vct_reg(4),
      I4 => \image_length_vct[31]_i_2_n_0\,
      I5 => \image_length_vct[31]_i_3_n_0\,
      O => \image_length_vct[31]_i_1_n_0\
    );
\image_length_vct[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => resetn,
      I1 => packet_counter_vct_reg(5),
      O => \image_length_vct[31]_i_2_n_0\
    );
\image_length_vct[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => m00_axis_tready,
      O => \image_length_vct[31]_i_3_n_0\
    );
\image_length_vct_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \image_length_vct[15]_i_1_n_0\,
      D => s00_axis_tdata(16),
      Q => image_length_vct(0),
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
      Q => image_length_vct(10),
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
      Q => image_length_vct(11),
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
      Q => image_length_vct(12),
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
      Q => image_length_vct(13),
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
      Q => image_length_vct(14),
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
      Q => image_length_vct(15),
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
      Q => image_length_vct(16),
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
      Q => image_length_vct(17),
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
      Q => image_length_vct(18),
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
      Q => image_length_vct(19),
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
      Q => image_length_vct(1),
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
      Q => image_length_vct(20),
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
      Q => image_length_vct(21),
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
      Q => image_length_vct(22),
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
      Q => image_length_vct(23),
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
      Q => image_length_vct(24),
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
      Q => image_length_vct(25),
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
      Q => image_length_vct(26),
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
      Q => image_length_vct(27),
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
      Q => image_length_vct(28),
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
      Q => image_length_vct(29),
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
      Q => image_length_vct(2),
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
      Q => image_length_vct(30),
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
      Q => image_length_vct(31),
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
      Q => image_length_vct(3),
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
      Q => image_length_vct(4),
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
      Q => image_length_vct(5),
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
      Q => image_length_vct(6),
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
      Q => image_length_vct(7),
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
      Q => image_length_vct(8),
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
      Q => image_length_vct(9),
      R => '0'
    );
\inverted_tdata_2ndB[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(8),
      O => \inverted_tdata_2ndB[0]_i_1_n_0\
    );
\inverted_tdata_2ndB[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(9),
      O => \inverted_tdata_2ndB[1]_i_1_n_0\
    );
\inverted_tdata_2ndB[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(10),
      O => \inverted_tdata_2ndB[2]_i_1_n_0\
    );
\inverted_tdata_2ndB[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(11),
      O => \inverted_tdata_2ndB[3]_i_1_n_0\
    );
\inverted_tdata_2ndB[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(12),
      O => \inverted_tdata_2ndB[4]_i_1_n_0\
    );
\inverted_tdata_2ndB[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(13),
      O => \inverted_tdata_2ndB[5]_i_1_n_0\
    );
\inverted_tdata_2ndB[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(14),
      O => \inverted_tdata_2ndB[6]_i_1_n_0\
    );
\inverted_tdata_2ndB[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(15),
      O => \inverted_tdata_2ndB[7]_i_1_n_0\
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
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(16),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => \inverted_tdata_3rdB[0]_i_1_n_0\
    );
\inverted_tdata_3rdB[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(17),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => \inverted_tdata_3rdB[1]_i_1_n_0\
    );
\inverted_tdata_3rdB[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(18),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => \inverted_tdata_3rdB[2]_i_1_n_0\
    );
\inverted_tdata_3rdB[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(19),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => \inverted_tdata_3rdB[3]_i_1_n_0\
    );
\inverted_tdata_3rdB[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(20),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => \inverted_tdata_3rdB[4]_i_1_n_0\
    );
\inverted_tdata_3rdB[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(21),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => \inverted_tdata_3rdB[5]_i_1_n_0\
    );
\inverted_tdata_3rdB[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(22),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => \inverted_tdata_3rdB[6]_i_1_n_0\
    );
\inverted_tdata_3rdB[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(23),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
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
\inverted_tdata_LSB[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(0),
      O => \inverted_tdata_LSB[0]_i_1_n_0\
    );
\inverted_tdata_LSB[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(1),
      O => \inverted_tdata_LSB[1]_i_1_n_0\
    );
\inverted_tdata_LSB[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(2),
      O => \inverted_tdata_LSB[2]_i_1_n_0\
    );
\inverted_tdata_LSB[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(3),
      O => \inverted_tdata_LSB[3]_i_1_n_0\
    );
\inverted_tdata_LSB[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(4),
      O => \inverted_tdata_LSB[4]_i_1_n_0\
    );
\inverted_tdata_LSB[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(5),
      O => \inverted_tdata_LSB[5]_i_1_n_0\
    );
\inverted_tdata_LSB[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(6),
      O => \inverted_tdata_LSB[6]_i_1_n_0\
    );
\inverted_tdata_LSB[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007FFF80"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => packet_counter_vct_reg(4),
      I2 => packet_counter_vct_reg(3),
      I3 => \inverted_tdata_MSB[7]_i_4_n_0\,
      I4 => s00_axis_tdata(7),
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
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(24),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => p_1_in(0)
    );
\inverted_tdata_MSB[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(25),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => p_1_in(1)
    );
\inverted_tdata_MSB[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(26),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => p_1_in(2)
    );
\inverted_tdata_MSB[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(27),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => p_1_in(3)
    );
\inverted_tdata_MSB[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(28),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => p_1_in(4)
    );
\inverted_tdata_MSB[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(29),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => p_1_in(5)
    );
\inverted_tdata_MSB[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(30),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => p_1_in(6)
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
      I0 => m00_axis_tready,
      I1 => s00_axis_tvalid,
      O => inverted_tdata_MSB0
    );
\inverted_tdata_MSB[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555AAA6AAA"
    )
        port map (
      I0 => s00_axis_tdata(31),
      I1 => packet_counter_vct_reg(2),
      I2 => packet_counter_vct_reg(5),
      I3 => packet_counter_vct_reg(4),
      I4 => packet_counter_vct_reg(3),
      I5 => \inverted_tdata_MSB[7]_i_4_n_0\,
      O => p_1_in(7)
    );
\inverted_tdata_MSB[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \inverted_tdata_MSB[7]_i_5_n_0\,
      I1 => packet_counter_vct_reg(9),
      I2 => packet_counter_vct_reg(8),
      I3 => packet_counter_vct_reg(11),
      I4 => packet_counter_vct_reg(10),
      I5 => \inverted_tdata_MSB[7]_i_6_n_0\,
      O => \inverted_tdata_MSB[7]_i_4_n_0\
    );
\inverted_tdata_MSB[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \inverted_tdata_MSB[7]_i_7_n_0\,
      I1 => packet_counter_vct_reg(13),
      I2 => packet_counter_vct_reg(12),
      I3 => packet_counter_vct_reg(15),
      I4 => packet_counter_vct_reg(14),
      I5 => \inverted_tdata_MSB[7]_i_8_n_0\,
      O => \inverted_tdata_MSB[7]_i_5_n_0\
    );
\inverted_tdata_MSB[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => packet_counter_vct_reg(30),
      I1 => packet_counter_vct_reg(31),
      I2 => packet_counter_vct_reg(28),
      I3 => packet_counter_vct_reg(29),
      I4 => packet_counter_vct_reg(7),
      I5 => packet_counter_vct_reg(6),
      O => \inverted_tdata_MSB[7]_i_6_n_0\
    );
\inverted_tdata_MSB[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => packet_counter_vct_reg(17),
      I1 => packet_counter_vct_reg(16),
      I2 => packet_counter_vct_reg(19),
      I3 => packet_counter_vct_reg(18),
      O => \inverted_tdata_MSB[7]_i_7_n_0\
    );
\inverted_tdata_MSB[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => packet_counter_vct_reg(22),
      I1 => packet_counter_vct_reg(23),
      I2 => packet_counter_vct_reg(20),
      I3 => packet_counter_vct_reg(21),
      I4 => \inverted_tdata_MSB[7]_i_9_n_0\,
      O => \inverted_tdata_MSB[7]_i_8_n_0\
    );
\inverted_tdata_MSB[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => packet_counter_vct_reg(25),
      I1 => packet_counter_vct_reg(24),
      I2 => packet_counter_vct_reg(27),
      I3 => packet_counter_vct_reg(26),
      O => \inverted_tdata_MSB[7]_i_9_n_0\
    );
\inverted_tdata_MSB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => p_1_in(0),
      Q => m00_axis_tdata(24),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => p_1_in(1),
      Q => m00_axis_tdata(25),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => p_1_in(2),
      Q => m00_axis_tdata(26),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => p_1_in(3),
      Q => m00_axis_tdata(27),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => p_1_in(4),
      Q => m00_axis_tdata(28),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => p_1_in(5),
      Q => m00_axis_tdata(29),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => p_1_in(6),
      Q => m00_axis_tdata(30),
      R => \inverted_tdata_MSB[7]_i_1_n_0\
    );
\inverted_tdata_MSB_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => p_1_in(7),
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
packet_counter_vct2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => packet_counter_vct2_carry_n_0,
      CO(2) => packet_counter_vct2_carry_n_1,
      CO(1) => packet_counter_vct2_carry_n_2,
      CO(0) => packet_counter_vct2_carry_n_3,
      CYINIT => '1',
      DI(3 downto 2) => packet_counter_vct_reg(3 downto 2),
      DI(1 downto 0) => B"00",
      O(3) => packet_counter_vct2_carry_n_4,
      O(2) => packet_counter_vct2_carry_n_5,
      O(1 downto 0) => NLW_packet_counter_vct2_carry_O_UNCONNECTED(1 downto 0),
      S(3) => packet_counter_vct2_carry_i_1_n_0,
      S(2) => packet_counter_vct2_carry_i_2_n_0,
      S(1 downto 0) => p_0_in(1 downto 0)
    );
\packet_counter_vct2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => packet_counter_vct2_carry_n_0,
      CO(3) => \packet_counter_vct2_carry__0_n_0\,
      CO(2) => \packet_counter_vct2_carry__0_n_1\,
      CO(1) => \packet_counter_vct2_carry__0_n_2\,
      CO(0) => \packet_counter_vct2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => packet_counter_vct_reg(7 downto 4),
      O(3) => \packet_counter_vct2_carry__0_n_4\,
      O(2) => \packet_counter_vct2_carry__0_n_5\,
      O(1) => \packet_counter_vct2_carry__0_n_6\,
      O(0) => \packet_counter_vct2_carry__0_n_7\,
      S(3) => \packet_counter_vct2_carry__0_i_1_n_0\,
      S(2) => \packet_counter_vct2_carry__0_i_2_n_0\,
      S(1) => \packet_counter_vct2_carry__0_i_3_n_0\,
      S(0) => \packet_counter_vct2_carry__0_i_4_n_0\
    );
\packet_counter_vct2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(7),
      I1 => image_length_vct(7),
      O => \packet_counter_vct2_carry__0_i_1_n_0\
    );
\packet_counter_vct2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(6),
      I1 => image_length_vct(6),
      O => \packet_counter_vct2_carry__0_i_2_n_0\
    );
\packet_counter_vct2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(5),
      I1 => image_length_vct(5),
      O => \packet_counter_vct2_carry__0_i_3_n_0\
    );
\packet_counter_vct2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(4),
      I1 => image_length_vct(4),
      O => \packet_counter_vct2_carry__0_i_4_n_0\
    );
\packet_counter_vct2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct2_carry__0_n_0\,
      CO(3) => \packet_counter_vct2_carry__1_n_0\,
      CO(2) => \packet_counter_vct2_carry__1_n_1\,
      CO(1) => \packet_counter_vct2_carry__1_n_2\,
      CO(0) => \packet_counter_vct2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => packet_counter_vct_reg(11 downto 8),
      O(3) => \packet_counter_vct2_carry__1_n_4\,
      O(2) => \packet_counter_vct2_carry__1_n_5\,
      O(1) => \packet_counter_vct2_carry__1_n_6\,
      O(0) => \packet_counter_vct2_carry__1_n_7\,
      S(3) => \packet_counter_vct2_carry__1_i_1_n_0\,
      S(2) => \packet_counter_vct2_carry__1_i_2_n_0\,
      S(1) => \packet_counter_vct2_carry__1_i_3_n_0\,
      S(0) => \packet_counter_vct2_carry__1_i_4_n_0\
    );
\packet_counter_vct2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(11),
      I1 => image_length_vct(11),
      O => \packet_counter_vct2_carry__1_i_1_n_0\
    );
\packet_counter_vct2_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(10),
      I1 => image_length_vct(10),
      O => \packet_counter_vct2_carry__1_i_2_n_0\
    );
\packet_counter_vct2_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(9),
      I1 => image_length_vct(9),
      O => \packet_counter_vct2_carry__1_i_3_n_0\
    );
\packet_counter_vct2_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(8),
      I1 => image_length_vct(8),
      O => \packet_counter_vct2_carry__1_i_4_n_0\
    );
\packet_counter_vct2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct2_carry__1_n_0\,
      CO(3) => \packet_counter_vct2_carry__2_n_0\,
      CO(2) => \packet_counter_vct2_carry__2_n_1\,
      CO(1) => \packet_counter_vct2_carry__2_n_2\,
      CO(0) => \packet_counter_vct2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => packet_counter_vct_reg(15 downto 12),
      O(3) => \packet_counter_vct2_carry__2_n_4\,
      O(2) => \packet_counter_vct2_carry__2_n_5\,
      O(1) => \packet_counter_vct2_carry__2_n_6\,
      O(0) => \packet_counter_vct2_carry__2_n_7\,
      S(3) => \packet_counter_vct2_carry__2_i_1_n_0\,
      S(2) => \packet_counter_vct2_carry__2_i_2_n_0\,
      S(1) => \packet_counter_vct2_carry__2_i_3_n_0\,
      S(0) => \packet_counter_vct2_carry__2_i_4_n_0\
    );
\packet_counter_vct2_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(15),
      I1 => image_length_vct(15),
      O => \packet_counter_vct2_carry__2_i_1_n_0\
    );
\packet_counter_vct2_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(14),
      I1 => image_length_vct(14),
      O => \packet_counter_vct2_carry__2_i_2_n_0\
    );
\packet_counter_vct2_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(13),
      I1 => image_length_vct(13),
      O => \packet_counter_vct2_carry__2_i_3_n_0\
    );
\packet_counter_vct2_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(12),
      I1 => image_length_vct(12),
      O => \packet_counter_vct2_carry__2_i_4_n_0\
    );
\packet_counter_vct2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct2_carry__2_n_0\,
      CO(3) => \packet_counter_vct2_carry__3_n_0\,
      CO(2) => \packet_counter_vct2_carry__3_n_1\,
      CO(1) => \packet_counter_vct2_carry__3_n_2\,
      CO(0) => \packet_counter_vct2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => packet_counter_vct_reg(19 downto 16),
      O(3) => \packet_counter_vct2_carry__3_n_4\,
      O(2) => \packet_counter_vct2_carry__3_n_5\,
      O(1) => \packet_counter_vct2_carry__3_n_6\,
      O(0) => \packet_counter_vct2_carry__3_n_7\,
      S(3) => \packet_counter_vct2_carry__3_i_1_n_0\,
      S(2) => \packet_counter_vct2_carry__3_i_2_n_0\,
      S(1) => \packet_counter_vct2_carry__3_i_3_n_0\,
      S(0) => \packet_counter_vct2_carry__3_i_4_n_0\
    );
\packet_counter_vct2_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(19),
      I1 => image_length_vct(19),
      O => \packet_counter_vct2_carry__3_i_1_n_0\
    );
\packet_counter_vct2_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(18),
      I1 => image_length_vct(18),
      O => \packet_counter_vct2_carry__3_i_2_n_0\
    );
\packet_counter_vct2_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(17),
      I1 => image_length_vct(17),
      O => \packet_counter_vct2_carry__3_i_3_n_0\
    );
\packet_counter_vct2_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(16),
      I1 => image_length_vct(16),
      O => \packet_counter_vct2_carry__3_i_4_n_0\
    );
\packet_counter_vct2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct2_carry__3_n_0\,
      CO(3) => \packet_counter_vct2_carry__4_n_0\,
      CO(2) => \packet_counter_vct2_carry__4_n_1\,
      CO(1) => \packet_counter_vct2_carry__4_n_2\,
      CO(0) => \packet_counter_vct2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => packet_counter_vct_reg(23 downto 20),
      O(3) => \packet_counter_vct2_carry__4_n_4\,
      O(2) => \packet_counter_vct2_carry__4_n_5\,
      O(1) => \packet_counter_vct2_carry__4_n_6\,
      O(0) => \packet_counter_vct2_carry__4_n_7\,
      S(3) => \packet_counter_vct2_carry__4_i_1_n_0\,
      S(2) => \packet_counter_vct2_carry__4_i_2_n_0\,
      S(1) => \packet_counter_vct2_carry__4_i_3_n_0\,
      S(0) => \packet_counter_vct2_carry__4_i_4_n_0\
    );
\packet_counter_vct2_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(23),
      I1 => image_length_vct(23),
      O => \packet_counter_vct2_carry__4_i_1_n_0\
    );
\packet_counter_vct2_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(22),
      I1 => image_length_vct(22),
      O => \packet_counter_vct2_carry__4_i_2_n_0\
    );
\packet_counter_vct2_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(21),
      I1 => image_length_vct(21),
      O => \packet_counter_vct2_carry__4_i_3_n_0\
    );
\packet_counter_vct2_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(20),
      I1 => image_length_vct(20),
      O => \packet_counter_vct2_carry__4_i_4_n_0\
    );
\packet_counter_vct2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct2_carry__4_n_0\,
      CO(3) => \packet_counter_vct2_carry__5_n_0\,
      CO(2) => \packet_counter_vct2_carry__5_n_1\,
      CO(1) => \packet_counter_vct2_carry__5_n_2\,
      CO(0) => \packet_counter_vct2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => packet_counter_vct_reg(27 downto 24),
      O(3) => \packet_counter_vct2_carry__5_n_4\,
      O(2) => \packet_counter_vct2_carry__5_n_5\,
      O(1) => \packet_counter_vct2_carry__5_n_6\,
      O(0) => \packet_counter_vct2_carry__5_n_7\,
      S(3) => \packet_counter_vct2_carry__5_i_1_n_0\,
      S(2) => \packet_counter_vct2_carry__5_i_2_n_0\,
      S(1) => \packet_counter_vct2_carry__5_i_3_n_0\,
      S(0) => \packet_counter_vct2_carry__5_i_4_n_0\
    );
\packet_counter_vct2_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(27),
      I1 => image_length_vct(27),
      O => \packet_counter_vct2_carry__5_i_1_n_0\
    );
\packet_counter_vct2_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(26),
      I1 => image_length_vct(26),
      O => \packet_counter_vct2_carry__5_i_2_n_0\
    );
\packet_counter_vct2_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(25),
      I1 => image_length_vct(25),
      O => \packet_counter_vct2_carry__5_i_3_n_0\
    );
\packet_counter_vct2_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(24),
      I1 => image_length_vct(24),
      O => \packet_counter_vct2_carry__5_i_4_n_0\
    );
\packet_counter_vct2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct2_carry__5_n_0\,
      CO(3) => \NLW_packet_counter_vct2_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \packet_counter_vct2_carry__6_n_1\,
      CO(1) => \packet_counter_vct2_carry__6_n_2\,
      CO(0) => \packet_counter_vct2_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => packet_counter_vct_reg(30 downto 28),
      O(3) => \packet_counter_vct2_carry__6_n_4\,
      O(2) => \packet_counter_vct2_carry__6_n_5\,
      O(1) => \packet_counter_vct2_carry__6_n_6\,
      O(0) => \packet_counter_vct2_carry__6_n_7\,
      S(3) => \packet_counter_vct2_carry__6_i_1_n_0\,
      S(2) => \packet_counter_vct2_carry__6_i_2_n_0\,
      S(1) => \packet_counter_vct2_carry__6_i_3_n_0\,
      S(0) => \packet_counter_vct2_carry__6_i_4_n_0\
    );
\packet_counter_vct2_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(31),
      I1 => image_length_vct(31),
      O => \packet_counter_vct2_carry__6_i_1_n_0\
    );
\packet_counter_vct2_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(30),
      I1 => image_length_vct(30),
      O => \packet_counter_vct2_carry__6_i_2_n_0\
    );
\packet_counter_vct2_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(29),
      I1 => image_length_vct(29),
      O => \packet_counter_vct2_carry__6_i_3_n_0\
    );
\packet_counter_vct2_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(28),
      I1 => image_length_vct(28),
      O => \packet_counter_vct2_carry__6_i_4_n_0\
    );
packet_counter_vct2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(3),
      I1 => image_length_vct(3),
      O => packet_counter_vct2_carry_i_1_n_0
    );
packet_counter_vct2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => packet_counter_vct_reg(2),
      I1 => image_length_vct(2),
      O => packet_counter_vct2_carry_i_2_n_0
    );
packet_counter_vct2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_length_vct(1),
      O => p_0_in(1)
    );
packet_counter_vct2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => image_length_vct(0),
      O => p_0_in(0)
    );
\packet_counter_vct[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FFFFFFFF"
    )
        port map (
      I0 => \packet_counter_vct[2]_i_3_n_0\,
      I1 => \packet_counter_vct[2]_i_4_n_0\,
      I2 => \packet_counter_vct[2]_i_5_n_0\,
      I3 => \packet_counter_vct[2]_i_6_n_0\,
      I4 => \packet_counter_vct[2]_i_7_n_0\,
      I5 => resetn,
      O => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \packet_counter_vct2_carry__2_n_7\,
      I1 => \packet_counter_vct2_carry__2_n_6\,
      I2 => \packet_counter_vct2_carry__1_n_5\,
      I3 => \packet_counter_vct2_carry__1_n_4\,
      I4 => \packet_counter_vct2_carry__2_n_4\,
      I5 => \packet_counter_vct2_carry__2_n_5\,
      O => \packet_counter_vct[2]_i_3_n_0\
    );
\packet_counter_vct[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \packet_counter_vct2_carry__3_n_5\,
      I1 => \packet_counter_vct2_carry__3_n_4\,
      I2 => \packet_counter_vct2_carry__3_n_7\,
      I3 => \packet_counter_vct2_carry__3_n_6\,
      I4 => \packet_counter_vct2_carry__4_n_6\,
      I5 => \packet_counter_vct2_carry__4_n_7\,
      O => \packet_counter_vct[2]_i_4_n_0\
    );
\packet_counter_vct[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00070000"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => m00_axis_tready,
      I2 => packet_counter_vct2_carry_n_5,
      I3 => packet_counter_vct2_carry_n_4,
      I4 => \packet_counter_vct[2]_i_9_n_0\,
      O => \packet_counter_vct[2]_i_5_n_0\
    );
\packet_counter_vct[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \packet_counter_vct2_carry__6_n_5\,
      I1 => \packet_counter_vct2_carry__6_n_4\,
      I2 => \packet_counter_vct2_carry__6_n_7\,
      I3 => \packet_counter_vct2_carry__6_n_6\,
      I4 => s00_axis_tlast,
      I5 => tlast_memory_reg_n_0,
      O => \packet_counter_vct[2]_i_6_n_0\
    );
\packet_counter_vct[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \packet_counter_vct2_carry__5_n_7\,
      I1 => \packet_counter_vct2_carry__5_n_6\,
      I2 => \packet_counter_vct2_carry__4_n_5\,
      I3 => \packet_counter_vct2_carry__4_n_4\,
      I4 => \packet_counter_vct2_carry__5_n_4\,
      I5 => \packet_counter_vct2_carry__5_n_5\,
      O => \packet_counter_vct[2]_i_7_n_0\
    );
\packet_counter_vct[2]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => packet_counter_vct_reg(2),
      O => \packet_counter_vct[2]_i_8_n_0\
    );
\packet_counter_vct[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \packet_counter_vct2_carry__0_n_5\,
      I1 => \packet_counter_vct2_carry__0_n_4\,
      I2 => \packet_counter_vct2_carry__0_n_7\,
      I3 => \packet_counter_vct2_carry__0_n_6\,
      I4 => \packet_counter_vct2_carry__1_n_6\,
      I5 => \packet_counter_vct2_carry__1_n_7\,
      O => \packet_counter_vct[2]_i_9_n_0\
    );
\packet_counter_vct_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[10]_i_1_n_7\,
      Q => packet_counter_vct_reg(10),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct_reg[6]_i_1_n_0\,
      CO(3) => \packet_counter_vct_reg[10]_i_1_n_0\,
      CO(2) => \packet_counter_vct_reg[10]_i_1_n_1\,
      CO(1) => \packet_counter_vct_reg[10]_i_1_n_2\,
      CO(0) => \packet_counter_vct_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \packet_counter_vct_reg[10]_i_1_n_4\,
      O(2) => \packet_counter_vct_reg[10]_i_1_n_5\,
      O(1) => \packet_counter_vct_reg[10]_i_1_n_6\,
      O(0) => \packet_counter_vct_reg[10]_i_1_n_7\,
      S(3 downto 0) => packet_counter_vct_reg(13 downto 10)
    );
\packet_counter_vct_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[10]_i_1_n_6\,
      Q => packet_counter_vct_reg(11),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[10]_i_1_n_5\,
      Q => packet_counter_vct_reg(12),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[10]_i_1_n_4\,
      Q => packet_counter_vct_reg(13),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[14]_i_1_n_7\,
      Q => packet_counter_vct_reg(14),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[14]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct_reg[10]_i_1_n_0\,
      CO(3) => \packet_counter_vct_reg[14]_i_1_n_0\,
      CO(2) => \packet_counter_vct_reg[14]_i_1_n_1\,
      CO(1) => \packet_counter_vct_reg[14]_i_1_n_2\,
      CO(0) => \packet_counter_vct_reg[14]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \packet_counter_vct_reg[14]_i_1_n_4\,
      O(2) => \packet_counter_vct_reg[14]_i_1_n_5\,
      O(1) => \packet_counter_vct_reg[14]_i_1_n_6\,
      O(0) => \packet_counter_vct_reg[14]_i_1_n_7\,
      S(3 downto 0) => packet_counter_vct_reg(17 downto 14)
    );
\packet_counter_vct_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[14]_i_1_n_6\,
      Q => packet_counter_vct_reg(15),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[14]_i_1_n_5\,
      Q => packet_counter_vct_reg(16),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[14]_i_1_n_4\,
      Q => packet_counter_vct_reg(17),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[18]_i_1_n_7\,
      Q => packet_counter_vct_reg(18),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct_reg[14]_i_1_n_0\,
      CO(3) => \packet_counter_vct_reg[18]_i_1_n_0\,
      CO(2) => \packet_counter_vct_reg[18]_i_1_n_1\,
      CO(1) => \packet_counter_vct_reg[18]_i_1_n_2\,
      CO(0) => \packet_counter_vct_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \packet_counter_vct_reg[18]_i_1_n_4\,
      O(2) => \packet_counter_vct_reg[18]_i_1_n_5\,
      O(1) => \packet_counter_vct_reg[18]_i_1_n_6\,
      O(0) => \packet_counter_vct_reg[18]_i_1_n_7\,
      S(3 downto 0) => packet_counter_vct_reg(21 downto 18)
    );
\packet_counter_vct_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[18]_i_1_n_6\,
      Q => packet_counter_vct_reg(19),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[18]_i_1_n_5\,
      Q => packet_counter_vct_reg(20),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[18]_i_1_n_4\,
      Q => packet_counter_vct_reg(21),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[22]_i_1_n_7\,
      Q => packet_counter_vct_reg(22),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[22]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct_reg[18]_i_1_n_0\,
      CO(3) => \packet_counter_vct_reg[22]_i_1_n_0\,
      CO(2) => \packet_counter_vct_reg[22]_i_1_n_1\,
      CO(1) => \packet_counter_vct_reg[22]_i_1_n_2\,
      CO(0) => \packet_counter_vct_reg[22]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \packet_counter_vct_reg[22]_i_1_n_4\,
      O(2) => \packet_counter_vct_reg[22]_i_1_n_5\,
      O(1) => \packet_counter_vct_reg[22]_i_1_n_6\,
      O(0) => \packet_counter_vct_reg[22]_i_1_n_7\,
      S(3 downto 0) => packet_counter_vct_reg(25 downto 22)
    );
\packet_counter_vct_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[22]_i_1_n_6\,
      Q => packet_counter_vct_reg(23),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[22]_i_1_n_5\,
      Q => packet_counter_vct_reg(24),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[22]_i_1_n_4\,
      Q => packet_counter_vct_reg(25),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[26]_i_1_n_7\,
      Q => packet_counter_vct_reg(26),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[26]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct_reg[22]_i_1_n_0\,
      CO(3) => \packet_counter_vct_reg[26]_i_1_n_0\,
      CO(2) => \packet_counter_vct_reg[26]_i_1_n_1\,
      CO(1) => \packet_counter_vct_reg[26]_i_1_n_2\,
      CO(0) => \packet_counter_vct_reg[26]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \packet_counter_vct_reg[26]_i_1_n_4\,
      O(2) => \packet_counter_vct_reg[26]_i_1_n_5\,
      O(1) => \packet_counter_vct_reg[26]_i_1_n_6\,
      O(0) => \packet_counter_vct_reg[26]_i_1_n_7\,
      S(3 downto 0) => packet_counter_vct_reg(29 downto 26)
    );
\packet_counter_vct_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[26]_i_1_n_6\,
      Q => packet_counter_vct_reg(27),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[26]_i_1_n_5\,
      Q => packet_counter_vct_reg(28),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[26]_i_1_n_4\,
      Q => packet_counter_vct_reg(29),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[2]_i_2_n_7\,
      Q => packet_counter_vct_reg(2),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[2]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \packet_counter_vct_reg[2]_i_2_n_0\,
      CO(2) => \packet_counter_vct_reg[2]_i_2_n_1\,
      CO(1) => \packet_counter_vct_reg[2]_i_2_n_2\,
      CO(0) => \packet_counter_vct_reg[2]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \packet_counter_vct_reg[2]_i_2_n_4\,
      O(2) => \packet_counter_vct_reg[2]_i_2_n_5\,
      O(1) => \packet_counter_vct_reg[2]_i_2_n_6\,
      O(0) => \packet_counter_vct_reg[2]_i_2_n_7\,
      S(3 downto 1) => packet_counter_vct_reg(5 downto 3),
      S(0) => \packet_counter_vct[2]_i_8_n_0\
    );
\packet_counter_vct_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[30]_i_1_n_7\,
      Q => packet_counter_vct_reg(30),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[30]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct_reg[26]_i_1_n_0\,
      CO(3 downto 1) => \NLW_packet_counter_vct_reg[30]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \packet_counter_vct_reg[30]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_packet_counter_vct_reg[30]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \packet_counter_vct_reg[30]_i_1_n_6\,
      O(0) => \packet_counter_vct_reg[30]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => packet_counter_vct_reg(31 downto 30)
    );
\packet_counter_vct_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[30]_i_1_n_6\,
      Q => packet_counter_vct_reg(31),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[2]_i_2_n_6\,
      Q => packet_counter_vct_reg(3),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[2]_i_2_n_5\,
      Q => packet_counter_vct_reg(4),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[2]_i_2_n_4\,
      Q => packet_counter_vct_reg(5),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[6]_i_1_n_7\,
      Q => packet_counter_vct_reg(6),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_counter_vct_reg[2]_i_2_n_0\,
      CO(3) => \packet_counter_vct_reg[6]_i_1_n_0\,
      CO(2) => \packet_counter_vct_reg[6]_i_1_n_1\,
      CO(1) => \packet_counter_vct_reg[6]_i_1_n_2\,
      CO(0) => \packet_counter_vct_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \packet_counter_vct_reg[6]_i_1_n_4\,
      O(2) => \packet_counter_vct_reg[6]_i_1_n_5\,
      O(1) => \packet_counter_vct_reg[6]_i_1_n_6\,
      O(0) => \packet_counter_vct_reg[6]_i_1_n_7\,
      S(3 downto 0) => packet_counter_vct_reg(9 downto 6)
    );
\packet_counter_vct_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[6]_i_1_n_6\,
      Q => packet_counter_vct_reg(7),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[6]_i_1_n_5\,
      Q => packet_counter_vct_reg(8),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
\packet_counter_vct_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inverted_tdata_MSB0,
      D => \packet_counter_vct_reg[6]_i_1_n_4\,
      Q => packet_counter_vct_reg(9),
      R => \packet_counter_vct[2]_i_1_n_0\
    );
tlast_memory_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C888AAAA"
    )
        port map (
      I0 => tlast_memory_reg_n_0,
      I1 => s00_axis_tlast,
      I2 => s00_axis_tvalid,
      I3 => m00_axis_tready,
      I4 => resetn,
      O => tlast_memory_i_1_n_0
    );
tlast_memory_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tlast_memory_i_1_n_0,
      Q => tlast_memory_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_AXI4Stream_Inverter_0_0_AXI4Stream_Inverter is
  port (
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_AXI4Stream_Inverter_0_0_AXI4Stream_Inverter : entity is "AXI4Stream_Inverter";
end system_AXI4Stream_Inverter_0_0_AXI4Stream_Inverter;

architecture STRUCTURE of system_AXI4Stream_Inverter_0_0_AXI4Stream_Inverter is
begin
Inst_Inverter: entity work.system_AXI4Stream_Inverter_0_0_Inverter
     port map (
      clk => clk,
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
entity system_AXI4Stream_Inverter_0_0 is
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
    m00_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_AXI4Stream_Inverter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_AXI4Stream_Inverter_0_0 : entity is "system_AXI4Stream_Inverter_0_0,AXI4Stream_Inverter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_AXI4Stream_Inverter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_AXI4Stream_Inverter_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of system_AXI4Stream_Inverter_0_0 : entity is "AXI4Stream_Inverter,Vivado 2019.1";
end system_AXI4Stream_Inverter_0_0;

architecture STRUCTURE of system_AXI4Stream_Inverter_0_0 is
  signal \^m00_axis_tready\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF S00_AXIS:M00_AXIS, ASSOCIATED_RESET resetn:counter:file_dimension, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute x_interface_info of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute x_interface_info of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute x_interface_info of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute x_interface_parameter of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute x_interface_info of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute x_interface_info of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute x_interface_info of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute x_interface_parameter of m00_axis_tdata : signal is "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute x_interface_parameter of s00_axis_tdata : signal is "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  \^m00_axis_tready\ <= m00_axis_tready;
  s00_axis_tready <= \^m00_axis_tready\;
U0: entity work.system_AXI4Stream_Inverter_0_0_AXI4Stream_Inverter
     port map (
      clk => clk,
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
