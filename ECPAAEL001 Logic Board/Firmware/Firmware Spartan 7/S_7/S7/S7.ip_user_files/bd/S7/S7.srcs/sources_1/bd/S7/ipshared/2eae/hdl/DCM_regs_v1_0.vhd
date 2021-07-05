library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DCM_regs_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 7
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line

		DCM0_pwm_val	: out	std_logic_vector(7 downto 0);
		DCM0_pwm_frq	: out	std_logic_vector(6 downto 0);
		DCM0_dir		: out	std_logic;
		DCM0_run		: out	std_logic;
		DCM0_brake		: out	std_logic;
		DCM0_status		: in	std_logic_vector(1 downto 0);
		DCM0_vld_in		: in	std_logic;
		DCM0_vld_out	: out	std_logic;

		DCM1_pwm_val	: out	std_logic_vector(7 downto 0);
		DCM1_pwm_frq	: out	std_logic_vector(6 downto 0);
		DCM1_dir		: out	std_logic;
		DCM1_run		: out	std_logic;
		DCM1_brake		: out	std_logic;
		DCM1_status		: in	std_logic_vector(1 downto 0);
		DCM1_vld_in		: in	std_logic;
		DCM1_vld_out	: out	std_logic;

		DCM2_pwm_val	: out	std_logic_vector(7 downto 0);
		DCM2_pwm_frq	: out	std_logic_vector(6 downto 0);
		DCM2_dir		: out	std_logic;
		DCM2_run		: out	std_logic;
		DCM2_brake		: out	std_logic;
		DCM2_status		: in	std_logic_vector(1 downto 0);
		DCM2_vld_in		: in	std_logic;
		DCM2_vld_out	: out	std_logic;

		DCM3_pwm_val	: out	std_logic_vector(7 downto 0);
		DCM3_pwm_frq	: out	std_logic_vector(6 downto 0);
		DCM3_dir		: out	std_logic;
		DCM3_run		: out	std_logic;
		DCM3_brake		: out	std_logic;
		DCM3_status		: in	std_logic_vector(1 downto 0);
		DCM3_vld_in		: in	std_logic;
		DCM3_vld_out	: out	std_logic;

		DCM4_pwm_val	: out	std_logic_vector(7 downto 0);
		DCM4_pwm_frq	: out	std_logic_vector(6 downto 0);
		DCM4_dir		: out	std_logic;
		DCM4_run		: out	std_logic;
		DCM4_brake		: out	std_logic;
		DCM4_status		: in	std_logic_vector(1 downto 0);
		DCM4_vld_in		: in	std_logic;
		DCM4_vld_out	: out	std_logic;

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
end DCM_regs_v1_0;

architecture arch_imp of DCM_regs_v1_0 is

	-- component declaration
	component DCM_regs_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 7
		);
		port (
		
		DCM0_pwm_val	: out	std_logic_vector(7 downto 0);
		DCM0_pwm_frq	: out	std_logic_vector(6 downto 0);
		DCM0_dir		: out	std_logic;
		DCM0_run		: out	std_logic;
		DCM0_brake		: out	std_logic;
		DCM0_status		: in	std_logic_vector(1 downto 0);
		DCM0_vld_in		: in	std_logic;
		DCM0_vld_out	: out	std_logic;

		DCM1_pwm_val	: out	std_logic_vector(7 downto 0);
		DCM1_pwm_frq	: out	std_logic_vector(6 downto 0);
		DCM1_dir		: out	std_logic;
		DCM1_run		: out	std_logic;
		DCM1_brake		: out	std_logic;
		DCM1_status		: in	std_logic_vector(1 downto 0);
		DCM1_vld_in		: in	std_logic;
		DCM1_vld_out	: out	std_logic;

		DCM2_pwm_val	: out	std_logic_vector(7 downto 0);
		DCM2_pwm_frq	: out	std_logic_vector(6 downto 0);
		DCM2_dir		: out	std_logic;
		DCM2_run		: out	std_logic;
		DCM2_brake		: out	std_logic;
		DCM2_status		: in	std_logic_vector(1 downto 0);
		DCM2_vld_in		: in	std_logic;
		DCM2_vld_out	: out	std_logic;

		DCM3_pwm_val	: out	std_logic_vector(7 downto 0);
		DCM3_pwm_frq	: out	std_logic_vector(6 downto 0);
		DCM3_dir		: out	std_logic;
		DCM3_run		: out	std_logic;
		DCM3_brake		: out	std_logic;
		DCM3_status		: in	std_logic_vector(1 downto 0);
		DCM3_vld_in		: in	std_logic;
		DCM3_vld_out	: out	std_logic;

		DCM4_pwm_val	: out	std_logic_vector(7 downto 0);
		DCM4_pwm_frq	: out	std_logic_vector(6 downto 0);
		DCM4_dir		: out	std_logic;
		DCM4_run		: out	std_logic;
		DCM4_brake		: out	std_logic;
		DCM4_status		: in	std_logic_vector(1 downto 0);
		DCM4_vld_in		: in	std_logic;
		DCM4_vld_out	: out	std_logic;		
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
	end component DCM_regs_v1_0_S00_AXI;

begin

-- Instantiation of Axi Bus Interface S00_AXI
DCM_regs_v1_0_S00_AXI_inst : DCM_regs_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (

		DCM0_pwm_val	=>	DCM0_pwm_val,
		DCM0_pwm_frq	=>	DCM0_pwm_frq,
		DCM0_dir		=>	DCM0_dir	,
		DCM0_run		=>	DCM0_run	,
		DCM0_brake		=>	DCM0_brake	,
		DCM0_status		=>	DCM0_status	,
		DCM0_vld_in		=>	DCM0_vld_in	,
		DCM0_vld_out	=>	DCM0_vld_out,

		DCM1_pwm_val	=>	DCM1_pwm_val,
		DCM1_pwm_frq	=>	DCM1_pwm_frq,
		DCM1_dir		=>	DCM1_dir	,
		DCM1_run		=>	DCM1_run	,
		DCM1_brake		=>	DCM1_brake	,
		DCM1_status		=>	DCM1_status	,
		DCM1_vld_in		=>	DCM1_vld_in	,
		DCM1_vld_out	=>	DCM1_vld_out,

		DCM2_pwm_val	=>	DCM2_pwm_val,
		DCM2_pwm_frq	=>	DCM2_pwm_frq,
		DCM2_dir		=>	DCM2_dir	,
		DCM2_run		=>	DCM2_run	,
		DCM2_brake		=>	DCM2_brake	,
		DCM2_status		=>	DCM2_status	,
		DCM2_vld_in		=>	DCM2_vld_in	,
		DCM2_vld_out	=>	DCM2_vld_out,

		DCM3_pwm_val	=>	DCM3_pwm_val,
		DCM3_pwm_frq	=>	DCM3_pwm_frq,
		DCM3_dir		=>	DCM3_dir	,
		DCM3_run		=>	DCM3_run	,
		DCM3_brake		=>	DCM3_brake	,
		DCM3_status		=>	DCM3_status	,
		DCM3_vld_in		=>	DCM3_vld_in	,
		DCM3_vld_out	=>	DCM3_vld_out,

		DCM4_pwm_val	=>	DCM4_pwm_val,
		DCM4_pwm_frq	=>	DCM4_pwm_frq,
		DCM4_dir		=>	DCM4_dir	,
		DCM4_run		=>	DCM4_run	,
		DCM4_brake		=>	DCM4_brake	,
		DCM4_status		=>	DCM4_status	,
		DCM4_vld_in		=>	DCM4_vld_in	,
		DCM4_vld_out	=>	DCM4_vld_out,
	
		--
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
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
