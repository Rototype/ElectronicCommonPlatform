-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Eda_Tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Eda_Tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Eda_Tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_9 \
  "../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_5 \
  "../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_5 \
  "../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_14 \
  "../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../SM_alg_server.srcs/sources_1/ip/mult_s36_u43_lat7/sim/mult_s36_u43_lat7.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

