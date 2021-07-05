vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_chip2chip_v5_0_6

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_chip2chip_v5_0_6 modelsim_lib/msim/axi_chip2chip_v5_0_6

vlog -work xil_defaultlib -64 -incr -sv \
"C:/Eda_Tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Eda_Tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Eda_Tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Eda_Tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_chip2chip_v5_0_6 -64 -incr \
"../../../ipstatic/ipshared/68d6/hdl/axi_chip2chip_v5_0_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../../axi_chip2chip_0_ex.srcs/sources_1/ip/axi_chip2chip_0/sim/axi_chip2chip_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

