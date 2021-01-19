// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb  7 11:14:28 2019
// Host        : WK142 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Github/Jan19/Nexys-A7-100T-DMA-Audio/proj/Nexys-A7-100T-DMA-Audio.srcs/sources_1/bd/design_1/ip/design_1_tone_generator_0_0/design_1_tone_generator_0_0_sim_netlist.v
// Design      : design_1_tone_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_tone_generator_0_0,tone_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "tone_generator,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_tone_generator_0_0
   (clk,
    axis_tdata,
    axis_tvalid,
    axis_tlast,
    axis_tready,
    axis_tkeep);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXIS, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_1_ui_clk" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 81247969, PHASE 0, CLK_DOMAIN design_1_mig_7series_0_1_ui_clk, LAYERED_METADATA undef" *) output [3:0]axis_tkeep;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]\^axis_tdata ;
  wire axis_tready;
  wire clk;

  assign axis_tdata[31] = \<const0> ;
  assign axis_tdata[30] = \<const0> ;
  assign axis_tdata[29] = \<const0> ;
  assign axis_tdata[28] = \<const0> ;
  assign axis_tdata[27] = \<const0> ;
  assign axis_tdata[26] = \<const0> ;
  assign axis_tdata[25] = \<const0> ;
  assign axis_tdata[24] = \<const0> ;
  assign axis_tdata[23] = \<const0> ;
  assign axis_tdata[22] = \<const0> ;
  assign axis_tdata[21] = \<const0> ;
  assign axis_tdata[20] = \<const0> ;
  assign axis_tdata[19] = \<const0> ;
  assign axis_tdata[18] = \<const0> ;
  assign axis_tdata[17] = \<const0> ;
  assign axis_tdata[16] = \<const0> ;
  assign axis_tdata[15:0] = \^axis_tdata [15:0];
  assign axis_tkeep[3] = \<const1> ;
  assign axis_tkeep[2] = \<const1> ;
  assign axis_tkeep[1] = \<const1> ;
  assign axis_tkeep[0] = \<const1> ;
  assign axis_tlast = \<const1> ;
  assign axis_tvalid = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_tone_generator_0_0_tone_generator inst
       (.axis_tdata(\^axis_tdata ),
        .axis_tready(axis_tready),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "tone_generator" *) 
module design_1_tone_generator_0_0_tone_generator
   (axis_tdata,
    axis_tready,
    clk);
  output [15:0]axis_tdata;
  input axis_tready;
  input clk;

  wire [15:0]axis_tdata;
  wire axis_tready;
  wire clk;
  wire \duty[16]_i_2_n_0 ;
  wire \duty[1]_i_2_n_0 ;
  wire \duty[1]_i_3_n_0 ;
  wire \duty[1]_i_4_n_0 ;
  wire \duty[20]_i_2_n_0 ;
  wire \duty[20]_i_3_n_0 ;
  wire \duty[24]_i_2_n_0 ;
  wire \duty[24]_i_3_n_0 ;
  wire \duty[5]_i_2_n_0 ;
  wire \duty[9]_i_2_n_0 ;
  wire \duty[9]_i_3_n_0 ;
  wire \duty_reg[16]_i_1_n_0 ;
  wire \duty_reg[16]_i_1_n_1 ;
  wire \duty_reg[16]_i_1_n_2 ;
  wire \duty_reg[16]_i_1_n_3 ;
  wire \duty_reg[16]_i_1_n_4 ;
  wire \duty_reg[16]_i_1_n_5 ;
  wire \duty_reg[16]_i_1_n_6 ;
  wire \duty_reg[16]_i_1_n_7 ;
  wire \duty_reg[1]_i_1_n_0 ;
  wire \duty_reg[1]_i_1_n_1 ;
  wire \duty_reg[1]_i_1_n_2 ;
  wire \duty_reg[1]_i_1_n_3 ;
  wire \duty_reg[1]_i_1_n_4 ;
  wire \duty_reg[1]_i_1_n_5 ;
  wire \duty_reg[1]_i_1_n_6 ;
  wire \duty_reg[1]_i_1_n_7 ;
  wire \duty_reg[20]_i_1_n_0 ;
  wire \duty_reg[20]_i_1_n_1 ;
  wire \duty_reg[20]_i_1_n_2 ;
  wire \duty_reg[20]_i_1_n_3 ;
  wire \duty_reg[20]_i_1_n_4 ;
  wire \duty_reg[20]_i_1_n_5 ;
  wire \duty_reg[20]_i_1_n_6 ;
  wire \duty_reg[20]_i_1_n_7 ;
  wire \duty_reg[24]_i_1_n_0 ;
  wire \duty_reg[24]_i_1_n_1 ;
  wire \duty_reg[24]_i_1_n_2 ;
  wire \duty_reg[24]_i_1_n_3 ;
  wire \duty_reg[24]_i_1_n_4 ;
  wire \duty_reg[24]_i_1_n_5 ;
  wire \duty_reg[24]_i_1_n_6 ;
  wire \duty_reg[24]_i_1_n_7 ;
  wire \duty_reg[28]_i_1_n_0 ;
  wire \duty_reg[28]_i_1_n_1 ;
  wire \duty_reg[28]_i_1_n_2 ;
  wire \duty_reg[28]_i_1_n_3 ;
  wire \duty_reg[28]_i_1_n_4 ;
  wire \duty_reg[28]_i_1_n_5 ;
  wire \duty_reg[28]_i_1_n_6 ;
  wire \duty_reg[28]_i_1_n_7 ;
  wire \duty_reg[31]_i_1_n_2 ;
  wire \duty_reg[31]_i_1_n_3 ;
  wire \duty_reg[31]_i_1_n_5 ;
  wire \duty_reg[31]_i_1_n_6 ;
  wire \duty_reg[31]_i_1_n_7 ;
  wire \duty_reg[5]_i_1_n_0 ;
  wire \duty_reg[5]_i_1_n_1 ;
  wire \duty_reg[5]_i_1_n_2 ;
  wire \duty_reg[5]_i_1_n_3 ;
  wire \duty_reg[5]_i_1_n_4 ;
  wire \duty_reg[5]_i_1_n_5 ;
  wire \duty_reg[5]_i_1_n_6 ;
  wire \duty_reg[5]_i_1_n_7 ;
  wire \duty_reg[9]_i_1_n_0 ;
  wire \duty_reg[9]_i_1_n_1 ;
  wire \duty_reg[9]_i_1_n_2 ;
  wire \duty_reg[9]_i_1_n_3 ;
  wire \duty_reg[9]_i_1_n_4 ;
  wire \duty_reg[9]_i_1_n_5 ;
  wire \duty_reg[9]_i_1_n_6 ;
  wire \duty_reg[9]_i_1_n_7 ;
  wire \duty_reg_n_0_[10] ;
  wire \duty_reg_n_0_[11] ;
  wire \duty_reg_n_0_[12] ;
  wire \duty_reg_n_0_[13] ;
  wire \duty_reg_n_0_[14] ;
  wire \duty_reg_n_0_[15] ;
  wire \duty_reg_n_0_[1] ;
  wire \duty_reg_n_0_[2] ;
  wire \duty_reg_n_0_[3] ;
  wire \duty_reg_n_0_[4] ;
  wire \duty_reg_n_0_[5] ;
  wire \duty_reg_n_0_[6] ;
  wire \duty_reg_n_0_[7] ;
  wire \duty_reg_n_0_[8] ;
  wire \duty_reg_n_0_[9] ;
  wire [3:2]\NLW_duty_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_duty_reg[31]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \duty[16]_i_2 
       (.I0(\duty_reg_n_0_[13] ),
        .O(\duty[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \duty[1]_i_2 
       (.I0(\duty_reg_n_0_[3] ),
        .O(\duty[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \duty[1]_i_3 
       (.I0(\duty_reg_n_0_[2] ),
        .O(\duty[1]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \duty[1]_i_4 
       (.I0(\duty_reg_n_0_[1] ),
        .O(\duty[1]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \duty[20]_i_2 
       (.I0(axis_tdata[4]),
        .O(\duty[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \duty[20]_i_3 
       (.I0(axis_tdata[1]),
        .O(\duty[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \duty[24]_i_2 
       (.I0(axis_tdata[7]),
        .O(\duty[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \duty[24]_i_3 
       (.I0(axis_tdata[5]),
        .O(\duty[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \duty[5]_i_2 
       (.I0(\duty_reg_n_0_[8] ),
        .O(\duty[5]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \duty[9]_i_2 
       (.I0(\duty_reg_n_0_[11] ),
        .O(\duty[9]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \duty[9]_i_3 
       (.I0(\duty_reg_n_0_[10] ),
        .O(\duty[9]_i_3_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[10] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[9]_i_1_n_6 ),
        .Q(\duty_reg_n_0_[10] ),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[11] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[9]_i_1_n_5 ),
        .Q(\duty_reg_n_0_[11] ),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[12] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[9]_i_1_n_4 ),
        .Q(\duty_reg_n_0_[12] ),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[13] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[16]_i_1_n_7 ),
        .Q(\duty_reg_n_0_[13] ),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[14] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[16]_i_1_n_6 ),
        .Q(\duty_reg_n_0_[14] ),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[15] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[16]_i_1_n_5 ),
        .Q(\duty_reg_n_0_[15] ),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[16] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[16]_i_1_n_4 ),
        .Q(axis_tdata[0]),
        .R(1'b0));
  CARRY4 \duty_reg[16]_i_1 
       (.CI(\duty_reg[9]_i_1_n_0 ),
        .CO({\duty_reg[16]_i_1_n_0 ,\duty_reg[16]_i_1_n_1 ,\duty_reg[16]_i_1_n_2 ,\duty_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\duty_reg[16]_i_1_n_4 ,\duty_reg[16]_i_1_n_5 ,\duty_reg[16]_i_1_n_6 ,\duty_reg[16]_i_1_n_7 }),
        .S({axis_tdata[0],\duty_reg_n_0_[15] ,\duty_reg_n_0_[14] ,\duty[16]_i_2_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[17] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[20]_i_1_n_7 ),
        .Q(axis_tdata[1]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[18] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[20]_i_1_n_6 ),
        .Q(axis_tdata[2]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[19] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[20]_i_1_n_5 ),
        .Q(axis_tdata[3]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[1] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[1]_i_1_n_7 ),
        .Q(\duty_reg_n_0_[1] ),
        .R(1'b0));
  CARRY4 \duty_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\duty_reg[1]_i_1_n_0 ,\duty_reg[1]_i_1_n_1 ,\duty_reg[1]_i_1_n_2 ,\duty_reg[1]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\duty_reg[1]_i_1_n_4 ,\duty_reg[1]_i_1_n_5 ,\duty_reg[1]_i_1_n_6 ,\duty_reg[1]_i_1_n_7 }),
        .S({\duty_reg_n_0_[4] ,\duty[1]_i_2_n_0 ,\duty[1]_i_3_n_0 ,\duty[1]_i_4_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[20] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[20]_i_1_n_4 ),
        .Q(axis_tdata[4]),
        .R(1'b0));
  CARRY4 \duty_reg[20]_i_1 
       (.CI(\duty_reg[16]_i_1_n_0 ),
        .CO({\duty_reg[20]_i_1_n_0 ,\duty_reg[20]_i_1_n_1 ,\duty_reg[20]_i_1_n_2 ,\duty_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b1}),
        .O({\duty_reg[20]_i_1_n_4 ,\duty_reg[20]_i_1_n_5 ,\duty_reg[20]_i_1_n_6 ,\duty_reg[20]_i_1_n_7 }),
        .S({\duty[20]_i_2_n_0 ,axis_tdata[3:2],\duty[20]_i_3_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[21] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[24]_i_1_n_7 ),
        .Q(axis_tdata[5]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[22] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[24]_i_1_n_6 ),
        .Q(axis_tdata[6]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[23] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[24]_i_1_n_5 ),
        .Q(axis_tdata[7]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[24] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[24]_i_1_n_4 ),
        .Q(axis_tdata[8]),
        .R(1'b0));
  CARRY4 \duty_reg[24]_i_1 
       (.CI(\duty_reg[20]_i_1_n_0 ),
        .CO({\duty_reg[24]_i_1_n_0 ,\duty_reg[24]_i_1_n_1 ,\duty_reg[24]_i_1_n_2 ,\duty_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b0,1'b1}),
        .O({\duty_reg[24]_i_1_n_4 ,\duty_reg[24]_i_1_n_5 ,\duty_reg[24]_i_1_n_6 ,\duty_reg[24]_i_1_n_7 }),
        .S({axis_tdata[8],\duty[24]_i_2_n_0 ,axis_tdata[6],\duty[24]_i_3_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[25] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[28]_i_1_n_7 ),
        .Q(axis_tdata[9]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[26] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[28]_i_1_n_6 ),
        .Q(axis_tdata[10]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[27] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[28]_i_1_n_5 ),
        .Q(axis_tdata[11]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[28] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[28]_i_1_n_4 ),
        .Q(axis_tdata[12]),
        .R(1'b0));
  CARRY4 \duty_reg[28]_i_1 
       (.CI(\duty_reg[24]_i_1_n_0 ),
        .CO({\duty_reg[28]_i_1_n_0 ,\duty_reg[28]_i_1_n_1 ,\duty_reg[28]_i_1_n_2 ,\duty_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\duty_reg[28]_i_1_n_4 ,\duty_reg[28]_i_1_n_5 ,\duty_reg[28]_i_1_n_6 ,\duty_reg[28]_i_1_n_7 }),
        .S(axis_tdata[12:9]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[29] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[31]_i_1_n_7 ),
        .Q(axis_tdata[13]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[2] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[1]_i_1_n_6 ),
        .Q(\duty_reg_n_0_[2] ),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[30] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[31]_i_1_n_6 ),
        .Q(axis_tdata[14]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[31] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[31]_i_1_n_5 ),
        .Q(axis_tdata[15]),
        .R(1'b0));
  CARRY4 \duty_reg[31]_i_1 
       (.CI(\duty_reg[28]_i_1_n_0 ),
        .CO({\NLW_duty_reg[31]_i_1_CO_UNCONNECTED [3:2],\duty_reg[31]_i_1_n_2 ,\duty_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_duty_reg[31]_i_1_O_UNCONNECTED [3],\duty_reg[31]_i_1_n_5 ,\duty_reg[31]_i_1_n_6 ,\duty_reg[31]_i_1_n_7 }),
        .S({1'b0,axis_tdata[15:13]}));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[3] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[1]_i_1_n_5 ),
        .Q(\duty_reg_n_0_[3] ),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[4] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[1]_i_1_n_4 ),
        .Q(\duty_reg_n_0_[4] ),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[5] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[5]_i_1_n_7 ),
        .Q(\duty_reg_n_0_[5] ),
        .R(1'b0));
  CARRY4 \duty_reg[5]_i_1 
       (.CI(\duty_reg[1]_i_1_n_0 ),
        .CO({\duty_reg[5]_i_1_n_0 ,\duty_reg[5]_i_1_n_1 ,\duty_reg[5]_i_1_n_2 ,\duty_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b0}),
        .O({\duty_reg[5]_i_1_n_4 ,\duty_reg[5]_i_1_n_5 ,\duty_reg[5]_i_1_n_6 ,\duty_reg[5]_i_1_n_7 }),
        .S({\duty[5]_i_2_n_0 ,\duty_reg_n_0_[7] ,\duty_reg_n_0_[6] ,\duty_reg_n_0_[5] }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[6] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[5]_i_1_n_6 ),
        .Q(\duty_reg_n_0_[6] ),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[7] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[5]_i_1_n_5 ),
        .Q(\duty_reg_n_0_[7] ),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[8] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[5]_i_1_n_4 ),
        .Q(\duty_reg_n_0_[8] ),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  (* X_INTERFACE_PARAMETER = "CLK_DOMAIN /processing_system/clk_wiz_0_clk_out1" *) 
  FDRE #(
    .INIT(1'b0)) 
    \duty_reg[9] 
       (.C(clk),
        .CE(axis_tready),
        .D(\duty_reg[9]_i_1_n_7 ),
        .Q(\duty_reg_n_0_[9] ),
        .R(1'b0));
  CARRY4 \duty_reg[9]_i_1 
       (.CI(\duty_reg[5]_i_1_n_0 ),
        .CO({\duty_reg[9]_i_1_n_0 ,\duty_reg[9]_i_1_n_1 ,\duty_reg[9]_i_1_n_2 ,\duty_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b0}),
        .O({\duty_reg[9]_i_1_n_4 ,\duty_reg[9]_i_1_n_5 ,\duty_reg[9]_i_1_n_6 ,\duty_reg[9]_i_1_n_7 }),
        .S({\duty_reg_n_0_[12] ,\duty[9]_i_2_n_0 ,\duty[9]_i_3_n_0 ,\duty_reg_n_0_[9] }));
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
