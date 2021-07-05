# Definitional proc to organize widgets for parameters.
proc init_Inverter_gui { IPINST Page} {
  ipgui::add_param $IPINST -name "Component_Name"

  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name $Page]

  #Adding Group
  set ILA_Debugging [ipgui::add_group $IPINST -name "ILA Debugging" -parent ${Page_0}]
  set_property tooltip {ILA Debugging} ${ILA_Debugging}
  ipgui::add_param $IPINST -name "DEBUG_MODE" -parent ${ILA_Debugging}

  #Adding Group
  set Image_Width [ipgui::add_group $IPINST -name "Image Width" -parent ${Page_0}]
  set_property tooltip {Range of values that the BMP image can assume} ${Image_Width}
  set DATA_WIDTH [ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Image_Width} -widget comboBox]
  set_property tooltip {Bit width of the incoming Data} ${DATA_WIDTH}


}
