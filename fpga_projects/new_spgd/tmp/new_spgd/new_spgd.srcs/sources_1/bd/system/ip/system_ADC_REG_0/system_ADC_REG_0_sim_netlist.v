// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Jun  9 10:27:41 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/taylor/Documents/new_spgd/tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_ADC_REG_0/system_ADC_REG_0_sim_netlist.v
// Design      : system_ADC_REG_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_ADC_REG_0,ADC_REG,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ADC_REG,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module system_ADC_REG_0
   (adc_clk_p,
    adc_clk_n,
    data_in,
    a_data_out,
    b_data_out,
    adc_clk);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk_p CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input adc_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk_n CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input adc_clk_n;
  input [11:0]data_in;
  output [11:0]a_data_out;
  output [11:0]b_data_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_ADC_REG_0_adc_clk, INSERT_VIP 0" *) output adc_clk;

  wire [11:0]a_data_out;
  wire adc_clk;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire adc_clk_p;
  wire [11:0]b_data_out;
  wire [11:0]data_in;

  system_ADC_REG_0_ADC_REG inst
       (.a_data_out(a_data_out),
        .adc_clk(adc_clk),
        .adc_clk_n(adc_clk_n),
        .adc_clk_p(adc_clk_p),
        .b_data_out(b_data_out),
        .data_in(data_in));
endmodule

(* ORIG_REF_NAME = "ADC_REG" *) 
module system_ADC_REG_0_ADC_REG
   (adc_clk,
    a_data_out,
    b_data_out,
    adc_clk_p,
    adc_clk_n,
    data_in);
  output adc_clk;
  output [11:0]a_data_out;
  output [11:0]b_data_out;
  input adc_clk_p;
  input adc_clk_n;
  input [11:0]data_in;

  wire [11:0]a_data_out;
  wire adc_clk;
  wire adc_clk_n;
  wire adc_clk_p;
  wire [11:0]b_data_out;
  wire [11:0]data_in;
  wire int_clk0;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG adc_clk_inst
       (.I(int_clk0),
        .O(adc_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* XILINX_LEGACY_PRIM = "IBUFGDS" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_clk_inst0
       (.I(adc_clk_p),
        .IB(adc_clk_n),
        .O(int_clk0));
  FDRE \int_a_data_reg_reg[0] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[0]),
        .Q(a_data_out[0]),
        .R(1'b0));
  FDRE \int_a_data_reg_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[5]),
        .Q(a_data_out[10]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \int_a_data_reg_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[5]),
        .Q(a_data_out[11]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \int_a_data_reg_reg[1] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[0]),
        .Q(a_data_out[1]),
        .R(1'b0));
  FDRE \int_a_data_reg_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[1]),
        .Q(a_data_out[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \int_a_data_reg_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[1]),
        .Q(a_data_out[3]),
        .R(1'b0));
  FDRE \int_a_data_reg_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[2]),
        .Q(a_data_out[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \int_a_data_reg_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[2]),
        .Q(a_data_out[5]),
        .R(1'b0));
  FDRE \int_a_data_reg_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[3]),
        .Q(a_data_out[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \int_a_data_reg_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[3]),
        .Q(a_data_out[7]),
        .R(1'b0));
  FDRE \int_a_data_reg_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[4]),
        .Q(a_data_out[8]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \int_a_data_reg_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[4]),
        .Q(a_data_out[9]),
        .R(1'b0));
  FDRE \int_b_data_reg_reg[0] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[6]),
        .Q(b_data_out[0]),
        .R(1'b0));
  FDRE \int_b_data_reg_reg[10] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[11]),
        .Q(b_data_out[10]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \int_b_data_reg_reg[11] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[11]),
        .Q(b_data_out[11]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \int_b_data_reg_reg[1] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[6]),
        .Q(b_data_out[1]),
        .R(1'b0));
  FDRE \int_b_data_reg_reg[2] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[7]),
        .Q(b_data_out[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \int_b_data_reg_reg[3] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[7]),
        .Q(b_data_out[3]),
        .R(1'b0));
  FDRE \int_b_data_reg_reg[4] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[8]),
        .Q(b_data_out[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \int_b_data_reg_reg[5] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[8]),
        .Q(b_data_out[5]),
        .R(1'b0));
  FDRE \int_b_data_reg_reg[6] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[9]),
        .Q(b_data_out[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \int_b_data_reg_reg[7] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[9]),
        .Q(b_data_out[7]),
        .R(1'b0));
  FDRE \int_b_data_reg_reg[8] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[10]),
        .Q(b_data_out[8]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \int_b_data_reg_reg[9] 
       (.C(adc_clk),
        .CE(1'b1),
        .D(data_in[10]),
        .Q(b_data_out[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
