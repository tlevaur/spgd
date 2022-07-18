
# ==================================================================================================
# block_design.tcl - Create Vivado Project - 3_stopwatch
#
# This script should be run from the base redpitaya-guides/ folder inside Vivado tcl console.
#
# This script is modification of Pavel Demin's project.tcl and block_design.tcl files
# by Anton Potocnik, 20.11.2016
# Tested with Vivado 2016.3
# ==================================================================================================


set project_name SPGD
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
set files [glob -nocomplain  /home/taylor/Code/spgd/fpga_projects/$project_name/src/*.v]
if {[llength $files] > 0} {
  add_files -norecurse $files
}

create_bd_cell -type module -reference ADC_REG ADC_REG
# create_bd_cell -type module -reference my_timer my_timer
# create_bd_cell -type module -reference GPIO_BOX GPIO_BOX
# create_bd_cell -type module -reference pulse_FSM pulse_FSM
# create_bd_cell -type module -reference pulse_DAC pulse_DAC
create_bd_cell -type module -reference LED_CONTROLLER LED_CONTROLLER
# create_bd_cell -type module -reference twos_to_ADC_offset twos_to_ADC_offset
# create_bd_cell -type module -reference DAC_offset_to_twos DAC_offset_to_twosA
# create_bd_cell -type module -reference DAC_offset_to_twos DAC_offset_to_twosB
# create_bd_cell -type module -reference ADC_AVERAGE ADC_AVERAGE
create_bd_cell -type module -reference ADC_DAC_LOOP ADC_DAC_LOOP
create_bd_cell -type module -reference axi_cfg_register axi_cfg_register

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

# connect_bd_net [get_bd_pins ADC_REG/a_data_out] [get_bd_pins twos_to_ADC_offset/data_in]
# connect_bd_net [get_bd_pins twos_to_ADC_offset/data_out] [get_bd_pins GPIO_BOX/ADC_A]
# connect_bd_net [get_bd_pins ADC_REG/b_data_out] [get_bd_pins twos_to_ADC_offset/data_in]
# connect_bd_net [get_bd_pins twos_to_ADC_offset/data_out] [get_bd_pins GPIO_BOX/ADC_B]

connect_bd_net [get_bd_pins ADC_DAC_LOOP/ADC_DATA_IN] [get_bd_pins ADC_REG/a_data_out]
connect_bd_net [get_bd_pins ADC_REG/adc_clk] [get_bd_pins ADC_DAC_LOOP/ADC_CLK]
connect_bd_net [get_bd_pins ADC_DAC_LOOP/CFG_IN] [get_bd_pins axi_cfg_register/cfg_data]
connect_bd_net [get_bd_pins axi_gpio_0/gpio_io_o] [get_bd_pins ADC_DAC_LOOP/GP_IN]
connect_bd_net [get_bd_pins axi_gpio_0/gpio2_io_i] [get_bd_pins ADC_DAC_LOOP/GP_OUT]
connect_bd_net [get_bd_pins LED_CONTROLLER/val] [get_bd_pins ADC_DAC_LOOP/DONE]
# connect_bd_net [get_bd_pins DAC_offset_to_twosA/data_in] [get_bd_pins ADC_DAC_LOOP/DACA_CODE_OUT]
# connect_bd_net [get_bd_pins DAC_offset_to_twosB/data_in] [get_bd_pins ADC_DAC_LOOP/DACB_CODE_OUT]
connect_bd_net [get_bd_pins ADC_DAC_LOOP/DACA_CODE_OUT] [get_bd_ports dac_dat_a_o]
connect_bd_net [get_bd_pins ADC_DAC_LOOP/DACB_CODE_OUT] [get_bd_ports dac_dat_b_o]



# connect_bd_net [get_bd_pins GPIO_BOX/ADC_A] [get_bd_pins ADC_REG/a_data_out]
# connect_bd_net [get_bd_pins GPIO_BOX/ADC_B] [get_bd_pins ADC_REG/b_data_out]
# connect_bd_net [get_bd_pins GPIO_BOX/GP_OUT] [get_bd_pins axi_gpio_0/gpio2_io_i]
# connect_bd_net [get_bd_pins GPIO_BOX/GP_IN] [get_bd_pins axi_gpio_0/gpio_io_o]   ---------------------
# connect_bd_net [get_bd_pins GPIO_BOX/LED_OUT]  [get_bd_pins LED_CONTROLLER/val]
#connect_bd_net [get_bd_pins GPIO_BOX/DAC_A] [get_bd_ports dac_dat_a_o]
#connect_bd_net [get_bd_pins GPIO_BOX/DAC_B] [get_bd_ports dac_dat_b_o]



# connect_bd_net [get_bd_pins pulse_FSM/s] [get_bd_ports TRIG_IN]
# connect_bd_net [get_bd_pins pulse_FSM/clk] [get_bd_pins ADC_REG/adc_clk]
# connect_bd_net [get_bd_pins pulse_FSM/rst] [get_bd_pins GPIO_BOX/pulse_RST]
# connect_bd_net [get_bd_pins pulse_FSM/P] [get_bd_pins pulse_DAC/P]
# connect_bd_net [get_bd_pins pulse_DAC/DAC_A] [get_bd_ports dac_dat_a_o]
# connect_bd_net [get_bd_pins pulse_DAC/DAC_B] [get_bd_ports dac_dat_b_o]

connect_bd_net [get_bd_pins LED_CONTROLLER/led_o] [get_bd_ports led_o]
# startgroup
# create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_2
# endgroup
# set_property -dict [list CONFIG.NUM_PORTS {4}] [get_bd_cells xlconcat_2]
# connect_bd_net [get_bd_pins xlconcat_2/dout] [get_bd_pins LED_CONTROLLER/val]
# connect_bd_net [get_bd_pins xlconcat_2/In3] [get_bd_pins my_timer/val_0]
# connect_bd_net [get_bd_pins xlconcat_2/In0] [get_bd_pins my_timer/val_0]
# connect_bd_net [get_bd_pins my_timer/val_1] [get_bd_pins xlconcat_2/In1]
# connect_bd_net [get_bd_pins my_timer/val_1] [get_bd_pins xlconcat_2/In2]

#connect_bd_net [get_bd_pins PS7/axi_gpio_0/gpio2_io_i] [get_bd_pins my_timer/GP_OUT]
#connect_bd_net [get_bd_pins my_timer/GP_IN] [get_bd_pins axi_gpio_0/gpio_io_o]
# connect_bd_net [get_bd_pins my_timer/ADC_CLK] [get_bd_pins ADC_REG/adc_clk] 
#connect_bd_net [get_bd_pins my_timer/DAC_A_OUT] [get_bd_ports dac_dat_a_o]
#connect_bd_net [get_bd_pins my_timer/DAC_B_OUT] [get_bd_ports dac_dat_b_o]

connect_bd_net [get_bd_ports dac_spi_clk_o] [get_bd_pins ADC_DAC_LOOP/val_0]
connect_bd_net [get_bd_ports dac_spi_csb_o] [get_bd_pins ADC_DAC_LOOP/val_0]
connect_bd_net [get_bd_ports dac_spi_reset_o] [get_bd_pins ADC_DAC_LOOP/val_0]
connect_bd_net [get_bd_pins ADC_DAC_LOOP/val_1] [get_bd_ports dac_spi_sdio_o]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {/processing_system7_0/FCLK_CLK0 (50 MHz)} Clk_slave {/processing_system7_0/FCLK_CLK0 (50 MHz)} Clk_xbar {/processing_system7_0/FCLK_CLK0 (50 MHz)} Master {/processing_system7_0/M_AXI_GP0} Slave {/axi_cfg_register/s_axi} ddr_seg {Auto} intc_ip {/ps7_0_axi_periph} master_apm {0}}  [get_bd_intf_pins axi_cfg_register/s_axi]

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
group_bd_cells ADC_BLOCK [get_bd_cells util_ds_buf_0] [get_bd_cells util_ds_buf_1] [get_bd_cells xlconcat_0] [get_bd_cells ADC_REG]

set_property top system_wrapper [current_fileset]

