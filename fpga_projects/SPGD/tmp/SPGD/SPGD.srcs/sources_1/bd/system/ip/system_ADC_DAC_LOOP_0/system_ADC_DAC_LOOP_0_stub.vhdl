-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Jul 14 17:38:34 2022
-- Host        : turing running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/taylor/Documents/GH/SPGD/fpga_projects/SPGD/tmp/SPGD/SPGD.srcs/sources_1/bd/system/ip/system_ADC_DAC_LOOP_0/system_ADC_DAC_LOOP_0_stub.vhdl
-- Design      : system_ADC_DAC_LOOP_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_ADC_DAC_LOOP_0 is
  Port ( 
    ADC_CLK : in STD_LOGIC;
    ADC_DATA_IN : in STD_LOGIC_VECTOR ( 11 downto 0 );
    GP_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    GP_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DONE : out STD_LOGIC;
    val_0 : out STD_LOGIC;
    val_1 : out STD_LOGIC;
    DACA_CODE_OUT : out STD_LOGIC_VECTOR ( 13 downto 0 );
    DACB_CODE_OUT : out STD_LOGIC_VECTOR ( 13 downto 0 );
    CFG_IN : in STD_LOGIC_VECTOR ( 1023 downto 0 )
  );

end system_ADC_DAC_LOOP_0;

architecture stub of system_ADC_DAC_LOOP_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ADC_CLK,ADC_DATA_IN[11:0],GP_IN[31:0],GP_OUT[31:0],DONE,val_0,val_1,DACA_CODE_OUT[13:0],DACB_CODE_OUT[13:0],CFG_IN[1023:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ADC_DAC_LOOP,Vivado 2020.1";
begin
end;
