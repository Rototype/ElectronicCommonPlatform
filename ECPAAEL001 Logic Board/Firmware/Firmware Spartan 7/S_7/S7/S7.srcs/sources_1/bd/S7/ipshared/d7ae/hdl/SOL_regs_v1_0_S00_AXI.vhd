library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SOL_regs_v1_0_S00_AXI is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH	: integer	:= 8
	);
	port (
		-- Users to add ports here

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
end SOL_regs_v1_0_S00_AXI;

architecture arch_imp of SOL_regs_v1_0_S00_AXI is

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
	constant OPT_MEM_ADDR_BITS : integer := 5;
	------------------------------------------------
	---- Signals for user logic register space example
	--------------------------------------------------
	---- Number of Slave Registers 40
    signal slv_reg0    : std_logic_vector(7 downto 0);           -- cfg SOL0_pwm_nal
    signal slv_reg1    : std_logic_vector(10 downto 0);          -- cfg SOL0_time_full
    signal slv_reg2    : std_logic_vector(0 downto 0);           -- cmd SOL0_run
    signal slv_reg3    : std_logic_vector(1 downto 0);           -- sta SOL0_status

    signal slv_reg4    : std_logic_vector(7 downto 0);           -- cfg SOL1_pwm_nal
    signal slv_reg5    : std_logic_vector(10 downto 0);          -- cfg SOL1_time_full
    signal slv_reg6    : std_logic_vector(0 downto 0);           -- cmd SOL1_run
    signal slv_reg7    : std_logic_vector(1 downto 0);           -- sta SOL1_status

    signal slv_reg8    : std_logic_vector(7 downto 0);           -- cfg SOL2_pwm_nal
    signal slv_reg9    : std_logic_vector(10 downto 0);          -- cfg SOL2_time_full
    signal slv_reg10   : std_logic_vector(0 downto 0);           -- cmd SOL2_run
    signal slv_reg11   : std_logic_vector(1 downto 0);           -- sta SOL2_status

    signal slv_reg12   : std_logic_vector(7 downto 0);           -- cfg SOL3_pwm_nal
    signal slv_reg13   : std_logic_vector(10 downto 0);          -- cfg SOL3_time_full
    signal slv_reg14   : std_logic_vector(0 downto 0);           -- cmd SOL3_run
    signal slv_reg15   : std_logic_vector(1 downto 0);           -- sta SOL3_status

    signal slv_reg16   : std_logic_vector(7 downto 0);           -- cfg SOL4_pwm_nal
    signal slv_reg17   : std_logic_vector(10 downto 0);          -- cfg SOL4_time_full
    signal slv_reg18   : std_logic_vector(0 downto 0);           -- cmd SOL4_run
    signal slv_reg19   : std_logic_vector(1 downto 0);           -- sta SOL4_status

    signal slv_reg20   : std_logic_vector(7 downto 0);           -- cfg SOL5_pwm_nal
    signal slv_reg21   : std_logic_vector(10 downto 0);          -- cfg SOL5_time_full
    signal slv_reg22   : std_logic_vector(0 downto 0);           -- cmd SOL5_run
    signal slv_reg23   : std_logic_vector(1 downto 0);           -- sta SOL5_status

    signal slv_reg24   : std_logic_vector(7 downto 0);           -- cfg SOL6_pwm_nal
    signal slv_reg25   : std_logic_vector(10 downto 0);          -- cfg SOL6_time_full
    signal slv_reg26   : std_logic_vector(0 downto 0);           -- cmd SOL6_run
    signal slv_reg27   : std_logic_vector(1 downto 0);           -- sta SOL6_status

    signal slv_reg28   : std_logic_vector(7 downto 0);           -- cfg SOL7_pwm_nal
    signal slv_reg29   : std_logic_vector(10 downto 0);          -- cfg SOL7_time_full
    signal slv_reg30   : std_logic_vector(0 downto 0);           -- cmd SOL7_run
    signal slv_reg31   : std_logic_vector(1 downto 0);           -- sta SOL7_status

    signal slv_reg32   : std_logic_vector(7 downto 0);           -- cfg SOL8_pwm_nal
    signal slv_reg33   : std_logic_vector(10 downto 0);          -- cfg SOL8_time_full
    signal slv_reg34   : std_logic_vector(0 downto 0);           -- cmd SOL8_run
    signal slv_reg35   : std_logic_vector(1 downto 0);           -- sta SOL8_status

    signal slv_reg36   : std_logic_vector(7 downto 0);           -- cfg SOL9_pwm_nal
    signal slv_reg37   : std_logic_vector(10 downto 0);          -- cfg SOL9_time_full
    signal slv_reg38   : std_logic_vector(0 downto 0);           -- cmd SOL9_run
    signal slv_reg39   : std_logic_vector(1 downto 0);           -- sta SOL9_status

	signal slv_reg_rden	: std_logic;
	signal slv_reg_wren	: std_logic;
	
	signal reg_data_out	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal byte_index	: integer;
	signal aw_en	: std_logic;
	
begin
	-- I/O Connections assignments

	S_AXI_AWREADY	<= axi_awready;
	S_AXI_WREADY	<= axi_wready;
	S_AXI_BRESP	<= axi_bresp;
	S_AXI_BVALID	<= axi_bvalid;
	S_AXI_ARREADY	<= axi_arready;
	S_AXI_RDATA	<= axi_rdata;
	S_AXI_RRESP	<= axi_rresp;
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
	    else
			-- READ ONLY ---------------		
			if (SOL0_vld_in = '1') then  slv_reg3(1 downto 0)   <=SOL0_status(1 downto 0); else  slv_reg3  <= slv_reg3;  end if;
			if (SOL1_vld_in = '1') then  slv_reg7(1 downto 0)   <=SOL1_status(1 downto 0); else  slv_reg7  <= slv_reg7;  end if;
			if (SOL2_vld_in = '1') then  slv_reg11(1 downto 0)  <=SOL2_status(1 downto 0); else  slv_reg11  <= slv_reg11;  end if;
			if (SOL3_vld_in = '1') then  slv_reg15(1 downto 0)  <=SOL3_status(1 downto 0); else  slv_reg15  <= slv_reg15;  end if;
			if (SOL4_vld_in = '1') then  slv_reg19(1 downto 0)  <=SOL4_status(1 downto 0); else  slv_reg19  <= slv_reg19;  end if;
			if (SOL5_vld_in = '1') then  slv_reg23(1 downto 0)  <=SOL5_status(1 downto 0); else  slv_reg23  <= slv_reg23;  end if;
			if (SOL6_vld_in = '1') then  slv_reg27(1 downto 0)  <=SOL6_status(1 downto 0); else  slv_reg27  <= slv_reg27;  end if;
			if (SOL7_vld_in = '1') then  slv_reg31(1 downto 0)  <=SOL7_status(1 downto 0); else  slv_reg31  <= slv_reg31;  end if;
			if (SOL8_vld_in = '1') then  slv_reg35(1 downto 0)  <=SOL8_status(1 downto 0); else  slv_reg35  <= slv_reg35;  end if;
			if (SOL9_vld_in = '1') then  slv_reg39(1 downto 0)  <=SOL9_status(1 downto 0); else  slv_reg39  <= slv_reg39;  end if;

			-- WRITE ---------------	
	        loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	        case loc_addr is
			
				when b"000000" => if (slv_reg_wren = '1') then slv_reg0 <= S_AXI_WDATA(7 downto 0);  end if;
				when b"000001" => if (slv_reg_wren = '1') then slv_reg1 <= S_AXI_WDATA(10 downto 0);  end if;
				when b"000010" => if (slv_reg_wren = '1') then slv_reg2 <= S_AXI_WDATA(0 downto 0);  end if;

				when b"000100" => if (slv_reg_wren = '1') then slv_reg4 <= S_AXI_WDATA(7 downto 0);  end if;
				when b"000101" => if (slv_reg_wren = '1') then slv_reg5 <= S_AXI_WDATA(10 downto 0);  end if;
				when b"000110" => if (slv_reg_wren = '1') then slv_reg6 <= S_AXI_WDATA(0 downto 0);  end if;

				when b"001000" => if (slv_reg_wren = '1') then slv_reg8 <= S_AXI_WDATA(7 downto 0);  end if;
				when b"001001" => if (slv_reg_wren = '1') then slv_reg9 <= S_AXI_WDATA(10 downto 0);  end if;
				when b"001010" => if (slv_reg_wren = '1') then slv_reg10 <= S_AXI_WDATA(0 downto 0);  end if;

				when b"001100" => if (slv_reg_wren = '1') then slv_reg12 <= S_AXI_WDATA(7 downto 0);  end if;
				when b"001101" => if (slv_reg_wren = '1') then slv_reg13 <= S_AXI_WDATA(10 downto 0);  end if;
				when b"001110" => if (slv_reg_wren = '1') then slv_reg14 <= S_AXI_WDATA(0 downto 0);  end if;

				when b"010000" => if (slv_reg_wren = '1') then slv_reg16 <= S_AXI_WDATA(7 downto 0);  end if;
				when b"010001" => if (slv_reg_wren = '1') then slv_reg17 <= S_AXI_WDATA(10 downto 0);  end if;
				when b"010010" => if (slv_reg_wren = '1') then slv_reg18 <= S_AXI_WDATA(0 downto 0);  end if;

				when b"010100" => if (slv_reg_wren = '1') then slv_reg20 <= S_AXI_WDATA(7 downto 0);  end if;
				when b"010101" => if (slv_reg_wren = '1') then slv_reg21 <= S_AXI_WDATA(10 downto 0);  end if;
				when b"010110" => if (slv_reg_wren = '1') then slv_reg22 <= S_AXI_WDATA(0 downto 0);  end if;

				when b"011000" => if (slv_reg_wren = '1') then slv_reg24 <= S_AXI_WDATA(7 downto 0);  end if;
				when b"011001" => if (slv_reg_wren = '1') then slv_reg25 <= S_AXI_WDATA(10 downto 0);  end if;
				when b"011010" => if (slv_reg_wren = '1') then slv_reg26 <= S_AXI_WDATA(0 downto 0);  end if;

				when b"011100" => if (slv_reg_wren = '1') then slv_reg28 <= S_AXI_WDATA(7 downto 0);  end if;
				when b"011101" => if (slv_reg_wren = '1') then slv_reg29 <= S_AXI_WDATA(10 downto 0);  end if;
				when b"011110" => if (slv_reg_wren = '1') then slv_reg30 <= S_AXI_WDATA(0 downto 0);  end if;

				when b"100000" => if (slv_reg_wren = '1') then slv_reg32 <= S_AXI_WDATA(7 downto 0);  end if;
				when b"100001" => if (slv_reg_wren = '1') then slv_reg33 <= S_AXI_WDATA(10 downto 0);  end if;
				when b"100010" => if (slv_reg_wren = '1') then slv_reg34 <= S_AXI_WDATA(0 downto 0);  end if;

				when b"100100" => if (slv_reg_wren = '1') then slv_reg36 <= S_AXI_WDATA(7 downto 0);  end if;
				when b"100101" => if (slv_reg_wren = '1') then slv_reg37 <= S_AXI_WDATA(10 downto 0);  end if;
				when b"100110" => if (slv_reg_wren = '1') then slv_reg38 <= S_AXI_WDATA(0 downto 0);  end if;

	          when others =>
	            slv_reg0 <= slv_reg0;
	            slv_reg1 <= slv_reg1;
	            slv_reg2 <= slv_reg2;
				
	            slv_reg4 <= slv_reg4;
	            slv_reg5 <= slv_reg5;
	            slv_reg6 <= slv_reg6;
				
	            slv_reg8 <= slv_reg8;
	            slv_reg9 <= slv_reg9;
	            slv_reg10 <= slv_reg10;
				
	            slv_reg12 <= slv_reg12;
	            slv_reg13 <= slv_reg13;
	            slv_reg14 <= slv_reg14;
				
	            slv_reg16 <= slv_reg16;
	            slv_reg17 <= slv_reg17;
	            slv_reg18 <= slv_reg18;
				
	            slv_reg20 <= slv_reg20;
	            slv_reg21 <= slv_reg21;
	            slv_reg22 <= slv_reg22;
				
	            slv_reg24 <= slv_reg24;
	            slv_reg25 <= slv_reg25;
	            slv_reg26 <= slv_reg26;
				
	            slv_reg28 <= slv_reg28;
	            slv_reg29 <= slv_reg29;
	            slv_reg30 <= slv_reg30;
				
	            slv_reg32 <= slv_reg32;
	            slv_reg33 <= slv_reg33;
	            slv_reg34 <= slv_reg34;
				
	            slv_reg36 <= slv_reg36;
	            slv_reg37 <= slv_reg37;
	            slv_reg38 <= slv_reg38;
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

	process (slv_reg0, slv_reg1, slv_reg2, slv_reg3, slv_reg4, slv_reg5, slv_reg6, slv_reg7, slv_reg8, slv_reg9, slv_reg10, slv_reg11, slv_reg12, slv_reg13, slv_reg14, slv_reg15, slv_reg16, slv_reg17, slv_reg18, slv_reg19, slv_reg20, slv_reg21, slv_reg22, slv_reg23, slv_reg24, slv_reg25, slv_reg26, slv_reg27, slv_reg28, slv_reg29, slv_reg30, slv_reg31, slv_reg32, slv_reg33, slv_reg34, slv_reg35, slv_reg36, slv_reg37, slv_reg38, slv_reg39, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	    -- Address decoding for reading registers
	    loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
		
	    reg_data_out <= (others => '0');
		
	    case loc_addr is
	      when b"000000" => reg_data_out(7 downto 0)  <= slv_reg0;
	      when b"000001" => reg_data_out(10 downto 0) <= slv_reg1;
	      when b"000010" => reg_data_out(0 downto 0)  <= slv_reg2;
	      when b"000011" => reg_data_out(1 downto 0)  <= slv_reg3;
			
	      when b"000100" => reg_data_out(7 downto 0)  <= slv_reg4;
	      when b"000101" => reg_data_out(10 downto 0) <= slv_reg5;
	      when b"000110" => reg_data_out(0 downto 0)  <= slv_reg6;
	      when b"000111" => reg_data_out(1 downto 0)  <= slv_reg7;
		  
	      when b"001000" => reg_data_out(7 downto 0)  <= slv_reg8;
	      when b"001001" => reg_data_out(10 downto 0) <= slv_reg9;
	      when b"001010" => reg_data_out(0 downto 0)  <= slv_reg10;
	      when b"001011" => reg_data_out(1 downto 0)  <= slv_reg11;
		  
	      when b"001100" => reg_data_out(7 downto 0)  <= slv_reg12;
	      when b"001101" => reg_data_out(10 downto 0) <= slv_reg13;
	      when b"001110" => reg_data_out(0 downto 0)  <= slv_reg14;
	      when b"001111" => reg_data_out(1 downto 0)  <= slv_reg15;
		  
	      when b"010000" => reg_data_out(7 downto 0)  <= slv_reg16;
	      when b"010001" => reg_data_out(10 downto 0) <= slv_reg17;
	      when b"010010" => reg_data_out(0 downto 0)  <= slv_reg18;
	      when b"010011" => reg_data_out(1 downto 0)  <= slv_reg19;
		  
	      when b"010100" => reg_data_out(7 downto 0)  <= slv_reg20;
	      when b"010101" => reg_data_out(10 downto 0) <= slv_reg21;
	      when b"010110" => reg_data_out(0 downto 0)  <= slv_reg22;
	      when b"010111" => reg_data_out(1 downto 0)  <= slv_reg23;
		  
	      when b"011000" => reg_data_out(7 downto 0)  <= slv_reg24;
	      when b"011001" => reg_data_out(10 downto 0) <= slv_reg25;
	      when b"011010" => reg_data_out(0 downto 0)  <= slv_reg26;
	      when b"011011" => reg_data_out(1 downto 0)  <= slv_reg27;
		  
	      when b"011100" => reg_data_out(7 downto 0)  <= slv_reg28;
	      when b"011101" => reg_data_out(10 downto 0) <= slv_reg29;
	      when b"011110" => reg_data_out(0 downto 0)  <= slv_reg30;
	      when b"011111" => reg_data_out(1 downto 0)  <= slv_reg31;
		  
	      when b"100000" => reg_data_out(7 downto 0)  <= slv_reg32;
	      when b"100001" => reg_data_out(10 downto 0) <= slv_reg33;
	      when b"100010" => reg_data_out(0 downto 0)  <= slv_reg34;
	      when b"100011" => reg_data_out(1 downto 0)  <= slv_reg35;
		  
	      when b"100100" => reg_data_out(7 downto 0)  <= slv_reg36;
	      when b"100101" => reg_data_out(10 downto 0) <= slv_reg37;
	      when b"100110" => reg_data_out(0 downto 0)  <= slv_reg38;
	      when b"100111" => reg_data_out(1 downto 0)  <= slv_reg39;
		  
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
	
    -- Solenoid 0
    SOL0_pwm_val   <= slv_reg0(7 downto 0);
    SOL0_time_full <= slv_reg1(10 downto 0);
    SOL0_run       <= slv_reg2(0);

    -- Solenoid 1
    SOL1_pwm_val   <= slv_reg4(7 downto 0);
    SOL1_time_full <= slv_reg5(10 downto 0);
    SOL1_run       <= slv_reg6(0);

    -- Solenoid 2
    SOL2_pwm_val   <= slv_reg8(7 downto 0);
    SOL2_time_full <= slv_reg9(10 downto 0);
    SOL2_run       <= slv_reg10(0);

    -- Solenoid 3
    SOL3_pwm_val   <= slv_reg12(7 downto 0);
    SOL3_time_full <= slv_reg13(10 downto 0);
    SOL3_run       <= slv_reg14(0);

    -- Solenoid 4
    SOL4_pwm_val   <= slv_reg16(7 downto 0);
    SOL4_time_full <= slv_reg17(10 downto 0);
    SOL4_run       <= slv_reg18(0);

    -- Solenoid 5
    SOL5_pwm_val   <= slv_reg20(7 downto 0);
    SOL5_time_full <= slv_reg21(10 downto 0);
    SOL5_run       <= slv_reg22(0);

    -- Solenoid 6
    SOL6_pwm_val   <= slv_reg24(7 downto 0);
    SOL6_time_full <= slv_reg25(10 downto 0);
    SOL6_run       <= slv_reg26(0);

    -- Solenoid 7
    SOL7_pwm_val   <= slv_reg28(7 downto 0);
    SOL7_time_full <= slv_reg29(10 downto 0);
    SOL7_run       <= slv_reg30(0);

    -- Solenoid 8
    SOL8_pwm_val   <= slv_reg32(7 downto 0);
    SOL8_time_full <= slv_reg33(10 downto 0);
    SOL8_run       <= slv_reg34(0);

    -- Solenoid 9
    SOL9_pwm_val   <= slv_reg36(7 downto 0);
    SOL9_time_full <= slv_reg37(10 downto 0);
    SOL9_run       <= slv_reg38(0);
	
	gen_vld_out: process( S_AXI_ACLK ) is
    variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	  if (rising_edge (S_AXI_ACLK)) then
	    if ( S_AXI_ARESETN = '0' ) then
			SOL0_vld_out	<= '0';	
			SOL1_vld_out	<= '0';		
			SOL2_vld_out	<= '0';	
			SOL3_vld_out	<= '0';			
			SOL4_vld_out	<= '0';			
			SOL5_vld_out	<= '0';
			SOL6_vld_out	<= '0';
			SOL7_vld_out	<= '0';
			SOL8_vld_out	<= '0';
			SOL9_vld_out	<= '0';
	    else
	        -- Address decoding for writing registers
	        loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);	    
	    
			if slv_reg_wren = '1' then
				SOL0_vld_out	<= '0';			
				SOL1_vld_out	<= '0';			
				SOL2_vld_out	<= '0';			
				SOL3_vld_out	<= '0';			
				SOL4_vld_out	<= '0';			
				SOL5_vld_out	<= '0';			
				SOL6_vld_out	<= '0';			
				SOL7_vld_out	<= '0';			
				SOL8_vld_out	<= '0';			
				SOL9_vld_out	<= '0';
				case loc_addr is
					when b"000000" => SOL0_vld_out   <=  '1';
					when b"000001" => SOL0_vld_out   <=  '1';
					when b"000010" => SOL0_vld_out   <=  '1';
				    when others    => SOL0_vld_out   <=  '0';			
				end case;
				case loc_addr is
					when b"000100" => SOL1_vld_out   <=  '1';
					when b"000101" => SOL1_vld_out   <=  '1';
					when b"000110" => SOL1_vld_out   <=  '1';
				    when others    => SOL1_vld_out   <=  '0';		
				end case;					
				case loc_addr is
					when b"001000" => SOL2_vld_out   <=  '1';
					when b"001001" => SOL2_vld_out   <=  '1';
					when b"001010" => SOL2_vld_out   <=  '1';
				    when others    => SOL2_vld_out   <=  '0';			
				end case;					
				case loc_addr is
					when b"001100" => SOL3_vld_out   <=  '1';
					when b"001101" => SOL3_vld_out   <=  '1';
					when b"001110" => SOL3_vld_out   <=  '1';
				    when others    => SOL3_vld_out   <=  '0';				
				end case;					
				case loc_addr is
					when b"010000" => SOL4_vld_out   <=  '1';
					when b"010001" => SOL4_vld_out   <=  '1';
					when b"010010" => SOL4_vld_out   <=  '1';
				    when others    => SOL4_vld_out   <=  '0';				
				end case;					
				case loc_addr is
					when b"010100" => SOL5_vld_out   <=  '1';
					when b"010101" => SOL5_vld_out   <=  '1';
					when b"010110" => SOL5_vld_out   <=  '1';
				    when others    => SOL5_vld_out   <=  '0';				
				end case;					
				case loc_addr is
					when b"011000" => SOL6_vld_out   <=  '1';
					when b"011001" => SOL6_vld_out   <=  '1';
					when b"011010" => SOL6_vld_out   <=  '1';
				    when others    => SOL6_vld_out   <=  '0';				
				end case;					
				case loc_addr is
					when b"011100" => SOL7_vld_out   <=  '1';
					when b"011101" => SOL7_vld_out   <=  '1';
					when b"011110" => SOL7_vld_out   <=  '1';
				    when others    => SOL7_vld_out   <=  '0';			
				end case;					
				case loc_addr is
					when b"100000" => SOL8_vld_out   <=  '1';
					when b"100001" => SOL8_vld_out   <=  '1';
					when b"100010" => SOL8_vld_out   <=  '1';
				    when others    => SOL8_vld_out   <=  '0';			
				end case;					
				case loc_addr is
					when b"100100" => SOL9_vld_out   <=  '1';
					when b"100101" => SOL9_vld_out   <=  '1';
					when b"100110" => SOL9_vld_out   <=  '1';
				    when others    => SOL9_vld_out   <=  '0';				
				end case;					
			else
				SOL0_vld_out	<= '0';			
				SOL1_vld_out	<= '0';			
				SOL2_vld_out	<= '0';			
				SOL3_vld_out	<= '0';			
				SOL4_vld_out	<= '0';			
				SOL5_vld_out	<= '0';			
				SOL6_vld_out	<= '0';			
				SOL7_vld_out	<= '0';			
				SOL8_vld_out	<= '0';			
				SOL9_vld_out	<= '0';						
			end if;

	    end if;
	  end if;
	end process gen_vld_out;

	
	

	-- User logic ends

end arch_imp;
