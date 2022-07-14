-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Jul  5 14:28:27 2022
-- Host        : turing running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_SPGD_SYS_0_stub.vhdl
-- Design      : system_SPGD_SYS_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ADC_IN : in STD_LOGIC_VECTOR ( 63 downto 0 );
    GP_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ADC_CLK : in STD_LOGIC;
    ADC_DONE : in STD_LOGIC;
    ADC_EN : out STD_LOGIC;
    ADC_SEL : out STD_LOGIC;
    REG_RESET : out STD_LOGIC;
    DAC_A_OUT : out STD_LOGIC_VECTOR ( 63 downto 0 );
    DAC_B_OUT : out STD_LOGIC_VECTOR ( 63 downto 0 );
    GP_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    LED_O : out STD_LOGIC_VECTOR ( 7 downto 0 );
    val_0 : out STD_LOGIC;
    val_1 : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ADC_IN[63:0],GP_IN[31:0],ADC_CLK,ADC_DONE,ADC_EN,ADC_SEL,REG_RESET,DAC_A_OUT[63:0],DAC_B_OUT[63:0],GP_OUT[31:0],LED_O[7:0],val_0,val_1";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SPGD_SYS,Vivado 2020.1";
begin
end;