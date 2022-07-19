// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Jul 14 14:21:09 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/taylor/Documents/GH/SPGD/fpga_projects/SPGD/tmp/SPGD/SPGD.srcs/sources_1/bd/system/ip/system_LED_CONTROLLER_0/system_LED_CONTROLLER_0_stub.v
// Design      : system_LED_CONTROLLER_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "LED_CONTROLLER,Vivado 2020.1" *)
module system_LED_CONTROLLER_0(val, led_o)
/* synthesis syn_black_box black_box_pad_pin="val[0:0],led_o[0:0]" */;
  input [0:0]val;
  output [0:0]led_o;
endmodule
