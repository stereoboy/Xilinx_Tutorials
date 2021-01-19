-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb  7 11:14:28 2019
-- Host        : WK142 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_tone_generator_0_0_sim_netlist.vhdl
-- Design      : design_1_tone_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tone_generator is
  port (
    axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    axis_tready : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tone_generator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tone_generator is
  signal \^axis_tdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \duty[16]_i_2_n_0\ : STD_LOGIC;
  signal \duty[1]_i_2_n_0\ : STD_LOGIC;
  signal \duty[1]_i_3_n_0\ : STD_LOGIC;
  signal \duty[1]_i_4_n_0\ : STD_LOGIC;
  signal \duty[20]_i_2_n_0\ : STD_LOGIC;
  signal \duty[20]_i_3_n_0\ : STD_LOGIC;
  signal \duty[24]_i_2_n_0\ : STD_LOGIC;
  signal \duty[24]_i_3_n_0\ : STD_LOGIC;
  signal \duty[5]_i_2_n_0\ : STD_LOGIC;
  signal \duty[9]_i_2_n_0\ : STD_LOGIC;
  signal \duty[9]_i_3_n_0\ : STD_LOGIC;
  signal \duty_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \duty_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \duty_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \duty_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \duty_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \duty_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \duty_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \duty_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[1]_i_1_n_1\ : STD_LOGIC;
  signal \duty_reg[1]_i_1_n_2\ : STD_LOGIC;
  signal \duty_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \duty_reg[1]_i_1_n_4\ : STD_LOGIC;
  signal \duty_reg[1]_i_1_n_5\ : STD_LOGIC;
  signal \duty_reg[1]_i_1_n_6\ : STD_LOGIC;
  signal \duty_reg[1]_i_1_n_7\ : STD_LOGIC;
  signal \duty_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \duty_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \duty_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \duty_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \duty_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \duty_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \duty_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \duty_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \duty_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \duty_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \duty_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \duty_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \duty_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \duty_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \duty_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \duty_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \duty_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \duty_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \duty_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \duty_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \duty_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \duty_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \duty_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \duty_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \duty_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \duty_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \duty_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \duty_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \duty_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \duty_reg[5]_i_1_n_4\ : STD_LOGIC;
  signal \duty_reg[5]_i_1_n_5\ : STD_LOGIC;
  signal \duty_reg[5]_i_1_n_6\ : STD_LOGIC;
  signal \duty_reg[5]_i_1_n_7\ : STD_LOGIC;
  signal \duty_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \duty_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \duty_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \duty_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \duty_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \duty_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \duty_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal \duty_reg_n_0_[10]\ : STD_LOGIC;
  signal \duty_reg_n_0_[11]\ : STD_LOGIC;
  signal \duty_reg_n_0_[12]\ : STD_LOGIC;
  signal \duty_reg_n_0_[13]\ : STD_LOGIC;
  signal \duty_reg_n_0_[14]\ : STD_LOGIC;
  signal \duty_reg_n_0_[15]\ : STD_LOGIC;
  signal \duty_reg_n_0_[1]\ : STD_LOGIC;
  signal \duty_reg_n_0_[2]\ : STD_LOGIC;
  signal \duty_reg_n_0_[3]\ : STD_LOGIC;
  signal \duty_reg_n_0_[4]\ : STD_LOGIC;
  signal \duty_reg_n_0_[5]\ : STD_LOGIC;
  signal \duty_reg_n_0_[6]\ : STD_LOGIC;
  signal \duty_reg_n_0_[7]\ : STD_LOGIC;
  signal \duty_reg_n_0_[8]\ : STD_LOGIC;
  signal \duty_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_duty_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_duty_reg[31]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \duty_reg[10]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of \duty_reg[10]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[11]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[11]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[12]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[12]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[13]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[13]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[14]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[14]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[15]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[15]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[16]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[16]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[17]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[17]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[18]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[18]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[19]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[19]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[1]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[1]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[20]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[20]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[21]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[21]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[22]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[22]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[23]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[23]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[24]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[24]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[25]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[25]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[26]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[26]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[27]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[27]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[28]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[28]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[29]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[29]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[2]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[2]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[30]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[30]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[31]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[31]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[3]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[3]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[4]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[4]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[5]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[5]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[6]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[6]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[7]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[7]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[8]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[8]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of \duty_reg[9]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of \duty_reg[9]\ : label is "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1";
begin
  axis_tdata(15 downto 0) <= \^axis_tdata\(15 downto 0);
\duty[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \duty_reg_n_0_[13]\,
      O => \duty[16]_i_2_n_0\
    );
\duty[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \duty_reg_n_0_[3]\,
      O => \duty[1]_i_2_n_0\
    );
\duty[1]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \duty_reg_n_0_[2]\,
      O => \duty[1]_i_3_n_0\
    );
\duty[1]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \duty_reg_n_0_[1]\,
      O => \duty[1]_i_4_n_0\
    );
\duty[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(4),
      O => \duty[20]_i_2_n_0\
    );
\duty[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(1),
      O => \duty[20]_i_3_n_0\
    );
\duty[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(7),
      O => \duty[24]_i_2_n_0\
    );
\duty[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(5),
      O => \duty[24]_i_3_n_0\
    );
\duty[5]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \duty_reg_n_0_[8]\,
      O => \duty[5]_i_2_n_0\
    );
\duty[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \duty_reg_n_0_[11]\,
      O => \duty[9]_i_2_n_0\
    );
\duty[9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \duty_reg_n_0_[10]\,
      O => \duty[9]_i_3_n_0\
    );
\duty_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[9]_i_1_n_6\,
      Q => \duty_reg_n_0_[10]\,
      R => '0'
    );
\duty_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[9]_i_1_n_5\,
      Q => \duty_reg_n_0_[11]\,
      R => '0'
    );
\duty_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[9]_i_1_n_4\,
      Q => \duty_reg_n_0_[12]\,
      R => '0'
    );
\duty_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[16]_i_1_n_7\,
      Q => \duty_reg_n_0_[13]\,
      R => '0'
    );
\duty_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[16]_i_1_n_6\,
      Q => \duty_reg_n_0_[14]\,
      R => '0'
    );
\duty_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[16]_i_1_n_5\,
      Q => \duty_reg_n_0_[15]\,
      R => '0'
    );
\duty_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[16]_i_1_n_4\,
      Q => \^axis_tdata\(0),
      R => '0'
    );
\duty_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \duty_reg[9]_i_1_n_0\,
      CO(3) => \duty_reg[16]_i_1_n_0\,
      CO(2) => \duty_reg[16]_i_1_n_1\,
      CO(1) => \duty_reg[16]_i_1_n_2\,
      CO(0) => \duty_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \duty_reg[16]_i_1_n_4\,
      O(2) => \duty_reg[16]_i_1_n_5\,
      O(1) => \duty_reg[16]_i_1_n_6\,
      O(0) => \duty_reg[16]_i_1_n_7\,
      S(3) => \^axis_tdata\(0),
      S(2) => \duty_reg_n_0_[15]\,
      S(1) => \duty_reg_n_0_[14]\,
      S(0) => \duty[16]_i_2_n_0\
    );
\duty_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[20]_i_1_n_7\,
      Q => \^axis_tdata\(1),
      R => '0'
    );
\duty_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[20]_i_1_n_6\,
      Q => \^axis_tdata\(2),
      R => '0'
    );
\duty_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[20]_i_1_n_5\,
      Q => \^axis_tdata\(3),
      R => '0'
    );
\duty_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[1]_i_1_n_7\,
      Q => \duty_reg_n_0_[1]\,
      R => '0'
    );
\duty_reg[1]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \duty_reg[1]_i_1_n_0\,
      CO(2) => \duty_reg[1]_i_1_n_1\,
      CO(1) => \duty_reg[1]_i_1_n_2\,
      CO(0) => \duty_reg[1]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3) => \duty_reg[1]_i_1_n_4\,
      O(2) => \duty_reg[1]_i_1_n_5\,
      O(1) => \duty_reg[1]_i_1_n_6\,
      O(0) => \duty_reg[1]_i_1_n_7\,
      S(3) => \duty_reg_n_0_[4]\,
      S(2) => \duty[1]_i_2_n_0\,
      S(1) => \duty[1]_i_3_n_0\,
      S(0) => \duty[1]_i_4_n_0\
    );
\duty_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[20]_i_1_n_4\,
      Q => \^axis_tdata\(4),
      R => '0'
    );
\duty_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \duty_reg[16]_i_1_n_0\,
      CO(3) => \duty_reg[20]_i_1_n_0\,
      CO(2) => \duty_reg[20]_i_1_n_1\,
      CO(1) => \duty_reg[20]_i_1_n_2\,
      CO(0) => \duty_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1001",
      O(3) => \duty_reg[20]_i_1_n_4\,
      O(2) => \duty_reg[20]_i_1_n_5\,
      O(1) => \duty_reg[20]_i_1_n_6\,
      O(0) => \duty_reg[20]_i_1_n_7\,
      S(3) => \duty[20]_i_2_n_0\,
      S(2 downto 1) => \^axis_tdata\(3 downto 2),
      S(0) => \duty[20]_i_3_n_0\
    );
\duty_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[24]_i_1_n_7\,
      Q => \^axis_tdata\(5),
      R => '0'
    );
\duty_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[24]_i_1_n_6\,
      Q => \^axis_tdata\(6),
      R => '0'
    );
\duty_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[24]_i_1_n_5\,
      Q => \^axis_tdata\(7),
      R => '0'
    );
\duty_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[24]_i_1_n_4\,
      Q => \^axis_tdata\(8),
      R => '0'
    );
\duty_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \duty_reg[20]_i_1_n_0\,
      CO(3) => \duty_reg[24]_i_1_n_0\,
      CO(2) => \duty_reg[24]_i_1_n_1\,
      CO(1) => \duty_reg[24]_i_1_n_2\,
      CO(0) => \duty_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0101",
      O(3) => \duty_reg[24]_i_1_n_4\,
      O(2) => \duty_reg[24]_i_1_n_5\,
      O(1) => \duty_reg[24]_i_1_n_6\,
      O(0) => \duty_reg[24]_i_1_n_7\,
      S(3) => \^axis_tdata\(8),
      S(2) => \duty[24]_i_2_n_0\,
      S(1) => \^axis_tdata\(6),
      S(0) => \duty[24]_i_3_n_0\
    );
\duty_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[28]_i_1_n_7\,
      Q => \^axis_tdata\(9),
      R => '0'
    );
\duty_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[28]_i_1_n_6\,
      Q => \^axis_tdata\(10),
      R => '0'
    );
\duty_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[28]_i_1_n_5\,
      Q => \^axis_tdata\(11),
      R => '0'
    );
\duty_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[28]_i_1_n_4\,
      Q => \^axis_tdata\(12),
      R => '0'
    );
\duty_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \duty_reg[24]_i_1_n_0\,
      CO(3) => \duty_reg[28]_i_1_n_0\,
      CO(2) => \duty_reg[28]_i_1_n_1\,
      CO(1) => \duty_reg[28]_i_1_n_2\,
      CO(0) => \duty_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \duty_reg[28]_i_1_n_4\,
      O(2) => \duty_reg[28]_i_1_n_5\,
      O(1) => \duty_reg[28]_i_1_n_6\,
      O(0) => \duty_reg[28]_i_1_n_7\,
      S(3 downto 0) => \^axis_tdata\(12 downto 9)
    );
\duty_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[31]_i_1_n_7\,
      Q => \^axis_tdata\(13),
      R => '0'
    );
\duty_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[1]_i_1_n_6\,
      Q => \duty_reg_n_0_[2]\,
      R => '0'
    );
\duty_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[31]_i_1_n_6\,
      Q => \^axis_tdata\(14),
      R => '0'
    );
\duty_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[31]_i_1_n_5\,
      Q => \^axis_tdata\(15),
      R => '0'
    );
\duty_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \duty_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_duty_reg[31]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \duty_reg[31]_i_1_n_2\,
      CO(0) => \duty_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_duty_reg[31]_i_1_O_UNCONNECTED\(3),
      O(2) => \duty_reg[31]_i_1_n_5\,
      O(1) => \duty_reg[31]_i_1_n_6\,
      O(0) => \duty_reg[31]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => \^axis_tdata\(15 downto 13)
    );
\duty_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[1]_i_1_n_5\,
      Q => \duty_reg_n_0_[3]\,
      R => '0'
    );
\duty_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[1]_i_1_n_4\,
      Q => \duty_reg_n_0_[4]\,
      R => '0'
    );
\duty_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[5]_i_1_n_7\,
      Q => \duty_reg_n_0_[5]\,
      R => '0'
    );
\duty_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \duty_reg[1]_i_1_n_0\,
      CO(3) => \duty_reg[5]_i_1_n_0\,
      CO(2) => \duty_reg[5]_i_1_n_1\,
      CO(1) => \duty_reg[5]_i_1_n_2\,
      CO(0) => \duty_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1000",
      O(3) => \duty_reg[5]_i_1_n_4\,
      O(2) => \duty_reg[5]_i_1_n_5\,
      O(1) => \duty_reg[5]_i_1_n_6\,
      O(0) => \duty_reg[5]_i_1_n_7\,
      S(3) => \duty[5]_i_2_n_0\,
      S(2) => \duty_reg_n_0_[7]\,
      S(1) => \duty_reg_n_0_[6]\,
      S(0) => \duty_reg_n_0_[5]\
    );
\duty_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[5]_i_1_n_6\,
      Q => \duty_reg_n_0_[6]\,
      R => '0'
    );
\duty_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[5]_i_1_n_5\,
      Q => \duty_reg_n_0_[7]\,
      R => '0'
    );
\duty_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[5]_i_1_n_4\,
      Q => \duty_reg_n_0_[8]\,
      R => '0'
    );
\duty_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => axis_tready,
      D => \duty_reg[9]_i_1_n_7\,
      Q => \duty_reg_n_0_[9]\,
      R => '0'
    );
\duty_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \duty_reg[5]_i_1_n_0\,
      CO(3) => \duty_reg[9]_i_1_n_0\,
      CO(2) => \duty_reg[9]_i_1_n_1\,
      CO(1) => \duty_reg[9]_i_1_n_2\,
      CO(0) => \duty_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0110",
      O(3) => \duty_reg[9]_i_1_n_4\,
      O(2) => \duty_reg[9]_i_1_n_5\,
      O(1) => \duty_reg[9]_i_1_n_6\,
      O(0) => \duty_reg[9]_i_1_n_7\,
      S(3) => \duty_reg_n_0_[12]\,
      S(2) => \duty[9]_i_2_n_0\,
      S(1) => \duty[9]_i_3_n_0\,
      S(0) => \duty_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_tvalid : out STD_LOGIC;
    axis_tlast : out STD_LOGIC;
    axis_tready : in STD_LOGIC;
    axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_tone_generator_0_0,tone_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "tone_generator,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^axis_tdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_INFO of axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXIS, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_1_ui_clk";
  attribute X_INTERFACE_INFO of axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS TKEEP";
  attribute X_INTERFACE_PARAMETER of axis_tkeep : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_1_ui_clk, LAYERED_METADATA undef";
begin
  axis_tdata(31) <= \<const0>\;
  axis_tdata(30) <= \<const0>\;
  axis_tdata(29) <= \<const0>\;
  axis_tdata(28) <= \<const0>\;
  axis_tdata(27) <= \<const0>\;
  axis_tdata(26) <= \<const0>\;
  axis_tdata(25) <= \<const0>\;
  axis_tdata(24) <= \<const0>\;
  axis_tdata(23) <= \<const0>\;
  axis_tdata(22) <= \<const0>\;
  axis_tdata(21) <= \<const0>\;
  axis_tdata(20) <= \<const0>\;
  axis_tdata(19) <= \<const0>\;
  axis_tdata(18) <= \<const0>\;
  axis_tdata(17) <= \<const0>\;
  axis_tdata(16) <= \<const0>\;
  axis_tdata(15 downto 0) <= \^axis_tdata\(15 downto 0);
  axis_tkeep(3) <= \<const1>\;
  axis_tkeep(2) <= \<const1>\;
  axis_tkeep(1) <= \<const1>\;
  axis_tkeep(0) <= \<const1>\;
  axis_tlast <= \<const1>\;
  axis_tvalid <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tone_generator
     port map (
      axis_tdata(15 downto 0) => \^axis_tdata\(15 downto 0),
      axis_tready => axis_tready,
      clk => clk
    );
end STRUCTURE;
