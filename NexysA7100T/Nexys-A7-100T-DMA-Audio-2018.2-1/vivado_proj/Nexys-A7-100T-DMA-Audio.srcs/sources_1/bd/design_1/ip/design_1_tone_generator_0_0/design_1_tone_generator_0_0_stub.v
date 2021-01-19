// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb  7 11:14:28 2019
// Host        : WK142 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Github/Jan19/Nexys-A7-100T-DMA-Audio/proj/Nexys-A7-100T-DMA-Audio.srcs/sources_1/bd/design_1/ip/design_1_tone_generator_0_0/design_1_tone_generator_0_0_stub.v
// Design      : design_1_tone_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tone_generator,Vivado 2018.2" *)
module design_1_tone_generator_0_0(clk, axis_tdata, axis_tvalid, axis_tlast, 
  axis_tready, axis_tkeep)
/* synthesis syn_black_box black_box_pad_pin="clk,axis_tdata[31:0],axis_tvalid,axis_tlast,axis_tready,axis_tkeep[3:0]" */;
  input clk;
  output [31:0]axis_tdata;
  output axis_tvalid;
  output axis_tlast;
  input axis_tready;
  output [3:0]axis_tkeep;
endmodule
