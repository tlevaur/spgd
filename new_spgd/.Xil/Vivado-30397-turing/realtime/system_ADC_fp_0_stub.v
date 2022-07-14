// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ADC_fp,Vivado 2020.1" *)
module system_ADC_fp_0(ADC_CLK, ADC_SEL, ADC_EN, ADC_A, ADC_B, ADC_DONE, 
  ADC_16Q48_OUT);
  input ADC_CLK;
  input ADC_SEL;
  input ADC_EN;
  input [11:0]ADC_A;
  input [11:0]ADC_B;
  output ADC_DONE;
  output [63:0]ADC_16Q48_OUT;
endmodule
