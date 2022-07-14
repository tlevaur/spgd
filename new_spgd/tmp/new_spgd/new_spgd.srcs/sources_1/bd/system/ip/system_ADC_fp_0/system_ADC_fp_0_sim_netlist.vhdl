-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Jul  5 11:37:08 2022
-- Host        : turing running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/taylor/Documents/new_spgd/tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_ADC_fp_0/system_ADC_fp_0_sim_netlist.vhdl
-- Design      : system_ADC_fp_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_fp_0_gen_counter is
  port (
    F_O_reg_inv_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_CLK : in STD_LOGIC;
    clear : in STD_LOGIC;
    ADC_EN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_fp_0_gen_counter : entity is "gen_counter";
end system_ADC_fp_0_gen_counter;

architecture STRUCTURE of system_ADC_fp_0_gen_counter is
  signal F_O_inv_i_1_n_0 : STD_LOGIC;
  signal \^f_o_reg_inv_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[0]_i_6_n_0\ : STD_LOGIC;
  signal \count[0]_i_7_n_0\ : STD_LOGIC;
  signal \count[0]_i_8_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal \count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_reg_n_0_[9]\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \NLW_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of F_O_inv_i_1 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \p0__0_i_1\ : label is "soft_lutpair0";
begin
  F_O_reg_inv_0 <= \^f_o_reg_inv_0\;
F_O_inv_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => sel,
      I1 => \^f_o_reg_inv_0\,
      I2 => ADC_EN,
      O => F_O_inv_i_1_n_0
    );
F_O_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ADC_CLK,
      CE => '1',
      D => F_O_inv_i_1_n_0,
      Q => \^f_o_reg_inv_0\,
      R => '0'
    );
\count[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \count[0]_i_4_n_0\,
      I1 => count_reg(17),
      I2 => count_reg(16),
      I3 => count_reg(10),
      I4 => \count[0]_i_5_n_0\,
      O => sel
    );
\count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \count[0]_i_7_n_0\,
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => count_reg(13),
      I4 => count_reg(12),
      I5 => count_reg(11),
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => count_reg(18),
      I1 => count_reg(19),
      I2 => count_reg(20),
      I3 => count_reg(21),
      I4 => \count[0]_i_8_n_0\,
      O => \count[0]_i_5_n_0\
    );
\count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      O => \count[0]_i_6_n_0\
    );
\count[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_reg(26),
      I1 => count_reg(27),
      I2 => count_reg(28),
      I3 => count_reg(29),
      I4 => count_reg(31),
      I5 => count_reg(30),
      O => \count[0]_i_7_n_0\
    );
\count[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_reg(25),
      I1 => count_reg(24),
      I2 => count_reg(23),
      I3 => count_reg(22),
      O => \count[0]_i_8_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[0]_i_3_n_7\,
      Q => \count_reg_n_0_[0]\,
      R => clear
    );
\count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_3_n_0\,
      CO(2) => \count_reg[0]_i_3_n_1\,
      CO(1) => \count_reg[0]_i_3_n_2\,
      CO(0) => \count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_3_n_4\,
      O(2) => \count_reg[0]_i_3_n_5\,
      O(1) => \count_reg[0]_i_3_n_6\,
      O(0) => \count_reg[0]_i_3_n_7\,
      S(3) => \count_reg_n_0_[3]\,
      S(2) => \count_reg_n_0_[2]\,
      S(1) => \count_reg_n_0_[1]\,
      S(0) => \count[0]_i_6_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10),
      R => clear
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11),
      R => clear
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12),
      R => clear
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13),
      R => clear
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14),
      R => clear
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15),
      R => clear
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[16]_i_1_n_7\,
      Q => count_reg(16),
      R => clear
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[16]_i_1_n_6\,
      Q => count_reg(17),
      R => clear
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[16]_i_1_n_5\,
      Q => count_reg(18),
      R => clear
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[16]_i_1_n_4\,
      Q => count_reg(19),
      R => clear
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[0]_i_3_n_6\,
      Q => \count_reg_n_0_[1]\,
      R => clear
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[20]_i_1_n_7\,
      Q => count_reg(20),
      R => clear
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3) => \count_reg[20]_i_1_n_0\,
      CO(2) => \count_reg[20]_i_1_n_1\,
      CO(1) => \count_reg[20]_i_1_n_2\,
      CO(0) => \count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[20]_i_1_n_4\,
      O(2) => \count_reg[20]_i_1_n_5\,
      O(1) => \count_reg[20]_i_1_n_6\,
      O(0) => \count_reg[20]_i_1_n_7\,
      S(3 downto 0) => count_reg(23 downto 20)
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[20]_i_1_n_6\,
      Q => count_reg(21),
      R => clear
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[20]_i_1_n_5\,
      Q => count_reg(22),
      R => clear
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[20]_i_1_n_4\,
      Q => count_reg(23),
      R => clear
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[24]_i_1_n_7\,
      Q => count_reg(24),
      R => clear
    );
\count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]_i_1_n_0\,
      CO(3) => \count_reg[24]_i_1_n_0\,
      CO(2) => \count_reg[24]_i_1_n_1\,
      CO(1) => \count_reg[24]_i_1_n_2\,
      CO(0) => \count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[24]_i_1_n_4\,
      O(2) => \count_reg[24]_i_1_n_5\,
      O(1) => \count_reg[24]_i_1_n_6\,
      O(0) => \count_reg[24]_i_1_n_7\,
      S(3 downto 0) => count_reg(27 downto 24)
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[24]_i_1_n_6\,
      Q => count_reg(25),
      R => clear
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[24]_i_1_n_5\,
      Q => count_reg(26),
      R => clear
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[24]_i_1_n_4\,
      Q => count_reg(27),
      R => clear
    );
\count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[28]_i_1_n_7\,
      Q => count_reg(28),
      R => clear
    );
\count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[28]_i_1_n_1\,
      CO(1) => \count_reg[28]_i_1_n_2\,
      CO(0) => \count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[28]_i_1_n_4\,
      O(2) => \count_reg[28]_i_1_n_5\,
      O(1) => \count_reg[28]_i_1_n_6\,
      O(0) => \count_reg[28]_i_1_n_7\,
      S(3 downto 0) => count_reg(31 downto 28)
    );
\count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[28]_i_1_n_6\,
      Q => count_reg(29),
      R => clear
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[0]_i_3_n_5\,
      Q => \count_reg_n_0_[2]\,
      R => clear
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[28]_i_1_n_5\,
      Q => count_reg(30),
      R => clear
    );
\count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[28]_i_1_n_4\,
      Q => count_reg(31),
      R => clear
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[0]_i_3_n_4\,
      Q => \count_reg_n_0_[3]\,
      R => clear
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[4]_i_1_n_7\,
      Q => \count_reg_n_0_[4]\,
      R => clear
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_3_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3) => \count_reg_n_0_[7]\,
      S(2) => \count_reg_n_0_[6]\,
      S(1) => \count_reg_n_0_[5]\,
      S(0) => \count_reg_n_0_[4]\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[4]_i_1_n_6\,
      Q => \count_reg_n_0_[5]\,
      R => clear
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[4]_i_1_n_5\,
      Q => \count_reg_n_0_[6]\,
      R => clear
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[4]_i_1_n_4\,
      Q => \count_reg_n_0_[7]\,
      R => clear
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[8]_i_1_n_7\,
      Q => \count_reg_n_0_[8]\,
      R => clear
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3 downto 2) => count_reg(11 downto 10),
      S(1) => \count_reg_n_0_[9]\,
      S(0) => \count_reg_n_0_[8]\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[8]_i_1_n_6\,
      Q => \count_reg_n_0_[9]\,
      R => clear
    );
\p0__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ADC_EN,
      I1 => \^f_o_reg_inv_0\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_fp_0_gen_counter_0 is
  port (
    F_O_reg_0 : out STD_LOGIC;
    clear : out STD_LOGIC;
    ADC_CLK : in STD_LOGIC;
    ADC_EN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_fp_0_gen_counter_0 : entity is "gen_counter";
end system_ADC_fp_0_gen_counter_0;

architecture STRUCTURE of system_ADC_fp_0_gen_counter_0 is
  signal F_O_i_1_n_0 : STD_LOGIC;
  signal F_O_i_2_n_0 : STD_LOGIC;
  signal F_O_i_3_n_0 : STD_LOGIC;
  signal F_O_i_4_n_0 : STD_LOGIC;
  signal F_O_i_5_n_0 : STD_LOGIC;
  signal F_O_i_6_n_0 : STD_LOGIC;
  signal F_O_i_7_n_0 : STD_LOGIC;
  signal F_O_i_8_n_0 : STD_LOGIC;
  signal \^f_o_reg_0\ : STD_LOGIC;
  signal \^clear\ : STD_LOGIC;
  signal \count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[20]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[24]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[28]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[28]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[28]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[28]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[28]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[28]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[28]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \NLW_count_reg[28]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[16]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[20]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[24]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[28]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1__0\ : label is 11;
begin
  F_O_reg_0 <= \^f_o_reg_0\;
  clear <= \^clear\;
F_O_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF40000"
    )
        port map (
      I0 => F_O_i_2_n_0,
      I1 => count_reg(10),
      I2 => F_O_i_3_n_0,
      I3 => \^f_o_reg_0\,
      I4 => ADC_EN,
      O => F_O_i_1_n_0
    );
F_O_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => F_O_i_4_n_0,
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => count_reg(0),
      I4 => count_reg(1),
      O => F_O_i_2_n_0
    );
F_O_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => F_O_i_5_n_0,
      I1 => F_O_i_6_n_0,
      I2 => count_reg(17),
      I3 => count_reg(16),
      I4 => F_O_i_7_n_0,
      I5 => F_O_i_8_n_0,
      O => F_O_i_3_n_0
    );
F_O_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_reg(4),
      I1 => count_reg(5),
      I2 => count_reg(6),
      I3 => count_reg(7),
      I4 => count_reg(9),
      I5 => count_reg(8),
      O => F_O_i_4_n_0
    );
F_O_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_reg(29),
      I1 => count_reg(28),
      I2 => count_reg(27),
      I3 => count_reg(26),
      O => F_O_i_5_n_0
    );
F_O_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count_reg(18),
      I1 => count_reg(19),
      I2 => count_reg(20),
      I3 => count_reg(21),
      I4 => count_reg(31),
      I5 => count_reg(30),
      O => F_O_i_6_n_0
    );
F_O_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => count_reg(15),
      I4 => count_reg(14),
      O => F_O_i_7_n_0
    );
F_O_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_reg(25),
      I1 => count_reg(24),
      I2 => count_reg(23),
      I3 => count_reg(22),
      O => F_O_i_8_n_0
    );
F_O_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => '1',
      D => F_O_i_1_n_0,
      Q => \^f_o_reg_0\,
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ADC_EN,
      O => \^clear\
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => F_O_i_2_n_0,
      I1 => count_reg(10),
      I2 => F_O_i_3_n_0,
      O => \count[0]_i_1__0_n_0\
    );
\count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_3_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[0]_i_2_n_7\,
      Q => count_reg(0),
      R => \^clear\
    );
\count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2_n_0\,
      CO(2) => \count_reg[0]_i_2_n_1\,
      CO(1) => \count_reg[0]_i_2_n_2\,
      CO(0) => \count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_2_n_4\,
      O(2) => \count_reg[0]_i_2_n_5\,
      O(1) => \count_reg[0]_i_2_n_6\,
      O(0) => \count_reg[0]_i_2_n_7\,
      S(3 downto 1) => count_reg(3 downto 1),
      S(0) => \count[0]_i_3_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[8]_i_1__0_n_5\,
      Q => count_reg(10),
      R => \^clear\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[8]_i_1__0_n_4\,
      Q => count_reg(11),
      R => \^clear\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[12]_i_1__0_n_7\,
      Q => count_reg(12),
      R => \^clear\
    );
\count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__0_n_0\,
      CO(3) => \count_reg[12]_i_1__0_n_0\,
      CO(2) => \count_reg[12]_i_1__0_n_1\,
      CO(1) => \count_reg[12]_i_1__0_n_2\,
      CO(0) => \count_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1__0_n_4\,
      O(2) => \count_reg[12]_i_1__0_n_5\,
      O(1) => \count_reg[12]_i_1__0_n_6\,
      O(0) => \count_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[12]_i_1__0_n_6\,
      Q => count_reg(13),
      R => \^clear\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[12]_i_1__0_n_5\,
      Q => count_reg(14),
      R => \^clear\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[12]_i_1__0_n_4\,
      Q => count_reg(15),
      R => \^clear\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[16]_i_1__0_n_7\,
      Q => count_reg(16),
      R => \^clear\
    );
\count_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1__0_n_0\,
      CO(3) => \count_reg[16]_i_1__0_n_0\,
      CO(2) => \count_reg[16]_i_1__0_n_1\,
      CO(1) => \count_reg[16]_i_1__0_n_2\,
      CO(0) => \count_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1__0_n_4\,
      O(2) => \count_reg[16]_i_1__0_n_5\,
      O(1) => \count_reg[16]_i_1__0_n_6\,
      O(0) => \count_reg[16]_i_1__0_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[16]_i_1__0_n_6\,
      Q => count_reg(17),
      R => \^clear\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[16]_i_1__0_n_5\,
      Q => count_reg(18),
      R => \^clear\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[16]_i_1__0_n_4\,
      Q => count_reg(19),
      R => \^clear\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[0]_i_2_n_6\,
      Q => count_reg(1),
      R => \^clear\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[20]_i_1__0_n_7\,
      Q => count_reg(20),
      R => \^clear\
    );
\count_reg[20]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1__0_n_0\,
      CO(3) => \count_reg[20]_i_1__0_n_0\,
      CO(2) => \count_reg[20]_i_1__0_n_1\,
      CO(1) => \count_reg[20]_i_1__0_n_2\,
      CO(0) => \count_reg[20]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[20]_i_1__0_n_4\,
      O(2) => \count_reg[20]_i_1__0_n_5\,
      O(1) => \count_reg[20]_i_1__0_n_6\,
      O(0) => \count_reg[20]_i_1__0_n_7\,
      S(3 downto 0) => count_reg(23 downto 20)
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[20]_i_1__0_n_6\,
      Q => count_reg(21),
      R => \^clear\
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[20]_i_1__0_n_5\,
      Q => count_reg(22),
      R => \^clear\
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[20]_i_1__0_n_4\,
      Q => count_reg(23),
      R => \^clear\
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[24]_i_1__0_n_7\,
      Q => count_reg(24),
      R => \^clear\
    );
\count_reg[24]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]_i_1__0_n_0\,
      CO(3) => \count_reg[24]_i_1__0_n_0\,
      CO(2) => \count_reg[24]_i_1__0_n_1\,
      CO(1) => \count_reg[24]_i_1__0_n_2\,
      CO(0) => \count_reg[24]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[24]_i_1__0_n_4\,
      O(2) => \count_reg[24]_i_1__0_n_5\,
      O(1) => \count_reg[24]_i_1__0_n_6\,
      O(0) => \count_reg[24]_i_1__0_n_7\,
      S(3 downto 0) => count_reg(27 downto 24)
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[24]_i_1__0_n_6\,
      Q => count_reg(25),
      R => \^clear\
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[24]_i_1__0_n_5\,
      Q => count_reg(26),
      R => \^clear\
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[24]_i_1__0_n_4\,
      Q => count_reg(27),
      R => \^clear\
    );
\count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[28]_i_1__0_n_7\,
      Q => count_reg(28),
      R => \^clear\
    );
\count_reg[28]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[24]_i_1__0_n_0\,
      CO(3) => \NLW_count_reg[28]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[28]_i_1__0_n_1\,
      CO(1) => \count_reg[28]_i_1__0_n_2\,
      CO(0) => \count_reg[28]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[28]_i_1__0_n_4\,
      O(2) => \count_reg[28]_i_1__0_n_5\,
      O(1) => \count_reg[28]_i_1__0_n_6\,
      O(0) => \count_reg[28]_i_1__0_n_7\,
      S(3 downto 0) => count_reg(31 downto 28)
    );
\count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[28]_i_1__0_n_6\,
      Q => count_reg(29),
      R => \^clear\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[0]_i_2_n_5\,
      Q => count_reg(2),
      R => \^clear\
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[28]_i_1__0_n_5\,
      Q => count_reg(30),
      R => \^clear\
    );
\count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[28]_i_1__0_n_4\,
      Q => count_reg(31),
      R => \^clear\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[0]_i_2_n_4\,
      Q => count_reg(3),
      R => \^clear\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[4]_i_1__0_n_7\,
      Q => count_reg(4),
      R => \^clear\
    );
\count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2_n_0\,
      CO(3) => \count_reg[4]_i_1__0_n_0\,
      CO(2) => \count_reg[4]_i_1__0_n_1\,
      CO(1) => \count_reg[4]_i_1__0_n_2\,
      CO(0) => \count_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1__0_n_4\,
      O(2) => \count_reg[4]_i_1__0_n_5\,
      O(1) => \count_reg[4]_i_1__0_n_6\,
      O(0) => \count_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => count_reg(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[4]_i_1__0_n_6\,
      Q => count_reg(5),
      R => \^clear\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[4]_i_1__0_n_5\,
      Q => count_reg(6),
      R => \^clear\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[4]_i_1__0_n_4\,
      Q => count_reg(7),
      R => \^clear\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[8]_i_1__0_n_7\,
      Q => count_reg(8),
      R => \^clear\
    );
\count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__0_n_0\,
      CO(3) => \count_reg[8]_i_1__0_n_0\,
      CO(2) => \count_reg[8]_i_1__0_n_1\,
      CO(1) => \count_reg[8]_i_1__0_n_2\,
      CO(0) => \count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1__0_n_4\,
      O(2) => \count_reg[8]_i_1__0_n_5\,
      O(1) => \count_reg[8]_i_1__0_n_6\,
      O(0) => \count_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count[0]_i_1__0_n_0\,
      D => \count_reg[8]_i_1__0_n_6\,
      Q => count_reg(9),
      R => \^clear\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_fp_0_gen_mult is
  port (
    ADC_16Q48_OUT : out STD_LOGIC_VECTOR ( 54 downto 0 );
    \p0__4_0\ : in STD_LOGIC;
    ADC_CLK : in STD_LOGIC;
    REG_RST : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_fp_0_gen_mult : entity is "gen_mult";
end system_ADC_fp_0_gen_mult;

architecture STRUCTURE of system_ADC_fp_0_gen_mult is
  signal \ADC_16Q48_OUT[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_10_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_10_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_10_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_19_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_19_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_19_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_25_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_25_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_25_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_30_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_30_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_30_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_35_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_35_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_35_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_39_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_41_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_42_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[0]_INST_0_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[10]_INST_0_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[10]_INST_0_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[10]_INST_0_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[10]_INST_0_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[14]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[14]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[14]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[14]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[14]_INST_0_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[14]_INST_0_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[14]_INST_0_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[14]_INST_0_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[18]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[18]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[18]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[18]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[18]_INST_0_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[18]_INST_0_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[18]_INST_0_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[18]_INST_0_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[22]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[22]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[22]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[22]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[22]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[22]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[22]_INST_0_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[22]_INST_0_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[22]_INST_0_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[22]_INST_0_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[26]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[26]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[26]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[26]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[26]_INST_0_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[26]_INST_0_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[26]_INST_0_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[26]_INST_0_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[2]_INST_0_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[2]_INST_0_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[2]_INST_0_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[2]_INST_0_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[30]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[30]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[30]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[30]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[30]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[30]_INST_0_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[30]_INST_0_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[30]_INST_0_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[30]_INST_0_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[34]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[34]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[34]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[34]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[34]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[34]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[34]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[34]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[34]_INST_0_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[34]_INST_0_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[34]_INST_0_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[34]_INST_0_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[38]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[38]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[38]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[38]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[38]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[38]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[38]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[38]_INST_0_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[38]_INST_0_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[38]_INST_0_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[38]_INST_0_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[42]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[42]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[42]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[42]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[42]_INST_0_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[42]_INST_0_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[42]_INST_0_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[42]_INST_0_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[46]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[46]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[46]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[46]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[46]_INST_0_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[46]_INST_0_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[46]_INST_0_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[46]_INST_0_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[50]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[50]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[50]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[50]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[50]_INST_0_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[50]_INST_0_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[50]_INST_0_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[50]_INST_0_n_3\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[54]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[6]_INST_0_n_0\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[6]_INST_0_n_1\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[6]_INST_0_n_2\ : STD_LOGIC;
  signal \ADC_16Q48_OUT[6]_INST_0_n_3\ : STD_LOGIC;
  signal \p0__0_n_0\ : STD_LOGIC;
  signal \p0__10_n_100\ : STD_LOGIC;
  signal \p0__10_n_101\ : STD_LOGIC;
  signal \p0__10_n_102\ : STD_LOGIC;
  signal \p0__10_n_103\ : STD_LOGIC;
  signal \p0__10_n_104\ : STD_LOGIC;
  signal \p0__10_n_105\ : STD_LOGIC;
  signal \p0__10_n_58\ : STD_LOGIC;
  signal \p0__10_n_59\ : STD_LOGIC;
  signal \p0__10_n_60\ : STD_LOGIC;
  signal \p0__10_n_61\ : STD_LOGIC;
  signal \p0__10_n_62\ : STD_LOGIC;
  signal \p0__10_n_63\ : STD_LOGIC;
  signal \p0__10_n_64\ : STD_LOGIC;
  signal \p0__10_n_65\ : STD_LOGIC;
  signal \p0__10_n_66\ : STD_LOGIC;
  signal \p0__10_n_67\ : STD_LOGIC;
  signal \p0__10_n_68\ : STD_LOGIC;
  signal \p0__10_n_69\ : STD_LOGIC;
  signal \p0__10_n_70\ : STD_LOGIC;
  signal \p0__10_n_71\ : STD_LOGIC;
  signal \p0__10_n_72\ : STD_LOGIC;
  signal \p0__10_n_73\ : STD_LOGIC;
  signal \p0__10_n_74\ : STD_LOGIC;
  signal \p0__10_n_75\ : STD_LOGIC;
  signal \p0__10_n_76\ : STD_LOGIC;
  signal \p0__10_n_77\ : STD_LOGIC;
  signal \p0__10_n_78\ : STD_LOGIC;
  signal \p0__10_n_79\ : STD_LOGIC;
  signal \p0__10_n_80\ : STD_LOGIC;
  signal \p0__10_n_81\ : STD_LOGIC;
  signal \p0__10_n_82\ : STD_LOGIC;
  signal \p0__10_n_83\ : STD_LOGIC;
  signal \p0__10_n_84\ : STD_LOGIC;
  signal \p0__10_n_85\ : STD_LOGIC;
  signal \p0__10_n_86\ : STD_LOGIC;
  signal \p0__10_n_87\ : STD_LOGIC;
  signal \p0__10_n_88\ : STD_LOGIC;
  signal \p0__10_n_89\ : STD_LOGIC;
  signal \p0__10_n_90\ : STD_LOGIC;
  signal \p0__10_n_91\ : STD_LOGIC;
  signal \p0__10_n_92\ : STD_LOGIC;
  signal \p0__10_n_93\ : STD_LOGIC;
  signal \p0__10_n_94\ : STD_LOGIC;
  signal \p0__10_n_95\ : STD_LOGIC;
  signal \p0__10_n_96\ : STD_LOGIC;
  signal \p0__10_n_97\ : STD_LOGIC;
  signal \p0__10_n_98\ : STD_LOGIC;
  signal \p0__10_n_99\ : STD_LOGIC;
  signal \p0__18_n_0\ : STD_LOGIC;
  signal \p0__19_n_0\ : STD_LOGIC;
  signal \p0__1_n_0\ : STD_LOGIC;
  signal \p0__20_n_0\ : STD_LOGIC;
  signal \p0__21_n_0\ : STD_LOGIC;
  signal \p0__22_n_0\ : STD_LOGIC;
  signal \p0__23_n_0\ : STD_LOGIC;
  signal \p0__24_n_0\ : STD_LOGIC;
  signal \p0__25_n_0\ : STD_LOGIC;
  signal \p0__26_n_0\ : STD_LOGIC;
  signal \p0__2_n_0\ : STD_LOGIC;
  signal \p0__3_n_100\ : STD_LOGIC;
  signal \p0__3_n_101\ : STD_LOGIC;
  signal \p0__3_n_102\ : STD_LOGIC;
  signal \p0__3_n_103\ : STD_LOGIC;
  signal \p0__3_n_104\ : STD_LOGIC;
  signal \p0__3_n_105\ : STD_LOGIC;
  signal \p0__3_n_106\ : STD_LOGIC;
  signal \p0__3_n_107\ : STD_LOGIC;
  signal \p0__3_n_108\ : STD_LOGIC;
  signal \p0__3_n_109\ : STD_LOGIC;
  signal \p0__3_n_110\ : STD_LOGIC;
  signal \p0__3_n_111\ : STD_LOGIC;
  signal \p0__3_n_112\ : STD_LOGIC;
  signal \p0__3_n_113\ : STD_LOGIC;
  signal \p0__3_n_114\ : STD_LOGIC;
  signal \p0__3_n_115\ : STD_LOGIC;
  signal \p0__3_n_116\ : STD_LOGIC;
  signal \p0__3_n_117\ : STD_LOGIC;
  signal \p0__3_n_118\ : STD_LOGIC;
  signal \p0__3_n_119\ : STD_LOGIC;
  signal \p0__3_n_120\ : STD_LOGIC;
  signal \p0__3_n_121\ : STD_LOGIC;
  signal \p0__3_n_122\ : STD_LOGIC;
  signal \p0__3_n_123\ : STD_LOGIC;
  signal \p0__3_n_124\ : STD_LOGIC;
  signal \p0__3_n_125\ : STD_LOGIC;
  signal \p0__3_n_126\ : STD_LOGIC;
  signal \p0__3_n_127\ : STD_LOGIC;
  signal \p0__3_n_128\ : STD_LOGIC;
  signal \p0__3_n_129\ : STD_LOGIC;
  signal \p0__3_n_130\ : STD_LOGIC;
  signal \p0__3_n_131\ : STD_LOGIC;
  signal \p0__3_n_132\ : STD_LOGIC;
  signal \p0__3_n_133\ : STD_LOGIC;
  signal \p0__3_n_134\ : STD_LOGIC;
  signal \p0__3_n_135\ : STD_LOGIC;
  signal \p0__3_n_136\ : STD_LOGIC;
  signal \p0__3_n_137\ : STD_LOGIC;
  signal \p0__3_n_138\ : STD_LOGIC;
  signal \p0__3_n_139\ : STD_LOGIC;
  signal \p0__3_n_140\ : STD_LOGIC;
  signal \p0__3_n_141\ : STD_LOGIC;
  signal \p0__3_n_142\ : STD_LOGIC;
  signal \p0__3_n_143\ : STD_LOGIC;
  signal \p0__3_n_144\ : STD_LOGIC;
  signal \p0__3_n_145\ : STD_LOGIC;
  signal \p0__3_n_146\ : STD_LOGIC;
  signal \p0__3_n_147\ : STD_LOGIC;
  signal \p0__3_n_148\ : STD_LOGIC;
  signal \p0__3_n_149\ : STD_LOGIC;
  signal \p0__3_n_150\ : STD_LOGIC;
  signal \p0__3_n_151\ : STD_LOGIC;
  signal \p0__3_n_152\ : STD_LOGIC;
  signal \p0__3_n_153\ : STD_LOGIC;
  signal \p0__3_n_58\ : STD_LOGIC;
  signal \p0__3_n_59\ : STD_LOGIC;
  signal \p0__3_n_60\ : STD_LOGIC;
  signal \p0__3_n_61\ : STD_LOGIC;
  signal \p0__3_n_62\ : STD_LOGIC;
  signal \p0__3_n_63\ : STD_LOGIC;
  signal \p0__3_n_64\ : STD_LOGIC;
  signal \p0__3_n_65\ : STD_LOGIC;
  signal \p0__3_n_66\ : STD_LOGIC;
  signal \p0__3_n_67\ : STD_LOGIC;
  signal \p0__3_n_68\ : STD_LOGIC;
  signal \p0__3_n_69\ : STD_LOGIC;
  signal \p0__3_n_70\ : STD_LOGIC;
  signal \p0__3_n_71\ : STD_LOGIC;
  signal \p0__3_n_72\ : STD_LOGIC;
  signal \p0__3_n_73\ : STD_LOGIC;
  signal \p0__3_n_74\ : STD_LOGIC;
  signal \p0__3_n_75\ : STD_LOGIC;
  signal \p0__3_n_76\ : STD_LOGIC;
  signal \p0__3_n_77\ : STD_LOGIC;
  signal \p0__3_n_78\ : STD_LOGIC;
  signal \p0__3_n_79\ : STD_LOGIC;
  signal \p0__3_n_80\ : STD_LOGIC;
  signal \p0__3_n_81\ : STD_LOGIC;
  signal \p0__3_n_82\ : STD_LOGIC;
  signal \p0__3_n_83\ : STD_LOGIC;
  signal \p0__3_n_84\ : STD_LOGIC;
  signal \p0__3_n_85\ : STD_LOGIC;
  signal \p0__3_n_86\ : STD_LOGIC;
  signal \p0__3_n_87\ : STD_LOGIC;
  signal \p0__3_n_88\ : STD_LOGIC;
  signal \p0__3_n_89\ : STD_LOGIC;
  signal \p0__3_n_90\ : STD_LOGIC;
  signal \p0__3_n_91\ : STD_LOGIC;
  signal \p0__3_n_92\ : STD_LOGIC;
  signal \p0__3_n_93\ : STD_LOGIC;
  signal \p0__3_n_94\ : STD_LOGIC;
  signal \p0__3_n_95\ : STD_LOGIC;
  signal \p0__3_n_96\ : STD_LOGIC;
  signal \p0__3_n_97\ : STD_LOGIC;
  signal \p0__3_n_98\ : STD_LOGIC;
  signal \p0__3_n_99\ : STD_LOGIC;
  signal \p0__4_n_100\ : STD_LOGIC;
  signal \p0__4_n_101\ : STD_LOGIC;
  signal \p0__4_n_102\ : STD_LOGIC;
  signal \p0__4_n_103\ : STD_LOGIC;
  signal \p0__4_n_104\ : STD_LOGIC;
  signal \p0__4_n_105\ : STD_LOGIC;
  signal \p0__4_n_58\ : STD_LOGIC;
  signal \p0__4_n_59\ : STD_LOGIC;
  signal \p0__4_n_60\ : STD_LOGIC;
  signal \p0__4_n_61\ : STD_LOGIC;
  signal \p0__4_n_62\ : STD_LOGIC;
  signal \p0__4_n_63\ : STD_LOGIC;
  signal \p0__4_n_64\ : STD_LOGIC;
  signal \p0__4_n_65\ : STD_LOGIC;
  signal \p0__4_n_66\ : STD_LOGIC;
  signal \p0__4_n_67\ : STD_LOGIC;
  signal \p0__4_n_68\ : STD_LOGIC;
  signal \p0__4_n_69\ : STD_LOGIC;
  signal \p0__4_n_70\ : STD_LOGIC;
  signal \p0__4_n_71\ : STD_LOGIC;
  signal \p0__4_n_72\ : STD_LOGIC;
  signal \p0__4_n_73\ : STD_LOGIC;
  signal \p0__4_n_74\ : STD_LOGIC;
  signal \p0__4_n_75\ : STD_LOGIC;
  signal \p0__4_n_76\ : STD_LOGIC;
  signal \p0__4_n_77\ : STD_LOGIC;
  signal \p0__4_n_78\ : STD_LOGIC;
  signal \p0__4_n_79\ : STD_LOGIC;
  signal \p0__4_n_80\ : STD_LOGIC;
  signal \p0__4_n_81\ : STD_LOGIC;
  signal \p0__4_n_82\ : STD_LOGIC;
  signal \p0__4_n_83\ : STD_LOGIC;
  signal \p0__4_n_84\ : STD_LOGIC;
  signal \p0__4_n_85\ : STD_LOGIC;
  signal \p0__4_n_86\ : STD_LOGIC;
  signal \p0__4_n_87\ : STD_LOGIC;
  signal \p0__4_n_88\ : STD_LOGIC;
  signal \p0__4_n_89\ : STD_LOGIC;
  signal \p0__4_n_90\ : STD_LOGIC;
  signal \p0__4_n_91\ : STD_LOGIC;
  signal \p0__4_n_92\ : STD_LOGIC;
  signal \p0__4_n_93\ : STD_LOGIC;
  signal \p0__4_n_94\ : STD_LOGIC;
  signal \p0__4_n_95\ : STD_LOGIC;
  signal \p0__4_n_96\ : STD_LOGIC;
  signal \p0__4_n_97\ : STD_LOGIC;
  signal \p0__4_n_98\ : STD_LOGIC;
  signal \p0__4_n_99\ : STD_LOGIC;
  signal \p0__5_n_10\ : STD_LOGIC;
  signal \p0__5_n_100\ : STD_LOGIC;
  signal \p0__5_n_101\ : STD_LOGIC;
  signal \p0__5_n_102\ : STD_LOGIC;
  signal \p0__5_n_103\ : STD_LOGIC;
  signal \p0__5_n_104\ : STD_LOGIC;
  signal \p0__5_n_105\ : STD_LOGIC;
  signal \p0__5_n_106\ : STD_LOGIC;
  signal \p0__5_n_107\ : STD_LOGIC;
  signal \p0__5_n_108\ : STD_LOGIC;
  signal \p0__5_n_109\ : STD_LOGIC;
  signal \p0__5_n_11\ : STD_LOGIC;
  signal \p0__5_n_110\ : STD_LOGIC;
  signal \p0__5_n_111\ : STD_LOGIC;
  signal \p0__5_n_112\ : STD_LOGIC;
  signal \p0__5_n_113\ : STD_LOGIC;
  signal \p0__5_n_114\ : STD_LOGIC;
  signal \p0__5_n_115\ : STD_LOGIC;
  signal \p0__5_n_116\ : STD_LOGIC;
  signal \p0__5_n_117\ : STD_LOGIC;
  signal \p0__5_n_118\ : STD_LOGIC;
  signal \p0__5_n_119\ : STD_LOGIC;
  signal \p0__5_n_12\ : STD_LOGIC;
  signal \p0__5_n_120\ : STD_LOGIC;
  signal \p0__5_n_121\ : STD_LOGIC;
  signal \p0__5_n_122\ : STD_LOGIC;
  signal \p0__5_n_123\ : STD_LOGIC;
  signal \p0__5_n_124\ : STD_LOGIC;
  signal \p0__5_n_125\ : STD_LOGIC;
  signal \p0__5_n_126\ : STD_LOGIC;
  signal \p0__5_n_127\ : STD_LOGIC;
  signal \p0__5_n_128\ : STD_LOGIC;
  signal \p0__5_n_129\ : STD_LOGIC;
  signal \p0__5_n_13\ : STD_LOGIC;
  signal \p0__5_n_130\ : STD_LOGIC;
  signal \p0__5_n_131\ : STD_LOGIC;
  signal \p0__5_n_132\ : STD_LOGIC;
  signal \p0__5_n_133\ : STD_LOGIC;
  signal \p0__5_n_134\ : STD_LOGIC;
  signal \p0__5_n_135\ : STD_LOGIC;
  signal \p0__5_n_136\ : STD_LOGIC;
  signal \p0__5_n_137\ : STD_LOGIC;
  signal \p0__5_n_138\ : STD_LOGIC;
  signal \p0__5_n_139\ : STD_LOGIC;
  signal \p0__5_n_14\ : STD_LOGIC;
  signal \p0__5_n_140\ : STD_LOGIC;
  signal \p0__5_n_141\ : STD_LOGIC;
  signal \p0__5_n_142\ : STD_LOGIC;
  signal \p0__5_n_143\ : STD_LOGIC;
  signal \p0__5_n_144\ : STD_LOGIC;
  signal \p0__5_n_145\ : STD_LOGIC;
  signal \p0__5_n_146\ : STD_LOGIC;
  signal \p0__5_n_147\ : STD_LOGIC;
  signal \p0__5_n_148\ : STD_LOGIC;
  signal \p0__5_n_149\ : STD_LOGIC;
  signal \p0__5_n_15\ : STD_LOGIC;
  signal \p0__5_n_150\ : STD_LOGIC;
  signal \p0__5_n_151\ : STD_LOGIC;
  signal \p0__5_n_152\ : STD_LOGIC;
  signal \p0__5_n_153\ : STD_LOGIC;
  signal \p0__5_n_16\ : STD_LOGIC;
  signal \p0__5_n_17\ : STD_LOGIC;
  signal \p0__5_n_18\ : STD_LOGIC;
  signal \p0__5_n_19\ : STD_LOGIC;
  signal \p0__5_n_20\ : STD_LOGIC;
  signal \p0__5_n_21\ : STD_LOGIC;
  signal \p0__5_n_22\ : STD_LOGIC;
  signal \p0__5_n_23\ : STD_LOGIC;
  signal \p0__5_n_58\ : STD_LOGIC;
  signal \p0__5_n_59\ : STD_LOGIC;
  signal \p0__5_n_6\ : STD_LOGIC;
  signal \p0__5_n_60\ : STD_LOGIC;
  signal \p0__5_n_61\ : STD_LOGIC;
  signal \p0__5_n_62\ : STD_LOGIC;
  signal \p0__5_n_63\ : STD_LOGIC;
  signal \p0__5_n_64\ : STD_LOGIC;
  signal \p0__5_n_65\ : STD_LOGIC;
  signal \p0__5_n_66\ : STD_LOGIC;
  signal \p0__5_n_67\ : STD_LOGIC;
  signal \p0__5_n_68\ : STD_LOGIC;
  signal \p0__5_n_69\ : STD_LOGIC;
  signal \p0__5_n_7\ : STD_LOGIC;
  signal \p0__5_n_70\ : STD_LOGIC;
  signal \p0__5_n_71\ : STD_LOGIC;
  signal \p0__5_n_72\ : STD_LOGIC;
  signal \p0__5_n_73\ : STD_LOGIC;
  signal \p0__5_n_74\ : STD_LOGIC;
  signal \p0__5_n_75\ : STD_LOGIC;
  signal \p0__5_n_76\ : STD_LOGIC;
  signal \p0__5_n_77\ : STD_LOGIC;
  signal \p0__5_n_78\ : STD_LOGIC;
  signal \p0__5_n_79\ : STD_LOGIC;
  signal \p0__5_n_8\ : STD_LOGIC;
  signal \p0__5_n_80\ : STD_LOGIC;
  signal \p0__5_n_81\ : STD_LOGIC;
  signal \p0__5_n_82\ : STD_LOGIC;
  signal \p0__5_n_83\ : STD_LOGIC;
  signal \p0__5_n_84\ : STD_LOGIC;
  signal \p0__5_n_85\ : STD_LOGIC;
  signal \p0__5_n_86\ : STD_LOGIC;
  signal \p0__5_n_87\ : STD_LOGIC;
  signal \p0__5_n_88\ : STD_LOGIC;
  signal \p0__5_n_89\ : STD_LOGIC;
  signal \p0__5_n_9\ : STD_LOGIC;
  signal \p0__5_n_90\ : STD_LOGIC;
  signal \p0__5_n_91\ : STD_LOGIC;
  signal \p0__5_n_92\ : STD_LOGIC;
  signal \p0__5_n_93\ : STD_LOGIC;
  signal \p0__5_n_94\ : STD_LOGIC;
  signal \p0__5_n_95\ : STD_LOGIC;
  signal \p0__5_n_96\ : STD_LOGIC;
  signal \p0__5_n_97\ : STD_LOGIC;
  signal \p0__5_n_98\ : STD_LOGIC;
  signal \p0__5_n_99\ : STD_LOGIC;
  signal \p0__6_n_100\ : STD_LOGIC;
  signal \p0__6_n_101\ : STD_LOGIC;
  signal \p0__6_n_102\ : STD_LOGIC;
  signal \p0__6_n_103\ : STD_LOGIC;
  signal \p0__6_n_104\ : STD_LOGIC;
  signal \p0__6_n_105\ : STD_LOGIC;
  signal \p0__6_n_58\ : STD_LOGIC;
  signal \p0__6_n_59\ : STD_LOGIC;
  signal \p0__6_n_60\ : STD_LOGIC;
  signal \p0__6_n_61\ : STD_LOGIC;
  signal \p0__6_n_62\ : STD_LOGIC;
  signal \p0__6_n_63\ : STD_LOGIC;
  signal \p0__6_n_64\ : STD_LOGIC;
  signal \p0__6_n_65\ : STD_LOGIC;
  signal \p0__6_n_66\ : STD_LOGIC;
  signal \p0__6_n_67\ : STD_LOGIC;
  signal \p0__6_n_68\ : STD_LOGIC;
  signal \p0__6_n_69\ : STD_LOGIC;
  signal \p0__6_n_70\ : STD_LOGIC;
  signal \p0__6_n_71\ : STD_LOGIC;
  signal \p0__6_n_72\ : STD_LOGIC;
  signal \p0__6_n_73\ : STD_LOGIC;
  signal \p0__6_n_74\ : STD_LOGIC;
  signal \p0__6_n_75\ : STD_LOGIC;
  signal \p0__6_n_76\ : STD_LOGIC;
  signal \p0__6_n_77\ : STD_LOGIC;
  signal \p0__6_n_78\ : STD_LOGIC;
  signal \p0__6_n_79\ : STD_LOGIC;
  signal \p0__6_n_80\ : STD_LOGIC;
  signal \p0__6_n_81\ : STD_LOGIC;
  signal \p0__6_n_82\ : STD_LOGIC;
  signal \p0__6_n_83\ : STD_LOGIC;
  signal \p0__6_n_84\ : STD_LOGIC;
  signal \p0__6_n_85\ : STD_LOGIC;
  signal \p0__6_n_86\ : STD_LOGIC;
  signal \p0__6_n_87\ : STD_LOGIC;
  signal \p0__6_n_88\ : STD_LOGIC;
  signal \p0__6_n_89\ : STD_LOGIC;
  signal \p0__6_n_90\ : STD_LOGIC;
  signal \p0__6_n_91\ : STD_LOGIC;
  signal \p0__6_n_92\ : STD_LOGIC;
  signal \p0__6_n_93\ : STD_LOGIC;
  signal \p0__6_n_94\ : STD_LOGIC;
  signal \p0__6_n_95\ : STD_LOGIC;
  signal \p0__6_n_96\ : STD_LOGIC;
  signal \p0__6_n_97\ : STD_LOGIC;
  signal \p0__6_n_98\ : STD_LOGIC;
  signal \p0__6_n_99\ : STD_LOGIC;
  signal \p0__7_n_10\ : STD_LOGIC;
  signal \p0__7_n_100\ : STD_LOGIC;
  signal \p0__7_n_101\ : STD_LOGIC;
  signal \p0__7_n_102\ : STD_LOGIC;
  signal \p0__7_n_103\ : STD_LOGIC;
  signal \p0__7_n_104\ : STD_LOGIC;
  signal \p0__7_n_105\ : STD_LOGIC;
  signal \p0__7_n_106\ : STD_LOGIC;
  signal \p0__7_n_107\ : STD_LOGIC;
  signal \p0__7_n_108\ : STD_LOGIC;
  signal \p0__7_n_109\ : STD_LOGIC;
  signal \p0__7_n_11\ : STD_LOGIC;
  signal \p0__7_n_110\ : STD_LOGIC;
  signal \p0__7_n_111\ : STD_LOGIC;
  signal \p0__7_n_112\ : STD_LOGIC;
  signal \p0__7_n_113\ : STD_LOGIC;
  signal \p0__7_n_114\ : STD_LOGIC;
  signal \p0__7_n_115\ : STD_LOGIC;
  signal \p0__7_n_116\ : STD_LOGIC;
  signal \p0__7_n_117\ : STD_LOGIC;
  signal \p0__7_n_118\ : STD_LOGIC;
  signal \p0__7_n_119\ : STD_LOGIC;
  signal \p0__7_n_12\ : STD_LOGIC;
  signal \p0__7_n_120\ : STD_LOGIC;
  signal \p0__7_n_121\ : STD_LOGIC;
  signal \p0__7_n_122\ : STD_LOGIC;
  signal \p0__7_n_123\ : STD_LOGIC;
  signal \p0__7_n_124\ : STD_LOGIC;
  signal \p0__7_n_125\ : STD_LOGIC;
  signal \p0__7_n_126\ : STD_LOGIC;
  signal \p0__7_n_127\ : STD_LOGIC;
  signal \p0__7_n_128\ : STD_LOGIC;
  signal \p0__7_n_129\ : STD_LOGIC;
  signal \p0__7_n_13\ : STD_LOGIC;
  signal \p0__7_n_130\ : STD_LOGIC;
  signal \p0__7_n_131\ : STD_LOGIC;
  signal \p0__7_n_132\ : STD_LOGIC;
  signal \p0__7_n_133\ : STD_LOGIC;
  signal \p0__7_n_134\ : STD_LOGIC;
  signal \p0__7_n_135\ : STD_LOGIC;
  signal \p0__7_n_136\ : STD_LOGIC;
  signal \p0__7_n_137\ : STD_LOGIC;
  signal \p0__7_n_138\ : STD_LOGIC;
  signal \p0__7_n_139\ : STD_LOGIC;
  signal \p0__7_n_14\ : STD_LOGIC;
  signal \p0__7_n_140\ : STD_LOGIC;
  signal \p0__7_n_141\ : STD_LOGIC;
  signal \p0__7_n_142\ : STD_LOGIC;
  signal \p0__7_n_143\ : STD_LOGIC;
  signal \p0__7_n_144\ : STD_LOGIC;
  signal \p0__7_n_145\ : STD_LOGIC;
  signal \p0__7_n_146\ : STD_LOGIC;
  signal \p0__7_n_147\ : STD_LOGIC;
  signal \p0__7_n_148\ : STD_LOGIC;
  signal \p0__7_n_149\ : STD_LOGIC;
  signal \p0__7_n_15\ : STD_LOGIC;
  signal \p0__7_n_150\ : STD_LOGIC;
  signal \p0__7_n_151\ : STD_LOGIC;
  signal \p0__7_n_152\ : STD_LOGIC;
  signal \p0__7_n_153\ : STD_LOGIC;
  signal \p0__7_n_16\ : STD_LOGIC;
  signal \p0__7_n_17\ : STD_LOGIC;
  signal \p0__7_n_18\ : STD_LOGIC;
  signal \p0__7_n_19\ : STD_LOGIC;
  signal \p0__7_n_20\ : STD_LOGIC;
  signal \p0__7_n_21\ : STD_LOGIC;
  signal \p0__7_n_22\ : STD_LOGIC;
  signal \p0__7_n_23\ : STD_LOGIC;
  signal \p0__7_n_58\ : STD_LOGIC;
  signal \p0__7_n_59\ : STD_LOGIC;
  signal \p0__7_n_6\ : STD_LOGIC;
  signal \p0__7_n_60\ : STD_LOGIC;
  signal \p0__7_n_61\ : STD_LOGIC;
  signal \p0__7_n_62\ : STD_LOGIC;
  signal \p0__7_n_63\ : STD_LOGIC;
  signal \p0__7_n_64\ : STD_LOGIC;
  signal \p0__7_n_65\ : STD_LOGIC;
  signal \p0__7_n_66\ : STD_LOGIC;
  signal \p0__7_n_67\ : STD_LOGIC;
  signal \p0__7_n_68\ : STD_LOGIC;
  signal \p0__7_n_69\ : STD_LOGIC;
  signal \p0__7_n_7\ : STD_LOGIC;
  signal \p0__7_n_70\ : STD_LOGIC;
  signal \p0__7_n_71\ : STD_LOGIC;
  signal \p0__7_n_72\ : STD_LOGIC;
  signal \p0__7_n_73\ : STD_LOGIC;
  signal \p0__7_n_74\ : STD_LOGIC;
  signal \p0__7_n_75\ : STD_LOGIC;
  signal \p0__7_n_76\ : STD_LOGIC;
  signal \p0__7_n_77\ : STD_LOGIC;
  signal \p0__7_n_78\ : STD_LOGIC;
  signal \p0__7_n_79\ : STD_LOGIC;
  signal \p0__7_n_8\ : STD_LOGIC;
  signal \p0__7_n_80\ : STD_LOGIC;
  signal \p0__7_n_81\ : STD_LOGIC;
  signal \p0__7_n_82\ : STD_LOGIC;
  signal \p0__7_n_83\ : STD_LOGIC;
  signal \p0__7_n_84\ : STD_LOGIC;
  signal \p0__7_n_85\ : STD_LOGIC;
  signal \p0__7_n_86\ : STD_LOGIC;
  signal \p0__7_n_87\ : STD_LOGIC;
  signal \p0__7_n_88\ : STD_LOGIC;
  signal \p0__7_n_89\ : STD_LOGIC;
  signal \p0__7_n_9\ : STD_LOGIC;
  signal \p0__7_n_90\ : STD_LOGIC;
  signal \p0__7_n_91\ : STD_LOGIC;
  signal \p0__7_n_92\ : STD_LOGIC;
  signal \p0__7_n_93\ : STD_LOGIC;
  signal \p0__7_n_94\ : STD_LOGIC;
  signal \p0__7_n_95\ : STD_LOGIC;
  signal \p0__7_n_96\ : STD_LOGIC;
  signal \p0__7_n_97\ : STD_LOGIC;
  signal \p0__7_n_98\ : STD_LOGIC;
  signal \p0__7_n_99\ : STD_LOGIC;
  signal \p0__8_n_100\ : STD_LOGIC;
  signal \p0__8_n_101\ : STD_LOGIC;
  signal \p0__8_n_102\ : STD_LOGIC;
  signal \p0__8_n_103\ : STD_LOGIC;
  signal \p0__8_n_104\ : STD_LOGIC;
  signal \p0__8_n_105\ : STD_LOGIC;
  signal \p0__8_n_58\ : STD_LOGIC;
  signal \p0__8_n_59\ : STD_LOGIC;
  signal \p0__8_n_60\ : STD_LOGIC;
  signal \p0__8_n_61\ : STD_LOGIC;
  signal \p0__8_n_62\ : STD_LOGIC;
  signal \p0__8_n_63\ : STD_LOGIC;
  signal \p0__8_n_64\ : STD_LOGIC;
  signal \p0__8_n_65\ : STD_LOGIC;
  signal \p0__8_n_66\ : STD_LOGIC;
  signal \p0__8_n_67\ : STD_LOGIC;
  signal \p0__8_n_68\ : STD_LOGIC;
  signal \p0__8_n_69\ : STD_LOGIC;
  signal \p0__8_n_70\ : STD_LOGIC;
  signal \p0__8_n_71\ : STD_LOGIC;
  signal \p0__8_n_72\ : STD_LOGIC;
  signal \p0__8_n_73\ : STD_LOGIC;
  signal \p0__8_n_74\ : STD_LOGIC;
  signal \p0__8_n_75\ : STD_LOGIC;
  signal \p0__8_n_76\ : STD_LOGIC;
  signal \p0__8_n_77\ : STD_LOGIC;
  signal \p0__8_n_78\ : STD_LOGIC;
  signal \p0__8_n_79\ : STD_LOGIC;
  signal \p0__8_n_80\ : STD_LOGIC;
  signal \p0__8_n_81\ : STD_LOGIC;
  signal \p0__8_n_82\ : STD_LOGIC;
  signal \p0__8_n_83\ : STD_LOGIC;
  signal \p0__8_n_84\ : STD_LOGIC;
  signal \p0__8_n_85\ : STD_LOGIC;
  signal \p0__8_n_86\ : STD_LOGIC;
  signal \p0__8_n_87\ : STD_LOGIC;
  signal \p0__8_n_88\ : STD_LOGIC;
  signal \p0__8_n_89\ : STD_LOGIC;
  signal \p0__8_n_90\ : STD_LOGIC;
  signal \p0__8_n_91\ : STD_LOGIC;
  signal \p0__8_n_92\ : STD_LOGIC;
  signal \p0__8_n_93\ : STD_LOGIC;
  signal \p0__8_n_94\ : STD_LOGIC;
  signal \p0__8_n_95\ : STD_LOGIC;
  signal \p0__8_n_96\ : STD_LOGIC;
  signal \p0__8_n_97\ : STD_LOGIC;
  signal \p0__8_n_98\ : STD_LOGIC;
  signal \p0__8_n_99\ : STD_LOGIC;
  signal \p0__9_n_10\ : STD_LOGIC;
  signal \p0__9_n_100\ : STD_LOGIC;
  signal \p0__9_n_101\ : STD_LOGIC;
  signal \p0__9_n_102\ : STD_LOGIC;
  signal \p0__9_n_103\ : STD_LOGIC;
  signal \p0__9_n_104\ : STD_LOGIC;
  signal \p0__9_n_105\ : STD_LOGIC;
  signal \p0__9_n_106\ : STD_LOGIC;
  signal \p0__9_n_107\ : STD_LOGIC;
  signal \p0__9_n_108\ : STD_LOGIC;
  signal \p0__9_n_109\ : STD_LOGIC;
  signal \p0__9_n_11\ : STD_LOGIC;
  signal \p0__9_n_110\ : STD_LOGIC;
  signal \p0__9_n_111\ : STD_LOGIC;
  signal \p0__9_n_112\ : STD_LOGIC;
  signal \p0__9_n_113\ : STD_LOGIC;
  signal \p0__9_n_114\ : STD_LOGIC;
  signal \p0__9_n_115\ : STD_LOGIC;
  signal \p0__9_n_116\ : STD_LOGIC;
  signal \p0__9_n_117\ : STD_LOGIC;
  signal \p0__9_n_118\ : STD_LOGIC;
  signal \p0__9_n_119\ : STD_LOGIC;
  signal \p0__9_n_12\ : STD_LOGIC;
  signal \p0__9_n_120\ : STD_LOGIC;
  signal \p0__9_n_121\ : STD_LOGIC;
  signal \p0__9_n_122\ : STD_LOGIC;
  signal \p0__9_n_123\ : STD_LOGIC;
  signal \p0__9_n_124\ : STD_LOGIC;
  signal \p0__9_n_125\ : STD_LOGIC;
  signal \p0__9_n_126\ : STD_LOGIC;
  signal \p0__9_n_127\ : STD_LOGIC;
  signal \p0__9_n_128\ : STD_LOGIC;
  signal \p0__9_n_129\ : STD_LOGIC;
  signal \p0__9_n_13\ : STD_LOGIC;
  signal \p0__9_n_130\ : STD_LOGIC;
  signal \p0__9_n_131\ : STD_LOGIC;
  signal \p0__9_n_132\ : STD_LOGIC;
  signal \p0__9_n_133\ : STD_LOGIC;
  signal \p0__9_n_134\ : STD_LOGIC;
  signal \p0__9_n_135\ : STD_LOGIC;
  signal \p0__9_n_136\ : STD_LOGIC;
  signal \p0__9_n_137\ : STD_LOGIC;
  signal \p0__9_n_138\ : STD_LOGIC;
  signal \p0__9_n_139\ : STD_LOGIC;
  signal \p0__9_n_14\ : STD_LOGIC;
  signal \p0__9_n_140\ : STD_LOGIC;
  signal \p0__9_n_141\ : STD_LOGIC;
  signal \p0__9_n_142\ : STD_LOGIC;
  signal \p0__9_n_143\ : STD_LOGIC;
  signal \p0__9_n_144\ : STD_LOGIC;
  signal \p0__9_n_145\ : STD_LOGIC;
  signal \p0__9_n_146\ : STD_LOGIC;
  signal \p0__9_n_147\ : STD_LOGIC;
  signal \p0__9_n_148\ : STD_LOGIC;
  signal \p0__9_n_149\ : STD_LOGIC;
  signal \p0__9_n_15\ : STD_LOGIC;
  signal \p0__9_n_150\ : STD_LOGIC;
  signal \p0__9_n_151\ : STD_LOGIC;
  signal \p0__9_n_152\ : STD_LOGIC;
  signal \p0__9_n_153\ : STD_LOGIC;
  signal \p0__9_n_16\ : STD_LOGIC;
  signal \p0__9_n_17\ : STD_LOGIC;
  signal \p0__9_n_18\ : STD_LOGIC;
  signal \p0__9_n_19\ : STD_LOGIC;
  signal \p0__9_n_20\ : STD_LOGIC;
  signal \p0__9_n_21\ : STD_LOGIC;
  signal \p0__9_n_22\ : STD_LOGIC;
  signal \p0__9_n_23\ : STD_LOGIC;
  signal \p0__9_n_24\ : STD_LOGIC;
  signal \p0__9_n_25\ : STD_LOGIC;
  signal \p0__9_n_26\ : STD_LOGIC;
  signal \p0__9_n_27\ : STD_LOGIC;
  signal \p0__9_n_28\ : STD_LOGIC;
  signal \p0__9_n_29\ : STD_LOGIC;
  signal \p0__9_n_30\ : STD_LOGIC;
  signal \p0__9_n_31\ : STD_LOGIC;
  signal \p0__9_n_32\ : STD_LOGIC;
  signal \p0__9_n_33\ : STD_LOGIC;
  signal \p0__9_n_34\ : STD_LOGIC;
  signal \p0__9_n_35\ : STD_LOGIC;
  signal \p0__9_n_36\ : STD_LOGIC;
  signal \p0__9_n_37\ : STD_LOGIC;
  signal \p0__9_n_38\ : STD_LOGIC;
  signal \p0__9_n_39\ : STD_LOGIC;
  signal \p0__9_n_40\ : STD_LOGIC;
  signal \p0__9_n_41\ : STD_LOGIC;
  signal \p0__9_n_42\ : STD_LOGIC;
  signal \p0__9_n_43\ : STD_LOGIC;
  signal \p0__9_n_44\ : STD_LOGIC;
  signal \p0__9_n_45\ : STD_LOGIC;
  signal \p0__9_n_46\ : STD_LOGIC;
  signal \p0__9_n_47\ : STD_LOGIC;
  signal \p0__9_n_48\ : STD_LOGIC;
  signal \p0__9_n_49\ : STD_LOGIC;
  signal \p0__9_n_50\ : STD_LOGIC;
  signal \p0__9_n_51\ : STD_LOGIC;
  signal \p0__9_n_52\ : STD_LOGIC;
  signal \p0__9_n_53\ : STD_LOGIC;
  signal \p0__9_n_58\ : STD_LOGIC;
  signal \p0__9_n_59\ : STD_LOGIC;
  signal \p0__9_n_6\ : STD_LOGIC;
  signal \p0__9_n_60\ : STD_LOGIC;
  signal \p0__9_n_61\ : STD_LOGIC;
  signal \p0__9_n_62\ : STD_LOGIC;
  signal \p0__9_n_63\ : STD_LOGIC;
  signal \p0__9_n_64\ : STD_LOGIC;
  signal \p0__9_n_65\ : STD_LOGIC;
  signal \p0__9_n_66\ : STD_LOGIC;
  signal \p0__9_n_67\ : STD_LOGIC;
  signal \p0__9_n_68\ : STD_LOGIC;
  signal \p0__9_n_69\ : STD_LOGIC;
  signal \p0__9_n_7\ : STD_LOGIC;
  signal \p0__9_n_70\ : STD_LOGIC;
  signal \p0__9_n_71\ : STD_LOGIC;
  signal \p0__9_n_72\ : STD_LOGIC;
  signal \p0__9_n_73\ : STD_LOGIC;
  signal \p0__9_n_74\ : STD_LOGIC;
  signal \p0__9_n_75\ : STD_LOGIC;
  signal \p0__9_n_76\ : STD_LOGIC;
  signal \p0__9_n_77\ : STD_LOGIC;
  signal \p0__9_n_78\ : STD_LOGIC;
  signal \p0__9_n_79\ : STD_LOGIC;
  signal \p0__9_n_8\ : STD_LOGIC;
  signal \p0__9_n_80\ : STD_LOGIC;
  signal \p0__9_n_81\ : STD_LOGIC;
  signal \p0__9_n_82\ : STD_LOGIC;
  signal \p0__9_n_83\ : STD_LOGIC;
  signal \p0__9_n_84\ : STD_LOGIC;
  signal \p0__9_n_85\ : STD_LOGIC;
  signal \p0__9_n_86\ : STD_LOGIC;
  signal \p0__9_n_87\ : STD_LOGIC;
  signal \p0__9_n_88\ : STD_LOGIC;
  signal \p0__9_n_89\ : STD_LOGIC;
  signal \p0__9_n_9\ : STD_LOGIC;
  signal \p0__9_n_90\ : STD_LOGIC;
  signal \p0__9_n_91\ : STD_LOGIC;
  signal \p0__9_n_92\ : STD_LOGIC;
  signal \p0__9_n_93\ : STD_LOGIC;
  signal \p0__9_n_94\ : STD_LOGIC;
  signal \p0__9_n_95\ : STD_LOGIC;
  signal \p0__9_n_96\ : STD_LOGIC;
  signal \p0__9_n_97\ : STD_LOGIC;
  signal \p0__9_n_98\ : STD_LOGIC;
  signal \p0__9_n_99\ : STD_LOGIC;
  signal p0_n_106 : STD_LOGIC;
  signal p0_n_107 : STD_LOGIC;
  signal p0_n_108 : STD_LOGIC;
  signal p0_n_109 : STD_LOGIC;
  signal p0_n_110 : STD_LOGIC;
  signal p0_n_111 : STD_LOGIC;
  signal p0_n_112 : STD_LOGIC;
  signal p0_n_113 : STD_LOGIC;
  signal p0_n_114 : STD_LOGIC;
  signal p0_n_115 : STD_LOGIC;
  signal p0_n_116 : STD_LOGIC;
  signal p0_n_117 : STD_LOGIC;
  signal p0_n_118 : STD_LOGIC;
  signal p0_n_119 : STD_LOGIC;
  signal p0_n_120 : STD_LOGIC;
  signal p0_n_121 : STD_LOGIC;
  signal p0_n_122 : STD_LOGIC;
  signal p0_n_123 : STD_LOGIC;
  signal p0_n_124 : STD_LOGIC;
  signal p0_n_125 : STD_LOGIC;
  signal p0_n_126 : STD_LOGIC;
  signal p0_n_127 : STD_LOGIC;
  signal p0_n_128 : STD_LOGIC;
  signal p0_n_129 : STD_LOGIC;
  signal p0_n_130 : STD_LOGIC;
  signal p0_n_131 : STD_LOGIC;
  signal p0_n_132 : STD_LOGIC;
  signal p0_n_133 : STD_LOGIC;
  signal p0_n_134 : STD_LOGIC;
  signal p0_n_135 : STD_LOGIC;
  signal p0_n_136 : STD_LOGIC;
  signal p0_n_137 : STD_LOGIC;
  signal p0_n_138 : STD_LOGIC;
  signal p0_n_139 : STD_LOGIC;
  signal p0_n_140 : STD_LOGIC;
  signal p0_n_141 : STD_LOGIC;
  signal p0_n_142 : STD_LOGIC;
  signal p0_n_143 : STD_LOGIC;
  signal p0_n_144 : STD_LOGIC;
  signal p0_n_145 : STD_LOGIC;
  signal p0_n_146 : STD_LOGIC;
  signal p0_n_147 : STD_LOGIC;
  signal p0_n_148 : STD_LOGIC;
  signal p0_n_149 : STD_LOGIC;
  signal p0_n_150 : STD_LOGIC;
  signal p0_n_151 : STD_LOGIC;
  signal p0_n_152 : STD_LOGIC;
  signal p0_n_153 : STD_LOGIC;
  signal \NLW_ADC_16Q48_OUT[0]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_ADC_16Q48_OUT[0]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ADC_16Q48_OUT[0]_INST_0_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ADC_16Q48_OUT[0]_INST_0_i_19_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ADC_16Q48_OUT[0]_INST_0_i_25_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ADC_16Q48_OUT[0]_INST_0_i_30_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ADC_16Q48_OUT[0]_INST_0_i_35_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ADC_16Q48_OUT[54]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ADC_16Q48_OUT[54]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_p0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_p0__10_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__10_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__10_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__10_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__10_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__10_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__10_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_p0__10_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_p0__10_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__10_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_p0__3_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__3_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__3_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__3_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__3_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__3_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__3_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_p0__3_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_p0__3_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__4_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__4_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__4_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__4_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__4_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__4_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__4_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_p0__4_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_p0__4_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__4_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_p0__5_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__5_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__5_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__5_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__5_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__5_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__5_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_p0__5_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__6_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__6_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__6_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__6_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__6_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__6_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__6_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_p0__6_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_p0__6_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__6_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_p0__7_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__7_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__7_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__7_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__7_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__7_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__7_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_p0__7_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__8_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__8_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__8_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__8_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__8_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__8_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__8_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_p0__8_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_p0__8_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__8_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_p0__9_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__9_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__9_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__9_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__9_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__9_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__9_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[0]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[0]_INST_0_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[0]_INST_0_i_10\ : label is 35;
  attribute HLUTNM : string;
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_11\ : label is "lutpair3";
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_12\ : label is "lutpair2";
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_13\ : label is "lutpair1";
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_14\ : label is "lutpair0";
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_15\ : label is "lutpair4";
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_16\ : label is "lutpair3";
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_17\ : label is "lutpair2";
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_18\ : label is "lutpair1";
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[0]_INST_0_i_19\ : label is 35;
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_2\ : label is "lutpair7";
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_21\ : label is "lutpair0";
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[0]_INST_0_i_25\ : label is 35;
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_3\ : label is "lutpair6";
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[0]_INST_0_i_30\ : label is 35;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[0]_INST_0_i_35\ : label is 35;
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_4\ : label is "lutpair5";
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_5\ : label is "lutpair4";
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_6\ : label is "lutpair8";
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_7\ : label is "lutpair7";
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_8\ : label is "lutpair6";
  attribute HLUTNM of \ADC_16Q48_OUT[0]_INST_0_i_9\ : label is "lutpair5";
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[10]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[14]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[18]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[22]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[26]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[2]_INST_0\ : label is 35;
  attribute HLUTNM of \ADC_16Q48_OUT[2]_INST_0_i_2\ : label is "lutpair10";
  attribute HLUTNM of \ADC_16Q48_OUT[2]_INST_0_i_3\ : label is "lutpair9";
  attribute HLUTNM of \ADC_16Q48_OUT[2]_INST_0_i_4\ : label is "lutpair8";
  attribute HLUTNM of \ADC_16Q48_OUT[2]_INST_0_i_7\ : label is "lutpair10";
  attribute HLUTNM of \ADC_16Q48_OUT[2]_INST_0_i_8\ : label is "lutpair9";
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[30]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[34]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[38]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[42]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[46]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[50]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[54]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \ADC_16Q48_OUT[6]_INST_0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p0 : label is "{SYNTH-10 {cell *THIS*} {string 18x20 12}}";
  attribute METHODOLOGY_DRC_VIOS of \p0__10\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 12}}";
  attribute METHODOLOGY_DRC_VIOS of \p0__3\ : label is "{SYNTH-10 {cell *THIS*} {string 9x18 12}}";
  attribute METHODOLOGY_DRC_VIOS of \p0__4\ : label is "{SYNTH-10 {cell *THIS*} {string 9x20 12}}";
  attribute METHODOLOGY_DRC_VIOS of \p0__5\ : label is "{SYNTH-10 {cell *THIS*} {string 18x20 12}}";
  attribute METHODOLOGY_DRC_VIOS of \p0__6\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 12}}";
  attribute METHODOLOGY_DRC_VIOS of \p0__7\ : label is "{SYNTH-10 {cell *THIS*} {string 18x20 12}}";
  attribute METHODOLOGY_DRC_VIOS of \p0__8\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 12}}";
  attribute METHODOLOGY_DRC_VIOS of \p0__9\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 12}}";
begin
\ADC_16Q48_OUT[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[0]_INST_0_i_1_n_0\,
      CO(3) => \ADC_16Q48_OUT[0]_INST_0_n_0\,
      CO(2) => \ADC_16Q48_OUT[0]_INST_0_n_1\,
      CO(1) => \ADC_16Q48_OUT[0]_INST_0_n_2\,
      CO(0) => \ADC_16Q48_OUT[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \ADC_16Q48_OUT[0]_INST_0_i_2_n_0\,
      DI(2) => \ADC_16Q48_OUT[0]_INST_0_i_3_n_0\,
      DI(1) => \ADC_16Q48_OUT[0]_INST_0_i_4_n_0\,
      DI(0) => \ADC_16Q48_OUT[0]_INST_0_i_5_n_0\,
      O(3 downto 2) => ADC_16Q48_OUT(1 downto 0),
      O(1 downto 0) => \NLW_ADC_16Q48_OUT[0]_INST_0_O_UNCONNECTED\(1 downto 0),
      S(3) => \ADC_16Q48_OUT[0]_INST_0_i_6_n_0\,
      S(2) => \ADC_16Q48_OUT[0]_INST_0_i_7_n_0\,
      S(1) => \ADC_16Q48_OUT[0]_INST_0_i_8_n_0\,
      S(0) => \ADC_16Q48_OUT[0]_INST_0_i_9_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[0]_INST_0_i_10_n_0\,
      CO(3) => \ADC_16Q48_OUT[0]_INST_0_i_1_n_0\,
      CO(2) => \ADC_16Q48_OUT[0]_INST_0_i_1_n_1\,
      CO(1) => \ADC_16Q48_OUT[0]_INST_0_i_1_n_2\,
      CO(0) => \ADC_16Q48_OUT[0]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \ADC_16Q48_OUT[0]_INST_0_i_11_n_0\,
      DI(2) => \ADC_16Q48_OUT[0]_INST_0_i_12_n_0\,
      DI(1) => \ADC_16Q48_OUT[0]_INST_0_i_13_n_0\,
      DI(0) => \ADC_16Q48_OUT[0]_INST_0_i_14_n_0\,
      O(3 downto 0) => \NLW_ADC_16Q48_OUT[0]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \ADC_16Q48_OUT[0]_INST_0_i_15_n_0\,
      S(2) => \ADC_16Q48_OUT[0]_INST_0_i_16_n_0\,
      S(1) => \ADC_16Q48_OUT[0]_INST_0_i_17_n_0\,
      S(0) => \ADC_16Q48_OUT[0]_INST_0_i_18_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[0]_INST_0_i_19_n_0\,
      CO(3) => \ADC_16Q48_OUT[0]_INST_0_i_10_n_0\,
      CO(2) => \ADC_16Q48_OUT[0]_INST_0_i_10_n_1\,
      CO(1) => \ADC_16Q48_OUT[0]_INST_0_i_10_n_2\,
      CO(0) => \ADC_16Q48_OUT[0]_INST_0_i_10_n_3\,
      CYINIT => '0',
      DI(3) => \ADC_16Q48_OUT[0]_INST_0_i_20_n_0\,
      DI(2) => \p0__10_n_71\,
      DI(1) => \p0__10_n_72\,
      DI(0) => \p0__10_n_73\,
      O(3 downto 0) => \NLW_ADC_16Q48_OUT[0]_INST_0_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => \ADC_16Q48_OUT[0]_INST_0_i_21_n_0\,
      S(2) => \ADC_16Q48_OUT[0]_INST_0_i_22_n_0\,
      S(1) => \ADC_16Q48_OUT[0]_INST_0_i_23_n_0\,
      S(0) => \ADC_16Q48_OUT[0]_INST_0_i_24_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \p0__6_n_101\,
      I1 => \p0__8_n_84\,
      I2 => \p0__10_n_67\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_11_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \p0__6_n_102\,
      I1 => \p0__8_n_85\,
      I2 => \p0__10_n_68\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_12_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \p0__6_n_103\,
      I1 => \p0__8_n_86\,
      I2 => \p0__10_n_69\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_13_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \p0__6_n_104\,
      I1 => \p0__8_n_87\,
      I2 => \p0__10_n_70\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_14_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \p0__6_n_100\,
      I1 => \p0__8_n_83\,
      I2 => \p0__10_n_66\,
      I3 => \ADC_16Q48_OUT[0]_INST_0_i_11_n_0\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_15_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \p0__6_n_101\,
      I1 => \p0__8_n_84\,
      I2 => \p0__10_n_67\,
      I3 => \ADC_16Q48_OUT[0]_INST_0_i_12_n_0\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_16_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \p0__6_n_102\,
      I1 => \p0__8_n_85\,
      I2 => \p0__10_n_68\,
      I3 => \ADC_16Q48_OUT[0]_INST_0_i_13_n_0\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_17_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \p0__6_n_103\,
      I1 => \p0__8_n_86\,
      I2 => \p0__10_n_69\,
      I3 => \ADC_16Q48_OUT[0]_INST_0_i_14_n_0\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_18_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[0]_INST_0_i_25_n_0\,
      CO(3) => \ADC_16Q48_OUT[0]_INST_0_i_19_n_0\,
      CO(2) => \ADC_16Q48_OUT[0]_INST_0_i_19_n_1\,
      CO(1) => \ADC_16Q48_OUT[0]_INST_0_i_19_n_2\,
      CO(0) => \ADC_16Q48_OUT[0]_INST_0_i_19_n_3\,
      CYINIT => '0',
      DI(3) => \p0__10_n_74\,
      DI(2) => \p0__10_n_75\,
      DI(1) => \p0__10_n_76\,
      DI(0) => \p0__10_n_77\,
      O(3 downto 0) => \NLW_ADC_16Q48_OUT[0]_INST_0_i_19_O_UNCONNECTED\(3 downto 0),
      S(3) => \ADC_16Q48_OUT[0]_INST_0_i_26_n_0\,
      S(2) => \ADC_16Q48_OUT[0]_INST_0_i_27_n_0\,
      S(1) => \ADC_16Q48_OUT[0]_INST_0_i_28_n_0\,
      S(0) => \ADC_16Q48_OUT[0]_INST_0_i_29_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \p0__6_n_97\,
      I1 => \p0__8_n_80\,
      I2 => \p0__10_n_63\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_2_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \p0__10_n_70\,
      I1 => \p0__6_n_104\,
      I2 => \p0__8_n_87\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_20_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \p0__6_n_104\,
      I1 => \p0__8_n_87\,
      I2 => \p0__10_n_70\,
      I3 => \p0__8_n_88\,
      I4 => \p0__6_n_105\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_21_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \p0__6_n_105\,
      I1 => \p0__8_n_88\,
      I2 => \p0__10_n_71\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_22_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_72\,
      I1 => \p0__8_n_89\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_23_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_73\,
      I1 => \p0__8_n_90\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_24_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_25\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[0]_INST_0_i_30_n_0\,
      CO(3) => \ADC_16Q48_OUT[0]_INST_0_i_25_n_0\,
      CO(2) => \ADC_16Q48_OUT[0]_INST_0_i_25_n_1\,
      CO(1) => \ADC_16Q48_OUT[0]_INST_0_i_25_n_2\,
      CO(0) => \ADC_16Q48_OUT[0]_INST_0_i_25_n_3\,
      CYINIT => '0',
      DI(3) => \p0__10_n_78\,
      DI(2) => \p0__10_n_79\,
      DI(1) => \p0__10_n_80\,
      DI(0) => \p0__10_n_81\,
      O(3 downto 0) => \NLW_ADC_16Q48_OUT[0]_INST_0_i_25_O_UNCONNECTED\(3 downto 0),
      S(3) => \ADC_16Q48_OUT[0]_INST_0_i_31_n_0\,
      S(2) => \ADC_16Q48_OUT[0]_INST_0_i_32_n_0\,
      S(1) => \ADC_16Q48_OUT[0]_INST_0_i_33_n_0\,
      S(0) => \ADC_16Q48_OUT[0]_INST_0_i_34_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_74\,
      I1 => \p0__8_n_91\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_26_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_75\,
      I1 => \p0__8_n_92\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_27_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_76\,
      I1 => \p0__8_n_93\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_28_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_77\,
      I1 => \p0__8_n_94\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_29_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \p0__6_n_98\,
      I1 => \p0__8_n_81\,
      I2 => \p0__10_n_64\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_3_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_30\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[0]_INST_0_i_35_n_0\,
      CO(3) => \ADC_16Q48_OUT[0]_INST_0_i_30_n_0\,
      CO(2) => \ADC_16Q48_OUT[0]_INST_0_i_30_n_1\,
      CO(1) => \ADC_16Q48_OUT[0]_INST_0_i_30_n_2\,
      CO(0) => \ADC_16Q48_OUT[0]_INST_0_i_30_n_3\,
      CYINIT => '0',
      DI(3) => \p0__10_n_82\,
      DI(2) => \p0__10_n_83\,
      DI(1) => \p0__10_n_84\,
      DI(0) => \p0__10_n_85\,
      O(3 downto 0) => \NLW_ADC_16Q48_OUT[0]_INST_0_i_30_O_UNCONNECTED\(3 downto 0),
      S(3) => \ADC_16Q48_OUT[0]_INST_0_i_36_n_0\,
      S(2) => \ADC_16Q48_OUT[0]_INST_0_i_37_n_0\,
      S(1) => \ADC_16Q48_OUT[0]_INST_0_i_38_n_0\,
      S(0) => \ADC_16Q48_OUT[0]_INST_0_i_39_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_78\,
      I1 => \p0__8_n_95\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_31_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_79\,
      I1 => \p0__8_n_96\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_32_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_80\,
      I1 => \p0__8_n_97\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_33_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_81\,
      I1 => \p0__8_n_98\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_34_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_35\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ADC_16Q48_OUT[0]_INST_0_i_35_n_0\,
      CO(2) => \ADC_16Q48_OUT[0]_INST_0_i_35_n_1\,
      CO(1) => \ADC_16Q48_OUT[0]_INST_0_i_35_n_2\,
      CO(0) => \ADC_16Q48_OUT[0]_INST_0_i_35_n_3\,
      CYINIT => '0',
      DI(3) => \p0__10_n_86\,
      DI(2) => \p0__10_n_87\,
      DI(1) => \p0__10_n_88\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_ADC_16Q48_OUT[0]_INST_0_i_35_O_UNCONNECTED\(3 downto 0),
      S(3) => \ADC_16Q48_OUT[0]_INST_0_i_40_n_0\,
      S(2) => \ADC_16Q48_OUT[0]_INST_0_i_41_n_0\,
      S(1) => \ADC_16Q48_OUT[0]_INST_0_i_42_n_0\,
      S(0) => \p0__10_n_89\
    );
\ADC_16Q48_OUT[0]_INST_0_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_82\,
      I1 => \p0__8_n_99\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_36_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_83\,
      I1 => \p0__8_n_100\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_37_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_84\,
      I1 => \p0__8_n_101\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_38_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_85\,
      I1 => \p0__8_n_102\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_39_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \p0__6_n_99\,
      I1 => \p0__8_n_82\,
      I2 => \p0__10_n_65\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_40\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_86\,
      I1 => \p0__8_n_103\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_40_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_87\,
      I1 => \p0__8_n_104\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_41_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_42\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__10_n_88\,
      I1 => \p0__8_n_105\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_42_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \p0__6_n_100\,
      I1 => \p0__8_n_83\,
      I2 => \p0__10_n_66\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_5_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \p0__6_n_96\,
      I1 => \p0__8_n_79\,
      I2 => \p0__10_n_62\,
      I3 => \ADC_16Q48_OUT[0]_INST_0_i_2_n_0\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_6_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \p0__6_n_97\,
      I1 => \p0__8_n_80\,
      I2 => \p0__10_n_63\,
      I3 => \ADC_16Q48_OUT[0]_INST_0_i_3_n_0\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_7_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \p0__6_n_98\,
      I1 => \p0__8_n_81\,
      I2 => \p0__10_n_64\,
      I3 => \ADC_16Q48_OUT[0]_INST_0_i_4_n_0\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[0]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \p0__6_n_99\,
      I1 => \p0__8_n_82\,
      I2 => \p0__10_n_65\,
      I3 => \ADC_16Q48_OUT[0]_INST_0_i_5_n_0\,
      O => \ADC_16Q48_OUT[0]_INST_0_i_9_n_0\
    );
\ADC_16Q48_OUT[10]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[6]_INST_0_n_0\,
      CO(3) => \ADC_16Q48_OUT[10]_INST_0_n_0\,
      CO(2) => \ADC_16Q48_OUT[10]_INST_0_n_1\,
      CO(1) => \ADC_16Q48_OUT[10]_INST_0_n_2\,
      CO(0) => \ADC_16Q48_OUT[10]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \ADC_16Q48_OUT[10]_INST_0_i_1_n_0\,
      DI(2) => \ADC_16Q48_OUT[10]_INST_0_i_2_n_0\,
      DI(1) => \ADC_16Q48_OUT[10]_INST_0_i_3_n_0\,
      DI(0) => \ADC_16Q48_OUT[10]_INST_0_i_4_n_0\,
      O(3 downto 0) => ADC_16Q48_OUT(13 downto 10),
      S(3) => \ADC_16Q48_OUT[10]_INST_0_i_5_n_0\,
      S(2) => \ADC_16Q48_OUT[10]_INST_0_i_6_n_0\,
      S(1) => \ADC_16Q48_OUT[10]_INST_0_i_7_n_0\,
      S(0) => \ADC_16Q48_OUT[10]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9F9F990"
    )
        port map (
      I0 => \p0__3_n_102\,
      I1 => \p0__6_n_85\,
      I2 => \p0__8_n_68\,
      I3 => \p0__3_n_103\,
      I4 => \p0__6_n_86\,
      O => \ADC_16Q48_OUT[10]_INST_0_i_1_n_0\
    );
\ADC_16Q48_OUT[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9F9F990"
    )
        port map (
      I0 => \p0__3_n_103\,
      I1 => \p0__6_n_86\,
      I2 => \p0__8_n_69\,
      I3 => \p0__3_n_104\,
      I4 => \p0__6_n_87\,
      O => \ADC_16Q48_OUT[10]_INST_0_i_2_n_0\
    );
\ADC_16Q48_OUT[10]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9F9F990"
    )
        port map (
      I0 => \p0__3_n_104\,
      I1 => \p0__6_n_87\,
      I2 => \p0__8_n_70\,
      I3 => \p0__3_n_105\,
      I4 => \p0__6_n_88\,
      O => \ADC_16Q48_OUT[10]_INST_0_i_3_n_0\
    );
\ADC_16Q48_OUT[10]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9F9F990"
    )
        port map (
      I0 => \p0__3_n_105\,
      I1 => \p0__6_n_88\,
      I2 => \p0__8_n_71\,
      I3 => \p0__6_n_89\,
      I4 => \p0__8_n_72\,
      O => \ADC_16Q48_OUT[10]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[10]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996699669969669"
    )
        port map (
      I0 => \ADC_16Q48_OUT[10]_INST_0_i_1_n_0\,
      I1 => \p0__3_n_101\,
      I2 => \p0__6_n_84\,
      I3 => \p0__8_n_67\,
      I4 => \p0__6_n_85\,
      I5 => \p0__3_n_102\,
      O => \ADC_16Q48_OUT[10]_INST_0_i_5_n_0\
    );
\ADC_16Q48_OUT[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996699669969669"
    )
        port map (
      I0 => \ADC_16Q48_OUT[10]_INST_0_i_2_n_0\,
      I1 => \p0__3_n_102\,
      I2 => \p0__6_n_85\,
      I3 => \p0__8_n_68\,
      I4 => \p0__6_n_86\,
      I5 => \p0__3_n_103\,
      O => \ADC_16Q48_OUT[10]_INST_0_i_6_n_0\
    );
\ADC_16Q48_OUT[10]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996699669969669"
    )
        port map (
      I0 => \ADC_16Q48_OUT[10]_INST_0_i_3_n_0\,
      I1 => \p0__3_n_103\,
      I2 => \p0__6_n_86\,
      I3 => \p0__8_n_69\,
      I4 => \p0__6_n_87\,
      I5 => \p0__3_n_104\,
      O => \ADC_16Q48_OUT[10]_INST_0_i_7_n_0\
    );
\ADC_16Q48_OUT[10]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996699669969669"
    )
        port map (
      I0 => \ADC_16Q48_OUT[10]_INST_0_i_4_n_0\,
      I1 => \p0__3_n_104\,
      I2 => \p0__6_n_87\,
      I3 => \p0__8_n_70\,
      I4 => \p0__6_n_88\,
      I5 => \p0__3_n_105\,
      O => \ADC_16Q48_OUT[10]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[14]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[10]_INST_0_n_0\,
      CO(3) => \ADC_16Q48_OUT[14]_INST_0_n_0\,
      CO(2) => \ADC_16Q48_OUT[14]_INST_0_n_1\,
      CO(1) => \ADC_16Q48_OUT[14]_INST_0_n_2\,
      CO(0) => \ADC_16Q48_OUT[14]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \ADC_16Q48_OUT[14]_INST_0_i_1_n_0\,
      DI(2) => \ADC_16Q48_OUT[14]_INST_0_i_2_n_0\,
      DI(1) => \ADC_16Q48_OUT[14]_INST_0_i_3_n_0\,
      DI(0) => \ADC_16Q48_OUT[14]_INST_0_i_4_n_0\,
      O(3 downto 0) => ADC_16Q48_OUT(17 downto 14),
      S(3) => \ADC_16Q48_OUT[14]_INST_0_i_5_n_0\,
      S(2) => \ADC_16Q48_OUT[14]_INST_0_i_6_n_0\,
      S(1) => \ADC_16Q48_OUT[14]_INST_0_i_7_n_0\,
      S(0) => \ADC_16Q48_OUT[14]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9F9F990"
    )
        port map (
      I0 => \p0__3_n_98\,
      I1 => \p0__6_n_81\,
      I2 => \p0__8_n_64\,
      I3 => \p0__3_n_99\,
      I4 => \p0__6_n_82\,
      O => \ADC_16Q48_OUT[14]_INST_0_i_1_n_0\
    );
\ADC_16Q48_OUT[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9F9F990"
    )
        port map (
      I0 => \p0__3_n_99\,
      I1 => \p0__6_n_82\,
      I2 => \p0__8_n_65\,
      I3 => \p0__3_n_100\,
      I4 => \p0__6_n_83\,
      O => \ADC_16Q48_OUT[14]_INST_0_i_2_n_0\
    );
\ADC_16Q48_OUT[14]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9F9F990"
    )
        port map (
      I0 => \p0__3_n_100\,
      I1 => \p0__6_n_83\,
      I2 => \p0__8_n_66\,
      I3 => \p0__3_n_101\,
      I4 => \p0__6_n_84\,
      O => \ADC_16Q48_OUT[14]_INST_0_i_3_n_0\
    );
\ADC_16Q48_OUT[14]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9F9F990"
    )
        port map (
      I0 => \p0__3_n_101\,
      I1 => \p0__6_n_84\,
      I2 => \p0__8_n_67\,
      I3 => \p0__3_n_102\,
      I4 => \p0__6_n_85\,
      O => \ADC_16Q48_OUT[14]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[14]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996699669969669"
    )
        port map (
      I0 => \ADC_16Q48_OUT[14]_INST_0_i_1_n_0\,
      I1 => \p0__3_n_97\,
      I2 => \p0__6_n_80\,
      I3 => \p0__8_n_63\,
      I4 => \p0__6_n_81\,
      I5 => \p0__3_n_98\,
      O => \ADC_16Q48_OUT[14]_INST_0_i_5_n_0\
    );
\ADC_16Q48_OUT[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996699669969669"
    )
        port map (
      I0 => \ADC_16Q48_OUT[14]_INST_0_i_2_n_0\,
      I1 => \p0__3_n_98\,
      I2 => \p0__6_n_81\,
      I3 => \p0__8_n_64\,
      I4 => \p0__6_n_82\,
      I5 => \p0__3_n_99\,
      O => \ADC_16Q48_OUT[14]_INST_0_i_6_n_0\
    );
\ADC_16Q48_OUT[14]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996699669969669"
    )
        port map (
      I0 => \ADC_16Q48_OUT[14]_INST_0_i_3_n_0\,
      I1 => \p0__3_n_99\,
      I2 => \p0__6_n_82\,
      I3 => \p0__8_n_65\,
      I4 => \p0__6_n_83\,
      I5 => \p0__3_n_100\,
      O => \ADC_16Q48_OUT[14]_INST_0_i_7_n_0\
    );
\ADC_16Q48_OUT[14]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996699669969669"
    )
        port map (
      I0 => \ADC_16Q48_OUT[14]_INST_0_i_4_n_0\,
      I1 => \p0__3_n_100\,
      I2 => \p0__6_n_83\,
      I3 => \p0__8_n_66\,
      I4 => \p0__6_n_84\,
      I5 => \p0__3_n_101\,
      O => \ADC_16Q48_OUT[14]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[18]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[14]_INST_0_n_0\,
      CO(3) => \ADC_16Q48_OUT[18]_INST_0_n_0\,
      CO(2) => \ADC_16Q48_OUT[18]_INST_0_n_1\,
      CO(1) => \ADC_16Q48_OUT[18]_INST_0_n_2\,
      CO(0) => \ADC_16Q48_OUT[18]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \ADC_16Q48_OUT[18]_INST_0_i_1_n_0\,
      DI(2) => \ADC_16Q48_OUT[18]_INST_0_i_2_n_0\,
      DI(1) => \ADC_16Q48_OUT[18]_INST_0_i_3_n_0\,
      DI(0) => \ADC_16Q48_OUT[18]_INST_0_i_4_n_0\,
      O(3 downto 0) => ADC_16Q48_OUT(21 downto 18),
      S(3) => \ADC_16Q48_OUT[18]_INST_0_i_5_n_0\,
      S(2) => \ADC_16Q48_OUT[18]_INST_0_i_6_n_0\,
      S(1) => \ADC_16Q48_OUT[18]_INST_0_i_7_n_0\,
      S(0) => \ADC_16Q48_OUT[18]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9F9F990"
    )
        port map (
      I0 => \p0__3_n_94\,
      I1 => \p0__6_n_77\,
      I2 => \p0__8_n_60\,
      I3 => \p0__3_n_95\,
      I4 => \p0__6_n_78\,
      O => \ADC_16Q48_OUT[18]_INST_0_i_1_n_0\
    );
\ADC_16Q48_OUT[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9F9F990"
    )
        port map (
      I0 => \p0__3_n_95\,
      I1 => \p0__6_n_78\,
      I2 => \p0__8_n_61\,
      I3 => \p0__3_n_96\,
      I4 => \p0__6_n_79\,
      O => \ADC_16Q48_OUT[18]_INST_0_i_2_n_0\
    );
\ADC_16Q48_OUT[18]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9F9F990"
    )
        port map (
      I0 => \p0__3_n_96\,
      I1 => \p0__6_n_79\,
      I2 => \p0__8_n_62\,
      I3 => \p0__3_n_97\,
      I4 => \p0__6_n_80\,
      O => \ADC_16Q48_OUT[18]_INST_0_i_3_n_0\
    );
\ADC_16Q48_OUT[18]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9F9F990"
    )
        port map (
      I0 => \p0__3_n_97\,
      I1 => \p0__6_n_80\,
      I2 => \p0__8_n_63\,
      I3 => \p0__3_n_98\,
      I4 => \p0__6_n_81\,
      O => \ADC_16Q48_OUT[18]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[18]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996699669969669"
    )
        port map (
      I0 => \ADC_16Q48_OUT[18]_INST_0_i_1_n_0\,
      I1 => \p0__3_n_93\,
      I2 => \p0__6_n_76\,
      I3 => \p0__8_n_59\,
      I4 => \p0__6_n_77\,
      I5 => \p0__3_n_94\,
      O => \ADC_16Q48_OUT[18]_INST_0_i_5_n_0\
    );
\ADC_16Q48_OUT[18]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996699669969669"
    )
        port map (
      I0 => \ADC_16Q48_OUT[18]_INST_0_i_2_n_0\,
      I1 => \p0__3_n_94\,
      I2 => \p0__6_n_77\,
      I3 => \p0__8_n_60\,
      I4 => \p0__6_n_78\,
      I5 => \p0__3_n_95\,
      O => \ADC_16Q48_OUT[18]_INST_0_i_6_n_0\
    );
\ADC_16Q48_OUT[18]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996699669969669"
    )
        port map (
      I0 => \ADC_16Q48_OUT[18]_INST_0_i_3_n_0\,
      I1 => \p0__3_n_95\,
      I2 => \p0__6_n_78\,
      I3 => \p0__8_n_61\,
      I4 => \p0__6_n_79\,
      I5 => \p0__3_n_96\,
      O => \ADC_16Q48_OUT[18]_INST_0_i_7_n_0\
    );
\ADC_16Q48_OUT[18]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996699669969669"
    )
        port map (
      I0 => \ADC_16Q48_OUT[18]_INST_0_i_4_n_0\,
      I1 => \p0__3_n_96\,
      I2 => \p0__6_n_79\,
      I3 => \p0__8_n_62\,
      I4 => \p0__6_n_80\,
      I5 => \p0__3_n_97\,
      O => \ADC_16Q48_OUT[18]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[22]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[18]_INST_0_n_0\,
      CO(3) => \ADC_16Q48_OUT[22]_INST_0_n_0\,
      CO(2) => \ADC_16Q48_OUT[22]_INST_0_n_1\,
      CO(1) => \ADC_16Q48_OUT[22]_INST_0_n_2\,
      CO(0) => \ADC_16Q48_OUT[22]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \ADC_16Q48_OUT[22]_INST_0_i_1_n_0\,
      DI(2) => \ADC_16Q48_OUT[22]_INST_0_i_2_n_0\,
      DI(1) => \ADC_16Q48_OUT[22]_INST_0_i_3_n_0\,
      DI(0) => \ADC_16Q48_OUT[22]_INST_0_i_4_n_0\,
      O(3 downto 0) => ADC_16Q48_OUT(25 downto 22),
      S(3) => \ADC_16Q48_OUT[22]_INST_0_i_5_n_0\,
      S(2) => \ADC_16Q48_OUT[22]_INST_0_i_6_n_0\,
      S(1) => \ADC_16Q48_OUT[22]_INST_0_i_7_n_0\,
      S(0) => \ADC_16Q48_OUT[22]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[22]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__3_n_91\,
      I1 => \p0__6_n_74\,
      I2 => \p0__3_n_90\,
      I3 => \p0__6_n_73\,
      O => \ADC_16Q48_OUT[22]_INST_0_i_1_n_0\
    );
\ADC_16Q48_OUT[22]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \p0__8_n_58\,
      I1 => \p0__3_n_92\,
      I2 => \p0__6_n_75\,
      O => \ADC_16Q48_OUT[22]_INST_0_i_10_n_0\
    );
\ADC_16Q48_OUT[22]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D40000D4"
    )
        port map (
      I0 => \p0__8_n_58\,
      I1 => \p0__6_n_75\,
      I2 => \p0__3_n_92\,
      I3 => \p0__3_n_91\,
      I4 => \p0__6_n_74\,
      O => \ADC_16Q48_OUT[22]_INST_0_i_2_n_0\
    );
\ADC_16Q48_OUT[22]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EE0E00E"
    )
        port map (
      I0 => \p0__3_n_93\,
      I1 => \p0__6_n_76\,
      I2 => \p0__6_n_75\,
      I3 => \p0__3_n_92\,
      I4 => \p0__8_n_58\,
      O => \ADC_16Q48_OUT[22]_INST_0_i_3_n_0\
    );
\ADC_16Q48_OUT[22]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F9F9F990"
    )
        port map (
      I0 => \p0__3_n_93\,
      I1 => \p0__6_n_76\,
      I2 => \p0__8_n_59\,
      I3 => \p0__3_n_94\,
      I4 => \p0__6_n_77\,
      O => \ADC_16Q48_OUT[22]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__6_n_74\,
      I1 => \p0__3_n_91\,
      I2 => \p0__6_n_72\,
      I3 => \p0__3_n_89\,
      I4 => \p0__6_n_73\,
      I5 => \p0__3_n_90\,
      O => \ADC_16Q48_OUT[22]_INST_0_i_5_n_0\
    );
\ADC_16Q48_OUT[22]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96969669"
    )
        port map (
      I0 => \ADC_16Q48_OUT[22]_INST_0_i_2_n_0\,
      I1 => \p0__6_n_73\,
      I2 => \p0__3_n_90\,
      I3 => \p0__6_n_74\,
      I4 => \p0__3_n_91\,
      O => \ADC_16Q48_OUT[22]_INST_0_i_6_n_0\
    );
\ADC_16Q48_OUT[22]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E1E10F1EF0F0E1"
    )
        port map (
      I0 => \p0__6_n_76\,
      I1 => \p0__3_n_93\,
      I2 => \ADC_16Q48_OUT[22]_INST_0_i_9_n_0\,
      I3 => \p0__3_n_92\,
      I4 => \p0__6_n_75\,
      I5 => \p0__8_n_58\,
      O => \ADC_16Q48_OUT[22]_INST_0_i_7_n_0\
    );
\ADC_16Q48_OUT[22]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FE1FE01FE0FE01"
    )
        port map (
      I0 => \p0__6_n_77\,
      I1 => \p0__3_n_94\,
      I2 => \p0__8_n_59\,
      I3 => \ADC_16Q48_OUT[22]_INST_0_i_10_n_0\,
      I4 => \p0__6_n_76\,
      I5 => \p0__3_n_93\,
      O => \ADC_16Q48_OUT[22]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[22]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__6_n_74\,
      I1 => \p0__3_n_91\,
      O => \ADC_16Q48_OUT[22]_INST_0_i_9_n_0\
    );
\ADC_16Q48_OUT[26]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[22]_INST_0_n_0\,
      CO(3) => \ADC_16Q48_OUT[26]_INST_0_n_0\,
      CO(2) => \ADC_16Q48_OUT[26]_INST_0_n_1\,
      CO(1) => \ADC_16Q48_OUT[26]_INST_0_n_2\,
      CO(0) => \ADC_16Q48_OUT[26]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \ADC_16Q48_OUT[26]_INST_0_i_1_n_0\,
      DI(2) => \ADC_16Q48_OUT[26]_INST_0_i_2_n_0\,
      DI(1) => \ADC_16Q48_OUT[26]_INST_0_i_3_n_0\,
      DI(0) => \ADC_16Q48_OUT[26]_INST_0_i_4_n_0\,
      O(3 downto 0) => ADC_16Q48_OUT(29 downto 26),
      S(3) => \ADC_16Q48_OUT[26]_INST_0_i_5_n_0\,
      S(2) => \ADC_16Q48_OUT[26]_INST_0_i_6_n_0\,
      S(1) => \ADC_16Q48_OUT[26]_INST_0_i_7_n_0\,
      S(0) => \ADC_16Q48_OUT[26]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[26]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__4_n_104\,
      I1 => \p0__6_n_70\,
      I2 => \p0__4_n_103\,
      I3 => \p0__6_n_69\,
      O => \ADC_16Q48_OUT[26]_INST_0_i_1_n_0\
    );
\ADC_16Q48_OUT[26]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__4_n_105\,
      I1 => \p0__6_n_71\,
      I2 => \p0__4_n_104\,
      I3 => \p0__6_n_70\,
      O => \ADC_16Q48_OUT[26]_INST_0_i_2_n_0\
    );
\ADC_16Q48_OUT[26]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__3_n_89\,
      I1 => \p0__6_n_72\,
      I2 => \p0__4_n_105\,
      I3 => \p0__6_n_71\,
      O => \ADC_16Q48_OUT[26]_INST_0_i_3_n_0\
    );
\ADC_16Q48_OUT[26]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__3_n_90\,
      I1 => \p0__6_n_73\,
      I2 => \p0__3_n_89\,
      I3 => \p0__6_n_72\,
      O => \ADC_16Q48_OUT[26]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[26]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__6_n_70\,
      I1 => \p0__4_n_104\,
      I2 => \p0__6_n_68\,
      I3 => \p0__4_n_102\,
      I4 => \p0__6_n_69\,
      I5 => \p0__4_n_103\,
      O => \ADC_16Q48_OUT[26]_INST_0_i_5_n_0\
    );
\ADC_16Q48_OUT[26]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__6_n_71\,
      I1 => \p0__4_n_105\,
      I2 => \p0__6_n_69\,
      I3 => \p0__4_n_103\,
      I4 => \p0__6_n_70\,
      I5 => \p0__4_n_104\,
      O => \ADC_16Q48_OUT[26]_INST_0_i_6_n_0\
    );
\ADC_16Q48_OUT[26]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__6_n_72\,
      I1 => \p0__3_n_89\,
      I2 => \p0__6_n_70\,
      I3 => \p0__4_n_104\,
      I4 => \p0__6_n_71\,
      I5 => \p0__4_n_105\,
      O => \ADC_16Q48_OUT[26]_INST_0_i_7_n_0\
    );
\ADC_16Q48_OUT[26]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__6_n_73\,
      I1 => \p0__3_n_90\,
      I2 => \p0__6_n_71\,
      I3 => \p0__4_n_105\,
      I4 => \p0__6_n_72\,
      I5 => \p0__3_n_89\,
      O => \ADC_16Q48_OUT[26]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[2]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[0]_INST_0_n_0\,
      CO(3) => \ADC_16Q48_OUT[2]_INST_0_n_0\,
      CO(2) => \ADC_16Q48_OUT[2]_INST_0_n_1\,
      CO(1) => \ADC_16Q48_OUT[2]_INST_0_n_2\,
      CO(0) => \ADC_16Q48_OUT[2]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \ADC_16Q48_OUT[2]_INST_0_i_1_n_0\,
      DI(2) => \ADC_16Q48_OUT[2]_INST_0_i_2_n_0\,
      DI(1) => \ADC_16Q48_OUT[2]_INST_0_i_3_n_0\,
      DI(0) => \ADC_16Q48_OUT[2]_INST_0_i_4_n_0\,
      O(3 downto 0) => ADC_16Q48_OUT(5 downto 2),
      S(3) => \ADC_16Q48_OUT[2]_INST_0_i_5_n_0\,
      S(2) => \ADC_16Q48_OUT[2]_INST_0_i_6_n_0\,
      S(1) => \ADC_16Q48_OUT[2]_INST_0_i_7_n_0\,
      S(0) => \ADC_16Q48_OUT[2]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \p0__10_n_58\,
      I1 => \p0__8_n_75\,
      I2 => \p0__6_n_92\,
      O => \ADC_16Q48_OUT[2]_INST_0_i_1_n_0\
    );
\ADC_16Q48_OUT[2]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \p0__6_n_94\,
      I1 => \p0__8_n_77\,
      I2 => \p0__10_n_60\,
      O => \ADC_16Q48_OUT[2]_INST_0_i_2_n_0\
    );
\ADC_16Q48_OUT[2]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \p0__6_n_95\,
      I1 => \p0__8_n_78\,
      I2 => \p0__10_n_61\,
      O => \ADC_16Q48_OUT[2]_INST_0_i_3_n_0\
    );
\ADC_16Q48_OUT[2]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \p0__6_n_96\,
      I1 => \p0__8_n_79\,
      I2 => \p0__10_n_62\,
      O => \ADC_16Q48_OUT[2]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \p0__10_n_58\,
      I1 => \p0__8_n_75\,
      I2 => \p0__6_n_92\,
      I3 => \p0__10_n_59\,
      I4 => \p0__8_n_76\,
      I5 => \p0__6_n_93\,
      O => \ADC_16Q48_OUT[2]_INST_0_i_5_n_0\
    );
\ADC_16Q48_OUT[2]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \ADC_16Q48_OUT[2]_INST_0_i_2_n_0\,
      I1 => \p0__8_n_76\,
      I2 => \p0__6_n_93\,
      I3 => \p0__10_n_59\,
      O => \ADC_16Q48_OUT[2]_INST_0_i_6_n_0\
    );
\ADC_16Q48_OUT[2]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \p0__6_n_94\,
      I1 => \p0__8_n_77\,
      I2 => \p0__10_n_60\,
      I3 => \ADC_16Q48_OUT[2]_INST_0_i_3_n_0\,
      O => \ADC_16Q48_OUT[2]_INST_0_i_7_n_0\
    );
\ADC_16Q48_OUT[2]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \p0__6_n_95\,
      I1 => \p0__8_n_78\,
      I2 => \p0__10_n_61\,
      I3 => \ADC_16Q48_OUT[2]_INST_0_i_4_n_0\,
      O => \ADC_16Q48_OUT[2]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[30]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[26]_INST_0_n_0\,
      CO(3) => \ADC_16Q48_OUT[30]_INST_0_n_0\,
      CO(2) => \ADC_16Q48_OUT[30]_INST_0_n_1\,
      CO(1) => \ADC_16Q48_OUT[30]_INST_0_n_2\,
      CO(0) => \ADC_16Q48_OUT[30]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \ADC_16Q48_OUT[30]_INST_0_i_1_n_0\,
      DI(2) => \ADC_16Q48_OUT[30]_INST_0_i_2_n_0\,
      DI(1) => \ADC_16Q48_OUT[30]_INST_0_i_3_n_0\,
      DI(0) => \ADC_16Q48_OUT[30]_INST_0_i_4_n_0\,
      O(3 downto 0) => ADC_16Q48_OUT(33 downto 30),
      S(3) => \ADC_16Q48_OUT[30]_INST_0_i_5_n_0\,
      S(2) => \ADC_16Q48_OUT[30]_INST_0_i_6_n_0\,
      S(1) => \ADC_16Q48_OUT[30]_INST_0_i_7_n_0\,
      S(0) => \ADC_16Q48_OUT[30]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[30]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__4_n_100\,
      I1 => \p0__6_n_66\,
      I2 => \p0__4_n_99\,
      I3 => \p0__6_n_65\,
      O => \ADC_16Q48_OUT[30]_INST_0_i_1_n_0\
    );
\ADC_16Q48_OUT[30]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__4_n_101\,
      I1 => \p0__6_n_67\,
      I2 => \p0__4_n_100\,
      I3 => \p0__6_n_66\,
      O => \ADC_16Q48_OUT[30]_INST_0_i_2_n_0\
    );
\ADC_16Q48_OUT[30]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__4_n_102\,
      I1 => \p0__6_n_68\,
      I2 => \p0__4_n_101\,
      I3 => \p0__6_n_67\,
      O => \ADC_16Q48_OUT[30]_INST_0_i_3_n_0\
    );
\ADC_16Q48_OUT[30]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__4_n_103\,
      I1 => \p0__6_n_69\,
      I2 => \p0__4_n_102\,
      I3 => \p0__6_n_68\,
      O => \ADC_16Q48_OUT[30]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[30]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__6_n_66\,
      I1 => \p0__4_n_100\,
      I2 => \p0__6_n_64\,
      I3 => \p0__4_n_98\,
      I4 => \p0__6_n_65\,
      I5 => \p0__4_n_99\,
      O => \ADC_16Q48_OUT[30]_INST_0_i_5_n_0\
    );
\ADC_16Q48_OUT[30]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__6_n_67\,
      I1 => \p0__4_n_101\,
      I2 => \p0__6_n_65\,
      I3 => \p0__4_n_99\,
      I4 => \p0__6_n_66\,
      I5 => \p0__4_n_100\,
      O => \ADC_16Q48_OUT[30]_INST_0_i_6_n_0\
    );
\ADC_16Q48_OUT[30]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__6_n_68\,
      I1 => \p0__4_n_102\,
      I2 => \p0__6_n_66\,
      I3 => \p0__4_n_100\,
      I4 => \p0__6_n_67\,
      I5 => \p0__4_n_101\,
      O => \ADC_16Q48_OUT[30]_INST_0_i_7_n_0\
    );
\ADC_16Q48_OUT[30]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__6_n_69\,
      I1 => \p0__4_n_103\,
      I2 => \p0__6_n_67\,
      I3 => \p0__4_n_101\,
      I4 => \p0__6_n_68\,
      I5 => \p0__4_n_102\,
      O => \ADC_16Q48_OUT[30]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[34]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[30]_INST_0_n_0\,
      CO(3) => \ADC_16Q48_OUT[34]_INST_0_n_0\,
      CO(2) => \ADC_16Q48_OUT[34]_INST_0_n_1\,
      CO(1) => \ADC_16Q48_OUT[34]_INST_0_n_2\,
      CO(0) => \ADC_16Q48_OUT[34]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \ADC_16Q48_OUT[34]_INST_0_i_1_n_0\,
      DI(2) => \ADC_16Q48_OUT[34]_INST_0_i_2_n_0\,
      DI(1) => \ADC_16Q48_OUT[34]_INST_0_i_3_n_0\,
      DI(0) => \ADC_16Q48_OUT[34]_INST_0_i_4_n_0\,
      O(3 downto 0) => ADC_16Q48_OUT(37 downto 34),
      S(3) => \ADC_16Q48_OUT[34]_INST_0_i_5_n_0\,
      S(2) => \ADC_16Q48_OUT[34]_INST_0_i_6_n_0\,
      S(1) => \ADC_16Q48_OUT[34]_INST_0_i_7_n_0\,
      S(0) => \ADC_16Q48_OUT[34]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[34]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__4_n_96\,
      I1 => \p0__6_n_62\,
      I2 => \p0__4_n_95\,
      I3 => \p0__6_n_61\,
      O => \ADC_16Q48_OUT[34]_INST_0_i_1_n_0\
    );
\ADC_16Q48_OUT[34]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__4_n_97\,
      I1 => \p0__6_n_63\,
      I2 => \p0__4_n_96\,
      I3 => \p0__6_n_62\,
      O => \ADC_16Q48_OUT[34]_INST_0_i_2_n_0\
    );
\ADC_16Q48_OUT[34]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__4_n_98\,
      I1 => \p0__6_n_64\,
      I2 => \p0__4_n_97\,
      I3 => \p0__6_n_63\,
      O => \ADC_16Q48_OUT[34]_INST_0_i_3_n_0\
    );
\ADC_16Q48_OUT[34]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__4_n_99\,
      I1 => \p0__6_n_65\,
      I2 => \p0__4_n_98\,
      I3 => \p0__6_n_64\,
      O => \ADC_16Q48_OUT[34]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[34]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__6_n_62\,
      I1 => \p0__4_n_96\,
      I2 => \p0__6_n_60\,
      I3 => \p0__4_n_94\,
      I4 => \p0__6_n_61\,
      I5 => \p0__4_n_95\,
      O => \ADC_16Q48_OUT[34]_INST_0_i_5_n_0\
    );
\ADC_16Q48_OUT[34]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__6_n_63\,
      I1 => \p0__4_n_97\,
      I2 => \p0__6_n_61\,
      I3 => \p0__4_n_95\,
      I4 => \p0__6_n_62\,
      I5 => \p0__4_n_96\,
      O => \ADC_16Q48_OUT[34]_INST_0_i_6_n_0\
    );
\ADC_16Q48_OUT[34]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__6_n_64\,
      I1 => \p0__4_n_98\,
      I2 => \p0__6_n_62\,
      I3 => \p0__4_n_96\,
      I4 => \p0__6_n_63\,
      I5 => \p0__4_n_97\,
      O => \ADC_16Q48_OUT[34]_INST_0_i_7_n_0\
    );
\ADC_16Q48_OUT[34]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__6_n_65\,
      I1 => \p0__4_n_99\,
      I2 => \p0__6_n_63\,
      I3 => \p0__4_n_97\,
      I4 => \p0__6_n_64\,
      I5 => \p0__4_n_98\,
      O => \ADC_16Q48_OUT[34]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[38]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[34]_INST_0_n_0\,
      CO(3) => \ADC_16Q48_OUT[38]_INST_0_n_0\,
      CO(2) => \ADC_16Q48_OUT[38]_INST_0_n_1\,
      CO(1) => \ADC_16Q48_OUT[38]_INST_0_n_2\,
      CO(0) => \ADC_16Q48_OUT[38]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \p0__4_n_91\,
      DI(2) => \ADC_16Q48_OUT[38]_INST_0_i_1_n_0\,
      DI(1) => \ADC_16Q48_OUT[38]_INST_0_i_2_n_0\,
      DI(0) => \ADC_16Q48_OUT[38]_INST_0_i_3_n_0\,
      O(3 downto 0) => ADC_16Q48_OUT(41 downto 38),
      S(3) => \ADC_16Q48_OUT[38]_INST_0_i_4_n_0\,
      S(2) => \ADC_16Q48_OUT[38]_INST_0_i_5_n_0\,
      S(1) => \ADC_16Q48_OUT[38]_INST_0_i_6_n_0\,
      S(0) => \ADC_16Q48_OUT[38]_INST_0_i_7_n_0\
    );
\ADC_16Q48_OUT[38]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDD4"
    )
        port map (
      I0 => \p0__6_n_58\,
      I1 => \p0__4_n_92\,
      I2 => \p0__4_n_93\,
      I3 => \p0__6_n_59\,
      O => \ADC_16Q48_OUT[38]_INST_0_i_1_n_0\
    );
\ADC_16Q48_OUT[38]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__4_n_94\,
      I1 => \p0__6_n_60\,
      I2 => \p0__4_n_93\,
      I3 => \p0__6_n_59\,
      O => \ADC_16Q48_OUT[38]_INST_0_i_2_n_0\
    );
\ADC_16Q48_OUT[38]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__4_n_95\,
      I1 => \p0__6_n_61\,
      I2 => \p0__4_n_94\,
      I3 => \p0__6_n_60\,
      O => \ADC_16Q48_OUT[38]_INST_0_i_3_n_0\
    );
\ADC_16Q48_OUT[38]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p0__4_n_91\,
      I1 => \p0__4_n_90\,
      O => \ADC_16Q48_OUT[38]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[38]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FE1F01"
    )
        port map (
      I0 => \p0__6_n_59\,
      I1 => \p0__4_n_93\,
      I2 => \p0__4_n_92\,
      I3 => \p0__6_n_58\,
      I4 => \p0__4_n_91\,
      O => \ADC_16Q48_OUT[38]_INST_0_i_5_n_0\
    );
\ADC_16Q48_OUT[38]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__6_n_60\,
      I1 => \p0__4_n_94\,
      I2 => \p0__6_n_58\,
      I3 => \p0__4_n_92\,
      I4 => \p0__6_n_59\,
      I5 => \p0__4_n_93\,
      O => \ADC_16Q48_OUT[38]_INST_0_i_6_n_0\
    );
\ADC_16Q48_OUT[38]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__6_n_61\,
      I1 => \p0__4_n_95\,
      I2 => \p0__6_n_59\,
      I3 => \p0__4_n_93\,
      I4 => \p0__6_n_60\,
      I5 => \p0__4_n_94\,
      O => \ADC_16Q48_OUT[38]_INST_0_i_7_n_0\
    );
\ADC_16Q48_OUT[42]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[38]_INST_0_n_0\,
      CO(3) => \ADC_16Q48_OUT[42]_INST_0_n_0\,
      CO(2) => \ADC_16Q48_OUT[42]_INST_0_n_1\,
      CO(1) => \ADC_16Q48_OUT[42]_INST_0_n_2\,
      CO(0) => \ADC_16Q48_OUT[42]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \p0__4_n_87\,
      DI(2) => \p0__4_n_88\,
      DI(1) => \p0__4_n_89\,
      DI(0) => \p0__4_n_90\,
      O(3 downto 0) => ADC_16Q48_OUT(45 downto 42),
      S(3) => \ADC_16Q48_OUT[42]_INST_0_i_1_n_0\,
      S(2) => \ADC_16Q48_OUT[42]_INST_0_i_2_n_0\,
      S(1) => \ADC_16Q48_OUT[42]_INST_0_i_3_n_0\,
      S(0) => \ADC_16Q48_OUT[42]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[42]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p0__4_n_87\,
      I1 => \p0__4_n_86\,
      O => \ADC_16Q48_OUT[42]_INST_0_i_1_n_0\
    );
\ADC_16Q48_OUT[42]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p0__4_n_88\,
      I1 => \p0__4_n_87\,
      O => \ADC_16Q48_OUT[42]_INST_0_i_2_n_0\
    );
\ADC_16Q48_OUT[42]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p0__4_n_89\,
      I1 => \p0__4_n_88\,
      O => \ADC_16Q48_OUT[42]_INST_0_i_3_n_0\
    );
\ADC_16Q48_OUT[42]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p0__4_n_90\,
      I1 => \p0__4_n_89\,
      O => \ADC_16Q48_OUT[42]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[46]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[42]_INST_0_n_0\,
      CO(3) => \ADC_16Q48_OUT[46]_INST_0_n_0\,
      CO(2) => \ADC_16Q48_OUT[46]_INST_0_n_1\,
      CO(1) => \ADC_16Q48_OUT[46]_INST_0_n_2\,
      CO(0) => \ADC_16Q48_OUT[46]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \p0__4_n_83\,
      DI(2) => \p0__4_n_84\,
      DI(1) => \p0__4_n_85\,
      DI(0) => \p0__4_n_86\,
      O(3 downto 0) => ADC_16Q48_OUT(49 downto 46),
      S(3) => \ADC_16Q48_OUT[46]_INST_0_i_1_n_0\,
      S(2) => \ADC_16Q48_OUT[46]_INST_0_i_2_n_0\,
      S(1) => \ADC_16Q48_OUT[46]_INST_0_i_3_n_0\,
      S(0) => \ADC_16Q48_OUT[46]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[46]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p0__4_n_83\,
      I1 => \p0__4_n_82\,
      O => \ADC_16Q48_OUT[46]_INST_0_i_1_n_0\
    );
\ADC_16Q48_OUT[46]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p0__4_n_84\,
      I1 => \p0__4_n_83\,
      O => \ADC_16Q48_OUT[46]_INST_0_i_2_n_0\
    );
\ADC_16Q48_OUT[46]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p0__4_n_85\,
      I1 => \p0__4_n_84\,
      O => \ADC_16Q48_OUT[46]_INST_0_i_3_n_0\
    );
\ADC_16Q48_OUT[46]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p0__4_n_86\,
      I1 => \p0__4_n_85\,
      O => \ADC_16Q48_OUT[46]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[50]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[46]_INST_0_n_0\,
      CO(3) => \ADC_16Q48_OUT[50]_INST_0_n_0\,
      CO(2) => \ADC_16Q48_OUT[50]_INST_0_n_1\,
      CO(1) => \ADC_16Q48_OUT[50]_INST_0_n_2\,
      CO(0) => \ADC_16Q48_OUT[50]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \p0__4_n_79\,
      DI(2) => \p0__4_n_80\,
      DI(1) => \p0__4_n_81\,
      DI(0) => \p0__4_n_82\,
      O(3 downto 0) => ADC_16Q48_OUT(53 downto 50),
      S(3) => \ADC_16Q48_OUT[50]_INST_0_i_1_n_0\,
      S(2) => \ADC_16Q48_OUT[50]_INST_0_i_2_n_0\,
      S(1) => \ADC_16Q48_OUT[50]_INST_0_i_3_n_0\,
      S(0) => \ADC_16Q48_OUT[50]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[50]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p0__4_n_79\,
      I1 => \p0__4_n_78\,
      O => \ADC_16Q48_OUT[50]_INST_0_i_1_n_0\
    );
\ADC_16Q48_OUT[50]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p0__4_n_80\,
      I1 => \p0__4_n_79\,
      O => \ADC_16Q48_OUT[50]_INST_0_i_2_n_0\
    );
\ADC_16Q48_OUT[50]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p0__4_n_81\,
      I1 => \p0__4_n_80\,
      O => \ADC_16Q48_OUT[50]_INST_0_i_3_n_0\
    );
\ADC_16Q48_OUT[50]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p0__4_n_82\,
      I1 => \p0__4_n_81\,
      O => \ADC_16Q48_OUT[50]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[54]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[50]_INST_0_n_0\,
      CO(3 downto 0) => \NLW_ADC_16Q48_OUT[54]_INST_0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_ADC_16Q48_OUT[54]_INST_0_O_UNCONNECTED\(3 downto 1),
      O(0) => ADC_16Q48_OUT(54),
      S(3 downto 1) => B"000",
      S(0) => \ADC_16Q48_OUT[54]_INST_0_i_1_n_0\
    );
\ADC_16Q48_OUT[54]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \p0__4_n_78\,
      I1 => \p0__4_n_77\,
      O => \ADC_16Q48_OUT[54]_INST_0_i_1_n_0\
    );
\ADC_16Q48_OUT[6]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ADC_16Q48_OUT[2]_INST_0_n_0\,
      CO(3) => \ADC_16Q48_OUT[6]_INST_0_n_0\,
      CO(2) => \ADC_16Q48_OUT[6]_INST_0_n_1\,
      CO(1) => \ADC_16Q48_OUT[6]_INST_0_n_2\,
      CO(0) => \ADC_16Q48_OUT[6]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \ADC_16Q48_OUT[6]_INST_0_i_1_n_0\,
      DI(2) => \ADC_16Q48_OUT[6]_INST_0_i_2_n_0\,
      DI(1) => \ADC_16Q48_OUT[6]_INST_0_i_3_n_0\,
      DI(0) => \ADC_16Q48_OUT[6]_INST_0_i_4_n_0\,
      O(3 downto 0) => ADC_16Q48_OUT(9 downto 6),
      S(3) => \ADC_16Q48_OUT[6]_INST_0_i_5_n_0\,
      S(2) => \ADC_16Q48_OUT[6]_INST_0_i_6_n_0\,
      S(1) => \ADC_16Q48_OUT[6]_INST_0_i_7_n_0\,
      S(0) => \ADC_16Q48_OUT[6]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E11E1EE1"
    )
        port map (
      I0 => \p0__6_n_89\,
      I1 => \p0__8_n_72\,
      I2 => \p0__8_n_71\,
      I3 => \p0__6_n_88\,
      I4 => \p0__3_n_105\,
      O => \ADC_16Q48_OUT[6]_INST_0_i_1_n_0\
    );
\ADC_16Q48_OUT[6]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__6_n_91\,
      I1 => \p0__8_n_74\,
      I2 => \p0__6_n_90\,
      I3 => \p0__8_n_73\,
      O => \ADC_16Q48_OUT[6]_INST_0_i_2_n_0\
    );
\ADC_16Q48_OUT[6]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E00E"
    )
        port map (
      I0 => \p0__6_n_92\,
      I1 => \p0__8_n_75\,
      I2 => \p0__6_n_91\,
      I3 => \p0__8_n_74\,
      O => \ADC_16Q48_OUT[6]_INST_0_i_3_n_0\
    );
\ADC_16Q48_OUT[6]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => \p0__6_n_92\,
      I1 => \p0__8_n_75\,
      I2 => \p0__10_n_58\,
      O => \ADC_16Q48_OUT[6]_INST_0_i_4_n_0\
    );
\ADC_16Q48_OUT[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666966696666669"
    )
        port map (
      I0 => \ADC_16Q48_OUT[6]_INST_0_i_9_n_0\,
      I1 => \p0__8_n_71\,
      I2 => \p0__8_n_72\,
      I3 => \p0__6_n_89\,
      I4 => \p0__8_n_73\,
      I5 => \p0__6_n_90\,
      O => \ADC_16Q48_OUT[6]_INST_0_i_5_n_0\
    );
\ADC_16Q48_OUT[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__8_n_74\,
      I1 => \p0__6_n_91\,
      I2 => \p0__8_n_72\,
      I3 => \p0__6_n_89\,
      I4 => \p0__8_n_73\,
      I5 => \p0__6_n_90\,
      O => \ADC_16Q48_OUT[6]_INST_0_i_6_n_0\
    );
\ADC_16Q48_OUT[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11E0FF00FF01EE1"
    )
        port map (
      I0 => \p0__8_n_75\,
      I1 => \p0__6_n_92\,
      I2 => \p0__8_n_73\,
      I3 => \p0__6_n_90\,
      I4 => \p0__8_n_74\,
      I5 => \p0__6_n_91\,
      O => \ADC_16Q48_OUT[6]_INST_0_i_7_n_0\
    );
\ADC_16Q48_OUT[6]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"693C3C96"
    )
        port map (
      I0 => \p0__10_n_58\,
      I1 => \p0__8_n_74\,
      I2 => \p0__6_n_91\,
      I3 => \p0__8_n_75\,
      I4 => \p0__6_n_92\,
      O => \ADC_16Q48_OUT[6]_INST_0_i_8_n_0\
    );
\ADC_16Q48_OUT[6]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__6_n_88\,
      I1 => \p0__3_n_105\,
      O => \ADC_16Q48_OUT[6]_INST_0_i_9_n_0\
    );
p0: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000001010000000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16) => \p0__0_n_0\,
      B(15) => \p0__1_n_0\,
      B(14) => \p0__2_n_0\,
      B(13 downto 0) => B"00000000000000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \p0__4_0\,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ADC_CLK,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_p0_OVERFLOW_UNCONNECTED,
      P(47 downto 0) => NLW_p0_P_UNCONNECTED(47 downto 0),
      PATTERNBDETECT => NLW_p0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => p0_n_106,
      PCOUT(46) => p0_n_107,
      PCOUT(45) => p0_n_108,
      PCOUT(44) => p0_n_109,
      PCOUT(43) => p0_n_110,
      PCOUT(42) => p0_n_111,
      PCOUT(41) => p0_n_112,
      PCOUT(40) => p0_n_113,
      PCOUT(39) => p0_n_114,
      PCOUT(38) => p0_n_115,
      PCOUT(37) => p0_n_116,
      PCOUT(36) => p0_n_117,
      PCOUT(35) => p0_n_118,
      PCOUT(34) => p0_n_119,
      PCOUT(33) => p0_n_120,
      PCOUT(32) => p0_n_121,
      PCOUT(31) => p0_n_122,
      PCOUT(30) => p0_n_123,
      PCOUT(29) => p0_n_124,
      PCOUT(28) => p0_n_125,
      PCOUT(27) => p0_n_126,
      PCOUT(26) => p0_n_127,
      PCOUT(25) => p0_n_128,
      PCOUT(24) => p0_n_129,
      PCOUT(23) => p0_n_130,
      PCOUT(22) => p0_n_131,
      PCOUT(21) => p0_n_132,
      PCOUT(20) => p0_n_133,
      PCOUT(19) => p0_n_134,
      PCOUT(18) => p0_n_135,
      PCOUT(17) => p0_n_136,
      PCOUT(16) => p0_n_137,
      PCOUT(15) => p0_n_138,
      PCOUT(14) => p0_n_139,
      PCOUT(13) => p0_n_140,
      PCOUT(12) => p0_n_141,
      PCOUT(11) => p0_n_142,
      PCOUT(10) => p0_n_143,
      PCOUT(9) => p0_n_144,
      PCOUT(8) => p0_n_145,
      PCOUT(7) => p0_n_146,
      PCOUT(6) => p0_n_147,
      PCOUT(5) => p0_n_148,
      PCOUT(4) => p0_n_149,
      PCOUT(3) => p0_n_150,
      PCOUT(2) => p0_n_151,
      PCOUT(1) => p0_n_152,
      PCOUT(0) => p0_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => REG_RST,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p0_UNDERFLOW_UNCONNECTED
    );
\p0__0\: unisim.vcomponents.FDRE
     port map (
      C => ADC_CLK,
      CE => E(0),
      D => \out\(2),
      Q => \p0__0_n_0\,
      R => '0'
    );
\p0__1\: unisim.vcomponents.FDRE
     port map (
      C => ADC_CLK,
      CE => E(0),
      D => \out\(1),
      Q => \p0__1_n_0\,
      R => '0'
    );
\p0__10\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "CASCADE",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29) => \p0__9_n_24\,
      ACIN(28) => \p0__9_n_25\,
      ACIN(27) => \p0__9_n_26\,
      ACIN(26) => \p0__9_n_27\,
      ACIN(25) => \p0__9_n_28\,
      ACIN(24) => \p0__9_n_29\,
      ACIN(23) => \p0__9_n_30\,
      ACIN(22) => \p0__9_n_31\,
      ACIN(21) => \p0__9_n_32\,
      ACIN(20) => \p0__9_n_33\,
      ACIN(19) => \p0__9_n_34\,
      ACIN(18) => \p0__9_n_35\,
      ACIN(17) => \p0__9_n_36\,
      ACIN(16) => \p0__9_n_37\,
      ACIN(15) => \p0__9_n_38\,
      ACIN(14) => \p0__9_n_39\,
      ACIN(13) => \p0__9_n_40\,
      ACIN(12) => \p0__9_n_41\,
      ACIN(11) => \p0__9_n_42\,
      ACIN(10) => \p0__9_n_43\,
      ACIN(9) => \p0__9_n_44\,
      ACIN(8) => \p0__9_n_45\,
      ACIN(7) => \p0__9_n_46\,
      ACIN(6) => \p0__9_n_47\,
      ACIN(5) => \p0__9_n_48\,
      ACIN(4) => \p0__9_n_49\,
      ACIN(3) => \p0__9_n_50\,
      ACIN(2) => \p0__9_n_51\,
      ACIN(1) => \p0__9_n_52\,
      ACIN(0) => \p0__9_n_53\,
      ACOUT(29 downto 0) => \NLW_p0__10_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000000000",
      BCIN(17) => \p0__9_n_6\,
      BCIN(16) => \p0__9_n_7\,
      BCIN(15) => \p0__9_n_8\,
      BCIN(14) => \p0__9_n_9\,
      BCIN(13) => \p0__9_n_10\,
      BCIN(12) => \p0__9_n_11\,
      BCIN(11) => \p0__9_n_12\,
      BCIN(10) => \p0__9_n_13\,
      BCIN(9) => \p0__9_n_14\,
      BCIN(8) => \p0__9_n_15\,
      BCIN(7) => \p0__9_n_16\,
      BCIN(6) => \p0__9_n_17\,
      BCIN(5) => \p0__9_n_18\,
      BCIN(4) => \p0__9_n_19\,
      BCIN(3) => \p0__9_n_20\,
      BCIN(2) => \p0__9_n_21\,
      BCIN(1) => \p0__9_n_22\,
      BCIN(0) => \p0__9_n_23\,
      BCOUT(17 downto 0) => \NLW_p0__10_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p0__10_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p0__10_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_p0__10_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_p0__10_OVERFLOW_UNCONNECTED\,
      P(47) => \p0__10_n_58\,
      P(46) => \p0__10_n_59\,
      P(45) => \p0__10_n_60\,
      P(44) => \p0__10_n_61\,
      P(43) => \p0__10_n_62\,
      P(42) => \p0__10_n_63\,
      P(41) => \p0__10_n_64\,
      P(40) => \p0__10_n_65\,
      P(39) => \p0__10_n_66\,
      P(38) => \p0__10_n_67\,
      P(37) => \p0__10_n_68\,
      P(36) => \p0__10_n_69\,
      P(35) => \p0__10_n_70\,
      P(34) => \p0__10_n_71\,
      P(33) => \p0__10_n_72\,
      P(32) => \p0__10_n_73\,
      P(31) => \p0__10_n_74\,
      P(30) => \p0__10_n_75\,
      P(29) => \p0__10_n_76\,
      P(28) => \p0__10_n_77\,
      P(27) => \p0__10_n_78\,
      P(26) => \p0__10_n_79\,
      P(25) => \p0__10_n_80\,
      P(24) => \p0__10_n_81\,
      P(23) => \p0__10_n_82\,
      P(22) => \p0__10_n_83\,
      P(21) => \p0__10_n_84\,
      P(20) => \p0__10_n_85\,
      P(19) => \p0__10_n_86\,
      P(18) => \p0__10_n_87\,
      P(17) => \p0__10_n_88\,
      P(16) => \p0__10_n_89\,
      P(15) => \p0__10_n_90\,
      P(14) => \p0__10_n_91\,
      P(13) => \p0__10_n_92\,
      P(12) => \p0__10_n_93\,
      P(11) => \p0__10_n_94\,
      P(10) => \p0__10_n_95\,
      P(9) => \p0__10_n_96\,
      P(8) => \p0__10_n_97\,
      P(7) => \p0__10_n_98\,
      P(6) => \p0__10_n_99\,
      P(5) => \p0__10_n_100\,
      P(4) => \p0__10_n_101\,
      P(3) => \p0__10_n_102\,
      P(2) => \p0__10_n_103\,
      P(1) => \p0__10_n_104\,
      P(0) => \p0__10_n_105\,
      PATTERNBDETECT => \NLW_p0__10_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p0__10_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \p0__9_n_106\,
      PCIN(46) => \p0__9_n_107\,
      PCIN(45) => \p0__9_n_108\,
      PCIN(44) => \p0__9_n_109\,
      PCIN(43) => \p0__9_n_110\,
      PCIN(42) => \p0__9_n_111\,
      PCIN(41) => \p0__9_n_112\,
      PCIN(40) => \p0__9_n_113\,
      PCIN(39) => \p0__9_n_114\,
      PCIN(38) => \p0__9_n_115\,
      PCIN(37) => \p0__9_n_116\,
      PCIN(36) => \p0__9_n_117\,
      PCIN(35) => \p0__9_n_118\,
      PCIN(34) => \p0__9_n_119\,
      PCIN(33) => \p0__9_n_120\,
      PCIN(32) => \p0__9_n_121\,
      PCIN(31) => \p0__9_n_122\,
      PCIN(30) => \p0__9_n_123\,
      PCIN(29) => \p0__9_n_124\,
      PCIN(28) => \p0__9_n_125\,
      PCIN(27) => \p0__9_n_126\,
      PCIN(26) => \p0__9_n_127\,
      PCIN(25) => \p0__9_n_128\,
      PCIN(24) => \p0__9_n_129\,
      PCIN(23) => \p0__9_n_130\,
      PCIN(22) => \p0__9_n_131\,
      PCIN(21) => \p0__9_n_132\,
      PCIN(20) => \p0__9_n_133\,
      PCIN(19) => \p0__9_n_134\,
      PCIN(18) => \p0__9_n_135\,
      PCIN(17) => \p0__9_n_136\,
      PCIN(16) => \p0__9_n_137\,
      PCIN(15) => \p0__9_n_138\,
      PCIN(14) => \p0__9_n_139\,
      PCIN(13) => \p0__9_n_140\,
      PCIN(12) => \p0__9_n_141\,
      PCIN(11) => \p0__9_n_142\,
      PCIN(10) => \p0__9_n_143\,
      PCIN(9) => \p0__9_n_144\,
      PCIN(8) => \p0__9_n_145\,
      PCIN(7) => \p0__9_n_146\,
      PCIN(6) => \p0__9_n_147\,
      PCIN(5) => \p0__9_n_148\,
      PCIN(4) => \p0__9_n_149\,
      PCIN(3) => \p0__9_n_150\,
      PCIN(2) => \p0__9_n_151\,
      PCIN(1) => \p0__9_n_152\,
      PCIN(0) => \p0__9_n_153\,
      PCOUT(47 downto 0) => \NLW_p0__10_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_p0__10_UNDERFLOW_UNCONNECTED\
    );
\p0__18\: unisim.vcomponents.FDRE
     port map (
      C => ADC_CLK,
      CE => E(0),
      D => \out\(11),
      Q => \p0__18_n_0\,
      R => '0'
    );
\p0__19\: unisim.vcomponents.FDRE
     port map (
      C => ADC_CLK,
      CE => E(0),
      D => \out\(10),
      Q => \p0__19_n_0\,
      R => '0'
    );
\p0__2\: unisim.vcomponents.FDRE
     port map (
      C => ADC_CLK,
      CE => E(0),
      D => \out\(0),
      Q => \p0__2_n_0\,
      R => '0'
    );
\p0__20\: unisim.vcomponents.FDRE
     port map (
      C => ADC_CLK,
      CE => E(0),
      D => \out\(9),
      Q => \p0__20_n_0\,
      R => '0'
    );
\p0__21\: unisim.vcomponents.FDRE
     port map (
      C => ADC_CLK,
      CE => E(0),
      D => \out\(8),
      Q => \p0__21_n_0\,
      R => '0'
    );
\p0__22\: unisim.vcomponents.FDRE
     port map (
      C => ADC_CLK,
      CE => E(0),
      D => \out\(7),
      Q => \p0__22_n_0\,
      R => '0'
    );
\p0__23\: unisim.vcomponents.FDRE
     port map (
      C => ADC_CLK,
      CE => E(0),
      D => \out\(6),
      Q => \p0__23_n_0\,
      R => '0'
    );
\p0__24\: unisim.vcomponents.FDRE
     port map (
      C => ADC_CLK,
      CE => E(0),
      D => \out\(5),
      Q => \p0__24_n_0\,
      R => '0'
    );
\p0__25\: unisim.vcomponents.FDRE
     port map (
      C => ADC_CLK,
      CE => E(0),
      D => \out\(4),
      Q => \p0__25_n_0\,
      R => '0'
    );
\p0__26\: unisim.vcomponents.FDRE
     port map (
      C => ADC_CLK,
      CE => E(0),
      D => \out\(3),
      Q => \p0__26_n_0\,
      R => '0'
    );
\p0__3\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_p0__3_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \p0__18_n_0\,
      B(16) => \p0__18_n_0\,
      B(15) => \p0__18_n_0\,
      B(14) => \p0__18_n_0\,
      B(13) => \p0__18_n_0\,
      B(12) => \p0__18_n_0\,
      B(11) => \p0__18_n_0\,
      B(10) => \p0__18_n_0\,
      B(9) => \p0__18_n_0\,
      B(8) => \p0__18_n_0\,
      B(7) => \p0__19_n_0\,
      B(6) => \p0__20_n_0\,
      B(5) => \p0__21_n_0\,
      B(4) => \p0__22_n_0\,
      B(3) => \p0__23_n_0\,
      B(2) => \p0__24_n_0\,
      B(1) => \p0__25_n_0\,
      B(0) => \p0__26_n_0\,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_p0__3_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p0__3_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p0__3_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \p0__4_0\,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ADC_CLK,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_p0__3_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => \NLW_p0__3_OVERFLOW_UNCONNECTED\,
      P(47) => \p0__3_n_58\,
      P(46) => \p0__3_n_59\,
      P(45) => \p0__3_n_60\,
      P(44) => \p0__3_n_61\,
      P(43) => \p0__3_n_62\,
      P(42) => \p0__3_n_63\,
      P(41) => \p0__3_n_64\,
      P(40) => \p0__3_n_65\,
      P(39) => \p0__3_n_66\,
      P(38) => \p0__3_n_67\,
      P(37) => \p0__3_n_68\,
      P(36) => \p0__3_n_69\,
      P(35) => \p0__3_n_70\,
      P(34) => \p0__3_n_71\,
      P(33) => \p0__3_n_72\,
      P(32) => \p0__3_n_73\,
      P(31) => \p0__3_n_74\,
      P(30) => \p0__3_n_75\,
      P(29) => \p0__3_n_76\,
      P(28) => \p0__3_n_77\,
      P(27) => \p0__3_n_78\,
      P(26) => \p0__3_n_79\,
      P(25) => \p0__3_n_80\,
      P(24) => \p0__3_n_81\,
      P(23) => \p0__3_n_82\,
      P(22) => \p0__3_n_83\,
      P(21) => \p0__3_n_84\,
      P(20) => \p0__3_n_85\,
      P(19) => \p0__3_n_86\,
      P(18) => \p0__3_n_87\,
      P(17) => \p0__3_n_88\,
      P(16) => \p0__3_n_89\,
      P(15) => \p0__3_n_90\,
      P(14) => \p0__3_n_91\,
      P(13) => \p0__3_n_92\,
      P(12) => \p0__3_n_93\,
      P(11) => \p0__3_n_94\,
      P(10) => \p0__3_n_95\,
      P(9) => \p0__3_n_96\,
      P(8) => \p0__3_n_97\,
      P(7) => \p0__3_n_98\,
      P(6) => \p0__3_n_99\,
      P(5) => \p0__3_n_100\,
      P(4) => \p0__3_n_101\,
      P(3) => \p0__3_n_102\,
      P(2) => \p0__3_n_103\,
      P(1) => \p0__3_n_104\,
      P(0) => \p0__3_n_105\,
      PATTERNBDETECT => \NLW_p0__3_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p0__3_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => p0_n_106,
      PCIN(46) => p0_n_107,
      PCIN(45) => p0_n_108,
      PCIN(44) => p0_n_109,
      PCIN(43) => p0_n_110,
      PCIN(42) => p0_n_111,
      PCIN(41) => p0_n_112,
      PCIN(40) => p0_n_113,
      PCIN(39) => p0_n_114,
      PCIN(38) => p0_n_115,
      PCIN(37) => p0_n_116,
      PCIN(36) => p0_n_117,
      PCIN(35) => p0_n_118,
      PCIN(34) => p0_n_119,
      PCIN(33) => p0_n_120,
      PCIN(32) => p0_n_121,
      PCIN(31) => p0_n_122,
      PCIN(30) => p0_n_123,
      PCIN(29) => p0_n_124,
      PCIN(28) => p0_n_125,
      PCIN(27) => p0_n_126,
      PCIN(26) => p0_n_127,
      PCIN(25) => p0_n_128,
      PCIN(24) => p0_n_129,
      PCIN(23) => p0_n_130,
      PCIN(22) => p0_n_131,
      PCIN(21) => p0_n_132,
      PCIN(20) => p0_n_133,
      PCIN(19) => p0_n_134,
      PCIN(18) => p0_n_135,
      PCIN(17) => p0_n_136,
      PCIN(16) => p0_n_137,
      PCIN(15) => p0_n_138,
      PCIN(14) => p0_n_139,
      PCIN(13) => p0_n_140,
      PCIN(12) => p0_n_141,
      PCIN(11) => p0_n_142,
      PCIN(10) => p0_n_143,
      PCIN(9) => p0_n_144,
      PCIN(8) => p0_n_145,
      PCIN(7) => p0_n_146,
      PCIN(6) => p0_n_147,
      PCIN(5) => p0_n_148,
      PCIN(4) => p0_n_149,
      PCIN(3) => p0_n_150,
      PCIN(2) => p0_n_151,
      PCIN(1) => p0_n_152,
      PCIN(0) => p0_n_153,
      PCOUT(47) => \p0__3_n_106\,
      PCOUT(46) => \p0__3_n_107\,
      PCOUT(45) => \p0__3_n_108\,
      PCOUT(44) => \p0__3_n_109\,
      PCOUT(43) => \p0__3_n_110\,
      PCOUT(42) => \p0__3_n_111\,
      PCOUT(41) => \p0__3_n_112\,
      PCOUT(40) => \p0__3_n_113\,
      PCOUT(39) => \p0__3_n_114\,
      PCOUT(38) => \p0__3_n_115\,
      PCOUT(37) => \p0__3_n_116\,
      PCOUT(36) => \p0__3_n_117\,
      PCOUT(35) => \p0__3_n_118\,
      PCOUT(34) => \p0__3_n_119\,
      PCOUT(33) => \p0__3_n_120\,
      PCOUT(32) => \p0__3_n_121\,
      PCOUT(31) => \p0__3_n_122\,
      PCOUT(30) => \p0__3_n_123\,
      PCOUT(29) => \p0__3_n_124\,
      PCOUT(28) => \p0__3_n_125\,
      PCOUT(27) => \p0__3_n_126\,
      PCOUT(26) => \p0__3_n_127\,
      PCOUT(25) => \p0__3_n_128\,
      PCOUT(24) => \p0__3_n_129\,
      PCOUT(23) => \p0__3_n_130\,
      PCOUT(22) => \p0__3_n_131\,
      PCOUT(21) => \p0__3_n_132\,
      PCOUT(20) => \p0__3_n_133\,
      PCOUT(19) => \p0__3_n_134\,
      PCOUT(18) => \p0__3_n_135\,
      PCOUT(17) => \p0__3_n_136\,
      PCOUT(16) => \p0__3_n_137\,
      PCOUT(15) => \p0__3_n_138\,
      PCOUT(14) => \p0__3_n_139\,
      PCOUT(13) => \p0__3_n_140\,
      PCOUT(12) => \p0__3_n_141\,
      PCOUT(11) => \p0__3_n_142\,
      PCOUT(10) => \p0__3_n_143\,
      PCOUT(9) => \p0__3_n_144\,
      PCOUT(8) => \p0__3_n_145\,
      PCOUT(7) => \p0__3_n_146\,
      PCOUT(6) => \p0__3_n_147\,
      PCOUT(5) => \p0__3_n_148\,
      PCOUT(4) => \p0__3_n_149\,
      PCOUT(3) => \p0__3_n_150\,
      PCOUT(2) => \p0__3_n_151\,
      PCOUT(1) => \p0__3_n_152\,
      PCOUT(0) => \p0__3_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => REG_RST,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_p0__3_UNDERFLOW_UNCONNECTED\
    );
\p0__4\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000001010000000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_p0__4_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => \p0__18_n_0\,
      B(16) => \p0__18_n_0\,
      B(15) => \p0__18_n_0\,
      B(14) => \p0__18_n_0\,
      B(13) => \p0__18_n_0\,
      B(12) => \p0__18_n_0\,
      B(11) => \p0__18_n_0\,
      B(10) => \p0__18_n_0\,
      B(9) => \p0__18_n_0\,
      B(8) => \p0__18_n_0\,
      B(7) => \p0__19_n_0\,
      B(6) => \p0__20_n_0\,
      B(5) => \p0__21_n_0\,
      B(4) => \p0__22_n_0\,
      B(3) => \p0__23_n_0\,
      B(2) => \p0__24_n_0\,
      B(1) => \p0__25_n_0\,
      B(0) => \p0__26_n_0\,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_p0__4_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p0__4_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p0__4_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => \p0__4_0\,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ADC_CLK,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_p0__4_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_p0__4_OVERFLOW_UNCONNECTED\,
      P(47) => \p0__4_n_58\,
      P(46) => \p0__4_n_59\,
      P(45) => \p0__4_n_60\,
      P(44) => \p0__4_n_61\,
      P(43) => \p0__4_n_62\,
      P(42) => \p0__4_n_63\,
      P(41) => \p0__4_n_64\,
      P(40) => \p0__4_n_65\,
      P(39) => \p0__4_n_66\,
      P(38) => \p0__4_n_67\,
      P(37) => \p0__4_n_68\,
      P(36) => \p0__4_n_69\,
      P(35) => \p0__4_n_70\,
      P(34) => \p0__4_n_71\,
      P(33) => \p0__4_n_72\,
      P(32) => \p0__4_n_73\,
      P(31) => \p0__4_n_74\,
      P(30) => \p0__4_n_75\,
      P(29) => \p0__4_n_76\,
      P(28) => \p0__4_n_77\,
      P(27) => \p0__4_n_78\,
      P(26) => \p0__4_n_79\,
      P(25) => \p0__4_n_80\,
      P(24) => \p0__4_n_81\,
      P(23) => \p0__4_n_82\,
      P(22) => \p0__4_n_83\,
      P(21) => \p0__4_n_84\,
      P(20) => \p0__4_n_85\,
      P(19) => \p0__4_n_86\,
      P(18) => \p0__4_n_87\,
      P(17) => \p0__4_n_88\,
      P(16) => \p0__4_n_89\,
      P(15) => \p0__4_n_90\,
      P(14) => \p0__4_n_91\,
      P(13) => \p0__4_n_92\,
      P(12) => \p0__4_n_93\,
      P(11) => \p0__4_n_94\,
      P(10) => \p0__4_n_95\,
      P(9) => \p0__4_n_96\,
      P(8) => \p0__4_n_97\,
      P(7) => \p0__4_n_98\,
      P(6) => \p0__4_n_99\,
      P(5) => \p0__4_n_100\,
      P(4) => \p0__4_n_101\,
      P(3) => \p0__4_n_102\,
      P(2) => \p0__4_n_103\,
      P(1) => \p0__4_n_104\,
      P(0) => \p0__4_n_105\,
      PATTERNBDETECT => \NLW_p0__4_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p0__4_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \p0__3_n_106\,
      PCIN(46) => \p0__3_n_107\,
      PCIN(45) => \p0__3_n_108\,
      PCIN(44) => \p0__3_n_109\,
      PCIN(43) => \p0__3_n_110\,
      PCIN(42) => \p0__3_n_111\,
      PCIN(41) => \p0__3_n_112\,
      PCIN(40) => \p0__3_n_113\,
      PCIN(39) => \p0__3_n_114\,
      PCIN(38) => \p0__3_n_115\,
      PCIN(37) => \p0__3_n_116\,
      PCIN(36) => \p0__3_n_117\,
      PCIN(35) => \p0__3_n_118\,
      PCIN(34) => \p0__3_n_119\,
      PCIN(33) => \p0__3_n_120\,
      PCIN(32) => \p0__3_n_121\,
      PCIN(31) => \p0__3_n_122\,
      PCIN(30) => \p0__3_n_123\,
      PCIN(29) => \p0__3_n_124\,
      PCIN(28) => \p0__3_n_125\,
      PCIN(27) => \p0__3_n_126\,
      PCIN(26) => \p0__3_n_127\,
      PCIN(25) => \p0__3_n_128\,
      PCIN(24) => \p0__3_n_129\,
      PCIN(23) => \p0__3_n_130\,
      PCIN(22) => \p0__3_n_131\,
      PCIN(21) => \p0__3_n_132\,
      PCIN(20) => \p0__3_n_133\,
      PCIN(19) => \p0__3_n_134\,
      PCIN(18) => \p0__3_n_135\,
      PCIN(17) => \p0__3_n_136\,
      PCIN(16) => \p0__3_n_137\,
      PCIN(15) => \p0__3_n_138\,
      PCIN(14) => \p0__3_n_139\,
      PCIN(13) => \p0__3_n_140\,
      PCIN(12) => \p0__3_n_141\,
      PCIN(11) => \p0__3_n_142\,
      PCIN(10) => \p0__3_n_143\,
      PCIN(9) => \p0__3_n_144\,
      PCIN(8) => \p0__3_n_145\,
      PCIN(7) => \p0__3_n_146\,
      PCIN(6) => \p0__3_n_147\,
      PCIN(5) => \p0__3_n_148\,
      PCIN(4) => \p0__3_n_149\,
      PCIN(3) => \p0__3_n_150\,
      PCIN(2) => \p0__3_n_151\,
      PCIN(1) => \p0__3_n_152\,
      PCIN(0) => \p0__3_n_153\,
      PCOUT(47 downto 0) => \NLW_p0__4_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => REG_RST,
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_p0__4_UNDERFLOW_UNCONNECTED\
    );
\p0__5\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000001010000000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_p0__5_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000000000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17) => \p0__5_n_6\,
      BCOUT(16) => \p0__5_n_7\,
      BCOUT(15) => \p0__5_n_8\,
      BCOUT(14) => \p0__5_n_9\,
      BCOUT(13) => \p0__5_n_10\,
      BCOUT(12) => \p0__5_n_11\,
      BCOUT(11) => \p0__5_n_12\,
      BCOUT(10) => \p0__5_n_13\,
      BCOUT(9) => \p0__5_n_14\,
      BCOUT(8) => \p0__5_n_15\,
      BCOUT(7) => \p0__5_n_16\,
      BCOUT(6) => \p0__5_n_17\,
      BCOUT(5) => \p0__5_n_18\,
      BCOUT(4) => \p0__5_n_19\,
      BCOUT(3) => \p0__5_n_20\,
      BCOUT(2) => \p0__5_n_21\,
      BCOUT(1) => \p0__5_n_22\,
      BCOUT(0) => \p0__5_n_23\,
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p0__5_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p0__5_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_p0__5_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_p0__5_OVERFLOW_UNCONNECTED\,
      P(47) => \p0__5_n_58\,
      P(46) => \p0__5_n_59\,
      P(45) => \p0__5_n_60\,
      P(44) => \p0__5_n_61\,
      P(43) => \p0__5_n_62\,
      P(42) => \p0__5_n_63\,
      P(41) => \p0__5_n_64\,
      P(40) => \p0__5_n_65\,
      P(39) => \p0__5_n_66\,
      P(38) => \p0__5_n_67\,
      P(37) => \p0__5_n_68\,
      P(36) => \p0__5_n_69\,
      P(35) => \p0__5_n_70\,
      P(34) => \p0__5_n_71\,
      P(33) => \p0__5_n_72\,
      P(32) => \p0__5_n_73\,
      P(31) => \p0__5_n_74\,
      P(30) => \p0__5_n_75\,
      P(29) => \p0__5_n_76\,
      P(28) => \p0__5_n_77\,
      P(27) => \p0__5_n_78\,
      P(26) => \p0__5_n_79\,
      P(25) => \p0__5_n_80\,
      P(24) => \p0__5_n_81\,
      P(23) => \p0__5_n_82\,
      P(22) => \p0__5_n_83\,
      P(21) => \p0__5_n_84\,
      P(20) => \p0__5_n_85\,
      P(19) => \p0__5_n_86\,
      P(18) => \p0__5_n_87\,
      P(17) => \p0__5_n_88\,
      P(16) => \p0__5_n_89\,
      P(15) => \p0__5_n_90\,
      P(14) => \p0__5_n_91\,
      P(13) => \p0__5_n_92\,
      P(12) => \p0__5_n_93\,
      P(11) => \p0__5_n_94\,
      P(10) => \p0__5_n_95\,
      P(9) => \p0__5_n_96\,
      P(8) => \p0__5_n_97\,
      P(7) => \p0__5_n_98\,
      P(6) => \p0__5_n_99\,
      P(5) => \p0__5_n_100\,
      P(4) => \p0__5_n_101\,
      P(3) => \p0__5_n_102\,
      P(2) => \p0__5_n_103\,
      P(1) => \p0__5_n_104\,
      P(0) => \p0__5_n_105\,
      PATTERNBDETECT => \NLW_p0__5_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p0__5_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \p0__5_n_106\,
      PCOUT(46) => \p0__5_n_107\,
      PCOUT(45) => \p0__5_n_108\,
      PCOUT(44) => \p0__5_n_109\,
      PCOUT(43) => \p0__5_n_110\,
      PCOUT(42) => \p0__5_n_111\,
      PCOUT(41) => \p0__5_n_112\,
      PCOUT(40) => \p0__5_n_113\,
      PCOUT(39) => \p0__5_n_114\,
      PCOUT(38) => \p0__5_n_115\,
      PCOUT(37) => \p0__5_n_116\,
      PCOUT(36) => \p0__5_n_117\,
      PCOUT(35) => \p0__5_n_118\,
      PCOUT(34) => \p0__5_n_119\,
      PCOUT(33) => \p0__5_n_120\,
      PCOUT(32) => \p0__5_n_121\,
      PCOUT(31) => \p0__5_n_122\,
      PCOUT(30) => \p0__5_n_123\,
      PCOUT(29) => \p0__5_n_124\,
      PCOUT(28) => \p0__5_n_125\,
      PCOUT(27) => \p0__5_n_126\,
      PCOUT(26) => \p0__5_n_127\,
      PCOUT(25) => \p0__5_n_128\,
      PCOUT(24) => \p0__5_n_129\,
      PCOUT(23) => \p0__5_n_130\,
      PCOUT(22) => \p0__5_n_131\,
      PCOUT(21) => \p0__5_n_132\,
      PCOUT(20) => \p0__5_n_133\,
      PCOUT(19) => \p0__5_n_134\,
      PCOUT(18) => \p0__5_n_135\,
      PCOUT(17) => \p0__5_n_136\,
      PCOUT(16) => \p0__5_n_137\,
      PCOUT(15) => \p0__5_n_138\,
      PCOUT(14) => \p0__5_n_139\,
      PCOUT(13) => \p0__5_n_140\,
      PCOUT(12) => \p0__5_n_141\,
      PCOUT(11) => \p0__5_n_142\,
      PCOUT(10) => \p0__5_n_143\,
      PCOUT(9) => \p0__5_n_144\,
      PCOUT(8) => \p0__5_n_145\,
      PCOUT(7) => \p0__5_n_146\,
      PCOUT(6) => \p0__5_n_147\,
      PCOUT(5) => \p0__5_n_148\,
      PCOUT(4) => \p0__5_n_149\,
      PCOUT(3) => \p0__5_n_150\,
      PCOUT(2) => \p0__5_n_151\,
      PCOUT(1) => \p0__5_n_152\,
      PCOUT(0) => \p0__5_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_p0__5_UNDERFLOW_UNCONNECTED\
    );
\p0__6\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "CASCADE",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 17) => B"0000000000000",
      A(16) => \p0__0_n_0\,
      A(15) => \p0__1_n_0\,
      A(14) => \p0__2_n_0\,
      A(13 downto 0) => B"00000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_p0__6_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000000000",
      BCIN(17) => \p0__5_n_6\,
      BCIN(16) => \p0__5_n_7\,
      BCIN(15) => \p0__5_n_8\,
      BCIN(14) => \p0__5_n_9\,
      BCIN(13) => \p0__5_n_10\,
      BCIN(12) => \p0__5_n_11\,
      BCIN(11) => \p0__5_n_12\,
      BCIN(10) => \p0__5_n_13\,
      BCIN(9) => \p0__5_n_14\,
      BCIN(8) => \p0__5_n_15\,
      BCIN(7) => \p0__5_n_16\,
      BCIN(6) => \p0__5_n_17\,
      BCIN(5) => \p0__5_n_18\,
      BCIN(4) => \p0__5_n_19\,
      BCIN(3) => \p0__5_n_20\,
      BCIN(2) => \p0__5_n_21\,
      BCIN(1) => \p0__5_n_22\,
      BCIN(0) => \p0__5_n_23\,
      BCOUT(17 downto 0) => \NLW_p0__6_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p0__6_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p0__6_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => \p0__4_0\,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => ADC_CLK,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_p0__6_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => \NLW_p0__6_OVERFLOW_UNCONNECTED\,
      P(47) => \p0__6_n_58\,
      P(46) => \p0__6_n_59\,
      P(45) => \p0__6_n_60\,
      P(44) => \p0__6_n_61\,
      P(43) => \p0__6_n_62\,
      P(42) => \p0__6_n_63\,
      P(41) => \p0__6_n_64\,
      P(40) => \p0__6_n_65\,
      P(39) => \p0__6_n_66\,
      P(38) => \p0__6_n_67\,
      P(37) => \p0__6_n_68\,
      P(36) => \p0__6_n_69\,
      P(35) => \p0__6_n_70\,
      P(34) => \p0__6_n_71\,
      P(33) => \p0__6_n_72\,
      P(32) => \p0__6_n_73\,
      P(31) => \p0__6_n_74\,
      P(30) => \p0__6_n_75\,
      P(29) => \p0__6_n_76\,
      P(28) => \p0__6_n_77\,
      P(27) => \p0__6_n_78\,
      P(26) => \p0__6_n_79\,
      P(25) => \p0__6_n_80\,
      P(24) => \p0__6_n_81\,
      P(23) => \p0__6_n_82\,
      P(22) => \p0__6_n_83\,
      P(21) => \p0__6_n_84\,
      P(20) => \p0__6_n_85\,
      P(19) => \p0__6_n_86\,
      P(18) => \p0__6_n_87\,
      P(17) => \p0__6_n_88\,
      P(16) => \p0__6_n_89\,
      P(15) => \p0__6_n_90\,
      P(14) => \p0__6_n_91\,
      P(13) => \p0__6_n_92\,
      P(12) => \p0__6_n_93\,
      P(11) => \p0__6_n_94\,
      P(10) => \p0__6_n_95\,
      P(9) => \p0__6_n_96\,
      P(8) => \p0__6_n_97\,
      P(7) => \p0__6_n_98\,
      P(6) => \p0__6_n_99\,
      P(5) => \p0__6_n_100\,
      P(4) => \p0__6_n_101\,
      P(3) => \p0__6_n_102\,
      P(2) => \p0__6_n_103\,
      P(1) => \p0__6_n_104\,
      P(0) => \p0__6_n_105\,
      PATTERNBDETECT => \NLW_p0__6_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p0__6_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \p0__5_n_106\,
      PCIN(46) => \p0__5_n_107\,
      PCIN(45) => \p0__5_n_108\,
      PCIN(44) => \p0__5_n_109\,
      PCIN(43) => \p0__5_n_110\,
      PCIN(42) => \p0__5_n_111\,
      PCIN(41) => \p0__5_n_112\,
      PCIN(40) => \p0__5_n_113\,
      PCIN(39) => \p0__5_n_114\,
      PCIN(38) => \p0__5_n_115\,
      PCIN(37) => \p0__5_n_116\,
      PCIN(36) => \p0__5_n_117\,
      PCIN(35) => \p0__5_n_118\,
      PCIN(34) => \p0__5_n_119\,
      PCIN(33) => \p0__5_n_120\,
      PCIN(32) => \p0__5_n_121\,
      PCIN(31) => \p0__5_n_122\,
      PCIN(30) => \p0__5_n_123\,
      PCIN(29) => \p0__5_n_124\,
      PCIN(28) => \p0__5_n_125\,
      PCIN(27) => \p0__5_n_126\,
      PCIN(26) => \p0__5_n_127\,
      PCIN(25) => \p0__5_n_128\,
      PCIN(24) => \p0__5_n_129\,
      PCIN(23) => \p0__5_n_130\,
      PCIN(22) => \p0__5_n_131\,
      PCIN(21) => \p0__5_n_132\,
      PCIN(20) => \p0__5_n_133\,
      PCIN(19) => \p0__5_n_134\,
      PCIN(18) => \p0__5_n_135\,
      PCIN(17) => \p0__5_n_136\,
      PCIN(16) => \p0__5_n_137\,
      PCIN(15) => \p0__5_n_138\,
      PCIN(14) => \p0__5_n_139\,
      PCIN(13) => \p0__5_n_140\,
      PCIN(12) => \p0__5_n_141\,
      PCIN(11) => \p0__5_n_142\,
      PCIN(10) => \p0__5_n_143\,
      PCIN(9) => \p0__5_n_144\,
      PCIN(8) => \p0__5_n_145\,
      PCIN(7) => \p0__5_n_146\,
      PCIN(6) => \p0__5_n_147\,
      PCIN(5) => \p0__5_n_148\,
      PCIN(4) => \p0__5_n_149\,
      PCIN(3) => \p0__5_n_150\,
      PCIN(2) => \p0__5_n_151\,
      PCIN(1) => \p0__5_n_152\,
      PCIN(0) => \p0__5_n_153\,
      PCOUT(47 downto 0) => \NLW_p0__6_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => REG_RST,
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_p0__6_UNDERFLOW_UNCONNECTED\
    );
\p0__7\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000001010000000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_p0__7_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000000000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17) => \p0__7_n_6\,
      BCOUT(16) => \p0__7_n_7\,
      BCOUT(15) => \p0__7_n_8\,
      BCOUT(14) => \p0__7_n_9\,
      BCOUT(13) => \p0__7_n_10\,
      BCOUT(12) => \p0__7_n_11\,
      BCOUT(11) => \p0__7_n_12\,
      BCOUT(10) => \p0__7_n_13\,
      BCOUT(9) => \p0__7_n_14\,
      BCOUT(8) => \p0__7_n_15\,
      BCOUT(7) => \p0__7_n_16\,
      BCOUT(6) => \p0__7_n_17\,
      BCOUT(5) => \p0__7_n_18\,
      BCOUT(4) => \p0__7_n_19\,
      BCOUT(3) => \p0__7_n_20\,
      BCOUT(2) => \p0__7_n_21\,
      BCOUT(1) => \p0__7_n_22\,
      BCOUT(0) => \p0__7_n_23\,
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p0__7_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p0__7_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_p0__7_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_p0__7_OVERFLOW_UNCONNECTED\,
      P(47) => \p0__7_n_58\,
      P(46) => \p0__7_n_59\,
      P(45) => \p0__7_n_60\,
      P(44) => \p0__7_n_61\,
      P(43) => \p0__7_n_62\,
      P(42) => \p0__7_n_63\,
      P(41) => \p0__7_n_64\,
      P(40) => \p0__7_n_65\,
      P(39) => \p0__7_n_66\,
      P(38) => \p0__7_n_67\,
      P(37) => \p0__7_n_68\,
      P(36) => \p0__7_n_69\,
      P(35) => \p0__7_n_70\,
      P(34) => \p0__7_n_71\,
      P(33) => \p0__7_n_72\,
      P(32) => \p0__7_n_73\,
      P(31) => \p0__7_n_74\,
      P(30) => \p0__7_n_75\,
      P(29) => \p0__7_n_76\,
      P(28) => \p0__7_n_77\,
      P(27) => \p0__7_n_78\,
      P(26) => \p0__7_n_79\,
      P(25) => \p0__7_n_80\,
      P(24) => \p0__7_n_81\,
      P(23) => \p0__7_n_82\,
      P(22) => \p0__7_n_83\,
      P(21) => \p0__7_n_84\,
      P(20) => \p0__7_n_85\,
      P(19) => \p0__7_n_86\,
      P(18) => \p0__7_n_87\,
      P(17) => \p0__7_n_88\,
      P(16) => \p0__7_n_89\,
      P(15) => \p0__7_n_90\,
      P(14) => \p0__7_n_91\,
      P(13) => \p0__7_n_92\,
      P(12) => \p0__7_n_93\,
      P(11) => \p0__7_n_94\,
      P(10) => \p0__7_n_95\,
      P(9) => \p0__7_n_96\,
      P(8) => \p0__7_n_97\,
      P(7) => \p0__7_n_98\,
      P(6) => \p0__7_n_99\,
      P(5) => \p0__7_n_100\,
      P(4) => \p0__7_n_101\,
      P(3) => \p0__7_n_102\,
      P(2) => \p0__7_n_103\,
      P(1) => \p0__7_n_104\,
      P(0) => \p0__7_n_105\,
      PATTERNBDETECT => \NLW_p0__7_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p0__7_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \p0__7_n_106\,
      PCOUT(46) => \p0__7_n_107\,
      PCOUT(45) => \p0__7_n_108\,
      PCOUT(44) => \p0__7_n_109\,
      PCOUT(43) => \p0__7_n_110\,
      PCOUT(42) => \p0__7_n_111\,
      PCOUT(41) => \p0__7_n_112\,
      PCOUT(40) => \p0__7_n_113\,
      PCOUT(39) => \p0__7_n_114\,
      PCOUT(38) => \p0__7_n_115\,
      PCOUT(37) => \p0__7_n_116\,
      PCOUT(36) => \p0__7_n_117\,
      PCOUT(35) => \p0__7_n_118\,
      PCOUT(34) => \p0__7_n_119\,
      PCOUT(33) => \p0__7_n_120\,
      PCOUT(32) => \p0__7_n_121\,
      PCOUT(31) => \p0__7_n_122\,
      PCOUT(30) => \p0__7_n_123\,
      PCOUT(29) => \p0__7_n_124\,
      PCOUT(28) => \p0__7_n_125\,
      PCOUT(27) => \p0__7_n_126\,
      PCOUT(26) => \p0__7_n_127\,
      PCOUT(25) => \p0__7_n_128\,
      PCOUT(24) => \p0__7_n_129\,
      PCOUT(23) => \p0__7_n_130\,
      PCOUT(22) => \p0__7_n_131\,
      PCOUT(21) => \p0__7_n_132\,
      PCOUT(20) => \p0__7_n_133\,
      PCOUT(19) => \p0__7_n_134\,
      PCOUT(18) => \p0__7_n_135\,
      PCOUT(17) => \p0__7_n_136\,
      PCOUT(16) => \p0__7_n_137\,
      PCOUT(15) => \p0__7_n_138\,
      PCOUT(14) => \p0__7_n_139\,
      PCOUT(13) => \p0__7_n_140\,
      PCOUT(12) => \p0__7_n_141\,
      PCOUT(11) => \p0__7_n_142\,
      PCOUT(10) => \p0__7_n_143\,
      PCOUT(9) => \p0__7_n_144\,
      PCOUT(8) => \p0__7_n_145\,
      PCOUT(7) => \p0__7_n_146\,
      PCOUT(6) => \p0__7_n_147\,
      PCOUT(5) => \p0__7_n_148\,
      PCOUT(4) => \p0__7_n_149\,
      PCOUT(3) => \p0__7_n_150\,
      PCOUT(2) => \p0__7_n_151\,
      PCOUT(1) => \p0__7_n_152\,
      PCOUT(0) => \p0__7_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_p0__7_UNDERFLOW_UNCONNECTED\
    );
\p0__8\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "CASCADE",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_p0__8_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000000000",
      BCIN(17) => \p0__7_n_6\,
      BCIN(16) => \p0__7_n_7\,
      BCIN(15) => \p0__7_n_8\,
      BCIN(14) => \p0__7_n_9\,
      BCIN(13) => \p0__7_n_10\,
      BCIN(12) => \p0__7_n_11\,
      BCIN(11) => \p0__7_n_12\,
      BCIN(10) => \p0__7_n_13\,
      BCIN(9) => \p0__7_n_14\,
      BCIN(8) => \p0__7_n_15\,
      BCIN(7) => \p0__7_n_16\,
      BCIN(6) => \p0__7_n_17\,
      BCIN(5) => \p0__7_n_18\,
      BCIN(4) => \p0__7_n_19\,
      BCIN(3) => \p0__7_n_20\,
      BCIN(2) => \p0__7_n_21\,
      BCIN(1) => \p0__7_n_22\,
      BCIN(0) => \p0__7_n_23\,
      BCOUT(17 downto 0) => \NLW_p0__8_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p0__8_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p0__8_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_p0__8_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => \NLW_p0__8_OVERFLOW_UNCONNECTED\,
      P(47) => \p0__8_n_58\,
      P(46) => \p0__8_n_59\,
      P(45) => \p0__8_n_60\,
      P(44) => \p0__8_n_61\,
      P(43) => \p0__8_n_62\,
      P(42) => \p0__8_n_63\,
      P(41) => \p0__8_n_64\,
      P(40) => \p0__8_n_65\,
      P(39) => \p0__8_n_66\,
      P(38) => \p0__8_n_67\,
      P(37) => \p0__8_n_68\,
      P(36) => \p0__8_n_69\,
      P(35) => \p0__8_n_70\,
      P(34) => \p0__8_n_71\,
      P(33) => \p0__8_n_72\,
      P(32) => \p0__8_n_73\,
      P(31) => \p0__8_n_74\,
      P(30) => \p0__8_n_75\,
      P(29) => \p0__8_n_76\,
      P(28) => \p0__8_n_77\,
      P(27) => \p0__8_n_78\,
      P(26) => \p0__8_n_79\,
      P(25) => \p0__8_n_80\,
      P(24) => \p0__8_n_81\,
      P(23) => \p0__8_n_82\,
      P(22) => \p0__8_n_83\,
      P(21) => \p0__8_n_84\,
      P(20) => \p0__8_n_85\,
      P(19) => \p0__8_n_86\,
      P(18) => \p0__8_n_87\,
      P(17) => \p0__8_n_88\,
      P(16) => \p0__8_n_89\,
      P(15) => \p0__8_n_90\,
      P(14) => \p0__8_n_91\,
      P(13) => \p0__8_n_92\,
      P(12) => \p0__8_n_93\,
      P(11) => \p0__8_n_94\,
      P(10) => \p0__8_n_95\,
      P(9) => \p0__8_n_96\,
      P(8) => \p0__8_n_97\,
      P(7) => \p0__8_n_98\,
      P(6) => \p0__8_n_99\,
      P(5) => \p0__8_n_100\,
      P(4) => \p0__8_n_101\,
      P(3) => \p0__8_n_102\,
      P(2) => \p0__8_n_103\,
      P(1) => \p0__8_n_104\,
      P(0) => \p0__8_n_105\,
      PATTERNBDETECT => \NLW_p0__8_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p0__8_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \p0__7_n_106\,
      PCIN(46) => \p0__7_n_107\,
      PCIN(45) => \p0__7_n_108\,
      PCIN(44) => \p0__7_n_109\,
      PCIN(43) => \p0__7_n_110\,
      PCIN(42) => \p0__7_n_111\,
      PCIN(41) => \p0__7_n_112\,
      PCIN(40) => \p0__7_n_113\,
      PCIN(39) => \p0__7_n_114\,
      PCIN(38) => \p0__7_n_115\,
      PCIN(37) => \p0__7_n_116\,
      PCIN(36) => \p0__7_n_117\,
      PCIN(35) => \p0__7_n_118\,
      PCIN(34) => \p0__7_n_119\,
      PCIN(33) => \p0__7_n_120\,
      PCIN(32) => \p0__7_n_121\,
      PCIN(31) => \p0__7_n_122\,
      PCIN(30) => \p0__7_n_123\,
      PCIN(29) => \p0__7_n_124\,
      PCIN(28) => \p0__7_n_125\,
      PCIN(27) => \p0__7_n_126\,
      PCIN(26) => \p0__7_n_127\,
      PCIN(25) => \p0__7_n_128\,
      PCIN(24) => \p0__7_n_129\,
      PCIN(23) => \p0__7_n_130\,
      PCIN(22) => \p0__7_n_131\,
      PCIN(21) => \p0__7_n_132\,
      PCIN(20) => \p0__7_n_133\,
      PCIN(19) => \p0__7_n_134\,
      PCIN(18) => \p0__7_n_135\,
      PCIN(17) => \p0__7_n_136\,
      PCIN(16) => \p0__7_n_137\,
      PCIN(15) => \p0__7_n_138\,
      PCIN(14) => \p0__7_n_139\,
      PCIN(13) => \p0__7_n_140\,
      PCIN(12) => \p0__7_n_141\,
      PCIN(11) => \p0__7_n_142\,
      PCIN(10) => \p0__7_n_143\,
      PCIN(9) => \p0__7_n_144\,
      PCIN(8) => \p0__7_n_145\,
      PCIN(7) => \p0__7_n_146\,
      PCIN(6) => \p0__7_n_147\,
      PCIN(5) => \p0__7_n_148\,
      PCIN(4) => \p0__7_n_149\,
      PCIN(3) => \p0__7_n_150\,
      PCIN(2) => \p0__7_n_151\,
      PCIN(1) => \p0__7_n_152\,
      PCIN(0) => \p0__7_n_153\,
      PCOUT(47 downto 0) => \NLW_p0__8_PCOUT_UNCONNECTED\(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_p0__8_UNDERFLOW_UNCONNECTED\
    );
\p0__9\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000000000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29) => \p0__9_n_24\,
      ACOUT(28) => \p0__9_n_25\,
      ACOUT(27) => \p0__9_n_26\,
      ACOUT(26) => \p0__9_n_27\,
      ACOUT(25) => \p0__9_n_28\,
      ACOUT(24) => \p0__9_n_29\,
      ACOUT(23) => \p0__9_n_30\,
      ACOUT(22) => \p0__9_n_31\,
      ACOUT(21) => \p0__9_n_32\,
      ACOUT(20) => \p0__9_n_33\,
      ACOUT(19) => \p0__9_n_34\,
      ACOUT(18) => \p0__9_n_35\,
      ACOUT(17) => \p0__9_n_36\,
      ACOUT(16) => \p0__9_n_37\,
      ACOUT(15) => \p0__9_n_38\,
      ACOUT(14) => \p0__9_n_39\,
      ACOUT(13) => \p0__9_n_40\,
      ACOUT(12) => \p0__9_n_41\,
      ACOUT(11) => \p0__9_n_42\,
      ACOUT(10) => \p0__9_n_43\,
      ACOUT(9) => \p0__9_n_44\,
      ACOUT(8) => \p0__9_n_45\,
      ACOUT(7) => \p0__9_n_46\,
      ACOUT(6) => \p0__9_n_47\,
      ACOUT(5) => \p0__9_n_48\,
      ACOUT(4) => \p0__9_n_49\,
      ACOUT(3) => \p0__9_n_50\,
      ACOUT(2) => \p0__9_n_51\,
      ACOUT(1) => \p0__9_n_52\,
      ACOUT(0) => \p0__9_n_53\,
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000000000000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17) => \p0__9_n_6\,
      BCOUT(16) => \p0__9_n_7\,
      BCOUT(15) => \p0__9_n_8\,
      BCOUT(14) => \p0__9_n_9\,
      BCOUT(13) => \p0__9_n_10\,
      BCOUT(12) => \p0__9_n_11\,
      BCOUT(11) => \p0__9_n_12\,
      BCOUT(10) => \p0__9_n_13\,
      BCOUT(9) => \p0__9_n_14\,
      BCOUT(8) => \p0__9_n_15\,
      BCOUT(7) => \p0__9_n_16\,
      BCOUT(6) => \p0__9_n_17\,
      BCOUT(5) => \p0__9_n_18\,
      BCOUT(4) => \p0__9_n_19\,
      BCOUT(3) => \p0__9_n_20\,
      BCOUT(2) => \p0__9_n_21\,
      BCOUT(1) => \p0__9_n_22\,
      BCOUT(0) => \p0__9_n_23\,
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p0__9_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p0__9_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => \NLW_p0__9_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_p0__9_OVERFLOW_UNCONNECTED\,
      P(47) => \p0__9_n_58\,
      P(46) => \p0__9_n_59\,
      P(45) => \p0__9_n_60\,
      P(44) => \p0__9_n_61\,
      P(43) => \p0__9_n_62\,
      P(42) => \p0__9_n_63\,
      P(41) => \p0__9_n_64\,
      P(40) => \p0__9_n_65\,
      P(39) => \p0__9_n_66\,
      P(38) => \p0__9_n_67\,
      P(37) => \p0__9_n_68\,
      P(36) => \p0__9_n_69\,
      P(35) => \p0__9_n_70\,
      P(34) => \p0__9_n_71\,
      P(33) => \p0__9_n_72\,
      P(32) => \p0__9_n_73\,
      P(31) => \p0__9_n_74\,
      P(30) => \p0__9_n_75\,
      P(29) => \p0__9_n_76\,
      P(28) => \p0__9_n_77\,
      P(27) => \p0__9_n_78\,
      P(26) => \p0__9_n_79\,
      P(25) => \p0__9_n_80\,
      P(24) => \p0__9_n_81\,
      P(23) => \p0__9_n_82\,
      P(22) => \p0__9_n_83\,
      P(21) => \p0__9_n_84\,
      P(20) => \p0__9_n_85\,
      P(19) => \p0__9_n_86\,
      P(18) => \p0__9_n_87\,
      P(17) => \p0__9_n_88\,
      P(16) => \p0__9_n_89\,
      P(15) => \p0__9_n_90\,
      P(14) => \p0__9_n_91\,
      P(13) => \p0__9_n_92\,
      P(12) => \p0__9_n_93\,
      P(11) => \p0__9_n_94\,
      P(10) => \p0__9_n_95\,
      P(9) => \p0__9_n_96\,
      P(8) => \p0__9_n_97\,
      P(7) => \p0__9_n_98\,
      P(6) => \p0__9_n_99\,
      P(5) => \p0__9_n_100\,
      P(4) => \p0__9_n_101\,
      P(3) => \p0__9_n_102\,
      P(2) => \p0__9_n_103\,
      P(1) => \p0__9_n_104\,
      P(0) => \p0__9_n_105\,
      PATTERNBDETECT => \NLW_p0__9_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p0__9_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \p0__9_n_106\,
      PCOUT(46) => \p0__9_n_107\,
      PCOUT(45) => \p0__9_n_108\,
      PCOUT(44) => \p0__9_n_109\,
      PCOUT(43) => \p0__9_n_110\,
      PCOUT(42) => \p0__9_n_111\,
      PCOUT(41) => \p0__9_n_112\,
      PCOUT(40) => \p0__9_n_113\,
      PCOUT(39) => \p0__9_n_114\,
      PCOUT(38) => \p0__9_n_115\,
      PCOUT(37) => \p0__9_n_116\,
      PCOUT(36) => \p0__9_n_117\,
      PCOUT(35) => \p0__9_n_118\,
      PCOUT(34) => \p0__9_n_119\,
      PCOUT(33) => \p0__9_n_120\,
      PCOUT(32) => \p0__9_n_121\,
      PCOUT(31) => \p0__9_n_122\,
      PCOUT(30) => \p0__9_n_123\,
      PCOUT(29) => \p0__9_n_124\,
      PCOUT(28) => \p0__9_n_125\,
      PCOUT(27) => \p0__9_n_126\,
      PCOUT(26) => \p0__9_n_127\,
      PCOUT(25) => \p0__9_n_128\,
      PCOUT(24) => \p0__9_n_129\,
      PCOUT(23) => \p0__9_n_130\,
      PCOUT(22) => \p0__9_n_131\,
      PCOUT(21) => \p0__9_n_132\,
      PCOUT(20) => \p0__9_n_133\,
      PCOUT(19) => \p0__9_n_134\,
      PCOUT(18) => \p0__9_n_135\,
      PCOUT(17) => \p0__9_n_136\,
      PCOUT(16) => \p0__9_n_137\,
      PCOUT(15) => \p0__9_n_138\,
      PCOUT(14) => \p0__9_n_139\,
      PCOUT(13) => \p0__9_n_140\,
      PCOUT(12) => \p0__9_n_141\,
      PCOUT(11) => \p0__9_n_142\,
      PCOUT(10) => \p0__9_n_143\,
      PCOUT(9) => \p0__9_n_144\,
      PCOUT(8) => \p0__9_n_145\,
      PCOUT(7) => \p0__9_n_146\,
      PCOUT(6) => \p0__9_n_147\,
      PCOUT(5) => \p0__9_n_148\,
      PCOUT(4) => \p0__9_n_149\,
      PCOUT(3) => \p0__9_n_150\,
      PCOUT(2) => \p0__9_n_151\,
      PCOUT(1) => \p0__9_n_152\,
      PCOUT(0) => \p0__9_n_153\,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => \NLW_p0__9_UNDERFLOW_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_fp_0_ADC_AVERAGE is
  port (
    F_O_reg : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_CLK : in STD_LOGIC;
    ADC_EN : in STD_LOGIC;
    ADC_A : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ADC_SEL : in STD_LOGIC;
    ADC_B : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_fp_0_ADC_AVERAGE : entity is "ADC_AVERAGE";
end system_ADC_fp_0_ADC_AVERAGE;

architecture STRUCTURE of system_ADC_fp_0_ADC_AVERAGE is
  signal COUNT0_n_0 : STD_LOGIC;
  signal \SUM[0]_i_2_n_0\ : STD_LOGIC;
  signal \SUM[0]_i_3_n_0\ : STD_LOGIC;
  signal \SUM[0]_i_4_n_0\ : STD_LOGIC;
  signal \SUM[0]_i_5_n_0\ : STD_LOGIC;
  signal \SUM[12]_i_2_n_0\ : STD_LOGIC;
  signal \SUM[12]_i_3_n_0\ : STD_LOGIC;
  signal \SUM[12]_i_4_n_0\ : STD_LOGIC;
  signal \SUM[12]_i_5_n_0\ : STD_LOGIC;
  signal \SUM[12]_i_6_n_0\ : STD_LOGIC;
  signal \SUM[12]_i_7_n_0\ : STD_LOGIC;
  signal \SUM[12]_i_8_n_0\ : STD_LOGIC;
  signal \SUM[12]_i_9_n_0\ : STD_LOGIC;
  signal \SUM[16]_i_2_n_0\ : STD_LOGIC;
  signal \SUM[16]_i_3_n_0\ : STD_LOGIC;
  signal \SUM[16]_i_4_n_0\ : STD_LOGIC;
  signal \SUM[16]_i_5_n_0\ : STD_LOGIC;
  signal \SUM[16]_i_6_n_0\ : STD_LOGIC;
  signal \SUM[16]_i_7_n_0\ : STD_LOGIC;
  signal \SUM[16]_i_8_n_0\ : STD_LOGIC;
  signal \SUM[16]_i_9_n_0\ : STD_LOGIC;
  signal \SUM[20]_i_3_n_0\ : STD_LOGIC;
  signal \SUM[20]_i_4_n_0\ : STD_LOGIC;
  signal \SUM[4]_i_2_n_0\ : STD_LOGIC;
  signal \SUM[4]_i_3_n_0\ : STD_LOGIC;
  signal \SUM[4]_i_4_n_0\ : STD_LOGIC;
  signal \SUM[4]_i_5_n_0\ : STD_LOGIC;
  signal \SUM[8]_i_2_n_0\ : STD_LOGIC;
  signal \SUM[8]_i_3_n_0\ : STD_LOGIC;
  signal \SUM[8]_i_4_n_0\ : STD_LOGIC;
  signal \SUM[8]_i_5_n_0\ : STD_LOGIC;
  signal \SUM[8]_i_6_n_0\ : STD_LOGIC;
  signal \SUM_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \SUM_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \SUM_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \SUM_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \SUM_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \SUM_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \SUM_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \SUM_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \SUM_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \SUM_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \SUM_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \SUM_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \SUM_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \SUM_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \SUM_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \SUM_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \SUM_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \SUM_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \SUM_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \SUM_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \SUM_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \SUM_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \SUM_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \SUM_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \SUM_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \SUM_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \SUM_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \SUM_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \SUM_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \SUM_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \SUM_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \SUM_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \SUM_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \SUM_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \SUM_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \SUM_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \SUM_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \SUM_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \SUM_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \SUM_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \SUM_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \SUM_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \SUM_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \SUM_reg_n_0_[0]\ : STD_LOGIC;
  signal \SUM_reg_n_0_[1]\ : STD_LOGIC;
  signal \SUM_reg_n_0_[2]\ : STD_LOGIC;
  signal \SUM_reg_n_0_[3]\ : STD_LOGIC;
  signal \SUM_reg_n_0_[4]\ : STD_LOGIC;
  signal \SUM_reg_n_0_[5]\ : STD_LOGIC;
  signal \SUM_reg_n_0_[6]\ : STD_LOGIC;
  signal \SUM_reg_n_0_[7]\ : STD_LOGIC;
  signal \SUM_reg_n_0_[8]\ : STD_LOGIC;
  signal \SUM_reg_n_0_[9]\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \in\ : STD_LOGIC_VECTOR ( 11 to 11 );
  signal \^out\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \NLW_SUM_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_SUM_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
  \out\(11 downto 0) <= \^out\(11 downto 0);
COUNT0: entity work.system_ADC_fp_0_gen_counter
     port map (
      ADC_CLK => ADC_CLK,
      ADC_EN => ADC_EN,
      E(0) => E(0),
      F_O_reg_inv_0 => COUNT0_n_0,
      clear => clear
    );
COUNT1: entity work.system_ADC_fp_0_gen_counter_0
     port map (
      ADC_CLK => ADC_CLK,
      ADC_EN => ADC_EN,
      F_O_reg_0 => F_O_reg,
      clear => clear
    );
\SUM[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(3),
      I1 => ADC_SEL,
      I2 => ADC_B(3),
      I3 => \SUM_reg_n_0_[3]\,
      O => \SUM[0]_i_2_n_0\
    );
\SUM[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(2),
      I1 => ADC_SEL,
      I2 => ADC_B(2),
      I3 => \SUM_reg_n_0_[2]\,
      O => \SUM[0]_i_3_n_0\
    );
\SUM[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(1),
      I1 => ADC_SEL,
      I2 => ADC_B(1),
      I3 => \SUM_reg_n_0_[1]\,
      O => \SUM[0]_i_4_n_0\
    );
\SUM[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(0),
      I1 => ADC_SEL,
      I2 => ADC_B(0),
      I3 => \SUM_reg_n_0_[0]\,
      O => \SUM[0]_i_5_n_0\
    );
\SUM[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ADC_B(11),
      I1 => ADC_SEL,
      I2 => ADC_A(11),
      O => \SUM[12]_i_2_n_0\
    );
\SUM[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ADC_B(11),
      I1 => ADC_SEL,
      I2 => ADC_A(11),
      O => \SUM[12]_i_3_n_0\
    );
\SUM[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ADC_B(11),
      I1 => ADC_SEL,
      I2 => ADC_A(11),
      O => \SUM[12]_i_4_n_0\
    );
\SUM[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ADC_B(11),
      I1 => ADC_SEL,
      I2 => ADC_A(11),
      O => \SUM[12]_i_5_n_0\
    );
\SUM[12]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(11),
      I1 => ADC_SEL,
      I2 => ADC_B(11),
      I3 => \^out\(5),
      O => \SUM[12]_i_6_n_0\
    );
\SUM[12]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(11),
      I1 => ADC_SEL,
      I2 => ADC_B(11),
      I3 => \^out\(4),
      O => \SUM[12]_i_7_n_0\
    );
\SUM[12]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(11),
      I1 => ADC_SEL,
      I2 => ADC_B(11),
      I3 => \^out\(3),
      O => \SUM[12]_i_8_n_0\
    );
\SUM[12]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(11),
      I1 => ADC_SEL,
      I2 => ADC_B(11),
      I3 => \^out\(2),
      O => \SUM[12]_i_9_n_0\
    );
\SUM[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ADC_B(11),
      I1 => ADC_SEL,
      I2 => ADC_A(11),
      O => \SUM[16]_i_2_n_0\
    );
\SUM[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ADC_B(11),
      I1 => ADC_SEL,
      I2 => ADC_A(11),
      O => \SUM[16]_i_3_n_0\
    );
\SUM[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ADC_B(11),
      I1 => ADC_SEL,
      I2 => ADC_A(11),
      O => \SUM[16]_i_4_n_0\
    );
\SUM[16]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ADC_B(11),
      I1 => ADC_SEL,
      I2 => ADC_A(11),
      O => \SUM[16]_i_5_n_0\
    );
\SUM[16]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(11),
      I1 => ADC_SEL,
      I2 => ADC_B(11),
      I3 => \^out\(9),
      O => \SUM[16]_i_6_n_0\
    );
\SUM[16]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(11),
      I1 => ADC_SEL,
      I2 => ADC_B(11),
      I3 => \^out\(8),
      O => \SUM[16]_i_7_n_0\
    );
\SUM[16]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(11),
      I1 => ADC_SEL,
      I2 => ADC_B(11),
      I3 => \^out\(7),
      O => \SUM[16]_i_8_n_0\
    );
\SUM[16]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(11),
      I1 => ADC_SEL,
      I2 => ADC_B(11),
      I3 => \^out\(6),
      O => \SUM[16]_i_9_n_0\
    );
\SUM[20]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ADC_B(11),
      I1 => ADC_SEL,
      I2 => ADC_A(11),
      O => \in\(11)
    );
\SUM[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(11),
      I1 => ADC_SEL,
      I2 => ADC_B(11),
      I3 => \^out\(11),
      O => \SUM[20]_i_3_n_0\
    );
\SUM[20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(11),
      I1 => ADC_SEL,
      I2 => ADC_B(11),
      I3 => \^out\(10),
      O => \SUM[20]_i_4_n_0\
    );
\SUM[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(7),
      I1 => ADC_SEL,
      I2 => ADC_B(7),
      I3 => \SUM_reg_n_0_[7]\,
      O => \SUM[4]_i_2_n_0\
    );
\SUM[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(6),
      I1 => ADC_SEL,
      I2 => ADC_B(6),
      I3 => \SUM_reg_n_0_[6]\,
      O => \SUM[4]_i_3_n_0\
    );
\SUM[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(5),
      I1 => ADC_SEL,
      I2 => ADC_B(5),
      I3 => \SUM_reg_n_0_[5]\,
      O => \SUM[4]_i_4_n_0\
    );
\SUM[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(4),
      I1 => ADC_SEL,
      I2 => ADC_B(4),
      I3 => \SUM_reg_n_0_[4]\,
      O => \SUM[4]_i_5_n_0\
    );
\SUM[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ADC_B(11),
      I1 => ADC_SEL,
      I2 => ADC_A(11),
      O => \SUM[8]_i_2_n_0\
    );
\SUM[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(11),
      I1 => ADC_SEL,
      I2 => ADC_B(11),
      I3 => \^out\(1),
      O => \SUM[8]_i_3_n_0\
    );
\SUM[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(10),
      I1 => ADC_SEL,
      I2 => ADC_B(10),
      I3 => \^out\(0),
      O => \SUM[8]_i_4_n_0\
    );
\SUM[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(9),
      I1 => ADC_SEL,
      I2 => ADC_B(9),
      I3 => \SUM_reg_n_0_[9]\,
      O => \SUM[8]_i_5_n_0\
    );
\SUM[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => ADC_A(8),
      I1 => ADC_SEL,
      I2 => ADC_B(8),
      I3 => \SUM_reg_n_0_[8]\,
      O => \SUM[8]_i_6_n_0\
    );
\SUM_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[0]_i_1_n_7\,
      Q => \SUM_reg_n_0_[0]\,
      R => clear
    );
\SUM_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \SUM_reg[0]_i_1_n_0\,
      CO(2) => \SUM_reg[0]_i_1_n_1\,
      CO(1) => \SUM_reg[0]_i_1_n_2\,
      CO(0) => \SUM_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \SUM_reg_n_0_[3]\,
      DI(2) => \SUM_reg_n_0_[2]\,
      DI(1) => \SUM_reg_n_0_[1]\,
      DI(0) => \SUM_reg_n_0_[0]\,
      O(3) => \SUM_reg[0]_i_1_n_4\,
      O(2) => \SUM_reg[0]_i_1_n_5\,
      O(1) => \SUM_reg[0]_i_1_n_6\,
      O(0) => \SUM_reg[0]_i_1_n_7\,
      S(3) => \SUM[0]_i_2_n_0\,
      S(2) => \SUM[0]_i_3_n_0\,
      S(1) => \SUM[0]_i_4_n_0\,
      S(0) => \SUM[0]_i_5_n_0\
    );
\SUM_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[8]_i_1_n_5\,
      Q => \^out\(0),
      R => clear
    );
\SUM_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[8]_i_1_n_4\,
      Q => \^out\(1),
      R => clear
    );
\SUM_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[12]_i_1_n_7\,
      Q => \^out\(2),
      R => clear
    );
\SUM_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_reg[8]_i_1_n_0\,
      CO(3) => \SUM_reg[12]_i_1_n_0\,
      CO(2) => \SUM_reg[12]_i_1_n_1\,
      CO(1) => \SUM_reg[12]_i_1_n_2\,
      CO(0) => \SUM_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \SUM[12]_i_2_n_0\,
      DI(2) => \SUM[12]_i_3_n_0\,
      DI(1) => \SUM[12]_i_4_n_0\,
      DI(0) => \SUM[12]_i_5_n_0\,
      O(3) => \SUM_reg[12]_i_1_n_4\,
      O(2) => \SUM_reg[12]_i_1_n_5\,
      O(1) => \SUM_reg[12]_i_1_n_6\,
      O(0) => \SUM_reg[12]_i_1_n_7\,
      S(3) => \SUM[12]_i_6_n_0\,
      S(2) => \SUM[12]_i_7_n_0\,
      S(1) => \SUM[12]_i_8_n_0\,
      S(0) => \SUM[12]_i_9_n_0\
    );
\SUM_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[12]_i_1_n_6\,
      Q => \^out\(3),
      R => clear
    );
\SUM_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[12]_i_1_n_5\,
      Q => \^out\(4),
      R => clear
    );
\SUM_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[12]_i_1_n_4\,
      Q => \^out\(5),
      R => clear
    );
\SUM_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[16]_i_1_n_7\,
      Q => \^out\(6),
      R => clear
    );
\SUM_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_reg[12]_i_1_n_0\,
      CO(3) => \SUM_reg[16]_i_1_n_0\,
      CO(2) => \SUM_reg[16]_i_1_n_1\,
      CO(1) => \SUM_reg[16]_i_1_n_2\,
      CO(0) => \SUM_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \SUM[16]_i_2_n_0\,
      DI(2) => \SUM[16]_i_3_n_0\,
      DI(1) => \SUM[16]_i_4_n_0\,
      DI(0) => \SUM[16]_i_5_n_0\,
      O(3) => \SUM_reg[16]_i_1_n_4\,
      O(2) => \SUM_reg[16]_i_1_n_5\,
      O(1) => \SUM_reg[16]_i_1_n_6\,
      O(0) => \SUM_reg[16]_i_1_n_7\,
      S(3) => \SUM[16]_i_6_n_0\,
      S(2) => \SUM[16]_i_7_n_0\,
      S(1) => \SUM[16]_i_8_n_0\,
      S(0) => \SUM[16]_i_9_n_0\
    );
\SUM_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[16]_i_1_n_6\,
      Q => \^out\(7),
      R => clear
    );
\SUM_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[16]_i_1_n_5\,
      Q => \^out\(8),
      R => clear
    );
\SUM_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[16]_i_1_n_4\,
      Q => \^out\(9),
      R => clear
    );
\SUM_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[0]_i_1_n_6\,
      Q => \SUM_reg_n_0_[1]\,
      R => clear
    );
\SUM_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[20]_i_1_n_7\,
      Q => \^out\(10),
      R => clear
    );
\SUM_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_reg[16]_i_1_n_0\,
      CO(3 downto 1) => \NLW_SUM_reg[20]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \SUM_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \in\(11),
      O(3 downto 2) => \NLW_SUM_reg[20]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \SUM_reg[20]_i_1_n_6\,
      O(0) => \SUM_reg[20]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \SUM[20]_i_3_n_0\,
      S(0) => \SUM[20]_i_4_n_0\
    );
\SUM_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[20]_i_1_n_6\,
      Q => \^out\(11),
      R => clear
    );
\SUM_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[0]_i_1_n_5\,
      Q => \SUM_reg_n_0_[2]\,
      R => clear
    );
\SUM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[0]_i_1_n_4\,
      Q => \SUM_reg_n_0_[3]\,
      R => clear
    );
\SUM_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[4]_i_1_n_7\,
      Q => \SUM_reg_n_0_[4]\,
      R => clear
    );
\SUM_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_reg[0]_i_1_n_0\,
      CO(3) => \SUM_reg[4]_i_1_n_0\,
      CO(2) => \SUM_reg[4]_i_1_n_1\,
      CO(1) => \SUM_reg[4]_i_1_n_2\,
      CO(0) => \SUM_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \SUM_reg_n_0_[7]\,
      DI(2) => \SUM_reg_n_0_[6]\,
      DI(1) => \SUM_reg_n_0_[5]\,
      DI(0) => \SUM_reg_n_0_[4]\,
      O(3) => \SUM_reg[4]_i_1_n_4\,
      O(2) => \SUM_reg[4]_i_1_n_5\,
      O(1) => \SUM_reg[4]_i_1_n_6\,
      O(0) => \SUM_reg[4]_i_1_n_7\,
      S(3) => \SUM[4]_i_2_n_0\,
      S(2) => \SUM[4]_i_3_n_0\,
      S(1) => \SUM[4]_i_4_n_0\,
      S(0) => \SUM[4]_i_5_n_0\
    );
\SUM_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[4]_i_1_n_6\,
      Q => \SUM_reg_n_0_[5]\,
      R => clear
    );
\SUM_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[4]_i_1_n_5\,
      Q => \SUM_reg_n_0_[6]\,
      R => clear
    );
\SUM_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[4]_i_1_n_4\,
      Q => \SUM_reg_n_0_[7]\,
      R => clear
    );
\SUM_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[8]_i_1_n_7\,
      Q => \SUM_reg_n_0_[8]\,
      R => clear
    );
\SUM_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_reg[4]_i_1_n_0\,
      CO(3) => \SUM_reg[8]_i_1_n_0\,
      CO(2) => \SUM_reg[8]_i_1_n_1\,
      CO(1) => \SUM_reg[8]_i_1_n_2\,
      CO(0) => \SUM_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \SUM[8]_i_2_n_0\,
      DI(2) => \^out\(0),
      DI(1) => \SUM_reg_n_0_[9]\,
      DI(0) => \SUM_reg_n_0_[8]\,
      O(3) => \SUM_reg[8]_i_1_n_4\,
      O(2) => \SUM_reg[8]_i_1_n_5\,
      O(1) => \SUM_reg[8]_i_1_n_6\,
      O(0) => \SUM_reg[8]_i_1_n_7\,
      S(3) => \SUM[8]_i_3_n_0\,
      S(2) => \SUM[8]_i_4_n_0\,
      S(1) => \SUM[8]_i_5_n_0\,
      S(0) => \SUM[8]_i_6_n_0\
    );
\SUM_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => COUNT0_n_0,
      D => \SUM_reg[8]_i_1_n_6\,
      Q => \SUM_reg_n_0_[9]\,
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_fp_0_ADC_fp is
  port (
    F_O_reg : out STD_LOGIC;
    ADC_16Q48_OUT : out STD_LOGIC_VECTOR ( 54 downto 0 );
    ADC_EN : in STD_LOGIC;
    ADC_CLK : in STD_LOGIC;
    REG_RST : in STD_LOGIC;
    ADC_A : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ADC_SEL : in STD_LOGIC;
    ADC_B : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_fp_0_ADC_fp : entity is "ADC_fp";
end system_ADC_fp_0_ADC_fp;

architecture STRUCTURE of system_ADC_fp_0_ADC_fp is
  signal \^f_o_reg\ : STD_LOGIC;
  signal VALID_SUM : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  F_O_reg <= \^f_o_reg\;
ADC_AVERAGE0: entity work.system_ADC_fp_0_ADC_AVERAGE
     port map (
      ADC_A(11 downto 0) => ADC_A(11 downto 0),
      ADC_B(11 downto 0) => ADC_B(11 downto 0),
      ADC_CLK => ADC_CLK,
      ADC_EN => ADC_EN,
      ADC_SEL => ADC_SEL,
      E(0) => VALID_SUM,
      F_O_reg => \^f_o_reg\,
      \out\(11 downto 0) => p_0_in(11 downto 0)
    );
MULT1: entity work.system_ADC_fp_0_gen_mult
     port map (
      ADC_16Q48_OUT(54 downto 0) => ADC_16Q48_OUT(54 downto 0),
      ADC_CLK => ADC_CLK,
      E(0) => VALID_SUM,
      REG_RST => REG_RST,
      \out\(11 downto 0) => p_0_in(11 downto 0),
      \p0__4_0\ => \^f_o_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_fp_0 is
  port (
    ADC_CLK : in STD_LOGIC;
    ADC_SEL : in STD_LOGIC;
    ADC_EN : in STD_LOGIC;
    REG_RST : in STD_LOGIC;
    ADC_A : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ADC_B : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ADC_DONE : out STD_LOGIC;
    ADC_16Q48_OUT : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_ADC_fp_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_ADC_fp_0 : entity is "system_ADC_fp_0,ADC_fp,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_ADC_fp_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_ADC_fp_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_ADC_fp_0 : entity is "ADC_fp,Vivado 2020.1";
end system_ADC_fp_0;

architecture STRUCTURE of system_ADC_fp_0 is
  signal \^adc_16q48_out\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ADC_CLK : signal is "xilinx.com:signal:clock:1.0 ADC_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ADC_CLK : signal is "XIL_INTERFACENAME ADC_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_ADC_REG_0_adc_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of REG_RST : signal is "xilinx.com:signal:reset:1.0 REG_RST RST";
  attribute X_INTERFACE_PARAMETER of REG_RST : signal is "XIL_INTERFACENAME REG_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  ADC_16Q48_OUT(63) <= \^adc_16q48_out\(63);
  ADC_16Q48_OUT(62) <= \^adc_16q48_out\(63);
  ADC_16Q48_OUT(61) <= \^adc_16q48_out\(63);
  ADC_16Q48_OUT(60) <= \^adc_16q48_out\(63);
  ADC_16Q48_OUT(59) <= \^adc_16q48_out\(63);
  ADC_16Q48_OUT(58) <= \^adc_16q48_out\(63);
  ADC_16Q48_OUT(57) <= \^adc_16q48_out\(63);
  ADC_16Q48_OUT(56) <= \^adc_16q48_out\(63);
  ADC_16Q48_OUT(55) <= \^adc_16q48_out\(63);
  ADC_16Q48_OUT(54) <= \^adc_16q48_out\(63);
  ADC_16Q48_OUT(53 downto 0) <= \^adc_16q48_out\(53 downto 0);
inst: entity work.system_ADC_fp_0_ADC_fp
     port map (
      ADC_16Q48_OUT(54) => \^adc_16q48_out\(63),
      ADC_16Q48_OUT(53 downto 0) => \^adc_16q48_out\(53 downto 0),
      ADC_A(11 downto 0) => ADC_A(11 downto 0),
      ADC_B(11 downto 0) => ADC_B(11 downto 0),
      ADC_CLK => ADC_CLK,
      ADC_EN => ADC_EN,
      ADC_SEL => ADC_SEL,
      F_O_reg => ADC_DONE,
      REG_RST => REG_RST
    );
end STRUCTURE;
