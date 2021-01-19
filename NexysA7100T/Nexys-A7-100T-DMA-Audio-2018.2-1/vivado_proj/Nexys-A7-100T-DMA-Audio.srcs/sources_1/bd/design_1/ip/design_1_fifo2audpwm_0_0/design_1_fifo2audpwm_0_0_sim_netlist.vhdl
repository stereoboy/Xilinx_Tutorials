-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb  7 11:11:48 2019
-- Host        : WK142 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Github/Jan19/Nexys-A7-100T-DMA-Audio/proj/Nexys-A7-100T-DMA-Audio.srcs/sources_1/bd/design_1/ip/design_1_fifo2audpwm_0_0/design_1_fifo2audpwm_0_0_sim_netlist.vhdl
-- Design      : design_1_fifo2audpwm_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fifo2audpwm_0_0_fifo2audpwm is
  port (
    fifo_rd_en : out STD_LOGIC;
    aud_en : out STD_LOGIC;
    aud_pwm : out STD_LOGIC;
    fifo_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    fifo_empty : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fifo2audpwm_0_0_fifo2audpwm : entity is "fifo2audpwm";
end design_1_fifo2audpwm_0_0_fifo2audpwm;

architecture STRUCTURE of design_1_fifo2audpwm_0_0_fifo2audpwm is
  signal \^aud_en\ : STD_LOGIC;
  signal aud_en_i_1_n_0 : STD_LOGIC;
  signal aud_en_i_2_n_0 : STD_LOGIC;
  signal aud_pwm_carry_i_1_n_0 : STD_LOGIC;
  signal aud_pwm_carry_i_2_n_0 : STD_LOGIC;
  signal aud_pwm_carry_i_3_n_0 : STD_LOGIC;
  signal aud_pwm_carry_i_4_n_0 : STD_LOGIC;
  signal aud_pwm_carry_i_5_n_0 : STD_LOGIC;
  signal aud_pwm_carry_i_6_n_0 : STD_LOGIC;
  signal aud_pwm_carry_i_7_n_0 : STD_LOGIC;
  signal aud_pwm_carry_i_8_n_0 : STD_LOGIC;
  signal aud_pwm_carry_n_1 : STD_LOGIC;
  signal aud_pwm_carry_n_2 : STD_LOGIC;
  signal aud_pwm_carry_n_3 : STD_LOGIC;
  signal count0 : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[9]_i_3_n_0\ : STD_LOGIC;
  signal \count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal duty : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \duty_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \duty_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \duty_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \duty_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^fifo_rd_en\ : STD_LOGIC;
  signal fifo_rd_en_INST_0_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal NLW_aud_pwm_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of aud_en_i_2 : label is "soft_lutpair2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aud_en_reg : label is "digilentinc.com:local_if:pwm_audio_rtl:1.0 PWM_AUDIO en";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[9]_i_2\ : label is "soft_lutpair0";
begin
  aud_en <= \^aud_en\;
  fifo_rd_en <= \^fifo_rd_en\;
aud_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF40000000"
    )
        port map (
      I0 => fifo_empty,
      I1 => fifo_rd_en_INST_0_i_1_n_0,
      I2 => \count_reg__0\(2),
      I3 => \count_reg__0\(3),
      I4 => aud_en_i_2_n_0,
      I5 => \^aud_en\,
      O => aud_en_i_1_n_0
    );
aud_en_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      O => aud_en_i_2_n_0
    );
aud_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => aud_en_i_1_n_0,
      Q => \^aud_en\,
      R => '0'
    );
aud_pwm_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => aud_pwm,
      CO(2) => aud_pwm_carry_n_1,
      CO(1) => aud_pwm_carry_n_2,
      CO(0) => aud_pwm_carry_n_3,
      CYINIT => '1',
      DI(3) => aud_pwm_carry_i_1_n_0,
      DI(2) => aud_pwm_carry_i_2_n_0,
      DI(1) => aud_pwm_carry_i_3_n_0,
      DI(0) => aud_pwm_carry_i_4_n_0,
      O(3 downto 0) => NLW_aud_pwm_carry_O_UNCONNECTED(3 downto 0),
      S(3) => aud_pwm_carry_i_5_n_0,
      S(2) => aud_pwm_carry_i_6_n_0,
      S(1) => aud_pwm_carry_i_7_n_0,
      S(0) => aud_pwm_carry_i_8_n_0
    );
aud_pwm_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(6),
      I1 => \count_reg__0\(6),
      I2 => \count_reg__0\(7),
      I3 => duty(7),
      O => aud_pwm_carry_i_1_n_0
    );
aud_pwm_carry_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \duty_reg[1]\(7),
      I1 => \duty_reg[0]\(7),
      I2 => \duty_reg[3]\(7),
      I3 => \count_reg__0\(9),
      I4 => \count_reg__0\(8),
      I5 => \duty_reg[2]\(7),
      O => duty(7)
    );
aud_pwm_carry_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \duty_reg[1]\(4),
      I1 => \duty_reg[0]\(4),
      I2 => \duty_reg[3]\(4),
      I3 => \count_reg__0\(9),
      I4 => \count_reg__0\(8),
      I5 => \duty_reg[2]\(4),
      O => duty(4)
    );
aud_pwm_carry_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \duty_reg[1]\(5),
      I1 => \duty_reg[0]\(5),
      I2 => \duty_reg[3]\(5),
      I3 => \count_reg__0\(9),
      I4 => \count_reg__0\(8),
      I5 => \duty_reg[2]\(5),
      O => duty(5)
    );
aud_pwm_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \duty_reg[1]\(2),
      I1 => \duty_reg[0]\(2),
      I2 => \duty_reg[3]\(2),
      I3 => \count_reg__0\(9),
      I4 => \count_reg__0\(8),
      I5 => \duty_reg[2]\(2),
      O => duty(2)
    );
aud_pwm_carry_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \duty_reg[1]\(3),
      I1 => \duty_reg[0]\(3),
      I2 => \duty_reg[3]\(3),
      I3 => \count_reg__0\(9),
      I4 => \count_reg__0\(8),
      I5 => \duty_reg[2]\(3),
      O => duty(3)
    );
aud_pwm_carry_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \duty_reg[1]\(0),
      I1 => \duty_reg[0]\(0),
      I2 => \duty_reg[3]\(0),
      I3 => \count_reg__0\(9),
      I4 => \count_reg__0\(8),
      I5 => \duty_reg[2]\(0),
      O => duty(0)
    );
aud_pwm_carry_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \duty_reg[1]\(1),
      I1 => \duty_reg[0]\(1),
      I2 => \duty_reg[3]\(1),
      I3 => \count_reg__0\(9),
      I4 => \count_reg__0\(8),
      I5 => \duty_reg[2]\(1),
      O => duty(1)
    );
aud_pwm_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(4),
      I1 => \count_reg__0\(4),
      I2 => \count_reg__0\(5),
      I3 => duty(5),
      O => aud_pwm_carry_i_2_n_0
    );
aud_pwm_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(2),
      I1 => \count_reg__0\(2),
      I2 => \count_reg__0\(3),
      I3 => duty(3),
      O => aud_pwm_carry_i_3_n_0
    );
aud_pwm_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty(0),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(1),
      I3 => duty(1),
      O => aud_pwm_carry_i_4_n_0
    );
aud_pwm_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => duty(6),
      I1 => duty(7),
      I2 => \count_reg__0\(7),
      I3 => \count_reg__0\(6),
      O => aud_pwm_carry_i_5_n_0
    );
aud_pwm_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => duty(4),
      I1 => duty(5),
      I2 => \count_reg__0\(5),
      I3 => \count_reg__0\(4),
      O => aud_pwm_carry_i_6_n_0
    );
aud_pwm_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => duty(2),
      I1 => duty(3),
      I2 => \count_reg__0\(3),
      I3 => \count_reg__0\(2),
      O => aud_pwm_carry_i_7_n_0
    );
aud_pwm_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => duty(0),
      I1 => duty(1),
      I2 => \count_reg__0\(1),
      I3 => \count_reg__0\(0),
      O => aud_pwm_carry_i_8_n_0
    );
aud_pwm_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \duty_reg[1]\(6),
      I1 => \duty_reg[0]\(6),
      I2 => \duty_reg[3]\(6),
      I3 => \count_reg__0\(9),
      I4 => \count_reg__0\(8),
      I5 => \duty_reg[2]\(6),
      O => duty(6)
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg__0\(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      O => p_0_in(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(2),
      O => p_0_in(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_reg__0\(0),
      I1 => \count_reg__0\(1),
      I2 => \count_reg__0\(2),
      I3 => \count_reg__0\(3),
      O => p_0_in(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_reg__0\(2),
      I1 => \count_reg__0\(1),
      I2 => \count_reg__0\(0),
      I3 => \count_reg__0\(3),
      I4 => \count_reg__0\(4),
      O => p_0_in(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \count_reg__0\(3),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(1),
      I3 => \count_reg__0\(2),
      I4 => \count_reg__0\(4),
      I5 => \count_reg__0\(5),
      O => p_0_in(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \count_reg__0\(4),
      I1 => \count_reg__0\(2),
      I2 => aud_en_i_2_n_0,
      I3 => \count_reg__0\(3),
      I4 => \count_reg__0\(5),
      I5 => \count_reg__0\(6),
      O => p_0_in(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count[9]_i_3_n_0\,
      I1 => \count_reg__0\(6),
      I2 => \count_reg__0\(7),
      O => p_0_in(7)
    );
\count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \count_reg__0\(6),
      I1 => \count[9]_i_3_n_0\,
      I2 => \count_reg__0\(7),
      I3 => \count_reg__0\(8),
      O => p_0_in(8)
    );
\count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => fifo_rd_en_INST_0_i_1_n_0,
      I1 => \count_reg__0\(2),
      I2 => \count_reg__0\(3),
      I3 => \count_reg__0\(0),
      I4 => \count_reg__0\(1),
      O => count0
    );
\count[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \count_reg__0\(7),
      I1 => \count[9]_i_3_n_0\,
      I2 => \count_reg__0\(6),
      I3 => \count_reg__0\(8),
      I4 => \count_reg__0\(9),
      O => p_0_in(9)
    );
\count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \count_reg__0\(5),
      I1 => \count_reg__0\(3),
      I2 => \count_reg__0\(0),
      I3 => \count_reg__0\(1),
      I4 => \count_reg__0\(2),
      I5 => \count_reg__0\(4),
      O => \count[9]_i_3_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count[0]_i_1_n_0\,
      Q => \count_reg__0\(0),
      R => count0
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => \count_reg__0\(1),
      R => count0
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => \count_reg__0\(2),
      R => count0
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => \count_reg__0\(3),
      R => count0
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => \count_reg__0\(4),
      R => count0
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(5),
      Q => \count_reg__0\(5),
      R => count0
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(6),
      Q => \count_reg__0\(6),
      R => count0
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(7),
      Q => \count_reg__0\(7),
      R => count0
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(8),
      Q => \count_reg__0\(8),
      R => count0
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(9),
      Q => \count_reg__0\(9),
      R => count0
    );
\duty_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(0),
      Q => \duty_reg[0]\(0),
      R => '0'
    );
\duty_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(1),
      Q => \duty_reg[0]\(1),
      R => '0'
    );
\duty_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(2),
      Q => \duty_reg[0]\(2),
      R => '0'
    );
\duty_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(3),
      Q => \duty_reg[0]\(3),
      R => '0'
    );
\duty_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(4),
      Q => \duty_reg[0]\(4),
      R => '0'
    );
\duty_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(5),
      Q => \duty_reg[0]\(5),
      R => '0'
    );
\duty_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(6),
      Q => \duty_reg[0]\(6),
      R => '0'
    );
\duty_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(7),
      Q => \duty_reg[0]\(7),
      R => '0'
    );
\duty_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(8),
      Q => \duty_reg[1]\(0),
      R => '0'
    );
\duty_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(9),
      Q => \duty_reg[1]\(1),
      R => '0'
    );
\duty_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(10),
      Q => \duty_reg[1]\(2),
      R => '0'
    );
\duty_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(11),
      Q => \duty_reg[1]\(3),
      R => '0'
    );
\duty_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(12),
      Q => \duty_reg[1]\(4),
      R => '0'
    );
\duty_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(13),
      Q => \duty_reg[1]\(5),
      R => '0'
    );
\duty_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(14),
      Q => \duty_reg[1]\(6),
      R => '0'
    );
\duty_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(15),
      Q => \duty_reg[1]\(7),
      R => '0'
    );
\duty_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(16),
      Q => \duty_reg[2]\(0),
      R => '0'
    );
\duty_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(17),
      Q => \duty_reg[2]\(1),
      R => '0'
    );
\duty_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(18),
      Q => \duty_reg[2]\(2),
      R => '0'
    );
\duty_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(19),
      Q => \duty_reg[2]\(3),
      R => '0'
    );
\duty_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(20),
      Q => \duty_reg[2]\(4),
      R => '0'
    );
\duty_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(21),
      Q => \duty_reg[2]\(5),
      R => '0'
    );
\duty_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(22),
      Q => \duty_reg[2]\(6),
      R => '0'
    );
\duty_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(23),
      Q => \duty_reg[2]\(7),
      R => '0'
    );
\duty_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(24),
      Q => \duty_reg[3]\(0),
      R => '0'
    );
\duty_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(25),
      Q => \duty_reg[3]\(1),
      R => '0'
    );
\duty_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(26),
      Q => \duty_reg[3]\(2),
      R => '0'
    );
\duty_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(27),
      Q => \duty_reg[3]\(3),
      R => '0'
    );
\duty_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(28),
      Q => \duty_reg[3]\(4),
      R => '0'
    );
\duty_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(29),
      Q => \duty_reg[3]\(5),
      R => '0'
    );
\duty_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(30),
      Q => \duty_reg[3]\(6),
      R => '0'
    );
\duty_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^fifo_rd_en\,
      D => fifo_rd_data(31),
      Q => \duty_reg[3]\(7),
      R => '0'
    );
fifo_rd_en_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \count_reg__0\(1),
      I1 => \count_reg__0\(0),
      I2 => \count_reg__0\(3),
      I3 => \count_reg__0\(2),
      I4 => fifo_rd_en_INST_0_i_1_n_0,
      I5 => fifo_empty,
      O => \^fifo_rd_en\
    );
fifo_rd_en_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \count_reg__0\(4),
      I1 => \count_reg__0\(5),
      I2 => \count_reg__0\(6),
      I3 => \count_reg__0\(7),
      I4 => \count_reg__0\(9),
      I5 => \count_reg__0\(8),
      O => fifo_rd_en_INST_0_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fifo2audpwm_0_0 is
  port (
    clk : in STD_LOGIC;
    aud_pwm : out STD_LOGIC;
    aud_en : out STD_LOGIC;
    fifo_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_rd_en : out STD_LOGIC;
    fifo_empty : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_fifo2audpwm_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_fifo2audpwm_0_0 : entity is "design_1_fifo2audpwm_0_0,fifo2audpwm,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_fifo2audpwm_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_fifo2audpwm_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_fifo2audpwm_0_0 : entity is "fifo2audpwm,Vivado 2018.2";
end design_1_fifo2audpwm_0_0;

architecture STRUCTURE of design_1_fifo2audpwm_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aud_en : signal is "digilentinc.com:local_if:pwm_audio:1.0 PWM_AUDIO en";
  attribute X_INTERFACE_INFO of aud_pwm : signal is "digilentinc.com:local_if:pwm_audio:1.0 PWM_AUDIO pwm";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 24568965, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of fifo_empty : signal is "xilinx.com:interface:fifo_read:1.0 M_FIFO_READ EMPTY";
  attribute X_INTERFACE_INFO of fifo_rd_en : signal is "xilinx.com:interface:fifo_read:1.0 M_FIFO_READ RD_EN";
  attribute X_INTERFACE_INFO of fifo_rd_data : signal is "xilinx.com:interface:fifo_read:1.0 M_FIFO_READ RD_DATA";
begin
inst: entity work.design_1_fifo2audpwm_0_0_fifo2audpwm
     port map (
      aud_en => aud_en,
      aud_pwm => aud_pwm,
      clk => clk,
      fifo_empty => fifo_empty,
      fifo_rd_data(31 downto 0) => fifo_rd_data(31 downto 0),
      fifo_rd_en => fifo_rd_en
    );
end STRUCTURE;
