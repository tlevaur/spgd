// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Jul  5 14:28:27 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_SPGD_SYS_0_stub.v
// Design      : system_SPGD_SYS_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SPGD_SYS,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ADC_IN, GP_IN, ADC_CLK, ADC_DONE, ADC_EN, ADC_SEL, 
  REG_RESET, DAC_A_OUT, DAC_B_OUT, GP_OUT, LED_O, val_0, val_1)
/* synthesis syn_black_box black_box_pad_pin="ADC_IN[63:0],GP_IN[31:0],ADC_CLK,ADC_DONE,ADC_EN,ADC_SEL,REG_RESET,DAC_A_OUT[63:0],DAC_B_OUT[63:0],GP_OUT[31:0],LED_O[7:0],val_0,val_1" */;
  input [63:0]ADC_IN;
  input [31:0]GP_IN;
  input ADC_CLK;
  input ADC_DONE;
  output ADC_EN;
  output ADC_SEL;
  output REG_RESET;
  output [63:0]DAC_A_OUT;
  output [63:0]DAC_B_OUT;
  output [31:0]GP_OUT;
  output [7:0]LED_O;
  output val_0;
  output val_1;
endmodule
