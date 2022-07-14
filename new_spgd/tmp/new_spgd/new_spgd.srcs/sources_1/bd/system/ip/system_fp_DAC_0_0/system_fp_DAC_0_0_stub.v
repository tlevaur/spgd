// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Jul  5 13:31:22 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/taylor/Documents/new_spgd/tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_fp_DAC_0_0/system_fp_DAC_0_0_stub.v
// Design      : system_fp_DAC_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fp_DAC,Vivado 2020.1" *)
module system_fp_DAC_0_0(fp_in, DAC_out)
/* synthesis syn_black_box black_box_pad_pin="fp_in[63:0],DAC_out[13:0]" */;
  input [63:0]fp_in;
  output [13:0]DAC_out;
endmodule
