// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:fifo2audpwm:1.0
// IP Revision: 1

(* X_CORE_INFO = "fifo2audpwm,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "design_1_fifo2audpwm_0_0,fifo2audpwm,{}" *)
(* CORE_GENERATION_INFO = "design_1_fifo2audpwm_0_0,fifo2audpwm,{x_ipProduct=Vivado 2018.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=fifo2audpwm,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DATA_WIDTH=8,FIFO_DATA_WIDTH=32}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_fifo2audpwm_0_0 (
  clk,
  aud_pwm,
  aud_en,
  fifo_rd_data,
  fifo_rd_en,
  fifo_empty
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 24568965, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_INFO = "digilentinc.com:local_if:pwm_audio:1.0 PWM_AUDIO pwm" *)
output wire aud_pwm;
(* X_INTERFACE_INFO = "digilentinc.com:local_if:pwm_audio:1.0 PWM_AUDIO en" *)
output wire aud_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 M_FIFO_READ RD_DATA" *)
input wire [31 : 0] fifo_rd_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 M_FIFO_READ RD_EN" *)
output wire fifo_rd_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 M_FIFO_READ EMPTY" *)
input wire fifo_empty;

  fifo2audpwm #(
    .DATA_WIDTH(8),
    .FIFO_DATA_WIDTH(32)
  ) inst (
    .clk(clk),
    .aud_pwm(aud_pwm),
    .aud_en(aud_en),
    .fifo_rd_data(fifo_rd_data),
    .fifo_rd_en(fifo_rd_en),
    .fifo_empty(fifo_empty)
  );
endmodule
