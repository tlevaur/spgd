-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Jul 14 14:21:09 2022
-- Host        : turing running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/taylor/Documents/GH/SPGD/fpga_projects/SPGD/tmp/SPGD/SPGD.srcs/sources_1/bd/system/ip/system_LED_CONTROLLER_0/system_LED_CONTROLLER_0_stub.vhdl
-- Design      : system_LED_CONTROLLER_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_LED_CONTROLLER_0 is
  Port ( 
    val : in STD_LOGIC_VECTOR ( 0 to 0 );
    led_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end system_LED_CONTROLLER_0;

architecture stub of system_LED_CONTROLLER_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "val[0:0],led_o[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "LED_CONTROLLER,Vivado 2020.1";
begin
end;
