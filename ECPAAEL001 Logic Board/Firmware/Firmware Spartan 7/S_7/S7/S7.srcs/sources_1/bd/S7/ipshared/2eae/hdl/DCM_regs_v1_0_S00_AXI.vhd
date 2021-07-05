library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DCM_regs_v1_0_S00_AXI is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH	: integer	:= 7
	);
	port (
		-- Users to add ports here

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
end DCM_regs_v1_0_S00_AXI;

architecture arch_imp of DCM_regs_v1_0_S00_AXI is

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
	constant OPT_MEM_ADDR_BITS : integer := 4;
	------------------------------------------------
	---- Signals for user logic register space example
	--------------------------------------------------
	---- Number of Slave Registers 30
	signal slv_reg0   : std_logic_vector(7 downto 0);           -- cfg DCM0_pwm_val
	signal slv_reg1   : std_logic_vector(6 downto 0):= std_logic_vector(to_unsigned(20, 7));           -- cfg SOL0_pwm_frq
	signal slv_reg2   : std_logic_vector(0 downto 0);           -- cfg SOL0_dir
	signal slv_reg3   : std_logic_vector(0 downto 0);           -- cmd DCM0_run
	signal slv_reg4   : std_logic_vector(0 downto 0);           -- cmd DCM0_brake
	signal slv_reg5   : std_logic_vector(1 downto 0);           -- sta DCM0_status

	signal slv_reg6   : std_logic_vector(7 downto 0);           -- cfg DCM1_pwm_val
	signal slv_reg7   : std_logic_vector(6 downto 0):= std_logic_vector(to_unsigned(20, 7));           -- cfg SOL1_pwm_frq
	signal slv_reg8   : std_logic_vector(0 downto 0);           -- cfg SOL1_dir
	signal slv_reg9   : std_logic_vector(0 downto 0);           -- cmd DCM1_run
	signal slv_reg10   : std_logic_vector(0 downto 0);           -- cmd DCM1_brake
	signal slv_reg11   : std_logic_vector(1 downto 0);           -- sta DCM1_status

	signal slv_reg12   : std_logic_vector(7 downto 0);           -- cfg DCM2_pwm_val
	signal slv_reg13   : std_logic_vector(6 downto 0):= std_logic_vector(to_unsigned(20, 7));           -- cfg SOL2_pwm_frq
	signal slv_reg14   : std_logic_vector(0 downto 0);           -- cfg SOL2_dir
	signal slv_reg15   : std_logic_vector(0 downto 0);           -- cmd DCM2_run
	signal slv_reg16   : std_logic_vector(0 downto 0);           -- cmd DCM2_brake
	signal slv_reg17   : std_logic_vector(1 downto 0);           -- sta DCM2_status

	signal slv_reg18   : std_logic_vector(7 downto 0);           -- cfg DCM3_pwm_val
	signal slv_reg19   : std_logic_vector(6 downto 0):= std_logic_vector(to_unsigned(20, 7));           -- cfg SOL3_pwm_frq
	signal slv_reg20   : std_logic_vector(0 downto 0);           -- cfg SOL3_dir
	signal slv_reg21   : std_logic_vector(0 downto 0);           -- cmd DCM3_run
	signal slv_reg22   : std_logic_vector(0 downto 0);           -- cmd DCM3_brake
	signal slv_reg23   : std_logic_vector(1 downto 0);           -- sta DCM3_status

	signal slv_reg24   : std_logic_vector(7 downto 0);           -- cfg DCM4_pwm_val
	signal slv_reg25   : std_logic_vector(6 downto 0):= std_logic_vector(to_unsigned(20, 7));           -- cfg SOL4_pwm_frq
	signal slv_reg26   : std_logic_vector(0 downto 0);           -- cfg SOL4_dir
	signal slv_reg27   : std_logic_vector(0 downto 0);           -- cmd DCM4_run
	signal slv_reg28   : std_logic_vector(0 downto 0);           -- cmd DCM4_brake
	signal slv_reg29   : std_logic_vector(1 downto 0);           -- sta DCM4_status
	
	signal slv_reg_rden	: std_logic;
	signal slv_reg_wren	: std_logic;
	
	signal reg_data_out	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal byte_index	: integer;
	signal aw_en	    : std_logic;
	

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
	      slv_reg0 <=  (others => '0');
	      slv_reg1 <=  std_logic_vector(to_unsigned(20, 7));
	      slv_reg2 <=  (others => '0');
	      slv_reg3 <=  (others => '0');
	      slv_reg4 <=  (others => '0');     
	      slv_reg5 <=  (others => '0');
	      
	      slv_reg6 <=  (others => '0');
	      slv_reg7 <=  std_logic_vector(to_unsigned(20, 7));
	      slv_reg8 <=  (others => '0');
	      slv_reg9 <=  (others => '0');
	      slv_reg10 <= (others => '0');
	      slv_reg11 <= (others => '0');
	      
	      slv_reg12 <= (others => '0');
	      slv_reg13 <= std_logic_vector(to_unsigned(20, 7));
	      slv_reg14 <= (others => '0');
	      slv_reg15 <= (others => '0');
	      slv_reg16 <= (others => '0');
	      slv_reg17 <= (others => '0');
	      
	      slv_reg18 <= (others => '0');
	      slv_reg19 <= std_logic_vector(to_unsigned(20, 7));
	      slv_reg20 <= (others => '0');
	      slv_reg21 <= (others => '0');
	      slv_reg22 <= (others => '0');
	      slv_reg23 <= (others => '0');
	      
	      slv_reg24 <= (others => '0');
	      slv_reg25 <= std_logic_vector(to_unsigned(20, 7));
	      slv_reg26 <= (others => '0');
	      slv_reg27 <= (others => '0');
	      slv_reg28 <= (others => '0');
	      slv_reg29 <= (others => '0');
	    else
			-- READ ONLY ---------------
			if (DCM0_vld_in = '1')  then  slv_reg5(1 downto 0)   <=DCM0_status; else  slv_reg5  <= slv_reg5;  end if;
			if (DCM1_vld_in = '1')  then  slv_reg11(1 downto 0)  <=DCM1_status; else  slv_reg11  <= slv_reg11;  end if;
			if (DCM2_vld_in = '1')  then  slv_reg17(1 downto 0)  <=DCM2_status; else  slv_reg17  <= slv_reg17;  end if;
			if (DCM3_vld_in = '1')  then  slv_reg23(1 downto 0)  <=DCM3_status; else  slv_reg23  <= slv_reg23;  end if;
			if (DCM4_vld_in = '1')  then  slv_reg29(1 downto 0)  <=DCM4_status; else  slv_reg29  <= slv_reg29;  end if;
			
			-- WRITE ---------------			
	        loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
	        case loc_addr is
				when b"00000" => if (slv_reg_wren = '1') then slv_reg0 <= S_AXI_WDATA(7 downto 0);  end if;
				when b"00001" => if (slv_reg_wren = '1') then slv_reg1 <= S_AXI_WDATA(6 downto 0);  end if;
				when b"00010" => if (slv_reg_wren = '1') then slv_reg2 <= S_AXI_WDATA(0 downto 0);  end if;
				when b"00011" => if (slv_reg_wren = '1') then slv_reg3 <= S_AXI_WDATA(0 downto 0);  end if;
				when b"00100" => if (slv_reg_wren = '1') then slv_reg4 <= S_AXI_WDATA(0 downto 0);  end if;

				when b"00110" => if (slv_reg_wren = '1') then slv_reg6 <= S_AXI_WDATA(7 downto 0);  end if;
				when b"00111" => if (slv_reg_wren = '1') then slv_reg7 <= S_AXI_WDATA(6 downto 0);  end if;
				when b"01000" => if (slv_reg_wren = '1') then slv_reg8 <= S_AXI_WDATA(0 downto 0);  end if;
				when b"01001" => if (slv_reg_wren = '1') then slv_reg9 <= S_AXI_WDATA(0 downto 0);  end if;
				when b"01010" => if (slv_reg_wren = '1') then slv_reg10 <= S_AXI_WDATA(0 downto 0);  end if;

				when b"01100" => if (slv_reg_wren = '1') then slv_reg12 <= S_AXI_WDATA(7 downto 0);  end if;
				when b"01101" => if (slv_reg_wren = '1') then slv_reg13 <= S_AXI_WDATA(6 downto 0);  end if;
				when b"01110" => if (slv_reg_wren = '1') then slv_reg14 <= S_AXI_WDATA(0 downto 0);  end if;
				when b"01111" => if (slv_reg_wren = '1') then slv_reg15 <= S_AXI_WDATA(0 downto 0);  end if;
				when b"10000" => if (slv_reg_wren = '1') then slv_reg16 <= S_AXI_WDATA(0 downto 0);  end if;

				when b"10010" => if (slv_reg_wren = '1') then slv_reg18 <= S_AXI_WDATA(7 downto 0);  end if;
				when b"10011" => if (slv_reg_wren = '1') then slv_reg19 <= S_AXI_WDATA(6 downto 0);  end if;
				when b"10100" => if (slv_reg_wren = '1') then slv_reg20 <= S_AXI_WDATA(0 downto 0);  end if;
				when b"10101" => if (slv_reg_wren = '1') then slv_reg21 <= S_AXI_WDATA(0 downto 0);  end if;
				when b"10110" => if (slv_reg_wren = '1') then slv_reg22 <= S_AXI_WDATA(0 downto 0);  end if;

				when b"11000" => if (slv_reg_wren = '1') then slv_reg24 <= S_AXI_WDATA(7 downto 0);  end if;
				when b"11001" => if (slv_reg_wren = '1') then slv_reg25 <= S_AXI_WDATA(6 downto 0);  end if;
				when b"11010" => if (slv_reg_wren = '1') then slv_reg26 <= S_AXI_WDATA(0 downto 0);  end if;
				when b"11011" => if (slv_reg_wren = '1') then slv_reg27 <= S_AXI_WDATA(0 downto 0);  end if;
				when b"11100" => if (slv_reg_wren = '1') then slv_reg28 <= S_AXI_WDATA(0 downto 0);  end if;

	          when others =>
	            slv_reg0  <= slv_reg0;
	            slv_reg1  <= slv_reg1;
	            slv_reg2  <= slv_reg2;
	            slv_reg3  <= slv_reg3;
	            slv_reg4  <= slv_reg4;
				
	            slv_reg6  <= slv_reg6;
	            slv_reg7  <= slv_reg7;
	            slv_reg8  <= slv_reg8;
	            slv_reg9  <= slv_reg9;
	            slv_reg10 <= slv_reg10;
				
	            slv_reg12 <= slv_reg12;
	            slv_reg13 <= slv_reg13;
	            slv_reg14 <= slv_reg14;
	            slv_reg15 <= slv_reg15;
	            slv_reg16 <= slv_reg16;
				
	            slv_reg18 <= slv_reg18;
	            slv_reg19 <= slv_reg19;
	            slv_reg20 <= slv_reg20;
	            slv_reg21 <= slv_reg21;
	            slv_reg22 <= slv_reg22;
				
	            slv_reg24 <= slv_reg24;
	            slv_reg25 <= slv_reg25;
	            slv_reg26 <= slv_reg26;
	            slv_reg27 <= slv_reg27;
	            slv_reg28 <= slv_reg28;
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

	process (slv_reg0, slv_reg1, slv_reg2, slv_reg3, slv_reg4, slv_reg5, slv_reg6, slv_reg7, slv_reg8, slv_reg9, slv_reg10, slv_reg11, slv_reg12, slv_reg13, slv_reg14, slv_reg15, slv_reg16, slv_reg17, slv_reg18, slv_reg19, slv_reg20, slv_reg21, slv_reg22, slv_reg23, slv_reg24, slv_reg25, slv_reg26, slv_reg27, slv_reg28, slv_reg29, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
	variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	    -- Address decoding for reading registers
	    loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
		
		reg_data_out <= (others => '0');
		
	    case loc_addr is
            when b"00000" => reg_data_out(7 downto 0) <= slv_reg0;
            when b"00001" => reg_data_out(6 downto 0) <= slv_reg1;
            when b"00010" => reg_data_out(0 downto 0) <= slv_reg2;
            when b"00011" => reg_data_out(0 downto 0) <= slv_reg3;
            when b"00100" => reg_data_out(0 downto 0) <= slv_reg4;
            when b"00101" => reg_data_out(1 downto 0) <= slv_reg5;

            when b"00110" => reg_data_out(7 downto 0) <= slv_reg6;
            when b"00111" => reg_data_out(6 downto 0) <= slv_reg7;
            when b"01000" => reg_data_out(0 downto 0) <= slv_reg8;
            when b"01001" => reg_data_out(0 downto 0) <= slv_reg9;
            when b"01010" => reg_data_out(0 downto 0) <= slv_reg10;
            when b"01011" => reg_data_out(1 downto 0) <= slv_reg11;

            when b"01100" => reg_data_out(7 downto 0) <= slv_reg12;
            when b"01101" => reg_data_out(6 downto 0) <= slv_reg13;
            when b"01110" => reg_data_out(0 downto 0) <= slv_reg14;
            when b"01111" => reg_data_out(0 downto 0) <= slv_reg15;
            when b"10000" => reg_data_out(0 downto 0) <= slv_reg16;
            when b"10001" => reg_data_out(1 downto 0) <= slv_reg17;

            when b"10010" => reg_data_out(7 downto 0) <= slv_reg18;
            when b"10011" => reg_data_out(6 downto 0) <= slv_reg19;
            when b"10100" => reg_data_out(0 downto 0) <= slv_reg20;
            when b"10101" => reg_data_out(0 downto 0) <= slv_reg21;
            when b"10110" => reg_data_out(0 downto 0) <= slv_reg22;
            when b"10111" => reg_data_out(1 downto 0) <= slv_reg23;

            when b"11000" => reg_data_out(7 downto 0) <= slv_reg24;
            when b"11001" => reg_data_out(6 downto 0) <= slv_reg25;
            when b"11010" => reg_data_out(0 downto 0) <= slv_reg26;
            when b"11011" => reg_data_out(0 downto 0) <= slv_reg27;
            when b"11100" => reg_data_out(0 downto 0) <= slv_reg28;
            when b"11101" => reg_data_out(1 downto 0) <= slv_reg29;
			
	        when others   => reg_data_out  <= (others => '0');
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
	
    -- DC Motor 0
    DCM0_pwm_val <= slv_reg0(7 downto 0);
    DCM0_pwm_frq <= slv_reg1(6 downto 0);
    DCM0_dir <= slv_reg2(0);
    DCM0_run <= slv_reg3(0);
    DCM0_brake <= slv_reg4(0);

    -- DC Motor 1
    DCM1_pwm_val <= slv_reg6(7 downto 0);
    DCM1_pwm_frq <= slv_reg7(6 downto 0);
    DCM1_dir <= slv_reg8(0);
    DCM1_run <= slv_reg9(0);
    DCM1_brake <= slv_reg10(0);

    -- DC Motor 2
    DCM2_pwm_val <= slv_reg12(7 downto 0);
    DCM2_pwm_frq <= slv_reg13(6 downto 0);
    DCM2_dir <= slv_reg14(0);
    DCM2_run <= slv_reg15(0);
    DCM2_brake <= slv_reg16(0);

    -- DC Motor 3
    DCM3_pwm_val <= slv_reg18(7 downto 0);
    DCM3_pwm_frq <= slv_reg19(6 downto 0);
    DCM3_dir <= slv_reg20(0);
    DCM3_run <= slv_reg21(0);
    DCM3_brake <= slv_reg22(0);

    -- DC Motor 4
    DCM4_pwm_val <= slv_reg24(7 downto 0);
    DCM4_pwm_frq <= slv_reg25(6 downto 0);
    DCM4_dir <= slv_reg26(0);
    DCM4_run <= slv_reg27(0);
    DCM4_brake <= slv_reg28(0);

	gen_vld_out: process( S_AXI_ACLK ) is
    variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
	begin
	  if (rising_edge (S_AXI_ACLK)) then
	    if ( S_AXI_ARESETN = '0' ) then
			
			DCM0_vld_out	<= '0';		
			DCM1_vld_out	<= '0';		
			DCM2_vld_out	<= '0';		
			DCM3_vld_out	<= '0';		
			DCM4_vld_out	<= '0';		
	    else
	        -- Address decoding for writing registers
	        loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);	    

			if slv_reg_wren = '1' then
					DCM0_vld_out	<= '0';
					DCM1_vld_out	<= '0';
					DCM2_vld_out	<= '0';
					DCM3_vld_out	<= '0';
					DCM4_vld_out	<= '0';
				case loc_addr is  -- DC Motor 0					
					when b"00000" =>   DCM0_vld_out   <=   '1';
					when b"00001" =>   DCM0_vld_out   <=   '1';
					when b"00010" =>   DCM0_vld_out   <=   '1';
					when b"00011" =>   DCM0_vld_out   <=   '1';
					when b"00100" =>   DCM0_vld_out   <=   '1';
				    when others   =>   DCM0_vld_out   <=   '0';			
				end case;
				case loc_addr is  -- DC Motor 1
					when b"00110" =>   DCM1_vld_out   <=   '1';
					when b"00111" =>   DCM1_vld_out   <=   '1';
					when b"01000" =>   DCM1_vld_out   <=   '1';
					when b"01001" =>   DCM1_vld_out   <=   '1';
					when b"01010" =>   DCM1_vld_out   <=   '1';
				    when others   =>   DCM1_vld_out   <=   '0';			
				end case;
				case loc_addr is  -- DC Motor 2
					when b"01100" =>   DCM2_vld_out   <=   '1';
					when b"01101" =>   DCM2_vld_out   <=   '1';
					when b"01110" =>   DCM2_vld_out   <=   '1';
					when b"01111" =>   DCM2_vld_out   <=   '1';
					when b"10000" =>   DCM2_vld_out   <=   '1';
				    when others   =>   DCM2_vld_out   <=   '0';			
				end case;
				case loc_addr is  -- DC Motor 3
					when b"10010" =>   DCM3_vld_out   <=   '1';
					when b"10011" =>   DCM3_vld_out   <=   '1';
					when b"10100" =>   DCM3_vld_out   <=   '1';
					when b"10101" =>   DCM3_vld_out   <=   '1';
					when b"10110" =>   DCM3_vld_out   <=   '1';
				    when others   =>   DCM3_vld_out   <=   '0';			
				end case;
				case loc_addr is  -- DC Motor 4
					when b"11000" =>   DCM4_vld_out   <=   '1';
					when b"11001" =>   DCM4_vld_out   <=   '1';
					when b"11010" =>   DCM4_vld_out   <=   '1';
					when b"11011" =>   DCM4_vld_out   <=   '1';
					when b"11100" =>   DCM4_vld_out   <=   '1';
				    when others   =>   DCM4_vld_out   <=   '0';			
				end case;
			else
				DCM0_vld_out	<= '0';			
				DCM1_vld_out	<= '0';			
				DCM2_vld_out	<= '0';			
				DCM3_vld_out	<= '0';			
				DCM4_vld_out	<= '0';					
			end if;

	    end if;
	  end if;
	end process gen_vld_out;

	-- User logic ends

end arch_imp;
