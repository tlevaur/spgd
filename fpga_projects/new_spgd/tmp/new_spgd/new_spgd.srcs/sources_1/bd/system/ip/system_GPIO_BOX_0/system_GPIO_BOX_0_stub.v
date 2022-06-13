// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Jun  9 10:27:40 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/taylor/Documents/new_spgd/tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_GPIO_BOX_0/system_GPIO_BOX_0_stub.v
// Design      : system_GPIO_BOX_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "GPIO_BOX,Vivado 2020.1" *)
module system_GPIO_BOX_0(GP_IN, ADC_A, ADC_B, GP_OUT, DAC_A, DAC_B)
/* synthesis syn_black_box black_box_pad_pin="GP_IN[31:0],ADC_A[11:0],ADC_B[11:0],GP_OUT[31:0],DAC_A[13:0],DAC_B[13:0]" */;
  input [31:0]GP_IN;
  input [11:0]ADC_A;
  input [11:0]ADC_B;
  output [31:0]GP_OUT;
  output [13:0]DAC_A;
  output [13:0]DAC_B;
endmodule
