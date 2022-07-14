set_property SRC_FILE_INFO {cfile:/home/taylor/Documents/new_spgd/tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc rfile:../tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc id:1 order:EARLY scoped_inst:system_i/PS7/processing_system7_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/taylor/Documents/new_spgd/cfg/ports.xdc rfile:../cfg/ports.xdc id:2} [current_design]
current_instance system_i/PS7/processing_system7_0/inst
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_0 0.6
current_instance
set_property src_info {type:XDC file:2 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property IOB TRUE [get_ports TRIG_IN]
