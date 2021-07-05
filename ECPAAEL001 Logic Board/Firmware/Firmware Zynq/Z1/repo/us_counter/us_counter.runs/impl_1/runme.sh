#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=C:/Eda_Tools/Xilinx/SDK/2019.1/bin;C:/Eda_Tools/Xilinx/Vivado/2019.1/ids_lite/ISE/bin/nt64;C:/Eda_Tools/Xilinx/Vivado/2019.1/ids_lite/ISE/lib/nt64:C:/Eda_Tools/Xilinx/Vivado/2019.1/bin
else
  PATH=C:/Eda_Tools/Xilinx/SDK/2019.1/bin;C:/Eda_Tools/Xilinx/Vivado/2019.1/ids_lite/ISE/bin/nt64;C:/Eda_Tools/Xilinx/Vivado/2019.1/ids_lite/ISE/lib/nt64:C:/Eda_Tools/Xilinx/Vivado/2019.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='D:/MW/RTT/VVD/ZED/P0/repo/us_counter/us_counter.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log us_counter.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source us_counter.tcl -notrace

