-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
-- Date        : Tue May 12 18:27:26 2020
-- Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_SOL_regs_0_0_sim_netlist.vhdl
-- Design      : system_SOL_regs_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_regs_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    SOL0_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL0_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL0_vld_out : out STD_LOGIC;
    SOL1_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL1_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL1_vld_out : out STD_LOGIC;
    SOL2_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL2_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL2_vld_out : out STD_LOGIC;
    SOL3_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL3_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL3_vld_out : out STD_LOGIC;
    SOL4_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL4_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL4_vld_out : out STD_LOGIC;
    SOL5_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL5_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL5_vld_out : out STD_LOGIC;
    SOL6_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL6_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL6_vld_out : out STD_LOGIC;
    SOL7_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL7_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL7_vld_out : out STD_LOGIC;
    SOL8_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL8_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL8_vld_out : out STD_LOGIC;
    SOL9_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL9_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL9_vld_out : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    SOL9_run : out STD_LOGIC;
    SOL8_run : out STD_LOGIC;
    SOL7_run : out STD_LOGIC;
    SOL6_run : out STD_LOGIC;
    SOL5_run : out STD_LOGIC;
    SOL4_run : out STD_LOGIC;
    SOL3_run : out STD_LOGIC;
    SOL2_run : out STD_LOGIC;
    SOL1_run : out STD_LOGIC;
    SOL0_run : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL0_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL0_vld_in : in STD_LOGIC;
    SOL1_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL1_vld_in : in STD_LOGIC;
    SOL2_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL2_vld_in : in STD_LOGIC;
    SOL3_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL3_vld_in : in STD_LOGIC;
    SOL4_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL4_vld_in : in STD_LOGIC;
    SOL5_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL5_vld_in : in STD_LOGIC;
    SOL6_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL6_vld_in : in STD_LOGIC;
    SOL7_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL7_vld_in : in STD_LOGIC;
    SOL8_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL8_vld_in : in STD_LOGIC;
    SOL9_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL9_vld_in : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_regs_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_regs_v1_0_S00_AXI is
  signal \^sol0_pwm_val\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^sol0_run\ : STD_LOGIC;
  signal \^sol0_time_full\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL0_vld_int : STD_LOGIC;
  signal SOL0_vld_int_i_2_n_0 : STD_LOGIC;
  signal \^sol1_pwm_val\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^sol1_run\ : STD_LOGIC;
  signal \^sol1_time_full\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL1_vld_int : STD_LOGIC;
  signal SOL1_vld_int_i_1_n_0 : STD_LOGIC;
  signal \^sol2_pwm_val\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^sol2_run\ : STD_LOGIC;
  signal \^sol2_time_full\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL2_vld_int : STD_LOGIC;
  signal SOL2_vld_int_i_1_n_0 : STD_LOGIC;
  signal \^sol3_pwm_val\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^sol3_run\ : STD_LOGIC;
  signal \^sol3_time_full\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL3_vld_int : STD_LOGIC;
  signal SOL3_vld_int_i_1_n_0 : STD_LOGIC;
  signal \^sol4_pwm_val\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^sol4_run\ : STD_LOGIC;
  signal \^sol4_time_full\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL4_vld_int : STD_LOGIC;
  signal SOL4_vld_int_i_1_n_0 : STD_LOGIC;
  signal \^sol5_pwm_val\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^sol5_run\ : STD_LOGIC;
  signal \^sol5_time_full\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL5_vld_int : STD_LOGIC;
  signal SOL5_vld_int_i_1_n_0 : STD_LOGIC;
  signal \^sol6_pwm_val\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^sol6_run\ : STD_LOGIC;
  signal \^sol6_time_full\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL6_vld_int : STD_LOGIC;
  signal SOL6_vld_int_i_1_n_0 : STD_LOGIC;
  signal \^sol7_pwm_val\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^sol7_run\ : STD_LOGIC;
  signal \^sol7_time_full\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL7_vld_int : STD_LOGIC;
  signal SOL7_vld_int_i_1_n_0 : STD_LOGIC;
  signal \^sol8_pwm_val\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^sol8_run\ : STD_LOGIC;
  signal \^sol8_time_full\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL8_vld_int : STD_LOGIC;
  signal SOL8_vld_int_i_1_n_0 : STD_LOGIC;
  signal \^sol9_pwm_val\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^sol9_run\ : STD_LOGIC;
  signal \^sol9_time_full\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal SOL9_vld_int : STD_LOGIC;
  signal SOL9_vld_int_1 : STD_LOGIC;
  signal SOL9_vld_int_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_18_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_18_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_11_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_12_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_13_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_14_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_15_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_16_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_17_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[10]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal slv_reg0 : STD_LOGIC;
  signal \slv_reg0[7]_i_3_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC;
  signal \slv_reg10[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg10[0]_i_2_n_0\ : STD_LOGIC;
  signal slv_reg11 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg11[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg11[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg12 : STD_LOGIC;
  signal slv_reg13 : STD_LOGIC;
  signal \slv_reg14[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg15 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg15[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg15[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg16 : STD_LOGIC;
  signal slv_reg17 : STD_LOGIC;
  signal \slv_reg18[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg18[0]_i_2_n_0\ : STD_LOGIC;
  signal slv_reg19 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg19[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg19[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg20 : STD_LOGIC;
  signal slv_reg21 : STD_LOGIC;
  signal \slv_reg22[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg23 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg23[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg23[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg24 : STD_LOGIC;
  signal slv_reg25 : STD_LOGIC;
  signal \slv_reg26[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg26[0]_i_2_n_0\ : STD_LOGIC;
  signal slv_reg27 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg27[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg27[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg28 : STD_LOGIC;
  signal slv_reg29 : STD_LOGIC;
  signal \slv_reg2[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[0]_i_3_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg30[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg31 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg31[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg31[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg32 : STD_LOGIC;
  signal slv_reg33 : STD_LOGIC;
  signal \slv_reg34[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg34[0]_i_2_n_0\ : STD_LOGIC;
  signal slv_reg35 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg35[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg35[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg36 : STD_LOGIC;
  signal slv_reg37 : STD_LOGIC;
  signal \slv_reg38[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg39 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg39[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg39[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC;
  signal slv_reg5 : STD_LOGIC;
  signal \slv_reg6[0]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg7 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg7[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[1]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg8 : STD_LOGIC;
  signal \slv_reg8[7]_i_2_n_0\ : STD_LOGIC;
  signal slv_reg9 : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg10[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_reg11[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg11[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \slv_reg14[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \slv_reg15[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg15[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \slv_reg18[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg19[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg19[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg22[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg23[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg23[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \slv_reg26[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg27[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg27[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg2[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg2[0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg30[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg31[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg31[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg34[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg35[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg35[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \slv_reg38[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg39[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg39[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \slv_reg3[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg3[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \slv_reg6[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \slv_reg7[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \slv_reg7[1]_i_1\ : label is "soft_lutpair10";
begin
  SOL0_pwm_val(7 downto 0) <= \^sol0_pwm_val\(7 downto 0);
  SOL0_run <= \^sol0_run\;
  SOL0_time_full(10 downto 0) <= \^sol0_time_full\(10 downto 0);
  SOL1_pwm_val(7 downto 0) <= \^sol1_pwm_val\(7 downto 0);
  SOL1_run <= \^sol1_run\;
  SOL1_time_full(10 downto 0) <= \^sol1_time_full\(10 downto 0);
  SOL2_pwm_val(7 downto 0) <= \^sol2_pwm_val\(7 downto 0);
  SOL2_run <= \^sol2_run\;
  SOL2_time_full(10 downto 0) <= \^sol2_time_full\(10 downto 0);
  SOL3_pwm_val(7 downto 0) <= \^sol3_pwm_val\(7 downto 0);
  SOL3_run <= \^sol3_run\;
  SOL3_time_full(10 downto 0) <= \^sol3_time_full\(10 downto 0);
  SOL4_pwm_val(7 downto 0) <= \^sol4_pwm_val\(7 downto 0);
  SOL4_run <= \^sol4_run\;
  SOL4_time_full(10 downto 0) <= \^sol4_time_full\(10 downto 0);
  SOL5_pwm_val(7 downto 0) <= \^sol5_pwm_val\(7 downto 0);
  SOL5_run <= \^sol5_run\;
  SOL5_time_full(10 downto 0) <= \^sol5_time_full\(10 downto 0);
  SOL6_pwm_val(7 downto 0) <= \^sol6_pwm_val\(7 downto 0);
  SOL6_run <= \^sol6_run\;
  SOL6_time_full(10 downto 0) <= \^sol6_time_full\(10 downto 0);
  SOL7_pwm_val(7 downto 0) <= \^sol7_pwm_val\(7 downto 0);
  SOL7_run <= \^sol7_run\;
  SOL7_time_full(10 downto 0) <= \^sol7_time_full\(10 downto 0);
  SOL8_pwm_val(7 downto 0) <= \^sol8_pwm_val\(7 downto 0);
  SOL8_run <= \^sol8_run\;
  SOL8_time_full(10 downto 0) <= \^sol8_time_full\(10 downto 0);
  SOL9_pwm_val(7 downto 0) <= \^sol9_pwm_val\(7 downto 0);
  SOL9_run <= \^sol9_run\;
  SOL9_time_full(10 downto 0) <= \^sol9_time_full\(10 downto 0);
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
SOL0_vld_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_awready\,
      I4 => s00_axi_aresetn,
      O => SOL9_vld_int_1
    );
SOL0_vld_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000111"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(5),
      I5 => p_0_in_0(2),
      O => SOL0_vld_int_i_2_n_0
    );
SOL0_vld_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL0_vld_int_i_2_n_0,
      Q => SOL0_vld_int,
      R => SOL9_vld_int_1
    );
SOL0_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL0_vld_int,
      Q => SOL0_vld_out,
      R => p_0_in
    );
SOL1_vld_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000011100000000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(5),
      I5 => p_0_in_0(2),
      O => SOL1_vld_int_i_1_n_0
    );
SOL1_vld_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL1_vld_int_i_1_n_0,
      Q => SOL1_vld_int,
      R => SOL9_vld_int_1
    );
SOL1_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL1_vld_int,
      Q => SOL1_vld_out,
      R => p_0_in
    );
SOL2_vld_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000444"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(5),
      I5 => p_0_in_0(2),
      O => SOL2_vld_int_i_1_n_0
    );
SOL2_vld_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL2_vld_int_i_1_n_0,
      Q => SOL2_vld_int,
      R => SOL9_vld_int_1
    );
SOL2_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL2_vld_int,
      Q => SOL2_vld_out,
      R => p_0_in
    );
SOL3_vld_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000044400000000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(5),
      I5 => p_0_in_0(2),
      O => SOL3_vld_int_i_1_n_0
    );
SOL3_vld_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL3_vld_int_i_1_n_0,
      Q => SOL3_vld_int,
      R => SOL9_vld_int_1
    );
SOL3_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL3_vld_int,
      Q => SOL3_vld_out,
      R => p_0_in
    );
SOL4_vld_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(5),
      I5 => p_0_in_0(2),
      O => SOL4_vld_int_i_1_n_0
    );
SOL4_vld_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL4_vld_int_i_1_n_0,
      Q => SOL4_vld_int,
      R => SOL9_vld_int_1
    );
SOL4_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL4_vld_int,
      Q => SOL4_vld_out,
      R => p_0_in
    );
SOL5_vld_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000022200000000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(5),
      I5 => p_0_in_0(2),
      O => SOL5_vld_int_i_1_n_0
    );
SOL5_vld_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL5_vld_int_i_1_n_0,
      Q => SOL5_vld_int,
      R => SOL9_vld_int_1
    );
SOL5_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL5_vld_int,
      Q => SOL5_vld_out,
      R => p_0_in
    );
SOL6_vld_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000888"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(5),
      I5 => p_0_in_0(2),
      O => SOL6_vld_int_i_1_n_0
    );
SOL6_vld_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL6_vld_int_i_1_n_0,
      Q => SOL6_vld_int,
      R => SOL9_vld_int_1
    );
SOL6_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL6_vld_int,
      Q => SOL6_vld_out,
      R => p_0_in
    );
SOL7_vld_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000088800000000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(5),
      I5 => p_0_in_0(2),
      O => SOL7_vld_int_i_1_n_0
    );
SOL7_vld_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL7_vld_int_i_1_n_0,
      Q => SOL7_vld_int,
      R => SOL9_vld_int_1
    );
SOL7_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL7_vld_int,
      Q => SOL7_vld_out,
      R => p_0_in
    );
SOL8_vld_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001110000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(5),
      I5 => p_0_in_0(2),
      O => SOL8_vld_int_i_1_n_0
    );
SOL8_vld_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL8_vld_int_i_1_n_0,
      Q => SOL8_vld_int,
      R => SOL9_vld_int_1
    );
SOL8_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL8_vld_int,
      Q => SOL8_vld_out,
      R => p_0_in
    );
SOL9_vld_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111000000000000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(5),
      I5 => p_0_in_0(2),
      O => SOL9_vld_int_i_1_n_0
    );
SOL9_vld_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL9_vld_int_i_1_n_0,
      Q => SOL9_vld_int,
      R => SOL9_vld_int_1
    );
SOL9_vld_out_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => SOL9_vld_int,
      Q => SOL9_vld_out,
      R => p_0_in
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88880FFF8888"
    )
        port map (
      I0 => \^s00_axi_bvalid\,
      I1 => s00_axi_bready,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      I4 => aw_en_reg_n_0,
      I5 => \^s_axi_awready\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => p_0_in
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(0),
      Q => sel0(0),
      S => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(1),
      Q => sel0(1),
      S => p_0_in
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(2),
      Q => sel0(2),
      S => p_0_in
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(3),
      Q => sel0(3),
      S => p_0_in
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(4),
      Q => sel0(4),
      S => p_0_in
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(5),
      Q => sel0(5),
      S => p_0_in
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => p_0_in
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => p_0_in_0(0),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => p_0_in_0(1),
      R => p_0_in
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => p_0_in_0(2),
      R => p_0_in
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => p_0_in_0(3),
      R => p_0_in
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(4),
      Q => p_0_in_0(4),
      R => p_0_in
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(5),
      Q => p_0_in_0(5),
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555C0000000"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s_axi_wready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      I4 => \^s_axi_awready\,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata_reg[0]_i_2_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata_reg[0]_i_3_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata_reg[0]_i_4_n_0\,
      O => reg_data_out(0)
    );
\axi_rdata[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg19(0),
      I1 => \^sol4_run\,
      I2 => sel0(1),
      I3 => \^sol4_time_full\(0),
      I4 => sel0(0),
      I5 => \^sol4_pwm_val\(0),
      O => \axi_rdata[0]_i_11_n_0\
    );
\axi_rdata[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg23(0),
      I1 => \^sol5_run\,
      I2 => sel0(1),
      I3 => \^sol5_time_full\(0),
      I4 => sel0(0),
      I5 => \^sol5_pwm_val\(0),
      O => \axi_rdata[0]_i_12_n_0\
    );
\axi_rdata[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg27(0),
      I1 => \^sol6_run\,
      I2 => sel0(1),
      I3 => \^sol6_time_full\(0),
      I4 => sel0(0),
      I5 => \^sol6_pwm_val\(0),
      O => \axi_rdata[0]_i_13_n_0\
    );
\axi_rdata[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg31(0),
      I1 => \^sol7_run\,
      I2 => sel0(1),
      I3 => \^sol7_time_full\(0),
      I4 => sel0(0),
      I5 => \^sol7_pwm_val\(0),
      O => \axi_rdata[0]_i_14_n_0\
    );
\axi_rdata[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => \^sol0_run\,
      I2 => sel0(1),
      I3 => \^sol0_time_full\(0),
      I4 => sel0(0),
      I5 => \^sol0_pwm_val\(0),
      O => \axi_rdata[0]_i_15_n_0\
    );
\axi_rdata[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(0),
      I1 => \^sol1_run\,
      I2 => sel0(1),
      I3 => \^sol1_time_full\(0),
      I4 => sel0(0),
      I5 => \^sol1_pwm_val\(0),
      O => \axi_rdata[0]_i_16_n_0\
    );
\axi_rdata[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg11(0),
      I1 => \^sol2_run\,
      I2 => sel0(1),
      I3 => \^sol2_time_full\(0),
      I4 => sel0(0),
      I5 => \^sol2_pwm_val\(0),
      O => \axi_rdata[0]_i_17_n_0\
    );
\axi_rdata[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg15(0),
      I1 => \^sol3_run\,
      I2 => sel0(1),
      I3 => \^sol3_time_full\(0),
      I4 => sel0(0),
      I5 => \^sol3_pwm_val\(0),
      O => \axi_rdata[0]_i_18_n_0\
    );
\axi_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg35(0),
      I1 => \^sol8_run\,
      I2 => sel0(1),
      I3 => \^sol8_time_full\(0),
      I4 => sel0(0),
      I5 => \^sol8_pwm_val\(0),
      O => \axi_rdata[0]_i_5_n_0\
    );
\axi_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg39(0),
      I1 => \^sol9_run\,
      I2 => sel0(1),
      I3 => \^sol9_time_full\(0),
      I4 => sel0(0),
      I5 => \^sol9_pwm_val\(0),
      O => \axi_rdata[0]_i_6_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[10]_i_3_n_0\,
      I1 => sel0(5),
      I2 => \axi_rdata_reg[10]_i_4_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata_reg[10]_i_5_n_0\,
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050400040"
    )
        port map (
      I0 => sel0(1),
      I1 => \^sol8_time_full\(10),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \^sol9_time_full\(10),
      I5 => sel0(3),
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[10]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B080"
    )
        port map (
      I0 => \^sol5_time_full\(10),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \^sol4_time_full\(10),
      I4 => sel0(1),
      O => \axi_rdata[10]_i_6_n_0\
    );
\axi_rdata[10]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B080"
    )
        port map (
      I0 => \^sol7_time_full\(10),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \^sol6_time_full\(10),
      I4 => sel0(1),
      O => \axi_rdata[10]_i_7_n_0\
    );
\axi_rdata[10]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B080"
    )
        port map (
      I0 => \^sol1_time_full\(10),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \^sol0_time_full\(10),
      I4 => sel0(1),
      O => \axi_rdata[10]_i_8_n_0\
    );
\axi_rdata[10]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B080"
    )
        port map (
      I0 => \^sol3_time_full\(10),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \^sol2_time_full\(10),
      I4 => sel0(1),
      O => \axi_rdata[10]_i_9_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata_reg[1]_i_2_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata_reg[1]_i_3_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata_reg[1]_i_4_n_0\,
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg19(1),
      I1 => sel0(1),
      I2 => \^sol4_time_full\(1),
      I3 => sel0(0),
      I4 => \^sol4_pwm_val\(1),
      O => \axi_rdata[1]_i_11_n_0\
    );
\axi_rdata[1]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg23(1),
      I1 => sel0(1),
      I2 => \^sol5_time_full\(1),
      I3 => sel0(0),
      I4 => \^sol5_pwm_val\(1),
      O => \axi_rdata[1]_i_12_n_0\
    );
\axi_rdata[1]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg27(1),
      I1 => sel0(1),
      I2 => \^sol6_time_full\(1),
      I3 => sel0(0),
      I4 => \^sol6_pwm_val\(1),
      O => \axi_rdata[1]_i_13_n_0\
    );
\axi_rdata[1]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg31(1),
      I1 => sel0(1),
      I2 => \^sol7_time_full\(1),
      I3 => sel0(0),
      I4 => \^sol7_pwm_val\(1),
      O => \axi_rdata[1]_i_14_n_0\
    );
\axi_rdata[1]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => sel0(1),
      I2 => \^sol0_time_full\(1),
      I3 => sel0(0),
      I4 => \^sol0_pwm_val\(1),
      O => \axi_rdata[1]_i_15_n_0\
    );
\axi_rdata[1]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg7(1),
      I1 => sel0(1),
      I2 => \^sol1_time_full\(1),
      I3 => sel0(0),
      I4 => \^sol1_pwm_val\(1),
      O => \axi_rdata[1]_i_16_n_0\
    );
\axi_rdata[1]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg11(1),
      I1 => sel0(1),
      I2 => \^sol2_time_full\(1),
      I3 => sel0(0),
      I4 => \^sol2_pwm_val\(1),
      O => \axi_rdata[1]_i_17_n_0\
    );
\axi_rdata[1]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg15(1),
      I1 => sel0(1),
      I2 => \^sol3_time_full\(1),
      I3 => sel0(0),
      I4 => \^sol3_pwm_val\(1),
      O => \axi_rdata[1]_i_18_n_0\
    );
\axi_rdata[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg35(1),
      I1 => sel0(1),
      I2 => \^sol8_time_full\(1),
      I3 => sel0(0),
      I4 => \^sol8_pwm_val\(1),
      O => \axi_rdata[1]_i_5_n_0\
    );
\axi_rdata[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg39(1),
      I1 => sel0(1),
      I2 => \^sol9_time_full\(1),
      I3 => sel0(0),
      I4 => \^sol9_pwm_val\(1),
      O => \axi_rdata[1]_i_6_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[2]_i_2_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata_reg[2]_i_3_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata_reg[2]_i_4_n_0\,
      O => reg_data_out(2)
    );
\axi_rdata[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol4_pwm_val\(2),
      I1 => sel0(0),
      I2 => \^sol4_time_full\(2),
      I3 => sel0(1),
      O => \axi_rdata[2]_i_10_n_0\
    );
\axi_rdata[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol5_pwm_val\(2),
      I1 => sel0(0),
      I2 => \^sol5_time_full\(2),
      I3 => sel0(1),
      O => \axi_rdata[2]_i_11_n_0\
    );
\axi_rdata[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol6_pwm_val\(2),
      I1 => sel0(0),
      I2 => \^sol6_time_full\(2),
      I3 => sel0(1),
      O => \axi_rdata[2]_i_12_n_0\
    );
\axi_rdata[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol7_pwm_val\(2),
      I1 => sel0(0),
      I2 => \^sol7_time_full\(2),
      I3 => sel0(1),
      O => \axi_rdata[2]_i_13_n_0\
    );
\axi_rdata[2]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol0_pwm_val\(2),
      I1 => sel0(0),
      I2 => \^sol0_time_full\(2),
      I3 => sel0(1),
      O => \axi_rdata[2]_i_14_n_0\
    );
\axi_rdata[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol1_pwm_val\(2),
      I1 => sel0(0),
      I2 => \^sol1_time_full\(2),
      I3 => sel0(1),
      O => \axi_rdata[2]_i_15_n_0\
    );
\axi_rdata[2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol2_pwm_val\(2),
      I1 => sel0(0),
      I2 => \^sol2_time_full\(2),
      I3 => sel0(1),
      O => \axi_rdata[2]_i_16_n_0\
    );
\axi_rdata[2]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol3_pwm_val\(2),
      I1 => sel0(0),
      I2 => \^sol3_time_full\(2),
      I3 => sel0(1),
      O => \axi_rdata[2]_i_17_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \^sol9_pwm_val\(2),
      I1 => sel0(0),
      I2 => \^sol9_time_full\(2),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => \axi_rdata[2]_i_5_n_0\,
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol8_pwm_val\(2),
      I1 => sel0(0),
      I2 => \^sol8_time_full\(2),
      I3 => sel0(1),
      O => \axi_rdata[2]_i_5_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[3]_i_2_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata_reg[3]_i_3_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata_reg[3]_i_4_n_0\,
      O => reg_data_out(3)
    );
\axi_rdata[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol4_pwm_val\(3),
      I1 => sel0(0),
      I2 => \^sol4_time_full\(3),
      I3 => sel0(1),
      O => \axi_rdata[3]_i_10_n_0\
    );
\axi_rdata[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol5_pwm_val\(3),
      I1 => sel0(0),
      I2 => \^sol5_time_full\(3),
      I3 => sel0(1),
      O => \axi_rdata[3]_i_11_n_0\
    );
\axi_rdata[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol6_pwm_val\(3),
      I1 => sel0(0),
      I2 => \^sol6_time_full\(3),
      I3 => sel0(1),
      O => \axi_rdata[3]_i_12_n_0\
    );
\axi_rdata[3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol7_pwm_val\(3),
      I1 => sel0(0),
      I2 => \^sol7_time_full\(3),
      I3 => sel0(1),
      O => \axi_rdata[3]_i_13_n_0\
    );
\axi_rdata[3]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol0_pwm_val\(3),
      I1 => sel0(0),
      I2 => \^sol0_time_full\(3),
      I3 => sel0(1),
      O => \axi_rdata[3]_i_14_n_0\
    );
\axi_rdata[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol1_pwm_val\(3),
      I1 => sel0(0),
      I2 => \^sol1_time_full\(3),
      I3 => sel0(1),
      O => \axi_rdata[3]_i_15_n_0\
    );
\axi_rdata[3]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol2_pwm_val\(3),
      I1 => sel0(0),
      I2 => \^sol2_time_full\(3),
      I3 => sel0(1),
      O => \axi_rdata[3]_i_16_n_0\
    );
\axi_rdata[3]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol3_pwm_val\(3),
      I1 => sel0(0),
      I2 => \^sol3_time_full\(3),
      I3 => sel0(1),
      O => \axi_rdata[3]_i_17_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \^sol9_pwm_val\(3),
      I1 => sel0(0),
      I2 => \^sol9_time_full\(3),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => \axi_rdata[3]_i_5_n_0\,
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol8_pwm_val\(3),
      I1 => sel0(0),
      I2 => \^sol8_time_full\(3),
      I3 => sel0(1),
      O => \axi_rdata[3]_i_5_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[4]_i_2_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata_reg[4]_i_3_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata_reg[4]_i_4_n_0\,
      O => reg_data_out(4)
    );
\axi_rdata[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol4_pwm_val\(4),
      I1 => sel0(0),
      I2 => \^sol4_time_full\(4),
      I3 => sel0(1),
      O => \axi_rdata[4]_i_10_n_0\
    );
\axi_rdata[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol5_pwm_val\(4),
      I1 => sel0(0),
      I2 => \^sol5_time_full\(4),
      I3 => sel0(1),
      O => \axi_rdata[4]_i_11_n_0\
    );
\axi_rdata[4]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol6_pwm_val\(4),
      I1 => sel0(0),
      I2 => \^sol6_time_full\(4),
      I3 => sel0(1),
      O => \axi_rdata[4]_i_12_n_0\
    );
\axi_rdata[4]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol7_pwm_val\(4),
      I1 => sel0(0),
      I2 => \^sol7_time_full\(4),
      I3 => sel0(1),
      O => \axi_rdata[4]_i_13_n_0\
    );
\axi_rdata[4]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol0_pwm_val\(4),
      I1 => sel0(0),
      I2 => \^sol0_time_full\(4),
      I3 => sel0(1),
      O => \axi_rdata[4]_i_14_n_0\
    );
\axi_rdata[4]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol1_pwm_val\(4),
      I1 => sel0(0),
      I2 => \^sol1_time_full\(4),
      I3 => sel0(1),
      O => \axi_rdata[4]_i_15_n_0\
    );
\axi_rdata[4]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol2_pwm_val\(4),
      I1 => sel0(0),
      I2 => \^sol2_time_full\(4),
      I3 => sel0(1),
      O => \axi_rdata[4]_i_16_n_0\
    );
\axi_rdata[4]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol3_pwm_val\(4),
      I1 => sel0(0),
      I2 => \^sol3_time_full\(4),
      I3 => sel0(1),
      O => \axi_rdata[4]_i_17_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \^sol9_pwm_val\(4),
      I1 => sel0(0),
      I2 => \^sol9_time_full\(4),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => \axi_rdata[4]_i_5_n_0\,
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol8_pwm_val\(4),
      I1 => sel0(0),
      I2 => \^sol8_time_full\(4),
      I3 => sel0(1),
      O => \axi_rdata[4]_i_5_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[5]_i_2_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata_reg[5]_i_3_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata_reg[5]_i_4_n_0\,
      O => reg_data_out(5)
    );
\axi_rdata[5]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol4_pwm_val\(5),
      I1 => sel0(0),
      I2 => \^sol4_time_full\(5),
      I3 => sel0(1),
      O => \axi_rdata[5]_i_10_n_0\
    );
\axi_rdata[5]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol5_pwm_val\(5),
      I1 => sel0(0),
      I2 => \^sol5_time_full\(5),
      I3 => sel0(1),
      O => \axi_rdata[5]_i_11_n_0\
    );
\axi_rdata[5]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol6_pwm_val\(5),
      I1 => sel0(0),
      I2 => \^sol6_time_full\(5),
      I3 => sel0(1),
      O => \axi_rdata[5]_i_12_n_0\
    );
\axi_rdata[5]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol7_pwm_val\(5),
      I1 => sel0(0),
      I2 => \^sol7_time_full\(5),
      I3 => sel0(1),
      O => \axi_rdata[5]_i_13_n_0\
    );
\axi_rdata[5]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol0_pwm_val\(5),
      I1 => sel0(0),
      I2 => \^sol0_time_full\(5),
      I3 => sel0(1),
      O => \axi_rdata[5]_i_14_n_0\
    );
\axi_rdata[5]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol1_pwm_val\(5),
      I1 => sel0(0),
      I2 => \^sol1_time_full\(5),
      I3 => sel0(1),
      O => \axi_rdata[5]_i_15_n_0\
    );
\axi_rdata[5]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol2_pwm_val\(5),
      I1 => sel0(0),
      I2 => \^sol2_time_full\(5),
      I3 => sel0(1),
      O => \axi_rdata[5]_i_16_n_0\
    );
\axi_rdata[5]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol3_pwm_val\(5),
      I1 => sel0(0),
      I2 => \^sol3_time_full\(5),
      I3 => sel0(1),
      O => \axi_rdata[5]_i_17_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \^sol9_pwm_val\(5),
      I1 => sel0(0),
      I2 => \^sol9_time_full\(5),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => \axi_rdata[5]_i_5_n_0\,
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol8_pwm_val\(5),
      I1 => sel0(0),
      I2 => \^sol8_time_full\(5),
      I3 => sel0(1),
      O => \axi_rdata[5]_i_5_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[6]_i_2_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata_reg[6]_i_3_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata_reg[6]_i_4_n_0\,
      O => reg_data_out(6)
    );
\axi_rdata[6]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol4_pwm_val\(6),
      I1 => sel0(0),
      I2 => \^sol4_time_full\(6),
      I3 => sel0(1),
      O => \axi_rdata[6]_i_10_n_0\
    );
\axi_rdata[6]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol5_pwm_val\(6),
      I1 => sel0(0),
      I2 => \^sol5_time_full\(6),
      I3 => sel0(1),
      O => \axi_rdata[6]_i_11_n_0\
    );
\axi_rdata[6]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol6_pwm_val\(6),
      I1 => sel0(0),
      I2 => \^sol6_time_full\(6),
      I3 => sel0(1),
      O => \axi_rdata[6]_i_12_n_0\
    );
\axi_rdata[6]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol7_pwm_val\(6),
      I1 => sel0(0),
      I2 => \^sol7_time_full\(6),
      I3 => sel0(1),
      O => \axi_rdata[6]_i_13_n_0\
    );
\axi_rdata[6]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol0_pwm_val\(6),
      I1 => sel0(0),
      I2 => \^sol0_time_full\(6),
      I3 => sel0(1),
      O => \axi_rdata[6]_i_14_n_0\
    );
\axi_rdata[6]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol1_pwm_val\(6),
      I1 => sel0(0),
      I2 => \^sol1_time_full\(6),
      I3 => sel0(1),
      O => \axi_rdata[6]_i_15_n_0\
    );
\axi_rdata[6]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol2_pwm_val\(6),
      I1 => sel0(0),
      I2 => \^sol2_time_full\(6),
      I3 => sel0(1),
      O => \axi_rdata[6]_i_16_n_0\
    );
\axi_rdata[6]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol3_pwm_val\(6),
      I1 => sel0(0),
      I2 => \^sol3_time_full\(6),
      I3 => sel0(1),
      O => \axi_rdata[6]_i_17_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \^sol9_pwm_val\(6),
      I1 => sel0(0),
      I2 => \^sol9_time_full\(6),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => \axi_rdata[6]_i_5_n_0\,
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol8_pwm_val\(6),
      I1 => sel0(0),
      I2 => \^sol8_time_full\(6),
      I3 => sel0(1),
      O => \axi_rdata[6]_i_5_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F004F4F0F004040"
    )
        port map (
      I0 => sel0(3),
      I1 => \axi_rdata[7]_i_2_n_0\,
      I2 => sel0(5),
      I3 => \axi_rdata_reg[7]_i_3_n_0\,
      I4 => sel0(4),
      I5 => \axi_rdata_reg[7]_i_4_n_0\,
      O => reg_data_out(7)
    );
\axi_rdata[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol4_pwm_val\(7),
      I1 => sel0(0),
      I2 => \^sol4_time_full\(7),
      I3 => sel0(1),
      O => \axi_rdata[7]_i_10_n_0\
    );
\axi_rdata[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol5_pwm_val\(7),
      I1 => sel0(0),
      I2 => \^sol5_time_full\(7),
      I3 => sel0(1),
      O => \axi_rdata[7]_i_11_n_0\
    );
\axi_rdata[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol6_pwm_val\(7),
      I1 => sel0(0),
      I2 => \^sol6_time_full\(7),
      I3 => sel0(1),
      O => \axi_rdata[7]_i_12_n_0\
    );
\axi_rdata[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol7_pwm_val\(7),
      I1 => sel0(0),
      I2 => \^sol7_time_full\(7),
      I3 => sel0(1),
      O => \axi_rdata[7]_i_13_n_0\
    );
\axi_rdata[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol0_pwm_val\(7),
      I1 => sel0(0),
      I2 => \^sol0_time_full\(7),
      I3 => sel0(1),
      O => \axi_rdata[7]_i_14_n_0\
    );
\axi_rdata[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol1_pwm_val\(7),
      I1 => sel0(0),
      I2 => \^sol1_time_full\(7),
      I3 => sel0(1),
      O => \axi_rdata[7]_i_15_n_0\
    );
\axi_rdata[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol2_pwm_val\(7),
      I1 => sel0(0),
      I2 => \^sol2_time_full\(7),
      I3 => sel0(1),
      O => \axi_rdata[7]_i_16_n_0\
    );
\axi_rdata[7]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol3_pwm_val\(7),
      I1 => sel0(0),
      I2 => \^sol3_time_full\(7),
      I3 => sel0(1),
      O => \axi_rdata[7]_i_17_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \^sol9_pwm_val\(7),
      I1 => sel0(0),
      I2 => \^sol9_time_full\(7),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => \axi_rdata[7]_i_5_n_0\,
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^sol8_pwm_val\(7),
      I1 => sel0(0),
      I2 => \^sol8_time_full\(7),
      I3 => sel0(1),
      O => \axi_rdata[7]_i_5_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => sel0(5),
      I2 => \axi_rdata_reg[8]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata_reg[8]_i_4_n_0\,
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050400040"
    )
        port map (
      I0 => sel0(1),
      I1 => \^sol8_time_full\(8),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \^sol9_time_full\(8),
      I5 => sel0(3),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B080"
    )
        port map (
      I0 => \^sol5_time_full\(8),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \^sol4_time_full\(8),
      I4 => sel0(1),
      O => \axi_rdata[8]_i_5_n_0\
    );
\axi_rdata[8]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B080"
    )
        port map (
      I0 => \^sol7_time_full\(8),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \^sol6_time_full\(8),
      I4 => sel0(1),
      O => \axi_rdata[8]_i_6_n_0\
    );
\axi_rdata[8]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B080"
    )
        port map (
      I0 => \^sol1_time_full\(8),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \^sol0_time_full\(8),
      I4 => sel0(1),
      O => \axi_rdata[8]_i_7_n_0\
    );
\axi_rdata[8]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B080"
    )
        port map (
      I0 => \^sol3_time_full\(8),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \^sol2_time_full\(8),
      I4 => sel0(1),
      O => \axi_rdata[8]_i_8_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => sel0(5),
      I2 => \axi_rdata_reg[9]_i_3_n_0\,
      I3 => sel0(4),
      I4 => \axi_rdata_reg[9]_i_4_n_0\,
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050400040"
    )
        port map (
      I0 => sel0(1),
      I1 => \^sol8_time_full\(9),
      I2 => sel0(0),
      I3 => sel0(2),
      I4 => \^sol9_time_full\(9),
      I5 => sel0(3),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B080"
    )
        port map (
      I0 => \^sol5_time_full\(9),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \^sol4_time_full\(9),
      I4 => sel0(1),
      O => \axi_rdata[9]_i_5_n_0\
    );
\axi_rdata[9]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B080"
    )
        port map (
      I0 => \^sol7_time_full\(9),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \^sol6_time_full\(9),
      I4 => sel0(1),
      O => \axi_rdata[9]_i_6_n_0\
    );
\axi_rdata[9]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B080"
    )
        port map (
      I0 => \^sol1_time_full\(9),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \^sol0_time_full\(9),
      I4 => sel0(1),
      O => \axi_rdata[9]_i_7_n_0\
    );
\axi_rdata[9]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000B080"
    )
        port map (
      I0 => \^sol3_time_full\(9),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \^sol2_time_full\(9),
      I4 => sel0(1),
      O => \axi_rdata[9]_i_8_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[0]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_17_n_0\,
      I1 => \axi_rdata[0]_i_18_n_0\,
      O => \axi_rdata_reg[0]_i_10_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_5_n_0\,
      I1 => \axi_rdata[0]_i_6_n_0\,
      O => \axi_rdata_reg[0]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[0]_i_7_n_0\,
      I1 => \axi_rdata_reg[0]_i_8_n_0\,
      O => \axi_rdata_reg[0]_i_3_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[0]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[0]_i_9_n_0\,
      I1 => \axi_rdata_reg[0]_i_10_n_0\,
      O => \axi_rdata_reg[0]_i_4_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_11_n_0\,
      I1 => \axi_rdata[0]_i_12_n_0\,
      O => \axi_rdata_reg[0]_i_7_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_13_n_0\,
      I1 => \axi_rdata[0]_i_14_n_0\,
      O => \axi_rdata_reg[0]_i_8_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[0]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_15_n_0\,
      I1 => \axi_rdata[0]_i_16_n_0\,
      O => \axi_rdata_reg[0]_i_9_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[10]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[10]_i_6_n_0\,
      I1 => \axi_rdata[10]_i_7_n_0\,
      O => \axi_rdata_reg[10]_i_4_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[10]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[10]_i_8_n_0\,
      I1 => \axi_rdata[10]_i_9_n_0\,
      O => \axi_rdata_reg[10]_i_5_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[1]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_17_n_0\,
      I1 => \axi_rdata[1]_i_18_n_0\,
      O => \axi_rdata_reg[1]_i_10_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_5_n_0\,
      I1 => \axi_rdata[1]_i_6_n_0\,
      O => \axi_rdata_reg[1]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_7_n_0\,
      I1 => \axi_rdata_reg[1]_i_8_n_0\,
      O => \axi_rdata_reg[1]_i_3_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[1]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[1]_i_9_n_0\,
      I1 => \axi_rdata_reg[1]_i_10_n_0\,
      O => \axi_rdata_reg[1]_i_4_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_11_n_0\,
      I1 => \axi_rdata[1]_i_12_n_0\,
      O => \axi_rdata_reg[1]_i_7_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_13_n_0\,
      I1 => \axi_rdata[1]_i_14_n_0\,
      O => \axi_rdata_reg[1]_i_8_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_15_n_0\,
      I1 => \axi_rdata[1]_i_16_n_0\,
      O => \axi_rdata_reg[1]_i_9_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[2]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[2]_i_6_n_0\,
      I1 => \axi_rdata_reg[2]_i_7_n_0\,
      O => \axi_rdata_reg[2]_i_3_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[2]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[2]_i_8_n_0\,
      I1 => \axi_rdata_reg[2]_i_9_n_0\,
      O => \axi_rdata_reg[2]_i_4_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_10_n_0\,
      I1 => \axi_rdata[2]_i_11_n_0\,
      O => \axi_rdata_reg[2]_i_6_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_12_n_0\,
      I1 => \axi_rdata[2]_i_13_n_0\,
      O => \axi_rdata_reg[2]_i_7_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[2]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_14_n_0\,
      I1 => \axi_rdata[2]_i_15_n_0\,
      O => \axi_rdata_reg[2]_i_8_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[2]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_16_n_0\,
      I1 => \axi_rdata[2]_i_17_n_0\,
      O => \axi_rdata_reg[2]_i_9_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[3]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[3]_i_6_n_0\,
      I1 => \axi_rdata_reg[3]_i_7_n_0\,
      O => \axi_rdata_reg[3]_i_3_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[3]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[3]_i_8_n_0\,
      I1 => \axi_rdata_reg[3]_i_9_n_0\,
      O => \axi_rdata_reg[3]_i_4_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_10_n_0\,
      I1 => \axi_rdata[3]_i_11_n_0\,
      O => \axi_rdata_reg[3]_i_6_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[3]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_12_n_0\,
      I1 => \axi_rdata[3]_i_13_n_0\,
      O => \axi_rdata_reg[3]_i_7_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[3]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_14_n_0\,
      I1 => \axi_rdata[3]_i_15_n_0\,
      O => \axi_rdata_reg[3]_i_8_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[3]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_16_n_0\,
      I1 => \axi_rdata[3]_i_17_n_0\,
      O => \axi_rdata_reg[3]_i_9_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[4]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[4]_i_6_n_0\,
      I1 => \axi_rdata_reg[4]_i_7_n_0\,
      O => \axi_rdata_reg[4]_i_3_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[4]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[4]_i_8_n_0\,
      I1 => \axi_rdata_reg[4]_i_9_n_0\,
      O => \axi_rdata_reg[4]_i_4_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[4]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_10_n_0\,
      I1 => \axi_rdata[4]_i_11_n_0\,
      O => \axi_rdata_reg[4]_i_6_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[4]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_12_n_0\,
      I1 => \axi_rdata[4]_i_13_n_0\,
      O => \axi_rdata_reg[4]_i_7_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[4]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_14_n_0\,
      I1 => \axi_rdata[4]_i_15_n_0\,
      O => \axi_rdata_reg[4]_i_8_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[4]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_16_n_0\,
      I1 => \axi_rdata[4]_i_17_n_0\,
      O => \axi_rdata_reg[4]_i_9_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[5]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[5]_i_6_n_0\,
      I1 => \axi_rdata_reg[5]_i_7_n_0\,
      O => \axi_rdata_reg[5]_i_3_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[5]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[5]_i_8_n_0\,
      I1 => \axi_rdata_reg[5]_i_9_n_0\,
      O => \axi_rdata_reg[5]_i_4_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[5]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_10_n_0\,
      I1 => \axi_rdata[5]_i_11_n_0\,
      O => \axi_rdata_reg[5]_i_6_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[5]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_12_n_0\,
      I1 => \axi_rdata[5]_i_13_n_0\,
      O => \axi_rdata_reg[5]_i_7_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[5]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_14_n_0\,
      I1 => \axi_rdata[5]_i_15_n_0\,
      O => \axi_rdata_reg[5]_i_8_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[5]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_16_n_0\,
      I1 => \axi_rdata[5]_i_17_n_0\,
      O => \axi_rdata_reg[5]_i_9_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[6]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[6]_i_6_n_0\,
      I1 => \axi_rdata_reg[6]_i_7_n_0\,
      O => \axi_rdata_reg[6]_i_3_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[6]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[6]_i_8_n_0\,
      I1 => \axi_rdata_reg[6]_i_9_n_0\,
      O => \axi_rdata_reg[6]_i_4_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[6]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_10_n_0\,
      I1 => \axi_rdata[6]_i_11_n_0\,
      O => \axi_rdata_reg[6]_i_6_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[6]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_12_n_0\,
      I1 => \axi_rdata[6]_i_13_n_0\,
      O => \axi_rdata_reg[6]_i_7_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[6]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_14_n_0\,
      I1 => \axi_rdata[6]_i_15_n_0\,
      O => \axi_rdata_reg[6]_i_8_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[6]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_16_n_0\,
      I1 => \axi_rdata[6]_i_17_n_0\,
      O => \axi_rdata_reg[6]_i_9_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[7]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[7]_i_6_n_0\,
      I1 => \axi_rdata_reg[7]_i_7_n_0\,
      O => \axi_rdata_reg[7]_i_3_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[7]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \axi_rdata_reg[7]_i_8_n_0\,
      I1 => \axi_rdata_reg[7]_i_9_n_0\,
      O => \axi_rdata_reg[7]_i_4_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[7]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_10_n_0\,
      I1 => \axi_rdata[7]_i_11_n_0\,
      O => \axi_rdata_reg[7]_i_6_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[7]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_12_n_0\,
      I1 => \axi_rdata[7]_i_13_n_0\,
      O => \axi_rdata_reg[7]_i_7_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[7]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_14_n_0\,
      I1 => \axi_rdata[7]_i_15_n_0\,
      O => \axi_rdata_reg[7]_i_8_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[7]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_16_n_0\,
      I1 => \axi_rdata[7]_i_17_n_0\,
      O => \axi_rdata_reg[7]_i_9_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[8]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_5_n_0\,
      I1 => \axi_rdata[8]_i_6_n_0\,
      O => \axi_rdata_reg[8]_i_3_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[8]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_7_n_0\,
      I1 => \axi_rdata[8]_i_8_n_0\,
      O => \axi_rdata_reg[8]_i_4_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => p_0_in
    );
\axi_rdata_reg[9]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[9]_i_5_n_0\,
      I1 => \axi_rdata[9]_i_6_n_0\,
      O => \axi_rdata_reg[9]_i_3_n_0\,
      S => sel0(3)
    );
\axi_rdata_reg[9]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[9]_i_7_n_0\,
      I1 => \axi_rdata[9]_i_8_n_0\,
      O => \axi_rdata_reg[9]_i_4_n_0\,
      S => sel0(3)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => p_0_in
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => p_0_in
    );
\slv_reg0[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[7]_i_3_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg0
    );
\slv_reg0[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => \^s_axi_awready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_wready\,
      I5 => p_0_in_0(3),
      O => \slv_reg0[7]_i_3_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(0),
      Q => \^sol0_pwm_val\(0),
      R => p_0_in
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(1),
      Q => \^sol0_pwm_val\(1),
      R => p_0_in
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(2),
      Q => \^sol0_pwm_val\(2),
      R => p_0_in
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(3),
      Q => \^sol0_pwm_val\(3),
      R => p_0_in
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(4),
      Q => \^sol0_pwm_val\(4),
      R => p_0_in
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(5),
      Q => \^sol0_pwm_val\(5),
      R => p_0_in
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(6),
      Q => \^sol0_pwm_val\(6),
      R => p_0_in
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg0,
      D => s00_axi_wdata(7),
      Q => \^sol0_pwm_val\(7),
      R => p_0_in
    );
\slv_reg10[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg10[0]_i_2_n_0\,
      I2 => p_0_in_0(2),
      I3 => \^sol2_run\,
      O => \slv_reg10[0]_i_1_n_0\
    );
\slv_reg10[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(3),
      I2 => \slv_reg2[0]_i_3_n_0\,
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(4),
      O => \slv_reg10[0]_i_2_n_0\
    );
\slv_reg10_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg10[0]_i_1_n_0\,
      Q => \^sol2_run\,
      R => p_0_in
    );
\slv_reg11[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL2_status(0),
      I1 => SOL2_vld_in,
      I2 => slv_reg11(0),
      O => \slv_reg11[0]_i_1_n_0\
    );
\slv_reg11[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL2_status(1),
      I1 => SOL2_vld_in,
      I2 => slv_reg11(1),
      O => \slv_reg11[1]_i_1_n_0\
    );
\slv_reg11_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg11[0]_i_1_n_0\,
      Q => slv_reg11(0),
      R => p_0_in
    );
\slv_reg11_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg11[1]_i_1_n_0\,
      Q => slv_reg11(1),
      R => p_0_in
    );
\slv_reg12[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg8[7]_i_2_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg12
    );
\slv_reg12_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(0),
      Q => \^sol3_pwm_val\(0),
      R => p_0_in
    );
\slv_reg12_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(1),
      Q => \^sol3_pwm_val\(1),
      R => p_0_in
    );
\slv_reg12_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(2),
      Q => \^sol3_pwm_val\(2),
      R => p_0_in
    );
\slv_reg12_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(3),
      Q => \^sol3_pwm_val\(3),
      R => p_0_in
    );
\slv_reg12_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(4),
      Q => \^sol3_pwm_val\(4),
      R => p_0_in
    );
\slv_reg12_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(5),
      Q => \^sol3_pwm_val\(5),
      R => p_0_in
    );
\slv_reg12_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(6),
      Q => \^sol3_pwm_val\(6),
      R => p_0_in
    );
\slv_reg12_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg12,
      D => s00_axi_wdata(7),
      Q => \^sol3_pwm_val\(7),
      R => p_0_in
    );
\slv_reg13[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg8[7]_i_2_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg13
    );
\slv_reg13_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg13,
      D => s00_axi_wdata(0),
      Q => \^sol3_time_full\(0),
      R => p_0_in
    );
\slv_reg13_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg13,
      D => s00_axi_wdata(10),
      Q => \^sol3_time_full\(10),
      R => p_0_in
    );
\slv_reg13_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg13,
      D => s00_axi_wdata(1),
      Q => \^sol3_time_full\(1),
      R => p_0_in
    );
\slv_reg13_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg13,
      D => s00_axi_wdata(2),
      Q => \^sol3_time_full\(2),
      R => p_0_in
    );
\slv_reg13_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg13,
      D => s00_axi_wdata(3),
      Q => \^sol3_time_full\(3),
      R => p_0_in
    );
\slv_reg13_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg13,
      D => s00_axi_wdata(4),
      Q => \^sol3_time_full\(4),
      R => p_0_in
    );
\slv_reg13_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg13,
      D => s00_axi_wdata(5),
      Q => \^sol3_time_full\(5),
      R => p_0_in
    );
\slv_reg13_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg13,
      D => s00_axi_wdata(6),
      Q => \^sol3_time_full\(6),
      R => p_0_in
    );
\slv_reg13_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg13,
      D => s00_axi_wdata(7),
      Q => \^sol3_time_full\(7),
      R => p_0_in
    );
\slv_reg13_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg13,
      D => s00_axi_wdata(8),
      Q => \^sol3_time_full\(8),
      R => p_0_in
    );
\slv_reg13_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg13,
      D => s00_axi_wdata(9),
      Q => \^sol3_time_full\(9),
      R => p_0_in
    );
\slv_reg14[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg10[0]_i_2_n_0\,
      I2 => p_0_in_0(2),
      I3 => \^sol3_run\,
      O => \slv_reg14[0]_i_1_n_0\
    );
\slv_reg14_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg14[0]_i_1_n_0\,
      Q => \^sol3_run\,
      R => p_0_in
    );
\slv_reg15[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL3_status(0),
      I1 => SOL3_vld_in,
      I2 => slv_reg15(0),
      O => \slv_reg15[0]_i_1_n_0\
    );
\slv_reg15[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL3_status(1),
      I1 => SOL3_vld_in,
      I2 => slv_reg15(1),
      O => \slv_reg15[1]_i_1_n_0\
    );
\slv_reg15_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg15[0]_i_1_n_0\,
      Q => slv_reg15(0),
      R => p_0_in
    );
\slv_reg15_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg15[1]_i_1_n_0\,
      Q => slv_reg15(1),
      R => p_0_in
    );
\slv_reg16[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[7]_i_3_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg16
    );
\slv_reg16_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(0),
      Q => \^sol4_pwm_val\(0),
      R => p_0_in
    );
\slv_reg16_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(1),
      Q => \^sol4_pwm_val\(1),
      R => p_0_in
    );
\slv_reg16_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(2),
      Q => \^sol4_pwm_val\(2),
      R => p_0_in
    );
\slv_reg16_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(3),
      Q => \^sol4_pwm_val\(3),
      R => p_0_in
    );
\slv_reg16_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(4),
      Q => \^sol4_pwm_val\(4),
      R => p_0_in
    );
\slv_reg16_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(5),
      Q => \^sol4_pwm_val\(5),
      R => p_0_in
    );
\slv_reg16_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(6),
      Q => \^sol4_pwm_val\(6),
      R => p_0_in
    );
\slv_reg16_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg16,
      D => s00_axi_wdata(7),
      Q => \^sol4_pwm_val\(7),
      R => p_0_in
    );
\slv_reg17[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[7]_i_3_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg17
    );
\slv_reg17_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg17,
      D => s00_axi_wdata(0),
      Q => \^sol4_time_full\(0),
      R => p_0_in
    );
\slv_reg17_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg17,
      D => s00_axi_wdata(10),
      Q => \^sol4_time_full\(10),
      R => p_0_in
    );
\slv_reg17_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg17,
      D => s00_axi_wdata(1),
      Q => \^sol4_time_full\(1),
      R => p_0_in
    );
\slv_reg17_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg17,
      D => s00_axi_wdata(2),
      Q => \^sol4_time_full\(2),
      R => p_0_in
    );
\slv_reg17_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg17,
      D => s00_axi_wdata(3),
      Q => \^sol4_time_full\(3),
      R => p_0_in
    );
\slv_reg17_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg17,
      D => s00_axi_wdata(4),
      Q => \^sol4_time_full\(4),
      R => p_0_in
    );
\slv_reg17_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg17,
      D => s00_axi_wdata(5),
      Q => \^sol4_time_full\(5),
      R => p_0_in
    );
\slv_reg17_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg17,
      D => s00_axi_wdata(6),
      Q => \^sol4_time_full\(6),
      R => p_0_in
    );
\slv_reg17_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg17,
      D => s00_axi_wdata(7),
      Q => \^sol4_time_full\(7),
      R => p_0_in
    );
\slv_reg17_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg17,
      D => s00_axi_wdata(8),
      Q => \^sol4_time_full\(8),
      R => p_0_in
    );
\slv_reg17_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg17,
      D => s00_axi_wdata(9),
      Q => \^sol4_time_full\(9),
      R => p_0_in
    );
\slv_reg18[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg18[0]_i_2_n_0\,
      I2 => p_0_in_0(2),
      I3 => \^sol4_run\,
      O => \slv_reg18[0]_i_1_n_0\
    );
\slv_reg18[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(3),
      I2 => \slv_reg2[0]_i_3_n_0\,
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(4),
      O => \slv_reg18[0]_i_2_n_0\
    );
\slv_reg18_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg18[0]_i_1_n_0\,
      Q => \^sol4_run\,
      R => p_0_in
    );
\slv_reg19[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL4_status(0),
      I1 => SOL4_vld_in,
      I2 => slv_reg19(0),
      O => \slv_reg19[0]_i_1_n_0\
    );
\slv_reg19[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL4_status(1),
      I1 => SOL4_vld_in,
      I2 => slv_reg19(1),
      O => \slv_reg19[1]_i_1_n_0\
    );
\slv_reg19_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg19[0]_i_1_n_0\,
      Q => slv_reg19(0),
      R => p_0_in
    );
\slv_reg19_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg19[1]_i_1_n_0\,
      Q => slv_reg19(1),
      R => p_0_in
    );
\slv_reg1[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[7]_i_3_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg1
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg1,
      D => s00_axi_wdata(0),
      Q => \^sol0_time_full\(0),
      R => p_0_in
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg1,
      D => s00_axi_wdata(10),
      Q => \^sol0_time_full\(10),
      R => p_0_in
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg1,
      D => s00_axi_wdata(1),
      Q => \^sol0_time_full\(1),
      R => p_0_in
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg1,
      D => s00_axi_wdata(2),
      Q => \^sol0_time_full\(2),
      R => p_0_in
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg1,
      D => s00_axi_wdata(3),
      Q => \^sol0_time_full\(3),
      R => p_0_in
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg1,
      D => s00_axi_wdata(4),
      Q => \^sol0_time_full\(4),
      R => p_0_in
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg1,
      D => s00_axi_wdata(5),
      Q => \^sol0_time_full\(5),
      R => p_0_in
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg1,
      D => s00_axi_wdata(6),
      Q => \^sol0_time_full\(6),
      R => p_0_in
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg1,
      D => s00_axi_wdata(7),
      Q => \^sol0_time_full\(7),
      R => p_0_in
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg1,
      D => s00_axi_wdata(8),
      Q => \^sol0_time_full\(8),
      R => p_0_in
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg1,
      D => s00_axi_wdata(9),
      Q => \^sol0_time_full\(9),
      R => p_0_in
    );
\slv_reg20[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[7]_i_3_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg20
    );
\slv_reg20_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(0),
      Q => \^sol5_pwm_val\(0),
      R => p_0_in
    );
\slv_reg20_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(1),
      Q => \^sol5_pwm_val\(1),
      R => p_0_in
    );
\slv_reg20_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(2),
      Q => \^sol5_pwm_val\(2),
      R => p_0_in
    );
\slv_reg20_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(3),
      Q => \^sol5_pwm_val\(3),
      R => p_0_in
    );
\slv_reg20_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(4),
      Q => \^sol5_pwm_val\(4),
      R => p_0_in
    );
\slv_reg20_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(5),
      Q => \^sol5_pwm_val\(5),
      R => p_0_in
    );
\slv_reg20_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(6),
      Q => \^sol5_pwm_val\(6),
      R => p_0_in
    );
\slv_reg20_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg20,
      D => s00_axi_wdata(7),
      Q => \^sol5_pwm_val\(7),
      R => p_0_in
    );
\slv_reg21[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[7]_i_3_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg21
    );
\slv_reg21_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg21,
      D => s00_axi_wdata(0),
      Q => \^sol5_time_full\(0),
      R => p_0_in
    );
\slv_reg21_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg21,
      D => s00_axi_wdata(10),
      Q => \^sol5_time_full\(10),
      R => p_0_in
    );
\slv_reg21_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg21,
      D => s00_axi_wdata(1),
      Q => \^sol5_time_full\(1),
      R => p_0_in
    );
\slv_reg21_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg21,
      D => s00_axi_wdata(2),
      Q => \^sol5_time_full\(2),
      R => p_0_in
    );
\slv_reg21_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg21,
      D => s00_axi_wdata(3),
      Q => \^sol5_time_full\(3),
      R => p_0_in
    );
\slv_reg21_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg21,
      D => s00_axi_wdata(4),
      Q => \^sol5_time_full\(4),
      R => p_0_in
    );
\slv_reg21_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg21,
      D => s00_axi_wdata(5),
      Q => \^sol5_time_full\(5),
      R => p_0_in
    );
\slv_reg21_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg21,
      D => s00_axi_wdata(6),
      Q => \^sol5_time_full\(6),
      R => p_0_in
    );
\slv_reg21_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg21,
      D => s00_axi_wdata(7),
      Q => \^sol5_time_full\(7),
      R => p_0_in
    );
\slv_reg21_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg21,
      D => s00_axi_wdata(8),
      Q => \^sol5_time_full\(8),
      R => p_0_in
    );
\slv_reg21_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg21,
      D => s00_axi_wdata(9),
      Q => \^sol5_time_full\(9),
      R => p_0_in
    );
\slv_reg22[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg18[0]_i_2_n_0\,
      I2 => p_0_in_0(2),
      I3 => \^sol5_run\,
      O => \slv_reg22[0]_i_1_n_0\
    );
\slv_reg22_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg22[0]_i_1_n_0\,
      Q => \^sol5_run\,
      R => p_0_in
    );
\slv_reg23[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL5_status(0),
      I1 => SOL5_vld_in,
      I2 => slv_reg23(0),
      O => \slv_reg23[0]_i_1_n_0\
    );
\slv_reg23[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL5_status(1),
      I1 => SOL5_vld_in,
      I2 => slv_reg23(1),
      O => \slv_reg23[1]_i_1_n_0\
    );
\slv_reg23_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg23[0]_i_1_n_0\,
      Q => slv_reg23(0),
      R => p_0_in
    );
\slv_reg23_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg23[1]_i_1_n_0\,
      Q => slv_reg23(1),
      R => p_0_in
    );
\slv_reg24[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg8[7]_i_2_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg24
    );
\slv_reg24_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(0),
      Q => \^sol6_pwm_val\(0),
      R => p_0_in
    );
\slv_reg24_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(1),
      Q => \^sol6_pwm_val\(1),
      R => p_0_in
    );
\slv_reg24_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(2),
      Q => \^sol6_pwm_val\(2),
      R => p_0_in
    );
\slv_reg24_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(3),
      Q => \^sol6_pwm_val\(3),
      R => p_0_in
    );
\slv_reg24_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(4),
      Q => \^sol6_pwm_val\(4),
      R => p_0_in
    );
\slv_reg24_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(5),
      Q => \^sol6_pwm_val\(5),
      R => p_0_in
    );
\slv_reg24_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(6),
      Q => \^sol6_pwm_val\(6),
      R => p_0_in
    );
\slv_reg24_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg24,
      D => s00_axi_wdata(7),
      Q => \^sol6_pwm_val\(7),
      R => p_0_in
    );
\slv_reg25[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg8[7]_i_2_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg25
    );
\slv_reg25_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg25,
      D => s00_axi_wdata(0),
      Q => \^sol6_time_full\(0),
      R => p_0_in
    );
\slv_reg25_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg25,
      D => s00_axi_wdata(10),
      Q => \^sol6_time_full\(10),
      R => p_0_in
    );
\slv_reg25_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg25,
      D => s00_axi_wdata(1),
      Q => \^sol6_time_full\(1),
      R => p_0_in
    );
\slv_reg25_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg25,
      D => s00_axi_wdata(2),
      Q => \^sol6_time_full\(2),
      R => p_0_in
    );
\slv_reg25_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg25,
      D => s00_axi_wdata(3),
      Q => \^sol6_time_full\(3),
      R => p_0_in
    );
\slv_reg25_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg25,
      D => s00_axi_wdata(4),
      Q => \^sol6_time_full\(4),
      R => p_0_in
    );
\slv_reg25_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg25,
      D => s00_axi_wdata(5),
      Q => \^sol6_time_full\(5),
      R => p_0_in
    );
\slv_reg25_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg25,
      D => s00_axi_wdata(6),
      Q => \^sol6_time_full\(6),
      R => p_0_in
    );
\slv_reg25_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg25,
      D => s00_axi_wdata(7),
      Q => \^sol6_time_full\(7),
      R => p_0_in
    );
\slv_reg25_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg25,
      D => s00_axi_wdata(8),
      Q => \^sol6_time_full\(8),
      R => p_0_in
    );
\slv_reg25_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg25,
      D => s00_axi_wdata(9),
      Q => \^sol6_time_full\(9),
      R => p_0_in
    );
\slv_reg26[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg26[0]_i_2_n_0\,
      I2 => p_0_in_0(2),
      I3 => \^sol6_run\,
      O => \slv_reg26[0]_i_1_n_0\
    );
\slv_reg26[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(3),
      I2 => \slv_reg2[0]_i_3_n_0\,
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(4),
      O => \slv_reg26[0]_i_2_n_0\
    );
\slv_reg26_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg26[0]_i_1_n_0\,
      Q => \^sol6_run\,
      R => p_0_in
    );
\slv_reg27[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL6_status(0),
      I1 => SOL6_vld_in,
      I2 => slv_reg27(0),
      O => \slv_reg27[0]_i_1_n_0\
    );
\slv_reg27[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL6_status(1),
      I1 => SOL6_vld_in,
      I2 => slv_reg27(1),
      O => \slv_reg27[1]_i_1_n_0\
    );
\slv_reg27_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg27[0]_i_1_n_0\,
      Q => slv_reg27(0),
      R => p_0_in
    );
\slv_reg27_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg27[1]_i_1_n_0\,
      Q => slv_reg27(1),
      R => p_0_in
    );
\slv_reg28[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg8[7]_i_2_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg28
    );
\slv_reg28_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(0),
      Q => \^sol7_pwm_val\(0),
      R => p_0_in
    );
\slv_reg28_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(1),
      Q => \^sol7_pwm_val\(1),
      R => p_0_in
    );
\slv_reg28_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(2),
      Q => \^sol7_pwm_val\(2),
      R => p_0_in
    );
\slv_reg28_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(3),
      Q => \^sol7_pwm_val\(3),
      R => p_0_in
    );
\slv_reg28_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(4),
      Q => \^sol7_pwm_val\(4),
      R => p_0_in
    );
\slv_reg28_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(5),
      Q => \^sol7_pwm_val\(5),
      R => p_0_in
    );
\slv_reg28_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(6),
      Q => \^sol7_pwm_val\(6),
      R => p_0_in
    );
\slv_reg28_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg28,
      D => s00_axi_wdata(7),
      Q => \^sol7_pwm_val\(7),
      R => p_0_in
    );
\slv_reg29[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg8[7]_i_2_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg29
    );
\slv_reg29_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg29,
      D => s00_axi_wdata(0),
      Q => \^sol7_time_full\(0),
      R => p_0_in
    );
\slv_reg29_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg29,
      D => s00_axi_wdata(10),
      Q => \^sol7_time_full\(10),
      R => p_0_in
    );
\slv_reg29_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg29,
      D => s00_axi_wdata(1),
      Q => \^sol7_time_full\(1),
      R => p_0_in
    );
\slv_reg29_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg29,
      D => s00_axi_wdata(2),
      Q => \^sol7_time_full\(2),
      R => p_0_in
    );
\slv_reg29_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg29,
      D => s00_axi_wdata(3),
      Q => \^sol7_time_full\(3),
      R => p_0_in
    );
\slv_reg29_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg29,
      D => s00_axi_wdata(4),
      Q => \^sol7_time_full\(4),
      R => p_0_in
    );
\slv_reg29_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg29,
      D => s00_axi_wdata(5),
      Q => \^sol7_time_full\(5),
      R => p_0_in
    );
\slv_reg29_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg29,
      D => s00_axi_wdata(6),
      Q => \^sol7_time_full\(6),
      R => p_0_in
    );
\slv_reg29_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg29,
      D => s00_axi_wdata(7),
      Q => \^sol7_time_full\(7),
      R => p_0_in
    );
\slv_reg29_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg29,
      D => s00_axi_wdata(8),
      Q => \^sol7_time_full\(8),
      R => p_0_in
    );
\slv_reg29_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg29,
      D => s00_axi_wdata(9),
      Q => \^sol7_time_full\(9),
      R => p_0_in
    );
\slv_reg2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg2[0]_i_2_n_0\,
      I2 => p_0_in_0(2),
      I3 => \^sol0_run\,
      O => \slv_reg2[0]_i_1_n_0\
    );
\slv_reg2[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(3),
      I2 => \slv_reg2[0]_i_3_n_0\,
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(4),
      O => \slv_reg2[0]_i_2_n_0\
    );
\slv_reg2[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => \^s_axi_wready\,
      O => \slv_reg2[0]_i_3_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg2[0]_i_1_n_0\,
      Q => \^sol0_run\,
      R => p_0_in
    );
\slv_reg30[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg26[0]_i_2_n_0\,
      I2 => p_0_in_0(2),
      I3 => \^sol7_run\,
      O => \slv_reg30[0]_i_1_n_0\
    );
\slv_reg30_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg30[0]_i_1_n_0\,
      Q => \^sol7_run\,
      R => p_0_in
    );
\slv_reg31[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL7_status(0),
      I1 => SOL7_vld_in,
      I2 => slv_reg31(0),
      O => \slv_reg31[0]_i_1_n_0\
    );
\slv_reg31[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL7_status(1),
      I1 => SOL7_vld_in,
      I2 => slv_reg31(1),
      O => \slv_reg31[1]_i_1_n_0\
    );
\slv_reg31_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg31[0]_i_1_n_0\,
      Q => slv_reg31(0),
      R => p_0_in
    );
\slv_reg31_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg31[1]_i_1_n_0\,
      Q => slv_reg31(1),
      R => p_0_in
    );
\slv_reg32[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[7]_i_3_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg32
    );
\slv_reg32_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(0),
      Q => \^sol8_pwm_val\(0),
      R => p_0_in
    );
\slv_reg32_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(1),
      Q => \^sol8_pwm_val\(1),
      R => p_0_in
    );
\slv_reg32_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(2),
      Q => \^sol8_pwm_val\(2),
      R => p_0_in
    );
\slv_reg32_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(3),
      Q => \^sol8_pwm_val\(3),
      R => p_0_in
    );
\slv_reg32_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(4),
      Q => \^sol8_pwm_val\(4),
      R => p_0_in
    );
\slv_reg32_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(5),
      Q => \^sol8_pwm_val\(5),
      R => p_0_in
    );
\slv_reg32_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(6),
      Q => \^sol8_pwm_val\(6),
      R => p_0_in
    );
\slv_reg32_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg32,
      D => s00_axi_wdata(7),
      Q => \^sol8_pwm_val\(7),
      R => p_0_in
    );
\slv_reg33[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[7]_i_3_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg33
    );
\slv_reg33_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg33,
      D => s00_axi_wdata(0),
      Q => \^sol8_time_full\(0),
      R => p_0_in
    );
\slv_reg33_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg33,
      D => s00_axi_wdata(10),
      Q => \^sol8_time_full\(10),
      R => p_0_in
    );
\slv_reg33_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg33,
      D => s00_axi_wdata(1),
      Q => \^sol8_time_full\(1),
      R => p_0_in
    );
\slv_reg33_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg33,
      D => s00_axi_wdata(2),
      Q => \^sol8_time_full\(2),
      R => p_0_in
    );
\slv_reg33_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg33,
      D => s00_axi_wdata(3),
      Q => \^sol8_time_full\(3),
      R => p_0_in
    );
\slv_reg33_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg33,
      D => s00_axi_wdata(4),
      Q => \^sol8_time_full\(4),
      R => p_0_in
    );
\slv_reg33_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg33,
      D => s00_axi_wdata(5),
      Q => \^sol8_time_full\(5),
      R => p_0_in
    );
\slv_reg33_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg33,
      D => s00_axi_wdata(6),
      Q => \^sol8_time_full\(6),
      R => p_0_in
    );
\slv_reg33_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg33,
      D => s00_axi_wdata(7),
      Q => \^sol8_time_full\(7),
      R => p_0_in
    );
\slv_reg33_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg33,
      D => s00_axi_wdata(8),
      Q => \^sol8_time_full\(8),
      R => p_0_in
    );
\slv_reg33_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg33,
      D => s00_axi_wdata(9),
      Q => \^sol8_time_full\(9),
      R => p_0_in
    );
\slv_reg34[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg34[0]_i_2_n_0\,
      I2 => p_0_in_0(2),
      I3 => \^sol8_run\,
      O => \slv_reg34[0]_i_1_n_0\
    );
\slv_reg34[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => p_0_in_0(5),
      I1 => p_0_in_0(3),
      I2 => \slv_reg2[0]_i_3_n_0\,
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(4),
      O => \slv_reg34[0]_i_2_n_0\
    );
\slv_reg34_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg34[0]_i_1_n_0\,
      Q => \^sol8_run\,
      R => p_0_in
    );
\slv_reg35[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL8_status(0),
      I1 => SOL8_vld_in,
      I2 => slv_reg35(0),
      O => \slv_reg35[0]_i_1_n_0\
    );
\slv_reg35[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL8_status(1),
      I1 => SOL8_vld_in,
      I2 => slv_reg35(1),
      O => \slv_reg35[1]_i_1_n_0\
    );
\slv_reg35_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg35[0]_i_1_n_0\,
      Q => slv_reg35(0),
      R => p_0_in
    );
\slv_reg35_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg35[1]_i_1_n_0\,
      Q => slv_reg35(1),
      R => p_0_in
    );
\slv_reg36[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[7]_i_3_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg36
    );
\slv_reg36_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(0),
      Q => \^sol9_pwm_val\(0),
      R => p_0_in
    );
\slv_reg36_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(1),
      Q => \^sol9_pwm_val\(1),
      R => p_0_in
    );
\slv_reg36_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(2),
      Q => \^sol9_pwm_val\(2),
      R => p_0_in
    );
\slv_reg36_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(3),
      Q => \^sol9_pwm_val\(3),
      R => p_0_in
    );
\slv_reg36_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(4),
      Q => \^sol9_pwm_val\(4),
      R => p_0_in
    );
\slv_reg36_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(5),
      Q => \^sol9_pwm_val\(5),
      R => p_0_in
    );
\slv_reg36_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(6),
      Q => \^sol9_pwm_val\(6),
      R => p_0_in
    );
\slv_reg36_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg36,
      D => s00_axi_wdata(7),
      Q => \^sol9_pwm_val\(7),
      R => p_0_in
    );
\slv_reg37[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[7]_i_3_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg37
    );
\slv_reg37_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg37,
      D => s00_axi_wdata(0),
      Q => \^sol9_time_full\(0),
      R => p_0_in
    );
\slv_reg37_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg37,
      D => s00_axi_wdata(10),
      Q => \^sol9_time_full\(10),
      R => p_0_in
    );
\slv_reg37_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg37,
      D => s00_axi_wdata(1),
      Q => \^sol9_time_full\(1),
      R => p_0_in
    );
\slv_reg37_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg37,
      D => s00_axi_wdata(2),
      Q => \^sol9_time_full\(2),
      R => p_0_in
    );
\slv_reg37_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg37,
      D => s00_axi_wdata(3),
      Q => \^sol9_time_full\(3),
      R => p_0_in
    );
\slv_reg37_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg37,
      D => s00_axi_wdata(4),
      Q => \^sol9_time_full\(4),
      R => p_0_in
    );
\slv_reg37_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg37,
      D => s00_axi_wdata(5),
      Q => \^sol9_time_full\(5),
      R => p_0_in
    );
\slv_reg37_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg37,
      D => s00_axi_wdata(6),
      Q => \^sol9_time_full\(6),
      R => p_0_in
    );
\slv_reg37_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg37,
      D => s00_axi_wdata(7),
      Q => \^sol9_time_full\(7),
      R => p_0_in
    );
\slv_reg37_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg37,
      D => s00_axi_wdata(8),
      Q => \^sol9_time_full\(8),
      R => p_0_in
    );
\slv_reg37_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg37,
      D => s00_axi_wdata(9),
      Q => \^sol9_time_full\(9),
      R => p_0_in
    );
\slv_reg38[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg34[0]_i_2_n_0\,
      I2 => p_0_in_0(2),
      I3 => \^sol9_run\,
      O => \slv_reg38[0]_i_1_n_0\
    );
\slv_reg38_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg38[0]_i_1_n_0\,
      Q => \^sol9_run\,
      R => p_0_in
    );
\slv_reg39[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL9_status(0),
      I1 => SOL9_vld_in,
      I2 => slv_reg39(0),
      O => \slv_reg39[0]_i_1_n_0\
    );
\slv_reg39[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL9_status(1),
      I1 => SOL9_vld_in,
      I2 => slv_reg39(1),
      O => \slv_reg39[1]_i_1_n_0\
    );
\slv_reg39_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg39[0]_i_1_n_0\,
      Q => slv_reg39(0),
      R => p_0_in
    );
\slv_reg39_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg39[1]_i_1_n_0\,
      Q => slv_reg39(1),
      R => p_0_in
    );
\slv_reg3[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL0_status(0),
      I1 => SOL0_vld_in,
      I2 => slv_reg3(0),
      O => \slv_reg3[0]_i_1_n_0\
    );
\slv_reg3[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL0_status(1),
      I1 => SOL0_vld_in,
      I2 => slv_reg3(1),
      O => \slv_reg3[1]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg3[0]_i_1_n_0\,
      Q => slv_reg3(0),
      R => p_0_in
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg3[1]_i_1_n_0\,
      Q => slv_reg3(1),
      R => p_0_in
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[7]_i_3_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg4
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(0),
      Q => \^sol1_pwm_val\(0),
      R => p_0_in
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(1),
      Q => \^sol1_pwm_val\(1),
      R => p_0_in
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(2),
      Q => \^sol1_pwm_val\(2),
      R => p_0_in
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(3),
      Q => \^sol1_pwm_val\(3),
      R => p_0_in
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(4),
      Q => \^sol1_pwm_val\(4),
      R => p_0_in
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(5),
      Q => \^sol1_pwm_val\(5),
      R => p_0_in
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(6),
      Q => \^sol1_pwm_val\(6),
      R => p_0_in
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg4,
      D => s00_axi_wdata(7),
      Q => \^sol1_pwm_val\(7),
      R => p_0_in
    );
\slv_reg5[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg0[7]_i_3_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg5
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5,
      D => s00_axi_wdata(0),
      Q => \^sol1_time_full\(0),
      R => p_0_in
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5,
      D => s00_axi_wdata(10),
      Q => \^sol1_time_full\(10),
      R => p_0_in
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5,
      D => s00_axi_wdata(1),
      Q => \^sol1_time_full\(1),
      R => p_0_in
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5,
      D => s00_axi_wdata(2),
      Q => \^sol1_time_full\(2),
      R => p_0_in
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5,
      D => s00_axi_wdata(3),
      Q => \^sol1_time_full\(3),
      R => p_0_in
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5,
      D => s00_axi_wdata(4),
      Q => \^sol1_time_full\(4),
      R => p_0_in
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5,
      D => s00_axi_wdata(5),
      Q => \^sol1_time_full\(5),
      R => p_0_in
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5,
      D => s00_axi_wdata(6),
      Q => \^sol1_time_full\(6),
      R => p_0_in
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5,
      D => s00_axi_wdata(7),
      Q => \^sol1_time_full\(7),
      R => p_0_in
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5,
      D => s00_axi_wdata(8),
      Q => \^sol1_time_full\(8),
      R => p_0_in
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5,
      D => s00_axi_wdata(9),
      Q => \^sol1_time_full\(9),
      R => p_0_in
    );
\slv_reg6[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => \slv_reg2[0]_i_2_n_0\,
      I2 => p_0_in_0(2),
      I3 => \^sol1_run\,
      O => \slv_reg6[0]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg6[0]_i_1_n_0\,
      Q => \^sol1_run\,
      R => p_0_in
    );
\slv_reg7[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL1_status(0),
      I1 => SOL1_vld_in,
      I2 => slv_reg7(0),
      O => \slv_reg7[0]_i_1_n_0\
    );
\slv_reg7[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => SOL1_status(1),
      I1 => SOL1_vld_in,
      I2 => slv_reg7(1),
      O => \slv_reg7[1]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg7[0]_i_1_n_0\,
      Q => slv_reg7(0),
      R => p_0_in
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg7[1]_i_1_n_0\,
      Q => slv_reg7(1),
      R => p_0_in
    );
\slv_reg8[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg8[7]_i_2_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg8
    );
\slv_reg8[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => \^s_axi_awready\,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => \^s_axi_wready\,
      I5 => p_0_in_0(3),
      O => \slv_reg8[7]_i_2_n_0\
    );
\slv_reg8_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(0),
      Q => \^sol2_pwm_val\(0),
      R => p_0_in
    );
\slv_reg8_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(1),
      Q => \^sol2_pwm_val\(1),
      R => p_0_in
    );
\slv_reg8_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(2),
      Q => \^sol2_pwm_val\(2),
      R => p_0_in
    );
\slv_reg8_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(3),
      Q => \^sol2_pwm_val\(3),
      R => p_0_in
    );
\slv_reg8_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(4),
      Q => \^sol2_pwm_val\(4),
      R => p_0_in
    );
\slv_reg8_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(5),
      Q => \^sol2_pwm_val\(5),
      R => p_0_in
    );
\slv_reg8_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(6),
      Q => \^sol2_pwm_val\(6),
      R => p_0_in
    );
\slv_reg8_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg8,
      D => s00_axi_wdata(7),
      Q => \^sol2_pwm_val\(7),
      R => p_0_in
    );
\slv_reg9[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => p_0_in_0(4),
      I1 => p_0_in_0(0),
      I2 => \slv_reg8[7]_i_2_n_0\,
      I3 => p_0_in_0(5),
      I4 => p_0_in_0(2),
      O => slv_reg9
    );
\slv_reg9_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg9,
      D => s00_axi_wdata(0),
      Q => \^sol2_time_full\(0),
      R => p_0_in
    );
\slv_reg9_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg9,
      D => s00_axi_wdata(10),
      Q => \^sol2_time_full\(10),
      R => p_0_in
    );
\slv_reg9_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg9,
      D => s00_axi_wdata(1),
      Q => \^sol2_time_full\(1),
      R => p_0_in
    );
\slv_reg9_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg9,
      D => s00_axi_wdata(2),
      Q => \^sol2_time_full\(2),
      R => p_0_in
    );
\slv_reg9_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg9,
      D => s00_axi_wdata(3),
      Q => \^sol2_time_full\(3),
      R => p_0_in
    );
\slv_reg9_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg9,
      D => s00_axi_wdata(4),
      Q => \^sol2_time_full\(4),
      R => p_0_in
    );
\slv_reg9_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg9,
      D => s00_axi_wdata(5),
      Q => \^sol2_time_full\(5),
      R => p_0_in
    );
\slv_reg9_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg9,
      D => s00_axi_wdata(6),
      Q => \^sol2_time_full\(6),
      R => p_0_in
    );
\slv_reg9_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg9,
      D => s00_axi_wdata(7),
      Q => \^sol2_time_full\(7),
      R => p_0_in
    );
\slv_reg9_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg9,
      D => s00_axi_wdata(8),
      Q => \^sol2_time_full\(8),
      R => p_0_in
    );
\slv_reg9_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg9,
      D => s00_axi_wdata(9),
      Q => \^sol2_time_full\(9),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_regs_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    SOL0_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL0_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL0_vld_out : out STD_LOGIC;
    SOL1_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL1_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL1_vld_out : out STD_LOGIC;
    SOL2_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL2_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL2_vld_out : out STD_LOGIC;
    SOL3_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL3_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL3_vld_out : out STD_LOGIC;
    SOL4_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL4_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL4_vld_out : out STD_LOGIC;
    SOL5_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL5_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL5_vld_out : out STD_LOGIC;
    SOL6_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL6_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL6_vld_out : out STD_LOGIC;
    SOL7_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL7_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL7_vld_out : out STD_LOGIC;
    SOL8_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL8_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL8_vld_out : out STD_LOGIC;
    SOL9_pwm_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SOL9_time_full : out STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL9_vld_out : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    SOL9_run : out STD_LOGIC;
    SOL8_run : out STD_LOGIC;
    SOL7_run : out STD_LOGIC;
    SOL6_run : out STD_LOGIC;
    SOL5_run : out STD_LOGIC;
    SOL4_run : out STD_LOGIC;
    SOL3_run : out STD_LOGIC;
    SOL2_run : out STD_LOGIC;
    SOL1_run : out STD_LOGIC;
    SOL0_run : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 10 downto 0 );
    SOL0_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL0_vld_in : in STD_LOGIC;
    SOL1_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL1_vld_in : in STD_LOGIC;
    SOL2_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL2_vld_in : in STD_LOGIC;
    SOL3_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL3_vld_in : in STD_LOGIC;
    SOL4_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL4_vld_in : in STD_LOGIC;
    SOL5_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL5_vld_in : in STD_LOGIC;
    SOL6_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL6_vld_in : in STD_LOGIC;
    SOL7_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL7_vld_in : in STD_LOGIC;
    SOL8_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL8_vld_in : in STD_LOGIC;
    SOL9_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SOL9_vld_in : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_regs_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_regs_v1_0 is
begin
SOL_regs_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_regs_v1_0_S00_AXI
     port map (
      SOL0_pwm_val(7 downto 0) => SOL0_pwm_val(7 downto 0),
      SOL0_run => SOL0_run,
      SOL0_status(1 downto 0) => SOL0_status(1 downto 0),
      SOL0_time_full(10 downto 0) => SOL0_time_full(10 downto 0),
      SOL0_vld_in => SOL0_vld_in,
      SOL0_vld_out => SOL0_vld_out,
      SOL1_pwm_val(7 downto 0) => SOL1_pwm_val(7 downto 0),
      SOL1_run => SOL1_run,
      SOL1_status(1 downto 0) => SOL1_status(1 downto 0),
      SOL1_time_full(10 downto 0) => SOL1_time_full(10 downto 0),
      SOL1_vld_in => SOL1_vld_in,
      SOL1_vld_out => SOL1_vld_out,
      SOL2_pwm_val(7 downto 0) => SOL2_pwm_val(7 downto 0),
      SOL2_run => SOL2_run,
      SOL2_status(1 downto 0) => SOL2_status(1 downto 0),
      SOL2_time_full(10 downto 0) => SOL2_time_full(10 downto 0),
      SOL2_vld_in => SOL2_vld_in,
      SOL2_vld_out => SOL2_vld_out,
      SOL3_pwm_val(7 downto 0) => SOL3_pwm_val(7 downto 0),
      SOL3_run => SOL3_run,
      SOL3_status(1 downto 0) => SOL3_status(1 downto 0),
      SOL3_time_full(10 downto 0) => SOL3_time_full(10 downto 0),
      SOL3_vld_in => SOL3_vld_in,
      SOL3_vld_out => SOL3_vld_out,
      SOL4_pwm_val(7 downto 0) => SOL4_pwm_val(7 downto 0),
      SOL4_run => SOL4_run,
      SOL4_status(1 downto 0) => SOL4_status(1 downto 0),
      SOL4_time_full(10 downto 0) => SOL4_time_full(10 downto 0),
      SOL4_vld_in => SOL4_vld_in,
      SOL4_vld_out => SOL4_vld_out,
      SOL5_pwm_val(7 downto 0) => SOL5_pwm_val(7 downto 0),
      SOL5_run => SOL5_run,
      SOL5_status(1 downto 0) => SOL5_status(1 downto 0),
      SOL5_time_full(10 downto 0) => SOL5_time_full(10 downto 0),
      SOL5_vld_in => SOL5_vld_in,
      SOL5_vld_out => SOL5_vld_out,
      SOL6_pwm_val(7 downto 0) => SOL6_pwm_val(7 downto 0),
      SOL6_run => SOL6_run,
      SOL6_status(1 downto 0) => SOL6_status(1 downto 0),
      SOL6_time_full(10 downto 0) => SOL6_time_full(10 downto 0),
      SOL6_vld_in => SOL6_vld_in,
      SOL6_vld_out => SOL6_vld_out,
      SOL7_pwm_val(7 downto 0) => SOL7_pwm_val(7 downto 0),
      SOL7_run => SOL7_run,
      SOL7_status(1 downto 0) => SOL7_status(1 downto 0),
      SOL7_time_full(10 downto 0) => SOL7_time_full(10 downto 0),
      SOL7_vld_in => SOL7_vld_in,
      SOL7_vld_out => SOL7_vld_out,
      SOL8_pwm_val(7 downto 0) => SOL8_pwm_val(7 downto 0),
      SOL8_run => SOL8_run,
      SOL8_status(1 downto 0) => SOL8_status(1 downto 0),
      SOL8_time_full(10 downto 0) => SOL8_time_full(10 downto 0),
      SOL8_vld_in => SOL8_vld_in,
      SOL8_vld_out => SOL8_vld_out,
      SOL9_pwm_val(7 downto 0) => SOL9_pwm_val(7 downto 0),
      SOL9_run => SOL9_run,
      SOL9_status(1 downto 0) => SOL9_status(1 downto 0),
      SOL9_time_full(10 downto 0) => SOL9_time_full(10 downto 0),
      SOL9_vld_in => SOL9_vld_in,
      SOL9_vld_out => SOL9_vld_out,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(5 downto 0) => s00_axi_araddr(5 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(5 downto 0) => s00_axi_awaddr(5 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(10 downto 0) => s00_axi_rdata(10 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(10 downto 0) => s00_axi_wdata(10 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_SOL_regs_0_0,SOL_regs_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SOL_regs_v1_0,Vivado 2019.1.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of SOL0_run : signal is "mindway:user:SOL_reg_if:1.0 SOL0 run";
  attribute x_interface_info of SOL0_vld_in : signal is "mindway:user:SOL_reg_if:1.0 SOL0 vld_in";
  attribute x_interface_info of SOL0_vld_out : signal is "mindway:user:SOL_reg_if:1.0 SOL0 vld_out";
  attribute x_interface_info of SOL1_run : signal is "mindway:user:SOL_reg_if:1.0 SOL1 run";
  attribute x_interface_info of SOL1_vld_in : signal is "mindway:user:SOL_reg_if:1.0 SOL1 vld_in";
  attribute x_interface_info of SOL1_vld_out : signal is "mindway:user:SOL_reg_if:1.0 SOL1 vld_out";
  attribute x_interface_info of SOL2_run : signal is "mindway:user:SOL_reg_if:1.0 SOL2 run";
  attribute x_interface_info of SOL2_vld_in : signal is "mindway:user:SOL_reg_if:1.0 SOL2 vld_in";
  attribute x_interface_info of SOL2_vld_out : signal is "mindway:user:SOL_reg_if:1.0 SOL2 vld_out";
  attribute x_interface_info of SOL3_run : signal is "mindway:user:SOL_reg_if:1.0 SOL3 run";
  attribute x_interface_info of SOL3_vld_in : signal is "mindway:user:SOL_reg_if:1.0 SOL3 vld_in";
  attribute x_interface_info of SOL3_vld_out : signal is "mindway:user:SOL_reg_if:1.0 SOL3 vld_out";
  attribute x_interface_info of SOL4_run : signal is "mindway:user:SOL_reg_if:1.0 SOL4 run";
  attribute x_interface_info of SOL4_vld_in : signal is "mindway:user:SOL_reg_if:1.0 SOL4 vld_in";
  attribute x_interface_info of SOL4_vld_out : signal is "mindway:user:SOL_reg_if:1.0 SOL4 vld_out";
  attribute x_interface_info of SOL5_run : signal is "mindway:user:SOL_reg_if:1.0 SOL5 run";
  attribute x_interface_info of SOL5_vld_in : signal is "mindway:user:SOL_reg_if:1.0 SOL5 vld_in";
  attribute x_interface_info of SOL5_vld_out : signal is "mindway:user:SOL_reg_if:1.0 SOL5 vld_out";
  attribute x_interface_info of SOL6_run : signal is "mindway:user:SOL_reg_if:1.0 SOL6 run";
  attribute x_interface_info of SOL6_vld_in : signal is "mindway:user:SOL_reg_if:1.0 SOL6 vld_in";
  attribute x_interface_info of SOL6_vld_out : signal is "mindway:user:SOL_reg_if:1.0 SOL6 vld_out";
  attribute x_interface_info of SOL7_run : signal is "mindway:user:SOL_reg_if:1.0 SOL7 run";
  attribute x_interface_info of SOL7_vld_in : signal is "mindway:user:SOL_reg_if:1.0 SOL7 vld_in";
  attribute x_interface_info of SOL7_vld_out : signal is "mindway:user:SOL_reg_if:1.0 SOL7 vld_out";
  attribute x_interface_info of SOL8_run : signal is "mindway:user:SOL_reg_if:1.0 SOL8 run";
  attribute x_interface_info of SOL8_vld_in : signal is "mindway:user:SOL_reg_if:1.0 SOL8 vld_in";
  attribute x_interface_info of SOL8_vld_out : signal is "mindway:user:SOL_reg_if:1.0 SOL8 vld_out";
  attribute x_interface_info of SOL9_run : signal is "mindway:user:SOL_reg_if:1.0 SOL9 run";
  attribute x_interface_info of SOL9_vld_in : signal is "mindway:user:SOL_reg_if:1.0 SOL9 vld_in";
  attribute x_interface_info of SOL9_vld_out : signal is "mindway:user:SOL_reg_if:1.0 SOL9 vld_out";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of SOL0_pwm_val : signal is "mindway:user:SOL_reg_if:1.0 SOL0 pwm_val";
  attribute x_interface_info of SOL0_status : signal is "mindway:user:SOL_reg_if:1.0 SOL0 status";
  attribute x_interface_info of SOL0_time_full : signal is "mindway:user:SOL_reg_if:1.0 SOL0 time_full";
  attribute x_interface_info of SOL1_pwm_val : signal is "mindway:user:SOL_reg_if:1.0 SOL1 pwm_val";
  attribute x_interface_info of SOL1_status : signal is "mindway:user:SOL_reg_if:1.0 SOL1 status";
  attribute x_interface_info of SOL1_time_full : signal is "mindway:user:SOL_reg_if:1.0 SOL1 time_full";
  attribute x_interface_info of SOL2_pwm_val : signal is "mindway:user:SOL_reg_if:1.0 SOL2 pwm_val";
  attribute x_interface_info of SOL2_status : signal is "mindway:user:SOL_reg_if:1.0 SOL2 status";
  attribute x_interface_info of SOL2_time_full : signal is "mindway:user:SOL_reg_if:1.0 SOL2 time_full";
  attribute x_interface_info of SOL3_pwm_val : signal is "mindway:user:SOL_reg_if:1.0 SOL3 pwm_val";
  attribute x_interface_info of SOL3_status : signal is "mindway:user:SOL_reg_if:1.0 SOL3 status";
  attribute x_interface_info of SOL3_time_full : signal is "mindway:user:SOL_reg_if:1.0 SOL3 time_full";
  attribute x_interface_info of SOL4_pwm_val : signal is "mindway:user:SOL_reg_if:1.0 SOL4 pwm_val";
  attribute x_interface_info of SOL4_status : signal is "mindway:user:SOL_reg_if:1.0 SOL4 status";
  attribute x_interface_info of SOL4_time_full : signal is "mindway:user:SOL_reg_if:1.0 SOL4 time_full";
  attribute x_interface_info of SOL5_pwm_val : signal is "mindway:user:SOL_reg_if:1.0 SOL5 pwm_val";
  attribute x_interface_info of SOL5_status : signal is "mindway:user:SOL_reg_if:1.0 SOL5 status";
  attribute x_interface_info of SOL5_time_full : signal is "mindway:user:SOL_reg_if:1.0 SOL5 time_full";
  attribute x_interface_info of SOL6_pwm_val : signal is "mindway:user:SOL_reg_if:1.0 SOL6 pwm_val";
  attribute x_interface_info of SOL6_status : signal is "mindway:user:SOL_reg_if:1.0 SOL6 status";
  attribute x_interface_info of SOL6_time_full : signal is "mindway:user:SOL_reg_if:1.0 SOL6 time_full";
  attribute x_interface_info of SOL7_pwm_val : signal is "mindway:user:SOL_reg_if:1.0 SOL7 pwm_val";
  attribute x_interface_info of SOL7_status : signal is "mindway:user:SOL_reg_if:1.0 SOL7 status";
  attribute x_interface_info of SOL7_time_full : signal is "mindway:user:SOL_reg_if:1.0 SOL7 time_full";
  attribute x_interface_info of SOL8_pwm_val : signal is "mindway:user:SOL_reg_if:1.0 SOL8 pwm_val";
  attribute x_interface_info of SOL8_status : signal is "mindway:user:SOL_reg_if:1.0 SOL8 status";
  attribute x_interface_info of SOL8_time_full : signal is "mindway:user:SOL_reg_if:1.0 SOL8 time_full";
  attribute x_interface_info of SOL9_pwm_val : signal is "mindway:user:SOL_reg_if:1.0 SOL9 pwm_val";
  attribute x_interface_info of SOL9_status : signal is "mindway:user:SOL_reg_if:1.0 SOL9 status";
  attribute x_interface_info of SOL9_time_full : signal is "mindway:user:SOL_reg_if:1.0 SOL9 time_full";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 40, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \<const0>\;
  s00_axi_rdata(30) <= \<const0>\;
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \<const0>\;
  s00_axi_rdata(27) <= \<const0>\;
  s00_axi_rdata(26) <= \<const0>\;
  s00_axi_rdata(25) <= \<const0>\;
  s00_axi_rdata(24) <= \<const0>\;
  s00_axi_rdata(23) <= \<const0>\;
  s00_axi_rdata(22) <= \<const0>\;
  s00_axi_rdata(21) <= \<const0>\;
  s00_axi_rdata(20) <= \<const0>\;
  s00_axi_rdata(19) <= \<const0>\;
  s00_axi_rdata(18) <= \<const0>\;
  s00_axi_rdata(17) <= \<const0>\;
  s00_axi_rdata(16) <= \<const0>\;
  s00_axi_rdata(15) <= \<const0>\;
  s00_axi_rdata(14) <= \<const0>\;
  s00_axi_rdata(13) <= \<const0>\;
  s00_axi_rdata(12) <= \<const0>\;
  s00_axi_rdata(11) <= \<const0>\;
  s00_axi_rdata(10 downto 0) <= \^s00_axi_rdata\(10 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SOL_regs_v1_0
     port map (
      SOL0_pwm_val(7 downto 0) => SOL0_pwm_val(7 downto 0),
      SOL0_run => SOL0_run,
      SOL0_status(1 downto 0) => SOL0_status(1 downto 0),
      SOL0_time_full(10 downto 0) => SOL0_time_full(10 downto 0),
      SOL0_vld_in => SOL0_vld_in,
      SOL0_vld_out => SOL0_vld_out,
      SOL1_pwm_val(7 downto 0) => SOL1_pwm_val(7 downto 0),
      SOL1_run => SOL1_run,
      SOL1_status(1 downto 0) => SOL1_status(1 downto 0),
      SOL1_time_full(10 downto 0) => SOL1_time_full(10 downto 0),
      SOL1_vld_in => SOL1_vld_in,
      SOL1_vld_out => SOL1_vld_out,
      SOL2_pwm_val(7 downto 0) => SOL2_pwm_val(7 downto 0),
      SOL2_run => SOL2_run,
      SOL2_status(1 downto 0) => SOL2_status(1 downto 0),
      SOL2_time_full(10 downto 0) => SOL2_time_full(10 downto 0),
      SOL2_vld_in => SOL2_vld_in,
      SOL2_vld_out => SOL2_vld_out,
      SOL3_pwm_val(7 downto 0) => SOL3_pwm_val(7 downto 0),
      SOL3_run => SOL3_run,
      SOL3_status(1 downto 0) => SOL3_status(1 downto 0),
      SOL3_time_full(10 downto 0) => SOL3_time_full(10 downto 0),
      SOL3_vld_in => SOL3_vld_in,
      SOL3_vld_out => SOL3_vld_out,
      SOL4_pwm_val(7 downto 0) => SOL4_pwm_val(7 downto 0),
      SOL4_run => SOL4_run,
      SOL4_status(1 downto 0) => SOL4_status(1 downto 0),
      SOL4_time_full(10 downto 0) => SOL4_time_full(10 downto 0),
      SOL4_vld_in => SOL4_vld_in,
      SOL4_vld_out => SOL4_vld_out,
      SOL5_pwm_val(7 downto 0) => SOL5_pwm_val(7 downto 0),
      SOL5_run => SOL5_run,
      SOL5_status(1 downto 0) => SOL5_status(1 downto 0),
      SOL5_time_full(10 downto 0) => SOL5_time_full(10 downto 0),
      SOL5_vld_in => SOL5_vld_in,
      SOL5_vld_out => SOL5_vld_out,
      SOL6_pwm_val(7 downto 0) => SOL6_pwm_val(7 downto 0),
      SOL6_run => SOL6_run,
      SOL6_status(1 downto 0) => SOL6_status(1 downto 0),
      SOL6_time_full(10 downto 0) => SOL6_time_full(10 downto 0),
      SOL6_vld_in => SOL6_vld_in,
      SOL6_vld_out => SOL6_vld_out,
      SOL7_pwm_val(7 downto 0) => SOL7_pwm_val(7 downto 0),
      SOL7_run => SOL7_run,
      SOL7_status(1 downto 0) => SOL7_status(1 downto 0),
      SOL7_time_full(10 downto 0) => SOL7_time_full(10 downto 0),
      SOL7_vld_in => SOL7_vld_in,
      SOL7_vld_out => SOL7_vld_out,
      SOL8_pwm_val(7 downto 0) => SOL8_pwm_val(7 downto 0),
      SOL8_run => SOL8_run,
      SOL8_status(1 downto 0) => SOL8_status(1 downto 0),
      SOL8_time_full(10 downto 0) => SOL8_time_full(10 downto 0),
      SOL8_vld_in => SOL8_vld_in,
      SOL8_vld_out => SOL8_vld_out,
      SOL9_pwm_val(7 downto 0) => SOL9_pwm_val(7 downto 0),
      SOL9_run => SOL9_run,
      SOL9_status(1 downto 0) => SOL9_status(1 downto 0),
      SOL9_time_full(10 downto 0) => SOL9_time_full(10 downto 0),
      SOL9_vld_in => SOL9_vld_in,
      SOL9_vld_out => SOL9_vld_out,
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(5 downto 0) => s00_axi_araddr(7 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(5 downto 0) => s00_axi_awaddr(7 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(10 downto 0) => \^s00_axi_rdata\(10 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(10 downto 0) => s00_axi_wdata(10 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
