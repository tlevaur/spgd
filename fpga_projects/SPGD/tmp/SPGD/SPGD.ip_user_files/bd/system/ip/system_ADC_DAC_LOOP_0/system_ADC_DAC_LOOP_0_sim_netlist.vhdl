-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Jul 14 16:54:06 2022
-- Host        : turing running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/taylor/Documents/GH/SPGD/fpga_projects/SPGD/tmp/SPGD/SPGD.srcs/sources_1/bd/system/ip/system_ADC_DAC_LOOP_0/system_ADC_DAC_LOOP_0_sim_netlist.vhdl
-- Design      : system_ADC_DAC_LOOP_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_DAC_LOOP_0_FSM is
  port (
    VALID_SUM : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    RST : out STD_LOGIC;
    GP_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    \p0__0\ : in STD_LOGIC;
    ADC_CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_DAC_LOOP_0_FSM : entity is "FSM";
end system_ADC_DAC_LOOP_0_FSM;

architecture STRUCTURE of system_ADC_DAC_LOOP_0_FSM is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "stopped:0001,sADC_RST:1000,waiting:0010,reg_write:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "stopped:0001,sADC_RST:1000,waiting:0010,reg_write:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "stopped:0001,sADC_RST:1000,waiting:0010,reg_write:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "stopped:0001,sADC_RST:1000,waiting:0010,reg_write:0100";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => \p0__0\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \^q\(0),
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \p0__0\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => GP_IN(0),
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ADC_CLK,
      CE => '1',
      D => '0',
      Q => \^q\(0),
      S => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \^q\(1),
      R => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => '1',
      D => \^q\(1),
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \FSM_onehot_state[3]_i_1_n_0\
    );
\SUM[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => RST
    );
p0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \p0__0\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \^q\(0),
      O => VALID_SUM
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_DAC_LOOP_0_gen_counter is
  port (
    F_O_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADC_CLK : in STD_LOGIC;
    RST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_DAC_LOOP_0_gen_counter : entity is "gen_counter";
end system_ADC_DAC_LOOP_0_gen_counter;

architecture STRUCTURE of system_ADC_DAC_LOOP_0_gen_counter is
  signal F_O_i_1_n_0 : STD_LOGIC;
  signal F_O_i_2_n_0 : STD_LOGIC;
  signal F_O_i_3_n_0 : STD_LOGIC;
  signal F_O_i_4_n_0 : STD_LOGIC;
  signal F_O_i_5_n_0 : STD_LOGIC;
  signal F_O_i_6_n_0 : STD_LOGIC;
  signal F_O_i_7_n_0 : STD_LOGIC;
  signal F_O_i_8_n_0 : STD_LOGIC;
  signal \^f_o_reg_0\ : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[0]_i_6_n_0\ : STD_LOGIC;
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
  signal sel : STD_LOGIC;
  signal \NLW_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
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
F_O_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFEFF"
    )
        port map (
      I0 => \^f_o_reg_0\,
      I1 => F_O_i_2_n_0,
      I2 => F_O_i_3_n_0,
      I3 => F_O_i_4_n_0,
      I4 => F_O_i_5_n_0,
      I5 => RST,
      O => F_O_i_1_n_0
    );
F_O_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => F_O_i_6_n_0,
      I1 => count_reg(17),
      I2 => count_reg(16),
      I3 => count_reg(19),
      I4 => count_reg(18),
      I5 => F_O_i_7_n_0,
      O => F_O_i_2_n_0
    );
F_O_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count_reg(30),
      I1 => count_reg(31),
      I2 => count_reg(28),
      I3 => count_reg(29),
      I4 => count_reg(27),
      I5 => count_reg(26),
      O => F_O_i_3_n_0
    );
F_O_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => F_O_i_8_n_0,
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => count_reg(2),
      I4 => count_reg(3),
      O => F_O_i_4_n_0
    );
F_O_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(10),
      I2 => count_reg(13),
      I3 => count_reg(12),
      O => F_O_i_5_n_0
    );
F_O_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count_reg(14),
      I1 => count_reg(15),
      O => F_O_i_6_n_0
    );
F_O_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count_reg(24),
      I1 => count_reg(25),
      I2 => count_reg(22),
      I3 => count_reg(23),
      I4 => count_reg(21),
      I5 => count_reg(20),
      O => F_O_i_7_n_0
    );
F_O_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(9),
      I2 => count_reg(6),
      I3 => count_reg(7),
      I4 => count_reg(1),
      I5 => count_reg(0),
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
\SUM[21]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_o_reg_0\,
      O => E(0)
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \count[0]_i_3_n_0\,
      I1 => \count[0]_i_4_n_0\,
      I2 => F_O_i_4_n_0,
      I3 => F_O_i_5_n_0,
      I4 => \count[0]_i_5_n_0\,
      O => sel
    );
\count[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_reg(22),
      I1 => count_reg(23),
      I2 => count_reg(20),
      I3 => count_reg(21),
      I4 => count_reg(25),
      I5 => count_reg(24),
      O => \count[0]_i_3_n_0\
    );
\count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_reg(28),
      I1 => count_reg(29),
      I2 => count_reg(26),
      I3 => count_reg(27),
      I4 => count_reg(31),
      I5 => count_reg(30),
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => count_reg(16),
      I1 => count_reg(17),
      I2 => count_reg(14),
      I3 => count_reg(15),
      I4 => count_reg(19),
      I5 => count_reg(18),
      O => \count[0]_i_5_n_0\
    );
\count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_6_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[0]_i_2_n_7\,
      Q => count_reg(0),
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[0]_i_2_n_6\,
      Q => count_reg(1),
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
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
      R => RST
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[0]_i_2_n_5\,
      Q => count_reg(2),
      R => RST
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
      R => RST
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
      R => RST
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[0]_i_2_n_4\,
      Q => count_reg(3),
      R => RST
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[4]_i_1_n_7\,
      Q => count_reg(4),
      R => RST
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
      CE => sel,
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5),
      R => RST
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6),
      R => RST
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7),
      R => RST
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => sel,
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8),
      R => RST
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
      CE => sel,
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9),
      R => RST
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_DAC_LOOP_0_gen_mult is
  port (
    \p0__2_0\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[39]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[43]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[47]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[51]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[55]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[59]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[63]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    P : in STD_LOGIC_VECTOR ( 26 downto 0 );
    CFG_IN : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_DAC_LOOP_0_gen_mult : entity is "gen_mult";
end system_ADC_DAC_LOOP_0_gen_mult;

architecture STRUCTURE of system_ADC_DAC_LOOP_0_gen_mult is
  signal a : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \p0__0_n_100\ : STD_LOGIC;
  signal \p0__0_n_101\ : STD_LOGIC;
  signal \p0__0_n_102\ : STD_LOGIC;
  signal \p0__0_n_103\ : STD_LOGIC;
  signal \p0__0_n_104\ : STD_LOGIC;
  signal \p0__0_n_105\ : STD_LOGIC;
  signal \p0__0_n_58\ : STD_LOGIC;
  signal \p0__0_n_59\ : STD_LOGIC;
  signal \p0__0_n_60\ : STD_LOGIC;
  signal \p0__0_n_61\ : STD_LOGIC;
  signal \p0__0_n_62\ : STD_LOGIC;
  signal \p0__0_n_63\ : STD_LOGIC;
  signal \p0__0_n_64\ : STD_LOGIC;
  signal \p0__0_n_65\ : STD_LOGIC;
  signal \p0__0_n_66\ : STD_LOGIC;
  signal \p0__0_n_67\ : STD_LOGIC;
  signal \p0__0_n_68\ : STD_LOGIC;
  signal \p0__0_n_69\ : STD_LOGIC;
  signal \p0__0_n_70\ : STD_LOGIC;
  signal \p0__0_n_71\ : STD_LOGIC;
  signal \p0__0_n_72\ : STD_LOGIC;
  signal \p0__0_n_73\ : STD_LOGIC;
  signal \p0__0_n_74\ : STD_LOGIC;
  signal \p0__0_n_75\ : STD_LOGIC;
  signal \p0__0_n_76\ : STD_LOGIC;
  signal \p0__0_n_77\ : STD_LOGIC;
  signal \p0__0_n_78\ : STD_LOGIC;
  signal \p0__0_n_79\ : STD_LOGIC;
  signal \p0__0_n_80\ : STD_LOGIC;
  signal \p0__0_n_81\ : STD_LOGIC;
  signal \p0__0_n_82\ : STD_LOGIC;
  signal \p0__0_n_83\ : STD_LOGIC;
  signal \p0__0_n_84\ : STD_LOGIC;
  signal \p0__0_n_85\ : STD_LOGIC;
  signal \p0__0_n_86\ : STD_LOGIC;
  signal \p0__0_n_87\ : STD_LOGIC;
  signal \p0__0_n_88\ : STD_LOGIC;
  signal \p0__0_n_89\ : STD_LOGIC;
  signal \p0__0_n_90\ : STD_LOGIC;
  signal \p0__0_n_91\ : STD_LOGIC;
  signal \p0__0_n_92\ : STD_LOGIC;
  signal \p0__0_n_93\ : STD_LOGIC;
  signal \p0__0_n_94\ : STD_LOGIC;
  signal \p0__0_n_95\ : STD_LOGIC;
  signal \p0__0_n_96\ : STD_LOGIC;
  signal \p0__0_n_97\ : STD_LOGIC;
  signal \p0__0_n_98\ : STD_LOGIC;
  signal \p0__0_n_99\ : STD_LOGIC;
  signal \p0__1_n_100\ : STD_LOGIC;
  signal \p0__1_n_101\ : STD_LOGIC;
  signal \p0__1_n_102\ : STD_LOGIC;
  signal \p0__1_n_103\ : STD_LOGIC;
  signal \p0__1_n_104\ : STD_LOGIC;
  signal \p0__1_n_105\ : STD_LOGIC;
  signal \p0__1_n_106\ : STD_LOGIC;
  signal \p0__1_n_107\ : STD_LOGIC;
  signal \p0__1_n_108\ : STD_LOGIC;
  signal \p0__1_n_109\ : STD_LOGIC;
  signal \p0__1_n_110\ : STD_LOGIC;
  signal \p0__1_n_111\ : STD_LOGIC;
  signal \p0__1_n_112\ : STD_LOGIC;
  signal \p0__1_n_113\ : STD_LOGIC;
  signal \p0__1_n_114\ : STD_LOGIC;
  signal \p0__1_n_115\ : STD_LOGIC;
  signal \p0__1_n_116\ : STD_LOGIC;
  signal \p0__1_n_117\ : STD_LOGIC;
  signal \p0__1_n_118\ : STD_LOGIC;
  signal \p0__1_n_119\ : STD_LOGIC;
  signal \p0__1_n_120\ : STD_LOGIC;
  signal \p0__1_n_121\ : STD_LOGIC;
  signal \p0__1_n_122\ : STD_LOGIC;
  signal \p0__1_n_123\ : STD_LOGIC;
  signal \p0__1_n_124\ : STD_LOGIC;
  signal \p0__1_n_125\ : STD_LOGIC;
  signal \p0__1_n_126\ : STD_LOGIC;
  signal \p0__1_n_127\ : STD_LOGIC;
  signal \p0__1_n_128\ : STD_LOGIC;
  signal \p0__1_n_129\ : STD_LOGIC;
  signal \p0__1_n_130\ : STD_LOGIC;
  signal \p0__1_n_131\ : STD_LOGIC;
  signal \p0__1_n_132\ : STD_LOGIC;
  signal \p0__1_n_133\ : STD_LOGIC;
  signal \p0__1_n_134\ : STD_LOGIC;
  signal \p0__1_n_135\ : STD_LOGIC;
  signal \p0__1_n_136\ : STD_LOGIC;
  signal \p0__1_n_137\ : STD_LOGIC;
  signal \p0__1_n_138\ : STD_LOGIC;
  signal \p0__1_n_139\ : STD_LOGIC;
  signal \p0__1_n_140\ : STD_LOGIC;
  signal \p0__1_n_141\ : STD_LOGIC;
  signal \p0__1_n_142\ : STD_LOGIC;
  signal \p0__1_n_143\ : STD_LOGIC;
  signal \p0__1_n_144\ : STD_LOGIC;
  signal \p0__1_n_145\ : STD_LOGIC;
  signal \p0__1_n_146\ : STD_LOGIC;
  signal \p0__1_n_147\ : STD_LOGIC;
  signal \p0__1_n_148\ : STD_LOGIC;
  signal \p0__1_n_149\ : STD_LOGIC;
  signal \p0__1_n_150\ : STD_LOGIC;
  signal \p0__1_n_151\ : STD_LOGIC;
  signal \p0__1_n_152\ : STD_LOGIC;
  signal \p0__1_n_153\ : STD_LOGIC;
  signal \p0__1_n_24\ : STD_LOGIC;
  signal \p0__1_n_25\ : STD_LOGIC;
  signal \p0__1_n_26\ : STD_LOGIC;
  signal \p0__1_n_27\ : STD_LOGIC;
  signal \p0__1_n_28\ : STD_LOGIC;
  signal \p0__1_n_29\ : STD_LOGIC;
  signal \p0__1_n_30\ : STD_LOGIC;
  signal \p0__1_n_31\ : STD_LOGIC;
  signal \p0__1_n_32\ : STD_LOGIC;
  signal \p0__1_n_33\ : STD_LOGIC;
  signal \p0__1_n_34\ : STD_LOGIC;
  signal \p0__1_n_35\ : STD_LOGIC;
  signal \p0__1_n_36\ : STD_LOGIC;
  signal \p0__1_n_37\ : STD_LOGIC;
  signal \p0__1_n_38\ : STD_LOGIC;
  signal \p0__1_n_39\ : STD_LOGIC;
  signal \p0__1_n_40\ : STD_LOGIC;
  signal \p0__1_n_41\ : STD_LOGIC;
  signal \p0__1_n_42\ : STD_LOGIC;
  signal \p0__1_n_43\ : STD_LOGIC;
  signal \p0__1_n_44\ : STD_LOGIC;
  signal \p0__1_n_45\ : STD_LOGIC;
  signal \p0__1_n_46\ : STD_LOGIC;
  signal \p0__1_n_47\ : STD_LOGIC;
  signal \p0__1_n_48\ : STD_LOGIC;
  signal \p0__1_n_49\ : STD_LOGIC;
  signal \p0__1_n_50\ : STD_LOGIC;
  signal \p0__1_n_51\ : STD_LOGIC;
  signal \p0__1_n_52\ : STD_LOGIC;
  signal \p0__1_n_53\ : STD_LOGIC;
  signal \p0__1_n_58\ : STD_LOGIC;
  signal \p0__1_n_59\ : STD_LOGIC;
  signal \p0__1_n_60\ : STD_LOGIC;
  signal \p0__1_n_61\ : STD_LOGIC;
  signal \p0__1_n_62\ : STD_LOGIC;
  signal \p0__1_n_63\ : STD_LOGIC;
  signal \p0__1_n_64\ : STD_LOGIC;
  signal \p0__1_n_65\ : STD_LOGIC;
  signal \p0__1_n_66\ : STD_LOGIC;
  signal \p0__1_n_67\ : STD_LOGIC;
  signal \p0__1_n_68\ : STD_LOGIC;
  signal \p0__1_n_69\ : STD_LOGIC;
  signal \p0__1_n_70\ : STD_LOGIC;
  signal \p0__1_n_71\ : STD_LOGIC;
  signal \p0__1_n_72\ : STD_LOGIC;
  signal \p0__1_n_73\ : STD_LOGIC;
  signal \p0__1_n_74\ : STD_LOGIC;
  signal \p0__1_n_75\ : STD_LOGIC;
  signal \p0__1_n_76\ : STD_LOGIC;
  signal \p0__1_n_77\ : STD_LOGIC;
  signal \p0__1_n_78\ : STD_LOGIC;
  signal \p0__1_n_79\ : STD_LOGIC;
  signal \p0__1_n_80\ : STD_LOGIC;
  signal \p0__1_n_81\ : STD_LOGIC;
  signal \p0__1_n_82\ : STD_LOGIC;
  signal \p0__1_n_83\ : STD_LOGIC;
  signal \p0__1_n_84\ : STD_LOGIC;
  signal \p0__1_n_85\ : STD_LOGIC;
  signal \p0__1_n_86\ : STD_LOGIC;
  signal \p0__1_n_87\ : STD_LOGIC;
  signal \p0__1_n_88\ : STD_LOGIC;
  signal \p0__1_n_89\ : STD_LOGIC;
  signal \p0__1_n_90\ : STD_LOGIC;
  signal \p0__1_n_91\ : STD_LOGIC;
  signal \p0__1_n_92\ : STD_LOGIC;
  signal \p0__1_n_93\ : STD_LOGIC;
  signal \p0__1_n_94\ : STD_LOGIC;
  signal \p0__1_n_95\ : STD_LOGIC;
  signal \p0__1_n_96\ : STD_LOGIC;
  signal \p0__1_n_97\ : STD_LOGIC;
  signal \p0__1_n_98\ : STD_LOGIC;
  signal \p0__1_n_99\ : STD_LOGIC;
  signal \^p0__2_0\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \p0__2_n_100\ : STD_LOGIC;
  signal \p0__2_n_101\ : STD_LOGIC;
  signal \p0__2_n_102\ : STD_LOGIC;
  signal \p0__2_n_103\ : STD_LOGIC;
  signal \p0__2_n_104\ : STD_LOGIC;
  signal \p0__2_n_105\ : STD_LOGIC;
  signal \p0__2_n_58\ : STD_LOGIC;
  signal \p0__2_n_59\ : STD_LOGIC;
  signal \p0__2_n_60\ : STD_LOGIC;
  signal \p0__2_n_61\ : STD_LOGIC;
  signal \p0__2_n_62\ : STD_LOGIC;
  signal \p0__2_n_63\ : STD_LOGIC;
  signal \p0__2_n_64\ : STD_LOGIC;
  signal \p0__2_n_65\ : STD_LOGIC;
  signal \p0__2_n_66\ : STD_LOGIC;
  signal \p0__2_n_67\ : STD_LOGIC;
  signal \p0__2_n_68\ : STD_LOGIC;
  signal \p0__2_n_69\ : STD_LOGIC;
  signal \p0__2_n_70\ : STD_LOGIC;
  signal \p0__2_n_71\ : STD_LOGIC;
  signal \p0__2_n_72\ : STD_LOGIC;
  signal \p0__2_n_73\ : STD_LOGIC;
  signal \p0__2_n_74\ : STD_LOGIC;
  signal \p0__2_n_75\ : STD_LOGIC;
  signal \p0__2_n_76\ : STD_LOGIC;
  signal \p0__2_n_77\ : STD_LOGIC;
  signal \p0__2_n_78\ : STD_LOGIC;
  signal \p0__2_n_79\ : STD_LOGIC;
  signal \p0__2_n_80\ : STD_LOGIC;
  signal \p0__2_n_81\ : STD_LOGIC;
  signal \p0__2_n_82\ : STD_LOGIC;
  signal \p0__2_n_83\ : STD_LOGIC;
  signal \p0__2_n_84\ : STD_LOGIC;
  signal \p0__2_n_85\ : STD_LOGIC;
  signal \p0__2_n_86\ : STD_LOGIC;
  signal \p0__2_n_87\ : STD_LOGIC;
  signal \p0__2_n_88\ : STD_LOGIC;
  signal \p0__2_n_89\ : STD_LOGIC;
  signal \p0__2_n_90\ : STD_LOGIC;
  signal \p0__2_n_91\ : STD_LOGIC;
  signal \p0__2_n_92\ : STD_LOGIC;
  signal \p0__2_n_93\ : STD_LOGIC;
  signal \p0__2_n_94\ : STD_LOGIC;
  signal \p0__2_n_95\ : STD_LOGIC;
  signal \p0__2_n_96\ : STD_LOGIC;
  signal \p0__2_n_97\ : STD_LOGIC;
  signal \p0__2_n_98\ : STD_LOGIC;
  signal \p0__2_n_99\ : STD_LOGIC;
  signal \p0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \p0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \p0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \p0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \p0_carry__0_n_0\ : STD_LOGIC;
  signal \p0_carry__0_n_1\ : STD_LOGIC;
  signal \p0_carry__0_n_2\ : STD_LOGIC;
  signal \p0_carry__0_n_3\ : STD_LOGIC;
  signal \p0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \p0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \p0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \p0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \p0_carry__1_n_0\ : STD_LOGIC;
  signal \p0_carry__1_n_1\ : STD_LOGIC;
  signal \p0_carry__1_n_2\ : STD_LOGIC;
  signal \p0_carry__1_n_3\ : STD_LOGIC;
  signal \p0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \p0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \p0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \p0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \p0_carry__2_n_0\ : STD_LOGIC;
  signal \p0_carry__2_n_1\ : STD_LOGIC;
  signal \p0_carry__2_n_2\ : STD_LOGIC;
  signal \p0_carry__2_n_3\ : STD_LOGIC;
  signal \p0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \p0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \p0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \p0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \p0_carry__3_n_0\ : STD_LOGIC;
  signal \p0_carry__3_n_1\ : STD_LOGIC;
  signal \p0_carry__3_n_2\ : STD_LOGIC;
  signal \p0_carry__3_n_3\ : STD_LOGIC;
  signal \p0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \p0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \p0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \p0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \p0_carry__4_n_0\ : STD_LOGIC;
  signal \p0_carry__4_n_1\ : STD_LOGIC;
  signal \p0_carry__4_n_2\ : STD_LOGIC;
  signal \p0_carry__4_n_3\ : STD_LOGIC;
  signal \p0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \p0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \p0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \p0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \p0_carry__5_n_0\ : STD_LOGIC;
  signal \p0_carry__5_n_1\ : STD_LOGIC;
  signal \p0_carry__5_n_2\ : STD_LOGIC;
  signal \p0_carry__5_n_3\ : STD_LOGIC;
  signal \p0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \p0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \p0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \p0_carry__6_i_4_n_0\ : STD_LOGIC;
  signal \p0_carry__6_n_1\ : STD_LOGIC;
  signal \p0_carry__6_n_2\ : STD_LOGIC;
  signal \p0_carry__6_n_3\ : STD_LOGIC;
  signal p0_carry_i_1_n_0 : STD_LOGIC;
  signal p0_carry_i_2_n_0 : STD_LOGIC;
  signal p0_carry_i_3_n_0 : STD_LOGIC;
  signal p0_carry_n_0 : STD_LOGIC;
  signal p0_carry_n_1 : STD_LOGIC;
  signal p0_carry_n_2 : STD_LOGIC;
  signal p0_carry_n_3 : STD_LOGIC;
  signal p0_n_100 : STD_LOGIC;
  signal p0_n_101 : STD_LOGIC;
  signal p0_n_102 : STD_LOGIC;
  signal p0_n_103 : STD_LOGIC;
  signal p0_n_104 : STD_LOGIC;
  signal p0_n_105 : STD_LOGIC;
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
  signal p0_n_58 : STD_LOGIC;
  signal p0_n_59 : STD_LOGIC;
  signal p0_n_60 : STD_LOGIC;
  signal p0_n_61 : STD_LOGIC;
  signal p0_n_62 : STD_LOGIC;
  signal p0_n_63 : STD_LOGIC;
  signal p0_n_64 : STD_LOGIC;
  signal p0_n_65 : STD_LOGIC;
  signal p0_n_66 : STD_LOGIC;
  signal p0_n_67 : STD_LOGIC;
  signal p0_n_68 : STD_LOGIC;
  signal p0_n_69 : STD_LOGIC;
  signal p0_n_70 : STD_LOGIC;
  signal p0_n_71 : STD_LOGIC;
  signal p0_n_72 : STD_LOGIC;
  signal p0_n_73 : STD_LOGIC;
  signal p0_n_74 : STD_LOGIC;
  signal p0_n_75 : STD_LOGIC;
  signal p0_n_76 : STD_LOGIC;
  signal p0_n_77 : STD_LOGIC;
  signal p0_n_78 : STD_LOGIC;
  signal p0_n_79 : STD_LOGIC;
  signal p0_n_80 : STD_LOGIC;
  signal p0_n_81 : STD_LOGIC;
  signal p0_n_82 : STD_LOGIC;
  signal p0_n_83 : STD_LOGIC;
  signal p0_n_84 : STD_LOGIC;
  signal p0_n_85 : STD_LOGIC;
  signal p0_n_86 : STD_LOGIC;
  signal p0_n_87 : STD_LOGIC;
  signal p0_n_88 : STD_LOGIC;
  signal p0_n_89 : STD_LOGIC;
  signal p0_n_90 : STD_LOGIC;
  signal p0_n_91 : STD_LOGIC;
  signal p0_n_92 : STD_LOGIC;
  signal p0_n_93 : STD_LOGIC;
  signal p0_n_94 : STD_LOGIC;
  signal p0_n_95 : STD_LOGIC;
  signal p0_n_96 : STD_LOGIC;
  signal p0_n_97 : STD_LOGIC;
  signal p0_n_98 : STD_LOGIC;
  signal p0_n_99 : STD_LOGIC;
  signal NLW_p0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_p0__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_p0__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_p0__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_p0__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__2_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__2_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__2_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__2_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__2_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__2_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__2_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_p0__2_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_p0__2_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__2_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_p0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p0 : label is "{SYNTH-10 {cell *THIS*} {string 10x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \p0__0\ : label is "{SYNTH-10 {cell *THIS*} {string 10x15 4}}";
  attribute METHODOLOGY_DRC_VIOS of \p0__1\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \p0__2\ : label is "{SYNTH-10 {cell *THIS*} {string 18x15 4}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of p0_carry : label is 35;
  attribute ADDER_THRESHOLD of \p0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \p0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \p0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \p0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \p0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \p0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \p0_carry__6\ : label is 35;
begin
  \p0__2_0\(30 downto 0) <= \^p0__2_0\(30 downto 0);
p0: unisim.vcomponents.DSP48E1
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
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => CFG_IN(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => P(26),
      B(16) => P(26),
      B(15) => P(26),
      B(14) => P(26),
      B(13) => P(26),
      B(12) => P(26),
      B(11) => P(26),
      B(10) => P(26),
      B(9 downto 0) => P(26 downto 17),
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
      MULTSIGNOUT => NLW_p0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_p0_OVERFLOW_UNCONNECTED,
      P(47) => p0_n_58,
      P(46) => p0_n_59,
      P(45) => p0_n_60,
      P(44) => p0_n_61,
      P(43) => p0_n_62,
      P(42) => p0_n_63,
      P(41) => p0_n_64,
      P(40) => p0_n_65,
      P(39) => p0_n_66,
      P(38) => p0_n_67,
      P(37) => p0_n_68,
      P(36) => p0_n_69,
      P(35) => p0_n_70,
      P(34) => p0_n_71,
      P(33) => p0_n_72,
      P(32) => p0_n_73,
      P(31) => p0_n_74,
      P(30) => p0_n_75,
      P(29) => p0_n_76,
      P(28) => p0_n_77,
      P(27) => p0_n_78,
      P(26) => p0_n_79,
      P(25) => p0_n_80,
      P(24) => p0_n_81,
      P(23) => p0_n_82,
      P(22) => p0_n_83,
      P(21) => p0_n_84,
      P(20) => p0_n_85,
      P(19) => p0_n_86,
      P(18) => p0_n_87,
      P(17) => p0_n_88,
      P(16) => p0_n_89,
      P(15) => p0_n_90,
      P(14) => p0_n_91,
      P(13) => p0_n_92,
      P(12) => p0_n_93,
      P(11) => p0_n_94,
      P(10) => p0_n_95,
      P(9) => p0_n_96,
      P(8) => p0_n_97,
      P(7) => p0_n_98,
      P(6) => p0_n_99,
      P(5) => p0_n_100,
      P(4) => p0_n_101,
      P(3) => p0_n_102,
      P(2) => p0_n_103,
      P(1) => p0_n_104,
      P(0) => p0_n_105,
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
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p0_UNDERFLOW_UNCONNECTED
    );
\p0__0\: unisim.vcomponents.DSP48E1
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
      A(29) => CFG_IN(31),
      A(28) => CFG_IN(31),
      A(27) => CFG_IN(31),
      A(26) => CFG_IN(31),
      A(25) => CFG_IN(31),
      A(24) => CFG_IN(31),
      A(23) => CFG_IN(31),
      A(22) => CFG_IN(31),
      A(21) => CFG_IN(31),
      A(20) => CFG_IN(31),
      A(19) => CFG_IN(31),
      A(18) => CFG_IN(31),
      A(17) => CFG_IN(31),
      A(16) => CFG_IN(31),
      A(15) => CFG_IN(31),
      A(14 downto 0) => CFG_IN(31 downto 17),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_p0__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => P(26),
      B(16) => P(26),
      B(15) => P(26),
      B(14) => P(26),
      B(13) => P(26),
      B(12) => P(26),
      B(11) => P(26),
      B(10) => P(26),
      B(9 downto 0) => P(26 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_p0__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p0__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p0__0_CARRYOUT_UNCONNECTED\(3 downto 0),
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
      MULTSIGNOUT => \NLW_p0__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_p0__0_OVERFLOW_UNCONNECTED\,
      P(47) => \p0__0_n_58\,
      P(46) => \p0__0_n_59\,
      P(45) => \p0__0_n_60\,
      P(44) => \p0__0_n_61\,
      P(43) => \p0__0_n_62\,
      P(42) => \p0__0_n_63\,
      P(41) => \p0__0_n_64\,
      P(40) => \p0__0_n_65\,
      P(39) => \p0__0_n_66\,
      P(38) => \p0__0_n_67\,
      P(37) => \p0__0_n_68\,
      P(36) => \p0__0_n_69\,
      P(35) => \p0__0_n_70\,
      P(34) => \p0__0_n_71\,
      P(33) => \p0__0_n_72\,
      P(32) => \p0__0_n_73\,
      P(31) => \p0__0_n_74\,
      P(30) => \p0__0_n_75\,
      P(29) => \p0__0_n_76\,
      P(28) => \p0__0_n_77\,
      P(27) => \p0__0_n_78\,
      P(26) => \p0__0_n_79\,
      P(25) => \p0__0_n_80\,
      P(24) => \p0__0_n_81\,
      P(23) => \p0__0_n_82\,
      P(22) => \p0__0_n_83\,
      P(21) => \p0__0_n_84\,
      P(20) => \p0__0_n_85\,
      P(19) => \p0__0_n_86\,
      P(18) => \p0__0_n_87\,
      P(17) => \p0__0_n_88\,
      P(16) => \p0__0_n_89\,
      P(15) => \p0__0_n_90\,
      P(14) => \p0__0_n_91\,
      P(13) => \p0__0_n_92\,
      P(12) => \p0__0_n_93\,
      P(11) => \p0__0_n_94\,
      P(10) => \p0__0_n_95\,
      P(9) => \p0__0_n_96\,
      P(8) => \p0__0_n_97\,
      P(7) => \p0__0_n_98\,
      P(6) => \p0__0_n_99\,
      P(5) => \p0__0_n_100\,
      P(4) => \p0__0_n_101\,
      P(3) => \p0__0_n_102\,
      P(2) => \p0__0_n_103\,
      P(1) => \p0__0_n_104\,
      P(0) => \p0__0_n_105\,
      PATTERNBDETECT => \NLW_p0__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p0__0_PATTERNDETECT_UNCONNECTED\,
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
      PCOUT(47 downto 0) => \NLW_p0__0_PCOUT_UNCONNECTED\(47 downto 0),
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
      UNDERFLOW => \NLW_p0__0_UNDERFLOW_UNCONNECTED\
    );
\p0__1\: unisim.vcomponents.DSP48E1
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
      A(29 downto 17) => B"0000000000000",
      A(16 downto 0) => P(16 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29) => \p0__1_n_24\,
      ACOUT(28) => \p0__1_n_25\,
      ACOUT(27) => \p0__1_n_26\,
      ACOUT(26) => \p0__1_n_27\,
      ACOUT(25) => \p0__1_n_28\,
      ACOUT(24) => \p0__1_n_29\,
      ACOUT(23) => \p0__1_n_30\,
      ACOUT(22) => \p0__1_n_31\,
      ACOUT(21) => \p0__1_n_32\,
      ACOUT(20) => \p0__1_n_33\,
      ACOUT(19) => \p0__1_n_34\,
      ACOUT(18) => \p0__1_n_35\,
      ACOUT(17) => \p0__1_n_36\,
      ACOUT(16) => \p0__1_n_37\,
      ACOUT(15) => \p0__1_n_38\,
      ACOUT(14) => \p0__1_n_39\,
      ACOUT(13) => \p0__1_n_40\,
      ACOUT(12) => \p0__1_n_41\,
      ACOUT(11) => \p0__1_n_42\,
      ACOUT(10) => \p0__1_n_43\,
      ACOUT(9) => \p0__1_n_44\,
      ACOUT(8) => \p0__1_n_45\,
      ACOUT(7) => \p0__1_n_46\,
      ACOUT(6) => \p0__1_n_47\,
      ACOUT(5) => \p0__1_n_48\,
      ACOUT(4) => \p0__1_n_49\,
      ACOUT(3) => \p0__1_n_50\,
      ACOUT(2) => \p0__1_n_51\,
      ACOUT(1) => \p0__1_n_52\,
      ACOUT(0) => \p0__1_n_53\,
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16 downto 0) => CFG_IN(16 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_p0__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p0__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p0__1_CARRYOUT_UNCONNECTED\(3 downto 0),
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
      MULTSIGNOUT => \NLW_p0__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_p0__1_OVERFLOW_UNCONNECTED\,
      P(47) => \p0__1_n_58\,
      P(46) => \p0__1_n_59\,
      P(45) => \p0__1_n_60\,
      P(44) => \p0__1_n_61\,
      P(43) => \p0__1_n_62\,
      P(42) => \p0__1_n_63\,
      P(41) => \p0__1_n_64\,
      P(40) => \p0__1_n_65\,
      P(39) => \p0__1_n_66\,
      P(38) => \p0__1_n_67\,
      P(37) => \p0__1_n_68\,
      P(36) => \p0__1_n_69\,
      P(35) => \p0__1_n_70\,
      P(34) => \p0__1_n_71\,
      P(33) => \p0__1_n_72\,
      P(32) => \p0__1_n_73\,
      P(31) => \p0__1_n_74\,
      P(30) => \p0__1_n_75\,
      P(29) => \p0__1_n_76\,
      P(28) => \p0__1_n_77\,
      P(27) => \p0__1_n_78\,
      P(26) => \p0__1_n_79\,
      P(25) => \p0__1_n_80\,
      P(24) => \p0__1_n_81\,
      P(23) => \p0__1_n_82\,
      P(22) => \p0__1_n_83\,
      P(21) => \p0__1_n_84\,
      P(20) => \p0__1_n_85\,
      P(19) => \p0__1_n_86\,
      P(18) => \p0__1_n_87\,
      P(17) => \p0__1_n_88\,
      P(16) => \p0__1_n_89\,
      P(15) => \p0__1_n_90\,
      P(14) => \p0__1_n_91\,
      P(13) => \p0__1_n_92\,
      P(12) => \p0__1_n_93\,
      P(11) => \p0__1_n_94\,
      P(10) => \p0__1_n_95\,
      P(9) => \p0__1_n_96\,
      P(8) => \p0__1_n_97\,
      P(7) => \p0__1_n_98\,
      P(6) => \p0__1_n_99\,
      P(5) => \p0__1_n_100\,
      P(4) => \p0__1_n_101\,
      P(3) => \p0__1_n_102\,
      P(2) => \p0__1_n_103\,
      P(1) => \p0__1_n_104\,
      P(0) => \p0__1_n_105\,
      PATTERNBDETECT => \NLW_p0__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p0__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \p0__1_n_106\,
      PCOUT(46) => \p0__1_n_107\,
      PCOUT(45) => \p0__1_n_108\,
      PCOUT(44) => \p0__1_n_109\,
      PCOUT(43) => \p0__1_n_110\,
      PCOUT(42) => \p0__1_n_111\,
      PCOUT(41) => \p0__1_n_112\,
      PCOUT(40) => \p0__1_n_113\,
      PCOUT(39) => \p0__1_n_114\,
      PCOUT(38) => \p0__1_n_115\,
      PCOUT(37) => \p0__1_n_116\,
      PCOUT(36) => \p0__1_n_117\,
      PCOUT(35) => \p0__1_n_118\,
      PCOUT(34) => \p0__1_n_119\,
      PCOUT(33) => \p0__1_n_120\,
      PCOUT(32) => \p0__1_n_121\,
      PCOUT(31) => \p0__1_n_122\,
      PCOUT(30) => \p0__1_n_123\,
      PCOUT(29) => \p0__1_n_124\,
      PCOUT(28) => \p0__1_n_125\,
      PCOUT(27) => \p0__1_n_126\,
      PCOUT(26) => \p0__1_n_127\,
      PCOUT(25) => \p0__1_n_128\,
      PCOUT(24) => \p0__1_n_129\,
      PCOUT(23) => \p0__1_n_130\,
      PCOUT(22) => \p0__1_n_131\,
      PCOUT(21) => \p0__1_n_132\,
      PCOUT(20) => \p0__1_n_133\,
      PCOUT(19) => \p0__1_n_134\,
      PCOUT(18) => \p0__1_n_135\,
      PCOUT(17) => \p0__1_n_136\,
      PCOUT(16) => \p0__1_n_137\,
      PCOUT(15) => \p0__1_n_138\,
      PCOUT(14) => \p0__1_n_139\,
      PCOUT(13) => \p0__1_n_140\,
      PCOUT(12) => \p0__1_n_141\,
      PCOUT(11) => \p0__1_n_142\,
      PCOUT(10) => \p0__1_n_143\,
      PCOUT(9) => \p0__1_n_144\,
      PCOUT(8) => \p0__1_n_145\,
      PCOUT(7) => \p0__1_n_146\,
      PCOUT(6) => \p0__1_n_147\,
      PCOUT(5) => \p0__1_n_148\,
      PCOUT(4) => \p0__1_n_149\,
      PCOUT(3) => \p0__1_n_150\,
      PCOUT(2) => \p0__1_n_151\,
      PCOUT(1) => \p0__1_n_152\,
      PCOUT(0) => \p0__1_n_153\,
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
      UNDERFLOW => \NLW_p0__1_UNDERFLOW_UNCONNECTED\
    );
\p0__2\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
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
      ACIN(29) => \p0__1_n_24\,
      ACIN(28) => \p0__1_n_25\,
      ACIN(27) => \p0__1_n_26\,
      ACIN(26) => \p0__1_n_27\,
      ACIN(25) => \p0__1_n_28\,
      ACIN(24) => \p0__1_n_29\,
      ACIN(23) => \p0__1_n_30\,
      ACIN(22) => \p0__1_n_31\,
      ACIN(21) => \p0__1_n_32\,
      ACIN(20) => \p0__1_n_33\,
      ACIN(19) => \p0__1_n_34\,
      ACIN(18) => \p0__1_n_35\,
      ACIN(17) => \p0__1_n_36\,
      ACIN(16) => \p0__1_n_37\,
      ACIN(15) => \p0__1_n_38\,
      ACIN(14) => \p0__1_n_39\,
      ACIN(13) => \p0__1_n_40\,
      ACIN(12) => \p0__1_n_41\,
      ACIN(11) => \p0__1_n_42\,
      ACIN(10) => \p0__1_n_43\,
      ACIN(9) => \p0__1_n_44\,
      ACIN(8) => \p0__1_n_45\,
      ACIN(7) => \p0__1_n_46\,
      ACIN(6) => \p0__1_n_47\,
      ACIN(5) => \p0__1_n_48\,
      ACIN(4) => \p0__1_n_49\,
      ACIN(3) => \p0__1_n_50\,
      ACIN(2) => \p0__1_n_51\,
      ACIN(1) => \p0__1_n_52\,
      ACIN(0) => \p0__1_n_53\,
      ACOUT(29 downto 0) => \NLW_p0__2_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => CFG_IN(31),
      B(16) => CFG_IN(31),
      B(15) => CFG_IN(31),
      B(14 downto 0) => CFG_IN(31 downto 17),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_p0__2_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p0__2_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p0__2_CARRYOUT_UNCONNECTED\(3 downto 0),
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
      MULTSIGNOUT => \NLW_p0__2_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_p0__2_OVERFLOW_UNCONNECTED\,
      P(47) => \p0__2_n_58\,
      P(46) => \p0__2_n_59\,
      P(45) => \p0__2_n_60\,
      P(44) => \p0__2_n_61\,
      P(43) => \p0__2_n_62\,
      P(42) => \p0__2_n_63\,
      P(41) => \p0__2_n_64\,
      P(40) => \p0__2_n_65\,
      P(39) => \p0__2_n_66\,
      P(38) => \p0__2_n_67\,
      P(37) => \p0__2_n_68\,
      P(36) => \p0__2_n_69\,
      P(35) => \p0__2_n_70\,
      P(34) => \p0__2_n_71\,
      P(33) => \p0__2_n_72\,
      P(32) => \p0__2_n_73\,
      P(31) => \p0__2_n_74\,
      P(30) => \p0__2_n_75\,
      P(29) => \p0__2_n_76\,
      P(28) => \p0__2_n_77\,
      P(27) => \p0__2_n_78\,
      P(26) => \p0__2_n_79\,
      P(25) => \p0__2_n_80\,
      P(24) => \p0__2_n_81\,
      P(23) => \p0__2_n_82\,
      P(22) => \p0__2_n_83\,
      P(21) => \p0__2_n_84\,
      P(20) => \p0__2_n_85\,
      P(19) => \p0__2_n_86\,
      P(18) => \p0__2_n_87\,
      P(17) => \p0__2_n_88\,
      P(16) => \p0__2_n_89\,
      P(15) => \p0__2_n_90\,
      P(14) => \p0__2_n_91\,
      P(13) => \p0__2_n_92\,
      P(12) => \p0__2_n_93\,
      P(11) => \p0__2_n_94\,
      P(10) => \p0__2_n_95\,
      P(9) => \p0__2_n_96\,
      P(8) => \p0__2_n_97\,
      P(7) => \p0__2_n_98\,
      P(6) => \p0__2_n_99\,
      P(5) => \p0__2_n_100\,
      P(4) => \p0__2_n_101\,
      P(3) => \p0__2_n_102\,
      P(2) => \p0__2_n_103\,
      P(1) => \p0__2_n_104\,
      P(0) => \p0__2_n_105\,
      PATTERNBDETECT => \NLW_p0__2_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p0__2_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \p0__1_n_106\,
      PCIN(46) => \p0__1_n_107\,
      PCIN(45) => \p0__1_n_108\,
      PCIN(44) => \p0__1_n_109\,
      PCIN(43) => \p0__1_n_110\,
      PCIN(42) => \p0__1_n_111\,
      PCIN(41) => \p0__1_n_112\,
      PCIN(40) => \p0__1_n_113\,
      PCIN(39) => \p0__1_n_114\,
      PCIN(38) => \p0__1_n_115\,
      PCIN(37) => \p0__1_n_116\,
      PCIN(36) => \p0__1_n_117\,
      PCIN(35) => \p0__1_n_118\,
      PCIN(34) => \p0__1_n_119\,
      PCIN(33) => \p0__1_n_120\,
      PCIN(32) => \p0__1_n_121\,
      PCIN(31) => \p0__1_n_122\,
      PCIN(30) => \p0__1_n_123\,
      PCIN(29) => \p0__1_n_124\,
      PCIN(28) => \p0__1_n_125\,
      PCIN(27) => \p0__1_n_126\,
      PCIN(26) => \p0__1_n_127\,
      PCIN(25) => \p0__1_n_128\,
      PCIN(24) => \p0__1_n_129\,
      PCIN(23) => \p0__1_n_130\,
      PCIN(22) => \p0__1_n_131\,
      PCIN(21) => \p0__1_n_132\,
      PCIN(20) => \p0__1_n_133\,
      PCIN(19) => \p0__1_n_134\,
      PCIN(18) => \p0__1_n_135\,
      PCIN(17) => \p0__1_n_136\,
      PCIN(16) => \p0__1_n_137\,
      PCIN(15) => \p0__1_n_138\,
      PCIN(14) => \p0__1_n_139\,
      PCIN(13) => \p0__1_n_140\,
      PCIN(12) => \p0__1_n_141\,
      PCIN(11) => \p0__1_n_142\,
      PCIN(10) => \p0__1_n_143\,
      PCIN(9) => \p0__1_n_144\,
      PCIN(8) => \p0__1_n_145\,
      PCIN(7) => \p0__1_n_146\,
      PCIN(6) => \p0__1_n_147\,
      PCIN(5) => \p0__1_n_148\,
      PCIN(4) => \p0__1_n_149\,
      PCIN(3) => \p0__1_n_150\,
      PCIN(2) => \p0__1_n_151\,
      PCIN(1) => \p0__1_n_152\,
      PCIN(0) => \p0__1_n_153\,
      PCOUT(47 downto 0) => \NLW_p0__2_PCOUT_UNCONNECTED\(47 downto 0),
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
      UNDERFLOW => \NLW_p0__2_UNDERFLOW_UNCONNECTED\
    );
p0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p0_carry_n_0,
      CO(2) => p0_carry_n_1,
      CO(1) => p0_carry_n_2,
      CO(0) => p0_carry_n_3,
      CYINIT => '0',
      DI(3) => \p0__2_n_103\,
      DI(2) => \p0__2_n_104\,
      DI(1) => \p0__2_n_105\,
      DI(0) => '0',
      O(3 downto 0) => \^p0__2_0\(3 downto 0),
      S(3) => p0_carry_i_1_n_0,
      S(2) => p0_carry_i_2_n_0,
      S(1) => p0_carry_i_3_n_0,
      S(0) => \p0__1_n_89\
    );
\p0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => p0_carry_n_0,
      CO(3) => \p0_carry__0_n_0\,
      CO(2) => \p0_carry__0_n_1\,
      CO(1) => \p0_carry__0_n_2\,
      CO(0) => \p0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \p0__2_n_99\,
      DI(2) => \p0__2_n_100\,
      DI(1) => \p0__2_n_101\,
      DI(0) => \p0__2_n_102\,
      O(3 downto 0) => \^p0__2_0\(7 downto 4),
      S(3) => \p0_carry__0_i_1_n_0\,
      S(2) => \p0_carry__0_i_2_n_0\,
      S(1) => \p0_carry__0_i_3_n_0\,
      S(0) => \p0_carry__0_i_4_n_0\
    );
\p0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_99\,
      I1 => p0_n_99,
      O => \p0_carry__0_i_1_n_0\
    );
\p0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_100\,
      I1 => p0_n_100,
      O => \p0_carry__0_i_2_n_0\
    );
\p0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_101\,
      I1 => p0_n_101,
      O => \p0_carry__0_i_3_n_0\
    );
\p0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_102\,
      I1 => p0_n_102,
      O => \p0_carry__0_i_4_n_0\
    );
\p0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \p0_carry__0_n_0\,
      CO(3) => \p0_carry__1_n_0\,
      CO(2) => \p0_carry__1_n_1\,
      CO(1) => \p0_carry__1_n_2\,
      CO(0) => \p0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \p0__2_n_95\,
      DI(2) => \p0__2_n_96\,
      DI(1) => \p0__2_n_97\,
      DI(0) => \p0__2_n_98\,
      O(3 downto 0) => \^p0__2_0\(11 downto 8),
      S(3) => \p0_carry__1_i_1_n_0\,
      S(2) => \p0_carry__1_i_2_n_0\,
      S(1) => \p0_carry__1_i_3_n_0\,
      S(0) => \p0_carry__1_i_4_n_0\
    );
\p0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_95\,
      I1 => p0_n_95,
      O => \p0_carry__1_i_1_n_0\
    );
\p0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_96\,
      I1 => p0_n_96,
      O => \p0_carry__1_i_2_n_0\
    );
\p0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_97\,
      I1 => p0_n_97,
      O => \p0_carry__1_i_3_n_0\
    );
\p0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_98\,
      I1 => p0_n_98,
      O => \p0_carry__1_i_4_n_0\
    );
\p0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \p0_carry__1_n_0\,
      CO(3) => \p0_carry__2_n_0\,
      CO(2) => \p0_carry__2_n_1\,
      CO(1) => \p0_carry__2_n_2\,
      CO(0) => \p0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \p0__2_n_91\,
      DI(2) => \p0__2_n_92\,
      DI(1) => \p0__2_n_93\,
      DI(0) => \p0__2_n_94\,
      O(3 downto 0) => \^p0__2_0\(15 downto 12),
      S(3) => \p0_carry__2_i_1_n_0\,
      S(2) => \p0_carry__2_i_2_n_0\,
      S(1) => \p0_carry__2_i_3_n_0\,
      S(0) => \p0_carry__2_i_4_n_0\
    );
\p0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_91\,
      I1 => p0_n_91,
      O => \p0_carry__2_i_1_n_0\
    );
\p0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_92\,
      I1 => p0_n_92,
      O => \p0_carry__2_i_2_n_0\
    );
\p0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_93\,
      I1 => p0_n_93,
      O => \p0_carry__2_i_3_n_0\
    );
\p0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_94\,
      I1 => p0_n_94,
      O => \p0_carry__2_i_4_n_0\
    );
\p0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \p0_carry__2_n_0\,
      CO(3) => \p0_carry__3_n_0\,
      CO(2) => \p0_carry__3_n_1\,
      CO(1) => \p0_carry__3_n_2\,
      CO(0) => \p0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \p0__2_n_87\,
      DI(2) => \p0__2_n_88\,
      DI(1) => \p0__2_n_89\,
      DI(0) => \p0__2_n_90\,
      O(3 downto 0) => \^p0__2_0\(19 downto 16),
      S(3) => \p0_carry__3_i_1_n_0\,
      S(2) => \p0_carry__3_i_2_n_0\,
      S(1) => \p0_carry__3_i_3_n_0\,
      S(0) => \p0_carry__3_i_4_n_0\
    );
\p0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_87\,
      I1 => \p0__0_n_104\,
      O => \p0_carry__3_i_1_n_0\
    );
\p0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_88\,
      I1 => \p0__0_n_105\,
      O => \p0_carry__3_i_2_n_0\
    );
\p0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_89\,
      I1 => p0_n_89,
      O => \p0_carry__3_i_3_n_0\
    );
\p0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_90\,
      I1 => p0_n_90,
      O => \p0_carry__3_i_4_n_0\
    );
\p0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \p0_carry__3_n_0\,
      CO(3) => \p0_carry__4_n_0\,
      CO(2) => \p0_carry__4_n_1\,
      CO(1) => \p0_carry__4_n_2\,
      CO(0) => \p0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \p0__2_n_83\,
      DI(2) => \p0__2_n_84\,
      DI(1) => \p0__2_n_85\,
      DI(0) => \p0__2_n_86\,
      O(3 downto 0) => \^p0__2_0\(23 downto 20),
      S(3) => \p0_carry__4_i_1_n_0\,
      S(2) => \p0_carry__4_i_2_n_0\,
      S(1) => \p0_carry__4_i_3_n_0\,
      S(0) => \p0_carry__4_i_4_n_0\
    );
\p0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_83\,
      I1 => \p0__0_n_100\,
      O => \p0_carry__4_i_1_n_0\
    );
\p0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_84\,
      I1 => \p0__0_n_101\,
      O => \p0_carry__4_i_2_n_0\
    );
\p0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_85\,
      I1 => \p0__0_n_102\,
      O => \p0_carry__4_i_3_n_0\
    );
\p0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_86\,
      I1 => \p0__0_n_103\,
      O => \p0_carry__4_i_4_n_0\
    );
\p0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \p0_carry__4_n_0\,
      CO(3) => \p0_carry__5_n_0\,
      CO(2) => \p0_carry__5_n_1\,
      CO(1) => \p0_carry__5_n_2\,
      CO(0) => \p0_carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \p0__2_n_79\,
      DI(2) => \p0__2_n_80\,
      DI(1) => \p0__2_n_81\,
      DI(0) => \p0__2_n_82\,
      O(3 downto 0) => \^p0__2_0\(27 downto 24),
      S(3) => \p0_carry__5_i_1_n_0\,
      S(2) => \p0_carry__5_i_2_n_0\,
      S(1) => \p0_carry__5_i_3_n_0\,
      S(0) => \p0_carry__5_i_4_n_0\
    );
\p0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_79\,
      I1 => \p0__0_n_96\,
      O => \p0_carry__5_i_1_n_0\
    );
\p0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_80\,
      I1 => \p0__0_n_97\,
      O => \p0_carry__5_i_2_n_0\
    );
\p0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_81\,
      I1 => \p0__0_n_98\,
      O => \p0_carry__5_i_3_n_0\
    );
\p0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_82\,
      I1 => \p0__0_n_99\,
      O => \p0_carry__5_i_4_n_0\
    );
\p0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \p0_carry__5_n_0\,
      CO(3) => \NLW_p0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \p0_carry__6_n_1\,
      CO(1) => \p0_carry__6_n_2\,
      CO(0) => \p0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \p0__2_n_76\,
      DI(1) => \p0__2_n_77\,
      DI(0) => \p0__2_n_78\,
      O(3) => a(31),
      O(2 downto 0) => \^p0__2_0\(30 downto 28),
      S(3) => \p0_carry__6_i_1_n_0\,
      S(2) => \p0_carry__6_i_2_n_0\,
      S(1) => \p0_carry__6_i_3_n_0\,
      S(0) => \p0_carry__6_i_4_n_0\
    );
\p0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_75\,
      I1 => \p0__0_n_92\,
      O => \p0_carry__6_i_1_n_0\
    );
\p0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_76\,
      I1 => \p0__0_n_93\,
      O => \p0_carry__6_i_2_n_0\
    );
\p0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_77\,
      I1 => \p0__0_n_94\,
      O => \p0_carry__6_i_3_n_0\
    );
\p0_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_78\,
      I1 => \p0__0_n_95\,
      O => \p0_carry__6_i_4_n_0\
    );
p0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_103\,
      I1 => p0_n_103,
      O => p0_carry_i_1_n_0
    );
p0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_104\,
      I1 => p0_n_104,
      O => p0_carry_i_2_n_0
    );
p0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_105\,
      I1 => p0_n_105,
      O => p0_carry_i_3_n_0
    );
\s0_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(7),
      I1 => CFG_IN(39),
      O => \CFG_IN[39]\(3)
    );
\s0_carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(6),
      I1 => CFG_IN(38),
      O => \CFG_IN[39]\(2)
    );
\s0_carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(5),
      I1 => CFG_IN(37),
      O => \CFG_IN[39]\(1)
    );
\s0_carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(4),
      I1 => CFG_IN(36),
      O => \CFG_IN[39]\(0)
    );
\s0_carry__1_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(11),
      I1 => CFG_IN(43),
      O => \CFG_IN[43]\(3)
    );
\s0_carry__1_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(10),
      I1 => CFG_IN(42),
      O => \CFG_IN[43]\(2)
    );
\s0_carry__1_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(9),
      I1 => CFG_IN(41),
      O => \CFG_IN[43]\(1)
    );
\s0_carry__1_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(8),
      I1 => CFG_IN(40),
      O => \CFG_IN[43]\(0)
    );
\s0_carry__2_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(15),
      I1 => CFG_IN(47),
      O => \CFG_IN[47]\(3)
    );
\s0_carry__2_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(14),
      I1 => CFG_IN(46),
      O => \CFG_IN[47]\(2)
    );
\s0_carry__2_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(13),
      I1 => CFG_IN(45),
      O => \CFG_IN[47]\(1)
    );
\s0_carry__2_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(12),
      I1 => CFG_IN(44),
      O => \CFG_IN[47]\(0)
    );
\s0_carry__3_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(19),
      I1 => CFG_IN(51),
      O => \CFG_IN[51]\(3)
    );
\s0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(18),
      I1 => CFG_IN(50),
      O => \CFG_IN[51]\(2)
    );
\s0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(17),
      I1 => CFG_IN(49),
      O => \CFG_IN[51]\(1)
    );
\s0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(16),
      I1 => CFG_IN(48),
      O => \CFG_IN[51]\(0)
    );
\s0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(23),
      I1 => CFG_IN(55),
      O => \CFG_IN[55]\(3)
    );
\s0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(22),
      I1 => CFG_IN(54),
      O => \CFG_IN[55]\(2)
    );
\s0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(21),
      I1 => CFG_IN(53),
      O => \CFG_IN[55]\(1)
    );
\s0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(20),
      I1 => CFG_IN(52),
      O => \CFG_IN[55]\(0)
    );
\s0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(27),
      I1 => CFG_IN(59),
      O => \CFG_IN[59]\(3)
    );
\s0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(26),
      I1 => CFG_IN(58),
      O => \CFG_IN[59]\(2)
    );
\s0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(25),
      I1 => CFG_IN(57),
      O => \CFG_IN[59]\(1)
    );
\s0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(24),
      I1 => CFG_IN(56),
      O => \CFG_IN[59]\(0)
    );
\s0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => a(31),
      I1 => CFG_IN(63),
      O => \CFG_IN[63]\(3)
    );
\s0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(30),
      I1 => CFG_IN(62),
      O => \CFG_IN[63]\(2)
    );
\s0_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(29),
      I1 => CFG_IN(61),
      O => \CFG_IN[63]\(1)
    );
\s0_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(28),
      I1 => CFG_IN(60),
      O => \CFG_IN[63]\(0)
    );
\s0_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(3),
      I1 => CFG_IN(35),
      O => S(3)
    );
\s0_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(2),
      I1 => CFG_IN(34),
      O => S(2)
    );
\s0_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(1),
      I1 => CFG_IN(33),
      O => S(1)
    );
\s0_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^p0__2_0\(0),
      I1 => CFG_IN(32),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_DAC_LOOP_0_gen_mult_0 is
  port (
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \p0_inferred__1/i__carry_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \p0_inferred__1/i__carry_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CFG_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    GP_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_DAC_LOOP_0_gen_mult_0 : entity is "gen_mult";
end system_ADC_DAC_LOOP_0_gen_mult_0;

architecture STRUCTURE of system_ADC_DAC_LOOP_0_gen_mult_0 is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^o\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \NLW_p0_inferred__1/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_p0_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
  CO(0) <= \^co\(0);
  O(1 downto 0) <= \^o\(1 downto 0);
p0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CFG_IN(0),
      I1 => GP_OUT(0),
      O => DI(0)
    );
\p0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_p0_inferred__1/i__carry_CO_UNCONNECTED\(3),
      CO(2) => \^co\(0),
      CO(1) => \NLW_p0_inferred__1/i__carry_CO_UNCONNECTED\(1),
      CO(0) => \p0_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0010",
      O(3 downto 2) => \NLW_p0_inferred__1/i__carry_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \^o\(1 downto 0),
      S(3 downto 2) => B"01",
      S(1 downto 0) => S(1 downto 0)
    );
\s0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^o\(1),
      O => \p0_inferred__1/i__carry_1\(1)
    );
\s0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^o\(0),
      O => \p0_inferred__1/i__carry_1\(0)
    );
\s0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^co\(0),
      O => \p0_inferred__1/i__carry_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_DAC_LOOP_0_gen_mult_2 is
  port (
    DACB_CODE_OUT : out STD_LOGIC_VECTOR ( 13 downto 0 );
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_DAC_LOOP_0_gen_mult_2 : entity is "gen_mult";
end system_ADC_DAC_LOOP_0_gen_mult_2;

architecture STRUCTURE of system_ADC_DAC_LOOP_0_gen_mult_2 is
  signal \DACB_CODE_OUT[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_16_n_1\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_16_n_2\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_16_n_3\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_n_1\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_n_2\ : STD_LOGIC;
  signal \DACB_CODE_OUT[0]_INST_0_n_3\ : STD_LOGIC;
  signal \DACB_CODE_OUT[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[12]_INST_0_n_3\ : STD_LOGIC;
  signal \DACB_CODE_OUT[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[4]_INST_0_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[4]_INST_0_n_1\ : STD_LOGIC;
  signal \DACB_CODE_OUT[4]_INST_0_n_2\ : STD_LOGIC;
  signal \DACB_CODE_OUT[4]_INST_0_n_3\ : STD_LOGIC;
  signal \DACB_CODE_OUT[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[8]_INST_0_n_0\ : STD_LOGIC;
  signal \DACB_CODE_OUT[8]_INST_0_n_1\ : STD_LOGIC;
  signal \DACB_CODE_OUT[8]_INST_0_n_2\ : STD_LOGIC;
  signal \DACB_CODE_OUT[8]_INST_0_n_3\ : STD_LOGIC;
  signal \p0__0_n_100\ : STD_LOGIC;
  signal \p0__0_n_101\ : STD_LOGIC;
  signal \p0__0_n_102\ : STD_LOGIC;
  signal \p0__0_n_103\ : STD_LOGIC;
  signal \p0__0_n_104\ : STD_LOGIC;
  signal \p0__0_n_105\ : STD_LOGIC;
  signal \p0__0_n_58\ : STD_LOGIC;
  signal \p0__0_n_59\ : STD_LOGIC;
  signal \p0__0_n_60\ : STD_LOGIC;
  signal \p0__0_n_61\ : STD_LOGIC;
  signal \p0__0_n_62\ : STD_LOGIC;
  signal \p0__0_n_63\ : STD_LOGIC;
  signal \p0__0_n_64\ : STD_LOGIC;
  signal \p0__0_n_65\ : STD_LOGIC;
  signal \p0__0_n_66\ : STD_LOGIC;
  signal \p0__0_n_67\ : STD_LOGIC;
  signal \p0__0_n_68\ : STD_LOGIC;
  signal \p0__0_n_69\ : STD_LOGIC;
  signal \p0__0_n_70\ : STD_LOGIC;
  signal \p0__0_n_71\ : STD_LOGIC;
  signal \p0__0_n_72\ : STD_LOGIC;
  signal \p0__0_n_73\ : STD_LOGIC;
  signal \p0__0_n_74\ : STD_LOGIC;
  signal \p0__0_n_75\ : STD_LOGIC;
  signal \p0__0_n_76\ : STD_LOGIC;
  signal \p0__0_n_77\ : STD_LOGIC;
  signal \p0__0_n_78\ : STD_LOGIC;
  signal \p0__0_n_79\ : STD_LOGIC;
  signal \p0__0_n_80\ : STD_LOGIC;
  signal \p0__0_n_81\ : STD_LOGIC;
  signal \p0__0_n_82\ : STD_LOGIC;
  signal \p0__0_n_83\ : STD_LOGIC;
  signal \p0__0_n_84\ : STD_LOGIC;
  signal \p0__0_n_85\ : STD_LOGIC;
  signal \p0__0_n_86\ : STD_LOGIC;
  signal \p0__0_n_87\ : STD_LOGIC;
  signal \p0__0_n_88\ : STD_LOGIC;
  signal \p0__0_n_89\ : STD_LOGIC;
  signal \p0__0_n_90\ : STD_LOGIC;
  signal \p0__0_n_91\ : STD_LOGIC;
  signal \p0__0_n_92\ : STD_LOGIC;
  signal \p0__0_n_93\ : STD_LOGIC;
  signal \p0__0_n_94\ : STD_LOGIC;
  signal \p0__0_n_95\ : STD_LOGIC;
  signal \p0__0_n_96\ : STD_LOGIC;
  signal \p0__0_n_97\ : STD_LOGIC;
  signal \p0__0_n_98\ : STD_LOGIC;
  signal \p0__0_n_99\ : STD_LOGIC;
  signal \p0__1_n_100\ : STD_LOGIC;
  signal \p0__1_n_101\ : STD_LOGIC;
  signal \p0__1_n_102\ : STD_LOGIC;
  signal \p0__1_n_103\ : STD_LOGIC;
  signal \p0__1_n_104\ : STD_LOGIC;
  signal \p0__1_n_105\ : STD_LOGIC;
  signal \p0__1_n_106\ : STD_LOGIC;
  signal \p0__1_n_107\ : STD_LOGIC;
  signal \p0__1_n_108\ : STD_LOGIC;
  signal \p0__1_n_109\ : STD_LOGIC;
  signal \p0__1_n_110\ : STD_LOGIC;
  signal \p0__1_n_111\ : STD_LOGIC;
  signal \p0__1_n_112\ : STD_LOGIC;
  signal \p0__1_n_113\ : STD_LOGIC;
  signal \p0__1_n_114\ : STD_LOGIC;
  signal \p0__1_n_115\ : STD_LOGIC;
  signal \p0__1_n_116\ : STD_LOGIC;
  signal \p0__1_n_117\ : STD_LOGIC;
  signal \p0__1_n_118\ : STD_LOGIC;
  signal \p0__1_n_119\ : STD_LOGIC;
  signal \p0__1_n_120\ : STD_LOGIC;
  signal \p0__1_n_121\ : STD_LOGIC;
  signal \p0__1_n_122\ : STD_LOGIC;
  signal \p0__1_n_123\ : STD_LOGIC;
  signal \p0__1_n_124\ : STD_LOGIC;
  signal \p0__1_n_125\ : STD_LOGIC;
  signal \p0__1_n_126\ : STD_LOGIC;
  signal \p0__1_n_127\ : STD_LOGIC;
  signal \p0__1_n_128\ : STD_LOGIC;
  signal \p0__1_n_129\ : STD_LOGIC;
  signal \p0__1_n_130\ : STD_LOGIC;
  signal \p0__1_n_131\ : STD_LOGIC;
  signal \p0__1_n_132\ : STD_LOGIC;
  signal \p0__1_n_133\ : STD_LOGIC;
  signal \p0__1_n_134\ : STD_LOGIC;
  signal \p0__1_n_135\ : STD_LOGIC;
  signal \p0__1_n_136\ : STD_LOGIC;
  signal \p0__1_n_137\ : STD_LOGIC;
  signal \p0__1_n_138\ : STD_LOGIC;
  signal \p0__1_n_139\ : STD_LOGIC;
  signal \p0__1_n_140\ : STD_LOGIC;
  signal \p0__1_n_141\ : STD_LOGIC;
  signal \p0__1_n_142\ : STD_LOGIC;
  signal \p0__1_n_143\ : STD_LOGIC;
  signal \p0__1_n_144\ : STD_LOGIC;
  signal \p0__1_n_145\ : STD_LOGIC;
  signal \p0__1_n_146\ : STD_LOGIC;
  signal \p0__1_n_147\ : STD_LOGIC;
  signal \p0__1_n_148\ : STD_LOGIC;
  signal \p0__1_n_149\ : STD_LOGIC;
  signal \p0__1_n_150\ : STD_LOGIC;
  signal \p0__1_n_151\ : STD_LOGIC;
  signal \p0__1_n_152\ : STD_LOGIC;
  signal \p0__1_n_153\ : STD_LOGIC;
  signal \p0__1_n_24\ : STD_LOGIC;
  signal \p0__1_n_25\ : STD_LOGIC;
  signal \p0__1_n_26\ : STD_LOGIC;
  signal \p0__1_n_27\ : STD_LOGIC;
  signal \p0__1_n_28\ : STD_LOGIC;
  signal \p0__1_n_29\ : STD_LOGIC;
  signal \p0__1_n_30\ : STD_LOGIC;
  signal \p0__1_n_31\ : STD_LOGIC;
  signal \p0__1_n_32\ : STD_LOGIC;
  signal \p0__1_n_33\ : STD_LOGIC;
  signal \p0__1_n_34\ : STD_LOGIC;
  signal \p0__1_n_35\ : STD_LOGIC;
  signal \p0__1_n_36\ : STD_LOGIC;
  signal \p0__1_n_37\ : STD_LOGIC;
  signal \p0__1_n_38\ : STD_LOGIC;
  signal \p0__1_n_39\ : STD_LOGIC;
  signal \p0__1_n_40\ : STD_LOGIC;
  signal \p0__1_n_41\ : STD_LOGIC;
  signal \p0__1_n_42\ : STD_LOGIC;
  signal \p0__1_n_43\ : STD_LOGIC;
  signal \p0__1_n_44\ : STD_LOGIC;
  signal \p0__1_n_45\ : STD_LOGIC;
  signal \p0__1_n_46\ : STD_LOGIC;
  signal \p0__1_n_47\ : STD_LOGIC;
  signal \p0__1_n_48\ : STD_LOGIC;
  signal \p0__1_n_49\ : STD_LOGIC;
  signal \p0__1_n_50\ : STD_LOGIC;
  signal \p0__1_n_51\ : STD_LOGIC;
  signal \p0__1_n_52\ : STD_LOGIC;
  signal \p0__1_n_53\ : STD_LOGIC;
  signal \p0__1_n_58\ : STD_LOGIC;
  signal \p0__1_n_59\ : STD_LOGIC;
  signal \p0__1_n_60\ : STD_LOGIC;
  signal \p0__1_n_61\ : STD_LOGIC;
  signal \p0__1_n_62\ : STD_LOGIC;
  signal \p0__1_n_63\ : STD_LOGIC;
  signal \p0__1_n_64\ : STD_LOGIC;
  signal \p0__1_n_65\ : STD_LOGIC;
  signal \p0__1_n_66\ : STD_LOGIC;
  signal \p0__1_n_67\ : STD_LOGIC;
  signal \p0__1_n_68\ : STD_LOGIC;
  signal \p0__1_n_69\ : STD_LOGIC;
  signal \p0__1_n_70\ : STD_LOGIC;
  signal \p0__1_n_71\ : STD_LOGIC;
  signal \p0__1_n_72\ : STD_LOGIC;
  signal \p0__1_n_73\ : STD_LOGIC;
  signal \p0__1_n_74\ : STD_LOGIC;
  signal \p0__1_n_75\ : STD_LOGIC;
  signal \p0__1_n_76\ : STD_LOGIC;
  signal \p0__1_n_77\ : STD_LOGIC;
  signal \p0__1_n_78\ : STD_LOGIC;
  signal \p0__1_n_79\ : STD_LOGIC;
  signal \p0__1_n_80\ : STD_LOGIC;
  signal \p0__1_n_81\ : STD_LOGIC;
  signal \p0__1_n_82\ : STD_LOGIC;
  signal \p0__1_n_83\ : STD_LOGIC;
  signal \p0__1_n_84\ : STD_LOGIC;
  signal \p0__1_n_85\ : STD_LOGIC;
  signal \p0__1_n_86\ : STD_LOGIC;
  signal \p0__1_n_87\ : STD_LOGIC;
  signal \p0__1_n_88\ : STD_LOGIC;
  signal \p0__1_n_89\ : STD_LOGIC;
  signal \p0__1_n_90\ : STD_LOGIC;
  signal \p0__1_n_91\ : STD_LOGIC;
  signal \p0__1_n_92\ : STD_LOGIC;
  signal \p0__1_n_93\ : STD_LOGIC;
  signal \p0__1_n_94\ : STD_LOGIC;
  signal \p0__1_n_95\ : STD_LOGIC;
  signal \p0__1_n_96\ : STD_LOGIC;
  signal \p0__1_n_97\ : STD_LOGIC;
  signal \p0__1_n_98\ : STD_LOGIC;
  signal \p0__1_n_99\ : STD_LOGIC;
  signal \p0__2_n_100\ : STD_LOGIC;
  signal \p0__2_n_101\ : STD_LOGIC;
  signal \p0__2_n_102\ : STD_LOGIC;
  signal \p0__2_n_103\ : STD_LOGIC;
  signal \p0__2_n_104\ : STD_LOGIC;
  signal \p0__2_n_105\ : STD_LOGIC;
  signal \p0__2_n_58\ : STD_LOGIC;
  signal \p0__2_n_59\ : STD_LOGIC;
  signal \p0__2_n_60\ : STD_LOGIC;
  signal \p0__2_n_61\ : STD_LOGIC;
  signal \p0__2_n_62\ : STD_LOGIC;
  signal \p0__2_n_63\ : STD_LOGIC;
  signal \p0__2_n_64\ : STD_LOGIC;
  signal \p0__2_n_65\ : STD_LOGIC;
  signal \p0__2_n_66\ : STD_LOGIC;
  signal \p0__2_n_67\ : STD_LOGIC;
  signal \p0__2_n_68\ : STD_LOGIC;
  signal \p0__2_n_69\ : STD_LOGIC;
  signal \p0__2_n_70\ : STD_LOGIC;
  signal \p0__2_n_71\ : STD_LOGIC;
  signal \p0__2_n_72\ : STD_LOGIC;
  signal \p0__2_n_73\ : STD_LOGIC;
  signal \p0__2_n_74\ : STD_LOGIC;
  signal \p0__2_n_75\ : STD_LOGIC;
  signal \p0__2_n_76\ : STD_LOGIC;
  signal \p0__2_n_77\ : STD_LOGIC;
  signal \p0__2_n_78\ : STD_LOGIC;
  signal \p0__2_n_79\ : STD_LOGIC;
  signal \p0__2_n_80\ : STD_LOGIC;
  signal \p0__2_n_81\ : STD_LOGIC;
  signal \p0__2_n_82\ : STD_LOGIC;
  signal \p0__2_n_83\ : STD_LOGIC;
  signal \p0__2_n_84\ : STD_LOGIC;
  signal \p0__2_n_85\ : STD_LOGIC;
  signal \p0__2_n_86\ : STD_LOGIC;
  signal \p0__2_n_87\ : STD_LOGIC;
  signal \p0__2_n_88\ : STD_LOGIC;
  signal \p0__2_n_89\ : STD_LOGIC;
  signal \p0__2_n_90\ : STD_LOGIC;
  signal \p0__2_n_91\ : STD_LOGIC;
  signal \p0__2_n_92\ : STD_LOGIC;
  signal \p0__2_n_93\ : STD_LOGIC;
  signal \p0__2_n_94\ : STD_LOGIC;
  signal \p0__2_n_95\ : STD_LOGIC;
  signal \p0__2_n_96\ : STD_LOGIC;
  signal \p0__2_n_97\ : STD_LOGIC;
  signal \p0__2_n_98\ : STD_LOGIC;
  signal \p0__2_n_99\ : STD_LOGIC;
  signal p0_n_100 : STD_LOGIC;
  signal p0_n_101 : STD_LOGIC;
  signal p0_n_102 : STD_LOGIC;
  signal p0_n_103 : STD_LOGIC;
  signal p0_n_104 : STD_LOGIC;
  signal p0_n_105 : STD_LOGIC;
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
  signal p0_n_58 : STD_LOGIC;
  signal p0_n_59 : STD_LOGIC;
  signal p0_n_60 : STD_LOGIC;
  signal p0_n_61 : STD_LOGIC;
  signal p0_n_62 : STD_LOGIC;
  signal p0_n_63 : STD_LOGIC;
  signal p0_n_64 : STD_LOGIC;
  signal p0_n_65 : STD_LOGIC;
  signal p0_n_66 : STD_LOGIC;
  signal p0_n_67 : STD_LOGIC;
  signal p0_n_68 : STD_LOGIC;
  signal p0_n_69 : STD_LOGIC;
  signal p0_n_70 : STD_LOGIC;
  signal p0_n_71 : STD_LOGIC;
  signal p0_n_72 : STD_LOGIC;
  signal p0_n_73 : STD_LOGIC;
  signal p0_n_74 : STD_LOGIC;
  signal p0_n_75 : STD_LOGIC;
  signal p0_n_76 : STD_LOGIC;
  signal p0_n_77 : STD_LOGIC;
  signal p0_n_78 : STD_LOGIC;
  signal p0_n_79 : STD_LOGIC;
  signal p0_n_80 : STD_LOGIC;
  signal p0_n_81 : STD_LOGIC;
  signal p0_n_82 : STD_LOGIC;
  signal p0_n_83 : STD_LOGIC;
  signal p0_n_84 : STD_LOGIC;
  signal p0_n_85 : STD_LOGIC;
  signal p0_n_86 : STD_LOGIC;
  signal p0_n_87 : STD_LOGIC;
  signal p0_n_88 : STD_LOGIC;
  signal p0_n_89 : STD_LOGIC;
  signal p0_n_90 : STD_LOGIC;
  signal p0_n_91 : STD_LOGIC;
  signal p0_n_92 : STD_LOGIC;
  signal p0_n_93 : STD_LOGIC;
  signal p0_n_94 : STD_LOGIC;
  signal p0_n_95 : STD_LOGIC;
  signal p0_n_96 : STD_LOGIC;
  signal p0_n_97 : STD_LOGIC;
  signal p0_n_98 : STD_LOGIC;
  signal p0_n_99 : STD_LOGIC;
  signal \NLW_DACB_CODE_OUT[0]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DACB_CODE_OUT[0]_INST_0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DACB_CODE_OUT[0]_INST_0_i_16_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DACB_CODE_OUT[0]_INST_0_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DACB_CODE_OUT[12]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DACB_CODE_OUT[12]_INST_0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_p0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_p0__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_p0__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \NLW_p0__1_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__1_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__1_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__1_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__1_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__1_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__1_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_p0__1_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__2_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__2_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__2_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__2_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__2_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__2_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__2_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_p0__2_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_p0__2_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__2_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \DACB_CODE_OUT[0]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \DACB_CODE_OUT[0]_INST_0_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \DACB_CODE_OUT[0]_INST_0_i_11\ : label is 35;
  attribute ADDER_THRESHOLD of \DACB_CODE_OUT[0]_INST_0_i_16\ : label is 35;
  attribute ADDER_THRESHOLD of \DACB_CODE_OUT[0]_INST_0_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \DACB_CODE_OUT[12]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \DACB_CODE_OUT[4]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \DACB_CODE_OUT[8]_INST_0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p0 : label is "{SYNTH-10 {cell *THIS*} {string 15x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \p0__0\ : label is "{SYNTH-10 {cell *THIS*} {string 15x10 4}}";
  attribute METHODOLOGY_DRC_VIOS of \p0__1\ : label is "{SYNTH-10 {cell *THIS*} {string 18x18 4}}";
  attribute METHODOLOGY_DRC_VIOS of \p0__2\ : label is "{SYNTH-10 {cell *THIS*} {string 18x10 4}}";
begin
\DACB_CODE_OUT[0]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \DACB_CODE_OUT[0]_INST_0_i_1_n_0\,
      CO(3) => \DACB_CODE_OUT[0]_INST_0_n_0\,
      CO(2) => \DACB_CODE_OUT[0]_INST_0_n_1\,
      CO(1) => \DACB_CODE_OUT[0]_INST_0_n_2\,
      CO(0) => \DACB_CODE_OUT[0]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \p0__2_n_87\,
      DI(2) => \p0__2_n_88\,
      DI(1) => \p0__2_n_89\,
      DI(0) => \p0__2_n_90\,
      O(3 downto 0) => DACB_CODE_OUT(3 downto 0),
      S(3) => \DACB_CODE_OUT[0]_INST_0_i_2_n_0\,
      S(2) => \DACB_CODE_OUT[0]_INST_0_i_3_n_0\,
      S(1) => \DACB_CODE_OUT[0]_INST_0_i_4_n_0\,
      S(0) => \DACB_CODE_OUT[0]_INST_0_i_5_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DACB_CODE_OUT[0]_INST_0_i_6_n_0\,
      CO(3) => \DACB_CODE_OUT[0]_INST_0_i_1_n_0\,
      CO(2) => \DACB_CODE_OUT[0]_INST_0_i_1_n_1\,
      CO(1) => \DACB_CODE_OUT[0]_INST_0_i_1_n_2\,
      CO(0) => \DACB_CODE_OUT[0]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \p0__2_n_91\,
      DI(2) => \p0__2_n_92\,
      DI(1) => \p0__2_n_93\,
      DI(0) => \p0__2_n_94\,
      O(3 downto 0) => \NLW_DACB_CODE_OUT[0]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \DACB_CODE_OUT[0]_INST_0_i_7_n_0\,
      S(2) => \DACB_CODE_OUT[0]_INST_0_i_8_n_0\,
      S(1) => \DACB_CODE_OUT[0]_INST_0_i_9_n_0\,
      S(0) => \DACB_CODE_OUT[0]_INST_0_i_10_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_94\,
      I1 => p0_n_94,
      O => \DACB_CODE_OUT[0]_INST_0_i_10_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \DACB_CODE_OUT[0]_INST_0_i_16_n_0\,
      CO(3) => \DACB_CODE_OUT[0]_INST_0_i_11_n_0\,
      CO(2) => \DACB_CODE_OUT[0]_INST_0_i_11_n_1\,
      CO(1) => \DACB_CODE_OUT[0]_INST_0_i_11_n_2\,
      CO(0) => \DACB_CODE_OUT[0]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \p0__2_n_99\,
      DI(2) => \p0__2_n_100\,
      DI(1) => \p0__2_n_101\,
      DI(0) => \p0__2_n_102\,
      O(3 downto 0) => \NLW_DACB_CODE_OUT[0]_INST_0_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \DACB_CODE_OUT[0]_INST_0_i_17_n_0\,
      S(2) => \DACB_CODE_OUT[0]_INST_0_i_18_n_0\,
      S(1) => \DACB_CODE_OUT[0]_INST_0_i_19_n_0\,
      S(0) => \DACB_CODE_OUT[0]_INST_0_i_20_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_95\,
      I1 => p0_n_95,
      O => \DACB_CODE_OUT[0]_INST_0_i_12_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_96\,
      I1 => p0_n_96,
      O => \DACB_CODE_OUT[0]_INST_0_i_13_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_97\,
      I1 => p0_n_97,
      O => \DACB_CODE_OUT[0]_INST_0_i_14_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_98\,
      I1 => p0_n_98,
      O => \DACB_CODE_OUT[0]_INST_0_i_15_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \DACB_CODE_OUT[0]_INST_0_i_16_n_0\,
      CO(2) => \DACB_CODE_OUT[0]_INST_0_i_16_n_1\,
      CO(1) => \DACB_CODE_OUT[0]_INST_0_i_16_n_2\,
      CO(0) => \DACB_CODE_OUT[0]_INST_0_i_16_n_3\,
      CYINIT => '0',
      DI(3) => \p0__2_n_103\,
      DI(2) => \p0__2_n_104\,
      DI(1) => \p0__2_n_105\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_DACB_CODE_OUT[0]_INST_0_i_16_O_UNCONNECTED\(3 downto 0),
      S(3) => \DACB_CODE_OUT[0]_INST_0_i_21_n_0\,
      S(2) => \DACB_CODE_OUT[0]_INST_0_i_22_n_0\,
      S(1) => \DACB_CODE_OUT[0]_INST_0_i_23_n_0\,
      S(0) => \p0__1_n_89\
    );
\DACB_CODE_OUT[0]_INST_0_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_99\,
      I1 => p0_n_99,
      O => \DACB_CODE_OUT[0]_INST_0_i_17_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_100\,
      I1 => p0_n_100,
      O => \DACB_CODE_OUT[0]_INST_0_i_18_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_101\,
      I1 => p0_n_101,
      O => \DACB_CODE_OUT[0]_INST_0_i_19_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_87\,
      I1 => \p0__0_n_104\,
      O => \DACB_CODE_OUT[0]_INST_0_i_2_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_102\,
      I1 => p0_n_102,
      O => \DACB_CODE_OUT[0]_INST_0_i_20_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_103\,
      I1 => p0_n_103,
      O => \DACB_CODE_OUT[0]_INST_0_i_21_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_104\,
      I1 => p0_n_104,
      O => \DACB_CODE_OUT[0]_INST_0_i_22_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_105\,
      I1 => p0_n_105,
      O => \DACB_CODE_OUT[0]_INST_0_i_23_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_88\,
      I1 => \p0__0_n_105\,
      O => \DACB_CODE_OUT[0]_INST_0_i_3_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_89\,
      I1 => p0_n_89,
      O => \DACB_CODE_OUT[0]_INST_0_i_4_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_90\,
      I1 => p0_n_90,
      O => \DACB_CODE_OUT[0]_INST_0_i_5_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \DACB_CODE_OUT[0]_INST_0_i_11_n_0\,
      CO(3) => \DACB_CODE_OUT[0]_INST_0_i_6_n_0\,
      CO(2) => \DACB_CODE_OUT[0]_INST_0_i_6_n_1\,
      CO(1) => \DACB_CODE_OUT[0]_INST_0_i_6_n_2\,
      CO(0) => \DACB_CODE_OUT[0]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \p0__2_n_95\,
      DI(2) => \p0__2_n_96\,
      DI(1) => \p0__2_n_97\,
      DI(0) => \p0__2_n_98\,
      O(3 downto 0) => \NLW_DACB_CODE_OUT[0]_INST_0_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \DACB_CODE_OUT[0]_INST_0_i_12_n_0\,
      S(2) => \DACB_CODE_OUT[0]_INST_0_i_13_n_0\,
      S(1) => \DACB_CODE_OUT[0]_INST_0_i_14_n_0\,
      S(0) => \DACB_CODE_OUT[0]_INST_0_i_15_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_91\,
      I1 => p0_n_91,
      O => \DACB_CODE_OUT[0]_INST_0_i_7_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_92\,
      I1 => p0_n_92,
      O => \DACB_CODE_OUT[0]_INST_0_i_8_n_0\
    );
\DACB_CODE_OUT[0]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_93\,
      I1 => p0_n_93,
      O => \DACB_CODE_OUT[0]_INST_0_i_9_n_0\
    );
\DACB_CODE_OUT[12]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \DACB_CODE_OUT[8]_INST_0_n_0\,
      CO(3 downto 1) => \NLW_DACB_CODE_OUT[12]_INST_0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \DACB_CODE_OUT[12]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \p0__2_n_78\,
      O(3 downto 2) => \NLW_DACB_CODE_OUT[12]_INST_0_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => DACB_CODE_OUT(13 downto 12),
      S(3 downto 2) => B"00",
      S(1) => \DACB_CODE_OUT[12]_INST_0_i_1_n_0\,
      S(0) => \DACB_CODE_OUT[12]_INST_0_i_2_n_0\
    );
\DACB_CODE_OUT[12]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_77\,
      I1 => \p0__0_n_94\,
      O => \DACB_CODE_OUT[12]_INST_0_i_1_n_0\
    );
\DACB_CODE_OUT[12]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_78\,
      I1 => \p0__0_n_95\,
      O => \DACB_CODE_OUT[12]_INST_0_i_2_n_0\
    );
\DACB_CODE_OUT[4]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \DACB_CODE_OUT[0]_INST_0_n_0\,
      CO(3) => \DACB_CODE_OUT[4]_INST_0_n_0\,
      CO(2) => \DACB_CODE_OUT[4]_INST_0_n_1\,
      CO(1) => \DACB_CODE_OUT[4]_INST_0_n_2\,
      CO(0) => \DACB_CODE_OUT[4]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \p0__2_n_83\,
      DI(2) => \p0__2_n_84\,
      DI(1) => \p0__2_n_85\,
      DI(0) => \p0__2_n_86\,
      O(3 downto 0) => DACB_CODE_OUT(7 downto 4),
      S(3) => \DACB_CODE_OUT[4]_INST_0_i_1_n_0\,
      S(2) => \DACB_CODE_OUT[4]_INST_0_i_2_n_0\,
      S(1) => \DACB_CODE_OUT[4]_INST_0_i_3_n_0\,
      S(0) => \DACB_CODE_OUT[4]_INST_0_i_4_n_0\
    );
\DACB_CODE_OUT[4]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_83\,
      I1 => \p0__0_n_100\,
      O => \DACB_CODE_OUT[4]_INST_0_i_1_n_0\
    );
\DACB_CODE_OUT[4]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_84\,
      I1 => \p0__0_n_101\,
      O => \DACB_CODE_OUT[4]_INST_0_i_2_n_0\
    );
\DACB_CODE_OUT[4]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_85\,
      I1 => \p0__0_n_102\,
      O => \DACB_CODE_OUT[4]_INST_0_i_3_n_0\
    );
\DACB_CODE_OUT[4]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_86\,
      I1 => \p0__0_n_103\,
      O => \DACB_CODE_OUT[4]_INST_0_i_4_n_0\
    );
\DACB_CODE_OUT[8]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \DACB_CODE_OUT[4]_INST_0_n_0\,
      CO(3) => \DACB_CODE_OUT[8]_INST_0_n_0\,
      CO(2) => \DACB_CODE_OUT[8]_INST_0_n_1\,
      CO(1) => \DACB_CODE_OUT[8]_INST_0_n_2\,
      CO(0) => \DACB_CODE_OUT[8]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => \p0__2_n_79\,
      DI(2) => \p0__2_n_80\,
      DI(1) => \p0__2_n_81\,
      DI(0) => \p0__2_n_82\,
      O(3 downto 0) => DACB_CODE_OUT(11 downto 8),
      S(3) => \DACB_CODE_OUT[8]_INST_0_i_1_n_0\,
      S(2) => \DACB_CODE_OUT[8]_INST_0_i_2_n_0\,
      S(1) => \DACB_CODE_OUT[8]_INST_0_i_3_n_0\,
      S(0) => \DACB_CODE_OUT[8]_INST_0_i_4_n_0\
    );
\DACB_CODE_OUT[8]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_79\,
      I1 => \p0__0_n_96\,
      O => \DACB_CODE_OUT[8]_INST_0_i_1_n_0\
    );
\DACB_CODE_OUT[8]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_80\,
      I1 => \p0__0_n_97\,
      O => \DACB_CODE_OUT[8]_INST_0_i_2_n_0\
    );
\DACB_CODE_OUT[8]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_81\,
      I1 => \p0__0_n_98\,
      O => \DACB_CODE_OUT[8]_INST_0_i_3_n_0\
    );
\DACB_CODE_OUT[8]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \p0__2_n_82\,
      I1 => \p0__0_n_99\,
      O => \DACB_CODE_OUT[8]_INST_0_i_4_n_0\
    );
p0: unisim.vcomponents.DSP48E1
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
      A(29) => O(2),
      A(28) => O(2),
      A(27) => O(2),
      A(26) => O(2),
      A(25) => O(2),
      A(24) => O(2),
      A(23) => O(2),
      A(22) => O(2),
      A(21) => O(2),
      A(20) => O(2),
      A(19) => O(2),
      A(18) => O(2),
      A(17) => O(2),
      A(16) => O(2),
      A(15) => O(2),
      A(14) => O(2),
      A(13) => O(2),
      A(12) => O(2),
      A(11) => O(2),
      A(10) => O(2),
      A(9) => O(2),
      A(8) => O(2),
      A(7) => O(2),
      A(6) => O(2),
      A(5) => O(2),
      A(4) => O(2),
      A(3) => O(2),
      A(2) => O(2),
      A(1 downto 0) => O(2 downto 1),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"001100110011001100",
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
      MULTSIGNOUT => NLW_p0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_p0_OVERFLOW_UNCONNECTED,
      P(47) => p0_n_58,
      P(46) => p0_n_59,
      P(45) => p0_n_60,
      P(44) => p0_n_61,
      P(43) => p0_n_62,
      P(42) => p0_n_63,
      P(41) => p0_n_64,
      P(40) => p0_n_65,
      P(39) => p0_n_66,
      P(38) => p0_n_67,
      P(37) => p0_n_68,
      P(36) => p0_n_69,
      P(35) => p0_n_70,
      P(34) => p0_n_71,
      P(33) => p0_n_72,
      P(32) => p0_n_73,
      P(31) => p0_n_74,
      P(30) => p0_n_75,
      P(29) => p0_n_76,
      P(28) => p0_n_77,
      P(27) => p0_n_78,
      P(26) => p0_n_79,
      P(25) => p0_n_80,
      P(24) => p0_n_81,
      P(23) => p0_n_82,
      P(22) => p0_n_83,
      P(21) => p0_n_84,
      P(20) => p0_n_85,
      P(19) => p0_n_86,
      P(18) => p0_n_87,
      P(17) => p0_n_88,
      P(16) => p0_n_89,
      P(15) => p0_n_90,
      P(14) => p0_n_91,
      P(13) => p0_n_92,
      P(12) => p0_n_93,
      P(11) => p0_n_94,
      P(10) => p0_n_95,
      P(9) => p0_n_96,
      P(8) => p0_n_97,
      P(7) => p0_n_98,
      P(6) => p0_n_99,
      P(5) => p0_n_100,
      P(4) => p0_n_101,
      P(3) => p0_n_102,
      P(2) => p0_n_103,
      P(1) => p0_n_104,
      P(0) => p0_n_105,
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
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p0_UNDERFLOW_UNCONNECTED
    );
\p0__0\: unisim.vcomponents.DSP48E1
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
      A(29) => O(2),
      A(28) => O(2),
      A(27) => O(2),
      A(26) => O(2),
      A(25) => O(2),
      A(24) => O(2),
      A(23) => O(2),
      A(22) => O(2),
      A(21) => O(2),
      A(20) => O(2),
      A(19) => O(2),
      A(18) => O(2),
      A(17) => O(2),
      A(16) => O(2),
      A(15) => O(2),
      A(14) => O(2),
      A(13) => O(2),
      A(12) => O(2),
      A(11) => O(2),
      A(10) => O(2),
      A(9) => O(2),
      A(8) => O(2),
      A(7) => O(2),
      A(6) => O(2),
      A(5) => O(2),
      A(4) => O(2),
      A(3) => O(2),
      A(2) => O(2),
      A(1 downto 0) => O(2 downto 1),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => \NLW_p0__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"111111111001100110",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_p0__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p0__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p0__0_CARRYOUT_UNCONNECTED\(3 downto 0),
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
      MULTSIGNOUT => \NLW_p0__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_p0__0_OVERFLOW_UNCONNECTED\,
      P(47) => \p0__0_n_58\,
      P(46) => \p0__0_n_59\,
      P(45) => \p0__0_n_60\,
      P(44) => \p0__0_n_61\,
      P(43) => \p0__0_n_62\,
      P(42) => \p0__0_n_63\,
      P(41) => \p0__0_n_64\,
      P(40) => \p0__0_n_65\,
      P(39) => \p0__0_n_66\,
      P(38) => \p0__0_n_67\,
      P(37) => \p0__0_n_68\,
      P(36) => \p0__0_n_69\,
      P(35) => \p0__0_n_70\,
      P(34) => \p0__0_n_71\,
      P(33) => \p0__0_n_72\,
      P(32) => \p0__0_n_73\,
      P(31) => \p0__0_n_74\,
      P(30) => \p0__0_n_75\,
      P(29) => \p0__0_n_76\,
      P(28) => \p0__0_n_77\,
      P(27) => \p0__0_n_78\,
      P(26) => \p0__0_n_79\,
      P(25) => \p0__0_n_80\,
      P(24) => \p0__0_n_81\,
      P(23) => \p0__0_n_82\,
      P(22) => \p0__0_n_83\,
      P(21) => \p0__0_n_84\,
      P(20) => \p0__0_n_85\,
      P(19) => \p0__0_n_86\,
      P(18) => \p0__0_n_87\,
      P(17) => \p0__0_n_88\,
      P(16) => \p0__0_n_89\,
      P(15) => \p0__0_n_90\,
      P(14) => \p0__0_n_91\,
      P(13) => \p0__0_n_92\,
      P(12) => \p0__0_n_93\,
      P(11) => \p0__0_n_94\,
      P(10) => \p0__0_n_95\,
      P(9) => \p0__0_n_96\,
      P(8) => \p0__0_n_97\,
      P(7) => \p0__0_n_98\,
      P(6) => \p0__0_n_99\,
      P(5) => \p0__0_n_100\,
      P(4) => \p0__0_n_101\,
      P(3) => \p0__0_n_102\,
      P(2) => \p0__0_n_103\,
      P(1) => \p0__0_n_104\,
      P(0) => \p0__0_n_105\,
      PATTERNBDETECT => \NLW_p0__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p0__0_PATTERNDETECT_UNCONNECTED\,
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
      PCOUT(47 downto 0) => \NLW_p0__0_PCOUT_UNCONNECTED\(47 downto 0),
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
      UNDERFLOW => \NLW_p0__0_UNDERFLOW_UNCONNECTED\
    );
\p0__1\: unisim.vcomponents.DSP48E1
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
      A(29 downto 17) => B"0000000000000",
      A(16) => O(0),
      A(15 downto 0) => A(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29) => \p0__1_n_24\,
      ACOUT(28) => \p0__1_n_25\,
      ACOUT(27) => \p0__1_n_26\,
      ACOUT(26) => \p0__1_n_27\,
      ACOUT(25) => \p0__1_n_28\,
      ACOUT(24) => \p0__1_n_29\,
      ACOUT(23) => \p0__1_n_30\,
      ACOUT(22) => \p0__1_n_31\,
      ACOUT(21) => \p0__1_n_32\,
      ACOUT(20) => \p0__1_n_33\,
      ACOUT(19) => \p0__1_n_34\,
      ACOUT(18) => \p0__1_n_35\,
      ACOUT(17) => \p0__1_n_36\,
      ACOUT(16) => \p0__1_n_37\,
      ACOUT(15) => \p0__1_n_38\,
      ACOUT(14) => \p0__1_n_39\,
      ACOUT(13) => \p0__1_n_40\,
      ACOUT(12) => \p0__1_n_41\,
      ACOUT(11) => \p0__1_n_42\,
      ACOUT(10) => \p0__1_n_43\,
      ACOUT(9) => \p0__1_n_44\,
      ACOUT(8) => \p0__1_n_45\,
      ACOUT(7) => \p0__1_n_46\,
      ACOUT(6) => \p0__1_n_47\,
      ACOUT(5) => \p0__1_n_48\,
      ACOUT(4) => \p0__1_n_49\,
      ACOUT(3) => \p0__1_n_50\,
      ACOUT(2) => \p0__1_n_51\,
      ACOUT(1) => \p0__1_n_52\,
      ACOUT(0) => \p0__1_n_53\,
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"001100110011001100",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_p0__1_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p0__1_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p0__1_CARRYOUT_UNCONNECTED\(3 downto 0),
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
      MULTSIGNOUT => \NLW_p0__1_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => \NLW_p0__1_OVERFLOW_UNCONNECTED\,
      P(47) => \p0__1_n_58\,
      P(46) => \p0__1_n_59\,
      P(45) => \p0__1_n_60\,
      P(44) => \p0__1_n_61\,
      P(43) => \p0__1_n_62\,
      P(42) => \p0__1_n_63\,
      P(41) => \p0__1_n_64\,
      P(40) => \p0__1_n_65\,
      P(39) => \p0__1_n_66\,
      P(38) => \p0__1_n_67\,
      P(37) => \p0__1_n_68\,
      P(36) => \p0__1_n_69\,
      P(35) => \p0__1_n_70\,
      P(34) => \p0__1_n_71\,
      P(33) => \p0__1_n_72\,
      P(32) => \p0__1_n_73\,
      P(31) => \p0__1_n_74\,
      P(30) => \p0__1_n_75\,
      P(29) => \p0__1_n_76\,
      P(28) => \p0__1_n_77\,
      P(27) => \p0__1_n_78\,
      P(26) => \p0__1_n_79\,
      P(25) => \p0__1_n_80\,
      P(24) => \p0__1_n_81\,
      P(23) => \p0__1_n_82\,
      P(22) => \p0__1_n_83\,
      P(21) => \p0__1_n_84\,
      P(20) => \p0__1_n_85\,
      P(19) => \p0__1_n_86\,
      P(18) => \p0__1_n_87\,
      P(17) => \p0__1_n_88\,
      P(16) => \p0__1_n_89\,
      P(15) => \p0__1_n_90\,
      P(14) => \p0__1_n_91\,
      P(13) => \p0__1_n_92\,
      P(12) => \p0__1_n_93\,
      P(11) => \p0__1_n_94\,
      P(10) => \p0__1_n_95\,
      P(9) => \p0__1_n_96\,
      P(8) => \p0__1_n_97\,
      P(7) => \p0__1_n_98\,
      P(6) => \p0__1_n_99\,
      P(5) => \p0__1_n_100\,
      P(4) => \p0__1_n_101\,
      P(3) => \p0__1_n_102\,
      P(2) => \p0__1_n_103\,
      P(1) => \p0__1_n_104\,
      P(0) => \p0__1_n_105\,
      PATTERNBDETECT => \NLW_p0__1_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p0__1_PATTERNDETECT_UNCONNECTED\,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => \p0__1_n_106\,
      PCOUT(46) => \p0__1_n_107\,
      PCOUT(45) => \p0__1_n_108\,
      PCOUT(44) => \p0__1_n_109\,
      PCOUT(43) => \p0__1_n_110\,
      PCOUT(42) => \p0__1_n_111\,
      PCOUT(41) => \p0__1_n_112\,
      PCOUT(40) => \p0__1_n_113\,
      PCOUT(39) => \p0__1_n_114\,
      PCOUT(38) => \p0__1_n_115\,
      PCOUT(37) => \p0__1_n_116\,
      PCOUT(36) => \p0__1_n_117\,
      PCOUT(35) => \p0__1_n_118\,
      PCOUT(34) => \p0__1_n_119\,
      PCOUT(33) => \p0__1_n_120\,
      PCOUT(32) => \p0__1_n_121\,
      PCOUT(31) => \p0__1_n_122\,
      PCOUT(30) => \p0__1_n_123\,
      PCOUT(29) => \p0__1_n_124\,
      PCOUT(28) => \p0__1_n_125\,
      PCOUT(27) => \p0__1_n_126\,
      PCOUT(26) => \p0__1_n_127\,
      PCOUT(25) => \p0__1_n_128\,
      PCOUT(24) => \p0__1_n_129\,
      PCOUT(23) => \p0__1_n_130\,
      PCOUT(22) => \p0__1_n_131\,
      PCOUT(21) => \p0__1_n_132\,
      PCOUT(20) => \p0__1_n_133\,
      PCOUT(19) => \p0__1_n_134\,
      PCOUT(18) => \p0__1_n_135\,
      PCOUT(17) => \p0__1_n_136\,
      PCOUT(16) => \p0__1_n_137\,
      PCOUT(15) => \p0__1_n_138\,
      PCOUT(14) => \p0__1_n_139\,
      PCOUT(13) => \p0__1_n_140\,
      PCOUT(12) => \p0__1_n_141\,
      PCOUT(11) => \p0__1_n_142\,
      PCOUT(10) => \p0__1_n_143\,
      PCOUT(9) => \p0__1_n_144\,
      PCOUT(8) => \p0__1_n_145\,
      PCOUT(7) => \p0__1_n_146\,
      PCOUT(6) => \p0__1_n_147\,
      PCOUT(5) => \p0__1_n_148\,
      PCOUT(4) => \p0__1_n_149\,
      PCOUT(3) => \p0__1_n_150\,
      PCOUT(2) => \p0__1_n_151\,
      PCOUT(1) => \p0__1_n_152\,
      PCOUT(0) => \p0__1_n_153\,
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
      UNDERFLOW => \NLW_p0__1_UNDERFLOW_UNCONNECTED\
    );
\p0__2\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
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
      ACIN(29) => \p0__1_n_24\,
      ACIN(28) => \p0__1_n_25\,
      ACIN(27) => \p0__1_n_26\,
      ACIN(26) => \p0__1_n_27\,
      ACIN(25) => \p0__1_n_28\,
      ACIN(24) => \p0__1_n_29\,
      ACIN(23) => \p0__1_n_30\,
      ACIN(22) => \p0__1_n_31\,
      ACIN(21) => \p0__1_n_32\,
      ACIN(20) => \p0__1_n_33\,
      ACIN(19) => \p0__1_n_34\,
      ACIN(18) => \p0__1_n_35\,
      ACIN(17) => \p0__1_n_36\,
      ACIN(16) => \p0__1_n_37\,
      ACIN(15) => \p0__1_n_38\,
      ACIN(14) => \p0__1_n_39\,
      ACIN(13) => \p0__1_n_40\,
      ACIN(12) => \p0__1_n_41\,
      ACIN(11) => \p0__1_n_42\,
      ACIN(10) => \p0__1_n_43\,
      ACIN(9) => \p0__1_n_44\,
      ACIN(8) => \p0__1_n_45\,
      ACIN(7) => \p0__1_n_46\,
      ACIN(6) => \p0__1_n_47\,
      ACIN(5) => \p0__1_n_48\,
      ACIN(4) => \p0__1_n_49\,
      ACIN(3) => \p0__1_n_50\,
      ACIN(2) => \p0__1_n_51\,
      ACIN(1) => \p0__1_n_52\,
      ACIN(0) => \p0__1_n_53\,
      ACOUT(29 downto 0) => \NLW_p0__2_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"111111111001100110",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_p0__2_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p0__2_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p0__2_CARRYOUT_UNCONNECTED\(3 downto 0),
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
      MULTSIGNOUT => \NLW_p0__2_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_p0__2_OVERFLOW_UNCONNECTED\,
      P(47) => \p0__2_n_58\,
      P(46) => \p0__2_n_59\,
      P(45) => \p0__2_n_60\,
      P(44) => \p0__2_n_61\,
      P(43) => \p0__2_n_62\,
      P(42) => \p0__2_n_63\,
      P(41) => \p0__2_n_64\,
      P(40) => \p0__2_n_65\,
      P(39) => \p0__2_n_66\,
      P(38) => \p0__2_n_67\,
      P(37) => \p0__2_n_68\,
      P(36) => \p0__2_n_69\,
      P(35) => \p0__2_n_70\,
      P(34) => \p0__2_n_71\,
      P(33) => \p0__2_n_72\,
      P(32) => \p0__2_n_73\,
      P(31) => \p0__2_n_74\,
      P(30) => \p0__2_n_75\,
      P(29) => \p0__2_n_76\,
      P(28) => \p0__2_n_77\,
      P(27) => \p0__2_n_78\,
      P(26) => \p0__2_n_79\,
      P(25) => \p0__2_n_80\,
      P(24) => \p0__2_n_81\,
      P(23) => \p0__2_n_82\,
      P(22) => \p0__2_n_83\,
      P(21) => \p0__2_n_84\,
      P(20) => \p0__2_n_85\,
      P(19) => \p0__2_n_86\,
      P(18) => \p0__2_n_87\,
      P(17) => \p0__2_n_88\,
      P(16) => \p0__2_n_89\,
      P(15) => \p0__2_n_90\,
      P(14) => \p0__2_n_91\,
      P(13) => \p0__2_n_92\,
      P(12) => \p0__2_n_93\,
      P(11) => \p0__2_n_94\,
      P(10) => \p0__2_n_95\,
      P(9) => \p0__2_n_96\,
      P(8) => \p0__2_n_97\,
      P(7) => \p0__2_n_98\,
      P(6) => \p0__2_n_99\,
      P(5) => \p0__2_n_100\,
      P(4) => \p0__2_n_101\,
      P(3) => \p0__2_n_102\,
      P(2) => \p0__2_n_103\,
      P(1) => \p0__2_n_104\,
      P(0) => \p0__2_n_105\,
      PATTERNBDETECT => \NLW_p0__2_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p0__2_PATTERNDETECT_UNCONNECTED\,
      PCIN(47) => \p0__1_n_106\,
      PCIN(46) => \p0__1_n_107\,
      PCIN(45) => \p0__1_n_108\,
      PCIN(44) => \p0__1_n_109\,
      PCIN(43) => \p0__1_n_110\,
      PCIN(42) => \p0__1_n_111\,
      PCIN(41) => \p0__1_n_112\,
      PCIN(40) => \p0__1_n_113\,
      PCIN(39) => \p0__1_n_114\,
      PCIN(38) => \p0__1_n_115\,
      PCIN(37) => \p0__1_n_116\,
      PCIN(36) => \p0__1_n_117\,
      PCIN(35) => \p0__1_n_118\,
      PCIN(34) => \p0__1_n_119\,
      PCIN(33) => \p0__1_n_120\,
      PCIN(32) => \p0__1_n_121\,
      PCIN(31) => \p0__1_n_122\,
      PCIN(30) => \p0__1_n_123\,
      PCIN(29) => \p0__1_n_124\,
      PCIN(28) => \p0__1_n_125\,
      PCIN(27) => \p0__1_n_126\,
      PCIN(26) => \p0__1_n_127\,
      PCIN(25) => \p0__1_n_128\,
      PCIN(24) => \p0__1_n_129\,
      PCIN(23) => \p0__1_n_130\,
      PCIN(22) => \p0__1_n_131\,
      PCIN(21) => \p0__1_n_132\,
      PCIN(20) => \p0__1_n_133\,
      PCIN(19) => \p0__1_n_134\,
      PCIN(18) => \p0__1_n_135\,
      PCIN(17) => \p0__1_n_136\,
      PCIN(16) => \p0__1_n_137\,
      PCIN(15) => \p0__1_n_138\,
      PCIN(14) => \p0__1_n_139\,
      PCIN(13) => \p0__1_n_140\,
      PCIN(12) => \p0__1_n_141\,
      PCIN(11) => \p0__1_n_142\,
      PCIN(10) => \p0__1_n_143\,
      PCIN(9) => \p0__1_n_144\,
      PCIN(8) => \p0__1_n_145\,
      PCIN(7) => \p0__1_n_146\,
      PCIN(6) => \p0__1_n_147\,
      PCIN(5) => \p0__1_n_148\,
      PCIN(4) => \p0__1_n_149\,
      PCIN(3) => \p0__1_n_150\,
      PCIN(2) => \p0__1_n_151\,
      PCIN(1) => \p0__1_n_152\,
      PCIN(0) => \p0__1_n_153\,
      PCOUT(47 downto 0) => \NLW_p0__2_PCOUT_UNCONNECTED\(47 downto 0),
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
      UNDERFLOW => \NLW_p0__2_UNDERFLOW_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_DAC_LOOP_0_gen_mult_3 is
  port (
    P : out STD_LOGIC_VECTOR ( 26 downto 0 );
    VALID_SUM : in STD_LOGIC;
    ADC_CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_DAC_LOOP_0_gen_mult_3 : entity is "gen_mult";
end system_ADC_DAC_LOOP_0_gen_mult_3;

architecture STRUCTURE of system_ADC_DAC_LOOP_0_gen_mult_3 is
  signal \p0__0_n_100\ : STD_LOGIC;
  signal \p0__0_n_101\ : STD_LOGIC;
  signal \p0__0_n_102\ : STD_LOGIC;
  signal \p0__0_n_103\ : STD_LOGIC;
  signal \p0__0_n_104\ : STD_LOGIC;
  signal \p0__0_n_105\ : STD_LOGIC;
  signal \p0__0_n_58\ : STD_LOGIC;
  signal \p0__0_n_59\ : STD_LOGIC;
  signal \p0__0_n_60\ : STD_LOGIC;
  signal \p0__0_n_61\ : STD_LOGIC;
  signal \p0__0_n_62\ : STD_LOGIC;
  signal \p0__0_n_63\ : STD_LOGIC;
  signal \p0__0_n_64\ : STD_LOGIC;
  signal \p0__0_n_65\ : STD_LOGIC;
  signal \p0__0_n_66\ : STD_LOGIC;
  signal \p0__0_n_67\ : STD_LOGIC;
  signal \p0__0_n_68\ : STD_LOGIC;
  signal \p0__0_n_96\ : STD_LOGIC;
  signal \p0__0_n_97\ : STD_LOGIC;
  signal \p0__0_n_98\ : STD_LOGIC;
  signal \p0__0_n_99\ : STD_LOGIC;
  signal p0_n_100 : STD_LOGIC;
  signal p0_n_101 : STD_LOGIC;
  signal p0_n_102 : STD_LOGIC;
  signal p0_n_103 : STD_LOGIC;
  signal p0_n_104 : STD_LOGIC;
  signal p0_n_105 : STD_LOGIC;
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
  signal p0_n_24 : STD_LOGIC;
  signal p0_n_25 : STD_LOGIC;
  signal p0_n_26 : STD_LOGIC;
  signal p0_n_27 : STD_LOGIC;
  signal p0_n_28 : STD_LOGIC;
  signal p0_n_29 : STD_LOGIC;
  signal p0_n_30 : STD_LOGIC;
  signal p0_n_31 : STD_LOGIC;
  signal p0_n_32 : STD_LOGIC;
  signal p0_n_33 : STD_LOGIC;
  signal p0_n_34 : STD_LOGIC;
  signal p0_n_35 : STD_LOGIC;
  signal p0_n_36 : STD_LOGIC;
  signal p0_n_37 : STD_LOGIC;
  signal p0_n_38 : STD_LOGIC;
  signal p0_n_39 : STD_LOGIC;
  signal p0_n_40 : STD_LOGIC;
  signal p0_n_41 : STD_LOGIC;
  signal p0_n_42 : STD_LOGIC;
  signal p0_n_43 : STD_LOGIC;
  signal p0_n_44 : STD_LOGIC;
  signal p0_n_45 : STD_LOGIC;
  signal p0_n_46 : STD_LOGIC;
  signal p0_n_47 : STD_LOGIC;
  signal p0_n_48 : STD_LOGIC;
  signal p0_n_49 : STD_LOGIC;
  signal p0_n_50 : STD_LOGIC;
  signal p0_n_51 : STD_LOGIC;
  signal p0_n_52 : STD_LOGIC;
  signal p0_n_53 : STD_LOGIC;
  signal p0_n_58 : STD_LOGIC;
  signal p0_n_59 : STD_LOGIC;
  signal p0_n_60 : STD_LOGIC;
  signal p0_n_61 : STD_LOGIC;
  signal p0_n_62 : STD_LOGIC;
  signal p0_n_63 : STD_LOGIC;
  signal p0_n_64 : STD_LOGIC;
  signal p0_n_65 : STD_LOGIC;
  signal p0_n_66 : STD_LOGIC;
  signal p0_n_67 : STD_LOGIC;
  signal p0_n_68 : STD_LOGIC;
  signal p0_n_69 : STD_LOGIC;
  signal p0_n_70 : STD_LOGIC;
  signal p0_n_71 : STD_LOGIC;
  signal p0_n_72 : STD_LOGIC;
  signal p0_n_73 : STD_LOGIC;
  signal p0_n_74 : STD_LOGIC;
  signal p0_n_75 : STD_LOGIC;
  signal p0_n_76 : STD_LOGIC;
  signal p0_n_77 : STD_LOGIC;
  signal p0_n_78 : STD_LOGIC;
  signal p0_n_79 : STD_LOGIC;
  signal p0_n_80 : STD_LOGIC;
  signal p0_n_81 : STD_LOGIC;
  signal p0_n_82 : STD_LOGIC;
  signal p0_n_83 : STD_LOGIC;
  signal p0_n_84 : STD_LOGIC;
  signal p0_n_85 : STD_LOGIC;
  signal p0_n_86 : STD_LOGIC;
  signal p0_n_87 : STD_LOGIC;
  signal p0_n_88 : STD_LOGIC;
  signal p0_n_89 : STD_LOGIC;
  signal p0_n_90 : STD_LOGIC;
  signal p0_n_91 : STD_LOGIC;
  signal p0_n_92 : STD_LOGIC;
  signal p0_n_93 : STD_LOGIC;
  signal p0_n_94 : STD_LOGIC;
  signal p0_n_95 : STD_LOGIC;
  signal p0_n_96 : STD_LOGIC;
  signal p0_n_97 : STD_LOGIC;
  signal p0_n_98 : STD_LOGIC;
  signal p0_n_99 : STD_LOGIC;
  signal NLW_p0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__0_CARRYCASCOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_MULTSIGNOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_OVERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_PATTERNBDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_PATTERNDETECT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_UNDERFLOW_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_p0__0_ACOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \NLW_p0__0_BCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \NLW_p0__0_CARRYOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_p0__0_PCOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p0 : label is "{SYNTH-11 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \p0__0\ : label is "{SYNTH-11 {cell *THIS*}}";
begin
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
      A(29 downto 0) => B"000000000101000000000000000000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29) => p0_n_24,
      ACOUT(28) => p0_n_25,
      ACOUT(27) => p0_n_26,
      ACOUT(26) => p0_n_27,
      ACOUT(25) => p0_n_28,
      ACOUT(24) => p0_n_29,
      ACOUT(23) => p0_n_30,
      ACOUT(22) => p0_n_31,
      ACOUT(21) => p0_n_32,
      ACOUT(20) => p0_n_33,
      ACOUT(19) => p0_n_34,
      ACOUT(18) => p0_n_35,
      ACOUT(17) => p0_n_36,
      ACOUT(16) => p0_n_37,
      ACOUT(15) => p0_n_38,
      ACOUT(14) => p0_n_39,
      ACOUT(13) => p0_n_40,
      ACOUT(12) => p0_n_41,
      ACOUT(11) => p0_n_42,
      ACOUT(10) => p0_n_43,
      ACOUT(9) => p0_n_44,
      ACOUT(8) => p0_n_45,
      ACOUT(7) => p0_n_46,
      ACOUT(6) => p0_n_47,
      ACOUT(5) => p0_n_48,
      ACOUT(4) => p0_n_49,
      ACOUT(3) => p0_n_50,
      ACOUT(2) => p0_n_51,
      ACOUT(1) => p0_n_52,
      ACOUT(0) => p0_n_53,
      ALUMODE(3 downto 0) => B"0000",
      B(17) => '0',
      B(16) => Q(0),
      B(15 downto 0) => B"0000000000000000",
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
      CEB2 => VALID_SUM,
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
      P(47) => p0_n_58,
      P(46) => p0_n_59,
      P(45) => p0_n_60,
      P(44) => p0_n_61,
      P(43) => p0_n_62,
      P(42) => p0_n_63,
      P(41) => p0_n_64,
      P(40) => p0_n_65,
      P(39) => p0_n_66,
      P(38) => p0_n_67,
      P(37) => p0_n_68,
      P(36) => p0_n_69,
      P(35) => p0_n_70,
      P(34) => p0_n_71,
      P(33) => p0_n_72,
      P(32) => p0_n_73,
      P(31) => p0_n_74,
      P(30) => p0_n_75,
      P(29) => p0_n_76,
      P(28) => p0_n_77,
      P(27) => p0_n_78,
      P(26) => p0_n_79,
      P(25) => p0_n_80,
      P(24) => p0_n_81,
      P(23) => p0_n_82,
      P(22) => p0_n_83,
      P(21) => p0_n_84,
      P(20) => p0_n_85,
      P(19) => p0_n_86,
      P(18) => p0_n_87,
      P(17) => p0_n_88,
      P(16) => p0_n_89,
      P(15) => p0_n_90,
      P(14) => p0_n_91,
      P(13) => p0_n_92,
      P(12) => p0_n_93,
      P(11) => p0_n_94,
      P(10) => p0_n_95,
      P(9) => p0_n_96,
      P(8) => p0_n_97,
      P(7) => p0_n_98,
      P(6) => p0_n_99,
      P(5) => p0_n_100,
      P(4) => p0_n_101,
      P(3) => p0_n_102,
      P(2) => p0_n_103,
      P(1) => p0_n_104,
      P(0) => p0_n_105,
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
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p0_UNDERFLOW_UNCONNECTED
    );
\p0__0\: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "CASCADE",
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
      ACIN(29) => p0_n_24,
      ACIN(28) => p0_n_25,
      ACIN(27) => p0_n_26,
      ACIN(26) => p0_n_27,
      ACIN(25) => p0_n_28,
      ACIN(24) => p0_n_29,
      ACIN(23) => p0_n_30,
      ACIN(22) => p0_n_31,
      ACIN(21) => p0_n_32,
      ACIN(20) => p0_n_33,
      ACIN(19) => p0_n_34,
      ACIN(18) => p0_n_35,
      ACIN(17) => p0_n_36,
      ACIN(16) => p0_n_37,
      ACIN(15) => p0_n_38,
      ACIN(14) => p0_n_39,
      ACIN(13) => p0_n_40,
      ACIN(12) => p0_n_41,
      ACIN(11) => p0_n_42,
      ACIN(10) => p0_n_43,
      ACIN(9) => p0_n_44,
      ACIN(8) => p0_n_45,
      ACIN(7) => p0_n_46,
      ACIN(6) => p0_n_47,
      ACIN(5) => p0_n_48,
      ACIN(4) => p0_n_49,
      ACIN(3) => p0_n_50,
      ACIN(2) => p0_n_51,
      ACIN(1) => p0_n_52,
      ACIN(0) => p0_n_53,
      ACOUT(29 downto 0) => \NLW_p0__0_ACOUT_UNCONNECTED\(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => Q(11),
      B(16) => Q(11),
      B(15) => Q(11),
      B(14) => Q(11),
      B(13) => Q(11),
      B(12) => Q(11),
      B(11) => Q(11),
      B(10 downto 0) => Q(11 downto 1),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => \NLW_p0__0_BCOUT_UNCONNECTED\(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => \NLW_p0__0_CARRYCASCOUT_UNCONNECTED\,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => \NLW_p0__0_CARRYOUT_UNCONNECTED\(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => VALID_SUM,
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
      MULTSIGNOUT => \NLW_p0__0_MULTSIGNOUT_UNCONNECTED\,
      OPMODE(6 downto 0) => B"1010101",
      OVERFLOW => \NLW_p0__0_OVERFLOW_UNCONNECTED\,
      P(47) => \p0__0_n_58\,
      P(46) => \p0__0_n_59\,
      P(45) => \p0__0_n_60\,
      P(44) => \p0__0_n_61\,
      P(43) => \p0__0_n_62\,
      P(42) => \p0__0_n_63\,
      P(41) => \p0__0_n_64\,
      P(40) => \p0__0_n_65\,
      P(39) => \p0__0_n_66\,
      P(38) => \p0__0_n_67\,
      P(37) => \p0__0_n_68\,
      P(36 downto 10) => P(26 downto 0),
      P(9) => \p0__0_n_96\,
      P(8) => \p0__0_n_97\,
      P(7) => \p0__0_n_98\,
      P(6) => \p0__0_n_99\,
      P(5) => \p0__0_n_100\,
      P(4) => \p0__0_n_101\,
      P(3) => \p0__0_n_102\,
      P(2) => \p0__0_n_103\,
      P(1) => \p0__0_n_104\,
      P(0) => \p0__0_n_105\,
      PATTERNBDETECT => \NLW_p0__0_PATTERNBDETECT_UNCONNECTED\,
      PATTERNDETECT => \NLW_p0__0_PATTERNDETECT_UNCONNECTED\,
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
      PCOUT(47 downto 0) => \NLW_p0__0_PCOUT_UNCONNECTED\(47 downto 0),
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
      UNDERFLOW => \NLW_p0__0_UNDERFLOW_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_DAC_LOOP_0_gen_reg is
  port (
    \int_data_reg_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    GP_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \CFG_IN[64]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \int_data_reg_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[64]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \int_data_reg_reg[27]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[64]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \int_data_reg_reg[29]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CFG_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ADC_CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_DAC_LOOP_0_gen_reg : entity is "gen_reg";
end system_ADC_DAC_LOOP_0_gen_reg;

architecture STRUCTURE of system_ADC_DAC_LOOP_0_gen_reg is
  signal \^gp_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  GP_OUT(31 downto 0) <= \^gp_out\(31 downto 0);
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gp_out\(31),
      I1 => CFG_IN(0),
      O => S(1)
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gp_out\(30),
      I1 => CFG_IN(0),
      O => S(0)
    );
\int_data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(0),
      Q => \^gp_out\(0),
      R => Q(0)
    );
\int_data_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(10),
      Q => \^gp_out\(10),
      R => Q(0)
    );
\int_data_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(11),
      Q => \^gp_out\(11),
      R => Q(0)
    );
\int_data_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(12),
      Q => \^gp_out\(12),
      R => Q(0)
    );
\int_data_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(13),
      Q => \^gp_out\(13),
      R => Q(0)
    );
\int_data_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(14),
      Q => \^gp_out\(14),
      R => Q(0)
    );
\int_data_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(15),
      Q => \^gp_out\(15),
      R => Q(0)
    );
\int_data_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(16),
      Q => \^gp_out\(16),
      R => Q(0)
    );
\int_data_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(17),
      Q => \^gp_out\(17),
      R => Q(0)
    );
\int_data_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(18),
      Q => \^gp_out\(18),
      R => Q(0)
    );
\int_data_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(19),
      Q => \^gp_out\(19),
      R => Q(0)
    );
\int_data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(1),
      Q => \^gp_out\(1),
      R => Q(0)
    );
\int_data_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(20),
      Q => \^gp_out\(20),
      R => Q(0)
    );
\int_data_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(21),
      Q => \^gp_out\(21),
      R => Q(0)
    );
\int_data_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(22),
      Q => \^gp_out\(22),
      R => Q(0)
    );
\int_data_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(23),
      Q => \^gp_out\(23),
      R => Q(0)
    );
\int_data_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(24),
      Q => \^gp_out\(24),
      R => Q(0)
    );
\int_data_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(25),
      Q => \^gp_out\(25),
      R => Q(0)
    );
\int_data_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(26),
      Q => \^gp_out\(26),
      R => Q(0)
    );
\int_data_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(27),
      Q => \^gp_out\(27),
      R => Q(0)
    );
\int_data_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(28),
      Q => \^gp_out\(28),
      R => Q(0)
    );
\int_data_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(29),
      Q => \^gp_out\(29),
      R => Q(0)
    );
\int_data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(2),
      Q => \^gp_out\(2),
      R => Q(0)
    );
\int_data_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(30),
      Q => \^gp_out\(30),
      R => Q(0)
    );
\int_data_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(31),
      Q => \^gp_out\(31),
      R => Q(0)
    );
\int_data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(3),
      Q => \^gp_out\(3),
      R => Q(0)
    );
\int_data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(4),
      Q => \^gp_out\(4),
      R => Q(0)
    );
\int_data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(5),
      Q => \^gp_out\(5),
      R => Q(0)
    );
\int_data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(6),
      Q => \^gp_out\(6),
      R => Q(0)
    );
\int_data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(7),
      Q => \^gp_out\(7),
      R => Q(0)
    );
\int_data_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(8),
      Q => \^gp_out\(8),
      R => Q(0)
    );
\int_data_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => ADC_CLK,
      CE => Q(1),
      D => D(9),
      Q => \^gp_out\(9),
      R => Q(0)
    );
\s0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CFG_IN(0),
      I1 => \^gp_out\(23),
      O => \CFG_IN[64]\(3)
    );
\s0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CFG_IN(0),
      I1 => \^gp_out\(22),
      O => \CFG_IN[64]\(2)
    );
\s0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CFG_IN(0),
      I1 => \^gp_out\(21),
      O => \CFG_IN[64]\(1)
    );
\s0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CFG_IN(0),
      I1 => \^gp_out\(20),
      O => \CFG_IN[64]\(0)
    );
\s0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gp_out\(23),
      I1 => CFG_IN(0),
      O => \int_data_reg_reg[23]_0\(3)
    );
\s0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gp_out\(22),
      I1 => CFG_IN(0),
      O => \int_data_reg_reg[23]_0\(2)
    );
\s0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gp_out\(21),
      I1 => CFG_IN(0),
      O => \int_data_reg_reg[23]_0\(1)
    );
\s0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gp_out\(20),
      I1 => CFG_IN(0),
      O => \int_data_reg_reg[23]_0\(0)
    );
\s0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CFG_IN(0),
      I1 => \^gp_out\(27),
      O => \CFG_IN[64]_0\(3)
    );
\s0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CFG_IN(0),
      I1 => \^gp_out\(26),
      O => \CFG_IN[64]_0\(2)
    );
\s0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CFG_IN(0),
      I1 => \^gp_out\(25),
      O => \CFG_IN[64]_0\(1)
    );
\s0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CFG_IN(0),
      I1 => \^gp_out\(24),
      O => \CFG_IN[64]_0\(0)
    );
\s0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gp_out\(27),
      I1 => CFG_IN(0),
      O => \int_data_reg_reg[27]_0\(3)
    );
\s0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gp_out\(26),
      I1 => CFG_IN(0),
      O => \int_data_reg_reg[27]_0\(2)
    );
\s0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gp_out\(25),
      I1 => CFG_IN(0),
      O => \int_data_reg_reg[27]_0\(1)
    );
\s0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gp_out\(24),
      I1 => CFG_IN(0),
      O => \int_data_reg_reg[27]_0\(0)
    );
\s0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CFG_IN(0),
      I1 => \^gp_out\(29),
      O => \CFG_IN[64]_1\(1)
    );
\s0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CFG_IN(0),
      I1 => \^gp_out\(28),
      O => \CFG_IN[64]_1\(0)
    );
\s0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gp_out\(29),
      I1 => CFG_IN(0),
      O => \int_data_reg_reg[29]_0\(1)
    );
\s0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gp_out\(28),
      I1 => CFG_IN(0),
      O => \int_data_reg_reg[29]_0\(0)
    );
s0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CFG_IN(0),
      I1 => \^gp_out\(19),
      O => DI(2)
    );
s0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CFG_IN(0),
      I1 => \^gp_out\(18),
      O => DI(1)
    );
s0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => CFG_IN(0),
      I1 => \^gp_out\(17),
      O => DI(0)
    );
s0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gp_out\(19),
      I1 => CFG_IN(0),
      O => \int_data_reg_reg[19]_0\(3)
    );
s0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gp_out\(18),
      I1 => CFG_IN(0),
      O => \int_data_reg_reg[19]_0\(2)
    );
s0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^gp_out\(17),
      I1 => CFG_IN(0),
      O => \int_data_reg_reg[19]_0\(1)
    );
s0_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => CFG_IN(0),
      I1 => \^gp_out\(16),
      I2 => CFG_IN(1),
      O => \int_data_reg_reg[19]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_DAC_LOOP_0_gen_subber is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \int_data_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \int_data_reg_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \int_data_reg_reg[15]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \int_data_reg_reg[19]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \int_data_reg_reg[23]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \int_data_reg_reg[27]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \int_data_reg_reg[31]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_DAC_LOOP_0_gen_subber : entity is "gen_subber";
end system_ADC_DAC_LOOP_0_gen_subber;

architecture STRUCTURE of system_ADC_DAC_LOOP_0_gen_subber is
  signal \s0_carry__0_n_0\ : STD_LOGIC;
  signal \s0_carry__0_n_1\ : STD_LOGIC;
  signal \s0_carry__0_n_2\ : STD_LOGIC;
  signal \s0_carry__0_n_3\ : STD_LOGIC;
  signal \s0_carry__1_n_0\ : STD_LOGIC;
  signal \s0_carry__1_n_1\ : STD_LOGIC;
  signal \s0_carry__1_n_2\ : STD_LOGIC;
  signal \s0_carry__1_n_3\ : STD_LOGIC;
  signal \s0_carry__2_n_0\ : STD_LOGIC;
  signal \s0_carry__2_n_1\ : STD_LOGIC;
  signal \s0_carry__2_n_2\ : STD_LOGIC;
  signal \s0_carry__2_n_3\ : STD_LOGIC;
  signal \s0_carry__3_n_0\ : STD_LOGIC;
  signal \s0_carry__3_n_1\ : STD_LOGIC;
  signal \s0_carry__3_n_2\ : STD_LOGIC;
  signal \s0_carry__3_n_3\ : STD_LOGIC;
  signal \s0_carry__4_n_0\ : STD_LOGIC;
  signal \s0_carry__4_n_1\ : STD_LOGIC;
  signal \s0_carry__4_n_2\ : STD_LOGIC;
  signal \s0_carry__4_n_3\ : STD_LOGIC;
  signal \s0_carry__5_n_0\ : STD_LOGIC;
  signal \s0_carry__5_n_1\ : STD_LOGIC;
  signal \s0_carry__5_n_2\ : STD_LOGIC;
  signal \s0_carry__5_n_3\ : STD_LOGIC;
  signal \s0_carry__6_n_1\ : STD_LOGIC;
  signal \s0_carry__6_n_2\ : STD_LOGIC;
  signal \s0_carry__6_n_3\ : STD_LOGIC;
  signal s0_carry_n_0 : STD_LOGIC;
  signal s0_carry_n_1 : STD_LOGIC;
  signal s0_carry_n_2 : STD_LOGIC;
  signal s0_carry_n_3 : STD_LOGIC;
  signal \NLW_s0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of s0_carry : label is 35;
  attribute ADDER_THRESHOLD of \s0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \s0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \s0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \s0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \s0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \s0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \s0_carry__6\ : label is 35;
begin
s0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => s0_carry_n_0,
      CO(2) => s0_carry_n_1,
      CO(1) => s0_carry_n_2,
      CO(0) => s0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => a(3 downto 0),
      O(3 downto 0) => D(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\s0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => s0_carry_n_0,
      CO(3) => \s0_carry__0_n_0\,
      CO(2) => \s0_carry__0_n_1\,
      CO(1) => \s0_carry__0_n_2\,
      CO(0) => \s0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(7 downto 4),
      O(3 downto 0) => D(7 downto 4),
      S(3 downto 0) => \int_data_reg_reg[7]\(3 downto 0)
    );
\s0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s0_carry__0_n_0\,
      CO(3) => \s0_carry__1_n_0\,
      CO(2) => \s0_carry__1_n_1\,
      CO(1) => \s0_carry__1_n_2\,
      CO(0) => \s0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(11 downto 8),
      O(3 downto 0) => D(11 downto 8),
      S(3 downto 0) => \int_data_reg_reg[11]\(3 downto 0)
    );
\s0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s0_carry__1_n_0\,
      CO(3) => \s0_carry__2_n_0\,
      CO(2) => \s0_carry__2_n_1\,
      CO(1) => \s0_carry__2_n_2\,
      CO(0) => \s0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(15 downto 12),
      O(3 downto 0) => D(15 downto 12),
      S(3 downto 0) => \int_data_reg_reg[15]\(3 downto 0)
    );
\s0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \s0_carry__2_n_0\,
      CO(3) => \s0_carry__3_n_0\,
      CO(2) => \s0_carry__3_n_1\,
      CO(1) => \s0_carry__3_n_2\,
      CO(0) => \s0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(19 downto 16),
      O(3 downto 0) => D(19 downto 16),
      S(3 downto 0) => \int_data_reg_reg[19]\(3 downto 0)
    );
\s0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \s0_carry__3_n_0\,
      CO(3) => \s0_carry__4_n_0\,
      CO(2) => \s0_carry__4_n_1\,
      CO(1) => \s0_carry__4_n_2\,
      CO(0) => \s0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(23 downto 20),
      O(3 downto 0) => D(23 downto 20),
      S(3 downto 0) => \int_data_reg_reg[23]\(3 downto 0)
    );
\s0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \s0_carry__4_n_0\,
      CO(3) => \s0_carry__5_n_0\,
      CO(2) => \s0_carry__5_n_1\,
      CO(1) => \s0_carry__5_n_2\,
      CO(0) => \s0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => a(27 downto 24),
      O(3 downto 0) => D(27 downto 24),
      S(3 downto 0) => \int_data_reg_reg[27]\(3 downto 0)
    );
\s0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \s0_carry__5_n_0\,
      CO(3) => \NLW_s0_carry__6_CO_UNCONNECTED\(3),
      CO(2) => \s0_carry__6_n_1\,
      CO(1) => \s0_carry__6_n_2\,
      CO(0) => \s0_carry__6_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => a(30 downto 28),
      O(3 downto 0) => D(31 downto 28),
      S(3 downto 0) => \int_data_reg_reg[31]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_DAC_LOOP_0_gen_subber_1 is
  port (
    A : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \p0__1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \p0__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \p0__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \p0__1_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \p0__1_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \p0__1_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \p0__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_DAC_LOOP_0_gen_subber_1 : entity is "gen_subber";
end system_ADC_DAC_LOOP_0_gen_subber_1;

architecture STRUCTURE of system_ADC_DAC_LOOP_0_gen_subber_1 is
  signal \s0_carry__0_n_0\ : STD_LOGIC;
  signal \s0_carry__0_n_1\ : STD_LOGIC;
  signal \s0_carry__0_n_2\ : STD_LOGIC;
  signal \s0_carry__0_n_3\ : STD_LOGIC;
  signal \s0_carry__1_n_0\ : STD_LOGIC;
  signal \s0_carry__1_n_1\ : STD_LOGIC;
  signal \s0_carry__1_n_2\ : STD_LOGIC;
  signal \s0_carry__1_n_3\ : STD_LOGIC;
  signal \s0_carry__2_n_0\ : STD_LOGIC;
  signal \s0_carry__2_n_1\ : STD_LOGIC;
  signal \s0_carry__2_n_2\ : STD_LOGIC;
  signal \s0_carry__2_n_3\ : STD_LOGIC;
  signal \s0_carry__3_n_2\ : STD_LOGIC;
  signal \s0_carry__3_n_3\ : STD_LOGIC;
  signal s0_carry_n_0 : STD_LOGIC;
  signal s0_carry_n_1 : STD_LOGIC;
  signal s0_carry_n_2 : STD_LOGIC;
  signal s0_carry_n_3 : STD_LOGIC;
  signal \NLW_s0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
s0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => s0_carry_n_0,
      CO(2) => s0_carry_n_1,
      CO(1) => s0_carry_n_2,
      CO(0) => s0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => A(3 downto 0),
      S(3 downto 0) => \p0__1\(3 downto 0)
    );
\s0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => s0_carry_n_0,
      CO(3) => \s0_carry__0_n_0\,
      CO(2) => \s0_carry__0_n_1\,
      CO(1) => \s0_carry__0_n_2\,
      CO(0) => \s0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \p0__1_0\(3 downto 0),
      O(3 downto 0) => A(7 downto 4),
      S(3 downto 0) => \p0__1_1\(3 downto 0)
    );
\s0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s0_carry__0_n_0\,
      CO(3) => \s0_carry__1_n_0\,
      CO(2) => \s0_carry__1_n_1\,
      CO(1) => \s0_carry__1_n_2\,
      CO(0) => \s0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \p0__1_2\(3 downto 0),
      O(3 downto 0) => A(11 downto 8),
      S(3 downto 0) => \p0__1_3\(3 downto 0)
    );
\s0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s0_carry__1_n_0\,
      CO(3) => \s0_carry__2_n_0\,
      CO(2) => \s0_carry__2_n_1\,
      CO(1) => \s0_carry__2_n_2\,
      CO(0) => \s0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \p0__1_4\(3 downto 0),
      O(3 downto 0) => A(15 downto 12),
      S(3 downto 0) => S(3 downto 0)
    );
\s0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \s0_carry__2_n_0\,
      CO(3 downto 2) => \NLW_s0_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \s0_carry__3_n_2\,
      CO(0) => \s0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \p0__0\(0),
      O(3) => \NLW_s0_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => O(2 downto 0),
      S(3 downto 2) => B"01",
      S(1) => CO(0),
      S(0) => CO(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_DAC_LOOP_0_ADC_AVERAGE is
  port (
    F_O_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ADC_CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    ADC_DATA_IN : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_DAC_LOOP_0_ADC_AVERAGE : entity is "ADC_AVERAGE";
end system_ADC_DAC_LOOP_0_ADC_AVERAGE;

architecture STRUCTURE of system_ADC_DAC_LOOP_0_ADC_AVERAGE is
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \SUM[11]_i_2_n_0\ : STD_LOGIC;
  signal \SUM[11]_i_3_n_0\ : STD_LOGIC;
  signal \SUM[11]_i_4_n_0\ : STD_LOGIC;
  signal \SUM[11]_i_5_n_0\ : STD_LOGIC;
  signal \SUM[15]_i_2_n_0\ : STD_LOGIC;
  signal \SUM[15]_i_3_n_0\ : STD_LOGIC;
  signal \SUM[15]_i_4_n_0\ : STD_LOGIC;
  signal \SUM[15]_i_5_n_0\ : STD_LOGIC;
  signal \SUM[15]_i_6_n_0\ : STD_LOGIC;
  signal \SUM[19]_i_2_n_0\ : STD_LOGIC;
  signal \SUM[19]_i_3_n_0\ : STD_LOGIC;
  signal \SUM[19]_i_4_n_0\ : STD_LOGIC;
  signal \SUM[19]_i_5_n_0\ : STD_LOGIC;
  signal \SUM[21]_i_4_n_0\ : STD_LOGIC;
  signal \SUM[21]_i_5_n_0\ : STD_LOGIC;
  signal \SUM[3]_i_2_n_0\ : STD_LOGIC;
  signal \SUM[3]_i_3_n_0\ : STD_LOGIC;
  signal \SUM[3]_i_4_n_0\ : STD_LOGIC;
  signal \SUM[3]_i_5_n_0\ : STD_LOGIC;
  signal \SUM[7]_i_2_n_0\ : STD_LOGIC;
  signal \SUM[7]_i_3_n_0\ : STD_LOGIC;
  signal \SUM[7]_i_4_n_0\ : STD_LOGIC;
  signal \SUM[7]_i_5_n_0\ : STD_LOGIC;
  signal \SUM_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \SUM_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \SUM_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \SUM_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \SUM_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \SUM_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \SUM_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \SUM_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \SUM_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \SUM_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \SUM_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \SUM_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \SUM_reg[21]_i_3_n_3\ : STD_LOGIC;
  signal \SUM_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \SUM_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \SUM_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \SUM_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \SUM_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \SUM_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \SUM_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \SUM_reg[7]_i_1_n_3\ : STD_LOGIC;
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
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \NLW_SUM_reg[21]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_SUM_reg[21]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
COUNT0: entity work.system_ADC_DAC_LOOP_0_gen_counter
     port map (
      ADC_CLK => ADC_CLK,
      E(0) => p_1_in,
      F_O_reg_0 => F_O_reg,
      RST => RST
    );
\SUM[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADC_DATA_IN(11),
      I1 => \^q\(1),
      O => \SUM[11]_i_2_n_0\
    );
\SUM[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => ADC_DATA_IN(10),
      O => \SUM[11]_i_3_n_0\
    );
\SUM[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SUM_reg_n_0_[9]\,
      I1 => ADC_DATA_IN(9),
      O => \SUM[11]_i_4_n_0\
    );
\SUM[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SUM_reg_n_0_[8]\,
      I1 => ADC_DATA_IN(8),
      O => \SUM[11]_i_5_n_0\
    );
\SUM[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ADC_DATA_IN(11),
      O => \SUM[15]_i_2_n_0\
    );
\SUM[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \SUM[15]_i_3_n_0\
    );
\SUM[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \SUM[15]_i_4_n_0\
    );
\SUM[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \SUM[15]_i_5_n_0\
    );
\SUM[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ADC_DATA_IN(11),
      I1 => \^q\(2),
      O => \SUM[15]_i_6_n_0\
    );
\SUM[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => \SUM[19]_i_2_n_0\
    );
\SUM[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      O => \SUM[19]_i_3_n_0\
    );
\SUM[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      O => \SUM[19]_i_4_n_0\
    );
\SUM[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \SUM[19]_i_5_n_0\
    );
\SUM[21]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(10),
      I1 => \^q\(11),
      O => \SUM[21]_i_4_n_0\
    );
\SUM[21]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(10),
      O => \SUM[21]_i_5_n_0\
    );
\SUM[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SUM_reg_n_0_[3]\,
      I1 => ADC_DATA_IN(3),
      O => \SUM[3]_i_2_n_0\
    );
\SUM[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SUM_reg_n_0_[2]\,
      I1 => ADC_DATA_IN(2),
      O => \SUM[3]_i_3_n_0\
    );
\SUM[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SUM_reg_n_0_[1]\,
      I1 => ADC_DATA_IN(1),
      O => \SUM[3]_i_4_n_0\
    );
\SUM[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SUM_reg_n_0_[0]\,
      I1 => ADC_DATA_IN(0),
      O => \SUM[3]_i_5_n_0\
    );
\SUM[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SUM_reg_n_0_[7]\,
      I1 => ADC_DATA_IN(7),
      O => \SUM[7]_i_2_n_0\
    );
\SUM[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SUM_reg_n_0_[6]\,
      I1 => ADC_DATA_IN(6),
      O => \SUM[7]_i_3_n_0\
    );
\SUM[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SUM_reg_n_0_[5]\,
      I1 => ADC_DATA_IN(5),
      O => \SUM[7]_i_4_n_0\
    );
\SUM[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SUM_reg_n_0_[4]\,
      I1 => ADC_DATA_IN(4),
      O => \SUM[7]_i_5_n_0\
    );
\SUM_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(0),
      Q => \SUM_reg_n_0_[0]\,
      R => RST
    );
\SUM_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(10),
      Q => \^q\(0),
      R => RST
    );
\SUM_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(11),
      Q => \^q\(1),
      R => RST
    );
\SUM_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_reg[7]_i_1_n_0\,
      CO(3) => \SUM_reg[11]_i_1_n_0\,
      CO(2) => \SUM_reg[11]_i_1_n_1\,
      CO(1) => \SUM_reg[11]_i_1_n_2\,
      CO(0) => \SUM_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => ADC_DATA_IN(11),
      DI(2) => \^q\(0),
      DI(1) => \SUM_reg_n_0_[9]\,
      DI(0) => \SUM_reg_n_0_[8]\,
      O(3 downto 0) => p_2_in(11 downto 8),
      S(3) => \SUM[11]_i_2_n_0\,
      S(2) => \SUM[11]_i_3_n_0\,
      S(1) => \SUM[11]_i_4_n_0\,
      S(0) => \SUM[11]_i_5_n_0\
    );
\SUM_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(12),
      Q => \^q\(2),
      R => RST
    );
\SUM_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(13),
      Q => \^q\(3),
      R => RST
    );
\SUM_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(14),
      Q => \^q\(4),
      R => RST
    );
\SUM_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(15),
      Q => \^q\(5),
      R => RST
    );
\SUM_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_reg[11]_i_1_n_0\,
      CO(3) => \SUM_reg[15]_i_1_n_0\,
      CO(2) => \SUM_reg[15]_i_1_n_1\,
      CO(1) => \SUM_reg[15]_i_1_n_2\,
      CO(0) => \SUM_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \^q\(4 downto 2),
      DI(0) => \SUM[15]_i_2_n_0\,
      O(3 downto 0) => p_2_in(15 downto 12),
      S(3) => \SUM[15]_i_3_n_0\,
      S(2) => \SUM[15]_i_4_n_0\,
      S(1) => \SUM[15]_i_5_n_0\,
      S(0) => \SUM[15]_i_6_n_0\
    );
\SUM_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(16),
      Q => \^q\(6),
      R => RST
    );
\SUM_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(17),
      Q => \^q\(7),
      R => RST
    );
\SUM_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(18),
      Q => \^q\(8),
      R => RST
    );
\SUM_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(19),
      Q => \^q\(9),
      R => RST
    );
\SUM_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_reg[15]_i_1_n_0\,
      CO(3) => \SUM_reg[19]_i_1_n_0\,
      CO(2) => \SUM_reg[19]_i_1_n_1\,
      CO(1) => \SUM_reg[19]_i_1_n_2\,
      CO(0) => \SUM_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^q\(8 downto 5),
      O(3 downto 0) => p_2_in(19 downto 16),
      S(3) => \SUM[19]_i_2_n_0\,
      S(2) => \SUM[19]_i_3_n_0\,
      S(1) => \SUM[19]_i_4_n_0\,
      S(0) => \SUM[19]_i_5_n_0\
    );
\SUM_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(1),
      Q => \SUM_reg_n_0_[1]\,
      R => RST
    );
\SUM_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(20),
      Q => \^q\(10),
      R => RST
    );
\SUM_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(21),
      Q => \^q\(11),
      R => RST
    );
\SUM_reg[21]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_reg[19]_i_1_n_0\,
      CO(3 downto 1) => \NLW_SUM_reg[21]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \SUM_reg[21]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \^q\(9),
      O(3 downto 2) => \NLW_SUM_reg[21]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => p_2_in(21 downto 20),
      S(3 downto 2) => B"00",
      S(1) => \SUM[21]_i_4_n_0\,
      S(0) => \SUM[21]_i_5_n_0\
    );
\SUM_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(2),
      Q => \SUM_reg_n_0_[2]\,
      R => RST
    );
\SUM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(3),
      Q => \SUM_reg_n_0_[3]\,
      R => RST
    );
\SUM_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \SUM_reg[3]_i_1_n_0\,
      CO(2) => \SUM_reg[3]_i_1_n_1\,
      CO(1) => \SUM_reg[3]_i_1_n_2\,
      CO(0) => \SUM_reg[3]_i_1_n_3\,
      CYINIT => '1',
      DI(3) => \SUM_reg_n_0_[3]\,
      DI(2) => \SUM_reg_n_0_[2]\,
      DI(1) => \SUM_reg_n_0_[1]\,
      DI(0) => \SUM_reg_n_0_[0]\,
      O(3 downto 0) => p_2_in(3 downto 0),
      S(3) => \SUM[3]_i_2_n_0\,
      S(2) => \SUM[3]_i_3_n_0\,
      S(1) => \SUM[3]_i_4_n_0\,
      S(0) => \SUM[3]_i_5_n_0\
    );
\SUM_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(4),
      Q => \SUM_reg_n_0_[4]\,
      R => RST
    );
\SUM_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(5),
      Q => \SUM_reg_n_0_[5]\,
      R => RST
    );
\SUM_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(6),
      Q => \SUM_reg_n_0_[6]\,
      R => RST
    );
\SUM_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(7),
      Q => \SUM_reg_n_0_[7]\,
      R => RST
    );
\SUM_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SUM_reg[3]_i_1_n_0\,
      CO(3) => \SUM_reg[7]_i_1_n_0\,
      CO(2) => \SUM_reg[7]_i_1_n_1\,
      CO(1) => \SUM_reg[7]_i_1_n_2\,
      CO(0) => \SUM_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \SUM_reg_n_0_[7]\,
      DI(2) => \SUM_reg_n_0_[6]\,
      DI(1) => \SUM_reg_n_0_[5]\,
      DI(0) => \SUM_reg_n_0_[4]\,
      O(3 downto 0) => p_2_in(7 downto 4),
      S(3) => \SUM[7]_i_2_n_0\,
      S(2) => \SUM[7]_i_3_n_0\,
      S(1) => \SUM[7]_i_4_n_0\,
      S(0) => \SUM[7]_i_5_n_0\
    );
\SUM_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(8),
      Q => \SUM_reg_n_0_[8]\,
      R => RST
    );
\SUM_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ADC_CLK,
      CE => p_1_in,
      D => p_2_in(9),
      Q => \SUM_reg_n_0_[9]\,
      R => RST
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_DAC_LOOP_0_my_mult is
  port (
    P : out STD_LOGIC_VECTOR ( 26 downto 0 );
    VALID_SUM : in STD_LOGIC;
    ADC_CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_DAC_LOOP_0_my_mult : entity is "my_mult";
end system_ADC_DAC_LOOP_0_my_mult;

architecture STRUCTURE of system_ADC_DAC_LOOP_0_my_mult is
begin
MULT1: entity work.system_ADC_DAC_LOOP_0_gen_mult_3
     port map (
      ADC_CLK => ADC_CLK,
      P(26 downto 0) => P(26 downto 0),
      Q(11 downto 0) => Q(11 downto 0),
      VALID_SUM => VALID_SUM
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_ADC_DAC_LOOP_0_my_mult__parameterized0\ is
  port (
    \p0__2\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[39]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[43]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[47]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[51]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[55]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[59]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \CFG_IN[63]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    P : in STD_LOGIC_VECTOR ( 26 downto 0 );
    CFG_IN : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_ADC_DAC_LOOP_0_my_mult__parameterized0\ : entity is "my_mult";
end \system_ADC_DAC_LOOP_0_my_mult__parameterized0\;

architecture STRUCTURE of \system_ADC_DAC_LOOP_0_my_mult__parameterized0\ is
begin
MULT1: entity work.system_ADC_DAC_LOOP_0_gen_mult
     port map (
      CFG_IN(63 downto 0) => CFG_IN(63 downto 0),
      \CFG_IN[39]\(3 downto 0) => \CFG_IN[39]\(3 downto 0),
      \CFG_IN[43]\(3 downto 0) => \CFG_IN[43]\(3 downto 0),
      \CFG_IN[47]\(3 downto 0) => \CFG_IN[47]\(3 downto 0),
      \CFG_IN[51]\(3 downto 0) => \CFG_IN[51]\(3 downto 0),
      \CFG_IN[55]\(3 downto 0) => \CFG_IN[55]\(3 downto 0),
      \CFG_IN[59]\(3 downto 0) => \CFG_IN[59]\(3 downto 0),
      \CFG_IN[63]\(3 downto 0) => \CFG_IN[63]\(3 downto 0),
      P(26 downto 0) => P(26 downto 0),
      S(3 downto 0) => S(3 downto 0),
      \p0__2_0\(30 downto 0) => \p0__2\(30 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_ADC_DAC_LOOP_0_my_mult__parameterized1\ is
  port (
    DACB_CODE_OUT : out STD_LOGIC_VECTOR ( 13 downto 0 );
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_ADC_DAC_LOOP_0_my_mult__parameterized1\ : entity is "my_mult";
end \system_ADC_DAC_LOOP_0_my_mult__parameterized1\;

architecture STRUCTURE of \system_ADC_DAC_LOOP_0_my_mult__parameterized1\ is
begin
MULT1: entity work.system_ADC_DAC_LOOP_0_gen_mult_2
     port map (
      A(15 downto 0) => A(15 downto 0),
      DACB_CODE_OUT(13 downto 0) => DACB_CODE_OUT(13 downto 0),
      O(2 downto 0) => O(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_DAC_LOOP_0_ADC_IN is
  port (
    P : out STD_LOGIC_VECTOR ( 26 downto 0 );
    F_O_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ADC_CLK : in STD_LOGIC;
    ADC_DATA_IN : in STD_LOGIC_VECTOR ( 11 downto 0 );
    GP_IN : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_DAC_LOOP_0_ADC_IN : entity is "ADC_IN";
end system_ADC_DAC_LOOP_0_ADC_IN;

architecture STRUCTURE of system_ADC_DAC_LOOP_0_ADC_IN is
  signal \^f_o_reg\ : STD_LOGIC;
  signal RST : STD_LOGIC;
  signal VALID_SUM : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  F_O_reg <= \^f_o_reg\;
ADC_AVERAGE0: entity work.system_ADC_DAC_LOOP_0_ADC_AVERAGE
     port map (
      ADC_CLK => ADC_CLK,
      ADC_DATA_IN(11 downto 0) => ADC_DATA_IN(11 downto 0),
      F_O_reg => \^f_o_reg\,
      Q(11 downto 0) => p_0_in(11 downto 0),
      RST => RST
    );
FSM0: entity work.system_ADC_DAC_LOOP_0_FSM
     port map (
      ADC_CLK => ADC_CLK,
      GP_IN(0) => GP_IN(0),
      Q(1 downto 0) => Q(1 downto 0),
      RST => RST,
      VALID_SUM => VALID_SUM,
      \p0__0\ => \^f_o_reg\
    );
MULT1: entity work.system_ADC_DAC_LOOP_0_my_mult
     port map (
      ADC_CLK => ADC_CLK,
      P(26 downto 0) => P(26 downto 0),
      Q(11 downto 0) => p_0_in(11 downto 0),
      VALID_SUM => VALID_SUM
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_DAC_LOOP_0_DAC_OUT is
  port (
    DACB_CODE_OUT : out STD_LOGIC_VECTOR ( 13 downto 0 );
    CFG_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    GP_OUT : in STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \p0__1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \p0__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \p0__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \p0__1_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \p0__1_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \p0__1_4\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \p0__1_5\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_DAC_LOOP_0_DAC_OUT : entity is "DAC_OUT";
end system_ADC_DAC_LOOP_0_DAC_OUT;

architecture STRUCTURE of system_ADC_DAC_LOOP_0_DAC_OUT is
  signal cal_mult_n_0 : STD_LOGIC;
  signal cal_mult_n_1 : STD_LOGIC;
  signal cal_mult_n_2 : STD_LOGIC;
  signal cal_mult_n_3 : STD_LOGIC;
  signal cal_mult_n_4 : STD_LOGIC;
  signal cal_mult_n_5 : STD_LOGIC;
  signal cal_mult_n_6 : STD_LOGIC;
  signal cal_sub_n_0 : STD_LOGIC;
  signal cal_sub_n_1 : STD_LOGIC;
  signal cal_sub_n_10 : STD_LOGIC;
  signal cal_sub_n_11 : STD_LOGIC;
  signal cal_sub_n_12 : STD_LOGIC;
  signal cal_sub_n_13 : STD_LOGIC;
  signal cal_sub_n_14 : STD_LOGIC;
  signal cal_sub_n_15 : STD_LOGIC;
  signal cal_sub_n_16 : STD_LOGIC;
  signal cal_sub_n_17 : STD_LOGIC;
  signal cal_sub_n_18 : STD_LOGIC;
  signal cal_sub_n_2 : STD_LOGIC;
  signal cal_sub_n_3 : STD_LOGIC;
  signal cal_sub_n_4 : STD_LOGIC;
  signal cal_sub_n_5 : STD_LOGIC;
  signal cal_sub_n_6 : STD_LOGIC;
  signal cal_sub_n_7 : STD_LOGIC;
  signal cal_sub_n_8 : STD_LOGIC;
  signal cal_sub_n_9 : STD_LOGIC;
begin
MULT0: entity work.\system_ADC_DAC_LOOP_0_my_mult__parameterized1\
     port map (
      A(15) => cal_sub_n_0,
      A(14) => cal_sub_n_1,
      A(13) => cal_sub_n_2,
      A(12) => cal_sub_n_3,
      A(11) => cal_sub_n_4,
      A(10) => cal_sub_n_5,
      A(9) => cal_sub_n_6,
      A(8) => cal_sub_n_7,
      A(7) => cal_sub_n_8,
      A(6) => cal_sub_n_9,
      A(5) => cal_sub_n_10,
      A(4) => cal_sub_n_11,
      A(3) => cal_sub_n_12,
      A(2) => cal_sub_n_13,
      A(1) => cal_sub_n_14,
      A(0) => cal_sub_n_15,
      DACB_CODE_OUT(13 downto 0) => DACB_CODE_OUT(13 downto 0),
      O(2) => cal_sub_n_16,
      O(1) => cal_sub_n_17,
      O(0) => cal_sub_n_18
    );
cal_mult: entity work.system_ADC_DAC_LOOP_0_gen_mult_0
     port map (
      CFG_IN(0) => CFG_IN(0),
      CO(0) => cal_mult_n_1,
      DI(0) => cal_mult_n_0,
      GP_OUT(0) => GP_OUT(0),
      O(1) => cal_mult_n_2,
      O(0) => cal_mult_n_3,
      S(1 downto 0) => S(1 downto 0),
      \p0_inferred__1/i__carry_0\(0) => cal_mult_n_4,
      \p0_inferred__1/i__carry_1\(1) => cal_mult_n_5,
      \p0_inferred__1/i__carry_1\(0) => cal_mult_n_6
    );
cal_sub: entity work.system_ADC_DAC_LOOP_0_gen_subber_1
     port map (
      A(15) => cal_sub_n_0,
      A(14) => cal_sub_n_1,
      A(13) => cal_sub_n_2,
      A(12) => cal_sub_n_3,
      A(11) => cal_sub_n_4,
      A(10) => cal_sub_n_5,
      A(9) => cal_sub_n_6,
      A(8) => cal_sub_n_7,
      A(7) => cal_sub_n_8,
      A(6) => cal_sub_n_9,
      A(5) => cal_sub_n_10,
      A(4) => cal_sub_n_11,
      A(3) => cal_sub_n_12,
      A(2) => cal_sub_n_13,
      A(1) => cal_sub_n_14,
      A(0) => cal_sub_n_15,
      CO(0) => cal_mult_n_1,
      DI(3 downto 1) => DI(2 downto 0),
      DI(0) => cal_mult_n_0,
      O(2) => cal_sub_n_16,
      O(1) => cal_sub_n_17,
      O(0) => cal_sub_n_18,
      S(3) => cal_mult_n_5,
      S(2) => cal_mult_n_6,
      S(1 downto 0) => \p0__1_5\(1 downto 0),
      \p0__0\(0) => cal_mult_n_4,
      \p0__1\(3 downto 0) => \p0__1\(3 downto 0),
      \p0__1_0\(3 downto 0) => \p0__1_0\(3 downto 0),
      \p0__1_1\(3 downto 0) => \p0__1_1\(3 downto 0),
      \p0__1_2\(3 downto 0) => \p0__1_2\(3 downto 0),
      \p0__1_3\(3 downto 0) => \p0__1_3\(3 downto 0),
      \p0__1_4\(3) => cal_mult_n_2,
      \p0__1_4\(2) => cal_mult_n_3,
      \p0__1_4\(1 downto 0) => \p0__1_4\(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_DAC_LOOP_0_ADC_DAC_LOOP is
  port (
    GP_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DACB_CODE_OUT : out STD_LOGIC_VECTOR ( 13 downto 0 );
    F_O_reg : out STD_LOGIC;
    CFG_IN : in STD_LOGIC_VECTOR ( 65 downto 0 );
    ADC_DATA_IN : in STD_LOGIC_VECTOR ( 11 downto 0 );
    ADC_CLK : in STD_LOGIC;
    GP_IN : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_ADC_DAC_LOOP_0_ADC_DAC_LOOP : entity is "ADC_DAC_LOOP";
end system_ADC_DAC_LOOP_0_ADC_DAC_LOOP;

architecture STRUCTURE of system_ADC_DAC_LOOP_0_ADC_DAC_LOOP is
  signal ADC0_n_0 : STD_LOGIC;
  signal ADC0_n_1 : STD_LOGIC;
  signal ADC0_n_10 : STD_LOGIC;
  signal ADC0_n_11 : STD_LOGIC;
  signal ADC0_n_12 : STD_LOGIC;
  signal ADC0_n_13 : STD_LOGIC;
  signal ADC0_n_14 : STD_LOGIC;
  signal ADC0_n_15 : STD_LOGIC;
  signal ADC0_n_16 : STD_LOGIC;
  signal ADC0_n_17 : STD_LOGIC;
  signal ADC0_n_18 : STD_LOGIC;
  signal ADC0_n_19 : STD_LOGIC;
  signal ADC0_n_2 : STD_LOGIC;
  signal ADC0_n_20 : STD_LOGIC;
  signal ADC0_n_21 : STD_LOGIC;
  signal ADC0_n_22 : STD_LOGIC;
  signal ADC0_n_23 : STD_LOGIC;
  signal ADC0_n_24 : STD_LOGIC;
  signal ADC0_n_25 : STD_LOGIC;
  signal ADC0_n_26 : STD_LOGIC;
  signal ADC0_n_3 : STD_LOGIC;
  signal ADC0_n_4 : STD_LOGIC;
  signal ADC0_n_5 : STD_LOGIC;
  signal ADC0_n_6 : STD_LOGIC;
  signal ADC0_n_7 : STD_LOGIC;
  signal ADC0_n_8 : STD_LOGIC;
  signal ADC0_n_9 : STD_LOGIC;
  signal \^gp_out\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal MULT1_n_31 : STD_LOGIC;
  signal MULT1_n_32 : STD_LOGIC;
  signal MULT1_n_33 : STD_LOGIC;
  signal MULT1_n_34 : STD_LOGIC;
  signal MULT1_n_35 : STD_LOGIC;
  signal MULT1_n_36 : STD_LOGIC;
  signal MULT1_n_37 : STD_LOGIC;
  signal MULT1_n_38 : STD_LOGIC;
  signal MULT1_n_39 : STD_LOGIC;
  signal MULT1_n_40 : STD_LOGIC;
  signal MULT1_n_41 : STD_LOGIC;
  signal MULT1_n_42 : STD_LOGIC;
  signal MULT1_n_43 : STD_LOGIC;
  signal MULT1_n_44 : STD_LOGIC;
  signal MULT1_n_45 : STD_LOGIC;
  signal MULT1_n_46 : STD_LOGIC;
  signal MULT1_n_47 : STD_LOGIC;
  signal MULT1_n_48 : STD_LOGIC;
  signal MULT1_n_49 : STD_LOGIC;
  signal MULT1_n_50 : STD_LOGIC;
  signal MULT1_n_51 : STD_LOGIC;
  signal MULT1_n_52 : STD_LOGIC;
  signal MULT1_n_53 : STD_LOGIC;
  signal MULT1_n_54 : STD_LOGIC;
  signal MULT1_n_55 : STD_LOGIC;
  signal MULT1_n_56 : STD_LOGIC;
  signal MULT1_n_57 : STD_LOGIC;
  signal MULT1_n_58 : STD_LOGIC;
  signal MULT1_n_59 : STD_LOGIC;
  signal MULT1_n_60 : STD_LOGIC;
  signal MULT1_n_61 : STD_LOGIC;
  signal MULT1_n_62 : STD_LOGIC;
  signal REG0_n_0 : STD_LOGIC;
  signal REG0_n_1 : STD_LOGIC;
  signal REG0_n_2 : STD_LOGIC;
  signal REG0_n_3 : STD_LOGIC;
  signal REG0_n_36 : STD_LOGIC;
  signal REG0_n_37 : STD_LOGIC;
  signal REG0_n_38 : STD_LOGIC;
  signal REG0_n_39 : STD_LOGIC;
  signal REG0_n_40 : STD_LOGIC;
  signal REG0_n_41 : STD_LOGIC;
  signal REG0_n_42 : STD_LOGIC;
  signal REG0_n_43 : STD_LOGIC;
  signal REG0_n_44 : STD_LOGIC;
  signal REG0_n_45 : STD_LOGIC;
  signal REG0_n_46 : STD_LOGIC;
  signal REG0_n_47 : STD_LOGIC;
  signal REG0_n_48 : STD_LOGIC;
  signal REG0_n_49 : STD_LOGIC;
  signal REG0_n_50 : STD_LOGIC;
  signal REG0_n_51 : STD_LOGIC;
  signal REG0_n_52 : STD_LOGIC;
  signal REG0_n_53 : STD_LOGIC;
  signal REG0_n_54 : STD_LOGIC;
  signal REG0_n_55 : STD_LOGIC;
  signal REG0_n_56 : STD_LOGIC;
  signal REG0_n_57 : STD_LOGIC;
  signal REG0_n_58 : STD_LOGIC;
  signal REG0_n_59 : STD_LOGIC;
  signal REG0_n_60 : STD_LOGIC;
  signal REG_RST : STD_LOGIC;
  signal REG_WRITE : STD_LOGIC;
  signal a : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal data_in : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  GP_OUT(31 downto 0) <= \^gp_out\(31 downto 0);
ADC0: entity work.system_ADC_DAC_LOOP_0_ADC_IN
     port map (
      ADC_CLK => ADC_CLK,
      ADC_DATA_IN(11 downto 0) => ADC_DATA_IN(11 downto 0),
      F_O_reg => F_O_reg,
      GP_IN(0) => GP_IN(0),
      P(26) => ADC0_n_0,
      P(25) => ADC0_n_1,
      P(24) => ADC0_n_2,
      P(23) => ADC0_n_3,
      P(22) => ADC0_n_4,
      P(21) => ADC0_n_5,
      P(20) => ADC0_n_6,
      P(19) => ADC0_n_7,
      P(18) => ADC0_n_8,
      P(17) => ADC0_n_9,
      P(16) => ADC0_n_10,
      P(15) => ADC0_n_11,
      P(14) => ADC0_n_12,
      P(13) => ADC0_n_13,
      P(12) => ADC0_n_14,
      P(11) => ADC0_n_15,
      P(10) => ADC0_n_16,
      P(9) => ADC0_n_17,
      P(8) => ADC0_n_18,
      P(7) => ADC0_n_19,
      P(6) => ADC0_n_20,
      P(5) => ADC0_n_21,
      P(4) => ADC0_n_22,
      P(3) => ADC0_n_23,
      P(2) => ADC0_n_24,
      P(1) => ADC0_n_25,
      P(0) => ADC0_n_26,
      Q(1) => REG_WRITE,
      Q(0) => REG_RST
    );
ADD0: entity work.system_ADC_DAC_LOOP_0_gen_subber
     port map (
      D(31 downto 0) => data_in(31 downto 0),
      S(3) => MULT1_n_31,
      S(2) => MULT1_n_32,
      S(1) => MULT1_n_33,
      S(0) => MULT1_n_34,
      a(30 downto 0) => a(30 downto 0),
      \int_data_reg_reg[11]\(3) => MULT1_n_39,
      \int_data_reg_reg[11]\(2) => MULT1_n_40,
      \int_data_reg_reg[11]\(1) => MULT1_n_41,
      \int_data_reg_reg[11]\(0) => MULT1_n_42,
      \int_data_reg_reg[15]\(3) => MULT1_n_43,
      \int_data_reg_reg[15]\(2) => MULT1_n_44,
      \int_data_reg_reg[15]\(1) => MULT1_n_45,
      \int_data_reg_reg[15]\(0) => MULT1_n_46,
      \int_data_reg_reg[19]\(3) => MULT1_n_47,
      \int_data_reg_reg[19]\(2) => MULT1_n_48,
      \int_data_reg_reg[19]\(1) => MULT1_n_49,
      \int_data_reg_reg[19]\(0) => MULT1_n_50,
      \int_data_reg_reg[23]\(3) => MULT1_n_51,
      \int_data_reg_reg[23]\(2) => MULT1_n_52,
      \int_data_reg_reg[23]\(1) => MULT1_n_53,
      \int_data_reg_reg[23]\(0) => MULT1_n_54,
      \int_data_reg_reg[27]\(3) => MULT1_n_55,
      \int_data_reg_reg[27]\(2) => MULT1_n_56,
      \int_data_reg_reg[27]\(1) => MULT1_n_57,
      \int_data_reg_reg[27]\(0) => MULT1_n_58,
      \int_data_reg_reg[31]\(3) => MULT1_n_59,
      \int_data_reg_reg[31]\(2) => MULT1_n_60,
      \int_data_reg_reg[31]\(1) => MULT1_n_61,
      \int_data_reg_reg[31]\(0) => MULT1_n_62,
      \int_data_reg_reg[7]\(3) => MULT1_n_35,
      \int_data_reg_reg[7]\(2) => MULT1_n_36,
      \int_data_reg_reg[7]\(1) => MULT1_n_37,
      \int_data_reg_reg[7]\(0) => MULT1_n_38
    );
DAC0: entity work.system_ADC_DAC_LOOP_0_DAC_OUT
     port map (
      CFG_IN(0) => CFG_IN(64),
      DACB_CODE_OUT(13 downto 0) => DACB_CODE_OUT(13 downto 0),
      DI(2) => REG0_n_38,
      DI(1) => REG0_n_39,
      DI(0) => REG0_n_40,
      GP_OUT(0) => \^gp_out\(16),
      S(1) => REG0_n_36,
      S(0) => REG0_n_37,
      \p0__1\(3) => REG0_n_0,
      \p0__1\(2) => REG0_n_1,
      \p0__1\(1) => REG0_n_2,
      \p0__1\(0) => REG0_n_3,
      \p0__1_0\(3) => REG0_n_41,
      \p0__1_0\(2) => REG0_n_42,
      \p0__1_0\(1) => REG0_n_43,
      \p0__1_0\(0) => REG0_n_44,
      \p0__1_1\(3) => REG0_n_45,
      \p0__1_1\(2) => REG0_n_46,
      \p0__1_1\(1) => REG0_n_47,
      \p0__1_1\(0) => REG0_n_48,
      \p0__1_2\(3) => REG0_n_49,
      \p0__1_2\(2) => REG0_n_50,
      \p0__1_2\(1) => REG0_n_51,
      \p0__1_2\(0) => REG0_n_52,
      \p0__1_3\(3) => REG0_n_53,
      \p0__1_3\(2) => REG0_n_54,
      \p0__1_3\(1) => REG0_n_55,
      \p0__1_3\(0) => REG0_n_56,
      \p0__1_4\(1) => REG0_n_57,
      \p0__1_4\(0) => REG0_n_58,
      \p0__1_5\(1) => REG0_n_59,
      \p0__1_5\(0) => REG0_n_60
    );
MULT1: entity work.\system_ADC_DAC_LOOP_0_my_mult__parameterized0\
     port map (
      CFG_IN(63 downto 0) => CFG_IN(63 downto 0),
      \CFG_IN[39]\(3) => MULT1_n_35,
      \CFG_IN[39]\(2) => MULT1_n_36,
      \CFG_IN[39]\(1) => MULT1_n_37,
      \CFG_IN[39]\(0) => MULT1_n_38,
      \CFG_IN[43]\(3) => MULT1_n_39,
      \CFG_IN[43]\(2) => MULT1_n_40,
      \CFG_IN[43]\(1) => MULT1_n_41,
      \CFG_IN[43]\(0) => MULT1_n_42,
      \CFG_IN[47]\(3) => MULT1_n_43,
      \CFG_IN[47]\(2) => MULT1_n_44,
      \CFG_IN[47]\(1) => MULT1_n_45,
      \CFG_IN[47]\(0) => MULT1_n_46,
      \CFG_IN[51]\(3) => MULT1_n_47,
      \CFG_IN[51]\(2) => MULT1_n_48,
      \CFG_IN[51]\(1) => MULT1_n_49,
      \CFG_IN[51]\(0) => MULT1_n_50,
      \CFG_IN[55]\(3) => MULT1_n_51,
      \CFG_IN[55]\(2) => MULT1_n_52,
      \CFG_IN[55]\(1) => MULT1_n_53,
      \CFG_IN[55]\(0) => MULT1_n_54,
      \CFG_IN[59]\(3) => MULT1_n_55,
      \CFG_IN[59]\(2) => MULT1_n_56,
      \CFG_IN[59]\(1) => MULT1_n_57,
      \CFG_IN[59]\(0) => MULT1_n_58,
      \CFG_IN[63]\(3) => MULT1_n_59,
      \CFG_IN[63]\(2) => MULT1_n_60,
      \CFG_IN[63]\(1) => MULT1_n_61,
      \CFG_IN[63]\(0) => MULT1_n_62,
      P(26) => ADC0_n_0,
      P(25) => ADC0_n_1,
      P(24) => ADC0_n_2,
      P(23) => ADC0_n_3,
      P(22) => ADC0_n_4,
      P(21) => ADC0_n_5,
      P(20) => ADC0_n_6,
      P(19) => ADC0_n_7,
      P(18) => ADC0_n_8,
      P(17) => ADC0_n_9,
      P(16) => ADC0_n_10,
      P(15) => ADC0_n_11,
      P(14) => ADC0_n_12,
      P(13) => ADC0_n_13,
      P(12) => ADC0_n_14,
      P(11) => ADC0_n_15,
      P(10) => ADC0_n_16,
      P(9) => ADC0_n_17,
      P(8) => ADC0_n_18,
      P(7) => ADC0_n_19,
      P(6) => ADC0_n_20,
      P(5) => ADC0_n_21,
      P(4) => ADC0_n_22,
      P(3) => ADC0_n_23,
      P(2) => ADC0_n_24,
      P(1) => ADC0_n_25,
      P(0) => ADC0_n_26,
      S(3) => MULT1_n_31,
      S(2) => MULT1_n_32,
      S(1) => MULT1_n_33,
      S(0) => MULT1_n_34,
      \p0__2\(30 downto 0) => a(30 downto 0)
    );
REG0: entity work.system_ADC_DAC_LOOP_0_gen_reg
     port map (
      ADC_CLK => ADC_CLK,
      CFG_IN(1 downto 0) => CFG_IN(65 downto 64),
      \CFG_IN[64]\(3) => REG0_n_41,
      \CFG_IN[64]\(2) => REG0_n_42,
      \CFG_IN[64]\(1) => REG0_n_43,
      \CFG_IN[64]\(0) => REG0_n_44,
      \CFG_IN[64]_0\(3) => REG0_n_49,
      \CFG_IN[64]_0\(2) => REG0_n_50,
      \CFG_IN[64]_0\(1) => REG0_n_51,
      \CFG_IN[64]_0\(0) => REG0_n_52,
      \CFG_IN[64]_1\(1) => REG0_n_57,
      \CFG_IN[64]_1\(0) => REG0_n_58,
      D(31 downto 0) => data_in(31 downto 0),
      DI(2) => REG0_n_38,
      DI(1) => REG0_n_39,
      DI(0) => REG0_n_40,
      GP_OUT(31 downto 0) => \^gp_out\(31 downto 0),
      Q(1) => REG_WRITE,
      Q(0) => REG_RST,
      S(1) => REG0_n_36,
      S(0) => REG0_n_37,
      \int_data_reg_reg[19]_0\(3) => REG0_n_0,
      \int_data_reg_reg[19]_0\(2) => REG0_n_1,
      \int_data_reg_reg[19]_0\(1) => REG0_n_2,
      \int_data_reg_reg[19]_0\(0) => REG0_n_3,
      \int_data_reg_reg[23]_0\(3) => REG0_n_45,
      \int_data_reg_reg[23]_0\(2) => REG0_n_46,
      \int_data_reg_reg[23]_0\(1) => REG0_n_47,
      \int_data_reg_reg[23]_0\(0) => REG0_n_48,
      \int_data_reg_reg[27]_0\(3) => REG0_n_53,
      \int_data_reg_reg[27]_0\(2) => REG0_n_54,
      \int_data_reg_reg[27]_0\(1) => REG0_n_55,
      \int_data_reg_reg[27]_0\(0) => REG0_n_56,
      \int_data_reg_reg[29]_0\(1) => REG0_n_59,
      \int_data_reg_reg[29]_0\(0) => REG0_n_60
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ADC_DAC_LOOP_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_ADC_DAC_LOOP_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_ADC_DAC_LOOP_0 : entity is "system_ADC_DAC_LOOP_0,ADC_DAC_LOOP,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_ADC_DAC_LOOP_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_ADC_DAC_LOOP_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_ADC_DAC_LOOP_0 : entity is "ADC_DAC_LOOP,Vivado 2020.1";
end system_ADC_DAC_LOOP_0;

architecture STRUCTURE of system_ADC_DAC_LOOP_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^gp_in\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ADC_CLK : signal is "xilinx.com:signal:clock:1.0 ADC_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ADC_CLK : signal is "XIL_INTERFACENAME ADC_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_ADC_REG_0_adc_clk, INSERT_VIP 0";
begin
  DACA_CODE_OUT(13 downto 0) <= \^gp_in\(13 downto 0);
  \^gp_in\(31) <= GP_IN(31);
  \^gp_in\(13 downto 0) <= GP_IN(13 downto 0);
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
inst: entity work.system_ADC_DAC_LOOP_0_ADC_DAC_LOOP
     port map (
      ADC_CLK => ADC_CLK,
      ADC_DATA_IN(11 downto 0) => ADC_DATA_IN(11 downto 0),
      CFG_IN(65) => CFG_IN(96),
      CFG_IN(64 downto 0) => CFG_IN(64 downto 0),
      DACB_CODE_OUT(13 downto 0) => DACB_CODE_OUT(13 downto 0),
      F_O_reg => DONE,
      GP_IN(0) => \^gp_in\(31),
      GP_OUT(31 downto 0) => GP_OUT(31 downto 0)
    );
end STRUCTURE;
