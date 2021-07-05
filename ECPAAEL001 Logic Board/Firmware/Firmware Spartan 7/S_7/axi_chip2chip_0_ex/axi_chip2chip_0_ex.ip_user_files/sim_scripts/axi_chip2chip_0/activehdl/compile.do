vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_chip2chip_v5_0_6

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_chip2chip_v5_0_6 activehdl/axi_chip2chip_v5_0_6

vlog -work xil_defaultlib  -sv2k12 \
"C:/Eda_Tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Eda_Tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Eda_Tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Eda_Tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_chip2chip_v5_0_6  -v2k5 \
"../../../ipstatic/ipshared/68d6/hdl/axi_chip2chip_v5_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../axi_chip2chip_0_ex.srcs/sources_1/ip/axi_chip2chip_0/sim/axi_chip2chip_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

