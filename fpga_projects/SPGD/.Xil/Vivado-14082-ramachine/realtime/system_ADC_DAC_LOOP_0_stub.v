// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ADC_DAC_LOOP,Vivado 2020.1" *)
module system_ADC_DAC_LOOP_0(ADC_CLK, ADC_DATA_IN, GP_IN, GP_OUT, DONE, val_0, 
  val_1, DACA_CODE_OUT, DACB_CODE_OUT);
  input ADC_CLK;
  input [11:0]ADC_DATA_IN;
  input [31:0]GP_IN;
  output [31:0]GP_OUT;
  output DONE;
  output val_0;
  output val_1;
  output [13:0]DACA_CODE_OUT;
  output [13:0]DACB_CODE_OUT;
endmodule
