// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Jun  9 10:27:40 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_my_timer_0_stub.v
// Design      : system_my_timer_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "my_timer,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(GP_IN, ADC_CLK, DAC_A_OUT, DAC_B_OUT, val_0, val_1)
/* synthesis syn_black_box black_box_pad_pin="GP_IN[31:0],ADC_CLK,DAC_A_OUT[13:0],DAC_B_OUT[13:0],val_0,val_1" */;
  input [31:0]GP_IN;
  input ADC_CLK;
  output [13:0]DAC_A_OUT;
  output [13:0]DAC_B_OUT;
  output val_0;
  output val_1;
endmodule
