-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb  7 11:13:59 2019
-- Host        : WK142 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Github/Jan19/Nexys-A7-100T-DMA-Audio/proj/Nexys-A7-100T-DMA-Audio.srcs/sources_1/bd/design_1/ip/design_1_axis2fifo_0_0/design_1_axis2fifo_0_0_stub.vhdl
-- Design      : design_1_axis2fifo_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_axis2fifo_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    axis_tlast : in STD_LOGIC;
    axis_tvalid : in STD_LOGIC;
    axis_tready : out STD_LOGIC;
    fifo_wr_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_wr_en : out STD_LOGIC;
    fifo_full : in STD_LOGIC
  );

end design_1_axis2fifo_0_0;

architecture stub of design_1_axis2fifo_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,axis_tdata[31:0],axis_tkeep[0:0],axis_tlast,axis_tvalid,axis_tready,fifo_wr_data[31:0],fifo_wr_en,fifo_full";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axis2fifo,Vivado 2018.2";
begin
end;