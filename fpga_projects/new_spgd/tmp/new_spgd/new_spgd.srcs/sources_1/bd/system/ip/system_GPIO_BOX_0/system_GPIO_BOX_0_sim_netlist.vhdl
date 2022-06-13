-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Jun  9 10:27:41 2022
-- Host        : turing running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/taylor/Documents/new_spgd/tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_GPIO_BOX_0/system_GPIO_BOX_0_sim_netlist.vhdl
-- Design      : system_GPIO_BOX_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_GPIO_BOX_0 is
  port (
    GP_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ADC_A : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ADC_B : in STD_LOGIC_VECTOR ( 11 downto 0 );
    GP_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DAC_A : out STD_LOGIC_VECTOR ( 13 downto 0 );
    DAC_B : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_GPIO_BOX_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_GPIO_BOX_0 : entity is "system_GPIO_BOX_0,GPIO_BOX,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_GPIO_BOX_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_GPIO_BOX_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_GPIO_BOX_0 : entity is "GPIO_BOX,Vivado 2020.1";
end system_GPIO_BOX_0;

architecture STRUCTURE of system_GPIO_BOX_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^adc_a\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^adc_b\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^gp_in\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  DAC_A(13 downto 0) <= \^gp_in\(13 downto 0);
  DAC_B(13 downto 0) <= \^gp_in\(27 downto 14);
  GP_OUT(31) <= \<const0>\;
  GP_OUT(30) <= \<const0>\;
  GP_OUT(29) <= \<const0>\;
  GP_OUT(28) <= \<const0>\;
  GP_OUT(27 downto 16) <= \^adc_b\(11 downto 0);
  GP_OUT(15) <= \<const0>\;
  GP_OUT(14) <= \<const0>\;
  GP_OUT(13) <= \<const0>\;
  GP_OUT(12) <= \<const0>\;
  GP_OUT(11 downto 0) <= \^adc_a\(11 downto 0);
  \^adc_a\(11 downto 0) <= ADC_A(11 downto 0);
  \^adc_b\(11 downto 0) <= ADC_B(11 downto 0);
  \^gp_in\(27 downto 0) <= GP_IN(27 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
