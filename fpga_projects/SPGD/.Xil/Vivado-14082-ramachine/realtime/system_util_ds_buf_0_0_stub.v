// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "util_ds_buf,Vivado 2020.1" *)
module system_util_ds_buf_0_0(IBUF_DS_P, IBUF_DS_N, IBUF_OUT);
  input [5:0]IBUF_DS_P;
  input [5:0]IBUF_DS_N;
  output [5:0]IBUF_OUT;
endmodule
