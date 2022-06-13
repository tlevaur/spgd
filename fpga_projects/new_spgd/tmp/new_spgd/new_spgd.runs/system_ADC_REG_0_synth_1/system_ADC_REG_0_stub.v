// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Jun  9 10:27:40 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_ADC_REG_0_stub.v
// Design      : system_ADC_REG_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ADC_REG,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(adc_clk_p, adc_clk_n, data_in, a_data_out, 
  b_data_out, adc_clk)
/* synthesis syn_black_box black_box_pad_pin="adc_clk_p,adc_clk_n,data_in[11:0],a_data_out[11:0],b_data_out[11:0],adc_clk" */;
  input adc_clk_p;
  input adc_clk_n;
  input [11:0]data_in;
  output [11:0]a_data_out;
  output [11:0]b_data_out;
  output adc_clk;
endmodule
