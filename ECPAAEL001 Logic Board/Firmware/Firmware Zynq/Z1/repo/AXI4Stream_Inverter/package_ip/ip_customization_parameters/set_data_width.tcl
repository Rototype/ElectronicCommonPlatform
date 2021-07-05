#  The incoming image can have values that range from 0 to 255 by definition, so the data can be represented by just 8 bits
#	DATA_WIDTH	: POSITIVE 		:=	8

# ----------------- DATA_WIDTH --------------------
set LIST_DATA_WIDTH {8}
set DEFAULT_DATA_WIDTH 8

set enablement {True}
set editable {}

set dependency {}

set tooltip "Bit width of the incoming Data"
set display_name "Data Width"

set_param_long_list "DATA_WIDTH" $LIST_DATA_WIDTH $DEFAULT_DATA_WIDTH $enablement $editable $dependency $tooltip $display_name
# -------------------------------------------------
