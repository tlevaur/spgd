-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri Jul  1 16:46:35 2022
-- Host        : turing running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/taylor/Documents/new_spgd/tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_ADC_REG_0/system_ADC_REG_0_stub.vhdl
-- Design      : system_ADC_REG_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_ADC_REG_0 is
  Port ( 
    adc_clk_p : in STD_LOGIC;
    adc_clk_n : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    a_data_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    b_data_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_clk : out STD_LOGIC
  );

end system_ADC_REG_0;

architecture stub of system_ADC_REG_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "adc_clk_p,adc_clk_n,data_in[11:0],a_data_out[11:0],b_data_out[11:0],adc_clk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ADC_REG,Vivado 2020.1";
begin
end;
