// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SPGD_SYS,Vivado 2020.1" *)
module system_SPGD_SYS_0(ADC_IN, GP_IN, ADC_CLK, ADC_DONE, ADC_EN, ADC_SEL, 
  DAC_A_OUT, DAC_B_OUT, GP_OUT, LED_O, val_0, val_1);
  input [63:0]ADC_IN;
  input [31:0]GP_IN;
  input ADC_CLK;
  input ADC_DONE;
  output ADC_EN;
  output ADC_SEL;
  output [63:0]DAC_A_OUT;
  output [63:0]DAC_B_OUT;
  output [31:0]GP_OUT;
  output [7:0]LED_O;
  output val_0;
  output val_1;
endmodule
