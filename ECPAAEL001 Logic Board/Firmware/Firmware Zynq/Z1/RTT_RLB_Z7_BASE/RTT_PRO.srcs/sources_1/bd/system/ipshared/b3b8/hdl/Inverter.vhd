----------------------------- BRIEF MODULE DESCRIPTION -------------------------
--! \file
--!	\brief The *Inverter* is the responsible of managing all the AXI4-Signals and of inverting properly the incoming image.
--------------------------------------------------------------------------------


------------------------------- LIBRARY DECLARATION ----------------------------

--------------- IEEE Library ------------
--! Standard IEEE Library
library IEEE;
	--! Standard Logic Vector Library
	use IEEE.STD_LOGIC_1164.all;
	--! Numeric Library
	use IEEE.NUMERIC_STD.all;
-----------------------------------------
--------------------------------------------------------------------------------

-------------------------------- ENTITY DESCRIPTION ----------------------------
--! \brief The output of this module contains: 4 ports of *inverted_tdata*: *inverted_tdata_MSB*, *inverted_tdata_3rdB*, *inverted_tdata_2ndB*, *inverted_tdata_lSB* which are the inverted outputs of
--! *in_tdata_MSB*, *in_tdata_3rdB*, *in_tdata_2ndB*, *in_tdata_lSB* respectively.(In reality just the bytes after the 54th are inverted,
--! since the first 54 bytes contain the BMP header, which must be kept untouched), *out_tvalid*, which is basically a sampled version of the *in_tvalid* coming from the DMA,
--! *out_tready*, which is the same of  the *in_tready* coming from the "following DMA" and *out_tlast*, which is the sampled version of the incoming *in_tlast*.
--! Furthermore, in case of *DEBUG_MODE = TRUE*, the module shows two additional ports, *counter* and *file_dimension*, which are used for debugging with the ILA.
--------------------------------------------------------------------------------

entity Inverter is
	generic (

		------- Debug Mode -------
		DEBUG_MODE	: BOOLEAN	:= TRUE;							--! If DEBUG_MODE = TRUE, the module shows the ports counter and file_dimension in such a way we can use them for debugging with ILA
		--------------------------

		------- Data Width -------
		DATA_WIDTH	: POSITIVE 	:=	8								--! The incoming image can have values that range from 0 to 255 by definition, so the data can be represented by just 8 bits
		--------------------------
	);

	port (
		------------------ resetn/Clock ------------------
		--------- resetn ----------
		resetn	: 	IN		STD_LOGIC;								--! Synchronous resetn active low
		--------------------------
		--------- Clock ----------
		clk		:	IN		STD_LOGIC;								--! PS Clock
		--------------------------
		-------------------------------------------------

		-------------------- Data -----------------------
		--------- Input -----------
		in_tdata_MSB		:	IN STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);				--! Most Significant Byte of the Incoming 32 bits data from the DMA/Chip2Chip
		in_tdata_3rdB		:	IN STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);				--! Third Byte of the Incoming 32 bits data from the DMA/Chip2Chip
		in_tdata_2ndB		:	IN STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);				--! Second Byte of the Incoming 32 bits data from the DMA/Chip2Chip
		in_tdata_LSB		:	IN STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);				--! Least Significant Byte of the Incoming 32 bits data from the DMA/Chip2Chip
		in_tvalid			:	IN STD_LOGIC;												--! Valid of the incoming data
		in_tlast			:	IN STD_LOGIC;												--! End of the incoming packet
		out_tready			:	OUT STD_LOGIC;												--! Ready of the *Inverter*: basically it is the same of the ready coming from the "following DMA"
		--------------------------

		--------- Output -----------
		inverted_tdata_MSB	:	OUT STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);			--! Most Significant Byte of the inverted output
		inverted_tdata_3rdB	:	OUT STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);			--! Third Byte of the inverted output
		inverted_tdata_2ndB	:	OUT STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);			--! Second Byte of the inverted output
		inverted_tdata_LSB	:	OUT STD_LOGIC_VECTOR(DATA_WIDTH -1 downto 0);			--! Least Significant Byte of the inverted output
		out_tvalid			:	OUT STD_LOGIC;											--! Output valid: basically it is the sampled version of *s00_axis_tvalid*
		out_tlast			:	OUT STD_LOGIC;											--! End of the exiting packets: it is the sampled version of *s00_axis_tlast*
		in_tready			:	IN STD_LOGIC;											--! Ready of the DMA/Chip2Chip
		--------------------------


		counter			:	OUT STD_LOGIC_VECTOR(31 downto 0);					--! If *DEBUG_MODE = TRUE*, this port is shown and represents the actual value of the internal packet counter, which counts the number of incoming packets
		file_dimension	:	OUT STD_LOGIC_VECTOR(31 downto 0)					--! If *DEBUG_MODE = TRUE*, this port is shown and represents the dimension of the incoming file, read from the Header
		-------------------------------------------------
	);
end Inverter;

---------------------------- ARCHITECTURE DESCRIPTION --------------------------
--! \brief The aim of the module is basically one: inverting the bits of the incoming image, but not all the bits, just the ones contained in the payload, not in the header (54 Bytes).
--! To do this, the module firstly extracts the file dimension from the Header, by looking at its 3rd, 4th, 5th and 6th bytes, and inverting their order, since they are written in a Little Endian format.
--! This means that the first byte that is present in the Header, in reality describes the LSBs of the file dimension. For example if we read 02-03-04-05, in reality the dimension is 05-04-03-02.
--! This extrapolation process is shown in the following image:
--! \image html Data.svg [File dimension]
--! If we go deeper in this process, we have to add that since for each packet we receive 4 Bytes, and the file dimension is present at the bytes 3rd-4th-5th-6th, they come
--! across two different packets, the 3rd and 4th are within the first packet of the header, while the 5th and 6th on the second packet of the header.
--! So in reality the process is the following:
--! \image html Data_detailed.svg [File dimension detailed]
--! In particular the file dimension will be exploited when we have to reset to 0 the value of *packet_counter* (for the sake of clarity, in the code the signal that has been used is *packet_counter_vct*, which is a vector of bits).
--! When that signal reaches the file dimension, it means that we have finished and so we reset *packet_counter* for being ready to accept other images.
--! Then the module depending on the value of *packet_counter*, which counts the number of incoming packets, inverts (if *packet_counter* > 54) the incoming data or let them pass unchanged (if *packet_counter* <= 54)
--! \image html Inversion.svg [Image Inversion]
--! In reality, since we receive the packets iin blocks of 4 Bytes, the *packet_counter* increases by 4 at each handshake, and so since 54 is not a multiple of 4, we have to find the 54th Bytes
--! when *packet_counter* is 52. Indeed:
--! \image html 52packets.svg [Image Inversion detailed]
--!	The last thing that this module does, is understanding when the image processing is finished and consequently when resetting to 0 the value of *packet_counter*.
--! The first thing that has been done in order to do this, is recognizing the falling edge of the *in_tlast* signal coming from the DMA. The DMA sends a *in_tlast* at the end of each packet sent via Software (SW).
--! Let's better explain this concept. Via SW we can decide how many packets per transfer we can send:
--! \image html SW_Transfer.PNG [File transfer]
--! Every NUM_INT_SENT Bytes a *in_tlast* signal will be sent, so depending on the dimension of the overall file, we need 1 or more transfer cycles, so 1 or more *in_tlast* signals.
--! But we want to reset the *packet_counter* just in corrispondence of the last *in_tlast*.
--! In reality it is not true that the *in_tlast* is generated every NUM_INT_SENT Bytes, because it can happen that the last transfer will include less than NUM_INT_SENT bytes
--! and this is the case of a file dimension which is not a multiple of NUM_INT_SENT. However this control is made by the SW, which decides how large is the transfer, and the *in_tlast* is in any case generated
--! at the end of the transfer, whatever is the dimension of the transfer. For example if we have a 16MB file, the SW sends 4MB- 4MB- 4MB- 4MB and the *in_tlast* goes high at the 16Mth byte.
--! Instead if we have a file of 14 MB, the SW sends 4MB- 4MB- 4MB- 2MB, and the *in_tlast* goes high at the 14M th byte. This is to say that for understanding which is the last *in_tlast* in order to reset *packet_counter*
--! to 0, is enough to compare *packet_counter* and file dimension every time a falling edge of *in_tlast* is detected, and the last *in_tlast* is just when they are equal, which means that the packet counter has reached
--! the overall file dimension.
--! \image html SW_Transfer_last.PNG [Last file transfer]
--! \image html Last_packet.svg [Last packet transfer]
--! In reality, since we receive 4 packets per time (32 bits), it can happen that the last packet is within the last packet, for example in the 3rd Byte. So the condition that tells us if we have finished, is if
--! *image_length* minus *packet_counter* is lower than or equal to 3, then the last packet is contained here and so we reset the *packet_counter*.
--! In the following image we can see a better explanation:
--! \image html Last_packet_detailed.svg [Last packet transfer detailed]
--! Indeed if we take as an example the case of *image_length* = 100/99/98/97, *packet_counter*, once we detect the falling edge of *in_tlast*, will have the value of 100 (see ILA waveform), and so
--! in order to understand if we have to reset the counter, we make the difference between *packet_counter* and *image_length*. If it is the last *in_tlast* the only thing that could happen is that
--! *image_length* has a value at least larger than *packet_counter* - 3.
--! \image html ILA_Wave.PNG [ILA Waveform]
--! In practice, on the ILA we see that once we reach the last packet (17M), the number of packets contained in the last one are 16999997/16999998/16999999/17M (remember that input and inverted are shifted by 1 clock cycle,
--! so for example in case of *packet_counter = 4* you see as inverted output the input that were present with *packet_counter = 0*). So since file dimension is 17M we have to reset.
--! The *packet_counter* and the *inverted_tdata* are reset to '0' also when the *resetn* is active.
--! Then in addition to the process *Inversion*, we have a small part in Dataflow, where we send directly in output *in_tready* and we generate the ports *counter* and *file_dimension* in case of *DEBUG_MODE = TRUE*.
--------------------------------------------------------------------------------

architecture Behavioral of Inverter is

	-------------------------- SIGNALS DECLARATION -----------------------------
	signal packet_counter_vct	:	std_logic_vector(31 downto 0) := (others => '0');	--! Counter of the incoming packets*
	signal image_length_vct		:	std_logic_vector(31 downto 0) := (others => '0');	--! Vector containing the file dimension (in Bytes) extrapolated from the Header at bit level. (Ex. 0x00110000)
	signal tlast_memory			:	std_logic	:=  '0' ;								--! Signal used to store temporarily the value of *in_tlast*, in order to recognize the falling edge of *in_tlast*
	----------------------------------------------------------------------------

	begin

	------------------------------- DATA FLOW ----------------------------------
	Debug: if DEBUG_MODE = TRUE generate
				counter <= packet_counter_vct;
				file_dimension <= image_length_vct;
			end generate;

	out_tready <= in_tready;
	----------------------------------------------------------------------------

	------------------------- SYNCHRONOUS PROCESS ------------------------------

	-------------- Inversion ------------
	--! \brief This process is the responsible of inverting properly the image (we invert the image just after the Header, so from the 55th Byte on), resetting properly the *packet_counter*
	--! and generating the *out_tlast* and *out_tvalid*. Since everything has been described in the Architecture description section, here we make just a small reminder.
	--! First the process samples the incoming *in_tlast* and *in_tvalid* to generate the corresponding *out_tlast* and *out_tvalid*. Then when there is the handshake between *in_tvalid* and
	--! *in_tready* it extrapolates the file dimension from the header, and it inverts the image if *packet_counter* > 52. (*packet_counter* increases by 4 at each handshake)
	--! Then the process manages the reset of *packet_counter*, if we recognize the falling edge of *in_tlast* we ask ourselves if it is the last "tlast" or not:
	--!  if *packet_counter* and file dimension differs by a quantity lower than or equal to 3, it means that this is the last packet and so we reset *packet_counter*.
	--! Otherwise we do nothing. Notice that the comparison has been done among vectors (*image_length_vct* and *packet_counter_vct*) otherwise some confusion (if we would compare integers) will be created.

	Inversion: process (clk,resetn)
		begin



			if rising_edge(clk) then


				out_tlast <= in_tlast;
				out_tvalid <= in_tvalid;

				if (resetn = '0') then
					inverted_tdata_MSB <= (others => '0');
					inverted_tdata_3rdB <= (others => '0');
					inverted_tdata_2ndB <= (others => '0');
					inverted_tdata_LSB <= (others => '0');

					packet_counter_vct <= (others => '0');

				elsif (in_tvalid = '1' and in_tready = '1') then

					inverted_tdata_MSB <= in_tdata_MSB;
					inverted_tdata_3rdB <= in_tdata_3rdB;
					inverted_tdata_2ndB <= in_tdata_2ndB;
					inverted_tdata_LSB <= in_tdata_LSB;
					
					packet_counter_vct <= std_logic_vector(unsigned(packet_counter_vct) + to_unsigned(4,32));
					tlast_memory	<= in_tlast;


					if (packet_counter_vct = std_logic_vector(to_unsigned(0,32))) then
						image_length_vct(DATA_WIDTH -1 downto 0) <= in_tdata_3rdB;
						image_length_vct(2*DATA_WIDTH -1 downto DATA_WIDTH) <= in_tdata_MSB;


					elsif (packet_counter_vct = std_logic_vector(to_unsigned(4,32))) then
						image_length_vct(4*DATA_WIDTH -1 downto 3*DATA_WIDTH) <= in_tdata_2ndB;
						image_length_vct(3*DATA_WIDTH -1 downto 2*DATA_WIDTH) <= in_tdata_LSB;


					elsif (packet_counter_vct = std_logic_vector(to_unsigned(52,32))) then

						inverted_tdata_MSB <= not(in_tdata_MSB);
						inverted_tdata_3rdB <= not(in_tdata_3rdB);


					elsif (packet_counter_vct > std_logic_vector(to_unsigned(52,32))) then
						inverted_tdata_MSB <= not(in_tdata_MSB);
						inverted_tdata_3rdB <= not(in_tdata_3rdB);
						inverted_tdata_2ndB <= not(in_tdata_2ndB);
						inverted_tdata_LSB <= not(in_tdata_LSB);

					end if;

				else

					if (in_tlast = '0' and tlast_memory = '1') then
						tlast_memory <= '0';

						if ((std_logic_vector(unsigned(packet_counter_vct) - unsigned(image_length_vct)) <= std_logic_vector(to_unsigned(3,32))) and (std_logic_vector(unsigned(packet_counter_vct) - unsigned(image_length_vct)) >= std_logic_vector(to_unsigned(0,32)))) then
							packet_counter_vct <= (others => '0');
						end if;

					end if;

				end if;
			end if;

		end process;
	----------------------------------------------------------------------------

end Behavioral;
