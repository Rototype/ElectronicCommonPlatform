-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Wed Jul 29 06:07:49 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top add_s36_fclk_lat3 -prefix
--               add_s36_fclk_lat3_ add_s36_fclk_lat3_stub.vhdl
-- Design      : add_s36_fclk_lat3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity add_s36_fclk_lat3 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 36 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 36 downto 0 )
  );

end add_s36_fclk_lat3;

architecture stub of add_s36_fclk_lat3 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[36:0],CLK,SCLR,S[36:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_addsub_v12_0_13,Vivado 2019.1.3";
begin
end;
