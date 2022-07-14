-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Jul  5 11:37:08 2022
-- Host        : turing running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/taylor/Documents/new_spgd/tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_ADC_fp_0/system_ADC_fp_0_stub.vhdl
-- Design      : system_ADC_fp_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_ADC_fp_0 is
  Port ( 
    ADC_CLK : in STD_LOGIC;
    ADC_SEL : in STD_LOGIC;
    ADC_EN : in STD_LOGIC;
    REG_RST : in STD_LOGIC;
    ADC_A : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ADC_B : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ADC_DONE : out STD_LOGIC;
    ADC_16Q48_OUT : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end system_ADC_fp_0;

architecture stub of system_ADC_fp_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ADC_CLK,ADC_SEL,ADC_EN,REG_RST,ADC_A[11:0],ADC_B[11:0],ADC_DONE,ADC_16Q48_OUT[63:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ADC_fp,Vivado 2020.1";
begin
end;
