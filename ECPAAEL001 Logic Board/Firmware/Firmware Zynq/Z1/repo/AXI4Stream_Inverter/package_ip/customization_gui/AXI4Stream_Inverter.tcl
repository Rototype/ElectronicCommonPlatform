
# Definitional proc to organize widgets for parameters.
source [file join [file dirname [ file dirname [info script]]] package_ip/customization_gui/init_Inverter_gui.tcl]

proc init_gui { IPINST } {

  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page "Inverter"
  init_Inverter_gui $IPINST $Page

}

# Definitional proc to organize widgets for parameters.
source [file join [file dirname [ file dirname [info script]]] package_ip/customization_gui/set_Inverter_gui.tcl]
