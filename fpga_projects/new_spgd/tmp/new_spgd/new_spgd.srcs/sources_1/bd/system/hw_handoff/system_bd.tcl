
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# GPIO_BOX, my_timer, ADC_REG

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-3
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: PS7
proc create_hier_cell_PS7 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_PS7() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR

  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO


  # Create pins
  create_bd_pin -dir I -from 31 -to 0 gpio2_io_i
  create_bd_pin -dir O -from 31 -to 0 gpio_io_o

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS_2 {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_0

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_USE_S_AXI_HP0 {1} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
 ] $ps7_0_axi_periph

  # Create instance: rst_ps7_0_50M, and set properties
  set rst_ps7_0_50M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_50M ]

  # Create interface connections
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_pins DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_pins FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]

  # Create port connections
  connect_bd_net -net GPIO_BOX_GP_OUT [get_bd_pins gpio2_io_i] [get_bd_pins axi_gpio_0/gpio2_io_i]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_pins gpio_io_o] [get_bd_pins axi_gpio_0/gpio_io_i] [get_bd_pins axi_gpio_0/gpio_io_o]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps7_0_50M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_50M/ext_reset_in]
  connect_bd_net -net rst_ps7_0_50M_peripheral_aresetn [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps7_0_50M/peripheral_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: ADC_BLOCK
proc create_hier_cell_ADC_BLOCK { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_ADC_BLOCK() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 11 -to 0 a_data_out
  create_bd_pin -dir O -type clk adc_clk
  create_bd_pin -dir I adc_clk_n
  create_bd_pin -dir I adc_clk_p
  create_bd_pin -dir I -from 5 -to 0 adc_dat_a_n_i
  create_bd_pin -dir I -from 5 -to 0 adc_dat_a_p_i
  create_bd_pin -dir I -from 5 -to 0 adc_dat_b_n_i
  create_bd_pin -dir I -from 5 -to 0 adc_dat_b_p_i
  create_bd_pin -dir O -from 11 -to 0 b_data_out

  # Create instance: ADC_REG, and set properties
  set block_name ADC_REG
  set block_cell_name ADC_REG
  if { [catch {set ADC_REG [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ADC_REG eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {6} \
 ] $util_ds_buf_0

  # Create instance: util_ds_buf_1, and set properties
  set util_ds_buf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_1 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {6} \
 ] $util_ds_buf_1

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {6} \
   CONFIG.IN1_WIDTH {6} \
 ] $xlconcat_0

  # Create port connections
  connect_bd_net -net ADC_REG_a_data_out [get_bd_pins a_data_out] [get_bd_pins ADC_REG/a_data_out]
  connect_bd_net -net ADC_REG_adc_clk [get_bd_pins adc_clk] [get_bd_pins ADC_REG/adc_clk]
  connect_bd_net -net ADC_REG_b_data_out [get_bd_pins b_data_out] [get_bd_pins ADC_REG/b_data_out]
  connect_bd_net -net adc_clk_n_1 [get_bd_pins adc_clk_n] [get_bd_pins ADC_REG/adc_clk_n]
  connect_bd_net -net adc_clk_p_1 [get_bd_pins adc_clk_p] [get_bd_pins ADC_REG/adc_clk_p]
  connect_bd_net -net adc_dat_a_n_i_1 [get_bd_pins adc_dat_a_n_i] [get_bd_pins util_ds_buf_0/IBUF_DS_N]
  connect_bd_net -net adc_dat_a_p_i_1 [get_bd_pins adc_dat_a_p_i] [get_bd_pins util_ds_buf_0/IBUF_DS_P]
  connect_bd_net -net adc_dat_b_n_i_1 [get_bd_pins adc_dat_b_n_i] [get_bd_pins util_ds_buf_1/IBUF_DS_N]
  connect_bd_net -net adc_dat_b_p_i_1 [get_bd_pins adc_dat_b_p_i] [get_bd_pins util_ds_buf_1/IBUF_DS_P]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins util_ds_buf_0/IBUF_OUT] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net util_ds_buf_1_IBUF_OUT [get_bd_pins util_ds_buf_1/IBUF_OUT] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins ADC_REG/data_in] [get_bd_pins xlconcat_0/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]

  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]


  # Create ports
  set TRIG_IN [ create_bd_port -dir I TRIG_IN ]
  set adc_clk_n [ create_bd_port -dir I adc_clk_n ]
  set adc_clk_p [ create_bd_port -dir I adc_clk_p ]
  set adc_dat_a_n_i [ create_bd_port -dir I -from 5 -to 0 adc_dat_a_n_i ]
  set adc_dat_a_p_i [ create_bd_port -dir I -from 5 -to 0 adc_dat_a_p_i ]
  set adc_dat_b_n_i [ create_bd_port -dir I -from 5 -to 0 adc_dat_b_n_i ]
  set adc_dat_b_p_i [ create_bd_port -dir I -from 5 -to 0 adc_dat_b_p_i ]
  set dac_dat_a_o [ create_bd_port -dir O -from 13 -to 0 dac_dat_a_o ]
  set dac_dat_b_o [ create_bd_port -dir O -from 13 -to 0 dac_dat_b_o ]
  set dac_spi_clk_o [ create_bd_port -dir O dac_spi_clk_o ]
  set dac_spi_csb_o [ create_bd_port -dir O dac_spi_csb_o ]
  set dac_spi_reset_o [ create_bd_port -dir O dac_spi_reset_o ]
  set dac_spi_sdio_o [ create_bd_port -dir IO dac_spi_sdio_o ]
  set led_o [ create_bd_port -dir O -from 7 -to 0 led_o ]

  # Create instance: ADC_BLOCK
  create_hier_cell_ADC_BLOCK [current_bd_instance .] ADC_BLOCK

  # Create instance: GPIO_BOX, and set properties
  set block_name GPIO_BOX
  set block_cell_name GPIO_BOX
  if { [catch {set GPIO_BOX [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $GPIO_BOX eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: PS7
  create_hier_cell_PS7 [current_bd_instance .] PS7

  # Create instance: my_timer, and set properties
  set block_name my_timer
  set block_cell_name my_timer
  if { [catch {set my_timer [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $my_timer eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins PS7/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins PS7/FIXED_IO]

  # Create port connections
  connect_bd_net -net ADC_REG_a_data_out [get_bd_pins ADC_BLOCK/a_data_out] [get_bd_pins GPIO_BOX/ADC_A]
  connect_bd_net -net ADC_REG_adc_clk [get_bd_pins ADC_BLOCK/adc_clk] [get_bd_pins my_timer/ADC_CLK]
  connect_bd_net -net ADC_REG_b_data_out [get_bd_pins ADC_BLOCK/b_data_out] [get_bd_pins GPIO_BOX/ADC_B]
  connect_bd_net -net GPIO_BOX_DAC_A [get_bd_ports dac_dat_a_o] [get_bd_pins GPIO_BOX/DAC_A]
  connect_bd_net -net GPIO_BOX_DAC_B [get_bd_ports dac_dat_b_o] [get_bd_pins GPIO_BOX/DAC_B]
  connect_bd_net -net GPIO_BOX_GP_OUT [get_bd_pins GPIO_BOX/GP_OUT] [get_bd_pins PS7/gpio2_io_i]
  connect_bd_net -net adc_clk_n_1 [get_bd_ports adc_clk_n] [get_bd_pins ADC_BLOCK/adc_clk_n]
  connect_bd_net -net adc_clk_p_1 [get_bd_ports adc_clk_p] [get_bd_pins ADC_BLOCK/adc_clk_p]
  connect_bd_net -net adc_dat_a_n_i_1 [get_bd_ports adc_dat_a_n_i] [get_bd_pins ADC_BLOCK/adc_dat_a_n_i]
  connect_bd_net -net adc_dat_a_p_i_1 [get_bd_ports adc_dat_a_p_i] [get_bd_pins ADC_BLOCK/adc_dat_a_p_i]
  connect_bd_net -net adc_dat_b_n_i_1 [get_bd_ports adc_dat_b_n_i] [get_bd_pins ADC_BLOCK/adc_dat_b_n_i]
  connect_bd_net -net adc_dat_b_p_i_1 [get_bd_ports adc_dat_b_p_i] [get_bd_pins ADC_BLOCK/adc_dat_b_p_i]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_pins GPIO_BOX/GP_IN] [get_bd_pins PS7/gpio_io_o]
  connect_bd_net -net my_timer_val_0 [get_bd_ports dac_spi_clk_o] [get_bd_ports dac_spi_csb_o] [get_bd_ports dac_spi_reset_o] [get_bd_pins my_timer/val_0]
  connect_bd_net -net my_timer_val_1 [get_bd_ports dac_spi_sdio_o] [get_bd_pins my_timer/val_1]

  # Create address segments
  assign_bd_address -offset 0x42000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces PS7/processing_system7_0/Data] [get_bd_addr_segs PS7/axi_gpio_0/S_AXI/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


