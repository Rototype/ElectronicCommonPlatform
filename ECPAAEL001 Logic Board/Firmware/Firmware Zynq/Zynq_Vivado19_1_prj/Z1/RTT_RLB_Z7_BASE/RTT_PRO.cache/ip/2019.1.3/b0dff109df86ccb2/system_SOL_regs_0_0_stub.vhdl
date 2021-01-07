-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Mon May 11 12:37:54 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_SOL_regs_0_0_stub.vhdl
-- Design      : system_SOL_regs_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    SOL0_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL0_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL0_run : out STD_LOGIC;
    SOL0_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL0_vld_in : in STD_LOGIC;
    SOL0_vld_out : out STD_LOGIC;
    SOL1_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL1_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL1_run : out STD_LOGIC;
    SOL1_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL1_vld_in : in STD_LOGIC;
    SOL1_vld_out : out STD_LOGIC;
    SOL2_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL2_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL2_run : out STD_LOGIC;
    SOL2_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL2_vld_in : in STD_LOGIC;
    SOL2_vld_out : out STD_LOGIC;
    SOL3_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL3_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL3_run : out STD_LOGIC;
    SOL3_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL3_vld_in : in STD_LOGIC;
    SOL3_vld_out : out STD_LOGIC;
    SOL4_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL4_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL4_run : out STD_LOGIC;
    SOL4_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL4_vld_in : in STD_LOGIC;
    SOL4_vld_out : out STD_LOGIC;
    SOL5_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL5_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL5_run : out STD_LOGIC;
    SOL5_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL5_vld_in : in STD_LOGIC;
    SOL5_vld_out : out STD_LOGIC;
    SOL6_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL6_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL6_run : out STD_LOGIC;
    SOL6_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL6_vld_in : in STD_LOGIC;
    SOL6_vld_out : out STD_LOGIC;
    SOL7_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL7_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL7_run : out STD_LOGIC;
    SOL7_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL7_vld_in : in STD_LOGIC;
    SOL7_vld_out : out STD_LOGIC;
    SOL8_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL8_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL8_run : out STD_LOGIC;
    SOL8_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL8_vld_in : in STD_LOGIC;
    SOL8_vld_out : out STD_LOGIC;
    SOL9_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL9_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL9_run : out STD_LOGIC;
    SOL9_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL9_vld_in : in STD_LOGIC;
    SOL9_vld_out : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SOL0_pwm_val[7:0],SOL0_time_full[10:0],SOL0_run,SOL0_status[1:0],SOL0_vld_in,SOL0_vld_out,SOL1_pwm_val[7:0],SOL1_time_full[10:0],SOL1_run,SOL1_status[1:0],SOL1_vld_in,SOL1_vld_out,SOL2_pwm_val[7:0],SOL2_time_full[10:0],SOL2_run,SOL2_status[1:0],SOL2_vld_in,SOL2_vld_out,SOL3_pwm_val[7:0],SOL3_time_full[10:0],SOL3_run,SOL3_status[1:0],SOL3_vld_in,SOL3_vld_out,SOL4_pwm_val[7:0],SOL4_time_full[10:0],SOL4_run,SOL4_status[1:0],SOL4_vld_in,SOL4_vld_out,SOL5_pwm_val[7:0],SOL5_time_full[10:0],SOL5_run,SOL5_status[1:0],SOL5_vld_in,SOL5_vld_out,SOL6_pwm_val[7:0],SOL6_time_full[10:0],SOL6_run,SOL6_status[1:0],SOL6_vld_in,SOL6_vld_out,SOL7_pwm_val[7:0],SOL7_time_full[10:0],SOL7_run,SOL7_status[1:0],SOL7_vld_in,SOL7_vld_out,SOL8_pwm_val[7:0],SOL8_time_full[10:0],SOL8_run,SOL8_status[1:0],SOL8_vld_in,SOL8_vld_out,SOL9_pwm_val[7:0],SOL9_time_full[10:0],SOL9_run,SOL9_status[1:0],SOL9_vld_in,SOL9_vld_out,s00_axi_awaddr[7:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[7:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "SOL_regs_v1_0,Vivado 2019.1.3";
begin
end;
