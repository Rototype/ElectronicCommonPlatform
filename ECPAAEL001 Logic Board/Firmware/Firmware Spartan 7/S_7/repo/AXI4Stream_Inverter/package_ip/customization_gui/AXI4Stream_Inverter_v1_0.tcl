# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Inverter [ipgui::add_page $IPINST -name "Inverter"]
  #Adding Group
  set ILA_Debugging [ipgui::add_group $IPINST -name "ILA Debugging" -parent ${Inverter}]
  set_property tooltip {ILA Debugging} ${ILA_Debugging}
  set DEBUG_MODE [ipgui::add_param $IPINST -name "DEBUG_MODE" -parent ${ILA_Debugging}]
  set_property tooltip {Debugging option: if TRUE, debugging ports are shown} ${DEBUG_MODE}

  #Adding Group
  set Image_Width [ipgui::add_group $IPINST -name "Image Width" -parent ${Inverter}]
  set_property tooltip {Range of values that the BMP image can assume} ${Image_Width}
  set DATA_WIDTH [ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Image_Width} -widget comboBox]
  set_property tooltip {Bit width of the incoming Data} ${DATA_WIDTH}



}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DEBUG_MODE { PARAM_VALUE.DEBUG_MODE } {
	# Procedure called to update DEBUG_MODE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEBUG_MODE { PARAM_VALUE.DEBUG_MODE } {
	# Procedure called to validate DEBUG_MODE
	return true
}


proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.DEBUG_MODE { MODELPARAM_VALUE.DEBUG_MODE PARAM_VALUE.DEBUG_MODE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEBUG_MODE}] ${MODELPARAM_VALUE.DEBUG_MODE}
}
