// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Jul  5 11:37:08 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/taylor/Documents/new_spgd/tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_ADC_fp_0/system_ADC_fp_0_stub.v
// Design      : system_ADC_fp_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ADC_fp,Vivado 2020.1" *)
module system_ADC_fp_0(ADC_CLK, ADC_SEL, ADC_EN, REG_RST, ADC_A, ADC_B, 
  ADC_DONE, ADC_16Q48_OUT)
/* synthesis syn_black_box black_box_pad_pin="ADC_CLK,ADC_SEL,ADC_EN,REG_RST,ADC_A[11:0],ADC_B[11:0],ADC_DONE,ADC_16Q48_OUT[63:0]" */;
  input ADC_CLK;
  input ADC_SEL;
  input ADC_EN;
  input REG_RST;
  input [11:0]ADC_A;
  input [11:0]ADC_B;
  output ADC_DONE;
  output [63:0]ADC_16Q48_OUT;
endmodule
