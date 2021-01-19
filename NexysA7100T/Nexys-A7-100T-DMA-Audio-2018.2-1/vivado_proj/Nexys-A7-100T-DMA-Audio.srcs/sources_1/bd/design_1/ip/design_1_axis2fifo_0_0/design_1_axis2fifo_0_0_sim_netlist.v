// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb  7 11:13:59 2019
// Host        : WK142 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Github/Jan19/Nexys-A7-100T-DMA-Audio/proj/Nexys-A7-100T-DMA-Audio.srcs/sources_1/bd/design_1/ip/design_1_axis2fifo_0_0/design_1_axis2fifo_0_0_sim_netlist.v
// Design      : design_1_axis2fifo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axis2fifo_0_0,axis2fifo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axis2fifo,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_axis2fifo_0_0
   (clk,
    axis_tdata,
    axis_tkeep,
    axis_tlast,
    axis_tvalid,
    axis_tready,
    fifo_wr_data,
    fifo_wr_en,
    fifo_full);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_1_ui_clk" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [0:0]axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_1_ui_clk, LAYERED_METADATA undef" *) output axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 M_FIFO_WRITE WR_DATA" *) output [31:0]fifo_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 M_FIFO_WRITE WR_EN" *) output fifo_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 M_FIFO_WRITE FULL" *) input fifo_full;

  wire \<const0> ;
  wire [31:0]axis_tdata;
  wire axis_tready;
  wire axis_tvalid;
  wire fifo_full;
  wire fifo_wr_en;

  assign fifo_wr_data[31] = \<const0> ;
  assign fifo_wr_data[30] = \<const0> ;
  assign fifo_wr_data[29] = \<const0> ;
  assign fifo_wr_data[28] = \<const0> ;
  assign fifo_wr_data[27] = \<const0> ;
  assign fifo_wr_data[26] = \<const0> ;
  assign fifo_wr_data[25] = \<const0> ;
  assign fifo_wr_data[24] = \<const0> ;
  assign fifo_wr_data[23] = \<const0> ;
  assign fifo_wr_data[22] = \<const0> ;
  assign fifo_wr_data[21] = \<const0> ;
  assign fifo_wr_data[20] = \<const0> ;
  assign fifo_wr_data[19] = \<const0> ;
  assign fifo_wr_data[18] = \<const0> ;
  assign fifo_wr_data[17] = \<const0> ;
  assign fifo_wr_data[16] = \<const0> ;
  assign fifo_wr_data[15:0] = axis_tdata[15:0];
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tready_INST_0
       (.I0(fifo_full),
        .O(axis_tready));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_wr_en_INST_0
       (.I0(axis_tvalid),
        .I1(fifo_full),
        .O(fifo_wr_en));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
