-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Jul 14 14:21:15 2022
-- Host        : turing running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/taylor/Documents/GH/SPGD/fpga_projects/SPGD/tmp/SPGD/SPGD.srcs/sources_1/bd/system/ip/system_ADC_REG_0/system_ADC_REG_0_sim_netlist.vhdl
-- Design      : system_ADC_REG_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_REG_0_ADC_REG is
  port (
    adc_clk : out STD_LOGIC;
    a_data_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    b_data_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_clk_p : in STD_LOGIC;
    adc_clk_n : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_REG_0_ADC_REG : entity is "ADC_REG";
end system_ADC_REG_0_ADC_REG;

architecture STRUCTURE of system_ADC_REG_0_ADC_REG is
  signal \^adc_clk\ : STD_LOGIC;
  signal int_clk0 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of adc_clk_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of adc_clk_inst0 : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of adc_clk_inst0 : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of adc_clk_inst0 : label is "0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of adc_clk_inst0 : label is "IBUFGDS";
begin
  adc_clk <= \^adc_clk\;
adc_clk_inst: unisim.vcomponents.BUFG
     port map (
      I => int_clk0,
      O => \^adc_clk\
    );
adc_clk_inst0: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => adc_clk_p,
      IB => adc_clk_n,
      O => int_clk0
    );
\int_a_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(0),
      Q => a_data_out(0),
      R => '0'
    );
\int_a_data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(5),
      Q => a_data_out(10),
      R => '0'
    );
\int_a_data_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(5),
      Q => a_data_out(11),
      R => '0'
    );
\int_a_data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(0),
      Q => a_data_out(1),
      R => '0'
    );
\int_a_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(1),
      Q => a_data_out(2),
      R => '0'
    );
\int_a_data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(1),
      Q => a_data_out(3),
      R => '0'
    );
\int_a_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(2),
      Q => a_data_out(4),
      R => '0'
    );
\int_a_data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(2),
      Q => a_data_out(5),
      R => '0'
    );
\int_a_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(3),
      Q => a_data_out(6),
      R => '0'
    );
\int_a_data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(3),
      Q => a_data_out(7),
      R => '0'
    );
\int_a_data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(4),
      Q => a_data_out(8),
      R => '0'
    );
\int_a_data_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(4),
      Q => a_data_out(9),
      R => '0'
    );
\int_b_data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(6),
      Q => b_data_out(0),
      R => '0'
    );
\int_b_data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(11),
      Q => b_data_out(10),
      R => '0'
    );
\int_b_data_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(11),
      Q => b_data_out(11),
      R => '0'
    );
\int_b_data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(6),
      Q => b_data_out(1),
      R => '0'
    );
\int_b_data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(7),
      Q => b_data_out(2),
      R => '0'
    );
\int_b_data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(7),
      Q => b_data_out(3),
      R => '0'
    );
\int_b_data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(8),
      Q => b_data_out(4),
      R => '0'
    );
\int_b_data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(8),
      Q => b_data_out(5),
      R => '0'
    );
\int_b_data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(9),
      Q => b_data_out(6),
      R => '0'
    );
\int_b_data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(9),
      Q => b_data_out(7),
      R => '0'
    );
\int_b_data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(10),
      Q => b_data_out(8),
      R => '0'
    );
\int_b_data_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => \^adc_clk\,
      CE => '1',
      D => data_in(10),
      Q => b_data_out(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_REG_0 is
  port (
    adc_clk_p : in STD_LOGIC;
    adc_clk_n : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    a_data_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    b_data_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    adc_clk : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_ADC_REG_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_ADC_REG_0 : entity is "system_ADC_REG_0,ADC_REG,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_ADC_REG_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_ADC_REG_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_ADC_REG_0 : entity is "ADC_REG,Vivado 2020.1";
end system_ADC_REG_0;

architecture STRUCTURE of system_ADC_REG_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of adc_clk : signal is "xilinx.com:signal:clock:1.0 adc_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of adc_clk : signal is "XIL_INTERFACENAME adc_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_ADC_REG_0_adc_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of adc_clk_n : signal is "xilinx.com:signal:clock:1.0 adc_clk_n CLK";
  attribute X_INTERFACE_PARAMETER of adc_clk_n : signal is "XIL_INTERFACENAME adc_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of adc_clk_p : signal is "xilinx.com:signal:clock:1.0 adc_clk_p CLK";
  attribute X_INTERFACE_PARAMETER of adc_clk_p : signal is "XIL_INTERFACENAME adc_clk_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
begin
inst: entity work.system_ADC_REG_0_ADC_REG
     port map (
      a_data_out(11 downto 0) => a_data_out(11 downto 0),
      adc_clk => adc_clk,
      adc_clk_n => adc_clk_n,
      adc_clk_p => adc_clk_p,
      b_data_out(11 downto 0) => b_data_out(11 downto 0),
      data_in(11 downto 0) => data_in(11 downto 0)
    );
end STRUCTURE;
