-makelib ies_lib/xil_defaultlib -sv \
  "C:/Eda_Tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Eda_Tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../sim_DDR.srcs/sources_1/ip/mmcm_z/mmcm_z_clk_wiz.v" \
  "../../../../sim_DDR.srcs/sources_1/ip/mmcm_z/mmcm_z.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

