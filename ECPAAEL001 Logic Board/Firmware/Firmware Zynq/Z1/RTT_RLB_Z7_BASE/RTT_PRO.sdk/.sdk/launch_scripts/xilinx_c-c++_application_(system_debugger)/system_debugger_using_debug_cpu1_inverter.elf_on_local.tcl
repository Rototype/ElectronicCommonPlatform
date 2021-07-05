connect -url tcp:127.0.0.1:3121
source D:/MW/RTT/VVD/Z/Z1/RTT_RLB_Z7_BASE/RTT_PRO.sdk/system_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 210249895158"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS2 210249895158" && level==0} -index 1
fpga -file D:/MW/RTT/VVD/Z/Z1/RTT_RLB_Z7_BASE/RTT_PRO.sdk/system_wrapper_hw_platform_0/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 210249895158"} -index 0
loadhw -hw D:/MW/RTT/VVD/Z/Z1/RTT_RLB_Z7_BASE/RTT_PRO.sdk/system_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 210249895158"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#1" && jtag_cable_name =~ "Digilent JTAG-HS2 210249895158"} -index 0
dow D:/MW/RTT/VVD/Z/Z1/RTT_RLB_Z7_BASE/RTT_PRO.sdk/CPU1_inverter/Debug/CPU1_inverter.elf
configparams force-mem-access 0
bpadd -addr &main
