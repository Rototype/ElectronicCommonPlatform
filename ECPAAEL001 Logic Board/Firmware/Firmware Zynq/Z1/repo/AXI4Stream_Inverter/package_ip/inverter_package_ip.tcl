# ================================ Identification ==============================
set vendor "MindWay"
set_property vendor $vendor [ipx::current_core]

set library "user"
set_property library $library [ipx::current_core]

set name "AXI4_Stream_Inverter"
set_property name $name [ipx::current_core]

set version "1.0"
set_property version $version [ipx::current_core]

set display_name "AXI4-Stream Inverter"
set_property display_name $display_name [ipx::current_core]

set description "Image Color Inversion"
set_property description $description [ipx::current_core]

set vendor_display_name "MindWay"
set_property vendor_display_name $vendor_display_name [ipx::current_core]

set company_url "http://www.mindway-design.com/"
set_property company_url $company_url [ipx::current_core]

set taxonomy {/MindWayIP}
set_property taxonomy $taxonomy [ipx::current_core]

# ==============================================================================

# ============================ Import TCL Functions ============================
set path "D:/MW/MW/Utility_Ip_Core/ip_repo/AXI4Stream_Inverter/package_ip"
# ==============================================================================

# ====================== SET IP CUSTOMIZATION PARAMETER  =======================
set param_path $path
append param_path "/ip_customization_parameters/"
source [join [list $param_path "set_param_fx.tcl"] ""] -notrace

source [join [list $param_path "set_data_width.tcl"] ""] -notrace
source [join [list $param_path "set_debug_mode.tcl"] ""] -notrace
# ==============================================================================
