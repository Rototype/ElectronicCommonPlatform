
################################################################
# This is a generated script based on design: S7
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source S7_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7s100fgga676-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name S7

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:user:areset_sync:1.0\
xilinx.com:ip:axi_bram_ctrl:4.1\
xilinx.com:ip:axi_chip2chip:5.0\
xilinx.com:ip:axi_cdma:4.1\
xilinx.com:ip:axi_gpio:2.0\
xilinx.com:ip:axi_intc:4.1\
xilinx.com:ip:axi_uartlite:2.0\
xilinx.com:ip:blk_mem_gen:8.4\
xilinx.com:ip:util_ds_buf:2.1\
xilinx.com:ip:clk_wiz:6.0\
xilinx.com:ip:mdm:3.2\
xilinx.com:ip:microblaze:11.0\
xilinx.com:ip:proc_sys_reset:5.0\
xilinx.com:ip:util_idelay_ctrl:1.0\
xilinx.com:ip:xlconcat:2.1\
xilinx.com:ip:xlconstant:1.1\
xilinx.com:user:DCM_ctrl:1.0\
xilinx.com:user:DCM_regs:1.0\
xilinx.com:user:PHS_ctrl:1.0\
xilinx.com:user:PHS_regs:1.0\
xilinx.com:user:RT_timebase:1.0\
xilinx.com:user:SM_alg_server:1.0\
xilinx.com:user:SM_ctrl:1.0\
xilinx.com:user:SM_regs:1.0\
xilinx.com:user:SOL_ctrl:1.0\
xilinx.com:user:SOL_regs:1.0\
xilinx.com:ip:lmb_bram_if_cntlr:4.0\
xilinx.com:ip:lmb_v10:3.0\
"

   set list_ips_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

if { $bCheckIPsPassed != 1 } {
  common::send_msg_id "BD_TCL-1003" "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB

  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB


  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: SOL_10
proc create_hier_cell_SOL_10 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_SOL_10() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  create_bd_intf_pin -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL0

  create_bd_intf_pin -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL1

  create_bd_intf_pin -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL2

  create_bd_intf_pin -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL3

  create_bd_intf_pin -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL4

  create_bd_intf_pin -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL5

  create_bd_intf_pin -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL6

  create_bd_intf_pin -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL7

  create_bd_intf_pin -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL8

  create_bd_intf_pin -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL9


  # Create pins
  create_bd_pin -dir I -type clk s00_axi_aclk
  create_bd_pin -dir I -type rst s00_axi_aresetn

  # Create instance: SOL_ctrl_0, and set properties
  set SOL_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SOL_ctrl:1.0 SOL_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SOL_ctrl_0

  # Create instance: SOL_ctrl_1, and set properties
  set SOL_ctrl_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:SOL_ctrl:1.0 SOL_ctrl_1 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SOL_ctrl_1

  # Create instance: SOL_ctrl_2, and set properties
  set SOL_ctrl_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:SOL_ctrl:1.0 SOL_ctrl_2 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SOL_ctrl_2

  # Create instance: SOL_ctrl_3, and set properties
  set SOL_ctrl_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:SOL_ctrl:1.0 SOL_ctrl_3 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SOL_ctrl_3

  # Create instance: SOL_ctrl_4, and set properties
  set SOL_ctrl_4 [ create_bd_cell -type ip -vlnv xilinx.com:user:SOL_ctrl:1.0 SOL_ctrl_4 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SOL_ctrl_4

  # Create instance: SOL_ctrl_5, and set properties
  set SOL_ctrl_5 [ create_bd_cell -type ip -vlnv xilinx.com:user:SOL_ctrl:1.0 SOL_ctrl_5 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SOL_ctrl_5

  # Create instance: SOL_ctrl_6, and set properties
  set SOL_ctrl_6 [ create_bd_cell -type ip -vlnv xilinx.com:user:SOL_ctrl:1.0 SOL_ctrl_6 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SOL_ctrl_6

  # Create instance: SOL_ctrl_7, and set properties
  set SOL_ctrl_7 [ create_bd_cell -type ip -vlnv xilinx.com:user:SOL_ctrl:1.0 SOL_ctrl_7 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SOL_ctrl_7

  # Create instance: SOL_ctrl_8, and set properties
  set SOL_ctrl_8 [ create_bd_cell -type ip -vlnv xilinx.com:user:SOL_ctrl:1.0 SOL_ctrl_8 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SOL_ctrl_8

  # Create instance: SOL_ctrl_9, and set properties
  set SOL_ctrl_9 [ create_bd_cell -type ip -vlnv xilinx.com:user:SOL_ctrl:1.0 SOL_ctrl_9 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SOL_ctrl_9

  # Create instance: SOL_regs_0, and set properties
  set SOL_regs_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SOL_regs:1.0 SOL_regs_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins SOL_regs_0/S00_AXI]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins SOL0] [get_bd_intf_pins SOL_ctrl_0/SOL_IOs]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins SOL1] [get_bd_intf_pins SOL_ctrl_1/SOL_IOs]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins SOL2] [get_bd_intf_pins SOL_ctrl_2/SOL_IOs]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins SOL3] [get_bd_intf_pins SOL_ctrl_3/SOL_IOs]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins SOL4] [get_bd_intf_pins SOL_ctrl_4/SOL_IOs]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins SOL5] [get_bd_intf_pins SOL_ctrl_5/SOL_IOs]
  connect_bd_intf_net -intf_net Conn8 [get_bd_intf_pins SOL6] [get_bd_intf_pins SOL_ctrl_6/SOL_IOs]
  connect_bd_intf_net -intf_net Conn9 [get_bd_intf_pins SOL7] [get_bd_intf_pins SOL_ctrl_7/SOL_IOs]
  connect_bd_intf_net -intf_net Conn10 [get_bd_intf_pins SOL8] [get_bd_intf_pins SOL_ctrl_8/SOL_IOs]
  connect_bd_intf_net -intf_net Conn11 [get_bd_intf_pins SOL9] [get_bd_intf_pins SOL_ctrl_9/SOL_IOs]
  connect_bd_intf_net -intf_net SOL_regs_0_SOL0 [get_bd_intf_pins SOL_ctrl_0/SOL_regs] [get_bd_intf_pins SOL_regs_0/SOL0]
  connect_bd_intf_net -intf_net SOL_regs_0_SOL1 [get_bd_intf_pins SOL_ctrl_1/SOL_regs] [get_bd_intf_pins SOL_regs_0/SOL1]
  connect_bd_intf_net -intf_net SOL_regs_0_SOL2 [get_bd_intf_pins SOL_ctrl_2/SOL_regs] [get_bd_intf_pins SOL_regs_0/SOL2]
  connect_bd_intf_net -intf_net SOL_regs_0_SOL3 [get_bd_intf_pins SOL_ctrl_3/SOL_regs] [get_bd_intf_pins SOL_regs_0/SOL3]
  connect_bd_intf_net -intf_net SOL_regs_0_SOL4 [get_bd_intf_pins SOL_ctrl_4/SOL_regs] [get_bd_intf_pins SOL_regs_0/SOL4]
  connect_bd_intf_net -intf_net SOL_regs_0_SOL5 [get_bd_intf_pins SOL_ctrl_5/SOL_regs] [get_bd_intf_pins SOL_regs_0/SOL5]
  connect_bd_intf_net -intf_net SOL_regs_0_SOL6 [get_bd_intf_pins SOL_ctrl_6/SOL_regs] [get_bd_intf_pins SOL_regs_0/SOL6]
  connect_bd_intf_net -intf_net SOL_regs_0_SOL7 [get_bd_intf_pins SOL_ctrl_7/SOL_regs] [get_bd_intf_pins SOL_regs_0/SOL7]
  connect_bd_intf_net -intf_net SOL_regs_0_SOL8 [get_bd_intf_pins SOL_ctrl_8/SOL_regs] [get_bd_intf_pins SOL_regs_0/SOL8]
  connect_bd_intf_net -intf_net SOL_regs_0_SOL9 [get_bd_intf_pins SOL_ctrl_9/SOL_regs] [get_bd_intf_pins SOL_regs_0/SOL9]

  # Create port connections
  connect_bd_net -net s00_axi_aclk_3_1 [get_bd_pins s00_axi_aclk] [get_bd_pins SOL_ctrl_0/aclk] [get_bd_pins SOL_ctrl_1/aclk] [get_bd_pins SOL_ctrl_2/aclk] [get_bd_pins SOL_ctrl_3/aclk] [get_bd_pins SOL_ctrl_4/aclk] [get_bd_pins SOL_ctrl_5/aclk] [get_bd_pins SOL_ctrl_6/aclk] [get_bd_pins SOL_ctrl_7/aclk] [get_bd_pins SOL_ctrl_8/aclk] [get_bd_pins SOL_ctrl_9/aclk] [get_bd_pins SOL_regs_0/s00_axi_aclk]
  connect_bd_net -net s00_axi_aresetn_3_1 [get_bd_pins s00_axi_aresetn] [get_bd_pins SOL_ctrl_0/aresetn] [get_bd_pins SOL_ctrl_1/aresetn] [get_bd_pins SOL_ctrl_2/aresetn] [get_bd_pins SOL_ctrl_3/aresetn] [get_bd_pins SOL_ctrl_4/aresetn] [get_bd_pins SOL_ctrl_5/aresetn] [get_bd_pins SOL_ctrl_6/aresetn] [get_bd_pins SOL_ctrl_7/aresetn] [get_bd_pins SOL_ctrl_8/aresetn] [get_bd_pins SOL_ctrl_9/aresetn] [get_bd_pins SOL_regs_0/s00_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: SM_20
proc create_hier_cell_SM_20 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_SM_20() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM0

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM1

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM2

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM3

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM4

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM5

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM6

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM7

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM8

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM9

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM10

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM11

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM12

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM13

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM14

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM15

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM16

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM17

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM18

  create_bd_intf_pin -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM19


  # Create pins
  create_bd_pin -dir O -type intr SM_irq
  create_bd_pin -dir O -from 19 -to 0 SM_irqs
  create_bd_pin -dir I -type clk clk200
  create_bd_pin -dir I -type clk s00_axi_aclk
  create_bd_pin -dir I -type rst s00_axi_aresetn

  # Create instance: SM_alg_server_0, and set properties
  set SM_alg_server_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_alg_server:1.0 SM_alg_server_0 ]

  # Create instance: SM_alg_server_1, and set properties
  set SM_alg_server_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_alg_server:1.0 SM_alg_server_1 ]

  # Create instance: SM_ctrl_0, and set properties
  set SM_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_0

  # Create instance: SM_ctrl_1, and set properties
  set SM_ctrl_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_1 ]
  set_property -dict [ list \
   CONFIG.PRESENT {0} \
 ] $SM_ctrl_1

  # Create instance: SM_ctrl_2, and set properties
  set SM_ctrl_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_2 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_2

  # Create instance: SM_ctrl_3, and set properties
  set SM_ctrl_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_3 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_3

  # Create instance: SM_ctrl_4, and set properties
  set SM_ctrl_4 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_4 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_4

  # Create instance: SM_ctrl_5, and set properties
  set SM_ctrl_5 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_5 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_5

  # Create instance: SM_ctrl_6, and set properties
  set SM_ctrl_6 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_6 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_6

  # Create instance: SM_ctrl_7, and set properties
  set SM_ctrl_7 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_7 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_7

  # Create instance: SM_ctrl_8, and set properties
  set SM_ctrl_8 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_8 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_8

  # Create instance: SM_ctrl_9, and set properties
  set SM_ctrl_9 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_9 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_9

  # Create instance: SM_ctrl_10, and set properties
  set SM_ctrl_10 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_10 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_10

  # Create instance: SM_ctrl_11, and set properties
  set SM_ctrl_11 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_11 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_11

  # Create instance: SM_ctrl_12, and set properties
  set SM_ctrl_12 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_12 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_12

  # Create instance: SM_ctrl_13, and set properties
  set SM_ctrl_13 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_13 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_13

  # Create instance: SM_ctrl_14, and set properties
  set SM_ctrl_14 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_14 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_14

  # Create instance: SM_ctrl_15, and set properties
  set SM_ctrl_15 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_15 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_15

  # Create instance: SM_ctrl_16, and set properties
  set SM_ctrl_16 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_16 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_16

  # Create instance: SM_ctrl_17, and set properties
  set SM_ctrl_17 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_17 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_17

  # Create instance: SM_ctrl_18, and set properties
  set SM_ctrl_18 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_18 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_18

  # Create instance: SM_ctrl_19, and set properties
  set SM_ctrl_19 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_ctrl:1.0 SM_ctrl_19 ]
  set_property -dict [ list \
   CONFIG.PRESENT {1} \
 ] $SM_ctrl_19

  # Create instance: SM_regs_0, and set properties
  set SM_regs_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SM_regs:1.0 SM_regs_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins SM_regs_0/S00_AXI]
  connect_bd_intf_net -intf_net SM0 [get_bd_intf_pins SM0] [get_bd_intf_pins SM_ctrl_0/SM_IO]
  connect_bd_intf_net -intf_net SM1 [get_bd_intf_pins SM1] [get_bd_intf_pins SM_ctrl_1/SM_IO]
  connect_bd_intf_net -intf_net SM2 [get_bd_intf_pins SM2] [get_bd_intf_pins SM_ctrl_2/SM_IO]
  connect_bd_intf_net -intf_net SM3 [get_bd_intf_pins SM3] [get_bd_intf_pins SM_ctrl_3/SM_IO]
  connect_bd_intf_net -intf_net SM4 [get_bd_intf_pins SM4] [get_bd_intf_pins SM_ctrl_4/SM_IO]
  connect_bd_intf_net -intf_net SM5 [get_bd_intf_pins SM5] [get_bd_intf_pins SM_ctrl_5/SM_IO]
  connect_bd_intf_net -intf_net SM6 [get_bd_intf_pins SM6] [get_bd_intf_pins SM_ctrl_6/SM_IO]
  connect_bd_intf_net -intf_net SM7 [get_bd_intf_pins SM7] [get_bd_intf_pins SM_ctrl_7/SM_IO]
  connect_bd_intf_net -intf_net SM8 [get_bd_intf_pins SM8] [get_bd_intf_pins SM_ctrl_8/SM_IO]
  connect_bd_intf_net -intf_net SM9 [get_bd_intf_pins SM9] [get_bd_intf_pins SM_ctrl_9/SM_IO]
  connect_bd_intf_net -intf_net SM10 [get_bd_intf_pins SM10] [get_bd_intf_pins SM_ctrl_10/SM_IO]
  connect_bd_intf_net -intf_net SM13 [get_bd_intf_pins SM13] [get_bd_intf_pins SM_ctrl_13/SM_IO]
  connect_bd_intf_net -intf_net SM14 [get_bd_intf_pins SM14] [get_bd_intf_pins SM_ctrl_14/SM_IO]
  connect_bd_intf_net -intf_net SM15 [get_bd_intf_pins SM15] [get_bd_intf_pins SM_ctrl_15/SM_IO]
  connect_bd_intf_net -intf_net SM16 [get_bd_intf_pins SM16] [get_bd_intf_pins SM_ctrl_16/SM_IO]
  connect_bd_intf_net -intf_net SM17 [get_bd_intf_pins SM17] [get_bd_intf_pins SM_ctrl_17/SM_IO]
  connect_bd_intf_net -intf_net SM18 [get_bd_intf_pins SM18] [get_bd_intf_pins SM_ctrl_18/SM_IO]
  connect_bd_intf_net -intf_net SM19 [get_bd_intf_pins SM19] [get_bd_intf_pins SM_ctrl_19/SM_IO]
  connect_bd_intf_net -intf_net SM_alg_server_0_smc_0 [get_bd_intf_pins SM_alg_server_0/smc_0] [get_bd_intf_pins SM_ctrl_0/smc]
  connect_bd_intf_net -intf_net SM_alg_server_0_smc_1 [get_bd_intf_pins SM_alg_server_0/smc_1] [get_bd_intf_pins SM_ctrl_1/smc]
  connect_bd_intf_net -intf_net SM_alg_server_0_smc_2 [get_bd_intf_pins SM_alg_server_0/smc_2] [get_bd_intf_pins SM_ctrl_2/smc]
  connect_bd_intf_net -intf_net SM_alg_server_0_smc_3 [get_bd_intf_pins SM_alg_server_0/smc_3] [get_bd_intf_pins SM_ctrl_3/smc]
  connect_bd_intf_net -intf_net SM_alg_server_0_smc_4 [get_bd_intf_pins SM_alg_server_0/smc_4] [get_bd_intf_pins SM_ctrl_4/smc]
  connect_bd_intf_net -intf_net SM_alg_server_0_smc_5 [get_bd_intf_pins SM_alg_server_0/smc_5] [get_bd_intf_pins SM_ctrl_5/smc]
  connect_bd_intf_net -intf_net SM_alg_server_0_smc_6 [get_bd_intf_pins SM_alg_server_0/smc_6] [get_bd_intf_pins SM_ctrl_6/smc]
  connect_bd_intf_net -intf_net SM_alg_server_0_smc_7 [get_bd_intf_pins SM_alg_server_0/smc_7] [get_bd_intf_pins SM_ctrl_7/smc]
  connect_bd_intf_net -intf_net SM_alg_server_0_smc_8 [get_bd_intf_pins SM_alg_server_0/smc_8] [get_bd_intf_pins SM_ctrl_8/smc]
  connect_bd_intf_net -intf_net SM_alg_server_0_smc_9 [get_bd_intf_pins SM_alg_server_0/smc_9] [get_bd_intf_pins SM_ctrl_9/smc]
  connect_bd_intf_net -intf_net SM_alg_server_1_smc_0 [get_bd_intf_pins SM_alg_server_1/smc_0] [get_bd_intf_pins SM_ctrl_10/smc]
  connect_bd_intf_net -intf_net SM_alg_server_1_smc_1 [get_bd_intf_pins SM_alg_server_1/smc_1] [get_bd_intf_pins SM_ctrl_11/smc]
  connect_bd_intf_net -intf_net SM_alg_server_1_smc_2 [get_bd_intf_pins SM_alg_server_1/smc_2] [get_bd_intf_pins SM_ctrl_12/smc]
  connect_bd_intf_net -intf_net SM_alg_server_1_smc_3 [get_bd_intf_pins SM_alg_server_1/smc_3] [get_bd_intf_pins SM_ctrl_13/smc]
  connect_bd_intf_net -intf_net SM_alg_server_1_smc_4 [get_bd_intf_pins SM_alg_server_1/smc_4] [get_bd_intf_pins SM_ctrl_14/smc]
  connect_bd_intf_net -intf_net SM_alg_server_1_smc_5 [get_bd_intf_pins SM_alg_server_1/smc_5] [get_bd_intf_pins SM_ctrl_15/smc]
  connect_bd_intf_net -intf_net SM_alg_server_1_smc_6 [get_bd_intf_pins SM_alg_server_1/smc_6] [get_bd_intf_pins SM_ctrl_16/smc]
  connect_bd_intf_net -intf_net SM_alg_server_1_smc_7 [get_bd_intf_pins SM_alg_server_1/smc_7] [get_bd_intf_pins SM_ctrl_17/smc]
  connect_bd_intf_net -intf_net SM_alg_server_1_smc_8 [get_bd_intf_pins SM_alg_server_1/smc_8] [get_bd_intf_pins SM_ctrl_18/smc]
  connect_bd_intf_net -intf_net SM_alg_server_1_smc_9 [get_bd_intf_pins SM_alg_server_1/smc_9] [get_bd_intf_pins SM_ctrl_19/smc]
  connect_bd_intf_net -intf_net SM_ctrl_11_SM_IO [get_bd_intf_pins SM11] [get_bd_intf_pins SM_ctrl_11/SM_IO]
  connect_bd_intf_net -intf_net SM_ctrl_12_SM_IO [get_bd_intf_pins SM12] [get_bd_intf_pins SM_ctrl_12/SM_IO]
  connect_bd_intf_net -intf_net SM_regs_0_SM0 [get_bd_intf_pins SM_ctrl_0/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM0]
  connect_bd_intf_net -intf_net SM_regs_0_SM1 [get_bd_intf_pins SM_ctrl_1/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM1]
  connect_bd_intf_net -intf_net SM_regs_0_SM2 [get_bd_intf_pins SM_ctrl_2/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM2]
  connect_bd_intf_net -intf_net SM_regs_0_SM3 [get_bd_intf_pins SM_ctrl_3/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM3]
  connect_bd_intf_net -intf_net SM_regs_0_SM4 [get_bd_intf_pins SM_ctrl_4/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM4]
  connect_bd_intf_net -intf_net SM_regs_0_SM5 [get_bd_intf_pins SM_ctrl_5/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM5]
  connect_bd_intf_net -intf_net SM_regs_0_SM6 [get_bd_intf_pins SM_ctrl_6/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM6]
  connect_bd_intf_net -intf_net SM_regs_0_SM7 [get_bd_intf_pins SM_ctrl_7/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM7]
  connect_bd_intf_net -intf_net SM_regs_0_SM8 [get_bd_intf_pins SM_ctrl_8/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM8]
  connect_bd_intf_net -intf_net SM_regs_0_SM9 [get_bd_intf_pins SM_ctrl_9/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM9]
  connect_bd_intf_net -intf_net SM_regs_0_SM10 [get_bd_intf_pins SM_ctrl_10/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM10]
  connect_bd_intf_net -intf_net SM_regs_0_SM11 [get_bd_intf_pins SM_ctrl_11/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM11]
  connect_bd_intf_net -intf_net SM_regs_0_SM12 [get_bd_intf_pins SM_ctrl_12/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM12]
  connect_bd_intf_net -intf_net SM_regs_0_SM13 [get_bd_intf_pins SM_ctrl_13/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM13]
  connect_bd_intf_net -intf_net SM_regs_0_SM14 [get_bd_intf_pins SM_ctrl_14/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM14]
  connect_bd_intf_net -intf_net SM_regs_0_SM15 [get_bd_intf_pins SM_ctrl_15/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM15]
  connect_bd_intf_net -intf_net SM_regs_0_SM16 [get_bd_intf_pins SM_ctrl_16/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM16]
  connect_bd_intf_net -intf_net SM_regs_0_SM17 [get_bd_intf_pins SM_ctrl_17/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM17]
  connect_bd_intf_net -intf_net SM_regs_0_SM18 [get_bd_intf_pins SM_ctrl_18/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM18]
  connect_bd_intf_net -intf_net SM_regs_0_SM19 [get_bd_intf_pins SM_ctrl_19/SM_reg_if] [get_bd_intf_pins SM_regs_0/SM19]

  # Create port connections
  connect_bd_net -net SM_regs_0_SM_irq [get_bd_pins SM_irq] [get_bd_pins SM_regs_0/SM_irq]
  connect_bd_net -net SM_regs_0_SM_irqs [get_bd_pins SM_irqs] [get_bd_pins SM_regs_0/SM_irqs]
  connect_bd_net -net clk200 [get_bd_pins clk200] [get_bd_pins SM_alg_server_0/clk200] [get_bd_pins SM_alg_server_1/clk200] [get_bd_pins SM_ctrl_0/clk200] [get_bd_pins SM_ctrl_1/clk200] [get_bd_pins SM_ctrl_10/clk200] [get_bd_pins SM_ctrl_11/clk200] [get_bd_pins SM_ctrl_12/clk200] [get_bd_pins SM_ctrl_13/clk200] [get_bd_pins SM_ctrl_14/clk200] [get_bd_pins SM_ctrl_15/clk200] [get_bd_pins SM_ctrl_16/clk200] [get_bd_pins SM_ctrl_17/clk200] [get_bd_pins SM_ctrl_18/clk200] [get_bd_pins SM_ctrl_19/clk200] [get_bd_pins SM_ctrl_2/clk200] [get_bd_pins SM_ctrl_3/clk200] [get_bd_pins SM_ctrl_4/clk200] [get_bd_pins SM_ctrl_5/clk200] [get_bd_pins SM_ctrl_6/clk200] [get_bd_pins SM_ctrl_7/clk200] [get_bd_pins SM_ctrl_8/clk200] [get_bd_pins SM_ctrl_9/clk200]
  connect_bd_net -net s00_axi_aclk_0_1 [get_bd_pins s00_axi_aclk] [get_bd_pins SM_alg_server_0/aclk] [get_bd_pins SM_alg_server_1/aclk] [get_bd_pins SM_ctrl_0/aclk] [get_bd_pins SM_ctrl_1/aclk] [get_bd_pins SM_ctrl_10/aclk] [get_bd_pins SM_ctrl_11/aclk] [get_bd_pins SM_ctrl_12/aclk] [get_bd_pins SM_ctrl_13/aclk] [get_bd_pins SM_ctrl_14/aclk] [get_bd_pins SM_ctrl_15/aclk] [get_bd_pins SM_ctrl_16/aclk] [get_bd_pins SM_ctrl_17/aclk] [get_bd_pins SM_ctrl_18/aclk] [get_bd_pins SM_ctrl_19/aclk] [get_bd_pins SM_ctrl_2/aclk] [get_bd_pins SM_ctrl_3/aclk] [get_bd_pins SM_ctrl_4/aclk] [get_bd_pins SM_ctrl_5/aclk] [get_bd_pins SM_ctrl_6/aclk] [get_bd_pins SM_ctrl_7/aclk] [get_bd_pins SM_ctrl_8/aclk] [get_bd_pins SM_ctrl_9/aclk] [get_bd_pins SM_regs_0/s00_axi_aclk]
  connect_bd_net -net s00_axi_aresetn_0_1 [get_bd_pins s00_axi_aresetn] [get_bd_pins SM_alg_server_0/aresetn] [get_bd_pins SM_alg_server_1/aresetn] [get_bd_pins SM_ctrl_0/aresetn] [get_bd_pins SM_ctrl_1/aresetn] [get_bd_pins SM_ctrl_10/aresetn] [get_bd_pins SM_ctrl_11/aresetn] [get_bd_pins SM_ctrl_12/aresetn] [get_bd_pins SM_ctrl_13/aresetn] [get_bd_pins SM_ctrl_14/aresetn] [get_bd_pins SM_ctrl_15/aresetn] [get_bd_pins SM_ctrl_16/aresetn] [get_bd_pins SM_ctrl_17/aresetn] [get_bd_pins SM_ctrl_18/aresetn] [get_bd_pins SM_ctrl_19/aresetn] [get_bd_pins SM_ctrl_2/aresetn] [get_bd_pins SM_ctrl_3/aresetn] [get_bd_pins SM_ctrl_4/aresetn] [get_bd_pins SM_ctrl_5/aresetn] [get_bd_pins SM_ctrl_6/aresetn] [get_bd_pins SM_ctrl_7/aresetn] [get_bd_pins SM_ctrl_8/aresetn] [get_bd_pins SM_ctrl_9/aresetn] [get_bd_pins SM_regs_0/s00_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: PHS_50
proc create_hier_cell_PHS_50 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_PHS_50() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS0

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS1

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS2

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS3

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS4

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS5

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS6

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS7

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS8

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS9

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS10

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS11

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS12

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS13

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS14

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS15

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS16

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS17

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS18

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS19

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS20

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS21

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS22

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS23

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS24

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS25

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS26

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS27

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS28

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS29

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS30

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS31

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS32

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS33

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS34

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS35

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS36

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS37

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS38

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS39

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS40

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS41

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS42

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS43

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS44

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS45

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS46

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS47

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS48

  create_bd_intf_pin -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS49

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI


  # Create pins
  create_bd_pin -dir O PHS_ena_dbg
  create_bd_pin -dir O PHS_irq_L2S_0
  create_bd_pin -dir O PHS_irq_L2S_1
  create_bd_pin -dir O PHS_irq_S2L_0
  create_bd_pin -dir O PHS_irq_S2L_1
  create_bd_pin -dir O -from 24 -to 0 PHS_irqs_L2S_0
  create_bd_pin -dir O -from 24 -to 0 PHS_irqs_L2S_1
  create_bd_pin -dir O -from 24 -to 0 PHS_irqs_S2L_0
  create_bd_pin -dir O -from 24 -to 0 PHS_irqs_S2L_1
  create_bd_pin -dir I -type clk s00_axi_aclk
  create_bd_pin -dir I -type rst s00_axi_aresetn

  # Create instance: PHS_ctrl_0, and set properties
  set PHS_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_0 ]

  # Create instance: PHS_ctrl_1, and set properties
  set PHS_ctrl_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_1 ]

  # Create instance: PHS_ctrl_2, and set properties
  set PHS_ctrl_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_2 ]

  # Create instance: PHS_ctrl_3, and set properties
  set PHS_ctrl_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_3 ]

  # Create instance: PHS_ctrl_4, and set properties
  set PHS_ctrl_4 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_4 ]

  # Create instance: PHS_ctrl_5, and set properties
  set PHS_ctrl_5 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_5 ]

  # Create instance: PHS_ctrl_6, and set properties
  set PHS_ctrl_6 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_6 ]

  # Create instance: PHS_ctrl_7, and set properties
  set PHS_ctrl_7 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_7 ]

  # Create instance: PHS_ctrl_8, and set properties
  set PHS_ctrl_8 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_8 ]

  # Create instance: PHS_ctrl_9, and set properties
  set PHS_ctrl_9 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_9 ]

  # Create instance: PHS_ctrl_10, and set properties
  set PHS_ctrl_10 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_10 ]

  # Create instance: PHS_ctrl_11, and set properties
  set PHS_ctrl_11 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_11 ]

  # Create instance: PHS_ctrl_12, and set properties
  set PHS_ctrl_12 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_12 ]

  # Create instance: PHS_ctrl_13, and set properties
  set PHS_ctrl_13 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_13 ]

  # Create instance: PHS_ctrl_14, and set properties
  set PHS_ctrl_14 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_14 ]

  # Create instance: PHS_ctrl_15, and set properties
  set PHS_ctrl_15 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_15 ]

  # Create instance: PHS_ctrl_16, and set properties
  set PHS_ctrl_16 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_16 ]

  # Create instance: PHS_ctrl_17, and set properties
  set PHS_ctrl_17 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_17 ]

  # Create instance: PHS_ctrl_18, and set properties
  set PHS_ctrl_18 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_18 ]

  # Create instance: PHS_ctrl_19, and set properties
  set PHS_ctrl_19 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_19 ]

  # Create instance: PHS_ctrl_20, and set properties
  set PHS_ctrl_20 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_20 ]

  # Create instance: PHS_ctrl_21, and set properties
  set PHS_ctrl_21 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_21 ]

  # Create instance: PHS_ctrl_22, and set properties
  set PHS_ctrl_22 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_22 ]

  # Create instance: PHS_ctrl_23, and set properties
  set PHS_ctrl_23 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_23 ]

  # Create instance: PHS_ctrl_24, and set properties
  set PHS_ctrl_24 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_24 ]

  # Create instance: PHS_ctrl_25, and set properties
  set PHS_ctrl_25 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_25 ]

  # Create instance: PHS_ctrl_26, and set properties
  set PHS_ctrl_26 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_26 ]

  # Create instance: PHS_ctrl_27, and set properties
  set PHS_ctrl_27 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_27 ]

  # Create instance: PHS_ctrl_28, and set properties
  set PHS_ctrl_28 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_28 ]

  # Create instance: PHS_ctrl_29, and set properties
  set PHS_ctrl_29 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_29 ]

  # Create instance: PHS_ctrl_30, and set properties
  set PHS_ctrl_30 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_30 ]

  # Create instance: PHS_ctrl_31, and set properties
  set PHS_ctrl_31 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_31 ]

  # Create instance: PHS_ctrl_32, and set properties
  set PHS_ctrl_32 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_32 ]

  # Create instance: PHS_ctrl_33, and set properties
  set PHS_ctrl_33 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_33 ]

  # Create instance: PHS_ctrl_34, and set properties
  set PHS_ctrl_34 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_34 ]

  # Create instance: PHS_ctrl_35, and set properties
  set PHS_ctrl_35 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_35 ]

  # Create instance: PHS_ctrl_36, and set properties
  set PHS_ctrl_36 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_36 ]

  # Create instance: PHS_ctrl_37, and set properties
  set PHS_ctrl_37 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_37 ]

  # Create instance: PHS_ctrl_38, and set properties
  set PHS_ctrl_38 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_38 ]

  # Create instance: PHS_ctrl_39, and set properties
  set PHS_ctrl_39 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_39 ]

  # Create instance: PHS_ctrl_40, and set properties
  set PHS_ctrl_40 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_40 ]

  # Create instance: PHS_ctrl_41, and set properties
  set PHS_ctrl_41 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_41 ]

  # Create instance: PHS_ctrl_42, and set properties
  set PHS_ctrl_42 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_42 ]

  # Create instance: PHS_ctrl_43, and set properties
  set PHS_ctrl_43 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_43 ]

  # Create instance: PHS_ctrl_44, and set properties
  set PHS_ctrl_44 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_44 ]

  # Create instance: PHS_ctrl_45, and set properties
  set PHS_ctrl_45 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_45 ]

  # Create instance: PHS_ctrl_46, and set properties
  set PHS_ctrl_46 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_46 ]

  # Create instance: PHS_ctrl_47, and set properties
  set PHS_ctrl_47 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_47 ]

  # Create instance: PHS_ctrl_48, and set properties
  set PHS_ctrl_48 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_48 ]

  # Create instance: PHS_ctrl_49, and set properties
  set PHS_ctrl_49 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_ctrl:1.0 PHS_ctrl_49 ]

  # Create instance: PHS_regs_0, and set properties
  set PHS_regs_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:PHS_regs:1.0 PHS_regs_0 ]

  # Create instance: RT_timebase_0, and set properties
  set RT_timebase_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:RT_timebase:1.0 RT_timebase_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins PHS_regs_0/S00_AXI]
  connect_bd_intf_net -intf_net PHS_ctrl_0_PHS_ios [get_bd_intf_pins PHS0] [get_bd_intf_pins PHS_ctrl_0/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_10_PHS_ios [get_bd_intf_pins PHS10] [get_bd_intf_pins PHS_ctrl_10/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_11_PHS_ios [get_bd_intf_pins PHS11] [get_bd_intf_pins PHS_ctrl_11/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_12_PHS_ios [get_bd_intf_pins PHS12] [get_bd_intf_pins PHS_ctrl_12/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_13_PHS_ios [get_bd_intf_pins PHS13] [get_bd_intf_pins PHS_ctrl_13/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_14_PHS_ios [get_bd_intf_pins PHS14] [get_bd_intf_pins PHS_ctrl_14/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_15_PHS_ios [get_bd_intf_pins PHS15] [get_bd_intf_pins PHS_ctrl_15/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_16_PHS_ios [get_bd_intf_pins PHS16] [get_bd_intf_pins PHS_ctrl_16/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_17_PHS_ios [get_bd_intf_pins PHS17] [get_bd_intf_pins PHS_ctrl_17/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_18_PHS_ios [get_bd_intf_pins PHS18] [get_bd_intf_pins PHS_ctrl_18/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_19_PHS_ios [get_bd_intf_pins PHS19] [get_bd_intf_pins PHS_ctrl_19/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_1_PHS_ios [get_bd_intf_pins PHS1] [get_bd_intf_pins PHS_ctrl_1/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_20_PHS_ios [get_bd_intf_pins PHS20] [get_bd_intf_pins PHS_ctrl_20/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_21_PHS_ios [get_bd_intf_pins PHS21] [get_bd_intf_pins PHS_ctrl_21/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_22_PHS_ios [get_bd_intf_pins PHS22] [get_bd_intf_pins PHS_ctrl_22/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_23_PHS_ios [get_bd_intf_pins PHS23] [get_bd_intf_pins PHS_ctrl_23/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_24_PHS_ios [get_bd_intf_pins PHS24] [get_bd_intf_pins PHS_ctrl_24/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_25_PHS_ios [get_bd_intf_pins PHS25] [get_bd_intf_pins PHS_ctrl_25/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_26_PHS_ios [get_bd_intf_pins PHS26] [get_bd_intf_pins PHS_ctrl_26/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_27_PHS_ios [get_bd_intf_pins PHS27] [get_bd_intf_pins PHS_ctrl_27/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_28_PHS_ios [get_bd_intf_pins PHS28] [get_bd_intf_pins PHS_ctrl_28/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_29_PHS_ios [get_bd_intf_pins PHS29] [get_bd_intf_pins PHS_ctrl_29/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_2_PHS_ios [get_bd_intf_pins PHS2] [get_bd_intf_pins PHS_ctrl_2/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_30_PHS_ios [get_bd_intf_pins PHS30] [get_bd_intf_pins PHS_ctrl_30/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_31_PHS_ios [get_bd_intf_pins PHS31] [get_bd_intf_pins PHS_ctrl_31/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_32_PHS_ios [get_bd_intf_pins PHS32] [get_bd_intf_pins PHS_ctrl_32/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_33_PHS_ios [get_bd_intf_pins PHS33] [get_bd_intf_pins PHS_ctrl_33/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_34_PHS_ios [get_bd_intf_pins PHS34] [get_bd_intf_pins PHS_ctrl_34/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_35_PHS_ios [get_bd_intf_pins PHS35] [get_bd_intf_pins PHS_ctrl_35/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_36_PHS_ios [get_bd_intf_pins PHS36] [get_bd_intf_pins PHS_ctrl_36/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_37_PHS_ios [get_bd_intf_pins PHS37] [get_bd_intf_pins PHS_ctrl_37/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_38_PHS_ios [get_bd_intf_pins PHS38] [get_bd_intf_pins PHS_ctrl_38/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_39_PHS_ios [get_bd_intf_pins PHS39] [get_bd_intf_pins PHS_ctrl_39/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_3_PHS_ios [get_bd_intf_pins PHS3] [get_bd_intf_pins PHS_ctrl_3/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_40_PHS_ios [get_bd_intf_pins PHS40] [get_bd_intf_pins PHS_ctrl_40/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_41_PHS_ios [get_bd_intf_pins PHS41] [get_bd_intf_pins PHS_ctrl_41/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_42_PHS_ios [get_bd_intf_pins PHS42] [get_bd_intf_pins PHS_ctrl_42/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_43_PHS_ios [get_bd_intf_pins PHS43] [get_bd_intf_pins PHS_ctrl_43/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_44_PHS_ios [get_bd_intf_pins PHS44] [get_bd_intf_pins PHS_ctrl_44/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_45_PHS_ios [get_bd_intf_pins PHS45] [get_bd_intf_pins PHS_ctrl_45/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_46_PHS_ios [get_bd_intf_pins PHS46] [get_bd_intf_pins PHS_ctrl_46/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_47_PHS_ios [get_bd_intf_pins PHS47] [get_bd_intf_pins PHS_ctrl_47/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_48_PHS_ios [get_bd_intf_pins PHS48] [get_bd_intf_pins PHS_ctrl_48/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_49_PHS_ios [get_bd_intf_pins PHS49] [get_bd_intf_pins PHS_ctrl_49/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_4_PHS_ios [get_bd_intf_pins PHS4] [get_bd_intf_pins PHS_ctrl_4/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_5_PHS_ios [get_bd_intf_pins PHS5] [get_bd_intf_pins PHS_ctrl_5/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_6_PHS_ios [get_bd_intf_pins PHS6] [get_bd_intf_pins PHS_ctrl_6/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_7_PHS_ios [get_bd_intf_pins PHS7] [get_bd_intf_pins PHS_ctrl_7/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_8_PHS_ios [get_bd_intf_pins PHS8] [get_bd_intf_pins PHS_ctrl_8/PHS_ios]
  connect_bd_intf_net -intf_net PHS_ctrl_9_PHS_ios [get_bd_intf_pins PHS9] [get_bd_intf_pins PHS_ctrl_9/PHS_ios]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS0_regs [get_bd_intf_pins PHS_ctrl_0/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS0_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS10_regs [get_bd_intf_pins PHS_ctrl_10/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS10_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS11_regs [get_bd_intf_pins PHS_ctrl_11/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS11_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS12_regs [get_bd_intf_pins PHS_ctrl_12/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS12_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS13_regs [get_bd_intf_pins PHS_ctrl_13/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS13_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS14_regs [get_bd_intf_pins PHS_ctrl_14/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS14_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS15_regs [get_bd_intf_pins PHS_ctrl_15/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS15_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS16_regs [get_bd_intf_pins PHS_ctrl_16/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS16_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS17_regs [get_bd_intf_pins PHS_ctrl_17/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS17_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS18_regs [get_bd_intf_pins PHS_ctrl_18/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS18_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS19_regs [get_bd_intf_pins PHS_ctrl_19/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS19_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS1_regs [get_bd_intf_pins PHS_ctrl_1/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS1_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS20_regs [get_bd_intf_pins PHS_ctrl_20/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS20_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS21_regs [get_bd_intf_pins PHS_ctrl_21/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS21_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS22_regs [get_bd_intf_pins PHS_ctrl_22/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS22_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS23_regs [get_bd_intf_pins PHS_ctrl_23/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS23_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS24_regs [get_bd_intf_pins PHS_ctrl_24/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS24_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS25_regs [get_bd_intf_pins PHS_ctrl_25/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS25_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS26_regs [get_bd_intf_pins PHS_ctrl_26/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS26_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS27_regs [get_bd_intf_pins PHS_ctrl_27/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS27_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS28_regs [get_bd_intf_pins PHS_ctrl_28/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS28_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS29_regs [get_bd_intf_pins PHS_ctrl_29/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS29_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS2_regs [get_bd_intf_pins PHS_ctrl_2/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS2_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS30_regs [get_bd_intf_pins PHS_ctrl_30/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS30_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS31_regs [get_bd_intf_pins PHS_ctrl_31/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS31_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS32_regs [get_bd_intf_pins PHS_ctrl_32/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS32_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS33_regs [get_bd_intf_pins PHS_ctrl_33/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS33_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS34_regs [get_bd_intf_pins PHS_ctrl_34/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS34_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS35_regs [get_bd_intf_pins PHS_ctrl_35/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS35_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS36_regs [get_bd_intf_pins PHS_ctrl_36/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS36_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS37_regs [get_bd_intf_pins PHS_ctrl_37/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS37_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS38_regs [get_bd_intf_pins PHS_ctrl_38/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS38_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS39_regs [get_bd_intf_pins PHS_ctrl_39/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS39_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS3_regs [get_bd_intf_pins PHS_ctrl_3/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS3_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS40_regs [get_bd_intf_pins PHS_ctrl_40/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS40_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS41_regs [get_bd_intf_pins PHS_ctrl_41/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS41_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS42_regs [get_bd_intf_pins PHS_ctrl_42/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS42_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS43_regs [get_bd_intf_pins PHS_ctrl_43/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS43_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS44_regs [get_bd_intf_pins PHS_ctrl_44/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS44_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS45_regs [get_bd_intf_pins PHS_ctrl_45/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS45_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS46_regs [get_bd_intf_pins PHS_ctrl_46/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS46_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS47_regs [get_bd_intf_pins PHS_ctrl_47/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS47_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS48_regs [get_bd_intf_pins PHS_ctrl_48/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS48_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS49_regs [get_bd_intf_pins PHS_ctrl_49/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS49_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS4_regs [get_bd_intf_pins PHS_ctrl_4/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS4_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS5_regs [get_bd_intf_pins PHS_ctrl_5/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS5_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS6_regs [get_bd_intf_pins PHS_ctrl_6/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS6_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS7_regs [get_bd_intf_pins PHS_ctrl_7/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS7_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS8_regs [get_bd_intf_pins PHS_ctrl_8/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS8_regs]
  connect_bd_intf_net -intf_net PHS_regs_0_PHS9_regs [get_bd_intf_pins PHS_ctrl_9/PHS_regs] [get_bd_intf_pins PHS_regs_0/PHS9_regs]

  # Create port connections
  connect_bd_net -net PHS_ctrl_0_ena_out [get_bd_pins PHS_ctrl_0/ena_out] [get_bd_pins PHS_ctrl_1/ena_in]
  connect_bd_net -net PHS_ctrl_10_ena_out [get_bd_pins PHS_ctrl_10/ena_out] [get_bd_pins PHS_ctrl_11/ena_in]
  connect_bd_net -net PHS_ctrl_11_ena_out [get_bd_pins PHS_ctrl_11/ena_out] [get_bd_pins PHS_ctrl_12/ena_in]
  connect_bd_net -net PHS_ctrl_12_ena_out [get_bd_pins PHS_ctrl_12/ena_out] [get_bd_pins PHS_ctrl_13/ena_in]
  connect_bd_net -net PHS_ctrl_13_ena_out [get_bd_pins PHS_ctrl_13/ena_out] [get_bd_pins PHS_ctrl_14/ena_in]
  connect_bd_net -net PHS_ctrl_14_ena_out [get_bd_pins PHS_ctrl_14/ena_out] [get_bd_pins PHS_ctrl_15/ena_in]
  connect_bd_net -net PHS_ctrl_15_ena_out [get_bd_pins PHS_ctrl_15/ena_out] [get_bd_pins PHS_ctrl_16/ena_in]
  connect_bd_net -net PHS_ctrl_16_ena_out [get_bd_pins PHS_ctrl_16/ena_out] [get_bd_pins PHS_ctrl_17/ena_in]
  connect_bd_net -net PHS_ctrl_17_ena_out [get_bd_pins PHS_ctrl_17/ena_out] [get_bd_pins PHS_ctrl_18/ena_in]
  connect_bd_net -net PHS_ctrl_18_ena_out [get_bd_pins PHS_ctrl_18/ena_out] [get_bd_pins PHS_ctrl_19/ena_in]
  connect_bd_net -net PHS_ctrl_19_ena_out [get_bd_pins PHS_ctrl_19/ena_out] [get_bd_pins PHS_ctrl_20/ena_in]
  connect_bd_net -net PHS_ctrl_1_ena_out [get_bd_pins PHS_ctrl_1/ena_out] [get_bd_pins PHS_ctrl_2/ena_in]
  connect_bd_net -net PHS_ctrl_20_ena_out [get_bd_pins PHS_ctrl_20/ena_out] [get_bd_pins PHS_ctrl_21/ena_in]
  connect_bd_net -net PHS_ctrl_21_ena_out [get_bd_pins PHS_ctrl_21/ena_out] [get_bd_pins PHS_ctrl_22/ena_in]
  connect_bd_net -net PHS_ctrl_22_ena_out [get_bd_pins PHS_ctrl_22/ena_out] [get_bd_pins PHS_ctrl_23/ena_in]
  connect_bd_net -net PHS_ctrl_23_ena_out [get_bd_pins PHS_ctrl_23/ena_out] [get_bd_pins PHS_ctrl_24/ena_in]
  connect_bd_net -net PHS_ctrl_24_ena_out [get_bd_pins PHS_ctrl_24/ena_out] [get_bd_pins PHS_ctrl_25/ena_in]
  connect_bd_net -net PHS_ctrl_25_ena_out [get_bd_pins PHS_ctrl_25/ena_out] [get_bd_pins PHS_ctrl_26/ena_in]
  connect_bd_net -net PHS_ctrl_26_ena_out [get_bd_pins PHS_ctrl_26/ena_out] [get_bd_pins PHS_ctrl_27/ena_in]
  connect_bd_net -net PHS_ctrl_27_ena_out [get_bd_pins PHS_ctrl_27/ena_out] [get_bd_pins PHS_ctrl_28/ena_in]
  connect_bd_net -net PHS_ctrl_28_ena_out [get_bd_pins PHS_ctrl_28/ena_out] [get_bd_pins PHS_ctrl_29/ena_in]
  connect_bd_net -net PHS_ctrl_29_ena_out [get_bd_pins PHS_ctrl_29/ena_out] [get_bd_pins PHS_ctrl_30/ena_in]
  connect_bd_net -net PHS_ctrl_2_ena_out [get_bd_pins PHS_ctrl_2/ena_out] [get_bd_pins PHS_ctrl_3/ena_in]
  connect_bd_net -net PHS_ctrl_30_ena_out [get_bd_pins PHS_ctrl_30/ena_out] [get_bd_pins PHS_ctrl_31/ena_in]
  connect_bd_net -net PHS_ctrl_31_ena_out [get_bd_pins PHS_ctrl_31/ena_out] [get_bd_pins PHS_ctrl_32/ena_in]
  connect_bd_net -net PHS_ctrl_32_ena_out [get_bd_pins PHS_ctrl_32/ena_out] [get_bd_pins PHS_ctrl_33/ena_in]
  connect_bd_net -net PHS_ctrl_33_ena_out [get_bd_pins PHS_ctrl_33/ena_out] [get_bd_pins PHS_ctrl_34/ena_in]
  connect_bd_net -net PHS_ctrl_34_ena_out [get_bd_pins PHS_ctrl_34/ena_out] [get_bd_pins PHS_ctrl_35/ena_in]
  connect_bd_net -net PHS_ctrl_35_ena_out [get_bd_pins PHS_ctrl_35/ena_out] [get_bd_pins PHS_ctrl_36/ena_in]
  connect_bd_net -net PHS_ctrl_36_ena_out [get_bd_pins PHS_ctrl_36/ena_out] [get_bd_pins PHS_ctrl_37/ena_in]
  connect_bd_net -net PHS_ctrl_37_ena_out [get_bd_pins PHS_ctrl_37/ena_out] [get_bd_pins PHS_ctrl_38/ena_in]
  connect_bd_net -net PHS_ctrl_38_ena_out [get_bd_pins PHS_ctrl_38/ena_out] [get_bd_pins PHS_ctrl_39/ena_in]
  connect_bd_net -net PHS_ctrl_39_ena_out [get_bd_pins PHS_ctrl_39/ena_out] [get_bd_pins PHS_ctrl_40/ena_in]
  connect_bd_net -net PHS_ctrl_3_ena_out [get_bd_pins PHS_ctrl_3/ena_out] [get_bd_pins PHS_ctrl_4/ena_in]
  connect_bd_net -net PHS_ctrl_40_ena_out [get_bd_pins PHS_ctrl_40/ena_out] [get_bd_pins PHS_ctrl_41/ena_in]
  connect_bd_net -net PHS_ctrl_41_ena_out [get_bd_pins PHS_ctrl_41/ena_out] [get_bd_pins PHS_ctrl_42/ena_in]
  connect_bd_net -net PHS_ctrl_42_ena_out [get_bd_pins PHS_ctrl_42/ena_out] [get_bd_pins PHS_ctrl_43/ena_in]
  connect_bd_net -net PHS_ctrl_43_ena_out [get_bd_pins PHS_ctrl_43/ena_out] [get_bd_pins PHS_ctrl_44/ena_in]
  connect_bd_net -net PHS_ctrl_44_ena_out [get_bd_pins PHS_ctrl_44/ena_out] [get_bd_pins PHS_ctrl_45/ena_in]
  connect_bd_net -net PHS_ctrl_45_ena_out [get_bd_pins PHS_ctrl_45/ena_out] [get_bd_pins PHS_ctrl_46/ena_in]
  connect_bd_net -net PHS_ctrl_46_ena_out [get_bd_pins PHS_ctrl_46/ena_out] [get_bd_pins PHS_ctrl_47/ena_in]
  connect_bd_net -net PHS_ctrl_47_ena_out [get_bd_pins PHS_ctrl_47/ena_out] [get_bd_pins PHS_ctrl_48/ena_in]
  connect_bd_net -net PHS_ctrl_48_ena_out [get_bd_pins PHS_ctrl_48/ena_out] [get_bd_pins PHS_ctrl_49/ena_in]
  connect_bd_net -net PHS_ctrl_49_ena_out [get_bd_pins PHS_ena_dbg] [get_bd_pins PHS_ctrl_49/ena_out]
  connect_bd_net -net PHS_ctrl_4_ena_out [get_bd_pins PHS_ctrl_4/ena_out] [get_bd_pins PHS_ctrl_5/ena_in]
  connect_bd_net -net PHS_ctrl_5_ena_out [get_bd_pins PHS_ctrl_5/ena_out] [get_bd_pins PHS_ctrl_6/ena_in]
  connect_bd_net -net PHS_ctrl_6_ena_out [get_bd_pins PHS_ctrl_6/ena_out] [get_bd_pins PHS_ctrl_7/ena_in]
  connect_bd_net -net PHS_ctrl_7_ena_out [get_bd_pins PHS_ctrl_7/ena_out] [get_bd_pins PHS_ctrl_8/ena_in]
  connect_bd_net -net PHS_ctrl_8_ena_out [get_bd_pins PHS_ctrl_8/ena_out] [get_bd_pins PHS_ctrl_9/ena_in]
  connect_bd_net -net PHS_ctrl_9_ena_out [get_bd_pins PHS_ctrl_10/ena_in] [get_bd_pins PHS_ctrl_9/ena_out]
  connect_bd_net -net PHS_regs_0_PHS_irq_L2S_0 [get_bd_pins PHS_irq_L2S_0] [get_bd_pins PHS_regs_0/PHS_irq_L2S_0]
  connect_bd_net -net PHS_regs_0_PHS_irq_L2S_1 [get_bd_pins PHS_irq_L2S_1] [get_bd_pins PHS_regs_0/PHS_irq_L2S_1]
  connect_bd_net -net PHS_regs_0_PHS_irq_S2L_0 [get_bd_pins PHS_irq_S2L_0] [get_bd_pins PHS_regs_0/PHS_irq_S2L_0]
  connect_bd_net -net PHS_regs_0_PHS_irq_S2L_1 [get_bd_pins PHS_irq_S2L_1] [get_bd_pins PHS_regs_0/PHS_irq_S2L_1]
  connect_bd_net -net PHS_regs_0_PHS_irqs_L2S_0 [get_bd_pins PHS_irqs_L2S_0] [get_bd_pins PHS_regs_0/PHS_irqs_L2S_0]
  connect_bd_net -net PHS_regs_0_PHS_irqs_L2S_1 [get_bd_pins PHS_irqs_L2S_1] [get_bd_pins PHS_regs_0/PHS_irqs_L2S_1]
  connect_bd_net -net PHS_regs_0_PHS_irqs_S2L_0 [get_bd_pins PHS_irqs_S2L_0] [get_bd_pins PHS_regs_0/PHS_irqs_S2L_0]
  connect_bd_net -net PHS_regs_0_PHS_irqs_S2L_1 [get_bd_pins PHS_irqs_S2L_1] [get_bd_pins PHS_regs_0/PHS_irqs_S2L_1]
  connect_bd_net -net RT_timebase_0_ena_PHS [get_bd_pins PHS_ctrl_0/ena_in] [get_bd_pins RT_timebase_0/ena_PHS]
  connect_bd_net -net s00_axi_aclk_1_1 [get_bd_pins s00_axi_aclk] [get_bd_pins PHS_ctrl_0/aclk] [get_bd_pins PHS_ctrl_1/aclk] [get_bd_pins PHS_ctrl_10/aclk] [get_bd_pins PHS_ctrl_11/aclk] [get_bd_pins PHS_ctrl_12/aclk] [get_bd_pins PHS_ctrl_13/aclk] [get_bd_pins PHS_ctrl_14/aclk] [get_bd_pins PHS_ctrl_15/aclk] [get_bd_pins PHS_ctrl_16/aclk] [get_bd_pins PHS_ctrl_17/aclk] [get_bd_pins PHS_ctrl_18/aclk] [get_bd_pins PHS_ctrl_19/aclk] [get_bd_pins PHS_ctrl_2/aclk] [get_bd_pins PHS_ctrl_20/aclk] [get_bd_pins PHS_ctrl_21/aclk] [get_bd_pins PHS_ctrl_22/aclk] [get_bd_pins PHS_ctrl_23/aclk] [get_bd_pins PHS_ctrl_24/aclk] [get_bd_pins PHS_ctrl_25/aclk] [get_bd_pins PHS_ctrl_26/aclk] [get_bd_pins PHS_ctrl_27/aclk] [get_bd_pins PHS_ctrl_28/aclk] [get_bd_pins PHS_ctrl_29/aclk] [get_bd_pins PHS_ctrl_3/aclk] [get_bd_pins PHS_ctrl_30/aclk] [get_bd_pins PHS_ctrl_31/aclk] [get_bd_pins PHS_ctrl_32/aclk] [get_bd_pins PHS_ctrl_33/aclk] [get_bd_pins PHS_ctrl_34/aclk] [get_bd_pins PHS_ctrl_35/aclk] [get_bd_pins PHS_ctrl_36/aclk] [get_bd_pins PHS_ctrl_37/aclk] [get_bd_pins PHS_ctrl_38/aclk] [get_bd_pins PHS_ctrl_39/aclk] [get_bd_pins PHS_ctrl_4/aclk] [get_bd_pins PHS_ctrl_40/aclk] [get_bd_pins PHS_ctrl_41/aclk] [get_bd_pins PHS_ctrl_42/aclk] [get_bd_pins PHS_ctrl_43/aclk] [get_bd_pins PHS_ctrl_44/aclk] [get_bd_pins PHS_ctrl_45/aclk] [get_bd_pins PHS_ctrl_46/aclk] [get_bd_pins PHS_ctrl_47/aclk] [get_bd_pins PHS_ctrl_48/aclk] [get_bd_pins PHS_ctrl_49/aclk] [get_bd_pins PHS_ctrl_5/aclk] [get_bd_pins PHS_ctrl_6/aclk] [get_bd_pins PHS_ctrl_7/aclk] [get_bd_pins PHS_ctrl_8/aclk] [get_bd_pins PHS_ctrl_9/aclk] [get_bd_pins PHS_regs_0/s00_axi_aclk] [get_bd_pins RT_timebase_0/aclk]
  connect_bd_net -net s00_axi_aresetn_1_1 [get_bd_pins s00_axi_aresetn] [get_bd_pins PHS_ctrl_0/aresetn] [get_bd_pins PHS_ctrl_1/aresetn] [get_bd_pins PHS_ctrl_10/aresetn] [get_bd_pins PHS_ctrl_11/aresetn] [get_bd_pins PHS_ctrl_12/aresetn] [get_bd_pins PHS_ctrl_13/aresetn] [get_bd_pins PHS_ctrl_14/aresetn] [get_bd_pins PHS_ctrl_15/aresetn] [get_bd_pins PHS_ctrl_16/aresetn] [get_bd_pins PHS_ctrl_17/aresetn] [get_bd_pins PHS_ctrl_18/aresetn] [get_bd_pins PHS_ctrl_19/aresetn] [get_bd_pins PHS_ctrl_2/aresetn] [get_bd_pins PHS_ctrl_20/aresetn] [get_bd_pins PHS_ctrl_21/aresetn] [get_bd_pins PHS_ctrl_22/aresetn] [get_bd_pins PHS_ctrl_23/aresetn] [get_bd_pins PHS_ctrl_24/aresetn] [get_bd_pins PHS_ctrl_25/aresetn] [get_bd_pins PHS_ctrl_26/aresetn] [get_bd_pins PHS_ctrl_27/aresetn] [get_bd_pins PHS_ctrl_28/aresetn] [get_bd_pins PHS_ctrl_29/aresetn] [get_bd_pins PHS_ctrl_3/aresetn] [get_bd_pins PHS_ctrl_30/aresetn] [get_bd_pins PHS_ctrl_31/aresetn] [get_bd_pins PHS_ctrl_32/aresetn] [get_bd_pins PHS_ctrl_33/aresetn] [get_bd_pins PHS_ctrl_34/aresetn] [get_bd_pins PHS_ctrl_35/aresetn] [get_bd_pins PHS_ctrl_36/aresetn] [get_bd_pins PHS_ctrl_37/aresetn] [get_bd_pins PHS_ctrl_38/aresetn] [get_bd_pins PHS_ctrl_39/aresetn] [get_bd_pins PHS_ctrl_4/aresetn] [get_bd_pins PHS_ctrl_40/aresetn] [get_bd_pins PHS_ctrl_41/aresetn] [get_bd_pins PHS_ctrl_42/aresetn] [get_bd_pins PHS_ctrl_43/aresetn] [get_bd_pins PHS_ctrl_44/aresetn] [get_bd_pins PHS_ctrl_45/aresetn] [get_bd_pins PHS_ctrl_46/aresetn] [get_bd_pins PHS_ctrl_47/aresetn] [get_bd_pins PHS_ctrl_48/aresetn] [get_bd_pins PHS_ctrl_49/aresetn] [get_bd_pins PHS_ctrl_5/aresetn] [get_bd_pins PHS_ctrl_6/aresetn] [get_bd_pins PHS_ctrl_7/aresetn] [get_bd_pins PHS_ctrl_8/aresetn] [get_bd_pins PHS_ctrl_9/aresetn] [get_bd_pins PHS_regs_0/s00_axi_aresetn] [get_bd_pins RT_timebase_0/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: DCM_5
proc create_hier_cell_DCM_5 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_DCM_5() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv Mindway:user:DCM_IOs_rtl:1.0 DCM0

  create_bd_intf_pin -mode Master -vlnv Mindway:user:DCM_IOs_rtl:1.0 DCM1

  create_bd_intf_pin -mode Master -vlnv Mindway:user:DCM_IOs_rtl:1.0 DCM2

  create_bd_intf_pin -mode Master -vlnv Mindway:user:DCM_IOs_rtl:1.0 DCM3

  create_bd_intf_pin -mode Master -vlnv Mindway:user:DCM_IOs_rtl:1.0 DCM4

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI


  # Create pins
  create_bd_pin -dir I clk200
  create_bd_pin -dir I -type clk s00_axi_aclk
  create_bd_pin -dir I -type rst s00_axi_aresetn

  # Create instance: DCM_ctrl_0, and set properties
  set DCM_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:DCM_ctrl:1.0 DCM_ctrl_0 ]

  # Create instance: DCM_ctrl_1, and set properties
  set DCM_ctrl_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:DCM_ctrl:1.0 DCM_ctrl_1 ]

  # Create instance: DCM_ctrl_2, and set properties
  set DCM_ctrl_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:DCM_ctrl:1.0 DCM_ctrl_2 ]

  # Create instance: DCM_ctrl_3, and set properties
  set DCM_ctrl_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:DCM_ctrl:1.0 DCM_ctrl_3 ]

  # Create instance: DCM_ctrl_4, and set properties
  set DCM_ctrl_4 [ create_bd_cell -type ip -vlnv xilinx.com:user:DCM_ctrl:1.0 DCM_ctrl_4 ]

  # Create instance: DCM_regs_0, and set properties
  set DCM_regs_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:DCM_regs:1.0 DCM_regs_0 ]
  set_property -dict [ list \
   CONFIG.C_S00_AXI_ADDR_WIDTH {7} \
 ] $DCM_regs_0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins DCM_regs_0/S00_AXI]
  connect_bd_intf_net -intf_net DCM_ctrl_0_DCM_IO [get_bd_intf_pins DCM0] [get_bd_intf_pins DCM_ctrl_0/DCM_IO]
  connect_bd_intf_net -intf_net DCM_ctrl_1_DCM_IO [get_bd_intf_pins DCM1] [get_bd_intf_pins DCM_ctrl_1/DCM_IO]
  connect_bd_intf_net -intf_net DCM_ctrl_2_DCM_IO [get_bd_intf_pins DCM2] [get_bd_intf_pins DCM_ctrl_2/DCM_IO]
  connect_bd_intf_net -intf_net DCM_ctrl_3_DCM_IO [get_bd_intf_pins DCM3] [get_bd_intf_pins DCM_ctrl_3/DCM_IO]
  connect_bd_intf_net -intf_net DCM_ctrl_4_DCM_IO [get_bd_intf_pins DCM4] [get_bd_intf_pins DCM_ctrl_4/DCM_IO]
  connect_bd_intf_net -intf_net DCM_regs_0_DCM0 [get_bd_intf_pins DCM_ctrl_0/DCM_reg_if] [get_bd_intf_pins DCM_regs_0/DCM0]
  connect_bd_intf_net -intf_net DCM_regs_0_DCM1 [get_bd_intf_pins DCM_ctrl_1/DCM_reg_if] [get_bd_intf_pins DCM_regs_0/DCM1]
  connect_bd_intf_net -intf_net DCM_regs_0_DCM2 [get_bd_intf_pins DCM_ctrl_2/DCM_reg_if] [get_bd_intf_pins DCM_regs_0/DCM2]
  connect_bd_intf_net -intf_net DCM_regs_0_DCM3 [get_bd_intf_pins DCM_ctrl_3/DCM_reg_if] [get_bd_intf_pins DCM_regs_0/DCM3]
  connect_bd_intf_net -intf_net DCM_regs_0_DCM4 [get_bd_intf_pins DCM_ctrl_4/DCM_reg_if] [get_bd_intf_pins DCM_regs_0/DCM4]

  # Create port connections
  connect_bd_net -net clk200_1 [get_bd_pins clk200] [get_bd_pins DCM_ctrl_0/clk200] [get_bd_pins DCM_ctrl_1/clk200] [get_bd_pins DCM_ctrl_2/clk200] [get_bd_pins DCM_ctrl_3/clk200] [get_bd_pins DCM_ctrl_4/clk200]
  connect_bd_net -net s00_axi_aclk_2_1 [get_bd_pins s00_axi_aclk] [get_bd_pins DCM_ctrl_0/aclk] [get_bd_pins DCM_ctrl_1/aclk] [get_bd_pins DCM_ctrl_2/aclk] [get_bd_pins DCM_ctrl_3/aclk] [get_bd_pins DCM_ctrl_4/aclk] [get_bd_pins DCM_regs_0/s00_axi_aclk]
  connect_bd_net -net s00_axi_aresetn_2_1 [get_bd_pins s00_axi_aresetn] [get_bd_pins DCM_ctrl_0/aresetn] [get_bd_pins DCM_ctrl_1/aresetn] [get_bd_pins DCM_ctrl_2/aresetn] [get_bd_pins DCM_ctrl_3/aresetn] [get_bd_pins DCM_ctrl_4/aresetn] [get_bd_pins DCM_regs_0/s00_axi_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DCM0 [ create_bd_intf_port -mode Master -vlnv Mindway:user:DCM_IOs_rtl:1.0 DCM0 ]

  set DCM1 [ create_bd_intf_port -mode Master -vlnv Mindway:user:DCM_IOs_rtl:1.0 DCM1 ]

  set DCM2 [ create_bd_intf_port -mode Master -vlnv Mindway:user:DCM_IOs_rtl:1.0 DCM2 ]

  set DCM3 [ create_bd_intf_port -mode Master -vlnv Mindway:user:DCM_IOs_rtl:1.0 DCM3 ]

  set DCM4 [ create_bd_intf_port -mode Master -vlnv Mindway:user:DCM_IOs_rtl:1.0 DCM4 ]

  set PHS0 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS0 ]

  set PHS1 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS1 ]

  set PHS2 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS2 ]

  set PHS3 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS3 ]

  set PHS4 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS4 ]

  set PHS5 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS5 ]

  set PHS6 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS6 ]

  set PHS7 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS7 ]

  set PHS8 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS8 ]

  set PHS9 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS9 ]

  set PHS10 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS10 ]

  set PHS11 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS11 ]

  set PHS12 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS12 ]

  set PHS13 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS13 ]

  set PHS14 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS14 ]

  set PHS15 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS15 ]

  set PHS16 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS16 ]

  set PHS17 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS17 ]

  set PHS18 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS18 ]

  set PHS19 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS19 ]

  set PHS20 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS20 ]

  set PHS21 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS21 ]

  set PHS22 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS22 ]

  set PHS23 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS23 ]

  set PHS24 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS24 ]

  set PHS25 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS25 ]

  set PHS26 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS26 ]

  set PHS27 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS27 ]

  set PHS28 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS28 ]

  set PHS29 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS29 ]

  set PHS30 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS30 ]

  set PHS31 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS31 ]

  set PHS32 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS32 ]

  set PHS33 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS33 ]

  set PHS34 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS34 ]

  set PHS35 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS35 ]

  set PHS36 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS36 ]

  set PHS37 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS37 ]

  set PHS38 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS38 ]

  set PHS39 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS39 ]

  set PHS40 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS40 ]

  set PHS41 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS41 ]

  set PHS42 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS42 ]

  set PHS43 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS43 ]

  set PHS44 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS44 ]

  set PHS45 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS45 ]

  set PHS46 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS46 ]

  set PHS47 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS47 ]

  set PHS48 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS48 ]

  set PHS49 [ create_bd_intf_port -mode Master -vlnv Mindway:user:PHS_IOs_rtl:1.0 PHS49 ]

  set SM0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM0 ]

  set SM1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM1 ]

  set SM2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM2 ]

  set SM3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM3 ]

  set SM4 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM4 ]

  set SM5 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM5 ]

  set SM6 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM6 ]

  set SM7 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM7 ]

  set SM8 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM8 ]

  set SM9 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM9 ]

  set SM10 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM10 ]

  set SM11 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM11 ]

  set SM12 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM12 ]

  set SM13 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM13 ]

  set SM14 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM14 ]

  set SM15 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM15 ]

  set SM16 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM16 ]

  set SM17 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM17 ]

  set SM18 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM18 ]

  set SM19 [ create_bd_intf_port -mode Master -vlnv xilinx.com:user:SM_IOs_rtl:1.0 SM19 ]

  set SOL0 [ create_bd_intf_port -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL0 ]

  set SOL1 [ create_bd_intf_port -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL1 ]

  set SOL2 [ create_bd_intf_port -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL2 ]

  set SOL3 [ create_bd_intf_port -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL3 ]

  set SOL4 [ create_bd_intf_port -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL4 ]

  set SOL5 [ create_bd_intf_port -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL5 ]

  set SOL6 [ create_bd_intf_port -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL6 ]

  set SOL7 [ create_bd_intf_port -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL7 ]

  set SOL8 [ create_bd_intf_port -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL8 ]

  set SOL9 [ create_bd_intf_port -mode Master -vlnv mindway:user:SOL_IOs_rtl:1.0 SOL9 ]

  set led_4bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 led_4bits ]

  set rs232_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 rs232_uart ]

  set sys_diff_clock [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 sys_diff_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   ] $sys_diff_clock


  # Create ports
  set S_c2c_rxclk_in_n [ create_bd_port -dir I -type clk S_c2c_rxclk_in_n ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $S_c2c_rxclk_in_n
  set S_c2c_rxclk_in_p [ create_bd_port -dir I -type clk S_c2c_rxclk_in_p ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $S_c2c_rxclk_in_p
  set S_c2c_rxclk_out_n [ create_bd_port -dir O -type clk S_c2c_rxclk_out_n ]
  set S_c2c_rxclk_out_p [ create_bd_port -dir O -type clk S_c2c_rxclk_out_p ]
  set S_c2c_rxd_out [ create_bd_port -dir O -from 16 -to 0 S_c2c_rxd_out ]
  set S_c2c_txd_in [ create_bd_port -dir I -from 16 -to 0 S_c2c_txd_in ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset

  # Create instance: DCM_5
  create_hier_cell_DCM_5 [current_bd_instance .] DCM_5

  # Create instance: PHS_50
  create_hier_cell_PHS_50 [current_bd_instance .] PHS_50

  # Create instance: SM_20
  create_hier_cell_SM_20 [current_bd_instance .] SM_20

  # Create instance: SOL_10
  create_hier_cell_SOL_10 [current_bd_instance .] SOL_10

  # Create instance: areset_sync_0, and set properties
  set areset_sync_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:areset_sync:1.0 areset_sync_0 ]

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]

  # Create instance: axi_c2c_s, and set properties
  set axi_c2c_s [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_chip2chip:5.0 axi_c2c_s ]
  set_property -dict [ list \
   CONFIG.C_COMMON_CLK {0} \
   CONFIG.C_INCLUDE_AXILITE {2} \
   CONFIG.C_INTERFACE_MODE {1} \
   CONFIG.C_MASTER_FPGA {1} \
   CONFIG.C_M_AXI_ID_WIDTH {12} \
   CONFIG.C_M_AXI_WUSER_WIDTH {0} \
   CONFIG.C_NUM_OF_IO {36} \
   CONFIG.C_SUPPORT_NARROWBURST {true} \
   CONFIG.C_USE_DIFF_CLK {true} \
 ] $axi_c2c_s

  # Create instance: axi_cdma_0, and set properties
  set axi_cdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_cdma:4.1 axi_cdma_0 ]
  set_property -dict [ list \
   CONFIG.C_INCLUDE_SF {1} \
   CONFIG.C_INCLUDE_SG {0} \
 ] $axi_cdma_0

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {4} \
   CONFIG.GPIO_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_0

  # Create instance: axi_intc_0, and set properties
  set axi_intc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 axi_intc_0 ]

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {2} \
 ] $axi_interconnect_0

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
   CONFIG.UARTLITE_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
 ] $blk_mem_gen_0

  # Create instance: bufg_200, and set properties
  set bufg_200 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 bufg_200 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {BUFG} \
 ] $bufg_200

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_1 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {50.0} \
   CONFIG.CLKOUT1_JITTER {112.316} \
   CONFIG.CLKOUT1_PHASE_ERROR {89.971} \
   CONFIG.CLKOUT2_JITTER {98.146} \
   CONFIG.CLKOUT2_PHASE_ERROR {89.971} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {5.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {5.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {5} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIM_IN_FREQ {200.000} \
   CONFIG.PRIM_SOURCE {No_buffer} \
 ] $clk_wiz_1

  # Create instance: ibufgds_200, and set properties
  set ibufgds_200 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 ibufgds_200 ]

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:11.0 microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_LMB {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {9} \
   CONFIG.NUM_SI {2} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: rst_clk_wiz_1_100M, and set properties
  set rst_clk_wiz_1_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_1_100M ]

  # Create instance: util_idelay_ctrl_0, and set properties
  set util_idelay_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_idelay_ctrl:1.0 util_idelay_ctrl_0 ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {5} \
 ] $xlconcat_0

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {3} \
   CONFIG.NUM_PORTS {2} \
 ] $xlconcat_1

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {3} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net DCM_5_DCM0 [get_bd_intf_ports DCM0] [get_bd_intf_pins DCM_5/DCM0]
  connect_bd_intf_net -intf_net DCM_5_DCM1 [get_bd_intf_ports DCM1] [get_bd_intf_pins DCM_5/DCM1]
  connect_bd_intf_net -intf_net DCM_5_DCM2 [get_bd_intf_ports DCM2] [get_bd_intf_pins DCM_5/DCM2]
  connect_bd_intf_net -intf_net DCM_5_DCM3 [get_bd_intf_ports DCM3] [get_bd_intf_pins DCM_5/DCM3]
  connect_bd_intf_net -intf_net DCM_5_DCM4 [get_bd_intf_ports DCM4] [get_bd_intf_pins DCM_5/DCM4]
  connect_bd_intf_net -intf_net PHS_50_PHS0 [get_bd_intf_ports PHS0] [get_bd_intf_pins PHS_50/PHS0]
  connect_bd_intf_net -intf_net PHS_50_PHS1 [get_bd_intf_ports PHS1] [get_bd_intf_pins PHS_50/PHS1]
  connect_bd_intf_net -intf_net PHS_50_PHS2 [get_bd_intf_ports PHS2] [get_bd_intf_pins PHS_50/PHS2]
  connect_bd_intf_net -intf_net PHS_50_PHS3 [get_bd_intf_ports PHS3] [get_bd_intf_pins PHS_50/PHS3]
  connect_bd_intf_net -intf_net PHS_50_PHS4 [get_bd_intf_ports PHS4] [get_bd_intf_pins PHS_50/PHS4]
  connect_bd_intf_net -intf_net PHS_50_PHS5 [get_bd_intf_ports PHS5] [get_bd_intf_pins PHS_50/PHS5]
  connect_bd_intf_net -intf_net PHS_50_PHS6 [get_bd_intf_ports PHS6] [get_bd_intf_pins PHS_50/PHS6]
  connect_bd_intf_net -intf_net PHS_50_PHS7 [get_bd_intf_ports PHS7] [get_bd_intf_pins PHS_50/PHS7]
  connect_bd_intf_net -intf_net PHS_50_PHS8 [get_bd_intf_ports PHS8] [get_bd_intf_pins PHS_50/PHS8]
  connect_bd_intf_net -intf_net PHS_50_PHS9 [get_bd_intf_ports PHS9] [get_bd_intf_pins PHS_50/PHS9]
  connect_bd_intf_net -intf_net PHS_50_PHS10 [get_bd_intf_ports PHS10] [get_bd_intf_pins PHS_50/PHS10]
  connect_bd_intf_net -intf_net PHS_50_PHS11 [get_bd_intf_ports PHS11] [get_bd_intf_pins PHS_50/PHS11]
  connect_bd_intf_net -intf_net PHS_50_PHS12 [get_bd_intf_ports PHS12] [get_bd_intf_pins PHS_50/PHS12]
  connect_bd_intf_net -intf_net PHS_50_PHS13 [get_bd_intf_ports PHS13] [get_bd_intf_pins PHS_50/PHS13]
  connect_bd_intf_net -intf_net PHS_50_PHS14 [get_bd_intf_ports PHS14] [get_bd_intf_pins PHS_50/PHS14]
  connect_bd_intf_net -intf_net PHS_50_PHS15 [get_bd_intf_ports PHS15] [get_bd_intf_pins PHS_50/PHS15]
  connect_bd_intf_net -intf_net PHS_50_PHS16 [get_bd_intf_ports PHS16] [get_bd_intf_pins PHS_50/PHS16]
  connect_bd_intf_net -intf_net PHS_50_PHS17 [get_bd_intf_ports PHS17] [get_bd_intf_pins PHS_50/PHS17]
  connect_bd_intf_net -intf_net PHS_50_PHS18 [get_bd_intf_ports PHS18] [get_bd_intf_pins PHS_50/PHS18]
  connect_bd_intf_net -intf_net PHS_50_PHS19 [get_bd_intf_ports PHS19] [get_bd_intf_pins PHS_50/PHS19]
  connect_bd_intf_net -intf_net PHS_50_PHS20 [get_bd_intf_ports PHS20] [get_bd_intf_pins PHS_50/PHS20]
  connect_bd_intf_net -intf_net PHS_50_PHS21 [get_bd_intf_ports PHS21] [get_bd_intf_pins PHS_50/PHS21]
  connect_bd_intf_net -intf_net PHS_50_PHS22 [get_bd_intf_ports PHS22] [get_bd_intf_pins PHS_50/PHS22]
  connect_bd_intf_net -intf_net PHS_50_PHS23 [get_bd_intf_ports PHS23] [get_bd_intf_pins PHS_50/PHS23]
  connect_bd_intf_net -intf_net PHS_50_PHS24 [get_bd_intf_ports PHS24] [get_bd_intf_pins PHS_50/PHS24]
  connect_bd_intf_net -intf_net PHS_50_PHS25 [get_bd_intf_ports PHS25] [get_bd_intf_pins PHS_50/PHS25]
  connect_bd_intf_net -intf_net PHS_50_PHS26 [get_bd_intf_ports PHS26] [get_bd_intf_pins PHS_50/PHS26]
  connect_bd_intf_net -intf_net PHS_50_PHS27 [get_bd_intf_ports PHS27] [get_bd_intf_pins PHS_50/PHS27]
  connect_bd_intf_net -intf_net PHS_50_PHS28 [get_bd_intf_ports PHS28] [get_bd_intf_pins PHS_50/PHS28]
  connect_bd_intf_net -intf_net PHS_50_PHS29 [get_bd_intf_ports PHS29] [get_bd_intf_pins PHS_50/PHS29]
  connect_bd_intf_net -intf_net PHS_50_PHS30 [get_bd_intf_ports PHS30] [get_bd_intf_pins PHS_50/PHS30]
  connect_bd_intf_net -intf_net PHS_50_PHS31 [get_bd_intf_ports PHS31] [get_bd_intf_pins PHS_50/PHS31]
  connect_bd_intf_net -intf_net PHS_50_PHS32 [get_bd_intf_ports PHS32] [get_bd_intf_pins PHS_50/PHS32]
  connect_bd_intf_net -intf_net PHS_50_PHS33 [get_bd_intf_ports PHS33] [get_bd_intf_pins PHS_50/PHS33]
  connect_bd_intf_net -intf_net PHS_50_PHS34 [get_bd_intf_ports PHS34] [get_bd_intf_pins PHS_50/PHS34]
  connect_bd_intf_net -intf_net PHS_50_PHS35 [get_bd_intf_ports PHS35] [get_bd_intf_pins PHS_50/PHS35]
  connect_bd_intf_net -intf_net PHS_50_PHS36 [get_bd_intf_ports PHS36] [get_bd_intf_pins PHS_50/PHS36]
  connect_bd_intf_net -intf_net PHS_50_PHS37 [get_bd_intf_ports PHS37] [get_bd_intf_pins PHS_50/PHS37]
  connect_bd_intf_net -intf_net PHS_50_PHS38 [get_bd_intf_ports PHS38] [get_bd_intf_pins PHS_50/PHS38]
  connect_bd_intf_net -intf_net PHS_50_PHS39 [get_bd_intf_ports PHS39] [get_bd_intf_pins PHS_50/PHS39]
  connect_bd_intf_net -intf_net PHS_50_PHS40 [get_bd_intf_ports PHS40] [get_bd_intf_pins PHS_50/PHS40]
  connect_bd_intf_net -intf_net PHS_50_PHS41 [get_bd_intf_ports PHS41] [get_bd_intf_pins PHS_50/PHS41]
  connect_bd_intf_net -intf_net PHS_50_PHS42 [get_bd_intf_ports PHS42] [get_bd_intf_pins PHS_50/PHS42]
  connect_bd_intf_net -intf_net PHS_50_PHS43 [get_bd_intf_ports PHS43] [get_bd_intf_pins PHS_50/PHS43]
  connect_bd_intf_net -intf_net PHS_50_PHS44 [get_bd_intf_ports PHS44] [get_bd_intf_pins PHS_50/PHS44]
  connect_bd_intf_net -intf_net PHS_50_PHS45 [get_bd_intf_ports PHS45] [get_bd_intf_pins PHS_50/PHS45]
  connect_bd_intf_net -intf_net PHS_50_PHS46 [get_bd_intf_ports PHS46] [get_bd_intf_pins PHS_50/PHS46]
  connect_bd_intf_net -intf_net PHS_50_PHS47 [get_bd_intf_ports PHS47] [get_bd_intf_pins PHS_50/PHS47]
  connect_bd_intf_net -intf_net PHS_50_PHS48 [get_bd_intf_ports PHS48] [get_bd_intf_pins PHS_50/PHS48]
  connect_bd_intf_net -intf_net PHS_50_PHS49 [get_bd_intf_ports PHS49] [get_bd_intf_pins PHS_50/PHS49]
  connect_bd_intf_net -intf_net S00_AXI_0_1 [get_bd_intf_pins SM_20/S00_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net S00_AXI_1_1 [get_bd_intf_pins PHS_50/S00_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net S00_AXI_2_1 [get_bd_intf_pins DCM_5/S00_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net S00_AXI_3_1 [get_bd_intf_pins SOL_10/S00_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net SM_20_SM0 [get_bd_intf_ports SM0] [get_bd_intf_pins SM_20/SM0]
  connect_bd_intf_net -intf_net SM_20_SM1 [get_bd_intf_ports SM1] [get_bd_intf_pins SM_20/SM1]
  connect_bd_intf_net -intf_net SM_20_SM2 [get_bd_intf_ports SM2] [get_bd_intf_pins SM_20/SM2]
  connect_bd_intf_net -intf_net SM_20_SM3 [get_bd_intf_ports SM3] [get_bd_intf_pins SM_20/SM3]
  connect_bd_intf_net -intf_net SM_20_SM4 [get_bd_intf_ports SM4] [get_bd_intf_pins SM_20/SM4]
  connect_bd_intf_net -intf_net SM_20_SM5 [get_bd_intf_ports SM5] [get_bd_intf_pins SM_20/SM5]
  connect_bd_intf_net -intf_net SM_20_SM6 [get_bd_intf_ports SM6] [get_bd_intf_pins SM_20/SM6]
  connect_bd_intf_net -intf_net SM_20_SM7 [get_bd_intf_ports SM7] [get_bd_intf_pins SM_20/SM7]
  connect_bd_intf_net -intf_net SM_20_SM8 [get_bd_intf_ports SM8] [get_bd_intf_pins SM_20/SM8]
  connect_bd_intf_net -intf_net SM_20_SM9 [get_bd_intf_ports SM9] [get_bd_intf_pins SM_20/SM9]
  connect_bd_intf_net -intf_net SM_20_SM10 [get_bd_intf_ports SM10] [get_bd_intf_pins SM_20/SM10]
  connect_bd_intf_net -intf_net SM_20_SM11 [get_bd_intf_ports SM11] [get_bd_intf_pins SM_20/SM11]
  connect_bd_intf_net -intf_net SM_20_SM12 [get_bd_intf_ports SM12] [get_bd_intf_pins SM_20/SM12]
  connect_bd_intf_net -intf_net SM_20_SM13 [get_bd_intf_ports SM13] [get_bd_intf_pins SM_20/SM13]
  connect_bd_intf_net -intf_net SM_20_SM14 [get_bd_intf_ports SM14] [get_bd_intf_pins SM_20/SM14]
  connect_bd_intf_net -intf_net SM_20_SM15 [get_bd_intf_ports SM15] [get_bd_intf_pins SM_20/SM15]
  connect_bd_intf_net -intf_net SM_20_SM16 [get_bd_intf_ports SM16] [get_bd_intf_pins SM_20/SM16]
  connect_bd_intf_net -intf_net SM_20_SM17 [get_bd_intf_ports SM17] [get_bd_intf_pins SM_20/SM17]
  connect_bd_intf_net -intf_net SM_20_SM18 [get_bd_intf_ports SM18] [get_bd_intf_pins SM_20/SM18]
  connect_bd_intf_net -intf_net SM_20_SM19 [get_bd_intf_ports SM19] [get_bd_intf_pins SM_20/SM19]
  connect_bd_intf_net -intf_net SOL_10_SOL0 [get_bd_intf_ports SOL0] [get_bd_intf_pins SOL_10/SOL0]
  connect_bd_intf_net -intf_net SOL_10_SOL1 [get_bd_intf_ports SOL1] [get_bd_intf_pins SOL_10/SOL1]
  connect_bd_intf_net -intf_net SOL_10_SOL2 [get_bd_intf_ports SOL2] [get_bd_intf_pins SOL_10/SOL2]
  connect_bd_intf_net -intf_net SOL_10_SOL3 [get_bd_intf_ports SOL3] [get_bd_intf_pins SOL_10/SOL3]
  connect_bd_intf_net -intf_net SOL_10_SOL4 [get_bd_intf_ports SOL4] [get_bd_intf_pins SOL_10/SOL4]
  connect_bd_intf_net -intf_net SOL_10_SOL5 [get_bd_intf_ports SOL5] [get_bd_intf_pins SOL_10/SOL5]
  connect_bd_intf_net -intf_net SOL_10_SOL6 [get_bd_intf_ports SOL6] [get_bd_intf_pins SOL_10/SOL6]
  connect_bd_intf_net -intf_net SOL_10_SOL7 [get_bd_intf_ports SOL7] [get_bd_intf_pins SOL_10/SOL7]
  connect_bd_intf_net -intf_net SOL_10_SOL8 [get_bd_intf_ports SOL8] [get_bd_intf_pins SOL_10/SOL8]
  connect_bd_intf_net -intf_net SOL_10_SOL9 [get_bd_intf_ports SOL9] [get_bd_intf_pins SOL_10/SOL9]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTB [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_cdma_0_M_AXI [get_bd_intf_pins axi_cdma_0/M_AXI] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_chip2chip_0_m_axi_lite [get_bd_intf_pins axi_c2c_s/m_axi_lite] [get_bd_intf_pins microblaze_0_axi_periph/S01_AXI]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports led_4bits] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_c2c_s/s_axi] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports rs232_uart] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DP [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M00_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M06_AXI [get_bd_intf_pins axi_cdma_0/S_AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M07_AXI [get_bd_intf_pins axi_interconnect_0/S01_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M08_AXI [get_bd_intf_pins axi_intc_0/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net sys_diff_clock_1 [get_bd_intf_ports sys_diff_clock] [get_bd_intf_pins ibufgds_200/CLK_IN_D]

  # Create port connections
  connect_bd_net -net PHS_50_PHS_irq_L2S_0 [get_bd_pins PHS_50/PHS_irq_L2S_0] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net PHS_50_PHS_irq_L2S_1 [get_bd_pins PHS_50/PHS_irq_L2S_1] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net PHS_50_PHS_irq_S2L_0 [get_bd_pins PHS_50/PHS_irq_S2L_0] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net PHS_50_PHS_irq_S2L_1 [get_bd_pins PHS_50/PHS_irq_S2L_1] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net SM_20_SM_irq [get_bd_pins SM_20/SM_irq] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net S_c2c_rxclk_in_n_1 [get_bd_ports S_c2c_rxclk_in_n] [get_bd_pins axi_c2c_s/axi_c2c_selio_rx_diff_clk_in_n]
  connect_bd_net -net S_c2c_rxclk_in_p_1 [get_bd_ports S_c2c_rxclk_in_p] [get_bd_pins axi_c2c_s/axi_c2c_selio_rx_diff_clk_in_p]
  connect_bd_net -net S_c2c_txd_in_1 [get_bd_ports S_c2c_txd_in] [get_bd_pins axi_c2c_s/axi_c2c_selio_rx_data_in]
  connect_bd_net -net areset_sync_0_aresetn_out [get_bd_pins areset_sync_0/aresetn_out] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_cdma_0/s_axi_lite_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN]
  connect_bd_net -net axi_chip2chip_0_axi_c2c_selio_tx_data_out [get_bd_ports S_c2c_rxd_out] [get_bd_pins axi_c2c_s/axi_c2c_selio_tx_data_out]
  connect_bd_net -net axi_chip2chip_0_axi_c2c_selio_tx_diff_clk_out_n [get_bd_ports S_c2c_rxclk_out_n] [get_bd_pins axi_c2c_s/axi_c2c_selio_tx_diff_clk_out_n]
  connect_bd_net -net axi_chip2chip_0_axi_c2c_selio_tx_diff_clk_out_p [get_bd_ports S_c2c_rxclk_out_p] [get_bd_pins axi_c2c_s/axi_c2c_selio_tx_diff_clk_out_p]
  connect_bd_net -net axi_intc_0_irq [get_bd_pins axi_intc_0/irq] [get_bd_pins microblaze_0/Interrupt] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net clk_100_MB [get_bd_pins DCM_5/s00_axi_aclk] [get_bd_pins PHS_50/s00_axi_aclk] [get_bd_pins SM_20/s00_axi_aclk] [get_bd_pins SOL_10/s00_axi_aclk] [get_bd_pins areset_sync_0/aclk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_c2c_s/axi_c2c_phy_clk] [get_bd_pins axi_c2c_s/m_axi_lite_aclk] [get_bd_pins axi_c2c_s/s_aclk] [get_bd_pins axi_cdma_0/m_axi_aclk] [get_bd_pins axi_cdma_0/s_axi_lite_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_intc_0/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins clk_wiz_1/clk_out1] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins microblaze_0_axi_periph/M05_ACLK] [get_bd_pins microblaze_0_axi_periph/M06_ACLK] [get_bd_pins microblaze_0_axi_periph/M07_ACLK] [get_bd_pins microblaze_0_axi_periph/M08_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_axi_periph/S01_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins rst_clk_wiz_1_100M/slowest_sync_clk]
  connect_bd_net -net clk_200 [get_bd_pins DCM_5/clk200] [get_bd_pins SM_20/clk200] [get_bd_pins clk_wiz_1/clk_out2]
  connect_bd_net -net clk_wiz_1_locked [get_bd_pins clk_wiz_1/locked] [get_bd_pins rst_clk_wiz_1_100M/dcm_locked]
  connect_bd_net -net ibufgds_200_IBUF_OUT [get_bd_pins bufg_200/BUFG_I] [get_bd_pins ibufgds_200/IBUF_OUT]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_1_100M/mb_debug_sys_rst]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_1/reset] [get_bd_pins rst_clk_wiz_1_100M/ext_reset_in] [get_bd_pins util_idelay_ctrl_0/rst]
  connect_bd_net -net rst_clk_wiz_1_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_clk_wiz_1_100M/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_1_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins rst_clk_wiz_1_100M/mb_reset]
  connect_bd_net -net rst_clk_wiz_1_100M_peripheral_aresetn [get_bd_pins DCM_5/s00_axi_aresetn] [get_bd_pins PHS_50/s00_axi_aresetn] [get_bd_pins SM_20/s00_axi_aresetn] [get_bd_pins SOL_10/s00_axi_aresetn] [get_bd_pins areset_sync_0/aresetn_in] [get_bd_pins axi_c2c_s/s_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_intc_0/s_axi_aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins microblaze_0_axi_periph/M05_ARESETN] [get_bd_pins microblaze_0_axi_periph/M06_ARESETN] [get_bd_pins microblaze_0_axi_periph/M07_ARESETN] [get_bd_pins microblaze_0_axi_periph/M08_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins microblaze_0_axi_periph/S01_ARESETN] [get_bd_pins rst_clk_wiz_1_100M/peripheral_aresetn]
  connect_bd_net -net sys_diff_clk_ibufds_IBUF_OUT [get_bd_pins axi_c2c_s/idelay_ref_clk] [get_bd_pins bufg_200/BUFG_O] [get_bd_pins clk_wiz_1/clk_in1] [get_bd_pins util_idelay_ctrl_0/ref_clk]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins axi_intc_0/intr] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins axi_c2c_s/axi_c2c_m2s_intr_in] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins xlconcat_1/In1] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x50030000 [get_bd_addr_spaces axi_c2c_s/MAXI-Lite] [get_bd_addr_segs DCM_5/DCM_regs_0/S00_AXI/S00_AXI_reg] SEG_DCM_regs_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x50020000 [get_bd_addr_spaces axi_c2c_s/MAXI-Lite] [get_bd_addr_segs PHS_50/PHS_regs_0/S00_AXI/S00_AXI_reg] SEG_PHS_regs_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x50010000 [get_bd_addr_spaces axi_c2c_s/MAXI-Lite] [get_bd_addr_segs SM_20/SM_regs_0/S00_AXI/S00_AXI_reg] SEG_SM_regs_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x50000000 [get_bd_addr_spaces axi_c2c_s/MAXI-Lite] [get_bd_addr_segs SOL_10/SOL_regs_0/S00_AXI/S00_AXI_reg] SEG_SOL_regs_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x50040000 [get_bd_addr_spaces axi_c2c_s/MAXI-Lite] [get_bd_addr_segs axi_intc_0/S_AXI/Reg] SEG_axi_intc_0_Reg
  create_bd_addr_seg -range 0x00002000 -offset 0x60000000 [get_bd_addr_spaces axi_cdma_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x08000000 -offset 0x70000000 [get_bd_addr_spaces axi_cdma_0/Data] [get_bd_addr_segs axi_c2c_s/s_axi/Mem0] SEG_axi_c2c_s_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x50030000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs DCM_5/DCM_regs_0/S00_AXI/S00_AXI_reg] SEG_DCM_regs_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x50020000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs PHS_50/PHS_regs_0/S00_AXI/S00_AXI_reg] SEG_PHS_regs_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x50010000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs SM_20/SM_regs_0/S00_AXI/S00_AXI_reg] SEG_SM_regs_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00010000 -offset 0x50000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs SOL_10/SOL_regs_0/S00_AXI/S00_AXI_reg] SEG_SOL_regs_0_S00_AXI_reg
  create_bd_addr_seg -range 0x00002000 -offset 0x60000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0x44A40000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_cdma_0/S_AXI_LITE/Reg] SEG_axi_cdma_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x50040000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_intc_0/S_AXI/Reg] SEG_axi_intc_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00008000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem

  # Exclude Address Segments
  create_bd_addr_seg -range 0x00002000 -offset 0xC0000000 [get_bd_addr_spaces axi_c2c_s/MAXI-Lite] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  exclude_bd_addr_seg [get_bd_addr_segs axi_c2c_s/MAXI-Lite/SEG_axi_bram_ctrl_0_Mem0]

  create_bd_addr_seg -range 0x00010000 -offset 0x76000000 [get_bd_addr_spaces axi_c2c_s/MAXI-Lite] [get_bd_addr_segs axi_c2c_s/s_axi/Mem0] SEG_axi_c2c_s_Mem0
  exclude_bd_addr_seg [get_bd_addr_segs axi_c2c_s/MAXI-Lite/SEG_axi_c2c_s_Mem0]

  create_bd_addr_seg -range 0x00010000 -offset 0x44A40000 [get_bd_addr_spaces axi_c2c_s/MAXI-Lite] [get_bd_addr_segs axi_cdma_0/S_AXI_LITE/Reg] SEG_axi_cdma_0_Reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_c2c_s/MAXI-Lite/SEG_axi_cdma_0_Reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces axi_c2c_s/MAXI-Lite] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_c2c_s/MAXI-Lite/SEG_axi_gpio_0_Reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces axi_c2c_s/MAXI-Lite] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_c2c_s/MAXI-Lite/SEG_axi_uartlite_0_Reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x76000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_c2c_s/s_axi/Mem0] SEG_axi_c2c_s_Mem0
  exclude_bd_addr_seg [get_bd_addr_segs microblaze_0/Data/SEG_axi_c2c_s_Mem0]



  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


