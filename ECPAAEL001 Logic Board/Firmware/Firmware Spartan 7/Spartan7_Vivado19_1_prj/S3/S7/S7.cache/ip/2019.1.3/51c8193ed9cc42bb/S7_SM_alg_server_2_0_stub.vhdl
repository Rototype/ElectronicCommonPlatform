-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Wed Jul 29 06:15:47 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_SM_alg_server_2_0_stub.vhdl
-- Design      : S7_SM_alg_server_2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    clk200 : in STD_LOGIC;
    smc_0_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_0_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_0_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_0_req : in STD_LOGIC;
    smc_0_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_0_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_0_ack : out STD_LOGIC;
    smc_1_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_1_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_1_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_1_req : in STD_LOGIC;
    smc_1_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_1_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_1_ack : out STD_LOGIC;
    smc_2_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_2_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_2_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_2_req : in STD_LOGIC;
    smc_2_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_2_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_2_ack : out STD_LOGIC;
    smc_3_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_3_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_3_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_3_req : in STD_LOGIC;
    smc_3_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_3_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_3_ack : out STD_LOGIC;
    smc_4_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_4_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_4_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_4_req : in STD_LOGIC;
    smc_4_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_4_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_4_ack : out STD_LOGIC;
    smc_5_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_5_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_5_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_5_req : in STD_LOGIC;
    smc_5_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_5_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_5_ack : out STD_LOGIC;
    smc_6_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_6_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_6_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_6_req : in STD_LOGIC;
    smc_6_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_6_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_6_ack : out STD_LOGIC;
    smc_7_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_7_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_7_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_7_req : in STD_LOGIC;
    smc_7_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_7_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_7_ack : out STD_LOGIC;
    smc_8_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_8_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_8_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_8_req : in STD_LOGIC;
    smc_8_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_8_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_8_ack : out STD_LOGIC;
    smc_9_ACC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_9_EC : in STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_9_RM : in STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_9_req : in STD_LOGIC;
    smc_9_Next_EC : out STD_LOGIC_VECTOR ( 21 downto 0 );
    smc_9_Next_RM : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smc_9_ack : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aresetn,aclk,clk200,smc_0_ACC[21:0],smc_0_EC[21:0],smc_0_RM[15:0],smc_0_req,smc_0_Next_EC[21:0],smc_0_Next_RM[15:0],smc_0_ack,smc_1_ACC[21:0],smc_1_EC[21:0],smc_1_RM[15:0],smc_1_req,smc_1_Next_EC[21:0],smc_1_Next_RM[15:0],smc_1_ack,smc_2_ACC[21:0],smc_2_EC[21:0],smc_2_RM[15:0],smc_2_req,smc_2_Next_EC[21:0],smc_2_Next_RM[15:0],smc_2_ack,smc_3_ACC[21:0],smc_3_EC[21:0],smc_3_RM[15:0],smc_3_req,smc_3_Next_EC[21:0],smc_3_Next_RM[15:0],smc_3_ack,smc_4_ACC[21:0],smc_4_EC[21:0],smc_4_RM[15:0],smc_4_req,smc_4_Next_EC[21:0],smc_4_Next_RM[15:0],smc_4_ack,smc_5_ACC[21:0],smc_5_EC[21:0],smc_5_RM[15:0],smc_5_req,smc_5_Next_EC[21:0],smc_5_Next_RM[15:0],smc_5_ack,smc_6_ACC[21:0],smc_6_EC[21:0],smc_6_RM[15:0],smc_6_req,smc_6_Next_EC[21:0],smc_6_Next_RM[15:0],smc_6_ack,smc_7_ACC[21:0],smc_7_EC[21:0],smc_7_RM[15:0],smc_7_req,smc_7_Next_EC[21:0],smc_7_Next_RM[15:0],smc_7_ack,smc_8_ACC[21:0],smc_8_EC[21:0],smc_8_RM[15:0],smc_8_req,smc_8_Next_EC[21:0],smc_8_Next_RM[15:0],smc_8_ack,smc_9_ACC[21:0],smc_9_EC[21:0],smc_9_RM[15:0],smc_9_req,smc_9_Next_EC[21:0],smc_9_Next_RM[15:0],smc_9_ack";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "SM_alg_server,Vivado 2019.1.3";
begin
end;
