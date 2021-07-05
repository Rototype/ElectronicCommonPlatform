--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1.3 (win64) Build 2644227 Wed Sep  4 09:45:24 MDT 2019
--Date        : Sat Jun 26 15:41:59 2021
--Host        : LAPTOP-D823LPN1 running 64-bit major release  (build 9200)
--Command     : generate_target S7_wrapper.bd
--Design      : S7_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity S7_wrapper is
  port (
    DCM0_in1 : out STD_LOGIC;
    DCM0_in2 : out STD_LOGIC;
    DCM0_pwm : out STD_LOGIC;
    DCM1_in1 : out STD_LOGIC;
    DCM1_in2 : out STD_LOGIC;
    DCM1_pwm : out STD_LOGIC;
    DCM2_in1 : out STD_LOGIC;
    DCM2_in2 : out STD_LOGIC;
    DCM2_pwm : out STD_LOGIC;
    DCM3_in1 : out STD_LOGIC;
    DCM3_in2 : out STD_LOGIC;
    DCM3_pwm : out STD_LOGIC;
    DCM4_in1 : out STD_LOGIC;
    DCM4_in2 : out STD_LOGIC;
    DCM4_pwm : out STD_LOGIC;
    PHS0_phs_in : in STD_LOGIC;
    PHS0_pwm_out : out STD_LOGIC;
    PHS10_phs_in : in STD_LOGIC;
    PHS10_pwm_out : out STD_LOGIC;
    PHS11_phs_in : in STD_LOGIC;
    PHS11_pwm_out : out STD_LOGIC;
    PHS12_phs_in : in STD_LOGIC;
    PHS12_pwm_out : out STD_LOGIC;
    PHS13_phs_in : in STD_LOGIC;
    PHS13_pwm_out : out STD_LOGIC;
    PHS14_phs_in : in STD_LOGIC;
    PHS14_pwm_out : out STD_LOGIC;
    PHS15_phs_in : in STD_LOGIC;
    PHS15_pwm_out : out STD_LOGIC;
    PHS16_phs_in : in STD_LOGIC;
    PHS16_pwm_out : out STD_LOGIC;
    PHS17_phs_in : in STD_LOGIC;
    PHS17_pwm_out : out STD_LOGIC;
    PHS18_phs_in : in STD_LOGIC;
    PHS18_pwm_out : out STD_LOGIC;
    PHS19_phs_in : in STD_LOGIC;
    PHS19_pwm_out : out STD_LOGIC;
    PHS1_phs_in : in STD_LOGIC;
    PHS1_pwm_out : out STD_LOGIC;
    PHS20_phs_in : in STD_LOGIC;
    PHS20_pwm_out : out STD_LOGIC;
    PHS21_phs_in : in STD_LOGIC;
    PHS21_pwm_out : out STD_LOGIC;
    PHS22_phs_in : in STD_LOGIC;
    PHS22_pwm_out : out STD_LOGIC;
    PHS23_phs_in : in STD_LOGIC;
    PHS23_pwm_out : out STD_LOGIC;
    PHS24_phs_in : in STD_LOGIC;
    PHS24_pwm_out : out STD_LOGIC;
    PHS25_phs_in : in STD_LOGIC;
    PHS25_pwm_out : out STD_LOGIC;
    PHS26_phs_in : in STD_LOGIC;
    PHS26_pwm_out : out STD_LOGIC;
    PHS27_phs_in : in STD_LOGIC;
    PHS27_pwm_out : out STD_LOGIC;
    PHS28_phs_in : in STD_LOGIC;
    PHS28_pwm_out : out STD_LOGIC;
    PHS29_phs_in : in STD_LOGIC;
    PHS29_pwm_out : out STD_LOGIC;
    PHS2_phs_in : in STD_LOGIC;
    PHS2_pwm_out : out STD_LOGIC;
    PHS30_phs_in : in STD_LOGIC;
    PHS30_pwm_out : out STD_LOGIC;
    PHS31_phs_in : in STD_LOGIC;
    PHS31_pwm_out : out STD_LOGIC;
    PHS32_phs_in : in STD_LOGIC;
    PHS32_pwm_out : out STD_LOGIC;
    PHS33_phs_in : in STD_LOGIC;
    PHS33_pwm_out : out STD_LOGIC;
    PHS34_phs_in : in STD_LOGIC;
    PHS34_pwm_out : out STD_LOGIC;
    PHS35_phs_in : in STD_LOGIC;
    PHS35_pwm_out : out STD_LOGIC;
    PHS36_phs_in : in STD_LOGIC;
    PHS36_pwm_out : out STD_LOGIC;
    PHS37_phs_in : in STD_LOGIC;
    PHS37_pwm_out : out STD_LOGIC;
    PHS38_phs_in : in STD_LOGIC;
    PHS38_pwm_out : out STD_LOGIC;
    PHS39_phs_in : in STD_LOGIC;
    PHS39_pwm_out : out STD_LOGIC;
    PHS3_phs_in : in STD_LOGIC;
    PHS3_pwm_out : out STD_LOGIC;
    PHS40_phs_in : in STD_LOGIC;
    PHS40_pwm_out : out STD_LOGIC;
    PHS41_phs_in : in STD_LOGIC;
    PHS41_pwm_out : out STD_LOGIC;
    PHS42_phs_in : in STD_LOGIC;
    PHS42_pwm_out : out STD_LOGIC;
    PHS43_phs_in : in STD_LOGIC;
    PHS43_pwm_out : out STD_LOGIC;
    PHS44_phs_in : in STD_LOGIC;
    PHS44_pwm_out : out STD_LOGIC;
    PHS45_phs_in : in STD_LOGIC;
    PHS45_pwm_out : out STD_LOGIC;
    PHS46_phs_in : in STD_LOGIC;
    PHS46_pwm_out : out STD_LOGIC;
    PHS47_phs_in : in STD_LOGIC;
    PHS47_pwm_out : out STD_LOGIC;
    PHS48_phs_in : in STD_LOGIC;
    PHS48_pwm_out : out STD_LOGIC;
    PHS49_phs_in : in STD_LOGIC;
    PHS49_pwm_out : out STD_LOGIC;
    PHS4_phs_in : in STD_LOGIC;
    PHS4_pwm_out : out STD_LOGIC;
    PHS5_phs_in : in STD_LOGIC;
    PHS5_pwm_out : out STD_LOGIC;
    PHS6_phs_in : in STD_LOGIC;
    PHS6_pwm_out : out STD_LOGIC;
    PHS7_phs_in : in STD_LOGIC;
    PHS7_pwm_out : out STD_LOGIC;
    PHS8_phs_in : in STD_LOGIC;
    PHS8_pwm_out : out STD_LOGIC;
    PHS9_phs_in : in STD_LOGIC;
    PHS9_pwm_out : out STD_LOGIC;
    QSPI_cs : in STD_LOGIC;
    QSPI_d0 : in STD_LOGIC;
    QSPI_d1 : in STD_LOGIC;
    QSPI_d2 : in STD_LOGIC;
    QSPI_d3 : in STD_LOGIC;
    SM0_clk : out STD_LOGIC;
    SM0_dir : out STD_LOGIC;
    SM0_ena : out STD_LOGIC;
    SM0_m1p : out STD_LOGIC;
    SM0_m2p : out STD_LOGIC;
    SM0_ref : out STD_LOGIC;
    SM10_clk : out STD_LOGIC;
    SM10_dir : out STD_LOGIC;
    SM10_ena : out STD_LOGIC;
    SM10_m1p : out STD_LOGIC;
    SM10_m2p : out STD_LOGIC;
    SM10_ref : out STD_LOGIC;
    SM11_clk : out STD_LOGIC;
    SM11_dir : out STD_LOGIC;
    SM11_ena : out STD_LOGIC;
    SM11_m1p : out STD_LOGIC;
    SM11_m2p : out STD_LOGIC;
    SM11_ref : out STD_LOGIC;
    SM12_clk : out STD_LOGIC;
    SM12_dir : out STD_LOGIC;
    SM12_ena : out STD_LOGIC;
    SM12_m1p : out STD_LOGIC;
    SM12_m2p : out STD_LOGIC;
    SM12_ref : out STD_LOGIC;
    SM13_clk : out STD_LOGIC;
    SM13_dir : out STD_LOGIC;
    SM13_ena : out STD_LOGIC;
    SM13_m1p : out STD_LOGIC;
    SM13_m2p : out STD_LOGIC;
    SM13_ref : out STD_LOGIC;
    SM14_clk : out STD_LOGIC;
    SM14_dir : out STD_LOGIC;
    SM14_ena : out STD_LOGIC;
    SM14_m1p : out STD_LOGIC;
    SM14_m2p : out STD_LOGIC;
    SM14_ref : out STD_LOGIC;
    SM15_clk : out STD_LOGIC;
    SM15_dir : out STD_LOGIC;
    SM15_ena : out STD_LOGIC;
    SM15_m1p : out STD_LOGIC;
    SM15_m2p : out STD_LOGIC;
    SM15_ref : out STD_LOGIC;
    SM16_clk : out STD_LOGIC;
    SM16_dir : out STD_LOGIC;
    SM16_ena : out STD_LOGIC;
    SM16_m1p : out STD_LOGIC;
    SM16_m2p : out STD_LOGIC;
    SM16_ref : out STD_LOGIC;
    SM17_clk : out STD_LOGIC;
    SM17_dir : out STD_LOGIC;
    SM17_ena : out STD_LOGIC;
    SM17_m1p : out STD_LOGIC;
    SM17_m2p : out STD_LOGIC;
    SM17_ref : out STD_LOGIC;
    SM18_clk : out STD_LOGIC;
    SM18_dir : out STD_LOGIC;
    SM18_ena : out STD_LOGIC;
    SM18_m1p : out STD_LOGIC;
    SM18_m2p : out STD_LOGIC;
    SM18_ref : out STD_LOGIC;
    SM19_clk : out STD_LOGIC;
    SM19_dir : out STD_LOGIC;
    SM19_ena : out STD_LOGIC;
    SM19_m1p : out STD_LOGIC;
    SM19_m2p : out STD_LOGIC;
    SM19_ref : out STD_LOGIC;
    SM1_clk : out STD_LOGIC;
    SM1_dir : out STD_LOGIC;
    SM1_ena : out STD_LOGIC;
    SM1_m1p : out STD_LOGIC;
    SM1_m2p : out STD_LOGIC;
    SM1_ref : out STD_LOGIC;
    SM2_clk : out STD_LOGIC;
    SM2_dir : out STD_LOGIC;
    SM2_ena : out STD_LOGIC;
    SM2_m1p : out STD_LOGIC;
    SM2_m2p : out STD_LOGIC;
    SM2_ref : out STD_LOGIC;
    SM3_clk : out STD_LOGIC;
    SM3_dir : out STD_LOGIC;
    SM3_ena : out STD_LOGIC;
    SM3_m1p : out STD_LOGIC;
    SM3_m2p : out STD_LOGIC;
    SM3_ref : out STD_LOGIC;
    SM4_clk : out STD_LOGIC;
    SM4_dir : out STD_LOGIC;
    SM4_ena : out STD_LOGIC;
    SM4_m1p : out STD_LOGIC;
    SM4_m2p : out STD_LOGIC;
    SM4_ref : out STD_LOGIC;
    SM5_clk : out STD_LOGIC;
    SM5_dir : out STD_LOGIC;
    SM5_ena : out STD_LOGIC;
    SM5_m1p : out STD_LOGIC;
    SM5_m2p : out STD_LOGIC;
    SM5_ref : out STD_LOGIC;
    SM6_clk : out STD_LOGIC;
    SM6_dir : out STD_LOGIC;
    SM6_ena : out STD_LOGIC;
    SM6_m1p : out STD_LOGIC;
    SM6_m2p : out STD_LOGIC;
    SM6_ref : out STD_LOGIC;
    SM7_clk : out STD_LOGIC;
    SM7_dir : out STD_LOGIC;
    SM7_ena : out STD_LOGIC;
    SM7_m1p : out STD_LOGIC;
    SM7_m2p : out STD_LOGIC;
    SM7_ref : out STD_LOGIC;
    SM8_clk : out STD_LOGIC;
    SM8_dir : out STD_LOGIC;
    SM8_ena : out STD_LOGIC;
    SM8_m1p : out STD_LOGIC;
    SM8_m2p : out STD_LOGIC;
    SM8_ref : out STD_LOGIC;
    SM9_clk : out STD_LOGIC;
    SM9_dir : out STD_LOGIC;
    SM9_ena : out STD_LOGIC;
    SM9_m1p : out STD_LOGIC;
    SM9_m2p : out STD_LOGIC;
    SM9_ref : out STD_LOGIC;
    SM_IRQ : out STD_LOGIC_VECTOR ( 0 to 0 );
    SOL0_port_pwm : out STD_LOGIC;
    SOL1_port_pwm : out STD_LOGIC;
    SOL2_port_pwm : out STD_LOGIC;
    SOL3_port_pwm : out STD_LOGIC;
    SOL4_port_pwm : out STD_LOGIC;
    SOL5_port_pwm : out STD_LOGIC;
    SOL6_port_pwm : out STD_LOGIC;
    SOL7_port_pwm : out STD_LOGIC;
    SOL8_port_pwm : out STD_LOGIC;
    SOL9_port_pwm : out STD_LOGIC;
    S_c2c_rxclk_in_n : in STD_LOGIC;
    S_c2c_rxclk_in_p : in STD_LOGIC;
    S_c2c_rxclk_out_n : out STD_LOGIC;
    S_c2c_rxclk_out_p : out STD_LOGIC;
    S_c2c_rxd_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S_c2c_txd_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    keep_out : out STD_LOGIC;
    led_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mm2s_irq : out STD_LOGIC;
    reset : in STD_LOGIC;
    rs232_uart_rxd : in STD_LOGIC;
    rs232_uart_txd : out STD_LOGIC;
    s2mm_irq : out STD_LOGIC;
    sys_diff_clock_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_diff_clock_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end S7_wrapper;

architecture STRUCTURE of S7_wrapper is
  component S7 is
  port (
    reset : in STD_LOGIC;
    S_c2c_rxd_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S_c2c_txd_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S_c2c_rxclk_in_p : in STD_LOGIC;
    S_c2c_rxclk_in_n : in STD_LOGIC;
    S_c2c_rxclk_out_p : out STD_LOGIC;
    S_c2c_rxclk_out_n : out STD_LOGIC;
    SM_IRQ : out STD_LOGIC_VECTOR ( 0 to 0 );
    mm2s_irq : out STD_LOGIC;
    s2mm_irq : out STD_LOGIC;
    QSPI_cs : in STD_LOGIC;
    QSPI_d0 : in STD_LOGIC;
    QSPI_d1 : in STD_LOGIC;
    QSPI_d2 : in STD_LOGIC;
    QSPI_d3 : in STD_LOGIC;
    keep_out : out STD_LOGIC;
    PHS21_pwm_out : out STD_LOGIC;
    PHS21_phs_in : in STD_LOGIC;
    PHS44_pwm_out : out STD_LOGIC;
    PHS44_phs_in : in STD_LOGIC;
    PHS15_pwm_out : out STD_LOGIC;
    PHS15_phs_in : in STD_LOGIC;
    PHS24_pwm_out : out STD_LOGIC;
    PHS24_phs_in : in STD_LOGIC;
    SOL0_port_pwm : out STD_LOGIC;
    SOL9_port_pwm : out STD_LOGIC;
    SM17_ena : out STD_LOGIC;
    SM17_ref : out STD_LOGIC;
    SM17_m2p : out STD_LOGIC;
    SM17_clk : out STD_LOGIC;
    SM17_dir : out STD_LOGIC;
    SM17_m1p : out STD_LOGIC;
    PHS14_pwm_out : out STD_LOGIC;
    PHS14_phs_in : in STD_LOGIC;
    SOL3_port_pwm : out STD_LOGIC;
    PHS9_pwm_out : out STD_LOGIC;
    PHS9_phs_in : in STD_LOGIC;
    led_4bits_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PHS10_pwm_out : out STD_LOGIC;
    PHS10_phs_in : in STD_LOGIC;
    PHS42_pwm_out : out STD_LOGIC;
    PHS42_phs_in : in STD_LOGIC;
    SM13_ena : out STD_LOGIC;
    SM13_ref : out STD_LOGIC;
    SM13_m2p : out STD_LOGIC;
    SM13_clk : out STD_LOGIC;
    SM13_dir : out STD_LOGIC;
    SM13_m1p : out STD_LOGIC;
    PHS18_pwm_out : out STD_LOGIC;
    PHS18_phs_in : in STD_LOGIC;
    rs232_uart_rxd : in STD_LOGIC;
    rs232_uart_txd : out STD_LOGIC;
    PHS22_pwm_out : out STD_LOGIC;
    PHS22_phs_in : in STD_LOGIC;
    PHS5_pwm_out : out STD_LOGIC;
    PHS5_phs_in : in STD_LOGIC;
    SM10_ena : out STD_LOGIC;
    SM10_ref : out STD_LOGIC;
    SM10_m2p : out STD_LOGIC;
    SM10_clk : out STD_LOGIC;
    SM10_dir : out STD_LOGIC;
    SM10_m1p : out STD_LOGIC;
    PHS0_pwm_out : out STD_LOGIC;
    PHS0_phs_in : in STD_LOGIC;
    PHS45_pwm_out : out STD_LOGIC;
    PHS45_phs_in : in STD_LOGIC;
    PHS34_pwm_out : out STD_LOGIC;
    PHS34_phs_in : in STD_LOGIC;
    PHS43_pwm_out : out STD_LOGIC;
    PHS43_phs_in : in STD_LOGIC;
    PHS11_pwm_out : out STD_LOGIC;
    PHS11_phs_in : in STD_LOGIC;
    PHS6_pwm_out : out STD_LOGIC;
    PHS6_phs_in : in STD_LOGIC;
    SM16_ena : out STD_LOGIC;
    SM16_ref : out STD_LOGIC;
    SM16_m2p : out STD_LOGIC;
    SM16_clk : out STD_LOGIC;
    SM16_dir : out STD_LOGIC;
    SM16_m1p : out STD_LOGIC;
    PHS13_pwm_out : out STD_LOGIC;
    PHS13_phs_in : in STD_LOGIC;
    PHS7_pwm_out : out STD_LOGIC;
    PHS7_phs_in : in STD_LOGIC;
    SOL1_port_pwm : out STD_LOGIC;
    PHS46_pwm_out : out STD_LOGIC;
    PHS46_phs_in : in STD_LOGIC;
    SOL5_port_pwm : out STD_LOGIC;
    SM19_ena : out STD_LOGIC;
    SM19_ref : out STD_LOGIC;
    SM19_m2p : out STD_LOGIC;
    SM19_clk : out STD_LOGIC;
    SM19_dir : out STD_LOGIC;
    SM19_m1p : out STD_LOGIC;
    SM6_ena : out STD_LOGIC;
    SM6_ref : out STD_LOGIC;
    SM6_m2p : out STD_LOGIC;
    SM6_clk : out STD_LOGIC;
    SM6_dir : out STD_LOGIC;
    SM6_m1p : out STD_LOGIC;
    DCM0_in1 : out STD_LOGIC;
    DCM0_in2 : out STD_LOGIC;
    DCM0_pwm : out STD_LOGIC;
    SOL4_port_pwm : out STD_LOGIC;
    SM11_ena : out STD_LOGIC;
    SM11_ref : out STD_LOGIC;
    SM11_m2p : out STD_LOGIC;
    SM11_clk : out STD_LOGIC;
    SM11_dir : out STD_LOGIC;
    SM11_m1p : out STD_LOGIC;
    PHS3_pwm_out : out STD_LOGIC;
    PHS3_phs_in : in STD_LOGIC;
    SOL6_port_pwm : out STD_LOGIC;
    PHS31_pwm_out : out STD_LOGIC;
    PHS31_phs_in : in STD_LOGIC;
    PHS33_pwm_out : out STD_LOGIC;
    PHS33_phs_in : in STD_LOGIC;
    PHS19_pwm_out : out STD_LOGIC;
    PHS19_phs_in : in STD_LOGIC;
    PHS32_pwm_out : out STD_LOGIC;
    PHS32_phs_in : in STD_LOGIC;
    PHS39_pwm_out : out STD_LOGIC;
    PHS39_phs_in : in STD_LOGIC;
    DCM2_in1 : out STD_LOGIC;
    DCM2_in2 : out STD_LOGIC;
    DCM2_pwm : out STD_LOGIC;
    SM7_ena : out STD_LOGIC;
    SM7_ref : out STD_LOGIC;
    SM7_m2p : out STD_LOGIC;
    SM7_clk : out STD_LOGIC;
    SM7_dir : out STD_LOGIC;
    SM7_m1p : out STD_LOGIC;
    PHS49_pwm_out : out STD_LOGIC;
    PHS49_phs_in : in STD_LOGIC;
    SOL7_port_pwm : out STD_LOGIC;
    PHS26_pwm_out : out STD_LOGIC;
    PHS26_phs_in : in STD_LOGIC;
    DCM1_in1 : out STD_LOGIC;
    DCM1_in2 : out STD_LOGIC;
    DCM1_pwm : out STD_LOGIC;
    PHS36_pwm_out : out STD_LOGIC;
    PHS36_phs_in : in STD_LOGIC;
    SM9_ena : out STD_LOGIC;
    SM9_ref : out STD_LOGIC;
    SM9_m2p : out STD_LOGIC;
    SM9_clk : out STD_LOGIC;
    SM9_dir : out STD_LOGIC;
    SM9_m1p : out STD_LOGIC;
    PHS35_pwm_out : out STD_LOGIC;
    PHS35_phs_in : in STD_LOGIC;
    SM4_ena : out STD_LOGIC;
    SM4_ref : out STD_LOGIC;
    SM4_m2p : out STD_LOGIC;
    SM4_clk : out STD_LOGIC;
    SM4_dir : out STD_LOGIC;
    SM4_m1p : out STD_LOGIC;
    PHS8_pwm_out : out STD_LOGIC;
    PHS8_phs_in : in STD_LOGIC;
    SM0_ena : out STD_LOGIC;
    SM0_ref : out STD_LOGIC;
    SM0_m2p : out STD_LOGIC;
    SM0_clk : out STD_LOGIC;
    SM0_dir : out STD_LOGIC;
    SM0_m1p : out STD_LOGIC;
    PHS47_pwm_out : out STD_LOGIC;
    PHS47_phs_in : in STD_LOGIC;
    PHS38_pwm_out : out STD_LOGIC;
    PHS38_phs_in : in STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_diff_clock_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    SOL2_port_pwm : out STD_LOGIC;
    SM3_ena : out STD_LOGIC;
    SM3_ref : out STD_LOGIC;
    SM3_m2p : out STD_LOGIC;
    SM3_clk : out STD_LOGIC;
    SM3_dir : out STD_LOGIC;
    SM3_m1p : out STD_LOGIC;
    PHS4_pwm_out : out STD_LOGIC;
    PHS4_phs_in : in STD_LOGIC;
    PHS40_pwm_out : out STD_LOGIC;
    PHS40_phs_in : in STD_LOGIC;
    SM12_ena : out STD_LOGIC;
    SM12_ref : out STD_LOGIC;
    SM12_m2p : out STD_LOGIC;
    SM12_clk : out STD_LOGIC;
    SM12_dir : out STD_LOGIC;
    SM12_m1p : out STD_LOGIC;
    SM8_ena : out STD_LOGIC;
    SM8_ref : out STD_LOGIC;
    SM8_m2p : out STD_LOGIC;
    SM8_clk : out STD_LOGIC;
    SM8_dir : out STD_LOGIC;
    SM8_m1p : out STD_LOGIC;
    PHS37_pwm_out : out STD_LOGIC;
    PHS37_phs_in : in STD_LOGIC;
    PHS28_pwm_out : out STD_LOGIC;
    PHS28_phs_in : in STD_LOGIC;
    SM1_ena : out STD_LOGIC;
    SM1_ref : out STD_LOGIC;
    SM1_m2p : out STD_LOGIC;
    SM1_clk : out STD_LOGIC;
    SM1_dir : out STD_LOGIC;
    SM1_m1p : out STD_LOGIC;
    PHS41_pwm_out : out STD_LOGIC;
    PHS41_phs_in : in STD_LOGIC;
    PHS1_pwm_out : out STD_LOGIC;
    PHS1_phs_in : in STD_LOGIC;
    PHS23_pwm_out : out STD_LOGIC;
    PHS23_phs_in : in STD_LOGIC;
    PHS20_pwm_out : out STD_LOGIC;
    PHS20_phs_in : in STD_LOGIC;
    PHS16_pwm_out : out STD_LOGIC;
    PHS16_phs_in : in STD_LOGIC;
    DCM4_in1 : out STD_LOGIC;
    DCM4_in2 : out STD_LOGIC;
    DCM4_pwm : out STD_LOGIC;
    SM15_ena : out STD_LOGIC;
    SM15_ref : out STD_LOGIC;
    SM15_m2p : out STD_LOGIC;
    SM15_clk : out STD_LOGIC;
    SM15_dir : out STD_LOGIC;
    SM15_m1p : out STD_LOGIC;
    PHS30_pwm_out : out STD_LOGIC;
    PHS30_phs_in : in STD_LOGIC;
    PHS29_pwm_out : out STD_LOGIC;
    PHS29_phs_in : in STD_LOGIC;
    PHS27_pwm_out : out STD_LOGIC;
    PHS27_phs_in : in STD_LOGIC;
    SM14_ena : out STD_LOGIC;
    SM14_ref : out STD_LOGIC;
    SM14_m2p : out STD_LOGIC;
    SM14_clk : out STD_LOGIC;
    SM14_dir : out STD_LOGIC;
    SM14_m1p : out STD_LOGIC;
    DCM3_in1 : out STD_LOGIC;
    DCM3_in2 : out STD_LOGIC;
    DCM3_pwm : out STD_LOGIC;
    PHS12_pwm_out : out STD_LOGIC;
    PHS12_phs_in : in STD_LOGIC;
    SM18_ena : out STD_LOGIC;
    SM18_ref : out STD_LOGIC;
    SM18_m2p : out STD_LOGIC;
    SM18_clk : out STD_LOGIC;
    SM18_dir : out STD_LOGIC;
    SM18_m1p : out STD_LOGIC;
    PHS48_pwm_out : out STD_LOGIC;
    PHS48_phs_in : in STD_LOGIC;
    PHS25_pwm_out : out STD_LOGIC;
    PHS25_phs_in : in STD_LOGIC;
    SM5_ena : out STD_LOGIC;
    SM5_ref : out STD_LOGIC;
    SM5_m2p : out STD_LOGIC;
    SM5_clk : out STD_LOGIC;
    SM5_dir : out STD_LOGIC;
    SM5_m1p : out STD_LOGIC;
    SM2_ena : out STD_LOGIC;
    SM2_ref : out STD_LOGIC;
    SM2_m2p : out STD_LOGIC;
    SM2_clk : out STD_LOGIC;
    SM2_dir : out STD_LOGIC;
    SM2_m1p : out STD_LOGIC;
    SOL8_port_pwm : out STD_LOGIC;
    PHS17_pwm_out : out STD_LOGIC;
    PHS17_phs_in : in STD_LOGIC;
    PHS2_pwm_out : out STD_LOGIC;
    PHS2_phs_in : in STD_LOGIC
  );
  end component S7;
begin
S7_i: component S7
     port map (
      DCM0_in1 => DCM0_in1,
      DCM0_in2 => DCM0_in2,
      DCM0_pwm => DCM0_pwm,
      DCM1_in1 => DCM1_in1,
      DCM1_in2 => DCM1_in2,
      DCM1_pwm => DCM1_pwm,
      DCM2_in1 => DCM2_in1,
      DCM2_in2 => DCM2_in2,
      DCM2_pwm => DCM2_pwm,
      DCM3_in1 => DCM3_in1,
      DCM3_in2 => DCM3_in2,
      DCM3_pwm => DCM3_pwm,
      DCM4_in1 => DCM4_in1,
      DCM4_in2 => DCM4_in2,
      DCM4_pwm => DCM4_pwm,
      PHS0_phs_in => PHS0_phs_in,
      PHS0_pwm_out => PHS0_pwm_out,
      PHS10_phs_in => PHS10_phs_in,
      PHS10_pwm_out => PHS10_pwm_out,
      PHS11_phs_in => PHS11_phs_in,
      PHS11_pwm_out => PHS11_pwm_out,
      PHS12_phs_in => PHS12_phs_in,
      PHS12_pwm_out => PHS12_pwm_out,
      PHS13_phs_in => PHS13_phs_in,
      PHS13_pwm_out => PHS13_pwm_out,
      PHS14_phs_in => PHS14_phs_in,
      PHS14_pwm_out => PHS14_pwm_out,
      PHS15_phs_in => PHS15_phs_in,
      PHS15_pwm_out => PHS15_pwm_out,
      PHS16_phs_in => PHS16_phs_in,
      PHS16_pwm_out => PHS16_pwm_out,
      PHS17_phs_in => PHS17_phs_in,
      PHS17_pwm_out => PHS17_pwm_out,
      PHS18_phs_in => PHS18_phs_in,
      PHS18_pwm_out => PHS18_pwm_out,
      PHS19_phs_in => PHS19_phs_in,
      PHS19_pwm_out => PHS19_pwm_out,
      PHS1_phs_in => PHS1_phs_in,
      PHS1_pwm_out => PHS1_pwm_out,
      PHS20_phs_in => PHS20_phs_in,
      PHS20_pwm_out => PHS20_pwm_out,
      PHS21_phs_in => PHS21_phs_in,
      PHS21_pwm_out => PHS21_pwm_out,
      PHS22_phs_in => PHS22_phs_in,
      PHS22_pwm_out => PHS22_pwm_out,
      PHS23_phs_in => PHS23_phs_in,
      PHS23_pwm_out => PHS23_pwm_out,
      PHS24_phs_in => PHS24_phs_in,
      PHS24_pwm_out => PHS24_pwm_out,
      PHS25_phs_in => PHS25_phs_in,
      PHS25_pwm_out => PHS25_pwm_out,
      PHS26_phs_in => PHS26_phs_in,
      PHS26_pwm_out => PHS26_pwm_out,
      PHS27_phs_in => PHS27_phs_in,
      PHS27_pwm_out => PHS27_pwm_out,
      PHS28_phs_in => PHS28_phs_in,
      PHS28_pwm_out => PHS28_pwm_out,
      PHS29_phs_in => PHS29_phs_in,
      PHS29_pwm_out => PHS29_pwm_out,
      PHS2_phs_in => PHS2_phs_in,
      PHS2_pwm_out => PHS2_pwm_out,
      PHS30_phs_in => PHS30_phs_in,
      PHS30_pwm_out => PHS30_pwm_out,
      PHS31_phs_in => PHS31_phs_in,
      PHS31_pwm_out => PHS31_pwm_out,
      PHS32_phs_in => PHS32_phs_in,
      PHS32_pwm_out => PHS32_pwm_out,
      PHS33_phs_in => PHS33_phs_in,
      PHS33_pwm_out => PHS33_pwm_out,
      PHS34_phs_in => PHS34_phs_in,
      PHS34_pwm_out => PHS34_pwm_out,
      PHS35_phs_in => PHS35_phs_in,
      PHS35_pwm_out => PHS35_pwm_out,
      PHS36_phs_in => PHS36_phs_in,
      PHS36_pwm_out => PHS36_pwm_out,
      PHS37_phs_in => PHS37_phs_in,
      PHS37_pwm_out => PHS37_pwm_out,
      PHS38_phs_in => PHS38_phs_in,
      PHS38_pwm_out => PHS38_pwm_out,
      PHS39_phs_in => PHS39_phs_in,
      PHS39_pwm_out => PHS39_pwm_out,
      PHS3_phs_in => PHS3_phs_in,
      PHS3_pwm_out => PHS3_pwm_out,
      PHS40_phs_in => PHS40_phs_in,
      PHS40_pwm_out => PHS40_pwm_out,
      PHS41_phs_in => PHS41_phs_in,
      PHS41_pwm_out => PHS41_pwm_out,
      PHS42_phs_in => PHS42_phs_in,
      PHS42_pwm_out => PHS42_pwm_out,
      PHS43_phs_in => PHS43_phs_in,
      PHS43_pwm_out => PHS43_pwm_out,
      PHS44_phs_in => PHS44_phs_in,
      PHS44_pwm_out => PHS44_pwm_out,
      PHS45_phs_in => PHS45_phs_in,
      PHS45_pwm_out => PHS45_pwm_out,
      PHS46_phs_in => PHS46_phs_in,
      PHS46_pwm_out => PHS46_pwm_out,
      PHS47_phs_in => PHS47_phs_in,
      PHS47_pwm_out => PHS47_pwm_out,
      PHS48_phs_in => PHS48_phs_in,
      PHS48_pwm_out => PHS48_pwm_out,
      PHS49_phs_in => PHS49_phs_in,
      PHS49_pwm_out => PHS49_pwm_out,
      PHS4_phs_in => PHS4_phs_in,
      PHS4_pwm_out => PHS4_pwm_out,
      PHS5_phs_in => PHS5_phs_in,
      PHS5_pwm_out => PHS5_pwm_out,
      PHS6_phs_in => PHS6_phs_in,
      PHS6_pwm_out => PHS6_pwm_out,
      PHS7_phs_in => PHS7_phs_in,
      PHS7_pwm_out => PHS7_pwm_out,
      PHS8_phs_in => PHS8_phs_in,
      PHS8_pwm_out => PHS8_pwm_out,
      PHS9_phs_in => PHS9_phs_in,
      PHS9_pwm_out => PHS9_pwm_out,
      QSPI_cs => QSPI_cs,
      QSPI_d0 => QSPI_d0,
      QSPI_d1 => QSPI_d1,
      QSPI_d2 => QSPI_d2,
      QSPI_d3 => QSPI_d3,
      SM0_clk => SM0_clk,
      SM0_dir => SM0_dir,
      SM0_ena => SM0_ena,
      SM0_m1p => SM0_m1p,
      SM0_m2p => SM0_m2p,
      SM0_ref => SM0_ref,
      SM10_clk => SM10_clk,
      SM10_dir => SM10_dir,
      SM10_ena => SM10_ena,
      SM10_m1p => SM10_m1p,
      SM10_m2p => SM10_m2p,
      SM10_ref => SM10_ref,
      SM11_clk => SM11_clk,
      SM11_dir => SM11_dir,
      SM11_ena => SM11_ena,
      SM11_m1p => SM11_m1p,
      SM11_m2p => SM11_m2p,
      SM11_ref => SM11_ref,
      SM12_clk => SM12_clk,
      SM12_dir => SM12_dir,
      SM12_ena => SM12_ena,
      SM12_m1p => SM12_m1p,
      SM12_m2p => SM12_m2p,
      SM12_ref => SM12_ref,
      SM13_clk => SM13_clk,
      SM13_dir => SM13_dir,
      SM13_ena => SM13_ena,
      SM13_m1p => SM13_m1p,
      SM13_m2p => SM13_m2p,
      SM13_ref => SM13_ref,
      SM14_clk => SM14_clk,
      SM14_dir => SM14_dir,
      SM14_ena => SM14_ena,
      SM14_m1p => SM14_m1p,
      SM14_m2p => SM14_m2p,
      SM14_ref => SM14_ref,
      SM15_clk => SM15_clk,
      SM15_dir => SM15_dir,
      SM15_ena => SM15_ena,
      SM15_m1p => SM15_m1p,
      SM15_m2p => SM15_m2p,
      SM15_ref => SM15_ref,
      SM16_clk => SM16_clk,
      SM16_dir => SM16_dir,
      SM16_ena => SM16_ena,
      SM16_m1p => SM16_m1p,
      SM16_m2p => SM16_m2p,
      SM16_ref => SM16_ref,
      SM17_clk => SM17_clk,
      SM17_dir => SM17_dir,
      SM17_ena => SM17_ena,
      SM17_m1p => SM17_m1p,
      SM17_m2p => SM17_m2p,
      SM17_ref => SM17_ref,
      SM18_clk => SM18_clk,
      SM18_dir => SM18_dir,
      SM18_ena => SM18_ena,
      SM18_m1p => SM18_m1p,
      SM18_m2p => SM18_m2p,
      SM18_ref => SM18_ref,
      SM19_clk => SM19_clk,
      SM19_dir => SM19_dir,
      SM19_ena => SM19_ena,
      SM19_m1p => SM19_m1p,
      SM19_m2p => SM19_m2p,
      SM19_ref => SM19_ref,
      SM1_clk => SM1_clk,
      SM1_dir => SM1_dir,
      SM1_ena => SM1_ena,
      SM1_m1p => SM1_m1p,
      SM1_m2p => SM1_m2p,
      SM1_ref => SM1_ref,
      SM2_clk => SM2_clk,
      SM2_dir => SM2_dir,
      SM2_ena => SM2_ena,
      SM2_m1p => SM2_m1p,
      SM2_m2p => SM2_m2p,
      SM2_ref => SM2_ref,
      SM3_clk => SM3_clk,
      SM3_dir => SM3_dir,
      SM3_ena => SM3_ena,
      SM3_m1p => SM3_m1p,
      SM3_m2p => SM3_m2p,
      SM3_ref => SM3_ref,
      SM4_clk => SM4_clk,
      SM4_dir => SM4_dir,
      SM4_ena => SM4_ena,
      SM4_m1p => SM4_m1p,
      SM4_m2p => SM4_m2p,
      SM4_ref => SM4_ref,
      SM5_clk => SM5_clk,
      SM5_dir => SM5_dir,
      SM5_ena => SM5_ena,
      SM5_m1p => SM5_m1p,
      SM5_m2p => SM5_m2p,
      SM5_ref => SM5_ref,
      SM6_clk => SM6_clk,
      SM6_dir => SM6_dir,
      SM6_ena => SM6_ena,
      SM6_m1p => SM6_m1p,
      SM6_m2p => SM6_m2p,
      SM6_ref => SM6_ref,
      SM7_clk => SM7_clk,
      SM7_dir => SM7_dir,
      SM7_ena => SM7_ena,
      SM7_m1p => SM7_m1p,
      SM7_m2p => SM7_m2p,
      SM7_ref => SM7_ref,
      SM8_clk => SM8_clk,
      SM8_dir => SM8_dir,
      SM8_ena => SM8_ena,
      SM8_m1p => SM8_m1p,
      SM8_m2p => SM8_m2p,
      SM8_ref => SM8_ref,
      SM9_clk => SM9_clk,
      SM9_dir => SM9_dir,
      SM9_ena => SM9_ena,
      SM9_m1p => SM9_m1p,
      SM9_m2p => SM9_m2p,
      SM9_ref => SM9_ref,
      SM_IRQ(0) => SM_IRQ(0),
      SOL0_port_pwm => SOL0_port_pwm,
      SOL1_port_pwm => SOL1_port_pwm,
      SOL2_port_pwm => SOL2_port_pwm,
      SOL3_port_pwm => SOL3_port_pwm,
      SOL4_port_pwm => SOL4_port_pwm,
      SOL5_port_pwm => SOL5_port_pwm,
      SOL6_port_pwm => SOL6_port_pwm,
      SOL7_port_pwm => SOL7_port_pwm,
      SOL8_port_pwm => SOL8_port_pwm,
      SOL9_port_pwm => SOL9_port_pwm,
      S_c2c_rxclk_in_n => S_c2c_rxclk_in_n,
      S_c2c_rxclk_in_p => S_c2c_rxclk_in_p,
      S_c2c_rxclk_out_n => S_c2c_rxclk_out_n,
      S_c2c_rxclk_out_p => S_c2c_rxclk_out_p,
      S_c2c_rxd_out(16 downto 0) => S_c2c_rxd_out(16 downto 0),
      S_c2c_txd_in(16 downto 0) => S_c2c_txd_in(16 downto 0),
      keep_out => keep_out,
      led_4bits_tri_o(3 downto 0) => led_4bits_tri_o(3 downto 0),
      mm2s_irq => mm2s_irq,
      reset => reset,
      rs232_uart_rxd => rs232_uart_rxd,
      rs232_uart_txd => rs232_uart_txd,
      s2mm_irq => s2mm_irq,
      sys_diff_clock_clk_n(0) => sys_diff_clock_clk_n(0),
      sys_diff_clock_clk_p(0) => sys_diff_clock_clk_p(0)
    );
end STRUCTURE;
