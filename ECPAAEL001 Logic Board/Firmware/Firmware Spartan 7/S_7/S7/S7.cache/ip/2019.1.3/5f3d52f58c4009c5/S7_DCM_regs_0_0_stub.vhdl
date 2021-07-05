-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Sun May 10 09:46:36 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ S7_DCM_regs_0_0_stub.vhdl
-- Design      : S7_DCM_regs_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s100fgga676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    DCM0_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM0_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM0_dir : out STD_LOGIC;
    DCM0_run : out STD_LOGIC;
    DCM0_brake : out STD_LOGIC;
    DCM0_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM0_vld_in : in STD_LOGIC;
    DCM0_vld_out : out STD_LOGIC;
    DCM1_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM1_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM1_dir : out STD_LOGIC;
    DCM1_run : out STD_LOGIC;
    DCM1_brake : out STD_LOGIC;
    DCM1_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM1_vld_in : in STD_LOGIC;
    DCM1_vld_out : out STD_LOGIC;
    DCM2_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM2_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM2_dir : out STD_LOGIC;
    DCM2_run : out STD_LOGIC;
    DCM2_brake : out STD_LOGIC;
    DCM2_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM2_vld_in : in STD_LOGIC;
    DCM2_vld_out : out STD_LOGIC;
    DCM3_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM3_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM3_dir : out STD_LOGIC;
    DCM3_run : out STD_LOGIC;
    DCM3_brake : out STD_LOGIC;
    DCM3_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM3_vld_in : in STD_LOGIC;
    DCM3_vld_out : out STD_LOGIC;
    DCM4_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DCM4_pwm_frq : out STD_LOGIC_VECTOR ( 6 downto 0 );
    DCM4_dir : out STD_LOGIC;
    DCM4_run : out STD_LOGIC;
    DCM4_brake : out STD_LOGIC;
    DCM4_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DCM4_vld_in : in STD_LOGIC;
    DCM4_vld_out : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
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
attribute black_box_pad_pin of stub : architecture is "DCM0_pwm_val[7:0],DCM0_pwm_frq[6:0],DCM0_dir,DCM0_run,DCM0_brake,DCM0_status[1:0],DCM0_vld_in,DCM0_vld_out,DCM1_pwm_val[7:0],DCM1_pwm_frq[6:0],DCM1_dir,DCM1_run,DCM1_brake,DCM1_status[1:0],DCM1_vld_in,DCM1_vld_out,DCM2_pwm_val[7:0],DCM2_pwm_frq[6:0],DCM2_dir,DCM2_run,DCM2_brake,DCM2_status[1:0],DCM2_vld_in,DCM2_vld_out,DCM3_pwm_val[7:0],DCM3_pwm_frq[6:0],DCM3_dir,DCM3_run,DCM3_brake,DCM3_status[1:0],DCM3_vld_in,DCM3_vld_out,DCM4_pwm_val[7:0],DCM4_pwm_frq[6:0],DCM4_dir,DCM4_run,DCM4_brake,DCM4_status[1:0],DCM4_vld_in,DCM4_vld_out,s00_axi_awaddr[6:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[6:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "DCM_regs_v1_0,Vivado 2019.1.3";
begin
end;
