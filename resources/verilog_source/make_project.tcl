
# ==================================================================================================
# block_design.tcl - Create Vivado Project - 3_stopwatch
#
# This script should be run from the base redpitaya-guides/ folder inside Vivado tcl console.
#
# This script is modification of Pavel Demin's project.tcl and block_design.tcl files
# by Anton Potocnik, 20.11.2016
# Tested with Vivado 2016.3
# ==================================================================================================


set project_name newspgd
set part_name xc7z020clg400-3
set bd_path tmp/$project_name/$project_name.srcs/sources_1/bd/system

file delete -force tmp/$project_name

create_project $project_name tmp/$project_name -part $part_name

create_bd_design system
# open_bd_design {$bd_path/system.bd}

# Load RedPitaya ports
source cfg/ports.tcl

# Set Path for the custom IP cores
set_property IP_REPO_PATHS tmp/cores [current_project]
update_ip_catalog


# Load any additional Verilog files in the project folder
set files [glob -nocomplain projects/$project_name/*.v projects/$project_name/*.sv]
if {[llength $files] > 0} {
  add_files -norecurse $files
}

#add_files -norecurse new_top.v
add_files -norecurse newer_top.v
#add_files -norecurse FSM.v
add_files -norecurse ADC_REG.v
add_files -norecurse SPGD_FSM.v

add_files -norecurse TOP_RNG.v
add_files -norecurse CLT_RNG.v
add_files -norecurse LFSR.v

add_files -norecurse DAC_MUX.v
add_files -norecurse LED_BOX_ADC.v

add_files -norecurse gen_adder.v
add_files -norecurse gen_counter.v
add_files -norecurse gen_mult.v
add_files -norecurse gen_reg.v
add_files -norecurse gen_subber.v
add_files -norecurse gen_l_padder.v
add_files -norecurse OR_CHECK.v
add_files -norecurse my_D_FF.v
add_files -norecurse pulse_FSM.v
add_files -norecurse new_FSM.v
add_files -norecurse U_adds.v
add_files -norecurse new_LFSR.v
add_files -norecurse new_CLT_RNG.v

add_files -norecurse top_math.v
add_files -norecurse top_level_tb.v
add_files -norecurse CLT_RNG_HIST_tb.v
add_files -norecurse GPIO_BOX.v
add_files -norecurse GPIO_BOX_tb.v
add_files -norecurse DAC_SHIM.v
add_files -norecurse ADC_filter.v
add_files -norecurse ADC_shift_reg.v
add_files -norecurse ADC_filter_tb.v
#add_files -norecurse OR_tb.v
#add_files -norecurse fsm_mux_tb.v
#add_files -norecurse pulse_tb.v
#add_files -norecurse new_FSM_tb.v

#update_compile_order -fileset sources_1

create_bd_cell -type module -reference ADC_REG ADC_REG
create_bd_cell -type module -reference ADC_filter ADC_A_filter
create_bd_cell -type module -reference ADC_filter ADC_B_filter
create_bd_cell -type module -reference newer_top TOPS

# Zynq processing system with RedPitaya specific preset
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7 processing_system7_0
set_property -dict [list CONFIG.PCW_USE_S_AXI_HP0 {1}] [get_bd_cells processing_system7_0]
#set_property -dict [list CONFIG.PCW_IMPORT_BOARD_PRESET {cfg/red_pitaya.xml}] [get_bd_cells processing_system7_0]

apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" Master "Disable" Slave "Disable" }  [get_bd_cells processing_system7_0]
connect_bd_net [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0]
connect_bd_net [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0/FCLK_CLK0]
endgroup

# AXI GPIO IP core
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio axi_gpio_0
set_property -dict [list CONFIG.C_IS_DUAL {1} CONFIG.C_ALL_INPUTS_2 {1}] [get_bd_cells axi_gpio_0]
connect_bd_net [get_bd_pins axi_gpio_0/gpio_io_i] [get_bd_pins axi_gpio_0/gpio_io_o]
endgroup

apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins axi_gpio_0/S_AXI]
set_property offset 0x42000000 [get_bd_addr_segs {processing_system7_0/Data/SEG_axi_gpio_0_Reg}]
set_property range 4K [get_bd_addr_segs {processing_system7_0/Data/SEG_axi_gpio_0_Reg}]

# Buffers for differential IOs
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0
set_property -dict [list CONFIG.C_SIZE {6}] [get_bd_cells util_ds_buf_0]
connect_bd_net [get_bd_ports adc_dat_a_p_i] [get_bd_pins util_ds_buf_0/IBUF_DS_P]
connect_bd_net [get_bd_ports adc_dat_a_n_i] [get_bd_pins util_ds_buf_0/IBUF_DS_N]

create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_1
set_property -dict [list CONFIG.C_SIZE {6}] [get_bd_cells util_ds_buf_1]
connect_bd_net [get_bd_ports adc_dat_b_p_i] [get_bd_pins util_ds_buf_1/IBUF_DS_P]
connect_bd_net [get_bd_ports adc_dat_b_n_i] [get_bd_pins util_ds_buf_1/IBUF_DS_N]
endgroup

# Define all 8 LEDs
set_property LEFT 7 [get_bd_ports led_o]


startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0
set_property -dict [list CONFIG.IN0_WIDTH {6} CONFIG.IN1_WIDTH {6}] [get_bd_cells xlconcat_0]
endgroup

connect_bd_net [get_bd_pins xlconcat_0/In0] [get_bd_pins util_ds_buf_0/IBUF_OUT]
connect_bd_net [get_bd_pins xlconcat_0/In1] [get_bd_pins util_ds_buf_1/IBUF_OUT]

connect_bd_net [get_bd_pins ADC_REG/data_in] [get_bd_pins xlconcat_0/dout]
#connect_bd_net [get_bd_ports adc_clk_i] [get_bd_pins xls_ADC_CLK_A/Din]
#connect_bd_net [get_bd_ports adc_clk_i] [get_bd_pins xls_ADC_CLK_B/Din]
connect_bd_net [get_bd_pins ADC_REG/adc_clk_p] [get_bd_ports adc_clk_p]
connect_bd_net [get_bd_pins ADC_REG/adc_clk_n] [get_bd_ports adc_clk_n]

connect_bd_net [get_bd_pins ADC_A_filter/ADC_in] [get_bd_pins ADC_REG/a_data_out]
connect_bd_net [get_bd_pins ADC_B_filter/ADC_in] [get_bd_pins ADC_REG/b_data_out]

connect_bd_net [get_bd_pins ADC_A_filter/ADC_clk] [get_bd_pins ADC_REG/adc_clk]
connect_bd_net [get_bd_pins ADC_B_filter/ADC_clk] [get_bd_pins ADC_REG/adc_clk]
 



# ====================================================================================
# Connections 

#connect_bd_net [get_bd_pins U_REG_0/wrt] [get_bd_pins FSM/U_REG_WRT]
#connect_bd_net [get_bd_pins U_REG_1/wrt] [get_bd_pins FSM/U_REG_WRT]

#connect_bd_net [get_bd_pins U_REG_0/rst] [get_bd_pins FSM/U_REG_RST]
#connect_bd_net [get_bd_pins U_REG_1/rst] [get_bd_pins FSM/U_REG_RST]

#connect_bd_net [get_bd_pins U_REG_0/clk] [get_bd_pins ADC_REG/adc_clk]
#connect_bd_net [get_bd_pins U_REG_1/clk] [get_bd_pins ADC_REG/adc_clk]

#connect_bd_net [get_bd_pins DELTA_U_0/rst] [get_bd_pins FSM/PERB_REG_RST]
#connect_bd_net [get_bd_pins DELTA_U_1/rst] [get_bd_pins FSM/PERB_REG_RST]

#connect_bd_net [get_bd_pins J_PLUS_REG/data_in] [get_bd_pins ADC_REG/a_data_out]
#connect_bd_net [get_bd_pins J_PLUS_REG/wrt] [get_bd_pins FSM/J_PLUS_REG_WRT] 
#connect_bd_net [get_bd_pins J_PLUS_REG/rst] [get_bd_pins FSM/J_PLUS_REG_RST]
#connect_bd_net [get_bd_pins J_PLUS_REG/clk] [get_bd_pins ADC_REG/adc_clk]
#connect_bd_net [get_bd_pins J_PLUS_REG/data_out] [get_bd_pins DELTA_J/J_p]

#connect_bd_net [get_bd_pins J_MINUS_REG/data_in] [get_bd_pins ADC_REG/a_data_out]
#connect_bd_net [get_bd_pins J_MINUS_REG/wrt] [get_bd_pins FSM/J_MINUS_REG_WRT] 
#connect_bd_net [get_bd_pins J_MINUS_REG/rst] [get_bd_pins FSM/J_MINUS_REG_RST]
#connect_bd_net [get_bd_pins J_MINUS_REG/clk] [get_bd_pins ADC_REG/adc_clk]
#connect_bd_net [get_bd_pins J_MINUS_REG/data_out] [get_bd_pins DELTA_J/J_m]

#connect_bd_net [get_bd_pins DELTA_J/fp_delta_out] [get_bd_pins DELTA_GAIN/delta_in]
#connect_bd_net [get_bd_pins DELTA_GAIN/J_cons_in] [get_bd_pins GAIN/gain]

#connect_bd_net [get_bd_pins DELTA_U_0/clk] [get_bd_ports TRIG_IN]
#connect_bd_net [get_bd_pins DELTA_U_1/clk] [get_bd_ports TRIG_IN]


#connect_bd_net [get_bd_pins PERB_ADD_SUB_0/u_in] [get_bd_pins U_REG_0/data_out]
#connect_bd_net [get_bd_pins PERB_ADD_SUB_0/perb_in] [get_bd_pins DELTA_U_0/out]
#connect_bd_net [get_bd_pins PERB_ADD_SUB_1/u_in] [get_bd_pins U_REG_1/data_out]
#connect_bd_net [get_bd_pins PERB_ADD_SUB_1/perb_in] [get_bd_pins DELTA_U_1/out]

#connect_bd_net [get_bd_pins DAC_MUX/DAC_SEL] [get_bd_pins FSM/DAC_SEL]
#connect_bd_net [get_bd_pins DAC_MUX/U0] [get_bd_pins U_REG_0/data_out]
#connect_bd_net [get_bd_pins DAC_MUX/U1] [get_bd_pins U_REG_1/data_out]
#connect_bd_net [get_bd_pins DAC_MUX/U0_p] [get_bd_pins PERB_ADD_SUB_0/perb_plus]
#connect_bd_net [get_bd_pins DAC_MUX/U0_m] [get_bd_pins PERB_ADD_SUB_0/perb_minus]
#connect_bd_net [get_bd_pins DAC_MUX/U1_p] [get_bd_pins PERB_ADD_SUB_1/perb_plus]
#connect_bd_net [get_bd_pins DAC_MUX/U1_m] [get_bd_pins PERB_ADD_SUB_1/perb_minus]
#connect_bd_net [get_bd_ports dac_dat_a_o] [get_bd_pins DAC_MUX/DAC_A_OUT]
#connect_bd_net [get_bd_ports dac_dat_b_o] [get_bd_pins DAC_MUX/DAC_B_OUT]

#connect_bd_net [get_bd_pins UPDATER/U0_raw] [get_bd_pins U_REG_0/data_out]
#connect_bd_net [get_bd_pins UPDATER/U1_raw] [get_bd_pins U_REG_1/data_out]
#connect_bd_net [get_bd_pins UPDATER/U0_delta_raw] [get_bd_pins DELTA_U_0/out]
#connect_bd_net [get_bd_pins UPDATER/U1_delta_raw] [get_bd_pins DELTA_U_1/out]
#connect_bd_net [get_bd_pins UPDATER/delta_gain_fp] [get_bd_pins DELTA_GAIN/delta_J_Volts]
#connect_bd_net [get_bd_pins U_REG_0/data_in] [get_bd_pins UPDATER/new_U0]
#connect_bd_net [get_bd_pins U_REG_1/data_in] [get_bd_pins UPDATER/new_U1]

#connect_bd_net [get_bd_pins DELTA_GAIN/delta_J_Volts] []
#connect_bd_net [get_bd_pins U_CON_BOX_0/clk] [get_bd_pins ADC_REG_0/adc_clk]

#connect_bd_net [get_bd_pins dac_spi_reset_o] [get_bd_pins xlc_false/dout]
#connect_bd_net [get_bd_pins dac_spi_clk_o] [get_bd_pins xlc_false/dout]
#connect_bd_net [get_bd_pins dac_spi_csb_o] [get_bd_pins xlc_false/dout]
#connect_bd_net [get_bd_pins xlc_true/dout] [get_bd_ports dac_spi_sdio_o] 

#connect_bd_net [get_bd_pins FSM/TRIG_IN] [get_bd_pins TRIG_IN]
#connect_bd_net [get_bd_pins FSM_0/reset] [get_bd_pins xlc_false/dout]
#connect_bd_net [get_bd_pins FSM_0/level] [get_bd_pins xlc_true/dout]
#connect_bd_net [get_bd_pins FSM/gpio_in] [get_bd_pins axi_gpio_0/gpio_io_o]
#connect_bd_net [get_bd_pins FSM/gpio_out] [get_bd_pins axi_gpio_0/gpio2_io_i]
#connect_bd_net [get_bd_pins FSM/adc_clk] [get_bd_pins ADC_REG/adc_clk]

#connect_bd_net [get_bd_pins LED_BOX/ADC_in] [get_bd_pins ADC_REG/a_data_out]
#connect_bd_net [get_bd_pins FSM/adc_data_in] [get_bd_pins ADC_REG/a_data_out]
#connect_bd_net [get_bd_ports led_o] [get_bd_pins LED_BOX/LED_OUT]

#connect_bd_net [get_bd_pins LED_BOX_0/in_0] [get_bd_pins FSM_0/Mealy_tick]
#connect_bd_net [get_bd_pins LED_BOX_0/in_1] [get_bd_pins FSM_0/Moore_tick]
#connect_bd_net [get_bd_pins LED_BOX_0/in_2] [get_bd_pins xlc_level/dout]
#connect_bd_net [get_bd_pins LED_BOX_0/in_3] [get_bd_pins xlc_level/dout]
#connect_bd_net [get_bd_pins LED_BOX_0/in_4] [get_bd_pins xlc_reset/dout]
#connect_bd_net [get_bd_pins LED_BOX_0/in_5] [get_bd_pins xlc_reset/dout]
#connect_bd_net [get_bd_pins LED_BOX_0/in_6] [get_bd_pins TRIG_IN]
#connect_bd_net [get_bd_pins LED_BOX_0/in_7] [get_bd_pins xlc_level/dout]

#connect_bd_net [get_bd_pins axi_gpio_0/gpio2_io_i] [get_bd_pins xlconcat_1/dout]

connect_bd_net [get_bd_pins TOPS/TRIG_IN] [get_bd_ports TRIG_IN]
connect_bd_net [get_bd_pins TOPS/ADC_CLK] [get_bd_pins ADC_REG/adc_clk]
connect_bd_net [get_bd_pins TOPS/ADC_A] [get_bd_pins ADC_A_filter/ADC_out]
connect_bd_net [get_bd_pins TOPS/ADC_B] [get_bd_pins ADC_B_filter/ADC_out]
connect_bd_net [get_bd_pins TOPS/GPIO_IN] [get_bd_pins axi_gpio_0/gpio_io_o]
connect_bd_net [get_bd_pins TOPS/DAC_SPI_SDIO] [get_bd_ports dac_spi_sdio_o]
connect_bd_net [get_bd_pins TOPS/DAC_SPI_CLK] [get_bd_ports dac_spi_clk_o]
connect_bd_net [get_bd_pins TOPS/DAC_SPI_RST] [get_bd_ports dac_spi_reset_o]
connect_bd_net [get_bd_pins TOPS/DAC_SPI_CSB] [get_bd_ports dac_spi_csb_o]
connect_bd_net [get_bd_pins TOPS/DAC_A_OUT] [get_bd_ports dac_dat_a_o]
connect_bd_net [get_bd_pins TOPS/DAC_B_OUT] [get_bd_ports dac_dat_b_o]
connect_bd_net [get_bd_pins TOPS/GPIO_OUT] [get_bd_pins axi_gpio_0/gpio2_io_i]
connect_bd_net [get_bd_pins TOPS/LED_OUT] [get_bd_ports led_o]


# ====================================================================================
# Generate output products and wrapper, add constraint 

generate_target all [get_files  $bd_path/system.bd]

make_wrapper -files [get_files $bd_path/system.bd] -top
add_files -norecurse $bd_path/hdl/system_wrapper.v


# Load RedPitaya constraint files
set files [glob -nocomplain cfg/*.xdc]
if {[llength $files] > 0} {
  add_files -norecurse -fileset constrs_1 $files
}

#set_property top system_wrapper [current_fileset]

set_property VERILOG_DEFINE {TOOL_VIVADO} [current_fileset]
set_property STRATEGY Flow_PerfOptimized_High [get_runs synth_1]
set_property STRATEGY Performance_NetDelay_high [get_runs impl_1]

group_bd_cells PS7 [get_bd_cells processing_system7_0] [get_bd_cells rst_ps7_0_50M] [get_bd_cells ps7_0_axi_periph] [get_bd_cells axi_gpio_0]
group_bd_cells ADC_BLOCK [get_bd_cells util_ds_buf_0] [get_bd_cells util_ds_buf_1] [get_bd_cells xlconcat_0] [get_bd_cells ADC_REG] [get_bd_cells ADC_A_filter] [get_bd_cells ADC_B_filter]

set_property top system_wrapper [current_fileset]

