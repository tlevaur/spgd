-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Jul 14 14:21:09 2022
-- Host        : turing running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/taylor/Documents/GH/SPGD/fpga_projects/SPGD/tmp/SPGD/SPGD.srcs/sources_1/bd/system/ip/system_LED_CONTROLLER_0/system_LED_CONTROLLER_0_sim_netlist.vhdl
-- Design      : system_LED_CONTROLLER_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_LED_CONTROLLER_0 is
  port (
    val : in STD_LOGIC_VECTOR ( 0 to 0 );
    led_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_LED_CONTROLLER_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_LED_CONTROLLER_0 : entity is "system_LED_CONTROLLER_0,LED_CONTROLLER,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_LED_CONTROLLER_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_LED_CONTROLLER_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_LED_CONTROLLER_0 : entity is "LED_CONTROLLER,Vivado 2020.1";
end system_LED_CONTROLLER_0;

architecture STRUCTURE of system_LED_CONTROLLER_0 is
  signal \^val\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^val\(0) <= val(0);
  led_o(0) <= \^val\(0);
end STRUCTURE;
