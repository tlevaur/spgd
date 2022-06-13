-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Jun  9 10:27:40 2022
-- Host        : turing running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/taylor/Documents/new_spgd/tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_GPIO_BOX_0/system_GPIO_BOX_0_stub.vhdl
-- Design      : system_GPIO_BOX_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_GPIO_BOX_0 is
  Port ( 
    GP_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ADC_A : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ADC_B : in STD_LOGIC_VECTOR ( 11 downto 0 );
    GP_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DAC_A : out STD_LOGIC_VECTOR ( 13 downto 0 );
    DAC_B : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );

end system_GPIO_BOX_0;

architecture stub of system_GPIO_BOX_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "GP_IN[31:0],ADC_A[11:0],ADC_B[11:0],GP_OUT[31:0],DAC_A[13:0],DAC_B[13:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "GPIO_BOX,Vivado 2020.1";
begin
end;
