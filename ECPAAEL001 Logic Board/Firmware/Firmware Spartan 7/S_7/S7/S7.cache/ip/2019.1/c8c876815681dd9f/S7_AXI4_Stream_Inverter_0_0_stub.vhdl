-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Apr 30 15:36:11 2021
-- Host        : LAPTOP-3UDEBL19 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_AXI4_Stream_Inverter_0_0_stub.vhdl
-- Design      : S7_AXI4_Stream_Inverter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "resetn,clk,s00_axis_tdata[31:0],s00_axis_tvalid,s00_axis_tlast,s00_axis_tready,m00_axis_tdata[31:0],m00_axis_tvalid,m00_axis_tlast,m00_axis_tready,counter[31:0],file_dimension[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AXI4Stream_Inverter,Vivado 2019.1";
begin
end;