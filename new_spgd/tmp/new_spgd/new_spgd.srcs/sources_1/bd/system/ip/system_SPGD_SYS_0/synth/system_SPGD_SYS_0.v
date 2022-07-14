// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:module_ref:SPGD_SYS:1.0
// IP Revision: 1

(* X_CORE_INFO = "SPGD_SYS,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "system_SPGD_SYS_0,SPGD_SYS,{}" *)
(* CORE_GENERATION_INFO = "system_SPGD_SYS_0,SPGD_SYS,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=SPGD_SYS,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,FP_WIDTH=64,GPIO_WIDTH=32}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_SPGD_SYS_0 (
  ADC_IN,
  GP_IN,
  ADC_CLK,
  ADC_DONE,
  ADC_EN,
  ADC_SEL,
  REG_RESET,
  DAC_A_OUT,
  DAC_B_OUT,
  GP_OUT,
  LED_O,
  val_0,
  val_1
);

input wire [63 : 0] ADC_IN;
input wire [31 : 0] GP_IN;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ADC_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_ADC_REG_0_adc_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ADC_CLK CLK" *)
input wire ADC_CLK;
input wire ADC_DONE;
output wire ADC_EN;
output wire ADC_SEL;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME REG_RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 REG_RESET RST" *)
output wire REG_RESET;
output wire [63 : 0] DAC_A_OUT;
output wire [63 : 0] DAC_B_OUT;
output wire [31 : 0] GP_OUT;
output wire [7 : 0] LED_O;
output wire val_0;
output wire val_1;

  SPGD_SYS #(
    .FP_WIDTH(64),
    .GPIO_WIDTH(32)
  ) inst (
    .ADC_IN(ADC_IN),
    .GP_IN(GP_IN),
    .ADC_CLK(ADC_CLK),
    .ADC_DONE(ADC_DONE),
    .ADC_EN(ADC_EN),
    .ADC_SEL(ADC_SEL),
    .REG_RESET(REG_RESET),
    .DAC_A_OUT(DAC_A_OUT),
    .DAC_B_OUT(DAC_B_OUT),
    .GP_OUT(GP_OUT),
    .LED_O(LED_O),
    .val_0(val_0),
    .val_1(val_1)
  );
endmodule
