# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AUD_SAMPLE_FREQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIS_CLK_DOMAIN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIS_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIS_KEEP_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PACKET_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PACKET_SIZE_CLOG2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TONE_FREQ" -parent ${Page_0}


}

proc update_PARAM_VALUE.AUD_SAMPLE_FREQ { PARAM_VALUE.AUD_SAMPLE_FREQ } {
	# Procedure called to update AUD_SAMPLE_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AUD_SAMPLE_FREQ { PARAM_VALUE.AUD_SAMPLE_FREQ } {
	# Procedure called to validate AUD_SAMPLE_FREQ
	return true
}

proc update_PARAM_VALUE.AXIS_CLK_DOMAIN { PARAM_VALUE.AXIS_CLK_DOMAIN } {
	# Procedure called to update AXIS_CLK_DOMAIN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_CLK_DOMAIN { PARAM_VALUE.AXIS_CLK_DOMAIN } {
	# Procedure called to validate AXIS_CLK_DOMAIN
	return true
}

proc update_PARAM_VALUE.AXIS_DATA_WIDTH { PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to update AXIS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_DATA_WIDTH { PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to validate AXIS_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXIS_KEEP_WIDTH { PARAM_VALUE.AXIS_KEEP_WIDTH } {
	# Procedure called to update AXIS_KEEP_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_KEEP_WIDTH { PARAM_VALUE.AXIS_KEEP_WIDTH } {
	# Procedure called to validate AXIS_KEEP_WIDTH
	return true
}

proc update_PARAM_VALUE.PACKET_SIZE { PARAM_VALUE.PACKET_SIZE } {
	# Procedure called to update PACKET_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PACKET_SIZE { PARAM_VALUE.PACKET_SIZE } {
	# Procedure called to validate PACKET_SIZE
	return true
}

proc update_PARAM_VALUE.PACKET_SIZE_CLOG2 { PARAM_VALUE.PACKET_SIZE_CLOG2 } {
	# Procedure called to update PACKET_SIZE_CLOG2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PACKET_SIZE_CLOG2 { PARAM_VALUE.PACKET_SIZE_CLOG2 } {
	# Procedure called to validate PACKET_SIZE_CLOG2
	return true
}

proc update_PARAM_VALUE.TONE_FREQ { PARAM_VALUE.TONE_FREQ } {
	# Procedure called to update TONE_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TONE_FREQ { PARAM_VALUE.TONE_FREQ } {
	# Procedure called to validate TONE_FREQ
	return true
}


proc update_MODELPARAM_VALUE.AXIS_DATA_WIDTH { MODELPARAM_VALUE.AXIS_DATA_WIDTH PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_DATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIS_KEEP_WIDTH { MODELPARAM_VALUE.AXIS_KEEP_WIDTH PARAM_VALUE.AXIS_KEEP_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_KEEP_WIDTH}] ${MODELPARAM_VALUE.AXIS_KEEP_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIS_CLK_DOMAIN { MODELPARAM_VALUE.AXIS_CLK_DOMAIN PARAM_VALUE.AXIS_CLK_DOMAIN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_CLK_DOMAIN}] ${MODELPARAM_VALUE.AXIS_CLK_DOMAIN}
}

proc update_MODELPARAM_VALUE.TONE_FREQ { MODELPARAM_VALUE.TONE_FREQ PARAM_VALUE.TONE_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TONE_FREQ}] ${MODELPARAM_VALUE.TONE_FREQ}
}

proc update_MODELPARAM_VALUE.AUD_SAMPLE_FREQ { MODELPARAM_VALUE.AUD_SAMPLE_FREQ PARAM_VALUE.AUD_SAMPLE_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AUD_SAMPLE_FREQ}] ${MODELPARAM_VALUE.AUD_SAMPLE_FREQ}
}

proc update_MODELPARAM_VALUE.PACKET_SIZE { MODELPARAM_VALUE.PACKET_SIZE PARAM_VALUE.PACKET_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PACKET_SIZE}] ${MODELPARAM_VALUE.PACKET_SIZE}
}

proc update_MODELPARAM_VALUE.PACKET_SIZE_CLOG2 { MODELPARAM_VALUE.PACKET_SIZE_CLOG2 PARAM_VALUE.PACKET_SIZE_CLOG2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PACKET_SIZE_CLOG2}] ${MODELPARAM_VALUE.PACKET_SIZE_CLOG2}
}

