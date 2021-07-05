-makelib ies_lib/xil_defaultlib -sv \
  "C:/Eda_Tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Eda_Tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Eda_Tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Eda_Tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_chip2chip_v5_0_6 \
  "../../../ipstatic/ipshared/68d6/hdl/axi_chip2chip_v5_0_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../axi_chip2chip_0_ex.srcs/sources_1/ip/axi_chip2chip_0/sim/axi_chip2chip_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

