// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fp_DAC,Vivado 2020.1" *)
module system_fp_DAC_0_0(fp_in, DAC_out);
  input [63:0]fp_in;
  output [13:0]DAC_out;
endmodule
