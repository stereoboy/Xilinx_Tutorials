// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb  7 11:13:59 2019
// Host        : WK142 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axis2fifo_0_0_stub.v
// Design      : design_1_axis2fifo_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis2fifo,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, axis_tdata, axis_tkeep, axis_tlast, 
  axis_tvalid, axis_tready, fifo_wr_data, fifo_wr_en, fifo_full)
/* synthesis syn_black_box black_box_pad_pin="clk,axis_tdata[31:0],axis_tkeep[0:0],axis_tlast,axis_tvalid,axis_tready,fifo_wr_data[31:0],fifo_wr_en,fifo_full" */;
  input clk;
  input [31:0]axis_tdata;
  input [0:0]axis_tkeep;
  input axis_tlast;
  input axis_tvalid;
  output axis_tready;
  output [31:0]fifo_wr_data;
  output fifo_wr_en;
  input fifo_full;
endmodule
