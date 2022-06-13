// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Jun  9 10:27:40 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top system_util_ds_buf_0_0 -prefix
//               system_util_ds_buf_0_0_ system_util_ds_buf_1_0_stub.v
// Design      : system_util_ds_buf_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "util_ds_buf,Vivado 2020.1" *)
module system_util_ds_buf_0_0(IBUF_DS_P, IBUF_DS_N, IBUF_OUT)
/* synthesis syn_black_box black_box_pad_pin="IBUF_DS_P[5:0],IBUF_DS_N[5:0],IBUF_OUT[5:0]" */;
  input [5:0]IBUF_DS_P;
  input [5:0]IBUF_DS_N;
  output [5:0]IBUF_OUT;
endmodule
