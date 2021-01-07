library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PHS_regs_v1_0_S00_AXI is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH	: integer	:= 10
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

		-- Global Clock Signal
		S_AXI_ACLK	: in std_logic;
		-- Global Reset Signal. This Signal is Active LOW
		S_AXI_ARESETN	: in std_logic;
		-- Write address (issued by master, acceped by Slave)
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type. This signal indicates the
    		-- privilege and security level of the transaction, and whether
    		-- the transaction is a data access or an instruction access.
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		-- Write address valid. This signal indicates that the master signaling
    		-- valid write address and control information.
		S_AXI_AWVALID	: in std_logic;
		-- Write address ready. This signal indicates that the slave is ready
    		-- to accept an address and associated control signals.
		S_AXI_AWREADY	: out std_logic;
		-- Write data (issued by master, acceped by Slave) 
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. This signal indicates which byte lanes hold
    		-- valid data. There is one write strobe bit for each eight
    		-- bits of the write data bus.    
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		-- Write valid. This signal indicates that valid write
    		-- data and strobes are available.
		S_AXI_WVALID	: in std_logic;
		-- Write ready. This signal indicates that the slave
    		-- can accept the write data.
		S_AXI_WREADY	: out std_logic;
		-- Write response. This signal indicates the status
    		-- of the write transaction.
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		-- Write response valid. This signal indicates that the channel
    		-- is signaling a valid write response.
		S_AXI_BVALID	: out std_logic;
		-- Response ready. This signal indicates that the master
    		-- can accept a write response.
		S_AXI_BREADY	: in std_logic;
		-- Read address (issued by master, acceped by Slave)
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type. This signal indicates the privilege
    		-- and security level of the transaction, and whether the
    		-- transaction is a data access or an instruction access.
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		-- Read address valid. This signal indicates that the channel
    		-- is signaling valid read address and control information.
		S_AXI_ARVALID	: in std_logic;
		-- Read address ready. This signal indicates that the slave is
    		-- ready to accept an address and associated control signals.
		S_AXI_ARREADY	: out std_logic;
		-- Read data (issued by slave)
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the
    		-- read transfer.
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		-- Read valid. This signal indicates that the channel is
    		-- signaling the required read data.
		S_AXI_RVALID	: out std_logic;
		-- Read ready. This signal indicates that the master can
    		-- accept the read data and response information.
		S_AXI_RREADY	: in std_logic
	);
end PHS_regs_v1_0_S00_AXI;

architecture arch_imp of PHS_regs_v1_0_S00_AXI is

	-- AXI4LITE signals
	signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awready	: std_logic;
	signal axi_wready	: std_logic;
	signal axi_bresp	: std_logic_vector(1 downto 0);
	signal axi_bvalid	: std_logic;
	signal axi_araddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arready	: std_logic;
	signal axi_rdata	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal axi_rresp	: std_logic_vector(1 downto 0);
	signal axi_rvalid	: std_logic;

	-- Example-specific design signals
	-- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	-- ADDR_LSB is used for addressing 32/64 bit registers/memories
	-- ADDR_LSB = 2 for 32 bits (n downto 2)
	-- ADDR_LSB = 3 for 64 bits (n downto 3)
	constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
	constant OPT_MEM_ADDR_BITS : integer := 7;
	------------------------------------------------
	---- Signals for user logic register space example
	--------------------------------------------------
	---- Number of Slave Registers 208
	signal slv_reg0   :std_logic_vector(9 downto 0);
	signal slv_reg1   :std_logic_vector(0 downto 0);
	signal slv_reg2   :std_logic_vector(1 downto 0);
	signal slv_reg3   :std_logic_vector(1 downto 0);
	
	signal slv_reg4   :std_logic_vector(9 downto 0);
	signal slv_reg5   :std_logic_vector(0 downto 0);
	signal slv_reg6   :std_logic_vector(1 downto 0);
	signal slv_reg7   :std_logic_vector(1 downto 0);
	
	signal slv_reg8   :std_logic_vector(9 downto 0);
	signal slv_reg9   :std_logic_vector(0 downto 0);
	signal slv_reg10  :std_logic_vector(1 downto 0);
	signal slv_reg11  :std_logic_vector(1 downto 0);
	
	signal slv_reg12  :std_logic_vector(9 downto 0);
	signal slv_reg13  :std_logic_vector(0 downto 0);
	signal slv_reg14  :std_logic_vector(1 downto 0);
	signal slv_reg15  :std_logic_vector(1 downto 0);
	
	signal slv_reg16  :std_logic_vector(9 downto 0);
	signal slv_reg17  :std_logic_vector(0 downto 0);
	signal slv_reg18  :std_logic_vector(1 downto 0);
	signal slv_reg19  :std_logic_vector(1 downto 0);
	
	signal slv_reg20  :std_logic_vector(9 downto 0);
	signal slv_reg21  :std_logic_vector(0 downto 0);
	signal slv_reg22  :std_logic_vector(1 downto 0);
	signal slv_reg23  :std_logic_vector(1 downto 0);
	
	signal slv_reg24  :std_logic_vector(9 downto 0);
	signal slv_reg25  :std_logic_vector(0 downto 0);
	signal slv_reg26  :std_logic_vector(1 downto 0);
	signal slv_reg27  :std_logic_vector(1 downto 0);
	
	signal slv_reg28  :std_logic_vector(9 downto 0);
	signal slv_reg29  :std_logic_vector(0 downto 0);
	signal slv_reg30  :std_logic_vector(1 downto 0);
	signal slv_reg31  :std_logic_vector(1 downto 0);
	
	signal slv_reg32  :std_logic_vector(9 downto 0);
	signal slv_reg33  :std_logic_vector(0 downto 0);
	signal slv_reg34  :std_logic_vector(1 downto 0);
	signal slv_reg35  :std_logic_vector(1 downto 0);
	
	signal slv_reg36  :std_logic_vector(9 downto 0);
	signal slv_reg37  :std_logic_vector(0 downto 0);
	signal slv_reg38  :std_logic_vector(1 downto 0);
	signal slv_reg39  :std_logic_vector(1 downto 0);
	
	signal slv_reg40  :std_logic_vector(9 downto 0);
	signal slv_reg41  :std_logic_vector(0 downto 0);
	signal slv_reg42  :std_logic_vector(1 downto 0);
	signal slv_reg43  :std_logic_vector(1 downto 0);
	
	signal slv_reg44  :std_logic_vector(9 downto 0);
	signal slv_reg45  :std_logic_vector(0 downto 0);
	signal slv_reg46  :std_logic_vector(1 downto 0);
	signal slv_reg47  :std_logic_vector(1 downto 0);
	
	signal slv_reg48  :std_logic_vector(9 downto 0);
	signal slv_reg49  :std_logic_vector(0 downto 0);
	signal slv_reg50  :std_logic_vector(1 downto 0);
	signal slv_reg51  :std_logic_vector(1 downto 0);
	
	signal slv_reg52  :std_logic_vector(9 downto 0);
	signal slv_reg53  :std_logic_vector(0 downto 0);
	signal slv_reg54  :std_logic_vector(1 downto 0);
	signal slv_reg55  :std_logic_vector(1 downto 0);
	
	signal slv_reg56  :std_logic_vector(9 downto 0);
	signal slv_reg57  :std_logic_vector(0 downto 0);
	signal slv_reg58  :std_logic_vector(1 downto 0);
	signal slv_reg59  :std_logic_vector(1 downto 0);
	
	signal slv_reg60  :std_logic_vector(9 downto 0);
	signal slv_reg61  :std_logic_vector(0 downto 0);
	signal slv_reg62  :std_logic_vector(1 downto 0);
	signal slv_reg63  :std_logic_vector(1 downto 0);
	
	signal slv_reg64  :std_logic_vector(9 downto 0);
	signal slv_reg65  :std_logic_vector(0 downto 0);
	signal slv_reg66  :std_logic_vector(1 downto 0);
	signal slv_reg67  :std_logic_vector(1 downto 0);
	
	signal slv_reg68  :std_logic_vector(9 downto 0);
	signal slv_reg69  :std_logic_vector(0 downto 0);
	signal slv_reg70  :std_logic_vector(1 downto 0);
	signal slv_reg71  :std_logic_vector(1 downto 0);
	
	signal slv_reg72  :std_logic_vector(9 downto 0);
	signal slv_reg73  :std_logic_vector(0 downto 0);
	signal slv_reg74  :std_logic_vector(1 downto 0);
	signal slv_reg75  :std_logic_vector(1 downto 0);
	
	signal slv_reg76  :std_logic_vector(9 downto 0);
	signal slv_reg77  :std_logic_vector(0 downto 0);
	signal slv_reg78  :std_logic_vector(1 downto 0);
	signal slv_reg79  :std_logic_vector(1 downto 0);
	
	signal slv_reg80  :std_logic_vector(9 downto 0);
	signal slv_reg81  :std_logic_vector(0 downto 0);
	signal slv_reg82  :std_logic_vector(1 downto 0);
	signal slv_reg83  :std_logic_vector(1 downto 0);
	
	signal slv_reg84  :std_logic_vector(9 downto 0);
	signal slv_reg85  :std_logic_vector(0 downto 0);
	signal slv_reg86  :std_logic_vector(1 downto 0);
	signal slv_reg87  :std_logic_vector(1 downto 0);
	
	signal slv_reg88  :std_logic_vector(9 downto 0);
	signal slv_reg89  :std_logic_vector(0 downto 0);
	signal slv_reg90  :std_logic_vector(1 downto 0);
	signal slv_reg91  :std_logic_vector(1 downto 0);
	
	signal slv_reg92  :std_logic_vector(9 downto 0);
	signal slv_reg93  :std_logic_vector(0 downto 0);
	signal slv_reg94  :std_logic_vector(1 downto 0);
	signal slv_reg95  :std_logic_vector(1 downto 0);
	
	signal slv_reg96  :std_logic_vector(9 downto 0);
	signal slv_reg97  :std_logic_vector(0 downto 0);
	signal slv_reg98  :std_logic_vector(1 downto 0);
	signal slv_reg99  :std_logic_vector(1 downto 0);
	
	signal slv_reg100 :std_logic_vector(9 downto 0);
	signal slv_reg101 :std_logic_vector(0 downto 0);
	signal slv_reg102 :std_logic_vector(1 downto 0);
	signal slv_reg103 :std_logic_vector(1 downto 0);
	
	signal slv_reg104 :std_logic_vector(9 downto 0);
	signal slv_reg105 :std_logic_vector(0 downto 0);
	signal slv_reg106 :std_logic_vector(1 downto 0);
	signal slv_reg107 :std_logic_vector(1 downto 0);
	
	signal slv_reg108 :std_logic_vector(9 downto 0);
	signal slv_reg109 :std_logic_vector(0 downto 0);
	signal slv_reg110 :std_logic_vector(1 downto 0);
	signal slv_reg111 :std_logic_vector(1 downto 0);
	
	signal slv_reg112 :std_logic_vector(9 downto 0);
	signal slv_reg113 :std_logic_vector(0 downto 0);
	signal slv_reg114 :std_logic_vector(1 downto 0);
	signal slv_reg115 :std_logic_vector(1 downto 0);
	
	signal slv_reg116 :std_logic_vector(9 downto 0);
	signal slv_reg117 :std_logic_vector(0 downto 0);
	signal slv_reg118 :std_logic_vector(1 downto 0);
	signal slv_reg119 :std_logic_vector(1 downto 0);
	
	signal slv_reg120 :std_logic_vector(9 downto 0);
	signal slv_reg121 :std_logic_vector(0 downto 0);
	signal slv_reg122 :std_logic_vector(1 downto 0);
	signal slv_reg123 :std_logic_vector(1 downto 0);
	
	signal slv_reg124 :std_logic_vector(9 downto 0);
	signal slv_reg125 :std_logic_vector(0 downto 0);
	signal slv_reg126 :std_logic_vector(1 downto 0);
	signal slv_reg127 :std_logic_vector(1 downto 0);
	
	signal slv_reg128 :std_logic_vector(9 downto 0);
	signal slv_reg129 :std_logic_vector(0 downto 0);
	signal slv_reg130 :std_logic_vector(1 downto 0);
	signal slv_reg131 :std_logic_vector(1 downto 0);
	
	signal slv_reg132 :std_logic_vector(9 downto 0);
	signal slv_reg133 :std_logic_vector(0 downto 0);
	signal slv_reg134 :std_logic_vector(1 downto 0);
	signal slv_reg135 :std_logic_vector(1 downto 0);
	
	signal slv_reg136 :std_logic_vector(9 downto 0);
	signal slv_reg137 :std_logic_vector(0 downto 0);
	signal slv_reg138 :std_logic_vector(1 downto 0);
	signal slv_reg139 :std_logic_vector(1 downto 0);
	
	signal slv_reg140 :std_logic_vector(9 downto 0);
	signal slv_reg141 :std_logic_vector(0 downto 0);
	signal slv_reg142 :std_logic_vector(1 downto 0);
	signal slv_reg143 :std_logic_vector(1 downto 0);
	
	signal slv_reg144 :std_logic_vector(9 downto 0);
	signal slv_reg145 :std_logic_vector(0 downto 0);
	signal slv_reg146 :std_logic_vector(1 downto 0);
	signal slv_reg147 :std_logic_vector(1 downto 0);
	
	signal slv_reg148 :std_logic_vector(9 downto 0);
	signal slv_reg149 :std_logic_vector(0 downto 0);
	signal slv_reg150 :std_logic_vector(1 downto 0);
	signal slv_reg151 :std_logic_vector(1 downto 0);
	
	signal slv_reg152 :std_logic_vector(9 downto 0);
	signal slv_reg153 :std_logic_vector(0 downto 0);
	signal slv_reg154 :std_logic_vector(1 downto 0);
	signal slv_reg155 :std_logic_vector(1 downto 0);
	
	signal slv_reg156 :std_logic_vector(9 downto 0);
	signal slv_reg157 :std_logic_vector(0 downto 0);
	signal slv_reg158 :std_logic_vector(1 downto 0);
	signal slv_reg159 :std_logic_vector(1 downto 0);
	
	signal slv_reg160 :std_logic_vector(9 downto 0);
	signal slv_reg161 :std_logic_vector(0 downto 0);
	signal slv_reg162 :std_logic_vector(1 downto 0);
	signal slv_reg163 :std_logic_vector(1 downto 0);
	
	signal slv_reg164 :std_logic_vector(9 downto 0);
	signal slv_reg165 :std_logic_vector(0 downto 0);
	signal slv_reg166 :std_logic_vector(1 downto 0);
	signal slv_reg167 :std_logic_vector(1 downto 0);
	
	signal slv_reg168 :std_logic_vector(9 downto 0);
	signal slv_reg169 :std_logic_vector(0 downto 0);
	signal slv_reg170 :std_logic_vector(1 downto 0);
	signal slv_reg171 :std_logic_vector(1 downto 0);
	
	signal slv_reg172 :std_logic_vector(9 downto 0);
	signal slv_reg173 :std_logic_vector(0 downto 0);
	signal slv_reg174 :std_logic_vector(1 downto 0);
	signal slv_reg175 :std_logic_vector(1 downto 0);
	
	signal slv_reg176 :std_logic_vector(9 downto 0);
	signal slv_reg177 :std_logic_vector(0 downto 0);
	signal slv_reg178 :std_logic_vector(1 downto 0);
	signal slv_reg179 :std_logic_vector(1 downto 0);
	
	signal slv_reg180 :std_logic_vector(9 downto 0);
	signal slv_reg181 :std_logic_vector(0 downto 0);
	signal slv_reg182 :std_logic_vector(1 downto 0);
	signal slv_reg183 :std_logic_vector(1 downto 0);
	
	signal slv_reg184 :std_logic_vector(9 downto 0);
	signal slv_reg185 :std_logic_vector(0 downto 0);
	signal slv_reg186 :std_logic_vector(1 downto 0);
	signal slv_reg187 :std_logic_vector(1 downto 0);
	
	signal slv_reg188 :std_logic_vector(9 downto 0);
	signal slv_reg189 :std_logic_vector(0 downto 0);
	signal slv_reg190 :std_logic_vector(1 downto 0);
	signal slv_reg191 :std_logic_vector(1 downto 0);
	
	signal slv_reg192 :std_logic_vector(9 downto 0);
	signal slv_reg193 :std_logic_vector(0 downto 0);
	signal slv_reg194 :std_logic_vector(1 downto 0);
	signal slv_reg195 :std_logic_vector(1 downto 0);
	
	signal slv_reg196 :std_logic_vector(9 downto 0);
	signal slv_reg197 :std_logic_vector(0 downto 0);
	signal slv_reg198 :std_logic_vector(1 downto 0);
	signal slv_reg199 :std_logic_vector(1 downto 0);
	
	signal slv_reg200 :std_logic_vector(24 downto 0);
	signal slv_reg201 :std_logic_vector(24 downto 0);
	
	signal slv_reg202 :std_logic_vector(24 downto 0);
	signal slv_reg203 :std_logic_vector(24 downto 0);
	
	signal slv_reg204 :std_logic_vector(24 downto 0);
	signal slv_reg205 :std_logic_vector(24 downto 0);
	
	signal slv_reg206 :std_logic_vector(24 downto 0);
	signal slv_reg207 :std_logic_vector(24 downto 0);
	
	signal slv_reg_rden	: std_logic;
	signal slv_reg_wren	: std_logic;
	
	signal reg_data_out	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal byte_index	: integer;
	signal aw_en	    : std_logic;
	


	signal PHS_S2L0_Irq_Mask : std_logic_vector(24 downto 0);
	signal PHS_S2L1_Irq_Mask : std_logic_vector(24 downto 0);
	      
    signal PHS_L2S0_Irq_Mask : std_logic_vector(24 downto 0);
    signal PHS_L2S1_Irq_Mask : std_logic_vector(24 downto 0);

    signal PHS_irqs_L2S_0_int : std_logic_vector(24 downto 0) := (others => '0');
    signal PHS_irqs_L2S_1_int : std_logic_vector(24 downto 0) := (others => '0');        
		                                                      
    signal PHS_irqs_S2L_0_int : std_logic_vector(24 downto 0) := (others => '0');
    signal PHS_irqs_S2L_1_int : std_logic_vector(24 downto 0) := (others => '0');

begin
	-- I/O Connections assignments

	S_AXI_AWREADY	<= axi_awready;
	S_AXI_WREADY	<= axi_wready;
	S_AXI_BRESP		<= axi_bresp;
	S_AXI_BVALID	<= axi_bvalid;
	S_AXI_ARREADY	<= axi_arready;
	S_AXI_RDATA		<= axi_rdata;
	S_AXI_RRESP		<= axi_rresp;
	S_AXI_RVALID	<= axi_rvalid;
	-- Implement axi_awready generation
	-- axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	-- de-asserted when reset is low.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awready <= '0';
	      aw_en <= '1';
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
	        -- slave is ready to accept write address when
	        -- there is a valid write address and write data
	        -- on the write address and data bus. This design 
	        -- expects no outstanding transactions. 
	           axi_awready <= '1';
	           aw_en <= '0';
	        elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then
	           aw_en <= '1';
	           axi_awready <= '0';
	      else
	        axi_awready <= '0';
	      end if;
	    end if;
	  end if;
	end process;

	-- Implement axi_awaddr latching
	-- This process is used to latch the address when both 
	-- S_AXI_AWVALID and S_AXI_WVALID are valid. 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_awaddr <= (others => '0');
	    else
	      if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
	        -- Write Address latching
	        axi_awaddr <= S_AXI_AWADDR;
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_wready generation
	-- axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	-- S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	-- de-asserted when reset is low. 

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_wready <= '0';
	    else
	      if (axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1' and aw_en = '1') then
	          -- slave is ready to accept write data when 
	          -- there is a valid write address and write data
	          -- on the write address and data bus. This design 
	          -- expects no outstanding transactions.           
	          axi_wready <= '1';
	      else
	        axi_wready <= '0';
	      end if;
	    end if;
	  end if;
	end process; 

	-- Implement memory mapped register select and write logic generation
	-- The write data is accepted and written to memory mapped registers when
	-- axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	-- select byte enables of slave registers while writing.
	-- These registers are cleared when reset (active low) is applied.
	-- Slave register write enable is asserted when valid address and data are available
	-- and the slave is ready to accept the write address and write data.
	slv_reg_wren <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID ;

	process (S_AXI_ACLK)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0); 
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      slv_reg0 <= (others => '0');
	      slv_reg1 <= (others => '0');
	      slv_reg2 <= (others => '0');
	      slv_reg3 <= (others => '0');
		  
	      slv_reg4 <= (others => '0');
	      slv_reg5 <= (others => '0');
	      slv_reg6 <= (others => '0');
	      slv_reg7 <= (others => '0');
		  
	      slv_reg8 <= (others => '0');
	      slv_reg9 <= (others => '0');
	      slv_reg10 <= (others => '0');
	      slv_reg11 <= (others => '0');
		  
	      slv_reg12 <= (others => '0');
	      slv_reg13 <= (others => '0');
	      slv_reg14 <= (others => '0');
	      slv_reg15 <= (others => '0');
		  
	      slv_reg16 <= (others => '0');
	      slv_reg17 <= (others => '0');
	      slv_reg18 <= (others => '0');
	      slv_reg19 <= (others => '0');
		  
	      slv_reg20 <= (others => '0');
	      slv_reg21 <= (others => '0');
	      slv_reg22 <= (others => '0');
	      slv_reg23 <= (others => '0');
		  
	      slv_reg24 <= (others => '0');
	      slv_reg25 <= (others => '0');
	      slv_reg26 <= (others => '0');
	      slv_reg27 <= (others => '0');
		  
	      slv_reg28 <= (others => '0');
	      slv_reg29 <= (others => '0');
	      slv_reg30 <= (others => '0');
	      slv_reg31 <= (others => '0');
		  
	      slv_reg32 <= (others => '0');
	      slv_reg33 <= (others => '0');
	      slv_reg34 <= (others => '0');
	      slv_reg35 <= (others => '0');
		  
	      slv_reg36 <= (others => '0');
	      slv_reg37 <= (others => '0');
	      slv_reg38 <= (others => '0');
	      slv_reg39 <= (others => '0');
		  
	      slv_reg40 <= (others => '0');
	      slv_reg41 <= (others => '0');
	      slv_reg42 <= (others => '0');
	      slv_reg43 <= (others => '0');
		  
	      slv_reg44 <= (others => '0');
	      slv_reg45 <= (others => '0');
	      slv_reg46 <= (others => '0');
	      slv_reg47 <= (others => '0');
		  
	      slv_reg48 <= (others => '0');
	      slv_reg49 <= (others => '0');
	      slv_reg50 <= (others => '0');
	      slv_reg51 <= (others => '0');
		  
	      slv_reg52 <= (others => '0');
	      slv_reg53 <= (others => '0');
	      slv_reg54 <= (others => '0');
	      slv_reg55 <= (others => '0');
		  
	      slv_reg56 <= (others => '0');
	      slv_reg57 <= (others => '0');
	      slv_reg58 <= (others => '0');
	      slv_reg59 <= (others => '0');
		  
	      slv_reg60 <= (others => '0');
	      slv_reg61 <= (others => '0');
	      slv_reg62 <= (others => '0');
	      slv_reg63 <= (others => '0');
		  
	      slv_reg64 <= (others => '0');
	      slv_reg65 <= (others => '0');
	      slv_reg66 <= (others => '0');
	      slv_reg67 <= (others => '0');
		  
	      slv_reg68 <= (others => '0');
	      slv_reg69 <= (others => '0');
	      slv_reg70 <= (others => '0');
	      slv_reg71 <= (others => '0');
		  
	      slv_reg72 <= (others => '0');
	      slv_reg73 <= (others => '0');
	      slv_reg74 <= (others => '0');
	      slv_reg75 <= (others => '0');
		  
	      slv_reg76 <= (others => '0');
	      slv_reg77 <= (others => '0');
	      slv_reg78 <= (others => '0');
	      slv_reg79 <= (others => '0');
		  
	      slv_reg80 <= (others => '0');
	      slv_reg81 <= (others => '0');
	      slv_reg82 <= (others => '0');
	      slv_reg83 <= (others => '0');
		  
	      slv_reg84 <= (others => '0');
	      slv_reg85 <= (others => '0');
	      slv_reg86 <= (others => '0');
	      slv_reg87 <= (others => '0');
		  
	      slv_reg88 <= (others => '0');
	      slv_reg89 <= (others => '0');
	      slv_reg90 <= (others => '0');
	      slv_reg91 <= (others => '0');
		  
	      slv_reg92 <= (others => '0');
	      slv_reg93 <= (others => '0');
	      slv_reg94 <= (others => '0');
	      slv_reg95 <= (others => '0');
		  
	      slv_reg96 <= (others => '0');
	      slv_reg97 <= (others => '0');
	      slv_reg98 <= (others => '0');
	      slv_reg99 <= (others => '0');
		  
	      slv_reg100 <= (others => '0');
	      slv_reg101 <= (others => '0');
	      slv_reg102 <= (others => '0');
	      slv_reg103 <= (others => '0');
		  
	      slv_reg104 <= (others => '0');
	      slv_reg105 <= (others => '0');
	      slv_reg106 <= (others => '0');
	      slv_reg107 <= (others => '0');
		  
	      slv_reg108 <= (others => '0');
	      slv_reg109 <= (others => '0');
	      slv_reg110 <= (others => '0');
	      slv_reg111 <= (others => '0');
		  
	      slv_reg112 <= (others => '0');
	      slv_reg113 <= (others => '0');
	      slv_reg114 <= (others => '0');
	      slv_reg115 <= (others => '0');
		  
	      slv_reg116 <= (others => '0');
	      slv_reg117 <= (others => '0');
	      slv_reg118 <= (others => '0');
	      slv_reg119 <= (others => '0');
		  
	      slv_reg120 <= (others => '0');
	      slv_reg121 <= (others => '0');
	      slv_reg122 <= (others => '0');
	      slv_reg123 <= (others => '0');
		  
	      slv_reg124 <= (others => '0');
	      slv_reg125 <= (others => '0');
	      slv_reg126 <= (others => '0');
	      slv_reg127 <= (others => '0');
		  
	      slv_reg128 <= (others => '0');
	      slv_reg129 <= (others => '0');
	      slv_reg130 <= (others => '0');
	      slv_reg131 <= (others => '0');
		  
	      slv_reg132 <= (others => '0');
	      slv_reg133 <= (others => '0');
	      slv_reg134 <= (others => '0');
	      slv_reg135 <= (others => '0');
		  
	      slv_reg136 <= (others => '0');
	      slv_reg137 <= (others => '0');
	      slv_reg138 <= (others => '0');
	      slv_reg139 <= (others => '0');
		  
	      slv_reg140 <= (others => '0');
	      slv_reg141 <= (others => '0');
	      slv_reg142 <= (others => '0');
	      slv_reg143 <= (others => '0');
		  
	      slv_reg144 <= (others => '0');
	      slv_reg145 <= (others => '0');
	      slv_reg146 <= (others => '0');
	      slv_reg147 <= (others => '0');
		  
	      slv_reg148 <= (others => '0');
	      slv_reg149 <= (others => '0');
	      slv_reg150 <= (others => '0');
	      slv_reg151 <= (others => '0');
		  
	      slv_reg152 <= (others => '0');
	      slv_reg153 <= (others => '0');
	      slv_reg154 <= (others => '0');
	      slv_reg155 <= (others => '0');
		  
	      slv_reg156 <= (others => '0');
	      slv_reg157 <= (others => '0');
	      slv_reg158 <= (others => '0');
	      slv_reg159 <= (others => '0');
		  
	      slv_reg160 <= (others => '0');
	      slv_reg161 <= (others => '0');
	      slv_reg162 <= (others => '0');
	      slv_reg163 <= (others => '0');
		  
	      slv_reg164 <= (others => '0');
	      slv_reg165 <= (others => '0');
	      slv_reg166 <= (others => '0');
	      slv_reg167 <= (others => '0');
		  
	      slv_reg168 <= (others => '0');
	      slv_reg169 <= (others => '0');
	      slv_reg170 <= (others => '0');
	      slv_reg171 <= (others => '0');
		  
	      slv_reg172 <= (others => '0');
	      slv_reg173 <= (others => '0');
	      slv_reg174 <= (others => '0');
	      slv_reg175 <= (others => '0');
		  
	      slv_reg176 <= (others => '0');
	      slv_reg177 <= (others => '0');
	      slv_reg178 <= (others => '0');
	      slv_reg179 <= (others => '0');
		  
	      slv_reg180 <= (others => '0');
	      slv_reg181 <= (others => '0');
	      slv_reg182 <= (others => '0');
	      slv_reg183 <= (others => '0');
		  
	      slv_reg184 <= (others => '0');
	      slv_reg185 <= (others => '0');
	      slv_reg186 <= (others => '0');
	      slv_reg187 <= (others => '0');
		  
	      slv_reg188 <= (others => '0');
	      slv_reg189 <= (others => '0');
	      slv_reg190 <= (others => '0');
	      slv_reg191 <= (others => '0');
		  
	      slv_reg192 <= (others => '0');
	      slv_reg193 <= (others => '0');
	      slv_reg194 <= (others => '0');
	      slv_reg195 <= (others => '0');
		  
	      slv_reg196 <= (others => '0');
	      slv_reg197 <= (others => '0');
	      slv_reg198 <= (others => '0');
	      slv_reg199 <= (others => '0');
		  
	      slv_reg200 <= (others => '0');
	      slv_reg201 <= (others => '0');
	      slv_reg202 <= (others => '0');
	      slv_reg203 <= (others => '0');
	      slv_reg204 <= (others => '0');
	      slv_reg205 <= (others => '0');
	      slv_reg206 <= (others => '0');
	      slv_reg207 <= (others => '0');
	    else
			-- READ ONLY ---------------
			if (PHS0_vld_in = '1')  then slv_reg1(0)  	<= PHS0_status;  else  slv_reg1    <= slv_reg1;    end if;
			if (PHS1_vld_in = '1')  then slv_reg5(0)  	<= PHS1_status;  else  slv_reg5    <= slv_reg5;    end if;
			if (PHS2_vld_in = '1')  then slv_reg9(0)  	<= PHS2_status;  else  slv_reg9    <= slv_reg9;    end if;
			if (PHS3_vld_in = '1')  then slv_reg13(0)  	<= PHS3_status;  else  slv_reg13   <= slv_reg13;   end if;
			if (PHS4_vld_in = '1')  then slv_reg17(0)  	<= PHS4_status;  else  slv_reg17   <= slv_reg17;   end if;
			if (PHS5_vld_in = '1')  then slv_reg21(0)  	<= PHS5_status;  else  slv_reg21   <= slv_reg21;   end if;
			if (PHS6_vld_in = '1')  then slv_reg25(0)  	<= PHS6_status;  else  slv_reg25   <= slv_reg25;   end if;
			if (PHS7_vld_in = '1')  then slv_reg29(0)   <= PHS7_status;  else  slv_reg29   <= slv_reg29;   end if;
			if (PHS8_vld_in = '1')  then slv_reg33(0)   <= PHS8_status;  else  slv_reg33   <= slv_reg33;   end if;
			if (PHS9_vld_in = '1')  then slv_reg37(0)   <= PHS9_status;  else  slv_reg37   <= slv_reg37;   end if;
			if (PHS10_vld_in = '1') then slv_reg41(0)   <= PHS10_status; else  slv_reg41   <= slv_reg41;   end if;
			if (PHS11_vld_in = '1') then slv_reg45(0)   <= PHS11_status; else  slv_reg45   <= slv_reg45;   end if;
			if (PHS12_vld_in = '1') then slv_reg49(0)   <= PHS12_status; else  slv_reg49   <= slv_reg49;   end if;
			if (PHS13_vld_in = '1') then slv_reg53(0)   <= PHS13_status; else  slv_reg53   <= slv_reg53;   end if;
			if (PHS14_vld_in = '1') then slv_reg57(0)   <= PHS14_status; else  slv_reg57   <= slv_reg57;   end if;
			if (PHS15_vld_in = '1') then slv_reg61(0)   <= PHS15_status; else  slv_reg61   <= slv_reg61;   end if;
			if (PHS16_vld_in = '1') then slv_reg65(0)   <= PHS16_status; else  slv_reg65   <= slv_reg65;   end if;
			if (PHS17_vld_in = '1') then slv_reg69(0)   <= PHS17_status; else  slv_reg69   <= slv_reg69;   end if;
			if (PHS18_vld_in = '1') then slv_reg73(0)   <= PHS18_status; else  slv_reg73   <= slv_reg73;   end if;
			if (PHS19_vld_in = '1') then slv_reg77(0)   <= PHS19_status; else  slv_reg77   <= slv_reg77;   end if;
			if (PHS20_vld_in = '1') then slv_reg81(0)   <= PHS20_status; else  slv_reg81   <= slv_reg81;   end if;
			if (PHS21_vld_in = '1') then slv_reg85(0)   <= PHS21_status; else  slv_reg85   <= slv_reg85;   end if;
			if (PHS22_vld_in = '1') then slv_reg89(0)   <= PHS22_status; else  slv_reg89   <= slv_reg89;   end if;
			if (PHS23_vld_in = '1') then slv_reg93(0)   <= PHS23_status; else  slv_reg93   <= slv_reg93;   end if;
			if (PHS24_vld_in = '1') then slv_reg97(0)   <= PHS24_status; else  slv_reg97   <= slv_reg97;   end if;
			if (PHS25_vld_in = '1') then slv_reg101(0)  <= PHS25_status; else  slv_reg101  <= slv_reg101;  end if;
			if (PHS26_vld_in = '1') then slv_reg105(0)  <= PHS26_status; else  slv_reg105  <= slv_reg105;  end if;
			if (PHS27_vld_in = '1') then slv_reg109(0)  <= PHS27_status; else  slv_reg109  <= slv_reg109;  end if;
			if (PHS28_vld_in = '1') then slv_reg113(0)  <= PHS28_status; else  slv_reg113  <= slv_reg113;  end if;
			if (PHS29_vld_in = '1') then slv_reg117(0)  <= PHS29_status; else  slv_reg117  <= slv_reg117;  end if;
			if (PHS30_vld_in = '1') then slv_reg121(0)  <= PHS30_status; else  slv_reg121  <= slv_reg121;  end if;
			if (PHS31_vld_in = '1') then slv_reg125(0)  <= PHS31_status; else  slv_reg125  <= slv_reg125;  end if;
			if (PHS32_vld_in = '1') then slv_reg129(0)  <= PHS32_status; else  slv_reg129  <= slv_reg129;  end if;
			if (PHS33_vld_in = '1') then slv_reg133(0)  <= PHS33_status; else  slv_reg133  <= slv_reg133;  end if;
			if (PHS34_vld_in = '1') then slv_reg137(0)  <= PHS34_status; else  slv_reg137  <= slv_reg137;  end if;
			if (PHS35_vld_in = '1') then slv_reg141(0)  <= PHS35_status; else  slv_reg141  <= slv_reg141;  end if;
			if (PHS36_vld_in = '1') then slv_reg145(0)  <= PHS36_status; else  slv_reg145  <= slv_reg145;  end if;
			if (PHS37_vld_in = '1') then slv_reg149(0)  <= PHS37_status; else  slv_reg149  <= slv_reg149;  end if;
			if (PHS38_vld_in = '1') then slv_reg153(0)  <= PHS38_status; else  slv_reg153  <= slv_reg153;  end if;
			if (PHS39_vld_in = '1') then slv_reg157(0)  <= PHS39_status; else  slv_reg157  <= slv_reg157;  end if;
			if (PHS40_vld_in = '1') then slv_reg161(0)  <= PHS40_status; else  slv_reg161  <= slv_reg161;  end if;
			if (PHS41_vld_in = '1') then slv_reg165(0)  <= PHS41_status; else  slv_reg165  <= slv_reg165;  end if;
			if (PHS42_vld_in = '1') then slv_reg169(0)  <= PHS42_status; else  slv_reg169  <= slv_reg169;  end if;
			if (PHS43_vld_in = '1') then slv_reg173(0)  <= PHS43_status; else  slv_reg173  <= slv_reg173;  end if;
			if (PHS44_vld_in = '1') then slv_reg177(0)  <= PHS44_status; else  slv_reg177  <= slv_reg177;  end if;
			if (PHS45_vld_in = '1') then slv_reg181(0)  <= PHS45_status; else  slv_reg181  <= slv_reg181;  end if;
			if (PHS46_vld_in = '1') then slv_reg185(0)  <= PHS46_status; else  slv_reg185  <= slv_reg185;  end if;
			if (PHS47_vld_in = '1') then slv_reg189(0)  <= PHS47_status; else  slv_reg189  <= slv_reg189;  end if;
			if (PHS48_vld_in = '1') then slv_reg193(0)  <= PHS48_status; else  slv_reg193  <= slv_reg193;  end if;
			if (PHS49_vld_in = '1') then slv_reg197(0)  <= PHS49_status; else  slv_reg197  <= slv_reg197;  end if;
			
			slv_reg202 	<= PHS_irqs_S2L_0_int(24 downto 0);
			slv_reg203 	<= PHS_irqs_S2L_1_int(24 downto 0);
	
			slv_reg206 	<= PHS_irqs_L2S_0_int(24 downto 0);
			slv_reg207 	<= PHS_irqs_L2S_1_int(24 downto 0);
		
		
			-- WRITE ---------------		
	        loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);	
	        case loc_addr is
				when b"00000000" =>	if (slv_reg_wren = '1') then slv_reg0 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00000010" =>	if (slv_reg_wren = '1') then slv_reg2 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00000011" =>	if (slv_reg_wren = '1') then slv_reg3 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"00000100" =>	if (slv_reg_wren = '1') then slv_reg4 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00000110" =>	if (slv_reg_wren = '1') then slv_reg6 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00000111" =>	if (slv_reg_wren = '1') then slv_reg7 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"00001000" =>	if (slv_reg_wren = '1') then slv_reg8 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00001010" =>	if (slv_reg_wren = '1') then slv_reg10 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00001011" =>	if (slv_reg_wren = '1') then slv_reg11 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"00001100" =>	if (slv_reg_wren = '1') then slv_reg12 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00001110" =>	if (slv_reg_wren = '1') then slv_reg14 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00001111" =>	if (slv_reg_wren = '1') then slv_reg15 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"00010000" =>	if (slv_reg_wren = '1') then slv_reg16 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00010010" =>	if (slv_reg_wren = '1') then slv_reg18 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00010011" =>	if (slv_reg_wren = '1') then slv_reg19 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"00010100" =>	if (slv_reg_wren = '1') then slv_reg20 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00010110" =>	if (slv_reg_wren = '1') then slv_reg22 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00010111" =>	if (slv_reg_wren = '1') then slv_reg23 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"00011000" =>	if (slv_reg_wren = '1') then slv_reg24 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00011010" =>	if (slv_reg_wren = '1') then slv_reg26 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00011011" =>	if (slv_reg_wren = '1') then slv_reg27 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"00011100" =>	if (slv_reg_wren = '1') then slv_reg28 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00011110" =>	if (slv_reg_wren = '1') then slv_reg30 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00011111" =>	if (slv_reg_wren = '1') then slv_reg31 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"00100000" =>	if (slv_reg_wren = '1') then slv_reg32 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00100010" =>	if (slv_reg_wren = '1') then slv_reg34 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00100011" =>	if (slv_reg_wren = '1') then slv_reg35 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"00100100" =>	if (slv_reg_wren = '1') then slv_reg36 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00100110" =>	if (slv_reg_wren = '1') then slv_reg38 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00100111" =>	if (slv_reg_wren = '1') then slv_reg39 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"00101000" =>	if (slv_reg_wren = '1') then slv_reg40 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00101010" =>	if (slv_reg_wren = '1') then slv_reg42 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00101011" =>	if (slv_reg_wren = '1') then slv_reg43 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"00101100" =>	if (slv_reg_wren = '1') then slv_reg44 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00101110" =>	if (slv_reg_wren = '1') then slv_reg46 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00101111" =>	if (slv_reg_wren = '1') then slv_reg47 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"00110000" =>	if (slv_reg_wren = '1') then slv_reg48 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00110010" =>	if (slv_reg_wren = '1') then slv_reg50 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00110011" =>	if (slv_reg_wren = '1') then slv_reg51 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"00110100" =>	if (slv_reg_wren = '1') then slv_reg52 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00110110" =>	if (slv_reg_wren = '1') then slv_reg54 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00110111" =>	if (slv_reg_wren = '1') then slv_reg55 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"00111000" =>	if (slv_reg_wren = '1') then slv_reg56 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00111010" =>	if (slv_reg_wren = '1') then slv_reg58 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00111011" =>	if (slv_reg_wren = '1') then slv_reg59 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"00111100" =>	if (slv_reg_wren = '1') then slv_reg60 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"00111110" =>	if (slv_reg_wren = '1') then slv_reg62 		<= S_AXI_WDATA(1 downto 0);  end if;
				when b"00111111" =>	if (slv_reg_wren = '1') then slv_reg63 		<= S_AXI_WDATA(1 downto 0);  end if;
				
				when b"01000000" =>	if (slv_reg_wren = '1') then slv_reg64 		<= S_AXI_WDATA(9 downto 0);  end if;
				when b"01000010" =>	if (slv_reg_wren = '1') then slv_reg66 		<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01000011" =>	if (slv_reg_wren = '1') then slv_reg67 		<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"01000100" =>	if (slv_reg_wren = '1') then slv_reg68 		<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"01000110" =>	if (slv_reg_wren = '1') then slv_reg70 		<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01000111" =>	if (slv_reg_wren = '1') then slv_reg71 		<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"01001000" =>	if (slv_reg_wren = '1') then slv_reg72 		<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"01001010" =>	if (slv_reg_wren = '1') then slv_reg74 		<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01001011" =>	if (slv_reg_wren = '1') then slv_reg75 		<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"01001100" =>	if (slv_reg_wren = '1') then slv_reg76 		<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"01001110" =>	if (slv_reg_wren = '1') then slv_reg78 		<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01001111" =>	if (slv_reg_wren = '1') then slv_reg79 		<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"01010000" =>	if (slv_reg_wren = '1') then slv_reg80 		<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"01010010" =>	if (slv_reg_wren = '1') then slv_reg82 		<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01010011" =>	if (slv_reg_wren = '1') then slv_reg83 		<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"01010100" =>	if (slv_reg_wren = '1') then slv_reg84 		<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"01010110" =>	if (slv_reg_wren = '1') then slv_reg86 		<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01010111" =>	if (slv_reg_wren = '1') then slv_reg87 		<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"01011000" =>	if (slv_reg_wren = '1') then slv_reg88 		<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"01011010" =>	if (slv_reg_wren = '1') then slv_reg90 		<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01011011" =>	if (slv_reg_wren = '1') then slv_reg91 		<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"01011100" =>	if (slv_reg_wren = '1') then slv_reg92 		<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"01011110" =>	if (slv_reg_wren = '1') then slv_reg94 		<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01011111" =>	if (slv_reg_wren = '1') then slv_reg95 		<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"01100000" =>	if (slv_reg_wren = '1') then slv_reg96 		<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"01100010" =>	if (slv_reg_wren = '1') then slv_reg98 		<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01100011" =>	if (slv_reg_wren = '1') then slv_reg99 		<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"01100100" =>	if (slv_reg_wren = '1') then slv_reg100 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"01100110" =>	if (slv_reg_wren = '1') then slv_reg102 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01100111" =>	if (slv_reg_wren = '1') then slv_reg103 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"01101000" =>	if (slv_reg_wren = '1') then slv_reg104 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"01101010" =>	if (slv_reg_wren = '1') then slv_reg106 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01101011" =>	if (slv_reg_wren = '1') then slv_reg107 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"01101100" =>	if (slv_reg_wren = '1') then slv_reg108 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"01101110" =>	if (slv_reg_wren = '1') then slv_reg110 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01101111" =>	if (slv_reg_wren = '1') then slv_reg111 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"01110000" =>	if (slv_reg_wren = '1') then slv_reg112 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"01110010" =>	if (slv_reg_wren = '1') then slv_reg114 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01110011" =>	if (slv_reg_wren = '1') then slv_reg115 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"01110100" =>	if (slv_reg_wren = '1') then slv_reg116 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"01110110" =>	if (slv_reg_wren = '1') then slv_reg118 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01110111" =>	if (slv_reg_wren = '1') then slv_reg119 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"01111000" =>	if (slv_reg_wren = '1') then slv_reg120 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"01111010" =>	if (slv_reg_wren = '1') then slv_reg122 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01111011" =>	if (slv_reg_wren = '1') then slv_reg123 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"01111100" =>	if (slv_reg_wren = '1') then slv_reg124 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"01111110" =>	if (slv_reg_wren = '1') then slv_reg126 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"01111111" =>	if (slv_reg_wren = '1') then slv_reg127 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10000000" =>	if (slv_reg_wren = '1') then slv_reg128 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10000010" =>	if (slv_reg_wren = '1') then slv_reg130 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10000011" =>	if (slv_reg_wren = '1') then slv_reg131 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10000100" =>	if (slv_reg_wren = '1') then slv_reg132 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10000110" =>	if (slv_reg_wren = '1') then slv_reg134 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10000111" =>	if (slv_reg_wren = '1') then slv_reg135 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10001000" =>	if (slv_reg_wren = '1') then slv_reg136 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10001010" =>	if (slv_reg_wren = '1') then slv_reg138 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10001011" =>	if (slv_reg_wren = '1') then slv_reg139 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10001100" =>	if (slv_reg_wren = '1') then slv_reg140 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10001110" =>	if (slv_reg_wren = '1') then slv_reg142 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10001111" =>	if (slv_reg_wren = '1') then slv_reg143 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10010000" =>	if (slv_reg_wren = '1') then slv_reg144 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10010010" =>	if (slv_reg_wren = '1') then slv_reg146 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10010011" =>	if (slv_reg_wren = '1') then slv_reg147 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10010100" =>	if (slv_reg_wren = '1') then slv_reg148 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10010110" =>	if (slv_reg_wren = '1') then slv_reg150 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10010111" =>	if (slv_reg_wren = '1') then slv_reg151 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10011000" =>	if (slv_reg_wren = '1') then slv_reg152 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10011010" =>	if (slv_reg_wren = '1') then slv_reg154 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10011011" =>	if (slv_reg_wren = '1') then slv_reg155 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10011100" =>	if (slv_reg_wren = '1') then slv_reg156 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10011110" =>	if (slv_reg_wren = '1') then slv_reg158 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10011111" =>	if (slv_reg_wren = '1') then slv_reg159 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10100000" =>	if (slv_reg_wren = '1') then slv_reg160 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10100010" =>	if (slv_reg_wren = '1') then slv_reg162 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10100011" =>	if (slv_reg_wren = '1') then slv_reg163 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10100100" =>	if (slv_reg_wren = '1') then slv_reg164 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10100110" =>	if (slv_reg_wren = '1') then slv_reg166 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10100111" =>	if (slv_reg_wren = '1') then slv_reg167 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10101000" =>	if (slv_reg_wren = '1') then slv_reg168 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10101010" =>	if (slv_reg_wren = '1') then slv_reg170 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10101011" =>	if (slv_reg_wren = '1') then slv_reg171 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10101100" =>	if (slv_reg_wren = '1') then slv_reg172 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10101110" =>	if (slv_reg_wren = '1') then slv_reg174 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10101111" =>	if (slv_reg_wren = '1') then slv_reg175 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10110000" =>	if (slv_reg_wren = '1') then slv_reg176 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10110010" =>	if (slv_reg_wren = '1') then slv_reg178 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10110011" =>	if (slv_reg_wren = '1') then slv_reg179 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10110100" =>	if (slv_reg_wren = '1') then slv_reg180 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10110110" =>	if (slv_reg_wren = '1') then slv_reg182 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10110111" =>	if (slv_reg_wren = '1') then slv_reg183 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10111000" =>	if (slv_reg_wren = '1') then slv_reg184 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10111010" =>	if (slv_reg_wren = '1') then slv_reg186 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10111011" =>	if (slv_reg_wren = '1') then slv_reg187 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"10111100" =>	if (slv_reg_wren = '1') then slv_reg188 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"10111110" =>	if (slv_reg_wren = '1') then slv_reg190 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"10111111" =>	if (slv_reg_wren = '1') then slv_reg191 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"11000000" =>	if (slv_reg_wren = '1') then slv_reg192 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"11000010" =>	if (slv_reg_wren = '1') then slv_reg194 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"11000011" =>	if (slv_reg_wren = '1') then slv_reg195 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"11000100" =>	if (slv_reg_wren = '1') then slv_reg196 	<= S_AXI_WDATA(9 downto 0);	 end if;
				when b"11000110" =>	if (slv_reg_wren = '1') then slv_reg198 	<= S_AXI_WDATA(1 downto 0);	 end if;
				when b"11000111" =>	if (slv_reg_wren = '1') then slv_reg199 	<= S_AXI_WDATA(1 downto 0);	 end if;
				
				when b"11001000" =>	if (slv_reg_wren = '1') then slv_reg200 	<= S_AXI_WDATA(24 downto 0); end if;
				when b"11001001" =>	if (slv_reg_wren = '1') then slv_reg201 	<= S_AXI_WDATA(24 downto 0); end if;
				
				when b"11001100" =>	if (slv_reg_wren = '1') then slv_reg204 	<= S_AXI_WDATA(24 downto 0); end if;
				when b"11001101" =>	if (slv_reg_wren = '1') then slv_reg205 	<= S_AXI_WDATA(24 downto 0); end if;

	          when others =>
	            slv_reg0   <= slv_reg0;
	            slv_reg2   <= slv_reg2;
	            slv_reg3   <= slv_reg3;
				
	            slv_reg4   <= slv_reg4;
	            slv_reg6   <= slv_reg6;
	            slv_reg7   <= slv_reg7;
				
	            slv_reg8   <= slv_reg8;
	            slv_reg10  <= slv_reg10;
	            slv_reg11  <= slv_reg11;
				
	            slv_reg12  <= slv_reg12;
	            slv_reg14  <= slv_reg14;
	            slv_reg15  <= slv_reg15;
				
	            slv_reg16  <= slv_reg16;
	            slv_reg18  <= slv_reg18;
	            slv_reg19  <= slv_reg19;
				
	            slv_reg20  <= slv_reg20;
	            slv_reg22  <= slv_reg22;
	            slv_reg23  <= slv_reg23;
				
	            slv_reg24  <= slv_reg24;
	            slv_reg26  <= slv_reg26;
	            slv_reg27  <= slv_reg27;
				
	            slv_reg28  <= slv_reg28;
	            slv_reg30  <= slv_reg30;
	            slv_reg31  <= slv_reg31;
				
	            slv_reg32  <= slv_reg32;
	            slv_reg34  <= slv_reg34;
	            slv_reg35  <= slv_reg35;
				
	            slv_reg36  <= slv_reg36;
	            slv_reg38  <= slv_reg38;
	            slv_reg39  <= slv_reg39;
				
	            slv_reg40  <= slv_reg40;
	            slv_reg42  <= slv_reg42;
	            slv_reg43  <= slv_reg43;
				
	            slv_reg44  <= slv_reg44;
	            slv_reg46  <= slv_reg46;
	            slv_reg47  <= slv_reg47;
				
	            slv_reg48  <= slv_reg48;
	            slv_reg50  <= slv_reg50;
	            slv_reg51  <= slv_reg51;
				
	            slv_reg52  <= slv_reg52;
	            slv_reg54  <= slv_reg54;
	            slv_reg55  <= slv_reg55;
				
	            slv_reg56  <= slv_reg56;
	            slv_reg58  <= slv_reg58;
	            slv_reg59  <= slv_reg59;
				
	            slv_reg60  <= slv_reg60;
	            slv_reg62  <= slv_reg62;
	            slv_reg63  <= slv_reg63;
				
	            slv_reg64  <= slv_reg64;
	            slv_reg66  <= slv_reg66;
	            slv_reg67  <= slv_reg67;
				
	            slv_reg68  <= slv_reg68;
	            slv_reg70  <= slv_reg70;
	            slv_reg71  <= slv_reg71;
				
	            slv_reg72  <= slv_reg72;
	            slv_reg74  <= slv_reg74;
	            slv_reg75  <= slv_reg75;
				
	            slv_reg76  <= slv_reg76;
	            slv_reg78  <= slv_reg78;
	            slv_reg79  <= slv_reg79;
				
	            slv_reg80  <= slv_reg80;
	            slv_reg82  <= slv_reg82;
	            slv_reg83  <= slv_reg83;
				
	            slv_reg84  <= slv_reg84;
	            slv_reg86  <= slv_reg86;
	            slv_reg87  <= slv_reg87;
				
	            slv_reg88  <= slv_reg88;
	            slv_reg90  <= slv_reg90;
	            slv_reg91  <= slv_reg91;
				
	            slv_reg92  <= slv_reg92;
	            slv_reg94  <= slv_reg94;
	            slv_reg95  <= slv_reg95;
				
	            slv_reg96  <= slv_reg96;
	            slv_reg98  <= slv_reg98;
	            slv_reg99  <= slv_reg99;
				
	            slv_reg100 <= slv_reg100;
	            slv_reg102 <= slv_reg102;
	            slv_reg103 <= slv_reg103;
				
	            slv_reg104 <= slv_reg104;
	            slv_reg106 <= slv_reg106;
	            slv_reg107 <= slv_reg107;
				
	            slv_reg108 <= slv_reg108;
	            slv_reg110 <= slv_reg110;
	            slv_reg111 <= slv_reg111;
				
	            slv_reg112 <= slv_reg112;
	            slv_reg114 <= slv_reg114;
	            slv_reg115 <= slv_reg115;
				
	            slv_reg116 <= slv_reg116;
	            slv_reg118 <= slv_reg118;
	            slv_reg119 <= slv_reg119;
				
	            slv_reg120 <= slv_reg120;
	            slv_reg122 <= slv_reg122;
	            slv_reg123 <= slv_reg123;
				
	            slv_reg124 <= slv_reg124;
	            slv_reg126 <= slv_reg126;
	            slv_reg127 <= slv_reg127;
				
	            slv_reg128 <= slv_reg128;
	            slv_reg130 <= slv_reg130;
	            slv_reg131 <= slv_reg131;
				
	            slv_reg132 <= slv_reg132;
	            slv_reg134 <= slv_reg134;
	            slv_reg135 <= slv_reg135;
				
	            slv_reg136 <= slv_reg136;
	            slv_reg138 <= slv_reg138;
	            slv_reg139 <= slv_reg139;
				
	            slv_reg140 <= slv_reg140;
	            slv_reg142 <= slv_reg142;
	            slv_reg143 <= slv_reg143;
				
	            slv_reg144 <= slv_reg144;
	            slv_reg146 <= slv_reg146;
	            slv_reg147 <= slv_reg147;
				
	            slv_reg148 <= slv_reg148;
	            slv_reg150 <= slv_reg150;
	            slv_reg151 <= slv_reg151;
				
	            slv_reg152 <= slv_reg152;
	            slv_reg154 <= slv_reg154;
	            slv_reg155 <= slv_reg155;
				
	            slv_reg156 <= slv_reg156;
	            slv_reg158 <= slv_reg158;
	            slv_reg159 <= slv_reg159;
				
	            slv_reg160 <= slv_reg160;
	            slv_reg162 <= slv_reg162;
	            slv_reg163 <= slv_reg163;
				
	            slv_reg164 <= slv_reg164;
	            slv_reg166 <= slv_reg166;
	            slv_reg167 <= slv_reg167;
				
	            slv_reg168 <= slv_reg168;
	            slv_reg170 <= slv_reg170;
	            slv_reg171 <= slv_reg171;
				
	            slv_reg172 <= slv_reg172;
	            slv_reg174 <= slv_reg174;
	            slv_reg175 <= slv_reg175;
				
	            slv_reg176 <= slv_reg176;
	            slv_reg178 <= slv_reg178;
	            slv_reg179 <= slv_reg179;
				
	            slv_reg180 <= slv_reg180;
	            slv_reg182 <= slv_reg182;
	            slv_reg183 <= slv_reg183;
				
	            slv_reg184 <= slv_reg184;
	            slv_reg186 <= slv_reg186;
	            slv_reg187 <= slv_reg187;
				
	            slv_reg188 <= slv_reg188;
	            slv_reg190 <= slv_reg190;
	            slv_reg191 <= slv_reg191;
				
	            slv_reg192 <= slv_reg192;
	            slv_reg194 <= slv_reg194;
	            slv_reg195 <= slv_reg195;
				
	            slv_reg196 <= slv_reg196;
	            slv_reg198 <= slv_reg198;
	            slv_reg199 <= slv_reg199;
	            
	            slv_reg200 <= slv_reg200;
	            slv_reg201 <= slv_reg201;
	                        
	            slv_reg204 <= slv_reg204;
	            slv_reg205 <= slv_reg205;

	        end case;
	    end if;
	  end if;                   
	end process; 

	-- Implement write response logic generation
	-- The write response and response valid signals are asserted by the slave 
	-- when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	-- This marks the acceptance of address and indicates the status of 
	-- write transaction.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_bvalid  <= '0';
	      axi_bresp   <= "00"; --need to work more on the responses
	    else
	      if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0'  ) then
	        axi_bvalid <= '1';
	        axi_bresp  <= "00"; 
	      elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then   --check if bready is asserted while bvalid is high)
	        axi_bvalid <= '0';                                 -- (there is a possibility that bready is always asserted high)
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arready generation
	-- axi_arready is asserted for one S_AXI_ACLK clock cycle when
	-- S_AXI_ARVALID is asserted. axi_awready is 
	-- de-asserted when reset (active low) is asserted. 
	-- The read address is also latched when S_AXI_ARVALID is 
	-- asserted. axi_araddr is reset to zero on reset assertion.

	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then 
	    if S_AXI_ARESETN = '0' then
	      axi_arready <= '0';
	      axi_araddr  <= (others => '1');
	    else
	      if (axi_arready = '0' and S_AXI_ARVALID = '1') then
	        -- indicates that the slave has acceped the valid read address
	        axi_arready <= '1';
	        -- Read Address latching 
	        axi_araddr  <= S_AXI_ARADDR;           
	      else
	        axi_arready <= '0';
	      end if;
	    end if;
	  end if;                   
	end process; 

	-- Implement axi_arvalid generation
	-- axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	-- S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	-- data are available on the axi_rdata bus at this instance. The 
	-- assertion of axi_rvalid marks the validity of read data on the 
	-- bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	-- is deasserted on reset (active low). axi_rresp and axi_rdata are 
	-- cleared to zero on reset (active low).  
	process (S_AXI_ACLK)
	begin
	  if rising_edge(S_AXI_ACLK) then
	    if S_AXI_ARESETN = '0' then
	      axi_rvalid <= '0';
	      axi_rresp  <= "00";
	    else
	      if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0') then
	        -- Valid read data is available at the read data bus
	        axi_rvalid <= '1';
	        axi_rresp  <= "00"; -- 'OKAY' response
	      elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
	        -- Read data is accepted by the master
	        axi_rvalid <= '0';
	      end if;            
	    end if;
	  end if;
	end process;

	-- Implement memory mapped register select and read logic generation
	-- Slave register read enable is asserted when valid address is available
	-- and the slave is ready to accept the read address.
	slv_reg_rden <= axi_arready and S_AXI_ARVALID and (not axi_rvalid) ;

	process (slv_reg0, slv_reg1, slv_reg2, slv_reg3, slv_reg4, slv_reg5, slv_reg6, slv_reg7, slv_reg8, slv_reg9, slv_reg10, slv_reg11, slv_reg12, slv_reg13, slv_reg14, slv_reg15, slv_reg16, slv_reg17, slv_reg18, slv_reg19, slv_reg20, slv_reg21, slv_reg22, slv_reg23, slv_reg24, slv_reg25, slv_reg26, slv_reg27, slv_reg28, slv_reg29, slv_reg30, slv_reg31, slv_reg32, slv_reg33, slv_reg34, slv_reg35, slv_reg36, slv_reg37, slv_reg38, slv_reg39, slv_reg40, slv_reg41, slv_reg42, slv_reg43, slv_reg44, slv_reg45, slv_reg46, slv_reg47, slv_reg48, slv_reg49, slv_reg50, slv_reg51, slv_reg52, slv_reg53, slv_reg54, slv_reg55, slv_reg56, slv_reg57, slv_reg58, slv_reg59, slv_reg60, slv_reg61, slv_reg62, slv_reg63, slv_reg64, slv_reg65, slv_reg66, slv_reg67, slv_reg68, slv_reg69, slv_reg70, slv_reg71, slv_reg72, slv_reg73, slv_reg74, slv_reg75, slv_reg76, slv_reg77, slv_reg78, slv_reg79, slv_reg80, slv_reg81, slv_reg82, slv_reg83, slv_reg84, slv_reg85, slv_reg86, slv_reg87, slv_reg88, slv_reg89, slv_reg90, slv_reg91, slv_reg92, slv_reg93, slv_reg94, slv_reg95, slv_reg96, slv_reg97, slv_reg98, slv_reg99, slv_reg100, slv_reg101, slv_reg102, slv_reg103, slv_reg104, slv_reg105, slv_reg106, slv_reg107, slv_reg108, slv_reg109, slv_reg110, slv_reg111, slv_reg112, slv_reg113, slv_reg114, slv_reg115, slv_reg116, slv_reg117, slv_reg118, slv_reg119, slv_reg120, slv_reg121, slv_reg122, slv_reg123, slv_reg124, slv_reg125, slv_reg126, slv_reg127, slv_reg128, slv_reg129, slv_reg130, slv_reg131, slv_reg132, slv_reg133, slv_reg134, slv_reg135, slv_reg136, slv_reg137, slv_reg138, slv_reg139, slv_reg140, slv_reg141, slv_reg142, slv_reg143, slv_reg144, slv_reg145, slv_reg146, slv_reg147, slv_reg148, slv_reg149, slv_reg150, slv_reg151, slv_reg152, slv_reg153, slv_reg154, slv_reg155, slv_reg156, slv_reg157, slv_reg158, slv_reg159, slv_reg160, slv_reg161, slv_reg162, slv_reg163, slv_reg164, slv_reg165, slv_reg166, slv_reg167, slv_reg168, slv_reg169, slv_reg170, slv_reg171, slv_reg172, slv_reg173, slv_reg174, slv_reg175, slv_reg176, slv_reg177, slv_reg178, slv_reg179, slv_reg180, slv_reg181, slv_reg182, slv_reg183, slv_reg184, slv_reg185, slv_reg186, slv_reg187, slv_reg188, slv_reg189, slv_reg190, slv_reg191, slv_reg192, slv_reg193, slv_reg194, slv_reg195, slv_reg196, slv_reg197, slv_reg198, slv_reg199, slv_reg200, slv_reg201, slv_reg202, slv_reg203, slv_reg204, slv_reg205, slv_reg206, slv_reg207, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	    -- Address decoding for reading registers
	    loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	    
	    reg_data_out <= (others => '0');
		
	    case loc_addr is
	      when b"00000000" => reg_data_out(9 downto 0) <= slv_reg0;
	      when b"00000001" => reg_data_out(0 downto 0) <= slv_reg1;
	      when b"00000010" => reg_data_out(1 downto 0) <= slv_reg2;
	      when b"00000011" => reg_data_out(1 downto 0) <= slv_reg3;
	        
	      when b"00000100" => reg_data_out(9 downto 0) <= slv_reg4;
	      when b"00000101" => reg_data_out(0 downto 0) <= slv_reg5;
	      when b"00000110" => reg_data_out(1 downto 0) <= slv_reg6;
	      when b"00000111" => reg_data_out(1 downto 0) <= slv_reg7;
	        
	      when b"00001000" => reg_data_out(9 downto 0) <= slv_reg8;
	      when b"00001001" => reg_data_out(0 downto 0) <= slv_reg9;
	      when b"00001010" => reg_data_out(1 downto 0) <= slv_reg10;
	      when b"00001011" => reg_data_out(1 downto 0) <= slv_reg11;
	        
	      when b"00001100" => reg_data_out(9 downto 0) <= slv_reg12;
	      when b"00001101" => reg_data_out(0 downto 0) <= slv_reg13;
	      when b"00001110" => reg_data_out(1 downto 0) <= slv_reg14;
	      when b"00001111" => reg_data_out(1 downto 0) <= slv_reg15;
	        
	      when b"00010000" => reg_data_out(9 downto 0) <= slv_reg16;
	      when b"00010001" => reg_data_out(0 downto 0) <= slv_reg17;
	      when b"00010010" => reg_data_out(1 downto 0) <= slv_reg18;
	      when b"00010011" => reg_data_out(1 downto 0) <= slv_reg19;
	        
	      when b"00010100" => reg_data_out(9 downto 0) <= slv_reg20;
	      when b"00010101" => reg_data_out(0 downto 0) <= slv_reg21;
	      when b"00010110" => reg_data_out(1 downto 0) <= slv_reg22;
	      when b"00010111" => reg_data_out(1 downto 0) <= slv_reg23;
	        
	      when b"00011000" => reg_data_out(9 downto 0) <= slv_reg24;
	      when b"00011001" => reg_data_out(0 downto 0) <= slv_reg25;
	      when b"00011010" => reg_data_out(1 downto 0) <= slv_reg26;
	      when b"00011011" => reg_data_out(1 downto 0) <= slv_reg27;
	        
	      when b"00011100" => reg_data_out(9 downto 0) <= slv_reg28;
	      when b"00011101" => reg_data_out(0 downto 0) <= slv_reg29;
	      when b"00011110" => reg_data_out(1 downto 0) <= slv_reg30;
	      when b"00011111" => reg_data_out(1 downto 0) <= slv_reg31;
	        
	      when b"00100000" => reg_data_out(9 downto 0) <= slv_reg32;
	      when b"00100001" => reg_data_out(0 downto 0) <= slv_reg33;
	      when b"00100010" => reg_data_out(1 downto 0) <= slv_reg34;
	      when b"00100011" => reg_data_out(1 downto 0) <= slv_reg35;
	        
	      when b"00100100" => reg_data_out(9 downto 0) <= slv_reg36;
	      when b"00100101" => reg_data_out(0 downto 0) <= slv_reg37;
	      when b"00100110" => reg_data_out(1 downto 0) <= slv_reg38;
	      when b"00100111" => reg_data_out(1 downto 0) <= slv_reg39;
	        
	      when b"00101000" => reg_data_out(9 downto 0) <= slv_reg40;
	      when b"00101001" => reg_data_out(0 downto 0) <= slv_reg41;
	      when b"00101010" => reg_data_out(1 downto 0) <= slv_reg42;
	      when b"00101011" => reg_data_out(1 downto 0) <= slv_reg43;
	        
	      when b"00101100" => reg_data_out(9 downto 0) <= slv_reg44;
	      when b"00101101" => reg_data_out(0 downto 0) <= slv_reg45;
	      when b"00101110" => reg_data_out(1 downto 0) <= slv_reg46;
	      when b"00101111" => reg_data_out(1 downto 0) <= slv_reg47;
	        
	      when b"00110000" => reg_data_out(9 downto 0) <= slv_reg48;
	      when b"00110001" => reg_data_out(0 downto 0) <= slv_reg49;
	      when b"00110010" => reg_data_out(1 downto 0) <= slv_reg50;
	      when b"00110011" => reg_data_out(1 downto 0) <= slv_reg51;
	        
	      when b"00110100" => reg_data_out(9 downto 0) <= slv_reg52;
	      when b"00110101" => reg_data_out(0 downto 0) <= slv_reg53;
	      when b"00110110" => reg_data_out(1 downto 0) <= slv_reg54;
	      when b"00110111" => reg_data_out(1 downto 0) <= slv_reg55;
	        
	      when b"00111000" => reg_data_out(9 downto 0) <= slv_reg56;
	      when b"00111001" => reg_data_out(0 downto 0) <= slv_reg57;
	      when b"00111010" => reg_data_out(1 downto 0) <= slv_reg58;
	      when b"00111011" => reg_data_out(1 downto 0) <= slv_reg59;
	        
	      when b"00111100" => reg_data_out(9 downto 0) <= slv_reg60;
	      when b"00111101" => reg_data_out(0 downto 0) <= slv_reg61;
	      when b"00111110" => reg_data_out(1 downto 0) <= slv_reg62;
	      when b"00111111" => reg_data_out(1 downto 0) <= slv_reg63;
	        
	      when b"01000000" => reg_data_out(9 downto 0) <= slv_reg64;
	      when b"01000001" => reg_data_out(0 downto 0) <= slv_reg65;
	      when b"01000010" => reg_data_out(1 downto 0) <= slv_reg66;
	      when b"01000011" => reg_data_out(1 downto 0) <= slv_reg67;
	        
	      when b"01000100" => reg_data_out(9 downto 0) <= slv_reg68;
	      when b"01000101" => reg_data_out(0 downto 0) <= slv_reg69;
	      when b"01000110" => reg_data_out(1 downto 0) <= slv_reg70;
	      when b"01000111" => reg_data_out(1 downto 0) <= slv_reg71;
	        
	      when b"01001000" => reg_data_out(9 downto 0) <= slv_reg72;
	      when b"01001001" => reg_data_out(0 downto 0) <= slv_reg73;
	      when b"01001010" => reg_data_out(1 downto 0) <= slv_reg74;
	      when b"01001011" => reg_data_out(1 downto 0) <= slv_reg75;
	        
	      when b"01001100" => reg_data_out(9 downto 0) <= slv_reg76;
	      when b"01001101" => reg_data_out(0 downto 0) <= slv_reg77;
	      when b"01001110" => reg_data_out(1 downto 0) <= slv_reg78;
	      when b"01001111" => reg_data_out(1 downto 0) <= slv_reg79;
	        
	      when b"01010000" => reg_data_out(9 downto 0) <= slv_reg80;
	      when b"01010001" => reg_data_out(0 downto 0) <= slv_reg81;
	      when b"01010010" => reg_data_out(1 downto 0) <= slv_reg82;
	      when b"01010011" => reg_data_out(1 downto 0) <= slv_reg83;
	        
	      when b"01010100" => reg_data_out(9 downto 0) <= slv_reg84;
	      when b"01010101" => reg_data_out(0 downto 0) <= slv_reg85;
	      when b"01010110" => reg_data_out(1 downto 0) <= slv_reg86;
	      when b"01010111" => reg_data_out(1 downto 0) <= slv_reg87;
	        
	      when b"01011000" => reg_data_out(9 downto 0) <= slv_reg88;
	      when b"01011001" => reg_data_out(0 downto 0) <= slv_reg89;
	      when b"01011010" => reg_data_out(1 downto 0) <= slv_reg90;
	      when b"01011011" => reg_data_out(1 downto 0) <= slv_reg91;
	        
	      when b"01011100" => reg_data_out(9 downto 0) <= slv_reg92;
	      when b"01011101" => reg_data_out(0 downto 0) <= slv_reg93;
	      when b"01011110" => reg_data_out(1 downto 0) <= slv_reg94;
	      when b"01011111" => reg_data_out(1 downto 0) <= slv_reg95;
	        
	      when b"01100000" => reg_data_out(9 downto 0) <= slv_reg96;
	      when b"01100001" => reg_data_out(0 downto 0) <= slv_reg97;
	      when b"01100010" => reg_data_out(1 downto 0) <= slv_reg98;
	      when b"01100011" => reg_data_out(1 downto 0) <= slv_reg99;
	        
	      when b"01100100" => reg_data_out(9 downto 0) <= slv_reg100;
	      when b"01100101" => reg_data_out(0 downto 0) <= slv_reg101;	  
	      when b"01100110" => reg_data_out(1 downto 0) <= slv_reg102;
	      when b"01100111" => reg_data_out(1 downto 0) <= slv_reg103;
		  
	      when b"01101000" => reg_data_out(9 downto 0) <= slv_reg104;
	      when b"01101001" => reg_data_out(0 downto 0) <= slv_reg105;
	      when b"01101010" => reg_data_out(1 downto 0) <= slv_reg106;
	      when b"01101011" => reg_data_out(1 downto 0) <= slv_reg107;
	        
	      when b"01101100" => reg_data_out(9 downto 0) <= slv_reg108;
	      when b"01101101" => reg_data_out(0 downto 0) <= slv_reg109;
	      when b"01101110" => reg_data_out(1 downto 0) <= slv_reg110;
	      when b"01101111" => reg_data_out(1 downto 0) <= slv_reg111;
	        
	      when b"01110000" => reg_data_out(9 downto 0) <= slv_reg112;
	      when b"01110001" => reg_data_out(0 downto 0) <= slv_reg113;
	      when b"01110010" => reg_data_out(1 downto 0) <= slv_reg114;
	      when b"01110011" => reg_data_out(1 downto 0) <= slv_reg115;
	        
	      when b"01110100" => reg_data_out(9 downto 0) <= slv_reg116;
	      when b"01110101" => reg_data_out(0 downto 0) <= slv_reg117;
	      when b"01110110" => reg_data_out(1 downto 0) <= slv_reg118;
	      when b"01110111" => reg_data_out(1 downto 0) <= slv_reg119;
	        
	      when b"01111000" => reg_data_out(9 downto 0) <= slv_reg120;
	      when b"01111001" => reg_data_out(0 downto 0) <= slv_reg121;
	      when b"01111010" => reg_data_out(1 downto 0) <= slv_reg122;
	      when b"01111011" => reg_data_out(1 downto 0) <= slv_reg123;
	        
	      when b"01111100" => reg_data_out(9 downto 0) <= slv_reg124;
	      when b"01111101" => reg_data_out(0 downto 0) <= slv_reg125;
	      when b"01111110" => reg_data_out(1 downto 0) <= slv_reg126;
	      when b"01111111" => reg_data_out(1 downto 0) <= slv_reg127;
	        
	      when b"10000000" => reg_data_out(9 downto 0) <= slv_reg128;
	      when b"10000001" => reg_data_out(0 downto 0) <= slv_reg129;
	      when b"10000010" => reg_data_out(1 downto 0) <= slv_reg130;
	      when b"10000011" => reg_data_out(1 downto 0) <= slv_reg131;
	        
	      when b"10000100" => reg_data_out(9 downto 0) <= slv_reg132;
	      when b"10000101" => reg_data_out(0 downto 0) <= slv_reg133;
	      when b"10000110" => reg_data_out(1 downto 0) <= slv_reg134;
	      when b"10000111" => reg_data_out(1 downto 0) <= slv_reg135;
	        
	      when b"10001000" => reg_data_out(9 downto 0) <= slv_reg136;
	      when b"10001001" => reg_data_out(0 downto 0) <= slv_reg137;
	      when b"10001010" => reg_data_out(1 downto 0) <= slv_reg138;
	      when b"10001011" => reg_data_out(1 downto 0) <= slv_reg139;
	        
	      when b"10001100" => reg_data_out(9 downto 0) <= slv_reg140;
	      when b"10001101" => reg_data_out(0 downto 0) <= slv_reg141;
	      when b"10001110" => reg_data_out(1 downto 0) <= slv_reg142;
	      when b"10001111" => reg_data_out(1 downto 0) <= slv_reg143;
	        
	      when b"10010000" => reg_data_out(9 downto 0) <= slv_reg144;
	      when b"10010001" => reg_data_out(0 downto 0) <= slv_reg145;
	      when b"10010010" => reg_data_out(1 downto 0) <= slv_reg146;
	      when b"10010011" => reg_data_out(1 downto 0) <= slv_reg147;
	        
	      when b"10010100" => reg_data_out(9 downto 0) <= slv_reg148;
	      when b"10010101" => reg_data_out(0 downto 0) <= slv_reg149;
	      when b"10010110" => reg_data_out(1 downto 0) <= slv_reg150;
	      when b"10010111" => reg_data_out(1 downto 0) <= slv_reg151;
	        
	      when b"10011000" => reg_data_out(9 downto 0) <= slv_reg152;
	      when b"10011001" => reg_data_out(0 downto 0) <= slv_reg153;
	      when b"10011010" => reg_data_out(1 downto 0) <= slv_reg154;
	      when b"10011011" => reg_data_out(1 downto 0) <= slv_reg155;
	        
	      when b"10011100" => reg_data_out(9 downto 0) <= slv_reg156;
	      when b"10011101" => reg_data_out(0 downto 0) <= slv_reg157;
	      when b"10011110" => reg_data_out(1 downto 0) <= slv_reg158;
	      when b"10011111" => reg_data_out(1 downto 0) <= slv_reg159;
	        
	      when b"10100000" => reg_data_out(9 downto 0) <= slv_reg160;
	      when b"10100001" => reg_data_out(0 downto 0) <= slv_reg161;
	      when b"10100010" => reg_data_out(1 downto 0) <= slv_reg162;
	      when b"10100011" => reg_data_out(1 downto 0) <= slv_reg163;
	        
	      when b"10100100" => reg_data_out(9 downto 0) <= slv_reg164;
	      when b"10100101" => reg_data_out(0 downto 0) <= slv_reg165;
	      when b"10100110" => reg_data_out(1 downto 0) <= slv_reg166;
	      when b"10100111" => reg_data_out(1 downto 0) <= slv_reg167;
	        
	      when b"10101000" => reg_data_out(9 downto 0) <= slv_reg168;
	      when b"10101001" => reg_data_out(0 downto 0) <= slv_reg169;
	      when b"10101010" => reg_data_out(1 downto 0) <= slv_reg170;
	      when b"10101011" => reg_data_out(1 downto 0) <= slv_reg171;
	        
	      when b"10101100" => reg_data_out(9 downto 0) <= slv_reg172;
	      when b"10101101" => reg_data_out(0 downto 0) <= slv_reg173;
	      when b"10101110" => reg_data_out(1 downto 0) <= slv_reg174;
	      when b"10101111" => reg_data_out(1 downto 0) <= slv_reg175;
	        
	      when b"10110000" => reg_data_out(9 downto 0) <= slv_reg176;
	      when b"10110001" => reg_data_out(0 downto 0) <= slv_reg177;
	      when b"10110010" => reg_data_out(1 downto 0) <= slv_reg178;
	      when b"10110011" => reg_data_out(1 downto 0) <= slv_reg179;
	        
	      when b"10110100" => reg_data_out(9 downto 0) <= slv_reg180;
	      when b"10110101" => reg_data_out(0 downto 0) <= slv_reg181;
	      when b"10110110" => reg_data_out(1 downto 0) <= slv_reg182;
	      when b"10110111" => reg_data_out(1 downto 0) <= slv_reg183;
	        
	      when b"10111000" => reg_data_out(9 downto 0) <= slv_reg184;
	      when b"10111001" => reg_data_out(0 downto 0) <= slv_reg185;
	      when b"10111010" => reg_data_out(1 downto 0) <= slv_reg186;
	      when b"10111011" => reg_data_out(1 downto 0) <= slv_reg187;
	        
	      when b"10111100" => reg_data_out(9 downto 0) <= slv_reg188;
	      when b"10111101" => reg_data_out(0 downto 0) <= slv_reg189;
	      when b"10111110" => reg_data_out(1 downto 0) <= slv_reg190;
	      when b"10111111" => reg_data_out(1 downto 0) <= slv_reg191;
	        
	      when b"11000000" => reg_data_out(9 downto 0) <= slv_reg192;
	      when b"11000001" => reg_data_out(0 downto 0) <= slv_reg193;
	      when b"11000010" => reg_data_out(1 downto 0) <= slv_reg194;
	      when b"11000011" => reg_data_out(1 downto 0) <= slv_reg195;
	        
	      when b"11000100" => reg_data_out(9 downto 0) <= slv_reg196;
	      when b"11000101" => reg_data_out(0 downto 0) <= slv_reg197;
	      when b"11000110" => reg_data_out(1 downto 0) <= slv_reg198;
	      when b"11000111" => reg_data_out(1 downto 0) <= slv_reg199;
	        
	      -- PHS_S2L0_Irq_Mask
	      when b"11001000" => reg_data_out(24 downto 0) <= slv_reg200;
	      -- PHS_S2L1_Irq_Mask
	      when b"11001001" => reg_data_out(24 downto 0) <= slv_reg201;
	        
	      -- PHS_S2L0_Irq
	      when b"11001010" => reg_data_out(24 downto 0) <= slv_reg202;
	      -- PHS_S2L1_Irq
	      when b"11001011" => reg_data_out(24 downto 0) <= slv_reg203;
	      
	      -- PHS_L2S0_Irq_Mask
	      when b"11001100" => reg_data_out(24 downto 0) <= slv_reg204;
	      -- PHS_L2S1_Irq_Mask 
	      when b"11001101" => reg_data_out(24 downto 0) <= slv_reg205;
	        
	      -- PHS_L2S0_Irq
	      when b"11001110" => reg_data_out(24 downto 0) <= slv_reg206;
	      -- PHS_L2S0_Irq
	      when b"11001111" => reg_data_out(24 downto 0) <= slv_reg207;
	        
	      when others =>
	        reg_data_out  <= (others => '0');
	    end case;
	end process; 

	-- Output register or memory read data
	process( S_AXI_ACLK ) is
	begin
	  if (rising_edge (S_AXI_ACLK)) then
	    if ( S_AXI_ARESETN = '0' ) then
	      axi_rdata  <= (others => '0');
	    else
	      if (slv_reg_rden = '1') then
	        -- When there is a valid read address (S_AXI_ARVALID) with 
	        -- acceptance of read address by the slave (axi_arready), 
	        -- output the read dada 
	        -- Read address mux
	          axi_rdata <= reg_data_out;     -- register read data
	      end if;   
	    end if;
	  end if;
	end process;


	-- Add user logic here
	
	-- Output register or memory read data
	
	
	-- Photo sensor 0					
	PHS0_pwm_val  <= slv_reg0(9 downto 0);					
	PHS0_irq_mask <= slv_reg2(1 downto 0);					
	PHS0_irq1_clr <= slv_reg3(1);    PHS0_irq0_clr <= slv_reg3(0);					
					
	-- Photo sensor 1					
	PHS1_pwm_val  <= slv_reg4(9 downto 0);					
	PHS1_irq_mask <= slv_reg6(1 downto 0);					
	PHS1_irq1_clr <= slv_reg7(1);    PHS1_irq0_clr <= slv_reg7(0);					
					
	-- Photo sensor 2					
	PHS2_pwm_val  <= slv_reg8(9 downto 0);					
	PHS2_irq_mask <= slv_reg10(1 downto 0);					
	PHS2_irq1_clr <= slv_reg11(1);    PHS2_irq0_clr <= slv_reg11(0);					
					
	-- Photo sensor 3					
	PHS3_pwm_val  <= slv_reg12(9 downto 0);					
	PHS3_irq_mask <= slv_reg14(1 downto 0);					
	PHS3_irq1_clr <= slv_reg15(1);    PHS3_irq0_clr <= slv_reg15(0);					
					
	-- Photo sensor 4					
	PHS4_pwm_val  <= slv_reg16(9 downto 0);					
	PHS4_irq_mask <= slv_reg18(1 downto 0);					
	PHS4_irq1_clr <= slv_reg19(1);    PHS4_irq0_clr <= slv_reg19(0);					
					
	-- Photo sensor 5					
	PHS5_pwm_val  <= slv_reg20(9 downto 0);					
	PHS5_irq_mask <= slv_reg22(1 downto 0);					
	PHS5_irq1_clr <= slv_reg23(1);    PHS5_irq0_clr <= slv_reg23(0);					
					
	-- Photo sensor 6					
	PHS6_pwm_val  <= slv_reg24(9 downto 0);					
	PHS6_irq_mask <= slv_reg26(1 downto 0);					
	PHS6_irq1_clr <= slv_reg27(1);    PHS6_irq0_clr <= slv_reg27(0);					
					
	-- Photo sensor 7					
	PHS7_pwm_val  <= slv_reg28(9 downto 0);					
	PHS7_irq_mask <= slv_reg30(1 downto 0);					
	PHS7_irq1_clr <= slv_reg31(1);    PHS7_irq0_clr <= slv_reg31(0);					
					
	-- Photo sensor 8					
	PHS8_pwm_val  <= slv_reg32(9 downto 0);					
	PHS8_irq_mask <= slv_reg34(1 downto 0);					
	PHS8_irq1_clr <= slv_reg35(1);    PHS8_irq0_clr <= slv_reg35(0);					
					
	-- Photo sensor 9					
	PHS9_pwm_val  <= slv_reg36(9 downto 0);					
	PHS9_irq_mask <= slv_reg38(1 downto 0);					
	PHS9_irq1_clr <= slv_reg39(1);    PHS9_irq0_clr <= slv_reg39(0);					
					
					
	-- Photo sensor 10					
	PHS10_pwm_val  <= slv_reg40(9 downto 0);					
	PHS10_irq_mask <= slv_reg42(1 downto 0);					
	PHS10_irq1_clr <= slv_reg43(1);    PHS10_irq0_clr <= slv_reg43(0);					
					
	-- Photo sensor 11					
	PHS11_pwm_val  <= slv_reg44(9 downto 0);					
	PHS11_irq_mask <= slv_reg46(1 downto 0);					
	PHS11_irq1_clr <= slv_reg47(1);    PHS11_irq0_clr <= slv_reg47(0);					
					
	-- Photo sensor 12					
	PHS12_pwm_val  <= slv_reg48(9 downto 0);					
	PHS12_irq_mask <= slv_reg50(1 downto 0);					
	PHS12_irq1_clr <= slv_reg51(1);    PHS12_irq0_clr <= slv_reg51(0);					
					
	-- Photo sensor 13					
	PHS13_pwm_val  <= slv_reg52(9 downto 0);					
	PHS13_irq_mask <= slv_reg54(1 downto 0);					
	PHS13_irq1_clr <= slv_reg55(1);    PHS13_irq0_clr <= slv_reg55(0);					
					
	-- Photo sensor 14					
	PHS14_pwm_val  <= slv_reg56(9 downto 0);					
	PHS14_irq_mask <= slv_reg58(1 downto 0);					
	PHS14_irq1_clr <= slv_reg59(1);    PHS14_irq0_clr <= slv_reg59(0);					
					
	-- Photo sensor 15					
	PHS15_pwm_val  <= slv_reg60(9 downto 0);					
	PHS15_irq_mask <= slv_reg62(1 downto 0);					
	PHS15_irq1_clr <= slv_reg63(1);    PHS15_irq0_clr <= slv_reg63(0);					
					
	-- Photo sensor 16					
	PHS16_pwm_val  <= slv_reg64(9 downto 0);					
	PHS16_irq_mask <= slv_reg66(1 downto 0);					
	PHS16_irq1_clr <= slv_reg67(1);    PHS16_irq0_clr <= slv_reg67(0);					
					
	-- Photo sensor 17					
	PHS17_pwm_val  <= slv_reg68(9 downto 0);					
	PHS17_irq_mask <= slv_reg70(1 downto 0);					
	PHS17_irq1_clr <= slv_reg71(1);    PHS17_irq0_clr <= slv_reg71(0);					
					
	-- Photo sensor 18					
	PHS18_pwm_val  <= slv_reg72(9 downto 0);					
	PHS18_irq_mask <= slv_reg74(1 downto 0);					
	PHS18_irq1_clr <= slv_reg75(1);    PHS18_irq0_clr <= slv_reg75(0);					
					
	-- Photo sensor 19					
	PHS19_pwm_val  <= slv_reg76(9 downto 0);					
	PHS19_irq_mask <= slv_reg78(1 downto 0);					
	PHS19_irq1_clr <= slv_reg79(1);    PHS19_irq0_clr <= slv_reg79(0);					
					
	-- Photo sensor 20					
	PHS20_pwm_val  <= slv_reg80(9 downto 0);					
	PHS20_irq_mask <= slv_reg82(1 downto 0);					
	PHS20_irq1_clr <= slv_reg83(1);    PHS20_irq0_clr <= slv_reg83(0);					
					
	-- Photo sensor 21					
	PHS21_pwm_val  <= slv_reg84(9 downto 0);					
	PHS21_irq_mask <= slv_reg86(1 downto 0);					
	PHS21_irq1_clr <= slv_reg87(1);    PHS21_irq0_clr <= slv_reg87(0);					
					
	-- Photo sensor 22					
	PHS22_pwm_val  <= slv_reg88(9 downto 0);					
	PHS22_irq_mask <= slv_reg90(1 downto 0);					
	PHS22_irq1_clr <= slv_reg91(1);    PHS22_irq0_clr <= slv_reg91(0);					
					
	-- Photo sensor 23					
	PHS23_pwm_val  <= slv_reg92(9 downto 0);					
	PHS23_irq_mask <= slv_reg94(1 downto 0);					
	PHS23_irq1_clr <= slv_reg95(1);    PHS23_irq0_clr <= slv_reg95(0);					
					
	-- Photo sensor 24					
	PHS24_pwm_val  <= slv_reg96(9 downto 0);					
	PHS24_irq_mask <= slv_reg98(1 downto 0);					
	PHS24_irq1_clr <= slv_reg99(1);    PHS24_irq0_clr <= slv_reg99(0);					
					
	-- Photo sensor 25					
	PHS25_pwm_val  <= slv_reg100(9 downto 0);					
	PHS25_irq_mask <= slv_reg102(1 downto 0);					
	PHS25_irq1_clr <= slv_reg103(1);    PHS25_irq0_clr <= slv_reg103(0);					
					
	-- Photo sensor 26					
	PHS26_pwm_val  <= slv_reg104(9 downto 0);					
	PHS26_irq_mask <= slv_reg106(1 downto 0);					
	PHS26_irq1_clr <= slv_reg107(1);    PHS26_irq0_clr <= slv_reg107(0);					
					
	-- Photo sensor 27					
	PHS27_pwm_val  <= slv_reg108(9 downto 0);					
	PHS27_irq_mask <= slv_reg110(1 downto 0);					
	PHS27_irq1_clr <= slv_reg111(1);    PHS27_irq0_clr <= slv_reg111(0);					
					
	-- Photo sensor 28					
	PHS28_pwm_val  <= slv_reg112(9 downto 0);					
	PHS28_irq_mask <= slv_reg114(1 downto 0);					
	PHS28_irq1_clr <= slv_reg115(1);    PHS28_irq0_clr <= slv_reg115(0);					
					
					
	-- Photo sensor 29					
	PHS29_pwm_val  <= slv_reg116(9 downto 0);					
	PHS29_irq_mask <= slv_reg118(1 downto 0);					
	PHS29_irq1_clr <= slv_reg119(1);    PHS29_irq0_clr <= slv_reg119(0);					
					
	-- Photo sensor 30					
	PHS30_pwm_val  <= slv_reg120(9 downto 0);					
	PHS30_irq_mask <= slv_reg122(1 downto 0);					
	PHS30_irq1_clr <= slv_reg123(1);    PHS30_irq0_clr <= slv_reg123(0);					
					
	-- Photo sensor 31					
	PHS31_pwm_val  <= slv_reg124(9 downto 0);					
	PHS31_irq_mask <= slv_reg126(1 downto 0);					
	PHS31_irq1_clr <= slv_reg127(1);    PHS31_irq0_clr <= slv_reg127(0);					
					
	-- Photo sensor 32					
	PHS32_pwm_val  <= slv_reg128(9 downto 0);					
	PHS32_irq_mask <= slv_reg130(1 downto 0);					
	PHS32_irq1_clr <= slv_reg131(1);    PHS32_irq0_clr <= slv_reg131(0);					
					
	-- Photo sensor 33					
	PHS33_pwm_val  <= slv_reg132(9 downto 0);					
	PHS33_irq_mask <= slv_reg134(1 downto 0);					
	PHS33_irq1_clr <= slv_reg135(1);    PHS33_irq0_clr <= slv_reg135(0);					
					
	-- Photo sensor 34					
	PHS34_pwm_val  <= slv_reg136(9 downto 0);					
	PHS34_irq_mask <= slv_reg138(1 downto 0);					
	PHS34_irq1_clr <= slv_reg139(1);    PHS34_irq0_clr <= slv_reg139(0);					
					
	-- Photo sensor 35					
	PHS35_pwm_val  <= slv_reg140(9 downto 0);					
	PHS35_irq_mask <= slv_reg142(1 downto 0);					
	PHS35_irq1_clr <= slv_reg143(1);    PHS35_irq0_clr <= slv_reg143(0);					
					
	-- Photo sensor 36					
	PHS36_pwm_val  <= slv_reg144(9 downto 0);					
	PHS36_irq_mask <= slv_reg146(1 downto 0);					
	PHS36_irq1_clr <= slv_reg147(1);    PHS36_irq0_clr <= slv_reg147(0);					
					
	-- Photo sensor 37					
	PHS37_pwm_val  <= slv_reg148(9 downto 0);					
	PHS37_irq_mask <= slv_reg150(1 downto 0);					
	PHS37_irq1_clr <= slv_reg151(1);    PHS37_irq0_clr <= slv_reg151(0);					
					
	-- Photo sensor 38					
	PHS38_pwm_val  <= slv_reg152(9 downto 0);					
	PHS38_irq_mask <= slv_reg154(1 downto 0);					
	PHS38_irq1_clr <= slv_reg155(1);    PHS38_irq0_clr <= slv_reg155(0);					
					
	-- Photo sensor 39					
	PHS39_pwm_val  <= slv_reg156(9 downto 0);					
	PHS39_irq_mask <= slv_reg158(1 downto 0);					
	PHS39_irq1_clr <= slv_reg159(1);    PHS39_irq0_clr <= slv_reg159(0);					
					
	-- Photo sensor 40					
	PHS40_pwm_val  <= slv_reg160(9 downto 0);					
	PHS40_irq_mask <= slv_reg162(1 downto 0);					
	PHS40_irq1_clr <= slv_reg163(1);    PHS40_irq0_clr <= slv_reg163(0);					
					
	-- Photo sensor 41					
	PHS41_pwm_val  <= slv_reg164(9 downto 0);					
	PHS41_irq_mask <= slv_reg166(1 downto 0);					
	PHS41_irq1_clr <= slv_reg167(1);    PHS41_irq0_clr <= slv_reg167(0);					
					
	-- Photo sensor 42					
	PHS42_pwm_val  <= slv_reg168(9 downto 0);					
	PHS42_irq_mask <= slv_reg170(1 downto 0);					
	PHS42_irq1_clr <= slv_reg171(1);    PHS42_irq0_clr <= slv_reg171(0);					
					
	-- Photo sensor 43					
	PHS43_pwm_val  <= slv_reg172(9 downto 0);					
	PHS43_irq_mask <= slv_reg174(1 downto 0);					
	PHS43_irq1_clr <= slv_reg175(1);    PHS43_irq0_clr <= slv_reg175(0);					
					
	-- Photo sensor 44					
	PHS44_pwm_val  <= slv_reg176(9 downto 0);					
	PHS44_irq_mask <= slv_reg178(1 downto 0);					
	PHS44_irq1_clr <= slv_reg179(1);    PHS44_irq0_clr <= slv_reg179(0);					
					
	-- Photo sensor 45					
	PHS45_pwm_val  <= slv_reg180(9 downto 0);					
	PHS45_irq_mask <= slv_reg182(1 downto 0);					
	PHS45_irq1_clr <= slv_reg183(1);    PHS45_irq0_clr <= slv_reg183(0);					
					
	-- Photo sensor 46					
	PHS46_pwm_val  <= slv_reg184(9 downto 0);					
	PHS46_irq_mask <= slv_reg186(1 downto 0);					
	PHS46_irq1_clr <= slv_reg187(1);    PHS46_irq0_clr <= slv_reg187(0);					
					
	-- Photo sensor 47					
	PHS47_pwm_val  <= slv_reg188(9 downto 0);					
	PHS47_irq_mask <= slv_reg190(1 downto 0);					
	PHS47_irq1_clr <= slv_reg191(1);    PHS47_irq0_clr <= slv_reg191(0);					
					
	-- Photo sensor 48					
	PHS48_pwm_val  <= slv_reg192(9 downto 0);					
	PHS48_irq_mask <= slv_reg194(1 downto 0);					
	PHS48_irq1_clr <= slv_reg195(1);    PHS48_irq0_clr <= slv_reg195(0);					
					
	-- Photo sensor 49					
	PHS49_pwm_val  <= slv_reg196(9 downto 0);					
	PHS49_irq_mask <= slv_reg198(1 downto 0);					
	PHS49_irq1_clr <= slv_reg199(1);    PHS49_irq0_clr <= slv_reg199(0);
	
	
	PHS_S2L0_Irq_Mask  <=  slv_reg200(24 downto 0);
	
    PHS_S2L1_Irq_Mask  <=  slv_reg201(24 downto 0);
	      
    PHS_L2S0_Irq_Mask  <=  slv_reg204(24 downto 0);
    
    PHS_L2S1_Irq_Mask  <=  slv_reg205(24 downto 0);

						

	gen_vld_out: process( S_AXI_ACLK ) is
    variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	
	    -- Address decoding for reading registers
	    loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);	
	
	  if (rising_edge (S_AXI_ACLK)) then
	    if ( S_AXI_ARESETN = '0' ) then
			
			PHS0_vld_out	<= '0';	
			PHS1_vld_out	<= '0';	
			PHS2_vld_out	<= '0';	
			PHS3_vld_out	<= '0';	
			PHS4_vld_out	<= '0';	
			PHS5_vld_out	<= '0';	
			PHS6_vld_out	<= '0';	
			PHS7_vld_out	<= '0';	
			PHS8_vld_out	<= '0';	
			PHS9_vld_out	<= '0';	
			PHS10_vld_out	<= '0';	
			PHS11_vld_out	<= '0';	
			PHS12_vld_out	<= '0';	
			PHS13_vld_out	<= '0';	
			PHS14_vld_out	<= '0';	
			PHS15_vld_out	<= '0';	
			PHS16_vld_out	<= '0';	
			PHS17_vld_out	<= '0';	
			PHS18_vld_out	<= '0';	
			PHS19_vld_out	<= '0';	
			PHS20_vld_out	<= '0';	
			PHS21_vld_out	<= '0';	
			PHS22_vld_out	<= '0';	
			PHS23_vld_out	<= '0';	
			PHS24_vld_out	<= '0';	
			PHS25_vld_out	<= '0';	
			PHS26_vld_out	<= '0';	
			PHS27_vld_out	<= '0';	
			PHS28_vld_out	<= '0';	
			PHS29_vld_out	<= '0';	
			PHS30_vld_out	<= '0';	
			PHS31_vld_out	<= '0';	
			PHS32_vld_out	<= '0';	
			PHS33_vld_out	<= '0';	
			PHS34_vld_out	<= '0';	
			PHS35_vld_out	<= '0';	
			PHS36_vld_out	<= '0';	
			PHS37_vld_out	<= '0';	
			PHS38_vld_out	<= '0';	
			PHS39_vld_out	<= '0';	
			PHS40_vld_out	<= '0';	
			PHS41_vld_out	<= '0';	
			PHS42_vld_out	<= '0';	
			PHS43_vld_out	<= '0';	
			PHS44_vld_out	<= '0';	
			PHS45_vld_out	<= '0';	
			PHS46_vld_out	<= '0';	
			PHS47_vld_out	<= '0';	
			PHS48_vld_out	<= '0';	
			PHS49_vld_out	<= '0';	

	    else
			-- Address decoding for writing registers
	        loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);	    
	    
			if slv_reg_wren = '1' then
			
				PHS0_vld_out	<= '0';
			    PHS1_vld_out	<= '0';
			    PHS2_vld_out	<= '0';
			    PHS3_vld_out	<= '0';
			    PHS4_vld_out	<= '0';
			    PHS5_vld_out	<= '0';
			    PHS6_vld_out	<= '0';
			    PHS7_vld_out	<= '0';
			    PHS8_vld_out	<= '0';
			    PHS9_vld_out	<= '0';
			    PHS10_vld_out	<= '0';
			    PHS11_vld_out	<= '0';
			    PHS12_vld_out	<= '0';
			    PHS13_vld_out	<= '0';
			    PHS14_vld_out	<= '0';
			    PHS15_vld_out	<= '0';
			    PHS16_vld_out	<= '0';
			    PHS17_vld_out	<= '0';
			    PHS18_vld_out	<= '0';
			    PHS19_vld_out	<= '0';
			    PHS20_vld_out	<= '0';
			    PHS21_vld_out	<= '0';
			    PHS22_vld_out	<= '0';
			    PHS23_vld_out	<= '0';
			    PHS24_vld_out	<= '0';
			    PHS25_vld_out	<= '0';
			    PHS26_vld_out	<= '0';
			    PHS27_vld_out	<= '0';
			    PHS28_vld_out	<= '0';
			    PHS29_vld_out	<= '0';
			    PHS30_vld_out	<= '0';
			    PHS31_vld_out	<= '0';
			    PHS32_vld_out	<= '0';
			    PHS33_vld_out	<= '0';
			    PHS34_vld_out	<= '0';
			    PHS35_vld_out	<= '0';
			    PHS36_vld_out	<= '0';
			    PHS37_vld_out	<= '0';
			    PHS38_vld_out	<= '0';
			    PHS39_vld_out	<= '0';
			    PHS40_vld_out	<= '0';
			    PHS41_vld_out	<= '0';
			    PHS42_vld_out	<= '0';
			    PHS43_vld_out	<= '0';
			    PHS44_vld_out	<= '0';
			    PHS45_vld_out	<= '0';
			    PHS46_vld_out	<= '0';
			    PHS47_vld_out	<= '0';
			    PHS48_vld_out	<= '0';
			    PHS49_vld_out	<= '0';

				case loc_addr is -- Photo sensor 0
					when b"00000000" =>   PHS0_vld_out   <=   '1';
					when b"00000010" =>   PHS0_vld_out   <=   '1';
					when b"00000011" =>   PHS0_vld_out   <=   '1';
					when others      =>   PHS0_vld_out   <=   '0';
				end case;
				case loc_addr is -- Photo sensor 1
					when b"00000100" =>   PHS1_vld_out   <=   '1';
					when b"00000110" =>   PHS1_vld_out   <=   '1';
					when b"00000111" =>   PHS1_vld_out   <=   '1';
					when others      =>   PHS1_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 2
					when b"00001000" =>   PHS2_vld_out   <=   '1';
					when b"00001010" =>   PHS2_vld_out   <=   '1';
					when b"00001011" =>   PHS2_vld_out   <=   '1';
					when others      =>   PHS2_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 3
					when b"00001100" =>   PHS3_vld_out   <=   '1';
					when b"00001110" =>   PHS3_vld_out   <=   '1';
					when b"00001111" =>   PHS3_vld_out   <=   '1';
					when others      =>   PHS3_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 4
					when b"00010000" =>   PHS4_vld_out   <=   '1';
					when b"00010010" =>   PHS4_vld_out   <=   '1';
					when b"00010011" =>   PHS4_vld_out   <=   '1';
					when others      =>   PHS4_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 5
					when b"00010100" =>   PHS5_vld_out   <=   '1';
					when b"00010110" =>   PHS5_vld_out   <=   '1';
					when b"00010111" =>   PHS5_vld_out   <=   '1';
					when others      =>   PHS5_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 6
					when b"00011000" =>   PHS6_vld_out   <=   '1';
					when b"00011010" =>   PHS6_vld_out   <=   '1';
					when b"00011011" =>   PHS6_vld_out   <=   '1';
					when others      =>   PHS6_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 7
					when b"00011100" =>   PHS7_vld_out   <=   '1';
					when b"00011110" =>   PHS7_vld_out   <=   '1';
					when b"00011111" =>   PHS7_vld_out   <=   '1';
					when others      =>   PHS7_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 8
					when b"00100000" =>   PHS8_vld_out   <=   '1';
					when b"00100010" =>   PHS8_vld_out   <=   '1';
					when b"00100011" =>   PHS8_vld_out   <=   '1';
					when others      =>   PHS8_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 9
					when b"00100100" =>   PHS9_vld_out   <=   '1';
					when b"00100110" =>   PHS9_vld_out   <=   '1';
					when b"00100111" =>   PHS9_vld_out   <=   '1';
					when others      =>   PHS9_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 10
					when b"00101000" =>   PHS10_vld_out   <=   '1';
					when b"00101010" =>   PHS10_vld_out   <=   '1';
					when b"00101011" =>   PHS10_vld_out   <=   '1';
					when others      =>   PHS10_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 11
					when b"00101100" =>   PHS11_vld_out   <=   '1';
					when b"00101110" =>   PHS11_vld_out   <=   '1';
					when b"00101111" =>   PHS11_vld_out   <=   '1';
					when others      =>   PHS11_vld_out   <=   '0';
				end case;				
				case loc_addr is -- Photo sensor 12
					when b"00110000" =>   PHS12_vld_out   <=   '1';
					when b"00110010" =>   PHS12_vld_out   <=   '1';
					when b"00110011" =>   PHS12_vld_out   <=   '1';
					when others      =>   PHS12_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 13
					when b"00110100" =>   PHS13_vld_out   <=   '1';
					when b"00110110" =>   PHS13_vld_out   <=   '1';
					when b"00110111" =>   PHS13_vld_out   <=   '1';
					when others      =>   PHS13_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 14
					when b"00111000" =>   PHS14_vld_out   <=   '1';
					when b"00111010" =>   PHS14_vld_out   <=   '1';
					when b"00111011" =>   PHS14_vld_out   <=   '1';
					when others      =>   PHS14_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 15
					when b"00111100" =>   PHS15_vld_out   <=   '1';
					when b"00111110" =>   PHS15_vld_out   <=   '1';
					when b"00111111" =>   PHS15_vld_out   <=   '1';
					when others      =>   PHS15_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 16
					when b"01000000" =>   PHS16_vld_out   <=   '1';
					when b"01000010" =>   PHS16_vld_out   <=   '1';
					when b"01000011" =>   PHS16_vld_out   <=   '1';
					when others      =>   PHS16_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 17
					when b"01000100" =>   PHS17_vld_out   <=   '1';
					when b"01000110" =>   PHS17_vld_out   <=   '1';
					when b"01000111" =>   PHS17_vld_out   <=   '1';
					when others      =>   PHS17_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 18
					when b"01001000" =>   PHS18_vld_out   <=   '1';
					when b"01001010" =>   PHS18_vld_out   <=   '1';
					when b"01001011" =>   PHS18_vld_out   <=   '1';
					when others      =>   PHS18_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 19
					when b"01001100" =>   PHS19_vld_out   <=   '1';
					when b"01001110" =>   PHS19_vld_out   <=   '1';
					when b"01001111" =>   PHS19_vld_out   <=   '1';
					when others      =>   PHS19_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 20
					when b"01010000" =>   PHS20_vld_out   <=   '1';
					when b"01010010" =>   PHS20_vld_out   <=   '1';
					when b"01010011" =>   PHS20_vld_out   <=   '1';
					when others      =>   PHS20_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 21
					when b"01010100" =>   PHS21_vld_out   <=   '1';
					when b"01010110" =>   PHS21_vld_out   <=   '1';
					when b"01010111" =>   PHS21_vld_out   <=   '1';
					when others      =>   PHS21_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 22
					when b"01011000" =>   PHS22_vld_out   <=   '1';
					when b"01011010" =>   PHS22_vld_out   <=   '1';
					when b"01011011" =>   PHS22_vld_out   <=   '1';
					when others      =>   PHS22_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 23
					when b"01011100" =>   PHS23_vld_out   <=   '1';
					when b"01011110" =>   PHS23_vld_out   <=   '1';
					when b"01011111" =>   PHS23_vld_out   <=   '1';
					when others      =>   PHS23_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 24
					when b"01100000" =>   PHS24_vld_out   <=   '1';
					when b"01100010" =>   PHS24_vld_out   <=   '1';
					when b"01100011" =>   PHS24_vld_out   <=   '1';
					when others      =>   PHS24_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 25
					when b"01100100" =>   PHS25_vld_out   <=   '1';
					when b"01100110" =>   PHS25_vld_out   <=   '1';
					when b"01100111" =>   PHS25_vld_out   <=   '1';
					when others      =>   PHS25_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 26
					when b"01101000" =>   PHS26_vld_out   <=   '1';
					when b"01101010" =>   PHS26_vld_out   <=   '1';
					when b"01101011" =>   PHS26_vld_out   <=   '1';
					when others      =>   PHS26_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 27
					when b"01101100" =>   PHS27_vld_out   <=   '1';
					when b"01101110" =>   PHS27_vld_out   <=   '1';
					when b"01101111" =>   PHS27_vld_out   <=   '1';
					when others      =>   PHS27_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 28
					when b"01110000" =>   PHS28_vld_out   <=   '1';
					when b"01110010" =>   PHS28_vld_out   <=   '1';
					when b"01110011" =>   PHS28_vld_out   <=   '1';
					when others      =>   PHS28_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 29
					when b"01110100" =>   PHS29_vld_out   <=   '1';
					when b"01110110" =>   PHS29_vld_out   <=   '1';
					when b"01110111" =>   PHS29_vld_out   <=   '1';
					when others      =>   PHS29_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 30
					when b"01111000" =>   PHS30_vld_out   <=   '1';
					when b"01111010" =>   PHS30_vld_out   <=   '1';
					when b"01111011" =>   PHS30_vld_out   <=   '1';
					when others      =>   PHS30_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 31
					when b"01111100" =>   PHS31_vld_out   <=   '1';
					when b"01111110" =>   PHS31_vld_out   <=   '1';
					when b"01111111" =>   PHS31_vld_out   <=   '1';
					when others      =>   PHS31_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 32
					when b"10000000" =>   PHS32_vld_out   <=   '1';
					when b"10000010" =>   PHS32_vld_out   <=   '1';
					when b"10000011" =>   PHS32_vld_out   <=   '1';
					when others      =>   PHS32_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 33
					when b"10000100" =>   PHS33_vld_out   <=   '1';
					when b"10000110" =>   PHS33_vld_out   <=   '1';
					when b"10000111" =>   PHS33_vld_out   <=   '1';
					when others      =>   PHS33_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 34
					when b"10001000" =>   PHS34_vld_out   <=   '1';
					when b"10001010" =>   PHS34_vld_out   <=   '1';
					when b"10001011" =>   PHS34_vld_out   <=   '1';
					when others      =>   PHS34_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 35
					when b"10001100" =>   PHS35_vld_out   <=   '1';
					when b"10001110" =>   PHS35_vld_out   <=   '1';
					when b"10001111" =>   PHS35_vld_out   <=   '1';
					when others      =>   PHS35_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 36
					when b"10010000" =>   PHS36_vld_out   <=   '1';
					when b"10010010" =>   PHS36_vld_out   <=   '1';
					when b"10010011" =>   PHS36_vld_out   <=   '1';
					when others      =>   PHS36_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 37
					when b"10010100" =>   PHS37_vld_out   <=   '1';
					when b"10010110" =>   PHS37_vld_out   <=   '1';
					when b"10010111" =>   PHS37_vld_out   <=   '1';
					when others      =>   PHS37_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 38
					when b"10011000" =>   PHS38_vld_out   <=   '1';
					when b"10011010" =>   PHS38_vld_out   <=   '1';
					when b"10011011" =>   PHS38_vld_out   <=   '1';
					when others      =>   PHS38_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 39
					when b"10011100" =>   PHS39_vld_out   <=   '1';
					when b"10011110" =>   PHS39_vld_out   <=   '1';
					when b"10011111" =>   PHS39_vld_out   <=   '1';
					when others      =>   PHS39_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 40
					when b"10100000" =>   PHS40_vld_out   <=   '1';
					when b"10100010" =>   PHS40_vld_out   <=   '1';
					when b"10100011" =>   PHS40_vld_out   <=   '1';
					when others      =>   PHS40_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 41
					when b"10100100" =>   PHS41_vld_out   <=   '1';
					when b"10100110" =>   PHS41_vld_out   <=   '1';
					when b"10100111" =>   PHS41_vld_out   <=   '1';
					when others      =>   PHS41_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 42
					when b"10101000" =>   PHS42_vld_out   <=   '1';
					when b"10101010" =>   PHS42_vld_out   <=   '1';
					when b"10101011" =>   PHS42_vld_out   <=   '1';
					when others      =>   PHS42_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 43
					when b"10101100" =>   PHS43_vld_out   <=   '1';
					when b"10101110" =>   PHS43_vld_out   <=   '1';
					when b"10101111" =>   PHS43_vld_out   <=   '1';
					when others      =>   PHS43_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 44
					when b"10110000" =>   PHS44_vld_out   <=   '1';
					when b"10110010" =>   PHS44_vld_out   <=   '1';
					when b"10110011" =>   PHS44_vld_out   <=   '1';
					when others      =>   PHS44_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 45
					when b"10110100" =>   PHS45_vld_out   <=   '1';
					when b"10110110" =>   PHS45_vld_out   <=   '1';
					when b"10110111" =>   PHS45_vld_out   <=   '1';
					when others      =>   PHS45_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 46
					when b"10111000" =>   PHS46_vld_out   <=   '1';
					when b"10111010" =>   PHS46_vld_out   <=   '1';
					when b"10111011" =>   PHS46_vld_out   <=   '1';
					when others      =>   PHS46_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 47
					when b"10111100" =>   PHS47_vld_out   <=   '1';
					when b"10111110" =>   PHS47_vld_out   <=   '1';
					when b"10111111" =>   PHS47_vld_out   <=   '1';
					when others      =>   PHS47_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 48
					when b"11000000" =>   PHS48_vld_out   <=   '1';
					when b"11000010" =>   PHS48_vld_out   <=   '1';
					when b"11000011" =>   PHS48_vld_out   <=   '1';
					when others      =>   PHS48_vld_out   <=   '0';
				end case;		
				case loc_addr is -- Photo sensor 49
					when b"11000100" =>   PHS49_vld_out   <=   '1';
					when b"11000110" =>   PHS49_vld_out   <=   '1';
					when b"11000111" =>   PHS49_vld_out   <=   '1';
					when others      =>   PHS49_vld_out   <=   '0';
				end case;		
			else
				PHS0_vld_out	<= '0';			
				PHS1_vld_out	<= '0';			
				PHS2_vld_out	<= '0';			
				PHS3_vld_out	<= '0';			
				PHS4_vld_out	<= '0';			
				PHS5_vld_out	<= '0';			
				PHS6_vld_out	<= '0';			
				PHS7_vld_out	<= '0';			
				PHS8_vld_out	<= '0';			
				PHS9_vld_out	<= '0';			
				PHS10_vld_out	<= '0';			
				PHS11_vld_out	<= '0';			
				PHS12_vld_out	<= '0';			
				PHS13_vld_out	<= '0';			
				PHS14_vld_out	<= '0';			
				PHS15_vld_out	<= '0';			
				PHS16_vld_out	<= '0';			
				PHS17_vld_out	<= '0';			
				PHS18_vld_out	<= '0';			
				PHS19_vld_out	<= '0';			
				PHS20_vld_out	<= '0';			
				PHS21_vld_out	<= '0';			
				PHS22_vld_out	<= '0';			
				PHS23_vld_out	<= '0';			
				PHS24_vld_out	<= '0';			
				PHS25_vld_out	<= '0';			
				PHS26_vld_out	<= '0';			
				PHS27_vld_out	<= '0';			
				PHS28_vld_out	<= '0';			
				PHS29_vld_out	<= '0';			
				PHS30_vld_out	<= '0';			
				PHS31_vld_out	<= '0';			
				PHS32_vld_out	<= '0';			
				PHS33_vld_out	<= '0';			
				PHS34_vld_out	<= '0';			
				PHS35_vld_out	<= '0';			
				PHS36_vld_out	<= '0';			
				PHS37_vld_out	<= '0';			
				PHS38_vld_out	<= '0';			
				PHS39_vld_out	<= '0';			
				PHS40_vld_out	<= '0';			
				PHS41_vld_out	<= '0';			
				PHS42_vld_out	<= '0';			
				PHS43_vld_out	<= '0';			
				PHS44_vld_out	<= '0';			
				PHS45_vld_out	<= '0';			
				PHS46_vld_out	<= '0';			
				PHS47_vld_out	<= '0';			
				PHS48_vld_out	<= '0';			
				PHS49_vld_out	<= '0';				
			end if;
			
	    end if;
	  end if;
	end process gen_vld_out;

    PHS_irqs_S2L_0_int( 0)  <=  PHS0_irq1_S2L or PHS_S2L0_Irq_Mask( 0);
    PHS_irqs_S2L_0_int( 1)  <=  PHS1_irq1_S2L or PHS_S2L0_Irq_Mask( 1);
    PHS_irqs_S2L_0_int( 2)  <=  PHS2_irq1_S2L or PHS_S2L0_Irq_Mask( 2);
    PHS_irqs_S2L_0_int( 3)  <=  PHS3_irq1_S2L or PHS_S2L0_Irq_Mask( 3);
    PHS_irqs_S2L_0_int( 4)  <=  PHS4_irq1_S2L or PHS_S2L0_Irq_Mask( 4);
    PHS_irqs_S2L_0_int( 5)  <=  PHS5_irq1_S2L or PHS_S2L0_Irq_Mask( 5);
    PHS_irqs_S2L_0_int( 6)  <=  PHS6_irq1_S2L or PHS_S2L0_Irq_Mask( 6);
    PHS_irqs_S2L_0_int( 7)  <=  PHS7_irq1_S2L or PHS_S2L0_Irq_Mask( 7);
    PHS_irqs_S2L_0_int( 8)  <=  PHS8_irq1_S2L or PHS_S2L0_Irq_Mask( 8);
    PHS_irqs_S2L_0_int( 9)  <=  PHS9_irq1_S2L or PHS_S2L0_Irq_Mask( 9);
    PHS_irqs_S2L_0_int(10)  <= PHS10_irq1_S2L or PHS_S2L0_Irq_Mask(10);
    PHS_irqs_S2L_0_int(11)  <= PHS11_irq1_S2L or PHS_S2L0_Irq_Mask(11);
    PHS_irqs_S2L_0_int(12)  <= PHS12_irq1_S2L or PHS_S2L0_Irq_Mask(12);
    PHS_irqs_S2L_0_int(13)  <= PHS13_irq1_S2L or PHS_S2L0_Irq_Mask(13);
    PHS_irqs_S2L_0_int(14)  <= PHS14_irq1_S2L or PHS_S2L0_Irq_Mask(14);
    PHS_irqs_S2L_0_int(15)  <= PHS15_irq1_S2L or PHS_S2L0_Irq_Mask(15);
    PHS_irqs_S2L_0_int(16)  <= PHS16_irq1_S2L or PHS_S2L0_Irq_Mask(16);
    PHS_irqs_S2L_0_int(17)  <= PHS17_irq1_S2L or PHS_S2L0_Irq_Mask(17);
    PHS_irqs_S2L_0_int(18)  <= PHS18_irq1_S2L or PHS_S2L0_Irq_Mask(18);
    PHS_irqs_S2L_0_int(19)  <= PHS19_irq1_S2L or PHS_S2L0_Irq_Mask(19);
    PHS_irqs_S2L_0_int(20)  <= PHS20_irq1_S2L or PHS_S2L0_Irq_Mask(20);
    PHS_irqs_S2L_0_int(21)  <= PHS21_irq1_S2L or PHS_S2L0_Irq_Mask(21);
    PHS_irqs_S2L_0_int(22)  <= PHS22_irq1_S2L or PHS_S2L0_Irq_Mask(22);
    PHS_irqs_S2L_0_int(23)  <= PHS23_irq1_S2L or PHS_S2L0_Irq_Mask(23);
    PHS_irqs_S2L_0_int(24)  <= PHS24_irq1_S2L or PHS_S2L0_Irq_Mask(24);

    PHS_irqs_S2L_1_int( 0)  <= PHS25_irq1_S2L or PHS_S2L1_Irq_Mask( 0);
    PHS_irqs_S2L_1_int( 1)  <= PHS26_irq1_S2L or PHS_S2L1_Irq_Mask( 1);
    PHS_irqs_S2L_1_int( 2)  <= PHS27_irq1_S2L or PHS_S2L1_Irq_Mask( 2);
    PHS_irqs_S2L_1_int( 3)  <= PHS28_irq1_S2L or PHS_S2L1_Irq_Mask( 3);
    PHS_irqs_S2L_1_int( 4)  <= PHS29_irq1_S2L or PHS_S2L1_Irq_Mask( 4);
    PHS_irqs_S2L_1_int( 5)  <= PHS30_irq1_S2L or PHS_S2L1_Irq_Mask( 5);
    PHS_irqs_S2L_1_int( 6)  <= PHS31_irq1_S2L or PHS_S2L1_Irq_Mask( 6);
    PHS_irqs_S2L_1_int( 7)  <= PHS32_irq1_S2L or PHS_S2L1_Irq_Mask( 7);
    PHS_irqs_S2L_1_int( 8)  <= PHS33_irq1_S2L or PHS_S2L1_Irq_Mask( 8);
    PHS_irqs_S2L_1_int( 9)  <= PHS34_irq1_S2L or PHS_S2L1_Irq_Mask( 9);
    PHS_irqs_S2L_1_int(10)  <= PHS35_irq1_S2L or PHS_S2L1_Irq_Mask(10);
    PHS_irqs_S2L_1_int(11)  <= PHS36_irq1_S2L or PHS_S2L1_Irq_Mask(11);
    PHS_irqs_S2L_1_int(12)  <= PHS37_irq1_S2L or PHS_S2L1_Irq_Mask(12);
    PHS_irqs_S2L_1_int(13)  <= PHS38_irq1_S2L or PHS_S2L1_Irq_Mask(13);
    PHS_irqs_S2L_1_int(14)  <= PHS39_irq1_S2L or PHS_S2L1_Irq_Mask(14);
    PHS_irqs_S2L_1_int(15)  <= PHS40_irq1_S2L or PHS_S2L1_Irq_Mask(15);
    PHS_irqs_S2L_1_int(16)  <= PHS41_irq1_S2L or PHS_S2L1_Irq_Mask(16);
    PHS_irqs_S2L_1_int(17)  <= PHS42_irq1_S2L or PHS_S2L1_Irq_Mask(17);
    PHS_irqs_S2L_1_int(18)  <= PHS43_irq1_S2L or PHS_S2L1_Irq_Mask(18);
    PHS_irqs_S2L_1_int(19)  <= PHS44_irq1_S2L or PHS_S2L1_Irq_Mask(19);
    PHS_irqs_S2L_1_int(20)  <= PHS45_irq1_S2L or PHS_S2L1_Irq_Mask(20);
    PHS_irqs_S2L_1_int(21)  <= PHS46_irq1_S2L or PHS_S2L1_Irq_Mask(21);
    PHS_irqs_S2L_1_int(22)  <= PHS47_irq1_S2L or PHS_S2L1_Irq_Mask(22);
    PHS_irqs_S2L_1_int(23)  <= PHS48_irq1_S2L or PHS_S2L1_Irq_Mask(23);
    PHS_irqs_S2L_1_int(24)  <= PHS49_irq1_S2L or PHS_S2L1_Irq_Mask(24);

    PHS_irqs_L2S_0_int( 0)  <=  PHS0_irq0_L2S or PHS_L2S0_Irq_Mask( 0);
    PHS_irqs_L2S_0_int( 1)  <=  PHS1_irq0_L2S or PHS_L2S0_Irq_Mask( 1);
    PHS_irqs_L2S_0_int( 2)  <=  PHS2_irq0_L2S or PHS_L2S0_Irq_Mask( 2);
    PHS_irqs_L2S_0_int( 3)  <=  PHS3_irq0_L2S or PHS_L2S0_Irq_Mask( 3);
    PHS_irqs_L2S_0_int( 4)  <=  PHS4_irq0_L2S or PHS_L2S0_Irq_Mask( 4);
    PHS_irqs_L2S_0_int( 5)  <=  PHS5_irq0_L2S or PHS_L2S0_Irq_Mask( 5);
    PHS_irqs_L2S_0_int( 6)  <=  PHS6_irq0_L2S or PHS_L2S0_Irq_Mask( 6);
    PHS_irqs_L2S_0_int( 7)  <=  PHS7_irq0_L2S or PHS_L2S0_Irq_Mask( 7);
    PHS_irqs_L2S_0_int( 8)  <=  PHS8_irq0_L2S or PHS_L2S0_Irq_Mask( 8);
    PHS_irqs_L2S_0_int( 9)  <=  PHS9_irq0_L2S or PHS_L2S0_Irq_Mask( 9);
    PHS_irqs_L2S_0_int(10)  <= PHS10_irq0_L2S or PHS_L2S0_Irq_Mask(10);
    PHS_irqs_L2S_0_int(11)  <= PHS11_irq0_L2S or PHS_L2S0_Irq_Mask(11);
    PHS_irqs_L2S_0_int(12)  <= PHS12_irq0_L2S or PHS_L2S0_Irq_Mask(12);
    PHS_irqs_L2S_0_int(13)  <= PHS13_irq0_L2S or PHS_L2S0_Irq_Mask(13);
    PHS_irqs_L2S_0_int(14)  <= PHS14_irq0_L2S or PHS_L2S0_Irq_Mask(14);
    PHS_irqs_L2S_0_int(15)  <= PHS15_irq0_L2S or PHS_L2S0_Irq_Mask(15);
    PHS_irqs_L2S_0_int(16)  <= PHS16_irq0_L2S or PHS_L2S0_Irq_Mask(16);
    PHS_irqs_L2S_0_int(17)  <= PHS17_irq0_L2S or PHS_L2S0_Irq_Mask(17);
    PHS_irqs_L2S_0_int(18)  <= PHS18_irq0_L2S or PHS_L2S0_Irq_Mask(18);
    PHS_irqs_L2S_0_int(19)  <= PHS19_irq0_L2S or PHS_L2S0_Irq_Mask(19);
    PHS_irqs_L2S_0_int(20)  <= PHS20_irq0_L2S or PHS_L2S0_Irq_Mask(20);
    PHS_irqs_L2S_0_int(21)  <= PHS21_irq0_L2S or PHS_L2S0_Irq_Mask(21);
    PHS_irqs_L2S_0_int(22)  <= PHS22_irq0_L2S or PHS_L2S0_Irq_Mask(22);
    PHS_irqs_L2S_0_int(23)  <= PHS23_irq0_L2S or PHS_L2S0_Irq_Mask(23);
    PHS_irqs_L2S_0_int(24)  <= PHS24_irq0_L2S or PHS_L2S0_Irq_Mask(24);

    PHS_irqs_L2S_1_int( 0)  <= PHS25_irq0_L2S or PHS_L2S0_Irq_Mask( 0);
    PHS_irqs_L2S_1_int( 1)  <= PHS26_irq0_L2S or PHS_L2S0_Irq_Mask( 1);
    PHS_irqs_L2S_1_int( 2)  <= PHS27_irq0_L2S or PHS_L2S0_Irq_Mask( 2);
    PHS_irqs_L2S_1_int( 3)  <= PHS28_irq0_L2S or PHS_L2S0_Irq_Mask( 3);
    PHS_irqs_L2S_1_int( 4)  <= PHS29_irq0_L2S or PHS_L2S0_Irq_Mask( 4);
    PHS_irqs_L2S_1_int( 5)  <= PHS30_irq0_L2S or PHS_L2S0_Irq_Mask( 5);
    PHS_irqs_L2S_1_int( 6)  <= PHS31_irq0_L2S or PHS_L2S0_Irq_Mask( 6);
    PHS_irqs_L2S_1_int( 7)  <= PHS32_irq0_L2S or PHS_L2S0_Irq_Mask( 7);
    PHS_irqs_L2S_1_int( 8)  <= PHS33_irq0_L2S or PHS_L2S0_Irq_Mask( 8);
    PHS_irqs_L2S_1_int( 9)  <= PHS34_irq0_L2S or PHS_L2S0_Irq_Mask( 9);
    PHS_irqs_L2S_1_int(10)  <= PHS35_irq0_L2S or PHS_L2S0_Irq_Mask(10);
    PHS_irqs_L2S_1_int(11)  <= PHS36_irq0_L2S or PHS_L2S0_Irq_Mask(11);
    PHS_irqs_L2S_1_int(12)  <= PHS37_irq0_L2S or PHS_L2S0_Irq_Mask(12);
    PHS_irqs_L2S_1_int(13)  <= PHS38_irq0_L2S or PHS_L2S0_Irq_Mask(13);
    PHS_irqs_L2S_1_int(14)  <= PHS39_irq0_L2S or PHS_L2S0_Irq_Mask(14);
    PHS_irqs_L2S_1_int(15)  <= PHS40_irq0_L2S or PHS_L2S0_Irq_Mask(15);
    PHS_irqs_L2S_1_int(16)  <= PHS41_irq0_L2S or PHS_L2S0_Irq_Mask(16);
    PHS_irqs_L2S_1_int(17)  <= PHS42_irq0_L2S or PHS_L2S0_Irq_Mask(17);
    PHS_irqs_L2S_1_int(18)  <= PHS43_irq0_L2S or PHS_L2S0_Irq_Mask(18);
    PHS_irqs_L2S_1_int(19)  <= PHS44_irq0_L2S or PHS_L2S0_Irq_Mask(19);
    PHS_irqs_L2S_1_int(20)  <= PHS45_irq0_L2S or PHS_L2S0_Irq_Mask(20);
    PHS_irqs_L2S_1_int(21)  <= PHS46_irq0_L2S or PHS_L2S0_Irq_Mask(21);
    PHS_irqs_L2S_1_int(22)  <= PHS47_irq0_L2S or PHS_L2S0_Irq_Mask(22);
    PHS_irqs_L2S_1_int(23)  <= PHS48_irq0_L2S or PHS_L2S0_Irq_Mask(23);
    PHS_irqs_L2S_1_int(24)  <= PHS49_irq0_L2S or PHS_L2S0_Irq_Mask(24);


	sample_irq: process( S_AXI_ACLK ) is
	begin	
		if (rising_edge (S_AXI_ACLK)) then
	       if ( S_AXI_ARESETN = '0' ) then
	           PHS_irqs_S2L_0 <= (others => '0');
	           PHS_irq_S2L_0  <= '0';

	           PHS_irqs_S2L_1 <= (others => '0');
	           PHS_irq_S2L_1  <= '0';
	           
	           PHS_irqs_L2S_0 <= (others => '0');
	           PHS_irq_L2S_0  <= '0';

	           PHS_irqs_L2S_1 <= (others => '0');
	           PHS_irq_L2S_1  <= '0';
	       else	           	                        
                PHS_irqs_S2L_0 <= PHS_irqs_S2L_0_int;
                PHS_irq_S2L_0  <= PHS_irqs_S2L_0_int( 0) or
                                  PHS_irqs_S2L_0_int( 1) or   
                                  PHS_irqs_S2L_0_int( 2) or   
                                  PHS_irqs_S2L_0_int( 3) or   
                                  PHS_irqs_S2L_0_int( 4) or   
                                  PHS_irqs_S2L_0_int( 5) or   
                                  PHS_irqs_S2L_0_int( 6) or   
                                  PHS_irqs_S2L_0_int( 7) or   
                                  PHS_irqs_S2L_0_int( 8) or   
                                  PHS_irqs_S2L_0_int( 9) or   
                                  PHS_irqs_S2L_0_int(10) or   
                                  PHS_irqs_S2L_0_int(11) or   
                                  PHS_irqs_S2L_0_int(12) or   
                                  PHS_irqs_S2L_0_int(13) or   
                                  PHS_irqs_S2L_0_int(14) or   
                                  PHS_irqs_S2L_0_int(15) or   
                                  PHS_irqs_S2L_0_int(16) or   
                                  PHS_irqs_S2L_0_int(17) or   
                                  PHS_irqs_S2L_0_int(18) or   
                                  PHS_irqs_S2L_0_int(19) or   
                                  PHS_irqs_S2L_0_int(20) or   
                                  PHS_irqs_S2L_0_int(21) or   
                                  PHS_irqs_S2L_0_int(22) or   
                                  PHS_irqs_S2L_0_int(23) or   
                                  PHS_irqs_S2L_0_int(24);
                                     
                PHS_irqs_S2L_1 <= PHS_irqs_S2L_1_int;
                PHS_irq_S2L_1  <= PHS_irqs_S2L_1_int( 0) or
                                  PHS_irqs_S2L_1_int( 1) or   
                                  PHS_irqs_S2L_1_int( 2) or   
                                  PHS_irqs_S2L_1_int( 3) or   
                                  PHS_irqs_S2L_1_int( 4) or   
                                  PHS_irqs_S2L_1_int( 5) or   
                                  PHS_irqs_S2L_1_int( 6) or   
                                  PHS_irqs_S2L_1_int( 7) or   
                                  PHS_irqs_S2L_1_int( 8) or   
                                  PHS_irqs_S2L_1_int( 9) or   
                                  PHS_irqs_S2L_1_int(10) or   
                                  PHS_irqs_S2L_1_int(11) or   
                                  PHS_irqs_S2L_1_int(12) or   
                                  PHS_irqs_S2L_1_int(13) or   
                                  PHS_irqs_S2L_1_int(14) or   
                                  PHS_irqs_S2L_1_int(15) or   
                                  PHS_irqs_S2L_1_int(16) or   
                                  PHS_irqs_S2L_1_int(17) or   
                                  PHS_irqs_S2L_1_int(18) or   
                                  PHS_irqs_S2L_1_int(19) or   
                                  PHS_irqs_S2L_1_int(20) or   
                                  PHS_irqs_S2L_1_int(21) or   
                                  PHS_irqs_S2L_1_int(22) or   
                                  PHS_irqs_S2L_1_int(23) or   
                                  PHS_irqs_S2L_1_int(24);
                                    
                PHS_irqs_L2S_0 <= PHS_irqs_L2S_0_int;
                PHS_irq_L2S_0  <= PHS_irqs_L2S_0_int( 0) or
                                  PHS_irqs_L2S_0_int( 1) or   
                                  PHS_irqs_L2S_0_int( 2) or   
                                  PHS_irqs_L2S_0_int( 3) or   
                                  PHS_irqs_L2S_0_int( 4) or   
                                  PHS_irqs_L2S_0_int( 5) or   
                                  PHS_irqs_L2S_0_int( 6) or   
                                  PHS_irqs_L2S_0_int( 7) or   
                                  PHS_irqs_L2S_0_int( 8) or   
                                  PHS_irqs_L2S_0_int( 9) or   
                                  PHS_irqs_L2S_0_int(10) or   
                                  PHS_irqs_L2S_0_int(11) or   
                                  PHS_irqs_L2S_0_int(12) or   
                                  PHS_irqs_L2S_0_int(13) or   
                                  PHS_irqs_L2S_0_int(14) or   
                                  PHS_irqs_L2S_0_int(15) or   
                                  PHS_irqs_L2S_0_int(16) or   
                                  PHS_irqs_L2S_0_int(17) or   
                                  PHS_irqs_L2S_0_int(18) or   
                                  PHS_irqs_L2S_0_int(19) or   
                                  PHS_irqs_L2S_0_int(20) or   
                                  PHS_irqs_L2S_0_int(21) or   
                                  PHS_irqs_L2S_0_int(22) or   
                                  PHS_irqs_L2S_0_int(23) or   
                                  PHS_irqs_L2S_0_int(24);
                                    
                PHS_irqs_L2S_1 <= PHS_irqs_L2S_1_int;
                PHS_irq_L2S_1  <= PHS_irqs_L2S_1_int( 0) or
                                  PHS_irqs_L2S_1_int( 1) or   
                                  PHS_irqs_L2S_1_int( 2) or   
                                  PHS_irqs_L2S_1_int( 3) or   
                                  PHS_irqs_L2S_1_int( 4) or   
                                  PHS_irqs_L2S_1_int( 5) or   
                                  PHS_irqs_L2S_1_int( 6) or   
                                  PHS_irqs_L2S_1_int( 7) or   
                                  PHS_irqs_L2S_1_int( 8) or   
                                  PHS_irqs_L2S_1_int( 9) or   
                                  PHS_irqs_L2S_1_int(10) or   
                                  PHS_irqs_L2S_1_int(11) or   
                                  PHS_irqs_L2S_1_int(12) or   
                                  PHS_irqs_L2S_1_int(13) or   
                                  PHS_irqs_L2S_1_int(14) or   
                                  PHS_irqs_L2S_1_int(15) or   
                                  PHS_irqs_L2S_1_int(16) or   
                                  PHS_irqs_L2S_1_int(17) or   
                                  PHS_irqs_L2S_1_int(18) or   
                                  PHS_irqs_L2S_1_int(19) or   
                                  PHS_irqs_L2S_1_int(20) or   
                                  PHS_irqs_L2S_1_int(21) or   
                                  PHS_irqs_L2S_1_int(22) or   
                                  PHS_irqs_L2S_1_int(23) or   
                                  PHS_irqs_L2S_1_int(24);	
	    end if;
	  end if;
	end process sample_irq;

	-- User logic ends

end arch_imp;
