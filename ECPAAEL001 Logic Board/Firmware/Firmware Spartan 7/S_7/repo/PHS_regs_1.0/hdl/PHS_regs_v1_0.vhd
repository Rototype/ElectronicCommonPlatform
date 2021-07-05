library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PHS_regs_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 10
	);
	port (
		-- Users to add ports here

		PHS0_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS0_status		: in	std_logic;
		PHS0_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS0_irq0_L2S	: in	std_logic;
		PHS0_irq1_S2L	: in	std_logic;
		PHS0_irq0_clr	: out	std_logic;
		PHS0_irq1_clr	: out	std_logic;
		PHS0_vld_out	: out	std_logic;
		PHS0_vld_in		: in	std_logic;

		PHS1_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS1_status		: in	std_logic;
		PHS1_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS1_irq0_L2S	: in	std_logic;
		PHS1_irq1_S2L	: in	std_logic;
		PHS1_irq0_clr	: out	std_logic;
		PHS1_irq1_clr	: out	std_logic;
		PHS1_vld_out	: out	std_logic;
		PHS1_vld_in		: in	std_logic;

		PHS2_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS2_status		: in	std_logic;
		PHS2_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS2_irq0_L2S	: in	std_logic;
		PHS2_irq1_S2L	: in	std_logic;
		PHS2_irq0_clr	: out	std_logic;
		PHS2_irq1_clr	: out	std_logic;
		PHS2_vld_out	: out	std_logic;
		PHS2_vld_in		: in	std_logic;

		PHS3_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS3_status		: in	std_logic;
		PHS3_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS3_irq0_L2S	: in	std_logic;
		PHS3_irq1_S2L	: in	std_logic;
		PHS3_irq0_clr	: out	std_logic;
		PHS3_irq1_clr	: out	std_logic;
		PHS3_vld_out	: out	std_logic;
		PHS3_vld_in		: in	std_logic;

		PHS4_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS4_status		: in	std_logic;
		PHS4_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS4_irq0_L2S	: in	std_logic;
		PHS4_irq1_S2L	: in	std_logic;
		PHS4_irq0_clr	: out	std_logic;
		PHS4_irq1_clr	: out	std_logic;
		PHS4_vld_out	: out	std_logic;
		PHS4_vld_in		: in	std_logic;

		PHS5_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS5_status		: in	std_logic;
		PHS5_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS5_irq0_L2S	: in	std_logic;
		PHS5_irq1_S2L	: in	std_logic;
		PHS5_irq0_clr	: out	std_logic;
		PHS5_irq1_clr	: out	std_logic;
		PHS5_vld_out	: out	std_logic;
		PHS5_vld_in		: in	std_logic;

		PHS6_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS6_status		: in	std_logic;
		PHS6_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS6_irq0_L2S	: in	std_logic;
		PHS6_irq1_S2L	: in	std_logic;
		PHS6_irq0_clr	: out	std_logic;
		PHS6_irq1_clr	: out	std_logic;
		PHS6_vld_out	: out	std_logic;
		PHS6_vld_in		: in	std_logic;

		PHS7_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS7_status		: in	std_logic;
		PHS7_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS7_irq0_L2S	: in	std_logic;
		PHS7_irq1_S2L	: in	std_logic;
		PHS7_irq0_clr	: out	std_logic;
		PHS7_irq1_clr	: out	std_logic;
		PHS7_vld_out	: out	std_logic;
		PHS7_vld_in		: in	std_logic;

		PHS8_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS8_status		: in	std_logic;
		PHS8_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS8_irq0_L2S	: in	std_logic;
		PHS8_irq1_S2L	: in	std_logic;
		PHS8_irq0_clr	: out	std_logic;
		PHS8_irq1_clr	: out	std_logic;
		PHS8_vld_out	: out	std_logic;
		PHS8_vld_in		: in	std_logic;

		PHS9_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS9_status		: in	std_logic;
		PHS9_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS9_irq0_L2S	: in	std_logic;
		PHS9_irq1_S2L	: in	std_logic;
		PHS9_irq0_clr	: out	std_logic;
		PHS9_irq1_clr	: out	std_logic;
		PHS9_vld_out	: out	std_logic;
		PHS9_vld_in		: in	std_logic;

		PHS10_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS10_status	: in	std_logic;
		PHS10_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS10_irq0_L2S	: in	std_logic;
		PHS10_irq1_S2L	: in	std_logic;
		PHS10_irq0_clr	: out	std_logic;
		PHS10_irq1_clr	: out	std_logic;
		PHS10_vld_out	: out	std_logic;
		PHS10_vld_in	: in	std_logic;

		PHS11_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS11_status	: in	std_logic;
		PHS11_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS11_irq0_L2S	: in	std_logic;
		PHS11_irq1_S2L	: in	std_logic;
		PHS11_irq0_clr	: out	std_logic;
		PHS11_irq1_clr	: out	std_logic;
		PHS11_vld_out	: out	std_logic;
		PHS11_vld_in	: in	std_logic;

		PHS12_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS12_status	: in	std_logic;
		PHS12_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS12_irq0_L2S	: in	std_logic;
		PHS12_irq1_S2L	: in	std_logic;
		PHS12_irq0_clr	: out	std_logic;
		PHS12_irq1_clr	: out	std_logic;
		PHS12_vld_out	: out	std_logic;
		PHS12_vld_in	: in	std_logic;

		PHS13_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS13_status	: in	std_logic;
		PHS13_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS13_irq0_L2S	: in	std_logic;
		PHS13_irq1_S2L	: in	std_logic;
		PHS13_irq0_clr	: out	std_logic;
		PHS13_irq1_clr	: out	std_logic;
		PHS13_vld_out	: out	std_logic;
		PHS13_vld_in	: in	std_logic;

		PHS14_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS14_status	: in	std_logic;
		PHS14_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS14_irq0_L2S	: in	std_logic;
		PHS14_irq1_S2L	: in	std_logic;
		PHS14_irq0_clr	: out	std_logic;
		PHS14_irq1_clr	: out	std_logic;
		PHS14_vld_out	: out	std_logic;
		PHS14_vld_in	: in	std_logic;

		PHS15_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS15_status	: in	std_logic;
		PHS15_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS15_irq0_L2S	: in	std_logic;
		PHS15_irq1_S2L	: in	std_logic;
		PHS15_irq0_clr	: out	std_logic;
		PHS15_irq1_clr	: out	std_logic;
		PHS15_vld_out	: out	std_logic;
		PHS15_vld_in	: in	std_logic;

		PHS16_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS16_status	: in	std_logic;
		PHS16_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS16_irq0_L2S	: in	std_logic;
		PHS16_irq1_S2L	: in	std_logic;
		PHS16_irq0_clr	: out	std_logic;
		PHS16_irq1_clr	: out	std_logic;
		PHS16_vld_out	: out	std_logic;
		PHS16_vld_in	: in	std_logic;

		PHS17_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS17_status	: in	std_logic;
		PHS17_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS17_irq0_L2S	: in	std_logic;
		PHS17_irq1_S2L	: in	std_logic;
		PHS17_irq0_clr	: out	std_logic;
		PHS17_irq1_clr	: out	std_logic;
		PHS17_vld_out	: out	std_logic;
		PHS17_vld_in	: in	std_logic;

		PHS18_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS18_status	: in	std_logic;
		PHS18_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS18_irq0_L2S	: in	std_logic;
		PHS18_irq1_S2L	: in	std_logic;
		PHS18_irq0_clr	: out	std_logic;
		PHS18_irq1_clr	: out	std_logic;
		PHS18_vld_out	: out	std_logic;
		PHS18_vld_in	: in	std_logic;

		PHS19_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS19_status	: in	std_logic;
		PHS19_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS19_irq0_L2S	: in	std_logic;
		PHS19_irq1_S2L	: in	std_logic;
		PHS19_irq0_clr	: out	std_logic;
		PHS19_irq1_clr	: out	std_logic;
		PHS19_vld_out	: out	std_logic;
		PHS19_vld_in	: in	std_logic;

		PHS20_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS20_status	: in	std_logic;
		PHS20_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS20_irq0_L2S	: in	std_logic;
		PHS20_irq1_S2L	: in	std_logic;
		PHS20_irq0_clr	: out	std_logic;
		PHS20_irq1_clr	: out	std_logic;
		PHS20_vld_out	: out	std_logic;
		PHS20_vld_in	: in	std_logic;

		PHS21_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS21_status	: in	std_logic;
		PHS21_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS21_irq0_L2S	: in	std_logic;
		PHS21_irq1_S2L	: in	std_logic;
		PHS21_irq0_clr	: out	std_logic;
		PHS21_irq1_clr	: out	std_logic;
		PHS21_vld_out	: out	std_logic;
		PHS21_vld_in	: in	std_logic;

		PHS22_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS22_status	: in	std_logic;
		PHS22_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS22_irq0_L2S	: in	std_logic;
		PHS22_irq1_S2L	: in	std_logic;
		PHS22_irq0_clr	: out	std_logic;
		PHS22_irq1_clr	: out	std_logic;
		PHS22_vld_out	: out	std_logic;
		PHS22_vld_in	: in	std_logic;

		PHS23_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS23_status	: in	std_logic;
		PHS23_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS23_irq0_L2S	: in	std_logic;
		PHS23_irq1_S2L	: in	std_logic;
		PHS23_irq0_clr	: out	std_logic;
		PHS23_irq1_clr	: out	std_logic;
		PHS23_vld_out	: out	std_logic;
		PHS23_vld_in	: in	std_logic;

		PHS24_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS24_status	: in	std_logic;
		PHS24_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS24_irq0_L2S	: in	std_logic;
		PHS24_irq1_S2L	: in	std_logic;
		PHS24_irq0_clr	: out	std_logic;
		PHS24_irq1_clr	: out	std_logic;
		PHS24_vld_out	: out	std_logic;
		PHS24_vld_in	: in	std_logic;

		PHS25_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS25_status	: in	std_logic;
		PHS25_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS25_irq0_L2S	: in	std_logic;
		PHS25_irq1_S2L	: in	std_logic;
		PHS25_irq0_clr	: out	std_logic;
		PHS25_irq1_clr	: out	std_logic;
		PHS25_vld_out	: out	std_logic;
		PHS25_vld_in	: in	std_logic;

		PHS26_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS26_status	: in	std_logic;
		PHS26_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS26_irq0_L2S	: in	std_logic;
		PHS26_irq1_S2L	: in	std_logic;
		PHS26_irq0_clr	: out	std_logic;
		PHS26_irq1_clr	: out	std_logic;
		PHS26_vld_out	: out	std_logic;
		PHS26_vld_in	: in	std_logic;

		PHS27_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS27_status	: in	std_logic;
		PHS27_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS27_irq0_L2S	: in	std_logic;
		PHS27_irq1_S2L	: in	std_logic;
		PHS27_irq0_clr	: out	std_logic;
		PHS27_irq1_clr	: out	std_logic;
		PHS27_vld_out	: out	std_logic;
		PHS27_vld_in	: in	std_logic;

		PHS28_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS28_status	: in	std_logic;
		PHS28_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS28_irq0_L2S	: in	std_logic;
		PHS28_irq1_S2L	: in	std_logic;
		PHS28_irq0_clr	: out	std_logic;
		PHS28_irq1_clr	: out	std_logic;
		PHS28_vld_out	: out	std_logic;
		PHS28_vld_in	: in	std_logic;

		PHS29_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS29_status	: in	std_logic;
		PHS29_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS29_irq0_L2S	: in	std_logic;
		PHS29_irq1_S2L	: in	std_logic;
		PHS29_irq0_clr	: out	std_logic;
		PHS29_irq1_clr	: out	std_logic;
		PHS29_vld_out	: out	std_logic;
		PHS29_vld_in	: in	std_logic;

		PHS30_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS30_status	: in	std_logic;
		PHS30_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS30_irq0_L2S	: in	std_logic;
		PHS30_irq1_S2L	: in	std_logic;
		PHS30_irq0_clr	: out	std_logic;
		PHS30_irq1_clr	: out	std_logic;
		PHS30_vld_out	: out	std_logic;
		PHS30_vld_in	: in	std_logic;

		PHS31_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS31_status	: in	std_logic;
		PHS31_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS31_irq0_L2S	: in	std_logic;
		PHS31_irq1_S2L	: in	std_logic;
		PHS31_irq0_clr	: out	std_logic;
		PHS31_irq1_clr	: out	std_logic;
		PHS31_vld_out	: out	std_logic;
		PHS31_vld_in	: in	std_logic;

		PHS32_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS32_status	: in	std_logic;
		PHS32_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS32_irq0_L2S	: in	std_logic;
		PHS32_irq1_S2L	: in	std_logic;
		PHS32_irq0_clr	: out	std_logic;
		PHS32_irq1_clr	: out	std_logic;
		PHS32_vld_out	: out	std_logic;
		PHS32_vld_in	: in	std_logic;

		PHS33_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS33_status	: in	std_logic;
		PHS33_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS33_irq0_L2S	: in	std_logic;
		PHS33_irq1_S2L	: in	std_logic;
		PHS33_irq0_clr	: out	std_logic;
		PHS33_irq1_clr	: out	std_logic;
		PHS33_vld_out	: out	std_logic;
		PHS33_vld_in	: in	std_logic;

		PHS34_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS34_status	: in	std_logic;
		PHS34_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS34_irq0_L2S	: in	std_logic;
		PHS34_irq1_S2L	: in	std_logic;
		PHS34_irq0_clr	: out	std_logic;
		PHS34_irq1_clr	: out	std_logic;
		PHS34_vld_out	: out	std_logic;
		PHS34_vld_in	: in	std_logic;

		PHS35_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS35_status	: in	std_logic;
		PHS35_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS35_irq0_L2S	: in	std_logic;
		PHS35_irq1_S2L	: in	std_logic;
		PHS35_irq0_clr	: out	std_logic;
		PHS35_irq1_clr	: out	std_logic;
		PHS35_vld_out	: out	std_logic;
		PHS35_vld_in	: in	std_logic;

		PHS36_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS36_status	: in	std_logic;
		PHS36_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS36_irq0_L2S	: in	std_logic;
		PHS36_irq1_S2L	: in	std_logic;
		PHS36_irq0_clr	: out	std_logic;
		PHS36_irq1_clr	: out	std_logic;
		PHS36_vld_out	: out	std_logic;
		PHS36_vld_in	: in	std_logic;

		PHS37_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS37_status	: in	std_logic;
		PHS37_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS37_irq0_L2S	: in	std_logic;
		PHS37_irq1_S2L	: in	std_logic;
		PHS37_irq0_clr	: out	std_logic;
		PHS37_irq1_clr	: out	std_logic;
		PHS37_vld_out	: out	std_logic;
		PHS37_vld_in	: in	std_logic;

		PHS38_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS38_status	: in	std_logic;
		PHS38_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS38_irq0_L2S	: in	std_logic;
		PHS38_irq1_S2L	: in	std_logic;
		PHS38_irq0_clr	: out	std_logic;
		PHS38_irq1_clr	: out	std_logic;
		PHS38_vld_out	: out	std_logic;
		PHS38_vld_in	: in	std_logic;

		PHS39_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS39_status	: in	std_logic;
		PHS39_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS39_irq0_L2S	: in	std_logic;
		PHS39_irq1_S2L	: in	std_logic;
		PHS39_irq0_clr	: out	std_logic;
		PHS39_irq1_clr	: out	std_logic;
		PHS39_vld_out	: out	std_logic;
		PHS39_vld_in	: in	std_logic;

		PHS40_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS40_status	: in	std_logic;
		PHS40_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS40_irq0_L2S	: in	std_logic;
		PHS40_irq1_S2L	: in	std_logic;
		PHS40_irq0_clr	: out	std_logic;
		PHS40_irq1_clr	: out	std_logic;
		PHS40_vld_out	: out	std_logic;
		PHS40_vld_in	: in	std_logic;

		PHS41_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS41_status	: in	std_logic;
		PHS41_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS41_irq0_L2S	: in	std_logic;
		PHS41_irq1_S2L	: in	std_logic;
		PHS41_irq0_clr	: out	std_logic;
		PHS41_irq1_clr	: out	std_logic;
		PHS41_vld_out	: out	std_logic;
		PHS41_vld_in	: in	std_logic;

		PHS42_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS42_status	: in	std_logic;
		PHS42_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS42_irq0_L2S	: in	std_logic;
		PHS42_irq1_S2L	: in	std_logic;
		PHS42_irq0_clr	: out	std_logic;
		PHS42_irq1_clr	: out	std_logic;
		PHS42_vld_out	: out	std_logic;
		PHS42_vld_in	: in	std_logic;

		PHS43_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS43_status	: in	std_logic;
		PHS43_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS43_irq0_L2S	: in	std_logic;
		PHS43_irq1_S2L	: in	std_logic;
		PHS43_irq0_clr	: out	std_logic;
		PHS43_irq1_clr	: out	std_logic;
		PHS43_vld_out	: out	std_logic;
		PHS43_vld_in	: in	std_logic;

		PHS44_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS44_status	: in	std_logic;
		PHS44_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS44_irq0_L2S	: in	std_logic;
		PHS44_irq1_S2L	: in	std_logic;
		PHS44_irq0_clr	: out	std_logic;
		PHS44_irq1_clr	: out	std_logic;
		PHS44_vld_out	: out	std_logic;
		PHS44_vld_in	: in	std_logic;

		PHS45_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS45_status	: in	std_logic;
		PHS45_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS45_irq0_L2S	: in	std_logic;
		PHS45_irq1_S2L	: in	std_logic;
		PHS45_irq0_clr	: out	std_logic;
		PHS45_irq1_clr	: out	std_logic;
		PHS45_vld_out	: out	std_logic;
		PHS45_vld_in	: in	std_logic;

		PHS46_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS46_status	: in	std_logic;
		PHS46_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS46_irq0_L2S	: in	std_logic;
		PHS46_irq1_S2L	: in	std_logic;
		PHS46_irq0_clr	: out	std_logic;
		PHS46_irq1_clr	: out	std_logic;
		PHS46_vld_out	: out	std_logic;
		PHS46_vld_in	: in	std_logic;

		PHS47_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS47_status	: in	std_logic;
		PHS47_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS47_irq0_L2S	: in	std_logic;
		PHS47_irq1_S2L	: in	std_logic;
		PHS47_irq0_clr	: out	std_logic;
		PHS47_irq1_clr	: out	std_logic;
		PHS47_vld_out	: out	std_logic;
		PHS47_vld_in	: in	std_logic;

		PHS48_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS48_status	: in	std_logic;
		PHS48_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS48_irq0_L2S	: in	std_logic;
		PHS48_irq1_S2L	: in	std_logic;
		PHS48_irq0_clr	: out	std_logic;
		PHS48_irq1_clr	: out	std_logic;
		PHS48_vld_out	: out	std_logic;
		PHS48_vld_in	: in	std_logic;

		PHS49_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS49_status	: in	std_logic;
		PHS49_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS49_irq0_L2S	: in	std_logic;
		PHS49_irq1_S2L	: in	std_logic;
		PHS49_irq0_clr	: out	std_logic;
		PHS49_irq1_clr	: out	std_logic;
		PHS49_vld_out	: out	std_logic;
		PHS49_vld_in	: in	std_logic;
		
		PHS_irqs_L2S_0  : out   std_logic_vector(24 downto 0);
		PHS_irqs_L2S_1  : out   std_logic_vector(24 downto 0);
		PHS_irq_L2S_0   : out   std_logic;
		PHS_irq_L2S_1   : out   std_logic;		
		
		PHS_irqs_S2L_0  : out   std_logic_vector(24 downto 0);
		PHS_irqs_S2L_1  : out   std_logic_vector(24 downto 0);
		PHS_irq_S2L_0   : out   std_logic;
		PHS_irq_S2L_1   : out   std_logic;
		
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic
	);
end PHS_regs_v1_0;

architecture arch_imp of PHS_regs_v1_0 is

	-- component declaration
	component PHS_regs_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 10
		);
		port (
		
		PHS0_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS0_status		: in	std_logic;
		PHS0_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS0_irq0_L2S	: in	std_logic;
		PHS0_irq1_S2L	: in	std_logic;
		PHS0_irq0_clr	: out	std_logic;
		PHS0_irq1_clr	: out	std_logic;
		PHS0_vld_out	: out	std_logic;
		PHS0_vld_in		: in	std_logic;

		PHS1_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS1_status		: in	std_logic;
		PHS1_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS1_irq0_L2S	: in	std_logic;
		PHS1_irq1_S2L	: in	std_logic;
		PHS1_irq0_clr	: out	std_logic;
		PHS1_irq1_clr	: out	std_logic;
		PHS1_vld_out	: out	std_logic;
		PHS1_vld_in		: in	std_logic;

		PHS2_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS2_status		: in	std_logic;
		PHS2_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS2_irq0_L2S	: in	std_logic;
		PHS2_irq1_S2L	: in	std_logic;
		PHS2_irq0_clr	: out	std_logic;
		PHS2_irq1_clr	: out	std_logic;
		PHS2_vld_out	: out	std_logic;
		PHS2_vld_in		: in	std_logic;

		PHS3_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS3_status		: in	std_logic;
		PHS3_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS3_irq0_L2S	: in	std_logic;
		PHS3_irq1_S2L	: in	std_logic;
		PHS3_irq0_clr	: out	std_logic;
		PHS3_irq1_clr	: out	std_logic;
		PHS3_vld_out	: out	std_logic;
		PHS3_vld_in		: in	std_logic;

		PHS4_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS4_status		: in	std_logic;
		PHS4_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS4_irq0_L2S	: in	std_logic;
		PHS4_irq1_S2L	: in	std_logic;
		PHS4_irq0_clr	: out	std_logic;
		PHS4_irq1_clr	: out	std_logic;
		PHS4_vld_out	: out	std_logic;
		PHS4_vld_in		: in	std_logic;

		PHS5_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS5_status		: in	std_logic;
		PHS5_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS5_irq0_L2S	: in	std_logic;
		PHS5_irq1_S2L	: in	std_logic;
		PHS5_irq0_clr	: out	std_logic;
		PHS5_irq1_clr	: out	std_logic;
		PHS5_vld_out	: out	std_logic;
		PHS5_vld_in		: in	std_logic;

		PHS6_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS6_status		: in	std_logic;
		PHS6_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS6_irq0_L2S	: in	std_logic;
		PHS6_irq1_S2L	: in	std_logic;
		PHS6_irq0_clr	: out	std_logic;
		PHS6_irq1_clr	: out	std_logic;
		PHS6_vld_out	: out	std_logic;
		PHS6_vld_in		: in	std_logic;

		PHS7_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS7_status		: in	std_logic;
		PHS7_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS7_irq0_L2S	: in	std_logic;
		PHS7_irq1_S2L	: in	std_logic;
		PHS7_irq0_clr	: out	std_logic;
		PHS7_irq1_clr	: out	std_logic;
		PHS7_vld_out	: out	std_logic;
		PHS7_vld_in		: in	std_logic;

		PHS8_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS8_status		: in	std_logic;
		PHS8_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS8_irq0_L2S	: in	std_logic;
		PHS8_irq1_S2L	: in	std_logic;
		PHS8_irq0_clr	: out	std_logic;
		PHS8_irq1_clr	: out	std_logic;
		PHS8_vld_out	: out	std_logic;
		PHS8_vld_in		: in	std_logic;

		PHS9_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS9_status		: in	std_logic;
		PHS9_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS9_irq0_L2S	: in	std_logic;
		PHS9_irq1_S2L	: in	std_logic;
		PHS9_irq0_clr	: out	std_logic;
		PHS9_irq1_clr	: out	std_logic;
		PHS9_vld_out	: out	std_logic;
		PHS9_vld_in		: in	std_logic;

		PHS10_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS10_status	: in	std_logic;
		PHS10_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS10_irq0_L2S	: in	std_logic;
		PHS10_irq1_S2L	: in	std_logic;
		PHS10_irq0_clr	: out	std_logic;
		PHS10_irq1_clr	: out	std_logic;
		PHS10_vld_out	: out	std_logic;
		PHS10_vld_in	: in	std_logic;

		PHS11_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS11_status	: in	std_logic;
		PHS11_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS11_irq0_L2S	: in	std_logic;
		PHS11_irq1_S2L	: in	std_logic;
		PHS11_irq0_clr	: out	std_logic;
		PHS11_irq1_clr	: out	std_logic;
		PHS11_vld_out	: out	std_logic;
		PHS11_vld_in	: in	std_logic;

		PHS12_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS12_status	: in	std_logic;
		PHS12_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS12_irq0_L2S	: in	std_logic;
		PHS12_irq1_S2L	: in	std_logic;
		PHS12_irq0_clr	: out	std_logic;
		PHS12_irq1_clr	: out	std_logic;
		PHS12_vld_out	: out	std_logic;
		PHS12_vld_in	: in	std_logic;

		PHS13_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS13_status	: in	std_logic;
		PHS13_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS13_irq0_L2S	: in	std_logic;
		PHS13_irq1_S2L	: in	std_logic;
		PHS13_irq0_clr	: out	std_logic;
		PHS13_irq1_clr	: out	std_logic;
		PHS13_vld_out	: out	std_logic;
		PHS13_vld_in	: in	std_logic;

		PHS14_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS14_status	: in	std_logic;
		PHS14_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS14_irq0_L2S	: in	std_logic;
		PHS14_irq1_S2L	: in	std_logic;
		PHS14_irq0_clr	: out	std_logic;
		PHS14_irq1_clr	: out	std_logic;
		PHS14_vld_out	: out	std_logic;
		PHS14_vld_in	: in	std_logic;

		PHS15_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS15_status	: in	std_logic;
		PHS15_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS15_irq0_L2S	: in	std_logic;
		PHS15_irq1_S2L	: in	std_logic;
		PHS15_irq0_clr	: out	std_logic;
		PHS15_irq1_clr	: out	std_logic;
		PHS15_vld_out	: out	std_logic;
		PHS15_vld_in	: in	std_logic;

		PHS16_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS16_status	: in	std_logic;
		PHS16_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS16_irq0_L2S	: in	std_logic;
		PHS16_irq1_S2L	: in	std_logic;
		PHS16_irq0_clr	: out	std_logic;
		PHS16_irq1_clr	: out	std_logic;
		PHS16_vld_out	: out	std_logic;
		PHS16_vld_in	: in	std_logic;

		PHS17_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS17_status	: in	std_logic;
		PHS17_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS17_irq0_L2S	: in	std_logic;
		PHS17_irq1_S2L	: in	std_logic;
		PHS17_irq0_clr	: out	std_logic;
		PHS17_irq1_clr	: out	std_logic;
		PHS17_vld_out	: out	std_logic;
		PHS17_vld_in	: in	std_logic;

		PHS18_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS18_status	: in	std_logic;
		PHS18_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS18_irq0_L2S	: in	std_logic;
		PHS18_irq1_S2L	: in	std_logic;
		PHS18_irq0_clr	: out	std_logic;
		PHS18_irq1_clr	: out	std_logic;
		PHS18_vld_out	: out	std_logic;
		PHS18_vld_in	: in	std_logic;

		PHS19_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS19_status	: in	std_logic;
		PHS19_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS19_irq0_L2S	: in	std_logic;
		PHS19_irq1_S2L	: in	std_logic;
		PHS19_irq0_clr	: out	std_logic;
		PHS19_irq1_clr	: out	std_logic;
		PHS19_vld_out	: out	std_logic;
		PHS19_vld_in	: in	std_logic;

		PHS20_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS20_status	: in	std_logic;
		PHS20_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS20_irq0_L2S	: in	std_logic;
		PHS20_irq1_S2L	: in	std_logic;
		PHS20_irq0_clr	: out	std_logic;
		PHS20_irq1_clr	: out	std_logic;
		PHS20_vld_out	: out	std_logic;
		PHS20_vld_in	: in	std_logic;

		PHS21_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS21_status	: in	std_logic;
		PHS21_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS21_irq0_L2S	: in	std_logic;
		PHS21_irq1_S2L	: in	std_logic;
		PHS21_irq0_clr	: out	std_logic;
		PHS21_irq1_clr	: out	std_logic;
		PHS21_vld_out	: out	std_logic;
		PHS21_vld_in	: in	std_logic;

		PHS22_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS22_status	: in	std_logic;
		PHS22_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS22_irq0_L2S	: in	std_logic;
		PHS22_irq1_S2L	: in	std_logic;
		PHS22_irq0_clr	: out	std_logic;
		PHS22_irq1_clr	: out	std_logic;
		PHS22_vld_out	: out	std_logic;
		PHS22_vld_in	: in	std_logic;

		PHS23_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS23_status	: in	std_logic;
		PHS23_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS23_irq0_L2S	: in	std_logic;
		PHS23_irq1_S2L	: in	std_logic;
		PHS23_irq0_clr	: out	std_logic;
		PHS23_irq1_clr	: out	std_logic;
		PHS23_vld_out	: out	std_logic;
		PHS23_vld_in	: in	std_logic;

		PHS24_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS24_status	: in	std_logic;
		PHS24_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS24_irq0_L2S	: in	std_logic;
		PHS24_irq1_S2L	: in	std_logic;
		PHS24_irq0_clr	: out	std_logic;
		PHS24_irq1_clr	: out	std_logic;
		PHS24_vld_out	: out	std_logic;
		PHS24_vld_in	: in	std_logic;

		PHS25_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS25_status	: in	std_logic;
		PHS25_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS25_irq0_L2S	: in	std_logic;
		PHS25_irq1_S2L	: in	std_logic;
		PHS25_irq0_clr	: out	std_logic;
		PHS25_irq1_clr	: out	std_logic;
		PHS25_vld_out	: out	std_logic;
		PHS25_vld_in	: in	std_logic;

		PHS26_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS26_status	: in	std_logic;
		PHS26_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS26_irq0_L2S	: in	std_logic;
		PHS26_irq1_S2L	: in	std_logic;
		PHS26_irq0_clr	: out	std_logic;
		PHS26_irq1_clr	: out	std_logic;
		PHS26_vld_out	: out	std_logic;
		PHS26_vld_in	: in	std_logic;

		PHS27_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS27_status	: in	std_logic;
		PHS27_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS27_irq0_L2S	: in	std_logic;
		PHS27_irq1_S2L	: in	std_logic;
		PHS27_irq0_clr	: out	std_logic;
		PHS27_irq1_clr	: out	std_logic;
		PHS27_vld_out	: out	std_logic;
		PHS27_vld_in	: in	std_logic;

		PHS28_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS28_status	: in	std_logic;
		PHS28_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS28_irq0_L2S	: in	std_logic;
		PHS28_irq1_S2L	: in	std_logic;
		PHS28_irq0_clr	: out	std_logic;
		PHS28_irq1_clr	: out	std_logic;
		PHS28_vld_out	: out	std_logic;
		PHS28_vld_in	: in	std_logic;

		PHS29_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS29_status	: in	std_logic;
		PHS29_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS29_irq0_L2S	: in	std_logic;
		PHS29_irq1_S2L	: in	std_logic;
		PHS29_irq0_clr	: out	std_logic;
		PHS29_irq1_clr	: out	std_logic;
		PHS29_vld_out	: out	std_logic;
		PHS29_vld_in	: in	std_logic;

		PHS30_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS30_status	: in	std_logic;
		PHS30_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS30_irq0_L2S	: in	std_logic;
		PHS30_irq1_S2L	: in	std_logic;
		PHS30_irq0_clr	: out	std_logic;
		PHS30_irq1_clr	: out	std_logic;
		PHS30_vld_out	: out	std_logic;
		PHS30_vld_in	: in	std_logic;

		PHS31_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS31_status	: in	std_logic;
		PHS31_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS31_irq0_L2S	: in	std_logic;
		PHS31_irq1_S2L	: in	std_logic;
		PHS31_irq0_clr	: out	std_logic;
		PHS31_irq1_clr	: out	std_logic;
		PHS31_vld_out	: out	std_logic;
		PHS31_vld_in	: in	std_logic;

		PHS32_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS32_status	: in	std_logic;
		PHS32_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS32_irq0_L2S	: in	std_logic;
		PHS32_irq1_S2L	: in	std_logic;
		PHS32_irq0_clr	: out	std_logic;
		PHS32_irq1_clr	: out	std_logic;
		PHS32_vld_out	: out	std_logic;
		PHS32_vld_in	: in	std_logic;

		PHS33_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS33_status	: in	std_logic;
		PHS33_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS33_irq0_L2S	: in	std_logic;
		PHS33_irq1_S2L	: in	std_logic;
		PHS33_irq0_clr	: out	std_logic;
		PHS33_irq1_clr	: out	std_logic;
		PHS33_vld_out	: out	std_logic;
		PHS33_vld_in	: in	std_logic;

		PHS34_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS34_status	: in	std_logic;
		PHS34_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS34_irq0_L2S	: in	std_logic;
		PHS34_irq1_S2L	: in	std_logic;
		PHS34_irq0_clr	: out	std_logic;
		PHS34_irq1_clr	: out	std_logic;
		PHS34_vld_out	: out	std_logic;
		PHS34_vld_in	: in	std_logic;

		PHS35_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS35_status	: in	std_logic;
		PHS35_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS35_irq0_L2S	: in	std_logic;
		PHS35_irq1_S2L	: in	std_logic;
		PHS35_irq0_clr	: out	std_logic;
		PHS35_irq1_clr	: out	std_logic;
		PHS35_vld_out	: out	std_logic;
		PHS35_vld_in	: in	std_logic;

		PHS36_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS36_status	: in	std_logic;
		PHS36_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS36_irq0_L2S	: in	std_logic;
		PHS36_irq1_S2L	: in	std_logic;
		PHS36_irq0_clr	: out	std_logic;
		PHS36_irq1_clr	: out	std_logic;
		PHS36_vld_out	: out	std_logic;
		PHS36_vld_in	: in	std_logic;

		PHS37_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS37_status	: in	std_logic;
		PHS37_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS37_irq0_L2S	: in	std_logic;
		PHS37_irq1_S2L	: in	std_logic;
		PHS37_irq0_clr	: out	std_logic;
		PHS37_irq1_clr	: out	std_logic;
		PHS37_vld_out	: out	std_logic;
		PHS37_vld_in	: in	std_logic;

		PHS38_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS38_status	: in	std_logic;
		PHS38_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS38_irq0_L2S	: in	std_logic;
		PHS38_irq1_S2L	: in	std_logic;
		PHS38_irq0_clr	: out	std_logic;
		PHS38_irq1_clr	: out	std_logic;
		PHS38_vld_out	: out	std_logic;
		PHS38_vld_in	: in	std_logic;

		PHS39_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS39_status	: in	std_logic;
		PHS39_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS39_irq0_L2S	: in	std_logic;
		PHS39_irq1_S2L	: in	std_logic;
		PHS39_irq0_clr	: out	std_logic;
		PHS39_irq1_clr	: out	std_logic;
		PHS39_vld_out	: out	std_logic;
		PHS39_vld_in	: in	std_logic;

		PHS40_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS40_status	: in	std_logic;
		PHS40_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS40_irq0_L2S	: in	std_logic;
		PHS40_irq1_S2L	: in	std_logic;
		PHS40_irq0_clr	: out	std_logic;
		PHS40_irq1_clr	: out	std_logic;
		PHS40_vld_out	: out	std_logic;
		PHS40_vld_in	: in	std_logic;

		PHS41_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS41_status	: in	std_logic;
		PHS41_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS41_irq0_L2S	: in	std_logic;
		PHS41_irq1_S2L	: in	std_logic;
		PHS41_irq0_clr	: out	std_logic;
		PHS41_irq1_clr	: out	std_logic;
		PHS41_vld_out	: out	std_logic;
		PHS41_vld_in	: in	std_logic;

		PHS42_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS42_status	: in	std_logic;
		PHS42_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS42_irq0_L2S	: in	std_logic;
		PHS42_irq1_S2L	: in	std_logic;
		PHS42_irq0_clr	: out	std_logic;
		PHS42_irq1_clr	: out	std_logic;
		PHS42_vld_out	: out	std_logic;
		PHS42_vld_in	: in	std_logic;

		PHS43_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS43_status	: in	std_logic;
		PHS43_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS43_irq0_L2S	: in	std_logic;
		PHS43_irq1_S2L	: in	std_logic;
		PHS43_irq0_clr	: out	std_logic;
		PHS43_irq1_clr	: out	std_logic;
		PHS43_vld_out	: out	std_logic;
		PHS43_vld_in	: in	std_logic;

		PHS44_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS44_status	: in	std_logic;
		PHS44_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS44_irq0_L2S	: in	std_logic;
		PHS44_irq1_S2L	: in	std_logic;
		PHS44_irq0_clr	: out	std_logic;
		PHS44_irq1_clr	: out	std_logic;
		PHS44_vld_out	: out	std_logic;
		PHS44_vld_in	: in	std_logic;

		PHS45_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS45_status	: in	std_logic;
		PHS45_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS45_irq0_L2S	: in	std_logic;
		PHS45_irq1_S2L	: in	std_logic;
		PHS45_irq0_clr	: out	std_logic;
		PHS45_irq1_clr	: out	std_logic;
		PHS45_vld_out	: out	std_logic;
		PHS45_vld_in	: in	std_logic;

		PHS46_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS46_status	: in	std_logic;
		PHS46_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS46_irq0_L2S	: in	std_logic;
		PHS46_irq1_S2L	: in	std_logic;
		PHS46_irq0_clr	: out	std_logic;
		PHS46_irq1_clr	: out	std_logic;
		PHS46_vld_out	: out	std_logic;
		PHS46_vld_in	: in	std_logic;

		PHS47_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS47_status	: in	std_logic;
		PHS47_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS47_irq0_L2S	: in	std_logic;
		PHS47_irq1_S2L	: in	std_logic;
		PHS47_irq0_clr	: out	std_logic;
		PHS47_irq1_clr	: out	std_logic;
		PHS47_vld_out	: out	std_logic;
		PHS47_vld_in	: in	std_logic;

		PHS48_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS48_status	: in	std_logic;
		PHS48_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS48_irq0_L2S	: in	std_logic;
		PHS48_irq1_S2L	: in	std_logic;
		PHS48_irq0_clr	: out	std_logic;
		PHS48_irq1_clr	: out	std_logic;
		PHS48_vld_out	: out	std_logic;
		PHS48_vld_in	: in	std_logic;

		PHS49_pwm_val	: out	std_logic_vector(9 downto 0);
		PHS49_status	: in	std_logic;
		PHS49_irq_mask	: out	std_logic_vector(1 downto 0);
		PHS49_irq0_L2S	: in	std_logic;
		PHS49_irq1_S2L	: in	std_logic;
		PHS49_irq0_clr	: out	std_logic;
		PHS49_irq1_clr	: out	std_logic;
		PHS49_vld_out	: out	std_logic;
		PHS49_vld_in	: in	std_logic;
		
		PHS_irqs_L2S_0  : out   std_logic_vector(24 downto 0);
		PHS_irqs_L2S_1  : out   std_logic_vector(24 downto 0);
		PHS_irq_L2S_0   : out   std_logic;
		PHS_irq_L2S_1   : out   std_logic;		
		
		PHS_irqs_S2L_0  : out   std_logic_vector(24 downto 0);
		PHS_irqs_S2L_1  : out   std_logic_vector(24 downto 0);
		PHS_irq_S2L_0   : out   std_logic;
		PHS_irq_S2L_1   : out   std_logic;
					
		--
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component PHS_regs_v1_0_S00_AXI;

begin

-- Instantiation of Axi Bus Interface S00_AXI
PHS_regs_v1_0_S00_AXI_inst : PHS_regs_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
	

		PHS0_pwm_val	=>	   PHS0_pwm_val,
		PHS0_status		=>	   PHS0_status,
		PHS0_irq_mask	=>	   PHS0_irq_mask,
		PHS0_irq0_L2S	=>	   PHS0_irq0_L2S,
		PHS0_irq1_S2L	=>	   PHS0_irq1_S2L,
		PHS0_irq0_clr	=>	   PHS0_irq0_clr,
		PHS0_irq1_clr	=>	   PHS0_irq1_clr,
		PHS0_vld_out	=>	   PHS0_vld_out,
		PHS0_vld_in		=>	   PHS0_vld_in,

		PHS1_pwm_val	=>	   PHS1_pwm_val,
		PHS1_status		=>	   PHS1_status,
		PHS1_irq_mask	=>	   PHS1_irq_mask,
		PHS1_irq0_L2S	=>	   PHS1_irq0_L2S,
		PHS1_irq1_S2L	=>	   PHS1_irq1_S2L,
		PHS1_irq0_clr	=>	   PHS1_irq0_clr,
		PHS1_irq1_clr	=>	   PHS1_irq1_clr,
		PHS1_vld_out	=>	   PHS1_vld_out,
		PHS1_vld_in		=>	   PHS1_vld_in,

		PHS2_pwm_val	=>	   PHS2_pwm_val,
		PHS2_status		=>	   PHS2_status,
		PHS2_irq_mask	=>	   PHS2_irq_mask,
		PHS2_irq0_L2S	=>	   PHS2_irq0_L2S,
		PHS2_irq1_S2L	=>	   PHS2_irq1_S2L,
		PHS2_irq0_clr	=>	   PHS2_irq0_clr,
		PHS2_irq1_clr	=>	   PHS2_irq1_clr,
		PHS2_vld_out	=>	   PHS2_vld_out,
		PHS2_vld_in		=>	   PHS2_vld_in,

		PHS3_pwm_val	=>	   PHS3_pwm_val,
		PHS3_status		=>	   PHS3_status,
		PHS3_irq_mask	=>	   PHS3_irq_mask,
		PHS3_irq0_L2S	=>	   PHS3_irq0_L2S,
		PHS3_irq1_S2L	=>	   PHS3_irq1_S2L,
		PHS3_irq0_clr	=>	   PHS3_irq0_clr,
		PHS3_irq1_clr	=>	   PHS3_irq1_clr,
		PHS3_vld_out	=>	   PHS3_vld_out,
		PHS3_vld_in		=>	   PHS3_vld_in,

		PHS4_pwm_val	=>	   PHS4_pwm_val,
		PHS4_status		=>	   PHS4_status,
		PHS4_irq_mask	=>	   PHS4_irq_mask,
		PHS4_irq0_L2S	=>	   PHS4_irq0_L2S,
		PHS4_irq1_S2L	=>	   PHS4_irq1_S2L,
		PHS4_irq0_clr	=>	   PHS4_irq0_clr,
		PHS4_irq1_clr	=>	   PHS4_irq1_clr,
		PHS4_vld_out	=>	   PHS4_vld_out,
		PHS4_vld_in		=>	   PHS4_vld_in,

		PHS5_pwm_val	=>	   PHS5_pwm_val,
		PHS5_status		=>	   PHS5_status,
		PHS5_irq_mask	=>	   PHS5_irq_mask,
		PHS5_irq0_L2S	=>	   PHS5_irq0_L2S,
		PHS5_irq1_S2L	=>	   PHS5_irq1_S2L,
		PHS5_irq0_clr	=>	   PHS5_irq0_clr,
		PHS5_irq1_clr	=>	   PHS5_irq1_clr,
		PHS5_vld_out	=>	   PHS5_vld_out,
		PHS5_vld_in		=>	   PHS5_vld_in,

		PHS6_pwm_val	=>	   PHS6_pwm_val,
		PHS6_status		=>	   PHS6_status,
		PHS6_irq_mask	=>	   PHS6_irq_mask,
		PHS6_irq0_L2S	=>	   PHS6_irq0_L2S,
		PHS6_irq1_S2L	=>	   PHS6_irq1_S2L,
		PHS6_irq0_clr	=>	   PHS6_irq0_clr,
		PHS6_irq1_clr	=>	   PHS6_irq1_clr,
		PHS6_vld_out	=>	   PHS6_vld_out,
		PHS6_vld_in		=>	   PHS6_vld_in,

		PHS7_pwm_val	=>	   PHS7_pwm_val,
		PHS7_status		=>	   PHS7_status,
		PHS7_irq_mask	=>	   PHS7_irq_mask,
		PHS7_irq0_L2S	=>	   PHS7_irq0_L2S,
		PHS7_irq1_S2L	=>	   PHS7_irq1_S2L,
		PHS7_irq0_clr	=>	   PHS7_irq0_clr,
		PHS7_irq1_clr	=>	   PHS7_irq1_clr,
		PHS7_vld_out	=>	   PHS7_vld_out,
		PHS7_vld_in		=>	   PHS7_vld_in,

		PHS8_pwm_val	=>	   PHS8_pwm_val,
		PHS8_status		=>	   PHS8_status,
		PHS8_irq_mask	=>	   PHS8_irq_mask,
		PHS8_irq0_L2S	=>	   PHS8_irq0_L2S,
		PHS8_irq1_S2L	=>	   PHS8_irq1_S2L,
		PHS8_irq0_clr	=>	   PHS8_irq0_clr,
		PHS8_irq1_clr	=>	   PHS8_irq1_clr,
		PHS8_vld_out	=>	   PHS8_vld_out,
		PHS8_vld_in		=>	   PHS8_vld_in,

		PHS9_pwm_val	=>	   PHS9_pwm_val,
		PHS9_status		=>	   PHS9_status,
		PHS9_irq_mask	=>	   PHS9_irq_mask,
		PHS9_irq0_L2S	=>	   PHS9_irq0_L2S,
		PHS9_irq1_S2L	=>	   PHS9_irq1_S2L,
		PHS9_irq0_clr	=>	   PHS9_irq0_clr,
		PHS9_irq1_clr	=>	   PHS9_irq1_clr,
		PHS9_vld_out	=>	   PHS9_vld_out,
		PHS9_vld_in		=>	   PHS9_vld_in,

		PHS10_pwm_val	=>	   PHS10_pwm_val,
		PHS10_status	=>	   PHS10_status,
		PHS10_irq_mask	=>	   PHS10_irq_mask,
		PHS10_irq0_L2S	=>	   PHS10_irq0_L2S,
		PHS10_irq1_S2L	=>	   PHS10_irq1_S2L,
		PHS10_irq0_clr	=>	   PHS10_irq0_clr,
		PHS10_irq1_clr	=>	   PHS10_irq1_clr,
		PHS10_vld_out	=>	   PHS10_vld_out,
		PHS10_vld_in	=>	   PHS10_vld_in,

		PHS11_pwm_val	=>	   PHS11_pwm_val,
		PHS11_status	=>	   PHS11_status,
		PHS11_irq_mask	=>	   PHS11_irq_mask,
		PHS11_irq0_L2S	=>	   PHS11_irq0_L2S,
		PHS11_irq1_S2L	=>	   PHS11_irq1_S2L,
		PHS11_irq0_clr	=>	   PHS11_irq0_clr,
		PHS11_irq1_clr	=>	   PHS11_irq1_clr,
		PHS11_vld_out	=>	   PHS11_vld_out,
		PHS11_vld_in	=>	   PHS11_vld_in,

		PHS12_pwm_val	=>	   PHS12_pwm_val,
		PHS12_status	=>	   PHS12_status,
		PHS12_irq_mask	=>	   PHS12_irq_mask,
		PHS12_irq0_L2S	=>	   PHS12_irq0_L2S,
		PHS12_irq1_S2L	=>	   PHS12_irq1_S2L,
		PHS12_irq0_clr	=>	   PHS12_irq0_clr,
		PHS12_irq1_clr	=>	   PHS12_irq1_clr,
		PHS12_vld_out	=>	   PHS12_vld_out,
		PHS12_vld_in	=>	   PHS12_vld_in,

		PHS13_pwm_val	=>	   PHS13_pwm_val,
		PHS13_status	=>	   PHS13_status,
		PHS13_irq_mask	=>	   PHS13_irq_mask,
		PHS13_irq0_L2S	=>	   PHS13_irq0_L2S,
		PHS13_irq1_S2L	=>	   PHS13_irq1_S2L,
		PHS13_irq0_clr	=>	   PHS13_irq0_clr,
		PHS13_irq1_clr	=>	   PHS13_irq1_clr,
		PHS13_vld_out	=>	   PHS13_vld_out,
		PHS13_vld_in	=>	   PHS13_vld_in,

		PHS14_pwm_val	=>	   PHS14_pwm_val,
		PHS14_status	=>	   PHS14_status,
		PHS14_irq_mask	=>	   PHS14_irq_mask,
		PHS14_irq0_L2S	=>	   PHS14_irq0_L2S,
		PHS14_irq1_S2L	=>	   PHS14_irq1_S2L,
		PHS14_irq0_clr	=>	   PHS14_irq0_clr,
		PHS14_irq1_clr	=>	   PHS14_irq1_clr,
		PHS14_vld_out	=>	   PHS14_vld_out,
		PHS14_vld_in	=>	   PHS14_vld_in,

		PHS15_pwm_val	=>	   PHS15_pwm_val,
		PHS15_status	=>	   PHS15_status,
		PHS15_irq_mask	=>	   PHS15_irq_mask,
		PHS15_irq0_L2S	=>	   PHS15_irq0_L2S,
		PHS15_irq1_S2L	=>	   PHS15_irq1_S2L,
		PHS15_irq0_clr	=>	   PHS15_irq0_clr,
		PHS15_irq1_clr	=>	   PHS15_irq1_clr,
		PHS15_vld_out	=>	   PHS15_vld_out,
		PHS15_vld_in	=>	   PHS15_vld_in,

		PHS16_pwm_val	=>	   PHS16_pwm_val,
		PHS16_status	=>	   PHS16_status,
		PHS16_irq_mask	=>	   PHS16_irq_mask,
		PHS16_irq0_L2S	=>	   PHS16_irq0_L2S,
		PHS16_irq1_S2L	=>	   PHS16_irq1_S2L,
		PHS16_irq0_clr	=>	   PHS16_irq0_clr,
		PHS16_irq1_clr	=>	   PHS16_irq1_clr,
		PHS16_vld_out	=>	   PHS16_vld_out,
		PHS16_vld_in	=>	   PHS16_vld_in,

		PHS17_pwm_val	=>	   PHS17_pwm_val,
		PHS17_status	=>	   PHS17_status,
		PHS17_irq_mask	=>	   PHS17_irq_mask,
		PHS17_irq0_L2S	=>	   PHS17_irq0_L2S,
		PHS17_irq1_S2L	=>	   PHS17_irq1_S2L,
		PHS17_irq0_clr	=>	   PHS17_irq0_clr,
		PHS17_irq1_clr	=>	   PHS17_irq1_clr,
		PHS17_vld_out	=>	   PHS17_vld_out,
		PHS17_vld_in	=>	   PHS17_vld_in,

		PHS18_pwm_val	=>	   PHS18_pwm_val,
		PHS18_status	=>	   PHS18_status,
		PHS18_irq_mask	=>	   PHS18_irq_mask,
		PHS18_irq0_L2S	=>	   PHS18_irq0_L2S,
		PHS18_irq1_S2L	=>	   PHS18_irq1_S2L,
		PHS18_irq0_clr	=>	   PHS18_irq0_clr,
		PHS18_irq1_clr	=>	   PHS18_irq1_clr,
		PHS18_vld_out	=>	   PHS18_vld_out,
		PHS18_vld_in	=>	   PHS18_vld_in,

		PHS19_pwm_val	=>	   PHS19_pwm_val,
		PHS19_status	=>	   PHS19_status,
		PHS19_irq_mask	=>	   PHS19_irq_mask,
		PHS19_irq0_L2S	=>	   PHS19_irq0_L2S,
		PHS19_irq1_S2L	=>	   PHS19_irq1_S2L,
		PHS19_irq0_clr	=>	   PHS19_irq0_clr,
		PHS19_irq1_clr	=>	   PHS19_irq1_clr,
		PHS19_vld_out	=>	   PHS19_vld_out,
		PHS19_vld_in	=>	   PHS19_vld_in,

		PHS20_pwm_val	=>	   PHS20_pwm_val,
		PHS20_status	=>	   PHS20_status,
		PHS20_irq_mask	=>	   PHS20_irq_mask,
		PHS20_irq0_L2S	=>	   PHS20_irq0_L2S,
		PHS20_irq1_S2L	=>	   PHS20_irq1_S2L,
		PHS20_irq0_clr	=>	   PHS20_irq0_clr,
		PHS20_irq1_clr	=>	   PHS20_irq1_clr,
		PHS20_vld_out	=>	   PHS20_vld_out,
		PHS20_vld_in	=>	   PHS20_vld_in,

		PHS21_pwm_val	=>	   PHS21_pwm_val,
		PHS21_status	=>	   PHS21_status,
		PHS21_irq_mask	=>	   PHS21_irq_mask,
		PHS21_irq0_L2S	=>	   PHS21_irq0_L2S,
		PHS21_irq1_S2L	=>	   PHS21_irq1_S2L,
		PHS21_irq0_clr	=>	   PHS21_irq0_clr,
		PHS21_irq1_clr	=>	   PHS21_irq1_clr,
		PHS21_vld_out	=>	   PHS21_vld_out,
		PHS21_vld_in	=>	   PHS21_vld_in,

		PHS22_pwm_val	=>	   PHS22_pwm_val,
		PHS22_status	=>	   PHS22_status,
		PHS22_irq_mask	=>	   PHS22_irq_mask,
		PHS22_irq0_L2S	=>	   PHS22_irq0_L2S,
		PHS22_irq1_S2L	=>	   PHS22_irq1_S2L,
		PHS22_irq0_clr	=>	   PHS22_irq0_clr,
		PHS22_irq1_clr	=>	   PHS22_irq1_clr,
		PHS22_vld_out	=>	   PHS22_vld_out,
		PHS22_vld_in	=>	   PHS22_vld_in,

		PHS23_pwm_val	=>	   PHS23_pwm_val,
		PHS23_status	=>	   PHS23_status,
		PHS23_irq_mask	=>	   PHS23_irq_mask,
		PHS23_irq0_L2S	=>	   PHS23_irq0_L2S,
		PHS23_irq1_S2L	=>	   PHS23_irq1_S2L,
		PHS23_irq0_clr	=>	   PHS23_irq0_clr,
		PHS23_irq1_clr	=>	   PHS23_irq1_clr,
		PHS23_vld_out	=>	   PHS23_vld_out,
		PHS23_vld_in	=>	   PHS23_vld_in,

		PHS24_pwm_val	=>	   PHS24_pwm_val,
		PHS24_status	=>	   PHS24_status,
		PHS24_irq_mask	=>	   PHS24_irq_mask,
		PHS24_irq0_L2S	=>	   PHS24_irq0_L2S,
		PHS24_irq1_S2L	=>	   PHS24_irq1_S2L,
		PHS24_irq0_clr	=>	   PHS24_irq0_clr,
		PHS24_irq1_clr	=>	   PHS24_irq1_clr,
		PHS24_vld_out	=>	   PHS24_vld_out,
		PHS24_vld_in	=>	   PHS24_vld_in,

		PHS25_pwm_val	=>	   PHS25_pwm_val,
		PHS25_status	=>	   PHS25_status,
		PHS25_irq_mask	=>	   PHS25_irq_mask,
		PHS25_irq0_L2S	=>	   PHS25_irq0_L2S,
		PHS25_irq1_S2L	=>	   PHS25_irq1_S2L,
		PHS25_irq0_clr	=>	   PHS25_irq0_clr,
		PHS25_irq1_clr	=>	   PHS25_irq1_clr,
		PHS25_vld_out	=>	   PHS25_vld_out,
		PHS25_vld_in	=>	   PHS25_vld_in,

		PHS26_pwm_val	=>	   PHS26_pwm_val,
		PHS26_status	=>	   PHS26_status,
		PHS26_irq_mask	=>	   PHS26_irq_mask,
		PHS26_irq0_L2S	=>	   PHS26_irq0_L2S,
		PHS26_irq1_S2L	=>	   PHS26_irq1_S2L,
		PHS26_irq0_clr	=>	   PHS26_irq0_clr,
		PHS26_irq1_clr	=>	   PHS26_irq1_clr,
		PHS26_vld_out	=>	   PHS26_vld_out,
		PHS26_vld_in	=>	   PHS26_vld_in,

		PHS27_pwm_val	=>	   PHS27_pwm_val,
		PHS27_status	=>	   PHS27_status,
		PHS27_irq_mask	=>	   PHS27_irq_mask,
		PHS27_irq0_L2S	=>	   PHS27_irq0_L2S,
		PHS27_irq1_S2L	=>	   PHS27_irq1_S2L,
		PHS27_irq0_clr	=>	   PHS27_irq0_clr,
		PHS27_irq1_clr	=>	   PHS27_irq1_clr,
		PHS27_vld_out	=>	   PHS27_vld_out,
		PHS27_vld_in	=>	   PHS27_vld_in,

		PHS28_pwm_val	=>	   PHS28_pwm_val,
		PHS28_status	=>	   PHS28_status,
		PHS28_irq_mask	=>	   PHS28_irq_mask,
		PHS28_irq0_L2S	=>	   PHS28_irq0_L2S,
		PHS28_irq1_S2L	=>	   PHS28_irq1_S2L,
		PHS28_irq0_clr	=>	   PHS28_irq0_clr,
		PHS28_irq1_clr	=>	   PHS28_irq1_clr,
		PHS28_vld_out	=>	   PHS28_vld_out,
		PHS28_vld_in	=>	   PHS28_vld_in,

		PHS29_pwm_val	=>	   PHS29_pwm_val,
		PHS29_status	=>	   PHS29_status,
		PHS29_irq_mask	=>	   PHS29_irq_mask,
		PHS29_irq0_L2S	=>	   PHS29_irq0_L2S,
		PHS29_irq1_S2L	=>	   PHS29_irq1_S2L,
		PHS29_irq0_clr	=>	   PHS29_irq0_clr,
		PHS29_irq1_clr	=>	   PHS29_irq1_clr,
		PHS29_vld_out	=>	   PHS29_vld_out,
		PHS29_vld_in	=>	   PHS29_vld_in,

		PHS30_pwm_val	=>	   PHS30_pwm_val,
		PHS30_status	=>	   PHS30_status,
		PHS30_irq_mask	=>	   PHS30_irq_mask,
		PHS30_irq0_L2S	=>	   PHS30_irq0_L2S,
		PHS30_irq1_S2L	=>	   PHS30_irq1_S2L,
		PHS30_irq0_clr	=>	   PHS30_irq0_clr,
		PHS30_irq1_clr	=>	   PHS30_irq1_clr,
		PHS30_vld_out	=>	   PHS30_vld_out,
		PHS30_vld_in	=>	   PHS30_vld_in,

		PHS31_pwm_val	=>	   PHS31_pwm_val,
		PHS31_status	=>	   PHS31_status,
		PHS31_irq_mask	=>	   PHS31_irq_mask,
		PHS31_irq0_L2S	=>	   PHS31_irq0_L2S,
		PHS31_irq1_S2L	=>	   PHS31_irq1_S2L,
		PHS31_irq0_clr	=>	   PHS31_irq0_clr,
		PHS31_irq1_clr	=>	   PHS31_irq1_clr,
		PHS31_vld_out	=>	   PHS31_vld_out,
		PHS31_vld_in	=>	   PHS31_vld_in,

		PHS32_pwm_val	=>	   PHS32_pwm_val,
		PHS32_status	=>	   PHS32_status,
		PHS32_irq_mask	=>	   PHS32_irq_mask,
		PHS32_irq0_L2S	=>	   PHS32_irq0_L2S,
		PHS32_irq1_S2L	=>	   PHS32_irq1_S2L,
		PHS32_irq0_clr	=>	   PHS32_irq0_clr,
		PHS32_irq1_clr	=>	   PHS32_irq1_clr,
		PHS32_vld_out	=>	   PHS32_vld_out,
		PHS32_vld_in	=>	   PHS32_vld_in,

		PHS33_pwm_val	=>	   PHS33_pwm_val,
		PHS33_status	=>	   PHS33_status,
		PHS33_irq_mask	=>	   PHS33_irq_mask,
		PHS33_irq0_L2S	=>	   PHS33_irq0_L2S,
		PHS33_irq1_S2L	=>	   PHS33_irq1_S2L,
		PHS33_irq0_clr	=>	   PHS33_irq0_clr,
		PHS33_irq1_clr	=>	   PHS33_irq1_clr,
		PHS33_vld_out	=>	   PHS33_vld_out,
		PHS33_vld_in	=>	   PHS33_vld_in,

		PHS34_pwm_val	=>	   PHS34_pwm_val,
		PHS34_status	=>	   PHS34_status,
		PHS34_irq_mask	=>	   PHS34_irq_mask,
		PHS34_irq0_L2S	=>	   PHS34_irq0_L2S,
		PHS34_irq1_S2L	=>	   PHS34_irq1_S2L,
		PHS34_irq0_clr	=>	   PHS34_irq0_clr,
		PHS34_irq1_clr	=>	   PHS34_irq1_clr,
		PHS34_vld_out	=>	   PHS34_vld_out,
		PHS34_vld_in	=>	   PHS34_vld_in,

		PHS35_pwm_val	=>	   PHS35_pwm_val,
		PHS35_status	=>	   PHS35_status,
		PHS35_irq_mask	=>	   PHS35_irq_mask,
		PHS35_irq0_L2S	=>	   PHS35_irq0_L2S,
		PHS35_irq1_S2L	=>	   PHS35_irq1_S2L,
		PHS35_irq0_clr	=>	   PHS35_irq0_clr,
		PHS35_irq1_clr	=>	   PHS35_irq1_clr,
		PHS35_vld_out	=>	   PHS35_vld_out,
		PHS35_vld_in	=>	   PHS35_vld_in,

		PHS36_pwm_val	=>	   PHS36_pwm_val,
		PHS36_status	=>	   PHS36_status,
		PHS36_irq_mask	=>	   PHS36_irq_mask,
		PHS36_irq0_L2S	=>	   PHS36_irq0_L2S,
		PHS36_irq1_S2L	=>	   PHS36_irq1_S2L,
		PHS36_irq0_clr	=>	   PHS36_irq0_clr,
		PHS36_irq1_clr	=>	   PHS36_irq1_clr,
		PHS36_vld_out	=>	   PHS36_vld_out,
		PHS36_vld_in	=>	   PHS36_vld_in,

		PHS37_pwm_val	=>	   PHS37_pwm_val,
		PHS37_status	=>	   PHS37_status,
		PHS37_irq_mask	=>	   PHS37_irq_mask,
		PHS37_irq0_L2S	=>	   PHS37_irq0_L2S,
		PHS37_irq1_S2L	=>	   PHS37_irq1_S2L,
		PHS37_irq0_clr	=>	   PHS37_irq0_clr,
		PHS37_irq1_clr	=>	   PHS37_irq1_clr,
		PHS37_vld_out	=>	   PHS37_vld_out,
		PHS37_vld_in	=>	   PHS37_vld_in,

		PHS38_pwm_val	=>	   PHS38_pwm_val,
		PHS38_status	=>	   PHS38_status,
		PHS38_irq_mask	=>	   PHS38_irq_mask,
		PHS38_irq0_L2S	=>	   PHS38_irq0_L2S,
		PHS38_irq1_S2L	=>	   PHS38_irq1_S2L,
		PHS38_irq0_clr	=>	   PHS38_irq0_clr,
		PHS38_irq1_clr	=>	   PHS38_irq1_clr,
		PHS38_vld_out	=>	   PHS38_vld_out,
		PHS38_vld_in	=>	   PHS38_vld_in,

		PHS39_pwm_val	=>	   PHS39_pwm_val,
		PHS39_status	=>	   PHS39_status,
		PHS39_irq_mask	=>	   PHS39_irq_mask,
		PHS39_irq0_L2S	=>	   PHS39_irq0_L2S,
		PHS39_irq1_S2L	=>	   PHS39_irq1_S2L,
		PHS39_irq0_clr	=>	   PHS39_irq0_clr,
		PHS39_irq1_clr	=>	   PHS39_irq1_clr,
		PHS39_vld_out	=>	   PHS39_vld_out,
		PHS39_vld_in	=>	   PHS39_vld_in,

		PHS40_pwm_val	=>	   PHS40_pwm_val,
		PHS40_status	=>	   PHS40_status,
		PHS40_irq_mask	=>	   PHS40_irq_mask,
		PHS40_irq0_L2S	=>	   PHS40_irq0_L2S,
		PHS40_irq1_S2L	=>	   PHS40_irq1_S2L,
		PHS40_irq0_clr	=>	   PHS40_irq0_clr,
		PHS40_irq1_clr	=>	   PHS40_irq1_clr,
		PHS40_vld_out	=>	   PHS40_vld_out,
		PHS40_vld_in	=>	   PHS40_vld_in,

		PHS41_pwm_val	=>	   PHS41_pwm_val,
		PHS41_status	=>	   PHS41_status,
		PHS41_irq_mask	=>	   PHS41_irq_mask,
		PHS41_irq0_L2S	=>	   PHS41_irq0_L2S,
		PHS41_irq1_S2L	=>	   PHS41_irq1_S2L,
		PHS41_irq0_clr	=>	   PHS41_irq0_clr,
		PHS41_irq1_clr	=>	   PHS41_irq1_clr,
		PHS41_vld_out	=>	   PHS41_vld_out,
		PHS41_vld_in	=>	   PHS41_vld_in,

		PHS42_pwm_val	=>	   PHS42_pwm_val,
		PHS42_status	=>	   PHS42_status,
		PHS42_irq_mask	=>	   PHS42_irq_mask,
		PHS42_irq0_L2S	=>	   PHS42_irq0_L2S,
		PHS42_irq1_S2L	=>	   PHS42_irq1_S2L,
		PHS42_irq0_clr	=>	   PHS42_irq0_clr,
		PHS42_irq1_clr	=>	   PHS42_irq1_clr,
		PHS42_vld_out	=>	   PHS42_vld_out,
		PHS42_vld_in	=>	   PHS42_vld_in,

		PHS43_pwm_val	=>	   PHS43_pwm_val,
		PHS43_status	=>	   PHS43_status,
		PHS43_irq_mask	=>	   PHS43_irq_mask,
		PHS43_irq0_L2S	=>	   PHS43_irq0_L2S,
		PHS43_irq1_S2L	=>	   PHS43_irq1_S2L,
		PHS43_irq0_clr	=>	   PHS43_irq0_clr,
		PHS43_irq1_clr	=>	   PHS43_irq1_clr,
		PHS43_vld_out	=>	   PHS43_vld_out,
		PHS43_vld_in	=>	   PHS43_vld_in,

		PHS44_pwm_val	=>	   PHS44_pwm_val,
		PHS44_status	=>	   PHS44_status,
		PHS44_irq_mask	=>	   PHS44_irq_mask,
		PHS44_irq0_L2S	=>	   PHS44_irq0_L2S,
		PHS44_irq1_S2L	=>	   PHS44_irq1_S2L,
		PHS44_irq0_clr	=>	   PHS44_irq0_clr,
		PHS44_irq1_clr	=>	   PHS44_irq1_clr,
		PHS44_vld_out	=>	   PHS44_vld_out,
		PHS44_vld_in	=>	   PHS44_vld_in,

		PHS45_pwm_val	=>	   PHS45_pwm_val,
		PHS45_status	=>	   PHS45_status,
		PHS45_irq_mask	=>	   PHS45_irq_mask,
		PHS45_irq0_L2S	=>	   PHS45_irq0_L2S,
		PHS45_irq1_S2L	=>	   PHS45_irq1_S2L,
		PHS45_irq0_clr	=>	   PHS45_irq0_clr,
		PHS45_irq1_clr	=>	   PHS45_irq1_clr,
		PHS45_vld_out	=>	   PHS45_vld_out,
		PHS45_vld_in	=>	   PHS45_vld_in,

		PHS46_pwm_val	=>	   PHS46_pwm_val,
		PHS46_status	=>	   PHS46_status,
		PHS46_irq_mask	=>	   PHS46_irq_mask,
		PHS46_irq0_L2S	=>	   PHS46_irq0_L2S,
		PHS46_irq1_S2L	=>	   PHS46_irq1_S2L,
		PHS46_irq0_clr	=>	   PHS46_irq0_clr,
		PHS46_irq1_clr	=>	   PHS46_irq1_clr,
		PHS46_vld_out	=>	   PHS46_vld_out,
		PHS46_vld_in	=>	   PHS46_vld_in,

		PHS47_pwm_val	=>	   PHS47_pwm_val,
		PHS47_status	=>	   PHS47_status,
		PHS47_irq_mask	=>	   PHS47_irq_mask,
		PHS47_irq0_L2S	=>	   PHS47_irq0_L2S,
		PHS47_irq1_S2L	=>	   PHS47_irq1_S2L,
		PHS47_irq0_clr	=>	   PHS47_irq0_clr,
		PHS47_irq1_clr	=>	   PHS47_irq1_clr,
		PHS47_vld_out	=>	   PHS47_vld_out,
		PHS47_vld_in	=>	   PHS47_vld_in,

		PHS48_pwm_val	=>	   PHS48_pwm_val,
		PHS48_status	=>	   PHS48_status,
		PHS48_irq_mask	=>	   PHS48_irq_mask,
		PHS48_irq0_L2S	=>	   PHS48_irq0_L2S,
		PHS48_irq1_S2L	=>	   PHS48_irq1_S2L,
		PHS48_irq0_clr	=>	   PHS48_irq0_clr,
		PHS48_irq1_clr	=>	   PHS48_irq1_clr,
		PHS48_vld_out	=>	   PHS48_vld_out,
		PHS48_vld_in	=>	   PHS48_vld_in,

		PHS49_pwm_val	=>	   PHS49_pwm_val,
		PHS49_status	=>	   PHS49_status,
		PHS49_irq_mask	=>	   PHS49_irq_mask,
		PHS49_irq0_L2S	=>	   PHS49_irq0_L2S,
		PHS49_irq1_S2L	=>	   PHS49_irq1_S2L,
		PHS49_irq0_clr	=>	   PHS49_irq0_clr,
		PHS49_irq1_clr	=>	   PHS49_irq1_clr,
		PHS49_vld_out	=>	   PHS49_vld_out,
		PHS49_vld_in	=>	   PHS49_vld_in,

		PHS_irqs_L2S_0  =>     PHS_irqs_L2S_0,
		PHS_irqs_L2S_1  =>     PHS_irqs_L2S_1,
		PHS_irq_L2S_0   =>     PHS_irq_L2S_0, 
		PHS_irq_L2S_1   =>	   PHS_irq_L2S_1, 

		PHS_irqs_S2L_0  =>     PHS_irqs_S2L_0,
		PHS_irqs_S2L_1  =>     PHS_irqs_S2L_1,
		PHS_irq_S2L_0   =>     PHS_irq_S2L_0, 
		PHS_irq_S2L_1   =>     PHS_irq_S2L_1, 
		--
	
		S_AXI_ACLK		=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA		=> s00_axi_wdata,
		S_AXI_WSTRB		=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP		=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
