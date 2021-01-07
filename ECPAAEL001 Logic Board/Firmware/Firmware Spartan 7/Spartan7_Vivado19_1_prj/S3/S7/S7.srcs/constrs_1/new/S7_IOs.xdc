#S_CLK200_p FPGA_Netname
set_property -dict "IOSTANDARD LVDS_25 PACKAGE_PIN K7" [get_ports sys_diff_clock_clk_p]    
#S_CLK200_n FPGA_Netname
set_property -dict "IOSTANDARD LVDS_25 PACKAGE_PIN K6" [get_ports sys_diff_clock_clk_n]   
#https://forums.xilinx.com/t5/Other-FPGA-Architectures/LVDS-1-8-interface-in-Artix-7/m-p/522321#M6560


#   Board_Netname   FPGA_Netname
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN E3" [get_ports reset]     
#Board_Netname FPGA_Netname
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN R1" [get_ports {led_4bits_tri_o[3]}]    
#Board_Netname FPGA_Netname
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN P5" [get_ports {led_4bits_tri_o[2]}]     
#Board_Netname FPGA_Netname
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN P4" [get_ports {led_4bits_tri_o[1]}]    
#Board_Netname FPGA_Netname
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN P3" [get_ports {led_4bits_tri_o[0]}]     
#Board_Netname FPGA_Netname
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN N1" [get_ports rs232_uart_rxd]     
#Board_Netname FPGA_Netname
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN N7" [get_ports rs232_uart_txd]     


set_property -dict "IOSTANDARD LVDS_25 PACKAGE_PIN H3" [ get_ports S_c2c_rxclk_in_p ] 
#  S_c2c_rxclk_in_n  IO_L11N_T1_SRCC_35
set_property -dict "IOSTANDARD LVDS_25 PACKAGE_PIN H2" [ get_ports S_c2c_rxclk_in_n ] 
#  S_c2c_rxclk_out_p  IO_L14P_T2_SRCC_35
set_property -dict "IOSTANDARD LVDS_25 PACKAGE_PIN M7" [ get_ports S_c2c_rxclk_out_p ] 
#  S_c2c_rxclk_out_n  IO_L14N_T2_SRCC_35
set_property -dict "IOSTANDARD LVDS_25 PACKAGE_PIN L7" [ get_ports S_c2c_rxclk_out_n ] 

#  S_c2c_s2m_irq_in[0]  IO_L10P_T1_AD15P_35
#set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN E2" [ get_ports {S_c2c_s2m_irq_in[0]} ] 
#  S_c2c_s2m_irq_in[1]  IO_L10N_T1_AD15N_35
#set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN E1" [ get_ports {S_c2c_s2m_irq_in[1]} ] 
#  S_c2c_s2m_irq_in[2]  IO_L1N_T0_AD4N_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN F5" [ get_ports {S_c2c_txd_in[0]} ]
#  S_c2c_s2m_irq_in[3]  IO_L3N_T0_DQS_AD5N_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN F4" [ get_ports {S_c2c_txd_in[1]} ] 
#  S_c2c_txd_in[0]  IO_L8P_T1_AD14P_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN F3" [ get_ports {S_c2c_txd_in[2]} ] 
#  S_c2c_txd_in[1]  IO_L7N_T1_AD6N_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN F2" [ get_ports {S_c2c_txd_in[3]} ] 
#  S_c2c_txd_in[2]  IO_L6N_T0_VREF_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN G7" [ get_ports {S_c2c_txd_in[4]} ] 
#  S_c2c_txd_in[3]  IO_L4N_T0_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN G6" [ get_ports {S_c2c_txd_in[5]} ] 
#  S_c2c_txd_in[4]  IO_L1P_T0_AD4P_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN G5" [ get_ports {S_c2c_txd_in[6]} ] 
#  S_c2c_txd_in[5]  IO_L3P_T0_DQS_AD5P_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN G4" [ get_ports {S_c2c_txd_in[7]} ] 
#  S_c2c_txd_in[6]  IO_L7P_T1_AD6P_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN G2" [ get_ports {S_c2c_txd_in[8]} ] 
#  S_c2c_txd_in[7]  IO_L9N_T1_DQS_AD7N_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN G1" [ get_ports {S_c2c_txd_in[9]} ] 
#  S_c2c_txd_in[8]  IO_L6P_T0_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN H7" [ get_ports {S_c2c_txd_in[10]} ] 
#  S_c2c_txd_in[9]  IO_L4P_T0_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN H6" [ get_ports {S_c2c_txd_in[11]} ] 
#  S_c2c_txd_in[10]  IO_L9P_T1_DQS_AD7P_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN H1" [ get_ports {S_c2c_txd_in[12]} ] 
#  S_c2c_txd_in[11]  IO_L2N_T0_AD12N_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN J8" [ get_ports {S_c2c_txd_in[13]} ] 
#  S_c2c_txd_in[12]  IO_L5P_T0_AD13P_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN J6" [ get_ports {S_c2c_txd_in[14]} ] 
#  S_c2c_txd_in[13]  IO_L5N_T0_AD13N_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN J5" [ get_ports {S_c2c_txd_in[15]} ] 
#  S_c2c_txd_in[14]  IO_L20N_T3_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN J3" [ get_ports {S_c2c_txd_in[16]} ] 


#  S_c2c_s2m_irq_out[0]  IO_L23N_T3_35
#set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN J1" [ get_ports {S_c2c_s2m_irq_out[0]} ] 
#  S_c2c_s2m_irq_out[1]  IO_L2P_T0_AD12P_35
#set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN K8" [ get_ports {S_c2c_s2m_irq_out[1]} ] 
#  S_c2c_s2m_irq_out[2]  IO_L15N_T2_DQS_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN K5" [ get_ports {S_c2c_rxd_out[0]} ] 
#  S_c2c_s2m_irq_out[3]  IO_L20P_T3_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN K3" [ get_ports {S_c2c_rxd_out[1]} ] 
#  S_c2c_rxd_out[0]  IO_L21N_T3_DQS_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN K2" [ get_ports {S_c2c_rxd_out[2]} ] 
#  S_c2c_rxd_out[1]  IO_L23P_T3_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN K1" [ get_ports {S_c2c_rxd_out[3]} ] 
#  S_c2c_rxd_out[2]  IO_L15P_T2_DQS_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN L5" [ get_ports {S_c2c_rxd_out[4]} ] 
#  S_c2c_rxd_out[3]  IO_L18P_T2_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN L4" [ get_ports {S_c2c_rxd_out[5]} ] 
#  S_c2c_rxd_out[4]  IO_L18N_T2_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN L3" [ get_ports {S_c2c_rxd_out[6]} ] 
#  S_c2c_rxd_out[5]  IO_L21P_T3_DQS_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN L2" [ get_ports {S_c2c_rxd_out[7]} ] 
#  S_c2c_rxd_out[6]  IO_L16N_T2_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN M6" [ get_ports {S_c2c_rxd_out[8]} ] 
#  S_c2c_rxd_out[7]  IO_L17P_T2_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN M5" [ get_ports {S_c2c_rxd_out[9]} ] 
#  S_c2c_rxd_out[8]  IO_L17N_T2_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN M4" [ get_ports {S_c2c_rxd_out[10]} ] 
#  S_c2c_rxd_out[9]  IO_L24P_T3_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN M2" [ get_ports {S_c2c_rxd_out[11]} ] 
#  S_c2c_rxd_out[10]  IO_L24N_T3_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN M1" [ get_ports {S_c2c_rxd_out[12]} ] 
#  S_c2c_rxd_out[11]  IO_L16P_T2_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN N6" [ get_ports {S_c2c_rxd_out[13]} ] 
#  S_c2c_rxd_out[12]  IO_L19P_T3_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN N4" [ get_ports {S_c2c_rxd_out[14]} ] 
#  S_c2c_rxd_out[13]  IO_L19N_T3_VREF_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN N3" [ get_ports {S_c2c_rxd_out[15]} ] 
#  S_c2c_rxd_out[14]  IO_L22P_T3_35
set_property -dict "IOSTANDARD LVCMOS25 PACKAGE_PIN N2" [ get_ports {S_c2c_rxd_out[16]} ] 


#	DCM0_IN1	IO_L11N_T1_SRCC_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E26" [get_ports DCM0_in1]
#	DCM0_IN2	IO_L13N_T2_MRCC_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN F22" [get_ports DCM0_in2]
#	DCM0_PWM	IO_L10P_T1_AD11P_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN F23" [get_ports DCM0_pwm]

#	DCM1_IN1	IO_L17P_T2_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN F24" [get_ports DCM1_in1]
#	DCM1_IN2	IO_L17N_T2_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN F25" [get_ports DCM1_in2]
#	DCM1_PWM	IO_L4P_T0_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN G20" [get_ports DCM1_pwm]

#	DCM2_IN1	IO_L4N_T0_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN G21" [get_ports DCM2_in1]
#	DCM2_IN2	IO_L13P_T2_MRCC_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN G22" [get_ports DCM2_in2]
#	DCM2_PWM	IO_L15N_T2_DQS_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN G24" [get_ports DCM2_pwm]

#	DCM3_IN1	IO_L18P_T2_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN G25" [get_ports DCM3_in1]
#	DCM3_IN2	IO_L18N_T2_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN G26" [get_ports DCM3_in2]
#	DCM3_PWM	IO_L2N_T0_AD8N_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN H19" [get_ports DCM3_pwm]

#	DCM4_IN1	IO_L1N_T0_AD0N_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN H21" [get_ports DCM4_in1]
#	DCM4_IN2	IO_25_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN H22" [get_ports DCM4_in2]
#	DCM4_PWM	IO_L14N_T2_SRCC_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN H23" [get_ports DCM4_pwm]

#	PH_SNS[0]	IO_0_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A13" [get_ports PHS0_phs_in]
#	PH_SNS[1]	IO_L6P_T0_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C13" [get_ports PHS1_phs_in]
#	PH_SNS[2]	IO_L3P_T0_DQS_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A14" [get_ports PHS2_phs_in]
#	PH_SNS[3]	IO_L4P_T0_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B14" [get_ports PHS3_phs_in]
#	PH_SNS[4]	IO_L6N_T0_VREF_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C14" [get_ports PHS4_phs_in]
#	PH_SNS[5]	IO_L5P_T0_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D14" [get_ports PHS5_phs_in]
#	PH_SNS[6]	IO_L1P_T0_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN F14" [get_ports PHS6_phs_in]
#	PH_SNS[7]	IO_L3N_T0_DQS_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A15" [get_ports PHS7_phs_in]
#	PH_SNS[8]	IO_L4N_T0_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B15" [get_ports PHS8_phs_in]
#	PH_SNS[9]	IO_L5N_T0_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D15" [get_ports PHS9_phs_in]
#	PH_SNS[10]	IO_L2P_T0_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E15" [get_ports PHS10_phs_in]
#	PH_SNS[11]	IO_L1N_T0_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN F15" [get_ports PHS11_phs_in]
#	PH_SNS[12]	IO_L9P_T1_DQS_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B16" [get_ports PHS12_phs_in]
#	PH_SNS[13]	IO_L8N_T1_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C16" [get_ports PHS13_phs_in]
#	PH_SNS[14]	IO_L8P_T1_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D16" [get_ports PHS14_phs_in]
#	PH_SNS[15]	IO_L2N_T0_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E16" [get_ports PHS15_phs_in]
#	PH_SNS[16]	IO_L11P_T1_SRCC_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A17" [get_ports PHS16_phs_in]
#	PH_SNS[17]	IO_L9N_T1_DQS_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B17" [get_ports PHS17_phs_in]
#	PH_SNS[18]	IO_L7P_T1_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C17" [get_ports PHS18_phs_in]
#	PH_SNS[19]	IO_L10P_T1_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E17" [get_ports PHS19_phs_in]
#	PH_SNS[20]	IO_L12P_T1_MRCC_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN F17" [get_ports PHS20_phs_in]
#	PH_SNS[21]	IO_L11N_T1_SRCC_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A18" [get_ports PHS21_phs_in]
#	PH_SNS[22]	IO_L7N_T1_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C18" [get_ports PHS22_phs_in]
#	PH_SNS[23]	IO_L13P_T2_MRCC_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D18" [get_ports PHS23_phs_in]
#	PH_SNS[24]	IO_L10N_T1_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E18" [get_ports PHS24_phs_in]
#	PH_SNS[25]	IO_L12N_T1_MRCC_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN F18" [get_ports PHS25_phs_in]
#	PH_SNS[26]	IO_L18P_T2_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A19" [get_ports PHS26_phs_in]
#	PH_SNS[27]	IO_L17P_T2_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B19" [get_ports PHS27_phs_in]
#	PH_SNS[28]	IO_L13N_T2_MRCC_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C19" [get_ports PHS28_phs_in]
#	PH_SNS[29]	IO_L16P_T2_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D19" [get_ports PHS29_phs_in]
#	PH_SNS[30]	IO_L15P_T2_DQS_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN F19" [get_ports PHS30_phs_in]
#	PH_SNS[31]	IO_25_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN G19" [get_ports PHS31_phs_in]
#	PH_SNS[32]	IO_L18N_T2_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A20" [get_ports PHS32_phs_in]
#	PH_SNS[33]	IO_L17N_T2_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B20" [get_ports PHS33_phs_in]
#	PH_SNS[34]	IO_L16N_T2_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D20" [get_ports PHS34_phs_in]
#	PH_SNS[35]	IO_L14P_T2_SRCC_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E20" [get_ports PHS35_phs_in]
#	PH_SNS[36]	IO_L15N_T2_DQS_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN F20" [get_ports PHS36_phs_in]
#	PH_SNS[37]	IO_L22P_T3_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B21" [get_ports PHS37_phs_in]
#	PH_SNS[38]	IO_L19N_T3_VREF_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C21" [get_ports PHS38_phs_in]
#	PH_SNS[39]	IO_L19P_T3_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D21" [get_ports PHS39_phs_in]
#	PH_SNS[40]	IO_L14N_T2_SRCC_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E21" [get_ports PHS40_phs_in]
#	PH_SNS[41]	IO_L20P_T3_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A22" [get_ports PHS41_phs_in]
#	PH_SNS[42]	IO_L22N_T3_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B22" [get_ports PHS42_phs_in]
#	PH_SNS[43]	IO_L24P_T3_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C22" [get_ports PHS43_phs_in]
#	PH_SNS[44]	IO_L20N_T3_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A23" [get_ports PHS44_phs_in]
#	PH_SNS[45]	IO_L24N_T3_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C23" [get_ports PHS45_phs_in]
#	PH_SNS[46]	IO_L21P_T3_DQS_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A24" [get_ports PHS46_phs_in]
#	PH_SNS[47]	IO_L23N_T3_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B24" [get_ports PHS47_phs_in]
#	PH_SNS[48]	IO_L23P_T3_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C24" [get_ports PHS48_phs_in]
#	PH_SNS[49]	IO_L21N_T3_DQS_16
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A25" [get_ports PHS49_phs_in]

#	PH_RC[0]	IO_L23P_T3_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D1" [get_ports PHS0_pwm_out]
#	PH_RC[1]	IO_L23N_T3_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C1" [get_ports PHS1_pwm_out]
#	PH_RC[2]	IO_L21N_T3_DQS_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B1" [get_ports PHS2_pwm_out]
#	PH_RC[3]	IO_L19N_T3_VREF_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C2" [get_ports PHS3_pwm_out]
#	PH_RC[4]	IO_L21P_T3_DQS_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B2" [get_ports PHS4_pwm_out]
#	PH_RC[5]	IO_L22N_T3_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A2" [get_ports PHS5_pwm_out]
#	PH_RC[6]	IO_L24N_T3_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D3" [get_ports PHS6_pwm_out]
#	PH_RC[7]	IO_L19P_T3_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C3" [get_ports PHS7_pwm_out]
#	PH_RC[8]	IO_L22P_T3_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A3" [get_ports PHS8_pwm_out]
#	PH_RC[9]	IO_L24P_T3_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D4" [get_ports PHS9_pwm_out]
#	PH_RC[10]	IO_L20P_T3_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C4" [get_ports PHS10_pwm_out]
#	PH_RC[11]	IO_L20N_T3_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B4" [get_ports PHS11_pwm_out]
#	PH_RC[12]	IO_25_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A4" [get_ports PHS12_pwm_out]
#	PH_RC[13]	IO_L17P_T2_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E5" [get_ports PHS13_pwm_out]
#	PH_RC[14]	IO_L17N_T2_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D5" [get_ports PHS14_pwm_out]
#	PH_RC[15]	IO_L18P_T2_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B5" [get_ports PHS15_pwm_out]
#	PH_RC[16]	IO_L18N_T2_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A5" [get_ports PHS16_pwm_out]
#	PH_RC[17]	IO_L15P_T2_DQS_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E6" [get_ports PHS17_pwm_out]
#	PH_RC[18]	IO_L15N_T2_DQS_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D6" [get_ports PHS18_pwm_out]
#	PH_RC[19]	IO_L13N_T2_MRCC_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C6" [get_ports PHS19_pwm_out]
#	PH_RC[20]	IO_L14N_T2_SRCC_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B6" [get_ports PHS20_pwm_out]
#	PH_RC[21]	IO_L16P_T2_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN F7" [get_ports PHS21_pwm_out]
#	PH_RC[22]	IO_L16N_T2_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E7" [get_ports PHS22_pwm_out]
#	PH_RC[23]	IO_L13P_T2_MRCC_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C7" [get_ports PHS23_pwm_out]
#	PH_RC[24]	IO_L14P_T2_SRCC_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B7" [get_ports PHS24_pwm_out]
#	PH_RC[25]	IO_L11N_T1_SRCC_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A7" [get_ports PHS25_pwm_out]
#	PH_RC[26]	IO_L7P_T1_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN F8" [get_ports PHS26_pwm_out]
#	PH_RC[27]	IO_L7N_T1_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E8" [get_ports PHS27_pwm_out]
#	PH_RC[28]	IO_L12N_T1_MRCC_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D8" [get_ports PHS28_pwm_out]
#	PH_RC[29]	IO_L8N_T1_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C8" [get_ports PHS29_pwm_out]
#	PH_RC[30]	IO_L11P_T1_SRCC_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A8" [get_ports PHS30_pwm_out]
#	PH_RC[31]	IO_L10N_T1_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN F9" [get_ports PHS31_pwm_out]
#	PH_RC[32]	IO_L12P_T1_MRCC_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D9" [get_ports PHS32_pwm_out]
#	PH_RC[33]	IO_L8P_T1_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C9" [get_ports PHS33_pwm_out]
#	PH_RC[34]	IO_L9P_T1_DQS_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B9" [get_ports PHS34_pwm_out]
#	PH_RC[35]	IO_L9N_T1_DQS_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A9" [get_ports PHS35_pwm_out]
#	PH_RC[36]	IO_L10P_T1_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN F10" [get_ports PHS36_pwm_out]
#	PH_RC[37]	IO_L1N_T0_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E10" [get_ports PHS37_pwm_out]
#	PH_RC[38]	IO_L3N_T0_DQS_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D10" [get_ports PHS38_pwm_out]
#	PH_RC[39]	IO_L4P_T0_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B10" [get_ports PHS39_pwm_out]
#	PH_RC[40]	IO_L4N_T0_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A10" [get_ports PHS40_pwm_out]
#	PH_RC[41]	IO_L1P_T0_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E11" [get_ports PHS41_pwm_out]
#	PH_RC[42]	IO_L3P_T0_DQS_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D11" [get_ports PHS42_pwm_out]
#	PH_RC[43]	IO_L5N_T0_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C11" [get_ports PHS43_pwm_out]
#	PH_RC[44]	IO_L6N_T0_VREF_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B11" [get_ports PHS44_pwm_out]
#	PH_RC[45]	IO_L2P_T0_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN F12" [get_ports PHS45_pwm_out]
#	PH_RC[46]	IO_L2N_T0_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E12" [get_ports PHS46_pwm_out]
#	PH_RC[47]	IO_L5P_T0_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C12" [get_ports PHS47_pwm_out]
#	PH_RC[48]	IO_L6P_T0_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B12" [get_ports PHS48_pwm_out]
#	PH_RC[49]	IO_0_36
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN A12" [get_ports PHS49_pwm_out]

#	SM0_CLK	IO_0_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN J21" [get_ports SM0_clk]
#	SM0_DIR	IO_L15P_T2_DQS_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN H24" [get_ports SM0_dir]
#	SM0_ENA	IO_L14P_T2_SRCC_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN J23" [get_ports SM0_ena]
#	SM0_M1P	IO_L2P_T0_AD8P_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN J19" [get_ports SM0_m1p]
#	SM0_M2P	IO_L1P_T0_AD0P_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN J20" [get_ports SM0_m2p]
#	SM0_REF	IO_L16N_T2_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN H26" [get_ports SM0_ref]

#	SM1_CLK	IO_L3P_T0_DQS_AD1P_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN K21" [get_ports SM1_clk]
#	SM1_DIR	IO_L21P_T3_DQS_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN J24" [get_ports SM1_dir]
#	SM1_ENA	IO_L3N_T0_DQS_AD1N_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN K22" [get_ports SM1_ena]
#	SM1_M1P	IO_L16P_T2_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN J26" [get_ports SM1_m1p]
#	SM1_M2P	IO_L5N_T0_AD9N_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN K20" [get_ports SM1_m2p]
#	SM1_REF	IO_L21N_T3_DQS_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN J25" [get_ports SM1_ref]

#	SM2_CLK	IO_L20P_T3_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN L22" [get_ports SM2_clk]
#	SM2_DIR	IO_L20N_T3_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN K23" [get_ports SM2_dir]
#	SM2_ENA	IO_L22N_T3_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN L24" [get_ports SM2_ena]
#	SM2_M1P	IO_L23N_T3_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN K26" [get_ports SM2_m1p]
#	SM2_M2P	IO_L5P_T0_AD9P_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN L20" [get_ports SM2_m2p]
#	SM2_REF	IO_L23P_T3_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN K25" [get_ports SM2_ref]

#	SM3_CLK	IO_L19P_T3_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN M22" [get_ports SM3_clk]
#	SM3_DIR	IO_L19N_T3_VREF_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN L23" [get_ports SM3_dir]
#	SM3_ENA	IO_L22P_T3_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN M24" [get_ports SM3_ena]
#	SM3_M1P	IO_L6P_T0_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN M20" [get_ports SM3_m1p]
#	SM3_M2P	IO_L6N_T0_VREF_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN M21" [get_ports SM3_m2p]
#	SM3_REF	IO_L24N_T3_RS0_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN L25" [get_ports SM3_ref]

#	SM4_CLK	IO_L3P_T0_DQS_PUDC_B_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN N21" [get_ports SM4_clk]
#	SM4_DIR	IO_L24P_T3_RS1_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN M25" [get_ports SM4_dir]
#	SM4_ENA	IO_L7N_T1_D10_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN P26" [get_ports SM4_ena]
#	SM4_M1P	IO_L7P_T1_D09_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN N26" [get_ports SM4_m1p]
#	SM4_M2P	IO_L3N_T0_DQS_EMCCLK_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN N22" [get_ports SM4_m2p]
#	SM4_REF	IO_0_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN M26" [get_ports SM4_ref]

#	SM5_CLK	IO_L9N_T1_DQS_D13_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN R26" [get_ports SM5_clk]
#	SM5_DIR	IO_L9P_T1_DQS_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN P25" [get_ports SM5_dir]
#	SM5_ENA	IO_L8N_T1_D12_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN R25" [get_ports SM5_ena]
#	SM5_M1P	IO_L5N_T0_D07_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN P21" [get_ports SM5_m1p]
#	SM5_M2P	IO_L5P_T0_D06_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN P20" [get_ports SM5_m2p]
#	SM5_REF	IO_L8P_T1_D11_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN P24" [get_ports SM5_ref]

#	SM6_CLK	IO_L12P_T1_MRCC_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN T23" [get_ports SM6_clk]
#	SM6_DIR	IO_L4N_T0_D05_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN R22" [get_ports SM6_dir]
#	SM6_ENA	IO_L14P_T2_SRCC_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN T22" [get_ports SM6_ena]
#	SM6_M1P	IO_L10P_T1_D14_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN T25" [get_ports SM6_m1p]
#	SM6_M2P	IO_L12N_T1_MRCC_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN T24" [get_ports SM6_m2p]
#	SM6_REF	IO_L4P_T0_D04_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN R21" [get_ports SM6_ref]

#	SM7_CLK	IO_L14N_T2_SRCC_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN U22" [get_ports SM7_clk]
#	SM7_DIR	IO_L6N_T0_D08_VREF_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN T20" [get_ports SM7_dir]
#	SM7_ENA	IO_L13N_T2_MRCC_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN U21" [get_ports SM7_ena]
#	SM7_M1P	IO_L11P_T1_SRCC_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN U25" [get_ports SM7_m1p]
#	SM7_M2P	IO_L15P_T2_DQS_RDWR_B_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN U24" [get_ports SM7_m2p]
#	SM7_REF	IO_L10N_T1_D15_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN U26" [get_ports SM7_ref]

#	SM8_CLK	IO_L17N_T2_D29_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN V22" [get_ports SM8_clk]
#	SM8_DIR	IO_L13P_T2_MRCC_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN U20" [get_ports SM8_dir]
#	SM8_ENA	IO_L17P_T2_D30_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN V21" [get_ports SM8_ena]
#	SM8_M1P	IO_L15N_T2_DQS_DOUT_CSO_B_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN V24" [get_ports SM8_m1p]
#	SM8_M2P	IO_L18P_T2_D28_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN V23" [get_ports SM8_m2p]
#	SM8_REF	IO_L11N_T1_SRCC_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN V26" [get_ports SM8_ref]

#	SM9_CLK	IO_L16N_T2_D31_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN W21" [get_ports SM9_clk]
#	SM9_DIR	IO_L19N_T3_D25_VREF_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN W26" [get_ports SM9_dir]
#	SM9_ENA	IO_L16P_T2_CSI_B_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN W20" [get_ports SM9_ena]
#	SM9_M1P	IO_L18N_T2_D27_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN W24" [get_ports SM9_m1p]
#	SM9_M2P	IO_L21P_T3_DQS_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN W23" [get_ports SM9_m2p]
#	SM9_REF	IO_L19P_T3_D26_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN W25" [get_ports SM9_ref]

#	SM10_CLK	IO_L24P_T3_D17_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN Y21" [get_ports SM10_clk]
#	SM10_DIR	IO_L20N_T3_D23_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN Y26" [get_ports SM10_dir]
#	SM10_ENA	IO_25_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN Y20" [get_ports SM10_ena]
#	SM10_M1P	IO_L21N_T3_DQS_D22_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN Y23" [get_ports SM10_m1p]
#	SM10_M2P	IO_L24N_T3_D16_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN Y22" [get_ports SM10_m2p]
#	SM10_REF	IO_L20P_T3_D24_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN Y25" [get_ports SM10_ref]

#	SM11_CLK	IO_L1P_T0_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AB26" [get_ports SM11_clk]
#	SM11_DIR	IO_L22N_T3_D20_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AA25" [get_ports SM11_dir]
#	SM11_ENA	IO_L1N_T0_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AC26" [get_ports SM11_ena]
#	SM11_M1P	IO_L23N_T3_D18_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AA23" [get_ports SM11_m1p]
#	SM11_M2P	IO_L23P_T3_D19_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AA22" [get_ports SM11_m2p]
#	SM11_REF	IO_L22P_T3_D21_14
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AA24" [get_ports SM11_ref]

#	SM12_CLK	IO_L6P_T0_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AE25" [get_ports SM12_clk]
#	SM12_DIR	IO_L3P_T0_DQS_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AD26" [get_ports SM12_dir]
#	SM12_ENA	IO_L6N_T0_VREF_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AF25" [get_ports SM12_ena]
#	SM12_M1P	IO_L2N_T0_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AB25" [get_ports SM12_m1p]
#	SM12_M2P	IO_L4N_T0_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AD25" [get_ports SM12_m2p]
#	SM12_REF	IO_L3N_T0_DQS_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AE26" [get_ports SM12_ref]

#	SM13_CLK	IO_L5P_T0_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AC23" [get_ports SM13_clk]
#	SM13_DIR	IO_L2P_T0_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AB24" [get_ports SM13_dir]
#	SM13_ENA	IO_L7P_T1_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AD23" [get_ports SM13_ena]
#	SM13_M1P	IO_L4P_T0_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AD24" [get_ports SM13_m1p]
#	SM13_M2P	IO_0_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AF24" [get_ports SM13_m2p]
#	SM13_REF	IO_L5N_T0_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AC24" [get_ports SM13_ref]

#	SM14_CLK	IO_L12N_T1_MRCC_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AE22" [get_ports SM14_clk]
#	SM14_DIR	IO_L7N_T1_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AE23" [get_ports SM14_dir]
#	SM14_ENA	IO_L8P_T1_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AF22" [get_ports SM14_ena]
#	SM14_M1P	IO_L10P_T1_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AB22" [get_ports SM14_m1p]
#	SM14_M2P	IO_L10N_T1_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AC22" [get_ports SM14_m2p]
#	SM14_REF	IO_L8N_T1_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AF23" [get_ports SM14_ref]

#	SM15_CLK	IO_L9P_T1_DQS_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AA20" [get_ports SM15_clk]
#	SM15_DIR	IO_L11P_T1_SRCC_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AB21" [get_ports SM15_dir]
#	SM15_ENA	IO_L9N_T1_DQS_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AB20" [get_ports SM15_ena]
#	SM15_M1P	IO_L12P_T1_MRCC_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AD21" [get_ports SM15_m1p]
#	SM15_M2P	IO_L17N_T2_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AE21" [get_ports SM15_m2p]
#	SM15_REF	IO_L11N_T1_SRCC_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AC21" [get_ports SM15_ref]

#	SM16_CLK	IO_L13N_T2_MRCC_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AB19" [get_ports SM16_clk]
#	SM16_DIR	IO_L17P_T2_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AD20" [get_ports SM16_dir]
#	SM16_ENA	IO_L16P_T2_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AC19" [get_ports SM16_ena]
#	SM16_M1P	IO_L14N_T2_SRCC_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AF20" [get_ports SM16_m1p]
#	SM16_M2P	IO_L13P_T2_MRCC_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AA19" [get_ports SM16_m2p]
#	SM16_REF	IO_L14P_T2_SRCC_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AE20" [get_ports SM16_ref]

#	SM17_CLK	IO_L18N_T2_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AD18" [get_ports SM17_clk]
#	SM17_DIR	IO_L16N_T2_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AD19" [get_ports SM17_dir]
#	SM17_ENA	IO_L15P_T2_DQS_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AE18" [get_ports SM17_ena]
#	SM17_M1P	IO_L22N_T3_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AA18" [get_ports SM17_m1p]
#	SM17_M2P	IO_L18P_T2_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AC18" [get_ports SM17_m2p]
#	SM17_REF	IO_L15N_T2_DQS_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AF19" [get_ports SM17_ref]

#	SM18_CLK	IO_25_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AE17" [get_ports SM18_clk]
#	SM18_DIR	IO_L20N_T3_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AF18" [get_ports SM18_dir]
#	SM18_ENA	IO_L20P_T3_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AF17" [get_ports SM18_ena]
#	SM18_M1P	IO_L19P_T3_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AB17" [get_ports SM18_m1p]
#	SM18_M2P	IO_L19N_T3_VREF_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AC17" [get_ports SM18_m2p]
#	SM18_REF	IO_L22P_T3_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AA17" [get_ports SM18_ref]

#	SM19_CLK	IO_L24P_T3_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AE15" [get_ports SM19_clk]
#	SM19_DIR	IO_L21P_T3_DQS_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AC16" [get_ports SM19_dir]
#	SM19_ENA	IO_L24N_T3_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AF15" [get_ports SM19_ena]
#	SM19_M1P	IO_L23N_T3_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AE16" [get_ports SM19_m1p]
#	SM19_M2P	IO_L23P_T3_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AD15" [get_ports SM19_m2p]
#	SM19_REF	IO_L21N_T3_DQS_13
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN AD16" [get_ports SM19_ref]

#	SOL_R[0]	IO_L9P_T1_DQS_AD3P_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B25" [get_ports SOL0_port_pwm]
#	SOL_R[1]	IO_L9N_T1_DQS_AD3N_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN B26" [get_ports SOL1_port_pwm]
#	SOL_R[2]	IO_L12N_T1_MRCC_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN C26" [get_ports SOL2_port_pwm]
#	SOL_R[3]	IO_L8N_T1_AD10N_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D23" [get_ports SOL3_port_pwm]
#	SOL_R[4]	IO_L7P_T1_AD2P_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D24" [get_ports SOL4_port_pwm]
#	SOL_R[5]	IO_L7N_T1_AD2N_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D25" [get_ports SOL5_port_pwm]
#	SOL_R[6]	IO_L12P_T1_MRCC_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN D26" [get_ports SOL6_port_pwm]
#	SOL_R[7]	IO_L8P_T1_AD10P_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E22" [get_ports SOL7_port_pwm]
#	SOL_R[8]	IO_L10N_T1_AD11N_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E23" [get_ports SOL8_port_pwm]
#	SOL_R[9]	IO_L11P_T1_SRCC_15
set_property -dict "IOSTANDARD LVCMOS33 PACKAGE_PIN E25" [get_ports SOL9_port_pwm]






