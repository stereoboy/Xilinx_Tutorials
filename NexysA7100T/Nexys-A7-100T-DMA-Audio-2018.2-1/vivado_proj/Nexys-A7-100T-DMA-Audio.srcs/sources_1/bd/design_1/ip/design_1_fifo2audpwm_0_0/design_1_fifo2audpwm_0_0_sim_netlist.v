// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb  7 11:11:48 2019
// Host        : WK142 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Github/Jan19/Nexys-A7-100T-DMA-Audio/proj/Nexys-A7-100T-DMA-Audio.srcs/sources_1/bd/design_1/ip/design_1_fifo2audpwm_0_0/design_1_fifo2audpwm_0_0_sim_netlist.v
// Design      : design_1_fifo2audpwm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fifo2audpwm_0_0,fifo2audpwm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fifo2audpwm,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_fifo2audpwm_0_0
   (clk,
    aud_pwm,
    aud_en,
    fifo_rd_data,
    fifo_rd_en,
    fifo_empty);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 24568965, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input clk;
  (* X_INTERFACE_INFO = "digilentinc.com:local_if:pwm_audio:1.0 PWM_AUDIO pwm" *) output aud_pwm;
  (* X_INTERFACE_INFO = "digilentinc.com:local_if:pwm_audio:1.0 PWM_AUDIO en" *) output aud_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 M_FIFO_READ RD_DATA" *) input [31:0]fifo_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 M_FIFO_READ RD_EN" *) output fifo_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 M_FIFO_READ EMPTY" *) input fifo_empty;

  wire aud_en;
  wire aud_pwm;
  wire clk;
  wire fifo_empty;
  wire [31:0]fifo_rd_data;
  wire fifo_rd_en;

  design_1_fifo2audpwm_0_0_fifo2audpwm inst
       (.aud_en(aud_en),
        .aud_pwm(aud_pwm),
        .clk(clk),
        .fifo_empty(fifo_empty),
        .fifo_rd_data(fifo_rd_data),
        .fifo_rd_en(fifo_rd_en));
endmodule

(* ORIG_REF_NAME = "fifo2audpwm" *) 
module design_1_fifo2audpwm_0_0_fifo2audpwm
   (fifo_rd_en,
    aud_en,
    aud_pwm,
    fifo_rd_data,
    clk,
    fifo_empty);
  output fifo_rd_en;
  output aud_en;
  output aud_pwm;
  input [31:0]fifo_rd_data;
  input clk;
  input fifo_empty;

  wire aud_en;
  wire aud_en_i_1_n_0;
  wire aud_en_i_2_n_0;
  wire aud_pwm;
  wire aud_pwm_carry_i_1_n_0;
  wire aud_pwm_carry_i_2_n_0;
  wire aud_pwm_carry_i_3_n_0;
  wire aud_pwm_carry_i_4_n_0;
  wire aud_pwm_carry_i_5_n_0;
  wire aud_pwm_carry_i_6_n_0;
  wire aud_pwm_carry_i_7_n_0;
  wire aud_pwm_carry_i_8_n_0;
  wire aud_pwm_carry_n_1;
  wire aud_pwm_carry_n_2;
  wire aud_pwm_carry_n_3;
  wire clk;
  wire count0;
  wire \count[0]_i_1_n_0 ;
  wire \count[9]_i_3_n_0 ;
  wire [9:0]count_reg__0;
  wire [7:0]duty;
  wire [7:0]\duty_reg[0] ;
  wire [7:0]\duty_reg[1] ;
  wire [7:0]\duty_reg[2] ;
  wire [7:0]\duty_reg[3] ;
  wire fifo_empty;
  wire [31:0]fifo_rd_data;
  wire fifo_rd_en;
  wire fifo_rd_en_INST_0_i_1_n_0;
  wire [9:1]p_0_in;
  wire [3:0]NLW_aud_pwm_carry_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    aud_en_i_1
       (.I0(fifo_empty),
        .I1(fifo_rd_en_INST_0_i_1_n_0),
        .I2(count_reg__0[2]),
        .I3(count_reg__0[3]),
        .I4(aud_en_i_2_n_0),
        .I5(aud_en),
        .O(aud_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    aud_en_i_2
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .O(aud_en_i_2_n_0));
  (* X_INTERFACE_INFO = "digilentinc.com:local_if:pwm_audio_rtl:1.0 PWM_AUDIO en" *) 
  FDRE aud_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(aud_en_i_1_n_0),
        .Q(aud_en),
        .R(1'b0));
  CARRY4 aud_pwm_carry
       (.CI(1'b0),
        .CO({aud_pwm,aud_pwm_carry_n_1,aud_pwm_carry_n_2,aud_pwm_carry_n_3}),
        .CYINIT(1'b1),
        .DI({aud_pwm_carry_i_1_n_0,aud_pwm_carry_i_2_n_0,aud_pwm_carry_i_3_n_0,aud_pwm_carry_i_4_n_0}),
        .O(NLW_aud_pwm_carry_O_UNCONNECTED[3:0]),
        .S({aud_pwm_carry_i_5_n_0,aud_pwm_carry_i_6_n_0,aud_pwm_carry_i_7_n_0,aud_pwm_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    aud_pwm_carry_i_1
       (.I0(duty[6]),
        .I1(count_reg__0[6]),
        .I2(count_reg__0[7]),
        .I3(duty[7]),
        .O(aud_pwm_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    aud_pwm_carry_i_10
       (.I0(\duty_reg[1] [7]),
        .I1(\duty_reg[0] [7]),
        .I2(\duty_reg[3] [7]),
        .I3(count_reg__0[9]),
        .I4(count_reg__0[8]),
        .I5(\duty_reg[2] [7]),
        .O(duty[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    aud_pwm_carry_i_11
       (.I0(\duty_reg[1] [4]),
        .I1(\duty_reg[0] [4]),
        .I2(\duty_reg[3] [4]),
        .I3(count_reg__0[9]),
        .I4(count_reg__0[8]),
        .I5(\duty_reg[2] [4]),
        .O(duty[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    aud_pwm_carry_i_12
       (.I0(\duty_reg[1] [5]),
        .I1(\duty_reg[0] [5]),
        .I2(\duty_reg[3] [5]),
        .I3(count_reg__0[9]),
        .I4(count_reg__0[8]),
        .I5(\duty_reg[2] [5]),
        .O(duty[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    aud_pwm_carry_i_13
       (.I0(\duty_reg[1] [2]),
        .I1(\duty_reg[0] [2]),
        .I2(\duty_reg[3] [2]),
        .I3(count_reg__0[9]),
        .I4(count_reg__0[8]),
        .I5(\duty_reg[2] [2]),
        .O(duty[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    aud_pwm_carry_i_14
       (.I0(\duty_reg[1] [3]),
        .I1(\duty_reg[0] [3]),
        .I2(\duty_reg[3] [3]),
        .I3(count_reg__0[9]),
        .I4(count_reg__0[8]),
        .I5(\duty_reg[2] [3]),
        .O(duty[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    aud_pwm_carry_i_15
       (.I0(\duty_reg[1] [0]),
        .I1(\duty_reg[0] [0]),
        .I2(\duty_reg[3] [0]),
        .I3(count_reg__0[9]),
        .I4(count_reg__0[8]),
        .I5(\duty_reg[2] [0]),
        .O(duty[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    aud_pwm_carry_i_16
       (.I0(\duty_reg[1] [1]),
        .I1(\duty_reg[0] [1]),
        .I2(\duty_reg[3] [1]),
        .I3(count_reg__0[9]),
        .I4(count_reg__0[8]),
        .I5(\duty_reg[2] [1]),
        .O(duty[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    aud_pwm_carry_i_2
       (.I0(duty[4]),
        .I1(count_reg__0[4]),
        .I2(count_reg__0[5]),
        .I3(duty[5]),
        .O(aud_pwm_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    aud_pwm_carry_i_3
       (.I0(duty[2]),
        .I1(count_reg__0[2]),
        .I2(count_reg__0[3]),
        .I3(duty[3]),
        .O(aud_pwm_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    aud_pwm_carry_i_4
       (.I0(duty[0]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .I3(duty[1]),
        .O(aud_pwm_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    aud_pwm_carry_i_5
       (.I0(duty[6]),
        .I1(duty[7]),
        .I2(count_reg__0[7]),
        .I3(count_reg__0[6]),
        .O(aud_pwm_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    aud_pwm_carry_i_6
       (.I0(duty[4]),
        .I1(duty[5]),
        .I2(count_reg__0[5]),
        .I3(count_reg__0[4]),
        .O(aud_pwm_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    aud_pwm_carry_i_7
       (.I0(duty[2]),
        .I1(duty[3]),
        .I2(count_reg__0[3]),
        .I3(count_reg__0[2]),
        .O(aud_pwm_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h8241)) 
    aud_pwm_carry_i_8
       (.I0(duty[0]),
        .I1(duty[1]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[0]),
        .O(aud_pwm_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    aud_pwm_carry_i_9
       (.I0(\duty_reg[1] [6]),
        .I1(\duty_reg[0] [6]),
        .I2(\duty_reg[3] [6]),
        .I3(count_reg__0[9]),
        .I4(count_reg__0[8]),
        .I5(\duty_reg[2] [6]),
        .O(duty[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg__0[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[2]),
        .I3(count_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[0]),
        .I3(count_reg__0[3]),
        .I4(count_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(count_reg__0[3]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[2]),
        .I4(count_reg__0[4]),
        .I5(count_reg__0[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[6]_i_1 
       (.I0(count_reg__0[4]),
        .I1(count_reg__0[2]),
        .I2(aud_en_i_2_n_0),
        .I3(count_reg__0[3]),
        .I4(count_reg__0[5]),
        .I5(count_reg__0[6]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h78)) 
    \count[7]_i_1 
       (.I0(\count[9]_i_3_n_0 ),
        .I1(count_reg__0[6]),
        .I2(count_reg__0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[8]_i_1 
       (.I0(count_reg__0[6]),
        .I1(\count[9]_i_3_n_0 ),
        .I2(count_reg__0[7]),
        .I3(count_reg__0[8]),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \count[9]_i_1 
       (.I0(fifo_rd_en_INST_0_i_1_n_0),
        .I1(count_reg__0[2]),
        .I2(count_reg__0[3]),
        .I3(count_reg__0[0]),
        .I4(count_reg__0[1]),
        .O(count0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[9]_i_2 
       (.I0(count_reg__0[7]),
        .I1(\count[9]_i_3_n_0 ),
        .I2(count_reg__0[6]),
        .I3(count_reg__0[8]),
        .I4(count_reg__0[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count[9]_i_3 
       (.I0(count_reg__0[5]),
        .I1(count_reg__0[3]),
        .I2(count_reg__0[0]),
        .I3(count_reg__0[1]),
        .I4(count_reg__0[2]),
        .I5(count_reg__0[4]),
        .O(\count[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(count_reg__0[0]),
        .R(count0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(count_reg__0[1]),
        .R(count0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(count_reg__0[2]),
        .R(count0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(count_reg__0[3]),
        .R(count0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(count_reg__0[4]),
        .R(count0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(count_reg__0[5]),
        .R(count0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(count_reg__0[6]),
        .R(count0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(count_reg__0[7]),
        .R(count0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(count_reg__0[8]),
        .R(count0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(count_reg__0[9]),
        .R(count0));
  FDRE \duty_reg[0][0] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[0]),
        .Q(\duty_reg[0] [0]),
        .R(1'b0));
  FDRE \duty_reg[0][1] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[1]),
        .Q(\duty_reg[0] [1]),
        .R(1'b0));
  FDRE \duty_reg[0][2] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[2]),
        .Q(\duty_reg[0] [2]),
        .R(1'b0));
  FDRE \duty_reg[0][3] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[3]),
        .Q(\duty_reg[0] [3]),
        .R(1'b0));
  FDRE \duty_reg[0][4] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[4]),
        .Q(\duty_reg[0] [4]),
        .R(1'b0));
  FDRE \duty_reg[0][5] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[5]),
        .Q(\duty_reg[0] [5]),
        .R(1'b0));
  FDRE \duty_reg[0][6] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[6]),
        .Q(\duty_reg[0] [6]),
        .R(1'b0));
  FDRE \duty_reg[0][7] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[7]),
        .Q(\duty_reg[0] [7]),
        .R(1'b0));
  FDRE \duty_reg[1][0] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[8]),
        .Q(\duty_reg[1] [0]),
        .R(1'b0));
  FDRE \duty_reg[1][1] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[9]),
        .Q(\duty_reg[1] [1]),
        .R(1'b0));
  FDRE \duty_reg[1][2] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[10]),
        .Q(\duty_reg[1] [2]),
        .R(1'b0));
  FDRE \duty_reg[1][3] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[11]),
        .Q(\duty_reg[1] [3]),
        .R(1'b0));
  FDRE \duty_reg[1][4] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[12]),
        .Q(\duty_reg[1] [4]),
        .R(1'b0));
  FDRE \duty_reg[1][5] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[13]),
        .Q(\duty_reg[1] [5]),
        .R(1'b0));
  FDRE \duty_reg[1][6] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[14]),
        .Q(\duty_reg[1] [6]),
        .R(1'b0));
  FDRE \duty_reg[1][7] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[15]),
        .Q(\duty_reg[1] [7]),
        .R(1'b0));
  FDRE \duty_reg[2][0] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[16]),
        .Q(\duty_reg[2] [0]),
        .R(1'b0));
  FDRE \duty_reg[2][1] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[17]),
        .Q(\duty_reg[2] [1]),
        .R(1'b0));
  FDRE \duty_reg[2][2] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[18]),
        .Q(\duty_reg[2] [2]),
        .R(1'b0));
  FDRE \duty_reg[2][3] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[19]),
        .Q(\duty_reg[2] [3]),
        .R(1'b0));
  FDRE \duty_reg[2][4] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[20]),
        .Q(\duty_reg[2] [4]),
        .R(1'b0));
  FDRE \duty_reg[2][5] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[21]),
        .Q(\duty_reg[2] [5]),
        .R(1'b0));
  FDRE \duty_reg[2][6] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[22]),
        .Q(\duty_reg[2] [6]),
        .R(1'b0));
  FDRE \duty_reg[2][7] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[23]),
        .Q(\duty_reg[2] [7]),
        .R(1'b0));
  FDRE \duty_reg[3][0] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[24]),
        .Q(\duty_reg[3] [0]),
        .R(1'b0));
  FDRE \duty_reg[3][1] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[25]),
        .Q(\duty_reg[3] [1]),
        .R(1'b0));
  FDRE \duty_reg[3][2] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[26]),
        .Q(\duty_reg[3] [2]),
        .R(1'b0));
  FDRE \duty_reg[3][3] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[27]),
        .Q(\duty_reg[3] [3]),
        .R(1'b0));
  FDRE \duty_reg[3][4] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[28]),
        .Q(\duty_reg[3] [4]),
        .R(1'b0));
  FDRE \duty_reg[3][5] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[29]),
        .Q(\duty_reg[3] [5]),
        .R(1'b0));
  FDRE \duty_reg[3][6] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[30]),
        .Q(\duty_reg[3] [6]),
        .R(1'b0));
  FDRE \duty_reg[3][7] 
       (.C(clk),
        .CE(fifo_rd_en),
        .D(fifo_rd_data[31]),
        .Q(\duty_reg[3] [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    fifo_rd_en_INST_0
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[3]),
        .I3(count_reg__0[2]),
        .I4(fifo_rd_en_INST_0_i_1_n_0),
        .I5(fifo_empty),
        .O(fifo_rd_en));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    fifo_rd_en_INST_0_i_1
       (.I0(count_reg__0[4]),
        .I1(count_reg__0[5]),
        .I2(count_reg__0[6]),
        .I3(count_reg__0[7]),
        .I4(count_reg__0[9]),
        .I5(count_reg__0[8]),
        .O(fifo_rd_en_INST_0_i_1_n_0));
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
