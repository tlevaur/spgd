-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Jun  9 10:27:41 2022
-- Host        : turing running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/taylor/Documents/new_spgd/tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_my_timer_0/system_my_timer_0_stub.vhdl
-- Design      : system_my_timer_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_my_timer_0 is
  Port ( 
    GP_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ADC_CLK : in STD_LOGIC;
    DAC_A_OUT : out STD_LOGIC_VECTOR ( 13 downto 0 );
    DAC_B_OUT : out STD_LOGIC_VECTOR ( 13 downto 0 );
    val_0 : out STD_LOGIC;
    val_1 : out STD_LOGIC
  );

end system_my_timer_0;

architecture stub of system_my_timer_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "GP_IN[31:0],ADC_CLK,DAC_A_OUT[13:0],DAC_B_OUT[13:0],val_0,val_1";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "my_timer,Vivado 2020.1";
begin
end;
