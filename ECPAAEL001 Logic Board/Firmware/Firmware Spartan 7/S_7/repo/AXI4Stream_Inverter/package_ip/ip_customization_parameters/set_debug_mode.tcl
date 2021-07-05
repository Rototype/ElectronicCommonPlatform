#  If DEBUG_MODE = TRUE, the module shows the ports counter and file_dimension in such a way we can use them for debugging with ILA
#	DEBUG_MODE	: BOOLEAN	:= TRUE;

# ----------------- DEBUG_MODE --------------------

set DEFAULT_DEBUG_MODE True

set enablement {True}
set editable {}

set dependency {}

set tooltip "Debugging option: if TRUE, debugging ports are shown"
set display_name "Debug Mode"

set_param_bool "DEBUG_MODE" $DEFAULT_DEBUG_MODE $enablement $editable $dependency $tooltip $display_name
# -------------------------------------------------
