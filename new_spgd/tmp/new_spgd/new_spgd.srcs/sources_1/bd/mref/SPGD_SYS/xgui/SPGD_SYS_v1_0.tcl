# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FP_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GPIO_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.FP_WIDTH { PARAM_VALUE.FP_WIDTH } {
	# Procedure called to update FP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FP_WIDTH { PARAM_VALUE.FP_WIDTH } {
	# Procedure called to validate FP_WIDTH
	return true
}

proc update_PARAM_VALUE.GPIO_WIDTH { PARAM_VALUE.GPIO_WIDTH } {
	# Procedure called to update GPIO_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GPIO_WIDTH { PARAM_VALUE.GPIO_WIDTH } {
	# Procedure called to validate GPIO_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.FP_WIDTH { MODELPARAM_VALUE.FP_WIDTH PARAM_VALUE.FP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FP_WIDTH}] ${MODELPARAM_VALUE.FP_WIDTH}
}

proc update_MODELPARAM_VALUE.GPIO_WIDTH { MODELPARAM_VALUE.GPIO_WIDTH PARAM_VALUE.GPIO_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GPIO_WIDTH}] ${MODELPARAM_VALUE.GPIO_WIDTH}
}

