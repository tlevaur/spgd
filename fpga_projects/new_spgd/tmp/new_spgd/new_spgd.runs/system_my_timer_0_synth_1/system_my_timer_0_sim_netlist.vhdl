-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Jun  9 10:27:41 2022
-- Host        : turing running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_my_timer_0_sim_netlist.vhdl
-- Design      : system_my_timer_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter is
  port (
    timer_A_out : out STD_LOGIC;
    ADC_CLK : in STD_LOGIC;
    DAC_B_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    timer_A_wait : in STD_LOGIC_VECTOR ( 29 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter is
  signal \F_O_i_1__0_n_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \count0_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_5__0_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_6__0_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_7__0_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_8__0_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_6__0_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_7__0_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_1\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \count0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \count0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \count0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \count0_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \count0_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \count0_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \count0_carry_i_8__0_n_0\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2__0_n_7\ : STD_LOGIC;
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
  signal sel : STD_LOGIC;
  signal \^timer_a_out\ : STD_LOGIC;
  signal NLW_count0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[28]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of count0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \count0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \count0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \count0_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_2__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[16]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[20]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[24]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[28]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1__0\ : label is 11;
begin
  timer_A_out <= \^timer_a_out\;
\F_O_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => sel,
      I1 => \^timer_a_out\,
      I2 => DAC_B_OUT(0),
      O => \F_O_i_1__0_n_0\
    );
F_O_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => '1',
      D => \F_O_i_1__0_n_0\,
      Q => \^timer_a_out\,
      R => '0'
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => '0',
      DI(3) => \count0_carry_i_1__0_n_0\,
      DI(2) => \count0_carry_i_2__0_n_0\,
      DI(1) => \count0_carry_i_3__0_n_0\,
      DI(0) => \count0_carry_i_4__0_n_0\,
      O(3 downto 0) => NLW_count0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \count0_carry_i_5__0_n_0\,
      S(2) => \count0_carry_i_6__0_n_0\,
      S(1) => \count0_carry_i_7__0_n_0\,
      S(0) => \count0_carry_i_8__0_n_0\
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \count0_carry__0_i_1__0_n_0\,
      DI(2) => \count0_carry__0_i_2__0_n_0\,
      DI(1) => \count0_carry__0_i_3__0_n_0\,
      DI(0) => \count0_carry__0_i_4__0_n_0\,
      O(3 downto 0) => \NLW_count0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count0_carry__0_i_5__0_n_0\,
      S(2) => \count0_carry__0_i_6__0_n_0\,
      S(1) => \count0_carry__0_i_7__0_n_0\,
      S(0) => \count0_carry__0_i_8__0_n_0\
    );
\count0_carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => timer_A_wait(15),
      O => \count0_carry__0_i_1__0_n_0\
    );
\count0_carry__0_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => timer_A_wait(13),
      O => \count0_carry__0_i_2__0_n_0\
    );
\count0_carry__0_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => timer_A_wait(11),
      O => \count0_carry__0_i_3__0_n_0\
    );
\count0_carry__0_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => timer_A_wait(9),
      O => \count0_carry__0_i_4__0_n_0\
    );
\count0_carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(14),
      I1 => count_reg(14),
      I2 => timer_A_wait(15),
      I3 => count_reg(15),
      O => \count0_carry__0_i_5__0_n_0\
    );
\count0_carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(12),
      I1 => count_reg(12),
      I2 => timer_A_wait(13),
      I3 => count_reg(13),
      O => \count0_carry__0_i_6__0_n_0\
    );
\count0_carry__0_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(10),
      I1 => count_reg(10),
      I2 => timer_A_wait(11),
      I3 => count_reg(11),
      O => \count0_carry__0_i_7__0_n_0\
    );
\count0_carry__0_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(8),
      I1 => count_reg(8),
      I2 => timer_A_wait(9),
      I3 => count_reg(9),
      O => \count0_carry__0_i_8__0_n_0\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \count0_carry__1_i_1__0_n_0\,
      DI(2) => \count0_carry__1_i_2__0_n_0\,
      DI(1) => \count0_carry__1_i_3__0_n_0\,
      DI(0) => \count0_carry__1_i_4__0_n_0\,
      O(3 downto 0) => \NLW_count0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \count0_carry__1_i_5__0_n_0\,
      S(2) => \count0_carry__1_i_6__0_n_0\,
      S(1) => \count0_carry__1_i_7__0_n_0\,
      S(0) => \count0_carry__1_i_8__0_n_0\
    );
\count0_carry__1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => timer_A_wait(23),
      O => \count0_carry__1_i_1__0_n_0\
    );
\count0_carry__1_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => timer_A_wait(21),
      O => \count0_carry__1_i_2__0_n_0\
    );
\count0_carry__1_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => timer_A_wait(19),
      O => \count0_carry__1_i_3__0_n_0\
    );
\count0_carry__1_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => timer_A_wait(17),
      O => \count0_carry__1_i_4__0_n_0\
    );
\count0_carry__1_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(22),
      I1 => count_reg(22),
      I2 => timer_A_wait(23),
      I3 => count_reg(23),
      O => \count0_carry__1_i_5__0_n_0\
    );
\count0_carry__1_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(20),
      I1 => count_reg(20),
      I2 => timer_A_wait(21),
      I3 => count_reg(21),
      O => \count0_carry__1_i_6__0_n_0\
    );
\count0_carry__1_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(18),
      I1 => count_reg(18),
      I2 => timer_A_wait(19),
      I3 => count_reg(19),
      O => \count0_carry__1_i_7__0_n_0\
    );
\count0_carry__1_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(16),
      I1 => count_reg(16),
      I2 => timer_A_wait(17),
      I3 => count_reg(17),
      O => \count0_carry__1_i_8__0_n_0\
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3) => sel,
      CO(2) => \count0_carry__2_n_1\,
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count0_carry__2_i_1_n_0\,
      DI(1) => \count0_carry__2_i_2__0_n_0\,
      DI(0) => \count0_carry__2_i_3__0_n_0\,
      O(3 downto 0) => \NLW_count0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \count0_carry__2_i_4__0_n_0\,
      S(2) => \count0_carry__2_i_5_n_0\,
      S(1) => \count0_carry__2_i_6__0_n_0\,
      S(0) => \count0_carry__2_i_7__0_n_0\
    );
\count0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => timer_A_wait(29),
      O => \count0_carry__2_i_1_n_0\
    );
\count0_carry__2_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => timer_A_wait(27),
      O => \count0_carry__2_i_2__0_n_0\
    );
\count0_carry__2_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => timer_A_wait(25),
      O => \count0_carry__2_i_3__0_n_0\
    );
\count0_carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(30),
      I1 => count_reg(31),
      O => \count0_carry__2_i_4__0_n_0\
    );
\count0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(28),
      I1 => count_reg(28),
      I2 => timer_A_wait(29),
      I3 => count_reg(29),
      O => \count0_carry__2_i_5_n_0\
    );
\count0_carry__2_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(26),
      I1 => count_reg(26),
      I2 => timer_A_wait(27),
      I3 => count_reg(27),
      O => \count0_carry__2_i_6__0_n_0\
    );
\count0_carry__2_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(24),
      I1 => count_reg(24),
      I2 => timer_A_wait(25),
      I3 => count_reg(25),
      O => \count0_carry__2_i_7__0_n_0\
    );
\count0_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => timer_A_wait(7),
      O => \count0_carry_i_1__0_n_0\
    );
\count0_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => timer_A_wait(5),
      O => \count0_carry_i_2__0_n_0\
    );
\count0_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => timer_A_wait(3),
      O => \count0_carry_i_3__0_n_0\
    );
\count0_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => timer_A_wait(1),
      O => \count0_carry_i_4__0_n_0\
    );
\count0_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(6),
      I1 => count_reg(6),
      I2 => timer_A_wait(7),
      I3 => count_reg(7),
      O => \count0_carry_i_5__0_n_0\
    );
\count0_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(4),
      I1 => count_reg(4),
      I2 => timer_A_wait(5),
      I3 => count_reg(5),
      O => \count0_carry_i_6__0_n_0\
    );
\count0_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(2),
      I1 => count_reg(2),
      I2 => timer_A_wait(3),
      I3 => count_reg(3),
      O => \count0_carry_i_7__0_n_0\
    );
\count0_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(0),
      I1 => count_reg(0),
      I2 => timer_A_wait(1),
      I3 => count_reg(1),
      O => \count0_carry_i_8__0_n_0\
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DAC_B_OUT(0),
      O => clear
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
      CE => sel,
      D => \count_reg[0]_i_2__0_n_7\,
      Q => count_reg(0),
      R => clear
    );
\count_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2__0_n_0\,
      CO(2) => \count_reg[0]_i_2__0_n_1\,
      CO(1) => \count_reg[0]_i_2__0_n_2\,
      CO(0) => \count_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_2__0_n_4\,
      O(2) => \count_reg[0]_i_2__0_n_5\,
      O(1) => \count_reg[0]_i_2__0_n_6\,
      O(0) => \count_reg[0]_i_2__0_n_7\,
      S(3 downto 1) => count_reg(3 downto 1),
      S(0) => \count[0]_i_3_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[8]_i_1__0_n_5\,
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
      D => \count_reg[8]_i_1__0_n_4\,
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
      D => \count_reg[12]_i_1__0_n_7\,
      Q => count_reg(12),
      R => clear
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
      CE => sel,
      D => \count_reg[12]_i_1__0_n_6\,
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
      D => \count_reg[12]_i_1__0_n_5\,
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
      D => \count_reg[12]_i_1__0_n_4\,
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
      D => \count_reg[16]_i_1__0_n_7\,
      Q => count_reg(16),
      R => clear
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
      CE => sel,
      D => \count_reg[16]_i_1__0_n_6\,
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
      D => \count_reg[16]_i_1__0_n_5\,
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
      D => \count_reg[16]_i_1__0_n_4\,
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
      D => \count_reg[0]_i_2__0_n_6\,
      Q => count_reg(1),
      R => clear
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[20]_i_1__0_n_7\,
      Q => count_reg(20),
      R => clear
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
      CE => sel,
      D => \count_reg[20]_i_1__0_n_6\,
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
      D => \count_reg[20]_i_1__0_n_5\,
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
      D => \count_reg[20]_i_1__0_n_4\,
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
      D => \count_reg[24]_i_1__0_n_7\,
      Q => count_reg(24),
      R => clear
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
      CE => sel,
      D => \count_reg[24]_i_1__0_n_6\,
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
      D => \count_reg[24]_i_1__0_n_5\,
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
      D => \count_reg[24]_i_1__0_n_4\,
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
      D => \count_reg[28]_i_1__0_n_7\,
      Q => count_reg(28),
      R => clear
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
      CE => sel,
      D => \count_reg[28]_i_1__0_n_6\,
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
      D => \count_reg[0]_i_2__0_n_5\,
      Q => count_reg(2),
      R => clear
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[28]_i_1__0_n_5\,
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
      D => \count_reg[28]_i_1__0_n_4\,
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
      D => \count_reg[0]_i_2__0_n_4\,
      Q => count_reg(3),
      R => clear
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[4]_i_1__0_n_7\,
      Q => count_reg(4),
      R => clear
    );
\count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2__0_n_0\,
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
      CE => sel,
      D => \count_reg[4]_i_1__0_n_6\,
      Q => count_reg(5),
      R => clear
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[4]_i_1__0_n_5\,
      Q => count_reg(6),
      R => clear
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[4]_i_1__0_n_4\,
      Q => count_reg(7),
      R => clear
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[8]_i_1__0_n_7\,
      Q => count_reg(8),
      R => clear
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
      CE => sel,
      D => \count_reg[8]_i_1__0_n_6\,
      Q => count_reg(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter_0 is
  port (
    timer_B_out : out STD_LOGIC;
    ADC_CLK : in STD_LOGIC;
    timer_A_wait : in STD_LOGIC_VECTOR ( 28 downto 0 );
    timer_b_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter_0 : entity is "gen_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter_0 is
  signal \F_O_i_1__1_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_6__1_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_7__1_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_8__1_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__1_i_1__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_2__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_3__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_4__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_5__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_6__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_7__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_8__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__2_i_1__1_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_2__1_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_3__1_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_4__1_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_5__1_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_6__1_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_7__1_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_1\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \count0_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \count0_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \count0_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \count0_carry_i_5__1_n_0\ : STD_LOGIC;
  signal \count0_carry_i_6__1_n_0\ : STD_LOGIC;
  signal \count0_carry_i_7__1_n_0\ : STD_LOGIC;
  signal \count0_carry_i_8__1_n_0\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count[0]_i_3__1_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count_reg[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2__1_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2__1_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2__1_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2__1_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2__1_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2__1_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2__1_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_reg[20]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[20]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[20]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[20]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_reg[24]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[24]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_reg[24]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_reg[24]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_reg[24]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[24]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[24]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[24]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_reg[28]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_reg[28]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_reg[28]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_reg[28]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[28]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[28]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[28]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal \^timer_b_out\ : STD_LOGIC;
  signal NLW_count0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[28]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of count0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \count0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \count0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \count0_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_2__1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[16]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[20]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[24]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[28]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1__1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1__1\ : label is 11;
begin
  timer_B_out <= \^timer_b_out\;
\F_O_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \count0_carry__2_n_0\,
      I1 => \^timer_b_out\,
      I2 => timer_b_en,
      O => \F_O_i_1__1_n_0\
    );
F_O_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => '1',
      D => \F_O_i_1__1_n_0\,
      Q => \^timer_b_out\,
      R => '0'
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => '0',
      DI(3) => \count0_carry_i_1__1_n_0\,
      DI(2) => \count0_carry_i_2__1_n_0\,
      DI(1) => \count0_carry_i_3__1_n_0\,
      DI(0) => \count0_carry_i_4__1_n_0\,
      O(3 downto 0) => NLW_count0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \count0_carry_i_5__1_n_0\,
      S(2) => \count0_carry_i_6__1_n_0\,
      S(1) => \count0_carry_i_7__1_n_0\,
      S(0) => \count0_carry_i_8__1_n_0\
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \count0_carry__0_i_1__1_n_0\,
      DI(2) => \count0_carry__0_i_2__1_n_0\,
      DI(1) => \count0_carry__0_i_3__1_n_0\,
      DI(0) => \count0_carry__0_i_4__1_n_0\,
      O(3 downto 0) => \NLW_count0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count0_carry__0_i_5__1_n_0\,
      S(2) => \count0_carry__0_i_6__1_n_0\,
      S(1) => \count0_carry__0_i_7__1_n_0\,
      S(0) => \count0_carry__0_i_8__1_n_0\
    );
\count0_carry__0_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => timer_A_wait(15),
      O => \count0_carry__0_i_1__1_n_0\
    );
\count0_carry__0_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => timer_A_wait(13),
      O => \count0_carry__0_i_2__1_n_0\
    );
\count0_carry__0_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => timer_A_wait(11),
      O => \count0_carry__0_i_3__1_n_0\
    );
\count0_carry__0_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => timer_A_wait(9),
      O => \count0_carry__0_i_4__1_n_0\
    );
\count0_carry__0_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(14),
      I1 => count_reg(14),
      I2 => timer_A_wait(15),
      I3 => count_reg(15),
      O => \count0_carry__0_i_5__1_n_0\
    );
\count0_carry__0_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(12),
      I1 => count_reg(12),
      I2 => timer_A_wait(13),
      I3 => count_reg(13),
      O => \count0_carry__0_i_6__1_n_0\
    );
\count0_carry__0_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(10),
      I1 => count_reg(10),
      I2 => timer_A_wait(11),
      I3 => count_reg(11),
      O => \count0_carry__0_i_7__1_n_0\
    );
\count0_carry__0_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(8),
      I1 => count_reg(8),
      I2 => timer_A_wait(9),
      I3 => count_reg(9),
      O => \count0_carry__0_i_8__1_n_0\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \count0_carry__1_i_1__1_n_0\,
      DI(2) => \count0_carry__1_i_2__1_n_0\,
      DI(1) => \count0_carry__1_i_3__1_n_0\,
      DI(0) => \count0_carry__1_i_4__1_n_0\,
      O(3 downto 0) => \NLW_count0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \count0_carry__1_i_5__1_n_0\,
      S(2) => \count0_carry__1_i_6__1_n_0\,
      S(1) => \count0_carry__1_i_7__1_n_0\,
      S(0) => \count0_carry__1_i_8__1_n_0\
    );
\count0_carry__1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => timer_A_wait(23),
      O => \count0_carry__1_i_1__1_n_0\
    );
\count0_carry__1_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => timer_A_wait(21),
      O => \count0_carry__1_i_2__1_n_0\
    );
\count0_carry__1_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => timer_A_wait(19),
      O => \count0_carry__1_i_3__1_n_0\
    );
\count0_carry__1_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => timer_A_wait(17),
      O => \count0_carry__1_i_4__1_n_0\
    );
\count0_carry__1_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(22),
      I1 => count_reg(22),
      I2 => timer_A_wait(23),
      I3 => count_reg(23),
      O => \count0_carry__1_i_5__1_n_0\
    );
\count0_carry__1_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(20),
      I1 => count_reg(20),
      I2 => timer_A_wait(21),
      I3 => count_reg(21),
      O => \count0_carry__1_i_6__1_n_0\
    );
\count0_carry__1_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(18),
      I1 => count_reg(18),
      I2 => timer_A_wait(19),
      I3 => count_reg(19),
      O => \count0_carry__1_i_7__1_n_0\
    );
\count0_carry__1_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(16),
      I1 => count_reg(16),
      I2 => timer_A_wait(17),
      I3 => count_reg(17),
      O => \count0_carry__1_i_8__1_n_0\
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3) => \count0_carry__2_n_0\,
      CO(2) => \count0_carry__2_n_1\,
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count0_carry__2_i_1__1_n_0\,
      DI(1) => \count0_carry__2_i_2__1_n_0\,
      DI(0) => \count0_carry__2_i_3__1_n_0\,
      O(3 downto 0) => \NLW_count0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \count0_carry__2_i_4__1_n_0\,
      S(2) => \count0_carry__2_i_5__1_n_0\,
      S(1) => \count0_carry__2_i_6__1_n_0\,
      S(0) => \count0_carry__2_i_7__1_n_0\
    );
\count0_carry__2_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => count_reg(28),
      I1 => timer_A_wait(28),
      I2 => count_reg(29),
      O => \count0_carry__2_i_1__1_n_0\
    );
\count0_carry__2_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => timer_A_wait(27),
      O => \count0_carry__2_i_2__1_n_0\
    );
\count0_carry__2_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => timer_A_wait(25),
      O => \count0_carry__2_i_3__1_n_0\
    );
\count0_carry__2_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(30),
      I1 => count_reg(31),
      O => \count0_carry__2_i_4__1_n_0\
    );
\count0_carry__2_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => timer_A_wait(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      O => \count0_carry__2_i_5__1_n_0\
    );
\count0_carry__2_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(26),
      I1 => count_reg(26),
      I2 => timer_A_wait(27),
      I3 => count_reg(27),
      O => \count0_carry__2_i_6__1_n_0\
    );
\count0_carry__2_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(24),
      I1 => count_reg(24),
      I2 => timer_A_wait(25),
      I3 => count_reg(25),
      O => \count0_carry__2_i_7__1_n_0\
    );
\count0_carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => timer_A_wait(7),
      O => \count0_carry_i_1__1_n_0\
    );
\count0_carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => timer_A_wait(5),
      O => \count0_carry_i_2__1_n_0\
    );
\count0_carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => timer_A_wait(3),
      O => \count0_carry_i_3__1_n_0\
    );
\count0_carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => timer_A_wait(1),
      O => \count0_carry_i_4__1_n_0\
    );
\count0_carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(6),
      I1 => count_reg(6),
      I2 => timer_A_wait(7),
      I3 => count_reg(7),
      O => \count0_carry_i_5__1_n_0\
    );
\count0_carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(4),
      I1 => count_reg(4),
      I2 => timer_A_wait(5),
      I3 => count_reg(5),
      O => \count0_carry_i_6__1_n_0\
    );
\count0_carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(2),
      I1 => count_reg(2),
      I2 => timer_A_wait(3),
      I3 => count_reg(3),
      O => \count0_carry_i_7__1_n_0\
    );
\count0_carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(0),
      I1 => count_reg(0),
      I2 => timer_A_wait(1),
      I3 => count_reg(1),
      O => \count0_carry_i_8__1_n_0\
    );
\count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer_b_en,
      O => \count[0]_i_1__1_n_0\
    );
\count[0]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_3__1_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[0]_i_2__1_n_7\,
      Q => count_reg(0),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[0]_i_2__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2__1_n_0\,
      CO(2) => \count_reg[0]_i_2__1_n_1\,
      CO(1) => \count_reg[0]_i_2__1_n_2\,
      CO(0) => \count_reg[0]_i_2__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_2__1_n_4\,
      O(2) => \count_reg[0]_i_2__1_n_5\,
      O(1) => \count_reg[0]_i_2__1_n_6\,
      O(0) => \count_reg[0]_i_2__1_n_7\,
      S(3 downto 1) => count_reg(3 downto 1),
      S(0) => \count[0]_i_3__1_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[8]_i_1__1_n_5\,
      Q => count_reg(10),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[8]_i_1__1_n_4\,
      Q => count_reg(11),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[12]_i_1__1_n_7\,
      Q => count_reg(12),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__1_n_0\,
      CO(3) => \count_reg[12]_i_1__1_n_0\,
      CO(2) => \count_reg[12]_i_1__1_n_1\,
      CO(1) => \count_reg[12]_i_1__1_n_2\,
      CO(0) => \count_reg[12]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1__1_n_4\,
      O(2) => \count_reg[12]_i_1__1_n_5\,
      O(1) => \count_reg[12]_i_1__1_n_6\,
      O(0) => \count_reg[12]_i_1__1_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[12]_i_1__1_n_6\,
      Q => count_reg(13),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[12]_i_1__1_n_5\,
      Q => count_reg(14),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[12]_i_1__1_n_4\,
      Q => count_reg(15),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[16]_i_1__1_n_7\,
      Q => count_reg(16),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[16]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1__1_n_0\,
      CO(3) => \count_reg[16]_i_1__1_n_0\,
      CO(2) => \count_reg[16]_i_1__1_n_1\,
      CO(1) => \count_reg[16]_i_1__1_n_2\,
      CO(0) => \count_reg[16]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1__1_n_4\,
      O(2) => \count_reg[16]_i_1__1_n_5\,
      O(1) => \count_reg[16]_i_1__1_n_6\,
      O(0) => \count_reg[16]_i_1__1_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[16]_i_1__1_n_6\,
      Q => count_reg(17),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[16]_i_1__1_n_5\,
      Q => count_reg(18),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[16]_i_1__1_n_4\,
      Q => count_reg(19),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[0]_i_2__1_n_6\,
      Q => count_reg(1),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[20]_i_1__1_n_7\,
      Q => count_reg(20),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[20]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1__1_n_0\,
      CO(3) => \count_reg[20]_i_1__1_n_0\,
      CO(2) => \count_reg[20]_i_1__1_n_1\,
      CO(1) => \count_reg[20]_i_1__1_n_2\,
      CO(0) => \count_reg[20]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[20]_i_1__1_n_4\,
      O(2) => \count_reg[20]_i_1__1_n_5\,
      O(1) => \count_reg[20]_i_1__1_n_6\,
      O(0) => \count_reg[20]_i_1__1_n_7\,
      S(3 downto 0) => count_reg(23 downto 20)
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[20]_i_1__1_n_6\,
      Q => count_reg(21),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[20]_i_1__1_n_5\,
      Q => count_reg(22),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[20]_i_1__1_n_4\,
      Q => count_reg(23),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[24]_i_1__1_n_7\,
      Q => count_reg(24),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[24]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]_i_1__1_n_0\,
      CO(3) => \count_reg[24]_i_1__1_n_0\,
      CO(2) => \count_reg[24]_i_1__1_n_1\,
      CO(1) => \count_reg[24]_i_1__1_n_2\,
      CO(0) => \count_reg[24]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[24]_i_1__1_n_4\,
      O(2) => \count_reg[24]_i_1__1_n_5\,
      O(1) => \count_reg[24]_i_1__1_n_6\,
      O(0) => \count_reg[24]_i_1__1_n_7\,
      S(3 downto 0) => count_reg(27 downto 24)
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[24]_i_1__1_n_6\,
      Q => count_reg(25),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[24]_i_1__1_n_5\,
      Q => count_reg(26),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[24]_i_1__1_n_4\,
      Q => count_reg(27),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[28]_i_1__1_n_7\,
      Q => count_reg(28),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[28]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[24]_i_1__1_n_0\,
      CO(3) => \NLW_count_reg[28]_i_1__1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[28]_i_1__1_n_1\,
      CO(1) => \count_reg[28]_i_1__1_n_2\,
      CO(0) => \count_reg[28]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[28]_i_1__1_n_4\,
      O(2) => \count_reg[28]_i_1__1_n_5\,
      O(1) => \count_reg[28]_i_1__1_n_6\,
      O(0) => \count_reg[28]_i_1__1_n_7\,
      S(3 downto 0) => count_reg(31 downto 28)
    );
\count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[28]_i_1__1_n_6\,
      Q => count_reg(29),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[0]_i_2__1_n_5\,
      Q => count_reg(2),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[28]_i_1__1_n_5\,
      Q => count_reg(30),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[28]_i_1__1_n_4\,
      Q => count_reg(31),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[0]_i_2__1_n_4\,
      Q => count_reg(3),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[4]_i_1__1_n_7\,
      Q => count_reg(4),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2__1_n_0\,
      CO(3) => \count_reg[4]_i_1__1_n_0\,
      CO(2) => \count_reg[4]_i_1__1_n_1\,
      CO(1) => \count_reg[4]_i_1__1_n_2\,
      CO(0) => \count_reg[4]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1__1_n_4\,
      O(2) => \count_reg[4]_i_1__1_n_5\,
      O(1) => \count_reg[4]_i_1__1_n_6\,
      O(0) => \count_reg[4]_i_1__1_n_7\,
      S(3 downto 0) => count_reg(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[4]_i_1__1_n_6\,
      Q => count_reg(5),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[4]_i_1__1_n_5\,
      Q => count_reg(6),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[4]_i_1__1_n_4\,
      Q => count_reg(7),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[8]_i_1__1_n_7\,
      Q => count_reg(8),
      R => \count[0]_i_1__1_n_0\
    );
\count_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__1_n_0\,
      CO(3) => \count_reg[8]_i_1__1_n_0\,
      CO(2) => \count_reg[8]_i_1__1_n_1\,
      CO(1) => \count_reg[8]_i_1__1_n_2\,
      CO(0) => \count_reg[8]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1__1_n_4\,
      O(2) => \count_reg[8]_i_1__1_n_5\,
      O(1) => \count_reg[8]_i_1__1_n_6\,
      O(0) => \count_reg[8]_i_1__1_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[8]_i_1__1_n_6\,
      Q => count_reg(9),
      R => \count[0]_i_1__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter_1 is
  port (
    F_O_reg_0 : out STD_LOGIC;
    ADC_CLK : in STD_LOGIC;
    timer_A_wait : in STD_LOGIC_VECTOR ( 28 downto 0 );
    DAC_B_OUT : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter_1 : entity is "gen_counter";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter_1 is
  signal F_O_i_1_n_0 : STD_LOGIC;
  signal \^f_o_reg_0\ : STD_LOGIC;
  signal \count0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \count0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \count0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_5__0_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \count0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_1\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal count0_carry_i_1_n_0 : STD_LOGIC;
  signal count0_carry_i_2_n_0 : STD_LOGIC;
  signal count0_carry_i_3_n_0 : STD_LOGIC;
  signal count0_carry_i_4_n_0 : STD_LOGIC;
  signal count0_carry_i_5_n_0 : STD_LOGIC;
  signal count0_carry_i_6_n_0 : STD_LOGIC;
  signal count0_carry_i_7_n_0 : STD_LOGIC;
  signal count0_carry_i_8_n_0 : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_i_3__0_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_7\ : STD_LOGIC;
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
  signal NLW_count0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of count0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \count0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \count0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \count0_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1\ : label is 11;
begin
  F_O_reg_0 <= \^f_o_reg_0\;
F_O_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \count0_carry__2_n_0\,
      I1 => \^f_o_reg_0\,
      I2 => DAC_B_OUT(0),
      O => F_O_i_1_n_0
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
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => '0',
      DI(3) => count0_carry_i_1_n_0,
      DI(2) => count0_carry_i_2_n_0,
      DI(1) => count0_carry_i_3_n_0,
      DI(0) => count0_carry_i_4_n_0,
      O(3 downto 0) => NLW_count0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => count0_carry_i_5_n_0,
      S(2) => count0_carry_i_6_n_0,
      S(1) => count0_carry_i_7_n_0,
      S(0) => count0_carry_i_8_n_0
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \count0_carry__0_i_1_n_0\,
      DI(2) => \count0_carry__0_i_2_n_0\,
      DI(1) => \count0_carry__0_i_3_n_0\,
      DI(0) => \count0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_count0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \count0_carry__0_i_5_n_0\,
      S(2) => \count0_carry__0_i_6_n_0\,
      S(1) => \count0_carry__0_i_7_n_0\,
      S(0) => \count0_carry__0_i_8_n_0\
    );
\count0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => timer_A_wait(15),
      O => \count0_carry__0_i_1_n_0\
    );
\count0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => timer_A_wait(13),
      O => \count0_carry__0_i_2_n_0\
    );
\count0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => timer_A_wait(11),
      O => \count0_carry__0_i_3_n_0\
    );
\count0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => timer_A_wait(9),
      O => \count0_carry__0_i_4_n_0\
    );
\count0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(14),
      I1 => count_reg(14),
      I2 => timer_A_wait(15),
      I3 => count_reg(15),
      O => \count0_carry__0_i_5_n_0\
    );
\count0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(12),
      I1 => count_reg(12),
      I2 => timer_A_wait(13),
      I3 => count_reg(13),
      O => \count0_carry__0_i_6_n_0\
    );
\count0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(10),
      I1 => count_reg(10),
      I2 => timer_A_wait(11),
      I3 => count_reg(11),
      O => \count0_carry__0_i_7_n_0\
    );
\count0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(8),
      I1 => count_reg(8),
      I2 => timer_A_wait(9),
      I3 => count_reg(9),
      O => \count0_carry__0_i_8_n_0\
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \count0_carry__1_i_1_n_0\,
      DI(2) => \count0_carry__1_i_2_n_0\,
      DI(1) => \count0_carry__1_i_3_n_0\,
      DI(0) => \count0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_count0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \count0_carry__1_i_5_n_0\,
      S(2) => \count0_carry__1_i_6_n_0\,
      S(1) => \count0_carry__1_i_7_n_0\,
      S(0) => \count0_carry__1_i_8_n_0\
    );
\count0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => timer_A_wait(23),
      O => \count0_carry__1_i_1_n_0\
    );
\count0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => timer_A_wait(21),
      O => \count0_carry__1_i_2_n_0\
    );
\count0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => timer_A_wait(19),
      O => \count0_carry__1_i_3_n_0\
    );
\count0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => timer_A_wait(17),
      O => \count0_carry__1_i_4_n_0\
    );
\count0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(22),
      I1 => count_reg(22),
      I2 => timer_A_wait(23),
      I3 => count_reg(23),
      O => \count0_carry__1_i_5_n_0\
    );
\count0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(20),
      I1 => count_reg(20),
      I2 => timer_A_wait(21),
      I3 => count_reg(21),
      O => \count0_carry__1_i_6_n_0\
    );
\count0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(18),
      I1 => count_reg(18),
      I2 => timer_A_wait(19),
      I3 => count_reg(19),
      O => \count0_carry__1_i_7_n_0\
    );
\count0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(16),
      I1 => count_reg(16),
      I2 => timer_A_wait(17),
      I3 => count_reg(17),
      O => \count0_carry__1_i_8_n_0\
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3) => \count0_carry__2_n_0\,
      CO(2) => \count0_carry__2_n_1\,
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \count0_carry__2_i_1__0_n_0\,
      DI(1) => \count0_carry__2_i_2_n_0\,
      DI(0) => \count0_carry__2_i_3_n_0\,
      O(3 downto 0) => \NLW_count0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \count0_carry__2_i_4_n_0\,
      S(2) => \count0_carry__2_i_5__0_n_0\,
      S(1) => \count0_carry__2_i_6_n_0\,
      S(0) => \count0_carry__2_i_7_n_0\
    );
\count0_carry__2_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => count_reg(28),
      I1 => timer_A_wait(28),
      I2 => count_reg(29),
      O => \count0_carry__2_i_1__0_n_0\
    );
\count0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => timer_A_wait(27),
      O => \count0_carry__2_i_2_n_0\
    );
\count0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => timer_A_wait(25),
      O => \count0_carry__2_i_3_n_0\
    );
\count0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(30),
      I1 => count_reg(31),
      O => \count0_carry__2_i_4_n_0\
    );
\count0_carry__2_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => timer_A_wait(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      O => \count0_carry__2_i_5__0_n_0\
    );
\count0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(26),
      I1 => count_reg(26),
      I2 => timer_A_wait(27),
      I3 => count_reg(27),
      O => \count0_carry__2_i_6_n_0\
    );
\count0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(24),
      I1 => count_reg(24),
      I2 => timer_A_wait(25),
      I3 => count_reg(25),
      O => \count0_carry__2_i_7_n_0\
    );
count0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => timer_A_wait(7),
      O => count0_carry_i_1_n_0
    );
count0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => timer_A_wait(5),
      O => count0_carry_i_2_n_0
    );
count0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => timer_A_wait(3),
      O => count0_carry_i_3_n_0
    );
count0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => timer_A_wait(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => timer_A_wait(1),
      O => count0_carry_i_4_n_0
    );
count0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(6),
      I1 => count_reg(6),
      I2 => timer_A_wait(7),
      I3 => count_reg(7),
      O => count0_carry_i_5_n_0
    );
count0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(4),
      I1 => count_reg(4),
      I2 => timer_A_wait(5),
      I3 => count_reg(5),
      O => count0_carry_i_6_n_0
    );
count0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(2),
      I1 => count_reg(2),
      I2 => timer_A_wait(3),
      I3 => count_reg(3),
      O => count0_carry_i_7_n_0
    );
count0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => timer_A_wait(0),
      I1 => count_reg(0),
      I2 => timer_A_wait(1),
      I3 => count_reg(1),
      O => count0_carry_i_8_n_0
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DAC_B_OUT(0),
      O => \count[0]_i_1_n_0\
    );
\count[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_3__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[0]_i_2_n_7\,
      Q => count_reg(0),
      R => \count[0]_i_1_n_0\
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
      S(0) => \count[0]_i_3__0_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10),
      R => \count[0]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11),
      R => \count[0]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12),
      R => \count[0]_i_1_n_0\
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
      CE => \count0_carry__2_n_0\,
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13),
      R => \count[0]_i_1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14),
      R => \count[0]_i_1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15),
      R => \count[0]_i_1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[16]_i_1_n_7\,
      Q => count_reg(16),
      R => \count[0]_i_1_n_0\
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
      CE => \count0_carry__2_n_0\,
      D => \count_reg[16]_i_1_n_6\,
      Q => count_reg(17),
      R => \count[0]_i_1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[16]_i_1_n_5\,
      Q => count_reg(18),
      R => \count[0]_i_1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[16]_i_1_n_4\,
      Q => count_reg(19),
      R => \count[0]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[0]_i_2_n_6\,
      Q => count_reg(1),
      R => \count[0]_i_1_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[20]_i_1_n_7\,
      Q => count_reg(20),
      R => \count[0]_i_1_n_0\
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
      CE => \count0_carry__2_n_0\,
      D => \count_reg[20]_i_1_n_6\,
      Q => count_reg(21),
      R => \count[0]_i_1_n_0\
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[20]_i_1_n_5\,
      Q => count_reg(22),
      R => \count[0]_i_1_n_0\
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[20]_i_1_n_4\,
      Q => count_reg(23),
      R => \count[0]_i_1_n_0\
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[24]_i_1_n_7\,
      Q => count_reg(24),
      R => \count[0]_i_1_n_0\
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
      CE => \count0_carry__2_n_0\,
      D => \count_reg[24]_i_1_n_6\,
      Q => count_reg(25),
      R => \count[0]_i_1_n_0\
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[24]_i_1_n_5\,
      Q => count_reg(26),
      R => \count[0]_i_1_n_0\
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[24]_i_1_n_4\,
      Q => count_reg(27),
      R => \count[0]_i_1_n_0\
    );
\count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[28]_i_1_n_7\,
      Q => count_reg(28),
      R => \count[0]_i_1_n_0\
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
      CE => \count0_carry__2_n_0\,
      D => \count_reg[28]_i_1_n_6\,
      Q => count_reg(29),
      R => \count[0]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[0]_i_2_n_5\,
      Q => count_reg(2),
      R => \count[0]_i_1_n_0\
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[28]_i_1_n_5\,
      Q => count_reg(30),
      R => \count[0]_i_1_n_0\
    );
\count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[28]_i_1_n_4\,
      Q => count_reg(31),
      R => \count[0]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[0]_i_2_n_4\,
      Q => count_reg(3),
      R => \count[0]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[4]_i_1_n_7\,
      Q => count_reg(4),
      R => \count[0]_i_1_n_0\
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2_n_0\,
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
      S(3 downto 0) => count_reg(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5),
      R => \count[0]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6),
      R => \count[0]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7),
      R => \count[0]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8),
      R => \count[0]_i_1_n_0\
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
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => \count0_carry__2_n_0\,
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9),
      R => \count[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_timer is
  port (
    DAC_B_OUT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ADC_CLK : in STD_LOGIC;
    GP_IN : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_timer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_timer is
  signal \^dac_b_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_DAC_A[12]_i_1_n_0\ : STD_LOGIC;
  signal \int_DAC_A[13]_i_1_n_0\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \next_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_1_n_0\ : STD_LOGIC;
  signal timer_A_out : STD_LOGIC;
  signal timer_A_wait : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal timer_B_out : STD_LOGIC;
  signal timer_b_en : STD_LOGIC;
  signal timer_b_en_i_1_n_0 : STD_LOGIC;
  signal timer_c_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_state[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \current_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_DAC_A[13]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \next_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \next_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of timer_b_en_i_1 : label is "soft_lutpair1";
begin
  DAC_B_OUT(1 downto 0) <= \^dac_b_out\(1 downto 0);
\current_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state(0),
      I1 => GP_IN(30),
      O => \current_state[0]_i_1_n_0\
    );
\current_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => next_state(1),
      I1 => GP_IN(30),
      O => \current_state[1]_i_1_n_0\
    );
\current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => '1',
      D => \current_state[0]_i_1_n_0\,
      Q => current_state(0),
      R => '0'
    );
\current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => '1',
      D => \current_state[1]_i_1_n_0\,
      Q => current_state(1),
      R => '0'
    );
\int_DAC_A[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => \int_DAC_A[12]_i_1_n_0\
    );
\int_DAC_A[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => \int_DAC_A[13]_i_1_n_0\
    );
\int_DAC_A_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => '1',
      D => \int_DAC_A[12]_i_1_n_0\,
      Q => \^dac_b_out\(1),
      R => '0'
    );
\int_DAC_A_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => '1',
      D => \int_DAC_A[13]_i_1_n_0\,
      Q => \^dac_b_out\(0),
      R => '0'
    );
\next_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCB8FFB8"
    )
        port map (
      I0 => timer_B_out,
      I1 => current_state(1),
      I2 => GP_IN(30),
      I3 => current_state(0),
      I4 => timer_A_out,
      O => \next_state[0]_i_1_n_0\
    );
\next_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7C4C"
    )
        port map (
      I0 => timer_c_n_0,
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => timer_A_out,
      O => \next_state[1]_i_1_n_0\
    );
\next_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => '1',
      D => \next_state[0]_i_1_n_0\,
      Q => next_state(0),
      R => '0'
    );
\next_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => '1',
      D => \next_state[1]_i_1_n_0\,
      Q => next_state(1),
      R => '0'
    );
\timer_A_wait_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(0),
      Q => timer_A_wait(0),
      R => '0'
    );
\timer_A_wait_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(10),
      Q => timer_A_wait(10),
      R => '0'
    );
\timer_A_wait_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(11),
      Q => timer_A_wait(11),
      R => '0'
    );
\timer_A_wait_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(12),
      Q => timer_A_wait(12),
      R => '0'
    );
\timer_A_wait_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(13),
      Q => timer_A_wait(13),
      R => '0'
    );
\timer_A_wait_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(14),
      Q => timer_A_wait(14),
      R => '0'
    );
\timer_A_wait_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(15),
      Q => timer_A_wait(15),
      R => '0'
    );
\timer_A_wait_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(16),
      Q => timer_A_wait(16),
      R => '0'
    );
\timer_A_wait_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(17),
      Q => timer_A_wait(17),
      R => '0'
    );
\timer_A_wait_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(18),
      Q => timer_A_wait(18),
      R => '0'
    );
\timer_A_wait_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(19),
      Q => timer_A_wait(19),
      R => '0'
    );
\timer_A_wait_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(1),
      Q => timer_A_wait(1),
      R => '0'
    );
\timer_A_wait_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(20),
      Q => timer_A_wait(20),
      R => '0'
    );
\timer_A_wait_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(21),
      Q => timer_A_wait(21),
      R => '0'
    );
\timer_A_wait_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(22),
      Q => timer_A_wait(22),
      R => '0'
    );
\timer_A_wait_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(23),
      Q => timer_A_wait(23),
      R => '0'
    );
\timer_A_wait_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(24),
      Q => timer_A_wait(24),
      R => '0'
    );
\timer_A_wait_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(25),
      Q => timer_A_wait(25),
      R => '0'
    );
\timer_A_wait_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(26),
      Q => timer_A_wait(26),
      R => '0'
    );
\timer_A_wait_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(27),
      Q => timer_A_wait(27),
      R => '0'
    );
\timer_A_wait_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(28),
      Q => timer_A_wait(28),
      R => '0'
    );
\timer_A_wait_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(29),
      Q => timer_A_wait(29),
      R => '0'
    );
\timer_A_wait_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(2),
      Q => timer_A_wait(2),
      R => '0'
    );
\timer_A_wait_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(3),
      Q => timer_A_wait(3),
      R => '0'
    );
\timer_A_wait_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(4),
      Q => timer_A_wait(4),
      R => '0'
    );
\timer_A_wait_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(5),
      Q => timer_A_wait(5),
      R => '0'
    );
\timer_A_wait_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(6),
      Q => timer_A_wait(6),
      R => '0'
    );
\timer_A_wait_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(7),
      Q => timer_A_wait(7),
      R => '0'
    );
\timer_A_wait_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(8),
      Q => timer_A_wait(8),
      R => '0'
    );
\timer_A_wait_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => GP_IN(30),
      D => GP_IN(9),
      Q => timer_A_wait(9),
      R => '0'
    );
timer_a: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter
     port map (
      ADC_CLK => ADC_CLK,
      DAC_B_OUT(0) => \^dac_b_out\(1),
      timer_A_out => timer_A_out,
      timer_A_wait(29 downto 0) => timer_A_wait(29 downto 0)
    );
timer_b: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter_0
     port map (
      ADC_CLK => ADC_CLK,
      timer_A_wait(28 downto 0) => timer_A_wait(29 downto 1),
      timer_B_out => timer_B_out,
      timer_b_en => timer_b_en
    );
timer_b_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      O => timer_b_en_i_1_n_0
    );
timer_b_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => '1',
      D => timer_b_en_i_1_n_0,
      Q => timer_b_en,
      R => '0'
    );
timer_c: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter_1
     port map (
      ADC_CLK => ADC_CLK,
      DAC_B_OUT(0) => \^dac_b_out\(0),
      F_O_reg_0 => timer_c_n_0,
      timer_A_wait(28 downto 0) => timer_A_wait(29 downto 1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    GP_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ADC_CLK : in STD_LOGIC;
    DAC_A_OUT : out STD_LOGIC_VECTOR ( 13 downto 0 );
    DAC_B_OUT : out STD_LOGIC_VECTOR ( 13 downto 0 );
    val_0 : out STD_LOGIC;
    val_1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_my_timer_0,my_timer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "my_timer,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^dac_a_out\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \^dac_b_out\ : STD_LOGIC_VECTOR ( 12 to 12 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ADC_CLK : signal is "xilinx.com:signal:clock:1.0 ADC_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ADC_CLK : signal is "XIL_INTERFACENAME ADC_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_ADC_REG_0_adc_clk, INSERT_VIP 0";
begin
  DAC_A_OUT(13) <= \^dac_b_out\(12);
  DAC_A_OUT(12) <= \^dac_a_out\(12);
  DAC_A_OUT(11) <= \^dac_a_out\(12);
  DAC_A_OUT(10) <= \^dac_a_out\(12);
  DAC_A_OUT(9) <= \^dac_a_out\(12);
  DAC_A_OUT(8) <= \^dac_a_out\(12);
  DAC_A_OUT(7) <= \^dac_a_out\(12);
  DAC_A_OUT(6) <= \^dac_a_out\(12);
  DAC_A_OUT(5) <= \^dac_a_out\(12);
  DAC_A_OUT(4) <= \^dac_a_out\(12);
  DAC_A_OUT(3) <= \^dac_a_out\(12);
  DAC_A_OUT(2) <= \^dac_a_out\(12);
  DAC_A_OUT(1) <= \^dac_a_out\(12);
  DAC_A_OUT(0) <= \^dac_a_out\(12);
  DAC_B_OUT(13) <= \^dac_a_out\(12);
  DAC_B_OUT(12) <= \^dac_b_out\(12);
  DAC_B_OUT(11) <= \^dac_b_out\(12);
  DAC_B_OUT(10) <= \^dac_b_out\(12);
  DAC_B_OUT(9) <= \^dac_b_out\(12);
  DAC_B_OUT(8) <= \^dac_b_out\(12);
  DAC_B_OUT(7) <= \^dac_b_out\(12);
  DAC_B_OUT(6) <= \^dac_b_out\(12);
  DAC_B_OUT(5) <= \^dac_b_out\(12);
  DAC_B_OUT(4) <= \^dac_b_out\(12);
  DAC_B_OUT(3) <= \^dac_b_out\(12);
  DAC_B_OUT(2) <= \^dac_b_out\(12);
  DAC_B_OUT(1) <= \^dac_b_out\(12);
  DAC_B_OUT(0) <= \^dac_b_out\(12);
  val_0 <= \<const0>\;
  val_1 <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_timer
     port map (
      ADC_CLK => ADC_CLK,
      DAC_B_OUT(1) => \^dac_a_out\(12),
      DAC_B_OUT(0) => \^dac_b_out\(12),
      GP_IN(30 downto 0) => GP_IN(31 downto 1)
    );
end STRUCTURE;
