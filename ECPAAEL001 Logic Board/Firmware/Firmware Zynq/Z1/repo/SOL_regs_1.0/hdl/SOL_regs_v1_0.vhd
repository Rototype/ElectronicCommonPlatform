library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SOL_regs_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 8
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line

		SOL0_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL0_time_full	: out	std_logic_vector(10 downto 0);
		SOL0_run		: out	std_logic;
		SOL0_status		: in	std_logic_vector(1 downto 0);
		SOL0_vld_in		: in	std_logic;
		SOL0_vld_out	: out	std_logic;

		SOL1_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL1_time_full	: out	std_logic_vector(10 downto 0);
		SOL1_run		: out	std_logic;
		SOL1_status		: in	std_logic_vector(1 downto 0);
		SOL1_vld_in		: in	std_logic;
		SOL1_vld_out	: out	std_logic;

		SOL2_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL2_time_full	: out	std_logic_vector(10 downto 0);
		SOL2_run		: out	std_logic;
		SOL2_status		: in	std_logic_vector(1 downto 0);
		SOL2_vld_in		: in	std_logic;
		SOL2_vld_out	: out	std_logic;

		SOL3_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL3_time_full	: out	std_logic_vector(10 downto 0);
		SOL3_run		: out	std_logic;
		SOL3_status		: in	std_logic_vector(1 downto 0);
		SOL3_vld_in		: in	std_logic;
		SOL3_vld_out	: out	std_logic;

		SOL4_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL4_time_full	: out	std_logic_vector(10 downto 0);
		SOL4_run		: out	std_logic;
		SOL4_status		: in	std_logic_vector(1 downto 0);
		SOL4_vld_in		: in	std_logic;
		SOL4_vld_out	: out	std_logic;

		SOL5_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL5_time_full	: out	std_logic_vector(10 downto 0);
		SOL5_run		: out	std_logic;
		SOL5_status		: in	std_logic_vector(1 downto 0);
		SOL5_vld_in		: in	std_logic;
		SOL5_vld_out	: out	std_logic;

		SOL6_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL6_time_full	: out	std_logic_vector(10 downto 0);
		SOL6_run		: out	std_logic;
		SOL6_status		: in	std_logic_vector(1 downto 0);
		SOL6_vld_in		: in	std_logic;
		SOL6_vld_out	: out	std_logic;

		SOL7_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL7_time_full	: out	std_logic_vector(10 downto 0);
		SOL7_run		: out	std_logic;
		SOL7_status		: in	std_logic_vector(1 downto 0);
		SOL7_vld_in		: in	std_logic;
		SOL7_vld_out	: out	std_logic;

		SOL8_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL8_time_full	: out	std_logic_vector(10 downto 0);
		SOL8_run		: out	std_logic;
		SOL8_status		: in	std_logic_vector(1 downto 0);
		SOL8_vld_in		: in	std_logic;
		SOL8_vld_out	: out	std_logic;

		SOL9_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL9_time_full	: out	std_logic_vector(10 downto 0);
		SOL9_run		: out	std_logic;
		SOL9_status		: in	std_logic_vector(1 downto 0);
		SOL9_vld_in		: in	std_logic;
		SOL9_vld_out	: out	std_logic;

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
end SOL_regs_v1_0;

architecture arch_imp of SOL_regs_v1_0 is

	-- component declaration
	component SOL_regs_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 8
		);
		port (
		
		SOL0_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL0_time_full	: out	std_logic_vector(10 downto 0);
		SOL0_run		: out	std_logic;
		SOL0_status		: in	std_logic_vector(1 downto 0);
		SOL0_vld_in		: in	std_logic;
		SOL0_vld_out	: out	std_logic;

		SOL1_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL1_time_full	: out	std_logic_vector(10 downto 0);
		SOL1_run		: out	std_logic;
		SOL1_status		: in	std_logic_vector(1 downto 0);
		SOL1_vld_in		: in	std_logic;
		SOL1_vld_out	: out	std_logic;

		SOL2_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL2_time_full	: out	std_logic_vector(10 downto 0);
		SOL2_run		: out	std_logic;
		SOL2_status		: in	std_logic_vector(1 downto 0);
		SOL2_vld_in		: in	std_logic;
		SOL2_vld_out	: out	std_logic;

		SOL3_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL3_time_full	: out	std_logic_vector(10 downto 0);
		SOL3_run		: out	std_logic;
		SOL3_status		: in	std_logic_vector(1 downto 0);
		SOL3_vld_in		: in	std_logic;
		SOL3_vld_out	: out	std_logic;

		SOL4_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL4_time_full	: out	std_logic_vector(10 downto 0);
		SOL4_run		: out	std_logic;
		SOL4_status		: in	std_logic_vector(1 downto 0);
		SOL4_vld_in		: in	std_logic;
		SOL4_vld_out	: out	std_logic;

		SOL5_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL5_time_full	: out	std_logic_vector(10 downto 0);
		SOL5_run		: out	std_logic;
		SOL5_status		: in	std_logic_vector(1 downto 0);
		SOL5_vld_in		: in	std_logic;
		SOL5_vld_out	: out	std_logic;

		SOL6_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL6_time_full	: out	std_logic_vector(10 downto 0);
		SOL6_run		: out	std_logic;
		SOL6_status		: in	std_logic_vector(1 downto 0);
		SOL6_vld_in		: in	std_logic;
		SOL6_vld_out	: out	std_logic;

		SOL7_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL7_time_full	: out	std_logic_vector(10 downto 0);
		SOL7_run		: out	std_logic;
		SOL7_status		: in	std_logic_vector(1 downto 0);
		SOL7_vld_in		: in	std_logic;
		SOL7_vld_out	: out	std_logic;

		SOL8_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL8_time_full	: out	std_logic_vector(10 downto 0);
		SOL8_run		: out	std_logic;
		SOL8_status		: in	std_logic_vector(1 downto 0);
		SOL8_vld_in		: in	std_logic;
		SOL8_vld_out	: out	std_logic;

		SOL9_pwm_val	: out	std_logic_vector(7 downto 0);
		SOL9_time_full	: out	std_logic_vector(10 downto 0);
		SOL9_run		: out	std_logic;
		SOL9_status		: in	std_logic_vector(1 downto 0);
		SOL9_vld_in		: in	std_logic;
		SOL9_vld_out	: out	std_logic;
		
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
	end component SOL_regs_v1_0_S00_AXI;

begin

-- Instantiation of Axi Bus Interface S00_AXI
SOL_regs_v1_0_S00_AXI_inst : SOL_regs_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
	
		SOL0_pwm_val	=>	  SOL0_pwm_val	,
		SOL0_time_full	=>	  SOL0_time_full,	
		SOL0_run		=>	  SOL0_run		,
		SOL0_status		=>	  SOL0_status	,	
		SOL0_vld_in		=>	  SOL0_vld_in	,	
		SOL0_vld_out	=>	  SOL0_vld_out	,
  
		SOL1_pwm_val	=>	  SOL1_pwm_val	,
		SOL1_time_full	=>	  SOL1_time_full,	
		SOL1_run		=>	  SOL1_run		,
		SOL1_status		=>	  SOL1_status	,	
		SOL1_vld_in		=>	  SOL1_vld_in	,	
		SOL1_vld_out	=>	  SOL1_vld_out	,
  
		SOL2_pwm_val	=>	  SOL2_pwm_val	,
		SOL2_time_full	=>	  SOL2_time_full,	
		SOL2_run		=>	  SOL2_run		,
		SOL2_status		=>	  SOL2_status	,	
		SOL2_vld_in		=>	  SOL2_vld_in	,	
		SOL2_vld_out	=>	  SOL2_vld_out	,
  
		SOL3_pwm_val	=>	  SOL3_pwm_val	,
		SOL3_time_full	=>	  SOL3_time_full,	
		SOL3_run		=>	  SOL3_run		,
		SOL3_status		=>	  SOL3_status	,	
		SOL3_vld_in		=>	  SOL3_vld_in	,	
		SOL3_vld_out	=>	  SOL3_vld_out	,
  
		SOL4_pwm_val	=>	  SOL4_pwm_val	,
		SOL4_time_full	=>	  SOL4_time_full,	
		SOL4_run		=>	  SOL4_run		,
		SOL4_status		=>	  SOL4_status	,	
		SOL4_vld_in		=>	  SOL4_vld_in	,	
		SOL4_vld_out	=>	  SOL4_vld_out	,
 
		SOL5_pwm_val	=>	  SOL5_pwm_val	,
		SOL5_time_full	=>	  SOL5_time_full,	
		SOL5_run		=>	  SOL5_run		,
		SOL5_status		=>	  SOL5_status	,	
		SOL5_vld_in		=>	  SOL5_vld_in	,	
		SOL5_vld_out	=>	  SOL5_vld_out	,
  
		SOL6_pwm_val	=>	  SOL6_pwm_val	,
		SOL6_time_full	=>	  SOL6_time_full,	
		SOL6_run		=>	  SOL6_run		,
		SOL6_status		=>	  SOL6_status	,	
		SOL6_vld_in		=>	  SOL6_vld_in	,	
		SOL6_vld_out	=>	  SOL6_vld_out	,

		SOL7_pwm_val	=>	  SOL7_pwm_val	,
		SOL7_time_full	=>	  SOL7_time_full,	
		SOL7_run		=>	  SOL7_run		,
		SOL7_status		=>	  SOL7_status	,	
		SOL7_vld_in		=>	  SOL7_vld_in	,	
		SOL7_vld_out	=>	  SOL7_vld_out	,

		SOL8_pwm_val	=>	  SOL8_pwm_val	,
		SOL8_time_full	=>	  SOL8_time_full,	
		SOL8_run		=>	  SOL8_run		,
		SOL8_status		=>	  SOL8_status	,	
		SOL8_vld_in		=>	  SOL8_vld_in	,	
		SOL8_vld_out	=>	  SOL8_vld_out	,
 
		SOL9_pwm_val	=>	  SOL9_pwm_val	,
		SOL9_time_full	=>	  SOL9_time_full,	
		SOL9_run		=>	  SOL9_run		,
		SOL9_status		=>	  SOL9_status	,	
		SOL9_vld_in		=>	  SOL9_vld_in	,	
		SOL9_vld_out	=>	  SOL9_vld_out	,
	
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
