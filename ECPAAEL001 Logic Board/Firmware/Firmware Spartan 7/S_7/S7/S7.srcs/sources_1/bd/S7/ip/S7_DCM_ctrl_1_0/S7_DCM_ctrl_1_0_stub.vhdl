-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Mon Feb  1 16:31:53 2021
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top S7_DCM_ctrl_1_0 -prefix
--               S7_DCM_ctrl_1_0_ S7_DCM_ctrl_1_0_stub.vhdl
-- Design      : S7_DCM_ctrl_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity S7_DCM_ctrl_1_0 is
  Port ( 
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

end S7_DCM_ctrl_1_0;

architecture stub of S7_DCM_ctrl_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,clk200,pwm_val[7:0],pwm_frq[6:0],dir,run,brake,status[1:0],vld_in,vld_out,port_pwm,port_in1,port_in2";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "DCM_ctrl,Vivado 2019.1.3";
begin
end;
