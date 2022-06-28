// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ADC_REG,Vivado 2020.1" *)
module system_ADC_REG_0(adc_clk_p, adc_clk_n, data_in, a_data_out, 
  b_data_out, adc_clk);
  input adc_clk_p;
  input adc_clk_n;
  input [11:0]data_in;
  output [11:0]a_data_out;
  output [11:0]b_data_out;
  output adc_clk;
endmodule
