// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Jul 14 17:38:34 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/taylor/Documents/GH/SPGD/fpga_projects/SPGD/tmp/SPGD/SPGD.srcs/sources_1/bd/system/ip/system_ADC_DAC_LOOP_0/system_ADC_DAC_LOOP_0_stub.v
// Design      : system_ADC_DAC_LOOP_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ADC_DAC_LOOP,Vivado 2020.1" *)
module system_ADC_DAC_LOOP_0(ADC_CLK, ADC_DATA_IN, GP_IN, GP_OUT, DONE, val_0, 
  val_1, DACA_CODE_OUT, DACB_CODE_OUT, CFG_IN)
/* synthesis syn_black_box black_box_pad_pin="ADC_CLK,ADC_DATA_IN[11:0],GP_IN[31:0],GP_OUT[31:0],DONE,val_0,val_1,DACA_CODE_OUT[13:0],DACB_CODE_OUT[13:0],CFG_IN[1023:0]" */;
  input ADC_CLK;
  input [11:0]ADC_DATA_IN;
  input [31:0]GP_IN;
  output [31:0]GP_OUT;
  output DONE;
  output val_0;
  output val_1;
  output [13:0]DACA_CODE_OUT;
  output [13:0]DACB_CODE_OUT;
  input [1023:0]CFG_IN;
endmodule
