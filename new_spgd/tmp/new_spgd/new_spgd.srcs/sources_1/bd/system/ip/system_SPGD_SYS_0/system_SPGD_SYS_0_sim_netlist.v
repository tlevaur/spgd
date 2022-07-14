// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Jul  5 14:28:28 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/taylor/Documents/new_spgd/tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_SPGD_SYS_0/system_SPGD_SYS_0_sim_netlist.v
// Design      : system_SPGD_SYS_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_SPGD_SYS_0,SPGD_SYS,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "SPGD_SYS,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module system_SPGD_SYS_0
   (ADC_IN,
    GP_IN,
    ADC_CLK,
    ADC_DONE,
    ADC_EN,
    ADC_SEL,
    REG_RESET,
    DAC_A_OUT,
    DAC_B_OUT,
    GP_OUT,
    LED_O,
    val_0,
    val_1);
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *) input [63:0]ADC_IN;
  input [31:0]GP_IN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ADC_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ADC_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_ADC_REG_0_adc_clk, INSERT_VIP 0" *) input ADC_CLK;
  input ADC_DONE;
  output ADC_EN;
  output ADC_SEL;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 REG_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME REG_RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output REG_RESET;
  output [63:0]DAC_A_OUT;
  output [63:0]DAC_B_OUT;
  output [31:0]GP_OUT;
  output [7:0]LED_O;
  output val_0;
  output val_1;

  wire \<const0> ;
  wire \<const1> ;
  wire ADC_CLK;
  wire ADC_DONE;
  wire ADC_EN;
  wire [63:0]ADC_IN;
  wire [63:0]DAC_A_OUT;
  wire [63:0]DAC_B_OUT;
  wire [31:0]GP_IN;
  wire [31:0]GP_OUT;
  wire [3:0]\^LED_O ;
  wire REG_RESET;

  assign ADC_SEL = GP_IN[30];
  assign LED_O[7] = ADC_DONE;
  assign LED_O[6] = \<const0> ;
  assign LED_O[5] = \<const0> ;
  assign LED_O[4] = \<const0> ;
  assign LED_O[3:0] = \^LED_O [3:0];
  assign val_0 = \<const0> ;
  assign val_1 = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  system_SPGD_SYS_0_SPGD_SYS inst
       (.ADC_CLK(ADC_CLK),
        .ADC_DONE(ADC_DONE),
        .ADC_EN(ADC_EN),
        .ADC_IN(ADC_IN[61:0]),
        .DAC_A_OUT(DAC_A_OUT),
        .DAC_B_OUT(DAC_B_OUT),
        .GP_IN(GP_IN[31]),
        .GP_OUT(GP_OUT[31:16]),
        .LED_O(\^LED_O ),
        .REG_RESET(REG_RESET),
        .\int_data_reg_reg[55] (GP_OUT[15:0]));
endmodule

(* ORIG_REF_NAME = "CLT_RNG" *) 
module system_SPGD_SYS_0_CLT_RNG
   (int_s,
    int_RNG_CLK,
    \rand_reg[22] ,
    \rand_reg[22]_0 ,
    \rand_reg[18] ,
    \rand_reg[23] );
  output [13:0]int_s;
  input int_RNG_CLK;
  input \rand_reg[22] ;
  input \rand_reg[22]_0 ;
  input \rand_reg[18] ;
  input \rand_reg[23] ;

  wire add3_n_0;
  wire int_RNG_CLK;
  wire [13:0]int_s;
  wire [10:0]rand;
  wire \rand_reg[18] ;
  wire \rand_reg[22] ;
  wire \rand_reg[22]_0 ;
  wire \rand_reg[23] ;
  wire reg1_n_0;
  wire reg1_n_1;
  wire reg1_n_15;
  wire reg1_n_16;
  wire reg1_n_17;
  wire reg1_n_18;
  wire reg1_n_19;
  wire reg1_n_2;
  wire reg1_n_20;
  wire reg1_n_21;
  wire reg1_n_22;
  wire reg1_n_23;
  wire reg1_n_3;
  wire reg2_n_0;
  wire reg2_n_1;
  wire reg2_n_10;
  wire reg2_n_11;
  wire reg2_n_2;
  wire reg2_n_3;
  wire reg2_n_4;
  wire reg2_n_5;
  wire reg2_n_6;
  wire reg2_n_7;
  wire reg2_n_8;
  wire reg2_n_9;
  wire reg3_n_0;
  wire reg3_n_1;
  wire reg3_n_10;
  wire reg3_n_11;
  wire reg3_n_12;
  wire reg3_n_13;
  wire reg3_n_14;
  wire reg3_n_15;
  wire reg3_n_16;
  wire reg3_n_17;
  wire reg3_n_18;
  wire reg3_n_19;
  wire reg3_n_2;
  wire reg3_n_20;
  wire reg3_n_21;
  wire reg3_n_22;
  wire reg3_n_23;
  wire reg3_n_24;
  wire reg3_n_3;
  wire reg3_n_4;
  wire reg3_n_5;
  wire reg3_n_6;
  wire reg3_n_7;
  wire reg3_n_8;
  wire reg3_n_9;
  wire reg4_n_0;
  wire reg4_n_1;
  wire reg4_n_10;
  wire reg4_n_11;
  wire reg4_n_2;
  wire reg4_n_3;
  wire reg4_n_4;
  wire reg4_n_5;
  wire reg4_n_6;
  wire reg4_n_7;
  wire reg4_n_8;
  wire reg4_n_9;

  system_SPGD_SYS_0_gen_adder_11 add3
       (.CO(add3_n_0),
        .DI(reg1_n_23),
        .Q(rand),
        .S({reg1_n_15,reg1_n_16,reg1_n_17,reg1_n_18}),
        .int_s(int_s),
        .p0__0({reg1_n_19,reg1_n_20,reg1_n_21,reg1_n_22}),
        .p0__0_0({reg1_n_0,reg1_n_1,reg1_n_2,reg1_n_3}),
        .p0__0_1(reg3_n_4),
        .s0__71_carry__0_i_4_0({reg3_n_20,reg3_n_21,reg3_n_22,reg3_n_23}),
        .s0__71_carry__1_i_4_0({reg3_n_9,reg3_n_10,reg3_n_11,reg3_n_12,reg3_n_13,reg3_n_14,reg3_n_15,reg3_n_16,reg3_n_17,reg3_n_18,reg3_n_19}),
        .s0__71_carry__1_i_4_1(reg3_n_24),
        .s0__71_carry__1_i_4_2({reg3_n_0,reg3_n_1,reg3_n_2,reg3_n_3}),
        .s0__71_carry_i_4_0({reg3_n_5,reg3_n_6,reg3_n_7,reg3_n_8}));
  system_SPGD_SYS_0_LFSR reg1
       (.DI(reg1_n_23),
        .Q(rand),
        .S({reg1_n_15,reg1_n_16,reg1_n_17,reg1_n_18}),
        .int_RNG_CLK(int_RNG_CLK),
        .\rand_reg[11]_0 ({reg1_n_0,reg1_n_1,reg1_n_2,reg1_n_3}),
        .\rand_reg[1]_0 (\rand_reg[22]_0 ),
        .\rand_reg[7]_0 ({reg1_n_19,reg1_n_20,reg1_n_21,reg1_n_22}),
        .s0_carry__1({reg2_n_0,reg2_n_1,reg2_n_2,reg2_n_3,reg2_n_4,reg2_n_5,reg2_n_6,reg2_n_7,reg2_n_8,reg2_n_9,reg2_n_10,reg2_n_11}));
  system_SPGD_SYS_0_LFSR__parameterized0 reg2
       (.Q({reg2_n_0,reg2_n_1,reg2_n_2,reg2_n_3,reg2_n_4,reg2_n_5,reg2_n_6,reg2_n_7,reg2_n_8,reg2_n_9,reg2_n_10,reg2_n_11}),
        .int_RNG_CLK(int_RNG_CLK),
        .\rand_reg[12]_0 (\rand_reg[22]_0 ),
        .\rand_reg[12]_1 (\rand_reg[18] ),
        .\rand_reg[23]_0 (\rand_reg[23] ));
  system_SPGD_SYS_0_LFSR__parameterized1 reg3
       (.CO(add3_n_0),
        .Q({reg4_n_0,reg4_n_1,reg4_n_2,reg4_n_3,reg4_n_4,reg4_n_5,reg4_n_6,reg4_n_7,reg4_n_8,reg4_n_9,reg4_n_10,reg4_n_11}),
        .int_RNG_CLK(int_RNG_CLK),
        .\rand_reg[10]_0 (reg3_n_4),
        .\rand_reg[10]_1 ({reg3_n_9,reg3_n_10,reg3_n_11,reg3_n_12,reg3_n_13,reg3_n_14,reg3_n_15,reg3_n_16,reg3_n_17,reg3_n_18,reg3_n_19}),
        .\rand_reg[11]_0 ({reg3_n_0,reg3_n_1,reg3_n_2,reg3_n_3}),
        .\rand_reg[11]_1 (reg3_n_24),
        .\rand_reg[18]_0 (\rand_reg[18] ),
        .\rand_reg[18]_1 (\rand_reg[22]_0 ),
        .\rand_reg[3]_0 ({reg3_n_5,reg3_n_6,reg3_n_7,reg3_n_8}),
        .\rand_reg[7]_0 ({reg3_n_20,reg3_n_21,reg3_n_22,reg3_n_23}));
  system_SPGD_SYS_0_LFSR__parameterized2 reg4
       (.Q({reg4_n_0,reg4_n_1,reg4_n_2,reg4_n_3,reg4_n_4,reg4_n_5,reg4_n_6,reg4_n_7,reg4_n_8,reg4_n_9,reg4_n_10,reg4_n_11}),
        .int_RNG_CLK(int_RNG_CLK),
        .\rand_reg[22]_0 (\rand_reg[22] ),
        .\rand_reg[22]_1 (\rand_reg[22]_0 ));
endmodule

(* ORIG_REF_NAME = "CLT_RNG" *) 
module system_SPGD_SYS_0_CLT_RNG__parameterized0
   (rand_reg_r_1,
    rand_reg_r_2,
    rand_reg_r_6,
    int_s,
    \rand_reg[26] ,
    int_RNG_CLK);
  output rand_reg_r_1;
  output rand_reg_r_2;
  output rand_reg_r_6;
  output [13:0]int_s;
  input \rand_reg[26] ;
  input int_RNG_CLK;

  wire add3_n_0;
  wire int_RNG_CLK;
  wire [13:0]int_s;
  wire \rand_reg[26] ;
  wire rand_reg_r_1;
  wire rand_reg_r_2;
  wire rand_reg_r_6;
  wire reg1_n_0;
  wire reg1_n_1;
  wire reg1_n_10;
  wire reg1_n_11;
  wire reg1_n_12;
  wire reg1_n_13;
  wire reg1_n_14;
  wire reg1_n_15;
  wire reg1_n_16;
  wire reg1_n_17;
  wire reg1_n_18;
  wire reg1_n_19;
  wire reg1_n_2;
  wire reg1_n_20;
  wire reg1_n_21;
  wire reg1_n_22;
  wire reg1_n_23;
  wire reg1_n_24;
  wire reg1_n_25;
  wire reg1_n_3;
  wire reg1_n_4;
  wire reg1_n_5;
  wire reg1_n_6;
  wire reg1_n_7;
  wire reg1_n_8;
  wire reg1_n_9;
  wire reg2_n_10;
  wire reg2_n_11;
  wire reg2_n_12;
  wire reg2_n_13;
  wire reg2_n_14;
  wire reg2_n_3;
  wire reg2_n_4;
  wire reg2_n_5;
  wire reg2_n_6;
  wire reg2_n_7;
  wire reg2_n_8;
  wire reg2_n_9;
  wire reg3_n_0;
  wire reg3_n_1;
  wire reg3_n_10;
  wire reg3_n_11;
  wire reg3_n_12;
  wire reg3_n_13;
  wire reg3_n_14;
  wire reg3_n_15;
  wire reg3_n_16;
  wire reg3_n_17;
  wire reg3_n_18;
  wire reg3_n_19;
  wire reg3_n_2;
  wire reg3_n_20;
  wire reg3_n_21;
  wire reg3_n_22;
  wire reg3_n_23;
  wire reg3_n_24;
  wire reg3_n_3;
  wire reg3_n_4;
  wire reg3_n_5;
  wire reg3_n_6;
  wire reg3_n_7;
  wire reg3_n_8;
  wire reg3_n_9;
  wire reg4_n_0;
  wire reg4_n_1;
  wire reg4_n_10;
  wire reg4_n_11;
  wire reg4_n_2;
  wire reg4_n_3;
  wire reg4_n_4;
  wire reg4_n_5;
  wire reg4_n_6;
  wire reg4_n_7;
  wire reg4_n_8;
  wire reg4_n_9;

  system_SPGD_SYS_0_gen_adder add3
       (.CO(add3_n_0),
        .DI(reg1_n_25),
        .Q({reg1_n_10,reg1_n_11,reg1_n_12,reg1_n_13,reg1_n_14,reg1_n_15,reg1_n_16,reg1_n_17,reg1_n_18,reg1_n_19,reg1_n_20}),
        .S({reg1_n_6,reg1_n_7,reg1_n_8,reg1_n_9}),
        .int_s(int_s),
        .p0({reg1_n_21,reg1_n_22,reg1_n_23,reg1_n_24}),
        .p0_0({reg1_n_2,reg1_n_3,reg1_n_4,reg1_n_5}),
        .p0_1(reg3_n_4),
        .s0__71_carry__0_i_4__0_0({reg3_n_20,reg3_n_21,reg3_n_22,reg3_n_23}),
        .s0__71_carry__1_i_4__0_0({reg3_n_9,reg3_n_10,reg3_n_11,reg3_n_12,reg3_n_13,reg3_n_14,reg3_n_15,reg3_n_16,reg3_n_17,reg3_n_18,reg3_n_19}),
        .s0__71_carry__1_i_4__0_1(reg3_n_24),
        .s0__71_carry__1_i_4__0_2({reg3_n_0,reg3_n_1,reg3_n_2,reg3_n_3}),
        .s0__71_carry_i_4__0_0({reg3_n_5,reg3_n_6,reg3_n_7,reg3_n_8}));
  system_SPGD_SYS_0_LFSR__parameterized3 reg1
       (.DI(reg1_n_25),
        .Q({reg2_n_3,reg2_n_4,reg2_n_5,reg2_n_6,reg2_n_7,reg2_n_8,reg2_n_9,reg2_n_10,reg2_n_11,reg2_n_12,reg2_n_13,reg2_n_14}),
        .S({reg1_n_6,reg1_n_7,reg1_n_8,reg1_n_9}),
        .int_RNG_CLK(int_RNG_CLK),
        .\rand_reg[10]_0 ({reg1_n_10,reg1_n_11,reg1_n_12,reg1_n_13,reg1_n_14,reg1_n_15,reg1_n_16,reg1_n_17,reg1_n_18,reg1_n_19,reg1_n_20}),
        .\rand_reg[11]_0 ({reg1_n_2,reg1_n_3,reg1_n_4,reg1_n_5}),
        .\rand_reg[12]_0 (\rand_reg[26] ),
        .\rand_reg[7]_0 ({reg1_n_21,reg1_n_22,reg1_n_23,reg1_n_24}),
        .rand_reg_s_14_0(reg1_n_0),
        .rand_reg_s_15_0(reg1_n_1));
  system_SPGD_SYS_0_LFSR__parameterized4 reg2
       (.Q({reg2_n_3,reg2_n_4,reg2_n_5,reg2_n_6,reg2_n_7,reg2_n_8,reg2_n_9,reg2_n_10,reg2_n_11,reg2_n_12,reg2_n_13,reg2_n_14}),
        .int_RNG_CLK(int_RNG_CLK),
        .\rand_reg[16]_0 (\rand_reg[26] ),
        .rand_reg_r_1_0(rand_reg_r_1),
        .rand_reg_r_2_0(rand_reg_r_2),
        .rand_reg_r_6_0(rand_reg_r_6));
  system_SPGD_SYS_0_LFSR__parameterized5 reg3
       (.CO(add3_n_0),
        .Q({reg4_n_0,reg4_n_1,reg4_n_2,reg4_n_3,reg4_n_4,reg4_n_5,reg4_n_6,reg4_n_7,reg4_n_8,reg4_n_9,reg4_n_10,reg4_n_11}),
        .int_RNG_CLK(int_RNG_CLK),
        .\rand_reg[10]_0 (reg3_n_4),
        .\rand_reg[10]_1 ({reg3_n_9,reg3_n_10,reg3_n_11,reg3_n_12,reg3_n_13,reg3_n_14,reg3_n_15,reg3_n_16,reg3_n_17,reg3_n_18,reg3_n_19}),
        .\rand_reg[11]_0 ({reg3_n_0,reg3_n_1,reg3_n_2,reg3_n_3}),
        .\rand_reg[11]_1 (reg3_n_24),
        .\rand_reg[14]_0 (reg1_n_0),
        .\rand_reg[14]_1 (\rand_reg[26] ),
        .\rand_reg[3]_0 ({reg3_n_5,reg3_n_6,reg3_n_7,reg3_n_8}),
        .\rand_reg[7]_0 ({reg3_n_20,reg3_n_21,reg3_n_22,reg3_n_23}));
  system_SPGD_SYS_0_LFSR__parameterized6 reg4
       (.Q({reg4_n_0,reg4_n_1,reg4_n_2,reg4_n_3,reg4_n_4,reg4_n_5,reg4_n_6,reg4_n_7,reg4_n_8,reg4_n_9,reg4_n_10,reg4_n_11}),
        .int_RNG_CLK(int_RNG_CLK),
        .\rand_reg[26]_0 (reg1_n_1),
        .\rand_reg[26]_1 (\rand_reg[26] ));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module system_SPGD_SYS_0_LFSR
   (\rand_reg[11]_0 ,
    Q,
    S,
    \rand_reg[7]_0 ,
    DI,
    s0_carry__1,
    \rand_reg[1]_0 ,
    int_RNG_CLK);
  output [3:0]\rand_reg[11]_0 ;
  output [10:0]Q;
  output [3:0]S;
  output [3:0]\rand_reg[7]_0 ;
  output [0:0]DI;
  input [11:0]s0_carry__1;
  input \rand_reg[1]_0 ;
  input int_RNG_CLK;

  wire [0:0]DI;
  wire [10:0]Q;
  wire [3:0]S;
  wire int_RNG_CLK;
  wire [30:30]p_0_out;
  wire [30:11]rand;
  wire [3:0]\rand_reg[11]_0 ;
  wire \rand_reg[1]_0 ;
  wire [3:0]\rand_reg[7]_0 ;
  wire [11:0]s0_carry__1;

  LUT2 #(
    .INIT(4'h9)) 
    \rand[30]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .O(p_0_out));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[0] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[1]),
        .Q(Q[0]),
        .S(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[10] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[11]),
        .Q(Q[10]),
        .S(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[11] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[12]),
        .Q(rand[11]),
        .S(\rand_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[12] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[13]),
        .Q(rand[12]),
        .R(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[13] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[14]),
        .Q(rand[13]),
        .S(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[14] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[15]),
        .Q(rand[14]),
        .S(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[15] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[16]),
        .Q(rand[15]),
        .S(\rand_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[16] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[17]),
        .Q(rand[16]),
        .R(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[17] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[18]),
        .Q(rand[17]),
        .S(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[18] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[19]),
        .Q(rand[18]),
        .S(\rand_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[19] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[20]),
        .Q(rand[19]),
        .R(\rand_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[1] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[2]),
        .Q(Q[1]),
        .R(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[20] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[21]),
        .Q(rand[20]),
        .S(\rand_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[21] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[22]),
        .Q(rand[21]),
        .R(\rand_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[22] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[23]),
        .Q(rand[22]),
        .R(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[23] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[24]),
        .Q(rand[23]),
        .S(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[24] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[25]),
        .Q(rand[24]),
        .S(\rand_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[25] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[26]),
        .Q(rand[25]),
        .R(\rand_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[26] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[27]),
        .Q(rand[26]),
        .R(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[27] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[28]),
        .Q(rand[27]),
        .S(\rand_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[28] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[29]),
        .Q(rand[28]),
        .R(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[29] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand[30]),
        .Q(rand[29]),
        .S(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[2] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[3]),
        .Q(Q[2]),
        .S(\rand_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[30] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(p_0_out),
        .Q(rand[30]),
        .R(\rand_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[3] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[4]),
        .Q(Q[3]),
        .R(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[4] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[5]),
        .Q(Q[4]),
        .S(\rand_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[5] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[6]),
        .Q(Q[5]),
        .R(\rand_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[6] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[7]),
        .Q(Q[6]),
        .R(\rand_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[7] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[8]),
        .Q(Q[7]),
        .R(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[8] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[9]),
        .Q(Q[8]),
        .S(\rand_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[9] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[10]),
        .Q(Q[9]),
        .S(\rand_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_1
       (.I0(Q[7]),
        .I1(s0_carry__1[7]),
        .O(\rand_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_2
       (.I0(Q[6]),
        .I1(s0_carry__1[6]),
        .O(\rand_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_3
       (.I0(Q[5]),
        .I1(s0_carry__1[5]),
        .O(\rand_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_4
       (.I0(Q[4]),
        .I1(s0_carry__1[4]),
        .O(\rand_reg[7]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    s0_carry__1_i_1
       (.I0(rand[11]),
        .O(DI));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_2__4
       (.I0(rand[11]),
        .I1(s0_carry__1[11]),
        .O(\rand_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_3
       (.I0(Q[10]),
        .I1(s0_carry__1[10]),
        .O(\rand_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_4
       (.I0(Q[9]),
        .I1(s0_carry__1[9]),
        .O(\rand_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_5
       (.I0(Q[8]),
        .I1(s0_carry__1[8]),
        .O(\rand_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_1
       (.I0(Q[3]),
        .I1(s0_carry__1[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_2
       (.I0(Q[2]),
        .I1(s0_carry__1[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_3
       (.I0(Q[1]),
        .I1(s0_carry__1[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_4
       (.I0(Q[0]),
        .I1(s0_carry__1[0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module system_SPGD_SYS_0_LFSR__parameterized0
   (Q,
    int_RNG_CLK,
    \rand_reg[23]_0 ,
    \rand_reg[12]_0 ,
    \rand_reg[12]_1 );
  output [11:0]Q;
  input int_RNG_CLK;
  input \rand_reg[23]_0 ;
  input \rand_reg[12]_0 ;
  input \rand_reg[12]_1 ;

  wire [11:0]Q;
  wire int_RNG_CLK;
  wire \rand[30]_i_1__0_n_0 ;
  wire \rand_reg[12]_0 ;
  wire \rand_reg[12]_1 ;
  wire \rand_reg[13]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_1_n_0 ;
  wire \rand_reg[14]_srl2___inst_PRNG_0_RNG_1_reg2_rand_reg_r_0_n_0 ;
  wire \rand_reg[23]_0 ;
  wire \rand_reg[24]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_2_n_0 ;
  wire \rand_reg[25]_srl3___inst_PRNG_0_RNG_1_reg2_rand_reg_r_1_n_0 ;
  wire rand_reg_gate__0_n_0;
  wire rand_reg_gate_n_0;
  wire \rand_reg_n_0_[12] ;
  wire \rand_reg_n_0_[16] ;
  wire \rand_reg_n_0_[17] ;
  wire \rand_reg_n_0_[18] ;
  wire \rand_reg_n_0_[19] ;
  wire \rand_reg_n_0_[20] ;
  wire \rand_reg_n_0_[21] ;
  wire \rand_reg_n_0_[22] ;
  wire \rand_reg_n_0_[23] ;
  wire \rand_reg_n_0_[28] ;
  wire \rand_reg_n_0_[29] ;
  wire \rand_reg_n_0_[30] ;

  LUT2 #(
    .INIT(4'h9)) 
    \rand[30]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[3]),
        .O(\rand[30]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[0] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[1]),
        .Q(Q[0]),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[10] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[11]),
        .Q(Q[10]),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[11] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[12] ),
        .Q(Q[11]),
        .S(\rand_reg[12]_0 ));
  FDRE \rand_reg[12] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_gate__0_n_0),
        .Q(\rand_reg_n_0_[12] ),
        .R(\rand_reg[12]_0 ));
  FDRE \rand_reg[13]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_1 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[14]_srl2___inst_PRNG_0_RNG_1_reg2_rand_reg_r_0_n_0 ),
        .Q(\rand_reg[13]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_1_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\inst/PRNG_0/RNG_0/reg2/rand_reg " *) 
  (* srl_name = "\inst/PRNG_0/RNG_0/reg2/rand_reg[14]_srl2___inst_PRNG_0_RNG_1_reg2_rand_reg_r_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rand_reg[14]_srl2___inst_PRNG_0_RNG_1_reg2_rand_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(int_RNG_CLK),
        .D(\rand_reg_n_0_[16] ),
        .Q(\rand_reg[14]_srl2___inst_PRNG_0_RNG_1_reg2_rand_reg_r_0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[16] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[17] ),
        .Q(\rand_reg_n_0_[16] ),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[17] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[18] ),
        .Q(\rand_reg_n_0_[17] ),
        .S(\rand_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[18] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[19] ),
        .Q(\rand_reg_n_0_[18] ),
        .R(\rand_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[19] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[20] ),
        .Q(\rand_reg_n_0_[19] ),
        .R(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[1] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[2]),
        .Q(Q[1]),
        .S(\rand_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[20] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[21] ),
        .Q(\rand_reg_n_0_[20] ),
        .R(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[21] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[22] ),
        .Q(\rand_reg_n_0_[21] ),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[22] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[23] ),
        .Q(\rand_reg_n_0_[22] ),
        .S(\rand_reg[12]_0 ));
  FDRE \rand_reg[23] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_gate_n_0),
        .Q(\rand_reg_n_0_[23] ),
        .R(\rand_reg[12]_0 ));
  FDRE \rand_reg[24]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_2 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[25]_srl3___inst_PRNG_0_RNG_1_reg2_rand_reg_r_1_n_0 ),
        .Q(\rand_reg[24]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_2_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\inst/PRNG_0/RNG_0/reg2/rand_reg " *) 
  (* srl_name = "\inst/PRNG_0/RNG_0/reg2/rand_reg[25]_srl3___inst_PRNG_0_RNG_1_reg2_rand_reg_r_1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rand_reg[25]_srl3___inst_PRNG_0_RNG_1_reg2_rand_reg_r_1 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(int_RNG_CLK),
        .D(\rand_reg_n_0_[28] ),
        .Q(\rand_reg[25]_srl3___inst_PRNG_0_RNG_1_reg2_rand_reg_r_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[28] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[29] ),
        .Q(\rand_reg_n_0_[28] ),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[29] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[30] ),
        .Q(\rand_reg_n_0_[29] ),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[2] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[3]),
        .Q(Q[2]),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[30] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand[30]_i_1__0_n_0 ),
        .Q(\rand_reg_n_0_[30] ),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[3] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[4]),
        .Q(Q[3]),
        .S(\rand_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[4] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[5]),
        .Q(Q[4]),
        .R(\rand_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[5] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[6]),
        .Q(Q[5]),
        .R(\rand_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[6] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[7]),
        .Q(Q[6]),
        .R(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[7] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[8]),
        .Q(Q[7]),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[8] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[9]),
        .Q(Q[8]),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[9] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[10]),
        .Q(Q[9]),
        .S(\rand_reg[12]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    rand_reg_gate
       (.I0(\rand_reg[24]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_2_n_0 ),
        .I1(\rand_reg[23]_0 ),
        .O(rand_reg_gate_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rand_reg_gate__0
       (.I0(\rand_reg[13]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_1_n_0 ),
        .I1(\rand_reg[12]_1 ),
        .O(rand_reg_gate__0_n_0));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module system_SPGD_SYS_0_LFSR__parameterized1
   (\rand_reg[11]_0 ,
    \rand_reg[10]_0 ,
    \rand_reg[3]_0 ,
    \rand_reg[10]_1 ,
    \rand_reg[7]_0 ,
    \rand_reg[11]_1 ,
    int_RNG_CLK,
    \rand_reg[18]_0 ,
    \rand_reg[18]_1 ,
    Q,
    CO);
  output [3:0]\rand_reg[11]_0 ;
  output [0:0]\rand_reg[10]_0 ;
  output [3:0]\rand_reg[3]_0 ;
  output [10:0]\rand_reg[10]_1 ;
  output [3:0]\rand_reg[7]_0 ;
  output [0:0]\rand_reg[11]_1 ;
  input int_RNG_CLK;
  input \rand_reg[18]_0 ;
  input \rand_reg[18]_1 ;
  input [11:0]Q;
  input [0:0]CO;

  wire [0:0]CO;
  wire [11:0]Q;
  wire int_RNG_CLK;
  wire \rand[30]_i_1_n_0 ;
  wire [0:0]\rand_reg[10]_0 ;
  wire [10:0]\rand_reg[10]_1 ;
  wire [3:0]\rand_reg[11]_0 ;
  wire [0:0]\rand_reg[11]_1 ;
  wire \rand_reg[18]_0 ;
  wire \rand_reg[18]_1 ;
  wire \rand_reg[19]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_1_n_0 ;
  wire \rand_reg[20]_srl2___inst_PRNG_0_RNG_1_reg2_rand_reg_r_0_n_0 ;
  wire [3:0]\rand_reg[3]_0 ;
  wire [3:0]\rand_reg[7]_0 ;
  wire rand_reg_gate_n_0;
  wire \rand_reg_n_0_[11] ;
  wire \rand_reg_n_0_[12] ;
  wire \rand_reg_n_0_[13] ;
  wire \rand_reg_n_0_[14] ;
  wire \rand_reg_n_0_[15] ;
  wire \rand_reg_n_0_[16] ;
  wire \rand_reg_n_0_[17] ;
  wire \rand_reg_n_0_[18] ;
  wire \rand_reg_n_0_[22] ;
  wire \rand_reg_n_0_[23] ;
  wire \rand_reg_n_0_[24] ;
  wire \rand_reg_n_0_[25] ;
  wire \rand_reg_n_0_[26] ;
  wire \rand_reg_n_0_[27] ;
  wire \rand_reg_n_0_[28] ;
  wire \rand_reg_n_0_[29] ;
  wire \rand_reg_n_0_[30] ;
  wire [3:1]NLW_s0__71_carry__2_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_s0__71_carry__2_i_3_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h9)) 
    \rand[30]_i_1 
       (.I0(\rand_reg[10]_1 [0]),
        .I1(\rand_reg[10]_1 [3]),
        .O(\rand[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[0] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [1]),
        .Q(\rand_reg[10]_1 [0]),
        .R(\rand_reg[18]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[10] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[11] ),
        .Q(\rand_reg[10]_1 [10]),
        .S(\rand_reg[18]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[11] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[12] ),
        .Q(\rand_reg_n_0_[11] ),
        .S(\rand_reg[18]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[12] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[13] ),
        .Q(\rand_reg_n_0_[12] ),
        .R(\rand_reg[18]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[13] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[14] ),
        .Q(\rand_reg_n_0_[13] ),
        .S(\rand_reg[18]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[14] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[15] ),
        .Q(\rand_reg_n_0_[14] ),
        .S(\rand_reg[18]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[15] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[16] ),
        .Q(\rand_reg_n_0_[15] ),
        .S(\rand_reg[18]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[16] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[17] ),
        .Q(\rand_reg_n_0_[16] ),
        .R(\rand_reg[18]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[17] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[18] ),
        .Q(\rand_reg_n_0_[17] ),
        .S(\rand_reg[18]_1 ));
  FDRE \rand_reg[18] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_gate_n_0),
        .Q(\rand_reg_n_0_[18] ),
        .R(\rand_reg[18]_1 ));
  FDRE \rand_reg[19]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_1 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[20]_srl2___inst_PRNG_0_RNG_1_reg2_rand_reg_r_0_n_0 ),
        .Q(\rand_reg[19]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_1_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[1] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [2]),
        .Q(\rand_reg[10]_1 [1]),
        .R(\rand_reg[18]_1 ));
  (* srl_bus_name = "\inst/PRNG_0/RNG_0/reg3/rand_reg " *) 
  (* srl_name = "\inst/PRNG_0/RNG_0/reg3/rand_reg[20]_srl2___inst_PRNG_0_RNG_1_reg2_rand_reg_r_0 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rand_reg[20]_srl2___inst_PRNG_0_RNG_1_reg2_rand_reg_r_0 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(int_RNG_CLK),
        .D(\rand_reg_n_0_[22] ),
        .Q(\rand_reg[20]_srl2___inst_PRNG_0_RNG_1_reg2_rand_reg_r_0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[22] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[23] ),
        .Q(\rand_reg_n_0_[22] ),
        .S(\rand_reg[18]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[23] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[24] ),
        .Q(\rand_reg_n_0_[23] ),
        .S(\rand_reg[18]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[24] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[25] ),
        .Q(\rand_reg_n_0_[24] ),
        .S(\rand_reg[18]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[25] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[26] ),
        .Q(\rand_reg_n_0_[25] ),
        .R(\rand_reg[18]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[26] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[27] ),
        .Q(\rand_reg_n_0_[26] ),
        .R(\rand_reg[18]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[27] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[28] ),
        .Q(\rand_reg_n_0_[27] ),
        .S(\rand_reg[18]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[28] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[29] ),
        .Q(\rand_reg_n_0_[28] ),
        .S(\rand_reg[18]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[29] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[30] ),
        .Q(\rand_reg_n_0_[29] ),
        .R(\rand_reg[18]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[2] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [3]),
        .Q(\rand_reg[10]_1 [2]),
        .R(\rand_reg[18]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[30] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand[30]_i_1_n_0 ),
        .Q(\rand_reg_n_0_[30] ),
        .S(\rand_reg[18]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[3] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [4]),
        .Q(\rand_reg[10]_1 [3]),
        .S(\rand_reg[18]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[4] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [5]),
        .Q(\rand_reg[10]_1 [4]),
        .S(\rand_reg[18]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[5] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [6]),
        .Q(\rand_reg[10]_1 [5]),
        .R(\rand_reg[18]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[6] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [7]),
        .Q(\rand_reg[10]_1 [6]),
        .R(\rand_reg[18]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[7] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [8]),
        .Q(\rand_reg[10]_1 [7]),
        .R(\rand_reg[18]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[8] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [9]),
        .Q(\rand_reg[10]_1 [8]),
        .S(\rand_reg[18]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[9] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [10]),
        .Q(\rand_reg[10]_1 [9]),
        .R(\rand_reg[18]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    rand_reg_gate
       (.I0(\rand_reg[19]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_1_n_0 ),
        .I1(\rand_reg[18]_0 ),
        .O(rand_reg_gate_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__0_i_1
       (.I0(\rand_reg[10]_1 [7]),
        .I1(Q[7]),
        .O(\rand_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__0_i_2
       (.I0(\rand_reg[10]_1 [6]),
        .I1(Q[6]),
        .O(\rand_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__0_i_3
       (.I0(\rand_reg[10]_1 [5]),
        .I1(Q[5]),
        .O(\rand_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__0_i_4
       (.I0(\rand_reg[10]_1 [4]),
        .I1(Q[4]),
        .O(\rand_reg[7]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    s0__35_carry__1_i_1
       (.I0(\rand_reg_n_0_[11] ),
        .O(\rand_reg[11]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__1_i_2
       (.I0(\rand_reg_n_0_[11] ),
        .I1(Q[11]),
        .O(\rand_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__1_i_3
       (.I0(\rand_reg[10]_1 [10]),
        .I1(Q[10]),
        .O(\rand_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__1_i_4
       (.I0(\rand_reg[10]_1 [9]),
        .I1(Q[9]),
        .O(\rand_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__1_i_5
       (.I0(\rand_reg[10]_1 [8]),
        .I1(Q[8]),
        .O(\rand_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry_i_1
       (.I0(\rand_reg[10]_1 [3]),
        .I1(Q[3]),
        .O(\rand_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry_i_2
       (.I0(\rand_reg[10]_1 [2]),
        .I1(Q[2]),
        .O(\rand_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry_i_3
       (.I0(\rand_reg[10]_1 [1]),
        .I1(Q[1]),
        .O(\rand_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry_i_4
       (.I0(\rand_reg[10]_1 [0]),
        .I1(Q[0]),
        .O(\rand_reg[3]_0 [0]));
  CARRY4 s0__71_carry__2_i_3
       (.CI(CO),
        .CO({NLW_s0__71_carry__2_i_3_CO_UNCONNECTED[3:1],\rand_reg[10]_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_s0__71_carry__2_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module system_SPGD_SYS_0_LFSR__parameterized2
   (Q,
    int_RNG_CLK,
    \rand_reg[22]_0 ,
    \rand_reg[22]_1 );
  output [11:0]Q;
  input int_RNG_CLK;
  input \rand_reg[22]_0 ;
  input \rand_reg[22]_1 ;

  wire [11:0]Q;
  wire int_RNG_CLK;
  wire \rand_reg[22]_0 ;
  wire \rand_reg[22]_1 ;
  wire \rand_reg[23]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_6_n_0 ;
  wire \rand_reg[24]_srl7___inst_PRNG_0_RNG_1_reg2_rand_reg_r_5_i_1_n_0 ;
  wire \rand_reg[24]_srl7___inst_PRNG_0_RNG_1_reg2_rand_reg_r_5_n_0 ;
  wire rand_reg_gate_n_0;
  wire \rand_reg_n_0_[12] ;
  wire \rand_reg_n_0_[13] ;
  wire \rand_reg_n_0_[14] ;
  wire \rand_reg_n_0_[15] ;
  wire \rand_reg_n_0_[16] ;
  wire \rand_reg_n_0_[17] ;
  wire \rand_reg_n_0_[18] ;
  wire \rand_reg_n_0_[19] ;
  wire \rand_reg_n_0_[20] ;
  wire \rand_reg_n_0_[21] ;
  wire \rand_reg_n_0_[22] ;

  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[0] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[1]),
        .Q(Q[0]),
        .S(\rand_reg[22]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[10] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[11]),
        .Q(Q[10]),
        .R(\rand_reg[22]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[11] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[12] ),
        .Q(Q[11]),
        .S(\rand_reg[22]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[12] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[13] ),
        .Q(\rand_reg_n_0_[12] ),
        .S(\rand_reg[22]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[13] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[14] ),
        .Q(\rand_reg_n_0_[13] ),
        .R(\rand_reg[22]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[14] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[15] ),
        .Q(\rand_reg_n_0_[14] ),
        .R(\rand_reg[22]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[15] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[16] ),
        .Q(\rand_reg_n_0_[15] ),
        .R(\rand_reg[22]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[16] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[17] ),
        .Q(\rand_reg_n_0_[16] ),
        .S(\rand_reg[22]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[17] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[18] ),
        .Q(\rand_reg_n_0_[17] ),
        .R(\rand_reg[22]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[18] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[19] ),
        .Q(\rand_reg_n_0_[18] ),
        .R(\rand_reg[22]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[19] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[20] ),
        .Q(\rand_reg_n_0_[19] ),
        .S(\rand_reg[22]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[1] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[2]),
        .Q(Q[1]),
        .R(\rand_reg[22]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[20] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[21] ),
        .Q(\rand_reg_n_0_[20] ),
        .R(\rand_reg[22]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[21] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[22] ),
        .Q(\rand_reg_n_0_[21] ),
        .S(\rand_reg[22]_1 ));
  FDRE \rand_reg[22] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_gate_n_0),
        .Q(\rand_reg_n_0_[22] ),
        .R(\rand_reg[22]_1 ));
  FDRE \rand_reg[23]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_6 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[24]_srl7___inst_PRNG_0_RNG_1_reg2_rand_reg_r_5_n_0 ),
        .Q(\rand_reg[23]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_6_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\inst/PRNG_0/RNG_0/reg4/rand_reg " *) 
  (* srl_name = "\inst/PRNG_0/RNG_0/reg4/rand_reg[24]_srl7___inst_PRNG_0_RNG_1_reg2_rand_reg_r_5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rand_reg[24]_srl7___inst_PRNG_0_RNG_1_reg2_rand_reg_r_5 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(int_RNG_CLK),
        .D(\rand_reg[24]_srl7___inst_PRNG_0_RNG_1_reg2_rand_reg_r_5_i_1_n_0 ),
        .Q(\rand_reg[24]_srl7___inst_PRNG_0_RNG_1_reg2_rand_reg_r_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rand_reg[24]_srl7___inst_PRNG_0_RNG_1_reg2_rand_reg_r_5_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .O(\rand_reg[24]_srl7___inst_PRNG_0_RNG_1_reg2_rand_reg_r_5_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[2] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[3]),
        .Q(Q[2]),
        .S(\rand_reg[22]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[3] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[4]),
        .Q(Q[3]),
        .R(\rand_reg[22]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[4] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[5]),
        .Q(Q[4]),
        .R(\rand_reg[22]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[5] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[6]),
        .Q(Q[5]),
        .R(\rand_reg[22]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[6] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[7]),
        .Q(Q[6]),
        .S(\rand_reg[22]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[7] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[8]),
        .Q(Q[7]),
        .R(\rand_reg[22]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[8] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[9]),
        .Q(Q[8]),
        .S(\rand_reg[22]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[9] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[10]),
        .Q(Q[9]),
        .R(\rand_reg[22]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    rand_reg_gate
       (.I0(\rand_reg[23]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_6_n_0 ),
        .I1(\rand_reg[22]_0 ),
        .O(rand_reg_gate_n_0));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module system_SPGD_SYS_0_LFSR__parameterized3
   (rand_reg_s_14_0,
    rand_reg_s_15_0,
    \rand_reg[11]_0 ,
    S,
    \rand_reg[10]_0 ,
    \rand_reg[7]_0 ,
    DI,
    \rand_reg[12]_0 ,
    int_RNG_CLK,
    Q);
  output rand_reg_s_14_0;
  output rand_reg_s_15_0;
  output [3:0]\rand_reg[11]_0 ;
  output [3:0]S;
  output [10:0]\rand_reg[10]_0 ;
  output [3:0]\rand_reg[7]_0 ;
  output [0:0]DI;
  input \rand_reg[12]_0 ;
  input int_RNG_CLK;
  input [11:0]Q;

  wire [0:0]DI;
  wire [11:0]Q;
  wire [3:0]S;
  wire int_RNG_CLK;
  wire \rand[30]_i_1__3_n_0 ;
  wire [10:0]\rand_reg[10]_0 ;
  wire [3:0]\rand_reg[11]_0 ;
  wire \rand_reg[12]_0 ;
  wire \rand_reg[13]_inst_PRNG_0_RNG_1_reg1_rand_reg_s_16_n_0 ;
  wire \rand_reg[14]_srl4____inst_PRNG_0_RNG_1_reg1_rand_reg_s_15_n_0 ;
  wire [3:0]\rand_reg[7]_0 ;
  wire rand_reg_gate_n_0;
  wire \rand_reg_n_0_[11] ;
  wire \rand_reg_n_0_[12] ;
  wire \rand_reg_n_0_[18] ;
  wire \rand_reg_n_0_[19] ;
  wire \rand_reg_n_0_[20] ;
  wire \rand_reg_n_0_[21] ;
  wire \rand_reg_n_0_[22] ;
  wire \rand_reg_n_0_[23] ;
  wire \rand_reg_n_0_[24] ;
  wire \rand_reg_n_0_[25] ;
  wire \rand_reg_n_0_[26] ;
  wire \rand_reg_n_0_[27] ;
  wire \rand_reg_n_0_[28] ;
  wire \rand_reg_n_0_[29] ;
  wire \rand_reg_n_0_[30] ;
  wire rand_reg_s_13_n_0;
  wire rand_reg_s_14_0;
  wire rand_reg_s_15_0;
  wire rand_reg_s_16_n_0;
  wire rand_reg_s_n_0;

  LUT2 #(
    .INIT(4'h9)) 
    \rand[30]_i_1__3 
       (.I0(\rand_reg[10]_0 [0]),
        .I1(\rand_reg[10]_0 [3]),
        .O(\rand[30]_i_1__3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[0] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_0 [1]),
        .Q(\rand_reg[10]_0 [0]),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[10] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[11] ),
        .Q(\rand_reg[10]_0 [10]),
        .S(\rand_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[11] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[12] ),
        .Q(\rand_reg_n_0_[11] ),
        .R(\rand_reg[12]_0 ));
  FDSE \rand_reg[12] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_gate_n_0),
        .Q(\rand_reg_n_0_[12] ),
        .S(\rand_reg[12]_0 ));
  FDRE \rand_reg[13]_inst_PRNG_0_RNG_1_reg1_rand_reg_s_16 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[14]_srl4____inst_PRNG_0_RNG_1_reg1_rand_reg_s_15_n_0 ),
        .Q(\rand_reg[13]_inst_PRNG_0_RNG_1_reg1_rand_reg_s_16_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\inst/PRNG_0/RNG_1/reg1/rand_reg " *) 
  (* srl_name = "\inst/PRNG_0/RNG_1/reg1/rand_reg[14]_srl4____inst_PRNG_0_RNG_1_reg1_rand_reg_s_15 " *) 
  SRL16E #(
    .INIT(16'h000F)) 
    \rand_reg[14]_srl4____inst_PRNG_0_RNG_1_reg1_rand_reg_s_15 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(int_RNG_CLK),
        .D(\rand_reg_n_0_[18] ),
        .Q(\rand_reg[14]_srl4____inst_PRNG_0_RNG_1_reg1_rand_reg_s_15_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[18] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[19] ),
        .Q(\rand_reg_n_0_[18] ),
        .R(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[19] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[20] ),
        .Q(\rand_reg_n_0_[19] ),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[1] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_0 [2]),
        .Q(\rand_reg[10]_0 [1]),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[20] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[21] ),
        .Q(\rand_reg_n_0_[20] ),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[21] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[22] ),
        .Q(\rand_reg_n_0_[21] ),
        .S(\rand_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[22] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[23] ),
        .Q(\rand_reg_n_0_[22] ),
        .R(\rand_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[23] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[24] ),
        .Q(\rand_reg_n_0_[23] ),
        .R(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[24] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[25] ),
        .Q(\rand_reg_n_0_[24] ),
        .S(\rand_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[25] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[26] ),
        .Q(\rand_reg_n_0_[25] ),
        .R(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[26] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[27] ),
        .Q(\rand_reg_n_0_[26] ),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[27] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[28] ),
        .Q(\rand_reg_n_0_[27] ),
        .S(\rand_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[28] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[29] ),
        .Q(\rand_reg_n_0_[28] ),
        .R(\rand_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[29] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[30] ),
        .Q(\rand_reg_n_0_[29] ),
        .R(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[2] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_0 [3]),
        .Q(\rand_reg[10]_0 [2]),
        .S(\rand_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[30] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand[30]_i_1__3_n_0 ),
        .Q(\rand_reg_n_0_[30] ),
        .R(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[3] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_0 [4]),
        .Q(\rand_reg[10]_0 [3]),
        .S(\rand_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[4] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_0 [5]),
        .Q(\rand_reg[10]_0 [4]),
        .R(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[5] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_0 [6]),
        .Q(\rand_reg[10]_0 [5]),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[6] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_0 [7]),
        .Q(\rand_reg[10]_0 [6]),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[7] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_0 [8]),
        .Q(\rand_reg[10]_0 [7]),
        .S(\rand_reg[12]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[8] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_0 [9]),
        .Q(\rand_reg[10]_0 [8]),
        .S(\rand_reg[12]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[9] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_0 [10]),
        .Q(\rand_reg[10]_0 [9]),
        .R(\rand_reg[12]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    rand_reg_gate
       (.I0(\rand_reg[13]_inst_PRNG_0_RNG_1_reg1_rand_reg_s_16_n_0 ),
        .I1(rand_reg_s_16_n_0),
        .O(rand_reg_gate_n_0));
  FDSE rand_reg_s
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(rand_reg_s_n_0),
        .S(\rand_reg[12]_0 ));
  FDSE rand_reg_s_13
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_s_n_0),
        .Q(rand_reg_s_13_n_0),
        .S(\rand_reg[12]_0 ));
  FDSE rand_reg_s_14
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_s_13_n_0),
        .Q(rand_reg_s_14_0),
        .S(\rand_reg[12]_0 ));
  FDSE rand_reg_s_15
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_s_14_0),
        .Q(rand_reg_s_15_0),
        .S(\rand_reg[12]_0 ));
  FDSE rand_reg_s_16
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_s_15_0),
        .Q(rand_reg_s_16_n_0),
        .S(\rand_reg[12]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_1__0
       (.I0(\rand_reg[10]_0 [7]),
        .I1(Q[7]),
        .O(\rand_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_2__0
       (.I0(\rand_reg[10]_0 [6]),
        .I1(Q[6]),
        .O(\rand_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_3__0
       (.I0(\rand_reg[10]_0 [5]),
        .I1(Q[5]),
        .O(\rand_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_4__0
       (.I0(\rand_reg[10]_0 [4]),
        .I1(Q[4]),
        .O(\rand_reg[7]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    s0_carry__1_i_1__0
       (.I0(\rand_reg_n_0_[11] ),
        .O(DI));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_2__5
       (.I0(\rand_reg_n_0_[11] ),
        .I1(Q[11]),
        .O(\rand_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_3__0
       (.I0(\rand_reg[10]_0 [10]),
        .I1(Q[10]),
        .O(\rand_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_4__0
       (.I0(\rand_reg[10]_0 [9]),
        .I1(Q[9]),
        .O(\rand_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_5__0
       (.I0(\rand_reg[10]_0 [8]),
        .I1(Q[8]),
        .O(\rand_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_1__0
       (.I0(\rand_reg[10]_0 [3]),
        .I1(Q[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_2__0
       (.I0(\rand_reg[10]_0 [2]),
        .I1(Q[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_3__0
       (.I0(\rand_reg[10]_0 [1]),
        .I1(Q[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_4__0
       (.I0(\rand_reg[10]_0 [0]),
        .I1(Q[0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module system_SPGD_SYS_0_LFSR__parameterized4
   (rand_reg_r_1_0,
    rand_reg_r_2_0,
    rand_reg_r_6_0,
    Q,
    \rand_reg[16]_0 ,
    int_RNG_CLK);
  output rand_reg_r_1_0;
  output rand_reg_r_2_0;
  output rand_reg_r_6_0;
  output [11:0]Q;
  input \rand_reg[16]_0 ;
  input int_RNG_CLK;

  wire [11:0]Q;
  wire int_RNG_CLK;
  wire \rand_reg[16]_0 ;
  wire \rand_reg[17]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_12_n_0 ;
  wire \rand_reg[18]_srl13___inst_PRNG_0_RNG_1_reg2_rand_reg_r_11_i_1_n_0 ;
  wire \rand_reg[18]_srl13___inst_PRNG_0_RNG_1_reg2_rand_reg_r_11_n_0 ;
  wire rand_reg_gate_n_0;
  wire \rand_reg_n_0_[12] ;
  wire \rand_reg_n_0_[13] ;
  wire \rand_reg_n_0_[14] ;
  wire \rand_reg_n_0_[15] ;
  wire \rand_reg_n_0_[16] ;
  wire rand_reg_r_0_n_0;
  wire rand_reg_r_10_n_0;
  wire rand_reg_r_11_n_0;
  wire rand_reg_r_12_n_0;
  wire rand_reg_r_1_0;
  wire rand_reg_r_2_0;
  wire rand_reg_r_3_n_0;
  wire rand_reg_r_4_n_0;
  wire rand_reg_r_5_n_0;
  wire rand_reg_r_6_0;
  wire rand_reg_r_7_n_0;
  wire rand_reg_r_8_n_0;
  wire rand_reg_r_9_n_0;
  wire rand_reg_r_n_0;

  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[0] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[1]),
        .Q(Q[0]),
        .S(\rand_reg[16]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[10] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[11]),
        .Q(Q[10]),
        .S(\rand_reg[16]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[11] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[12] ),
        .Q(Q[11]),
        .R(\rand_reg[16]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[12] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[13] ),
        .Q(\rand_reg_n_0_[12] ),
        .R(\rand_reg[16]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[13] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[14] ),
        .Q(\rand_reg_n_0_[13] ),
        .R(\rand_reg[16]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[14] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[15] ),
        .Q(\rand_reg_n_0_[14] ),
        .S(\rand_reg[16]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[15] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[16] ),
        .Q(\rand_reg_n_0_[15] ),
        .S(\rand_reg[16]_0 ));
  FDRE \rand_reg[16] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_gate_n_0),
        .Q(\rand_reg_n_0_[16] ),
        .R(\rand_reg[16]_0 ));
  FDRE \rand_reg[17]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_12 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[18]_srl13___inst_PRNG_0_RNG_1_reg2_rand_reg_r_11_n_0 ),
        .Q(\rand_reg[17]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_12_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\inst/PRNG_0/RNG_1/reg2/rand_reg " *) 
  (* srl_name = "\inst/PRNG_0/RNG_1/reg2/rand_reg[18]_srl13___inst_PRNG_0_RNG_1_reg2_rand_reg_r_11 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rand_reg[18]_srl13___inst_PRNG_0_RNG_1_reg2_rand_reg_r_11 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(int_RNG_CLK),
        .D(\rand_reg[18]_srl13___inst_PRNG_0_RNG_1_reg2_rand_reg_r_11_i_1_n_0 ),
        .Q(\rand_reg[18]_srl13___inst_PRNG_0_RNG_1_reg2_rand_reg_r_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rand_reg[18]_srl13___inst_PRNG_0_RNG_1_reg2_rand_reg_r_11_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .O(\rand_reg[18]_srl13___inst_PRNG_0_RNG_1_reg2_rand_reg_r_11_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[1] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[2]),
        .Q(Q[1]),
        .S(\rand_reg[16]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[2] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[3]),
        .Q(Q[2]),
        .S(\rand_reg[16]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[3] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[4]),
        .Q(Q[3]),
        .S(\rand_reg[16]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[4] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[5]),
        .Q(Q[4]),
        .S(\rand_reg[16]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[5] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[6]),
        .Q(Q[5]),
        .S(\rand_reg[16]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[6] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[7]),
        .Q(Q[6]),
        .R(\rand_reg[16]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[7] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[8]),
        .Q(Q[7]),
        .R(\rand_reg[16]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[8] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[9]),
        .Q(Q[8]),
        .R(\rand_reg[16]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[9] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[10]),
        .Q(Q[9]),
        .R(\rand_reg[16]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    rand_reg_gate
       (.I0(\rand_reg[17]_inst_PRNG_0_RNG_1_reg2_rand_reg_r_12_n_0 ),
        .I1(rand_reg_r_12_n_0),
        .O(rand_reg_gate_n_0));
  FDRE rand_reg_r
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(1'b1),
        .Q(rand_reg_r_n_0),
        .R(\rand_reg[16]_0 ));
  FDRE rand_reg_r_0
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_r_n_0),
        .Q(rand_reg_r_0_n_0),
        .R(\rand_reg[16]_0 ));
  FDRE rand_reg_r_1
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_r_0_n_0),
        .Q(rand_reg_r_1_0),
        .R(\rand_reg[16]_0 ));
  FDRE rand_reg_r_10
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_r_9_n_0),
        .Q(rand_reg_r_10_n_0),
        .R(\rand_reg[16]_0 ));
  FDRE rand_reg_r_11
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_r_10_n_0),
        .Q(rand_reg_r_11_n_0),
        .R(\rand_reg[16]_0 ));
  FDRE rand_reg_r_12
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_r_11_n_0),
        .Q(rand_reg_r_12_n_0),
        .R(\rand_reg[16]_0 ));
  FDRE rand_reg_r_2
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_r_1_0),
        .Q(rand_reg_r_2_0),
        .R(\rand_reg[16]_0 ));
  FDRE rand_reg_r_3
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_r_2_0),
        .Q(rand_reg_r_3_n_0),
        .R(\rand_reg[16]_0 ));
  FDRE rand_reg_r_4
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_r_3_n_0),
        .Q(rand_reg_r_4_n_0),
        .R(\rand_reg[16]_0 ));
  FDRE rand_reg_r_5
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_r_4_n_0),
        .Q(rand_reg_r_5_n_0),
        .R(\rand_reg[16]_0 ));
  FDRE rand_reg_r_6
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_r_5_n_0),
        .Q(rand_reg_r_6_0),
        .R(\rand_reg[16]_0 ));
  FDRE rand_reg_r_7
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_r_6_0),
        .Q(rand_reg_r_7_n_0),
        .R(\rand_reg[16]_0 ));
  FDRE rand_reg_r_8
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_r_7_n_0),
        .Q(rand_reg_r_8_n_0),
        .R(\rand_reg[16]_0 ));
  FDRE rand_reg_r_9
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_r_8_n_0),
        .Q(rand_reg_r_9_n_0),
        .R(\rand_reg[16]_0 ));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module system_SPGD_SYS_0_LFSR__parameterized5
   (\rand_reg[11]_0 ,
    \rand_reg[10]_0 ,
    \rand_reg[3]_0 ,
    \rand_reg[10]_1 ,
    \rand_reg[7]_0 ,
    \rand_reg[11]_1 ,
    int_RNG_CLK,
    \rand_reg[14]_0 ,
    \rand_reg[14]_1 ,
    Q,
    CO);
  output [3:0]\rand_reg[11]_0 ;
  output [0:0]\rand_reg[10]_0 ;
  output [3:0]\rand_reg[3]_0 ;
  output [10:0]\rand_reg[10]_1 ;
  output [3:0]\rand_reg[7]_0 ;
  output [0:0]\rand_reg[11]_1 ;
  input int_RNG_CLK;
  input \rand_reg[14]_0 ;
  input \rand_reg[14]_1 ;
  input [11:0]Q;
  input [0:0]CO;

  wire [0:0]CO;
  wire [11:0]Q;
  wire int_RNG_CLK;
  wire \rand[30]_i_1__2_n_0 ;
  wire [0:0]\rand_reg[10]_0 ;
  wire [10:0]\rand_reg[10]_1 ;
  wire [3:0]\rand_reg[11]_0 ;
  wire [0:0]\rand_reg[11]_1 ;
  wire \rand_reg[14]_0 ;
  wire \rand_reg[14]_1 ;
  wire \rand_reg[15]_inst_PRNG_0_RNG_1_reg1_rand_reg_s_14_n_0 ;
  wire \rand_reg[16]_srl2____inst_PRNG_0_RNG_1_reg1_rand_reg_s_13_n_0 ;
  wire [3:0]\rand_reg[3]_0 ;
  wire [3:0]\rand_reg[7]_0 ;
  wire rand_reg_gate_n_0;
  wire \rand_reg_n_0_[11] ;
  wire \rand_reg_n_0_[12] ;
  wire \rand_reg_n_0_[13] ;
  wire \rand_reg_n_0_[14] ;
  wire \rand_reg_n_0_[18] ;
  wire \rand_reg_n_0_[19] ;
  wire \rand_reg_n_0_[20] ;
  wire \rand_reg_n_0_[21] ;
  wire \rand_reg_n_0_[22] ;
  wire \rand_reg_n_0_[23] ;
  wire \rand_reg_n_0_[24] ;
  wire \rand_reg_n_0_[25] ;
  wire \rand_reg_n_0_[26] ;
  wire \rand_reg_n_0_[27] ;
  wire \rand_reg_n_0_[28] ;
  wire \rand_reg_n_0_[29] ;
  wire \rand_reg_n_0_[30] ;
  wire [3:1]NLW_s0__71_carry__2_i_3__0_CO_UNCONNECTED;
  wire [3:0]NLW_s0__71_carry__2_i_3__0_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h9)) 
    \rand[30]_i_1__2 
       (.I0(\rand_reg[10]_1 [0]),
        .I1(\rand_reg[10]_1 [3]),
        .O(\rand[30]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[0] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [1]),
        .Q(\rand_reg[10]_1 [0]),
        .R(\rand_reg[14]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[10] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[11] ),
        .Q(\rand_reg[10]_1 [10]),
        .S(\rand_reg[14]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[11] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[12] ),
        .Q(\rand_reg_n_0_[11] ),
        .S(\rand_reg[14]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[12] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[13] ),
        .Q(\rand_reg_n_0_[12] ),
        .S(\rand_reg[14]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[13] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[14] ),
        .Q(\rand_reg_n_0_[13] ),
        .R(\rand_reg[14]_1 ));
  FDSE \rand_reg[14] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_gate_n_0),
        .Q(\rand_reg_n_0_[14] ),
        .S(\rand_reg[14]_1 ));
  FDRE \rand_reg[15]_inst_PRNG_0_RNG_1_reg1_rand_reg_s_14 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[16]_srl2____inst_PRNG_0_RNG_1_reg1_rand_reg_s_13_n_0 ),
        .Q(\rand_reg[15]_inst_PRNG_0_RNG_1_reg1_rand_reg_s_14_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\inst/PRNG_0/RNG_1/reg3/rand_reg " *) 
  (* srl_name = "\inst/PRNG_0/RNG_1/reg3/rand_reg[16]_srl2____inst_PRNG_0_RNG_1_reg1_rand_reg_s_13 " *) 
  SRL16E #(
    .INIT(16'h0003)) 
    \rand_reg[16]_srl2____inst_PRNG_0_RNG_1_reg1_rand_reg_s_13 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(int_RNG_CLK),
        .D(\rand_reg_n_0_[18] ),
        .Q(\rand_reg[16]_srl2____inst_PRNG_0_RNG_1_reg1_rand_reg_s_13_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[18] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[19] ),
        .Q(\rand_reg_n_0_[18] ),
        .R(\rand_reg[14]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[19] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[20] ),
        .Q(\rand_reg_n_0_[19] ),
        .S(\rand_reg[14]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[1] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [2]),
        .Q(\rand_reg[10]_1 [1]),
        .R(\rand_reg[14]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[20] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[21] ),
        .Q(\rand_reg_n_0_[20] ),
        .S(\rand_reg[14]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[21] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[22] ),
        .Q(\rand_reg_n_0_[21] ),
        .R(\rand_reg[14]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[22] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[23] ),
        .Q(\rand_reg_n_0_[22] ),
        .S(\rand_reg[14]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[23] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[24] ),
        .Q(\rand_reg_n_0_[23] ),
        .S(\rand_reg[14]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[24] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[25] ),
        .Q(\rand_reg_n_0_[24] ),
        .R(\rand_reg[14]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[25] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[26] ),
        .Q(\rand_reg_n_0_[25] ),
        .S(\rand_reg[14]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[26] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[27] ),
        .Q(\rand_reg_n_0_[26] ),
        .S(\rand_reg[14]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[27] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[28] ),
        .Q(\rand_reg_n_0_[27] ),
        .S(\rand_reg[14]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[28] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[29] ),
        .Q(\rand_reg_n_0_[28] ),
        .R(\rand_reg[14]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[29] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[30] ),
        .Q(\rand_reg_n_0_[29] ),
        .R(\rand_reg[14]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[2] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [3]),
        .Q(\rand_reg[10]_1 [2]),
        .R(\rand_reg[14]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[30] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand[30]_i_1__2_n_0 ),
        .Q(\rand_reg_n_0_[30] ),
        .S(\rand_reg[14]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[3] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [4]),
        .Q(\rand_reg[10]_1 [3]),
        .R(\rand_reg[14]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[4] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [5]),
        .Q(\rand_reg[10]_1 [4]),
        .R(\rand_reg[14]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[5] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [6]),
        .Q(\rand_reg[10]_1 [5]),
        .S(\rand_reg[14]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[6] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [7]),
        .Q(\rand_reg[10]_1 [6]),
        .S(\rand_reg[14]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[7] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [8]),
        .Q(\rand_reg[10]_1 [7]),
        .R(\rand_reg[14]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[8] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [9]),
        .Q(\rand_reg[10]_1 [8]),
        .S(\rand_reg[14]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[9] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[10]_1 [10]),
        .Q(\rand_reg[10]_1 [9]),
        .R(\rand_reg[14]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    rand_reg_gate
       (.I0(\rand_reg[15]_inst_PRNG_0_RNG_1_reg1_rand_reg_s_14_n_0 ),
        .I1(\rand_reg[14]_0 ),
        .O(rand_reg_gate_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__0_i_1__0
       (.I0(\rand_reg[10]_1 [7]),
        .I1(Q[7]),
        .O(\rand_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__0_i_2__0
       (.I0(\rand_reg[10]_1 [6]),
        .I1(Q[6]),
        .O(\rand_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__0_i_3__0
       (.I0(\rand_reg[10]_1 [5]),
        .I1(Q[5]),
        .O(\rand_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__0_i_4__0
       (.I0(\rand_reg[10]_1 [4]),
        .I1(Q[4]),
        .O(\rand_reg[7]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    s0__35_carry__1_i_1__0
       (.I0(\rand_reg_n_0_[11] ),
        .O(\rand_reg[11]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__1_i_2__0
       (.I0(\rand_reg_n_0_[11] ),
        .I1(Q[11]),
        .O(\rand_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__1_i_3__0
       (.I0(\rand_reg[10]_1 [10]),
        .I1(Q[10]),
        .O(\rand_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__1_i_4__0
       (.I0(\rand_reg[10]_1 [9]),
        .I1(Q[9]),
        .O(\rand_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry__1_i_5__0
       (.I0(\rand_reg[10]_1 [8]),
        .I1(Q[8]),
        .O(\rand_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry_i_1__0
       (.I0(\rand_reg[10]_1 [3]),
        .I1(Q[3]),
        .O(\rand_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry_i_2__0
       (.I0(\rand_reg[10]_1 [2]),
        .I1(Q[2]),
        .O(\rand_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry_i_3__0
       (.I0(\rand_reg[10]_1 [1]),
        .I1(Q[1]),
        .O(\rand_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0__35_carry_i_4__0
       (.I0(\rand_reg[10]_1 [0]),
        .I1(Q[0]),
        .O(\rand_reg[3]_0 [0]));
  CARRY4 s0__71_carry__2_i_3__0
       (.CI(CO),
        .CO({NLW_s0__71_carry__2_i_3__0_CO_UNCONNECTED[3:1],\rand_reg[10]_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_s0__71_carry__2_i_3__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "LFSR" *) 
module system_SPGD_SYS_0_LFSR__parameterized6
   (Q,
    int_RNG_CLK,
    \rand_reg[26]_0 ,
    \rand_reg[26]_1 );
  output [11:0]Q;
  input int_RNG_CLK;
  input \rand_reg[26]_0 ;
  input \rand_reg[26]_1 ;

  wire [11:0]Q;
  wire int_RNG_CLK;
  wire \rand_reg[26]_0 ;
  wire \rand_reg[26]_1 ;
  wire \rand_reg[27]_inst_PRNG_0_RNG_1_reg1_rand_reg_s_15_n_0 ;
  wire \rand_reg[28]_srl3____inst_PRNG_0_RNG_1_reg1_rand_reg_s_14_i_1_n_0 ;
  wire \rand_reg[28]_srl3____inst_PRNG_0_RNG_1_reg1_rand_reg_s_14_n_0 ;
  wire rand_reg_gate_n_0;
  wire \rand_reg_n_0_[12] ;
  wire \rand_reg_n_0_[13] ;
  wire \rand_reg_n_0_[14] ;
  wire \rand_reg_n_0_[15] ;
  wire \rand_reg_n_0_[16] ;
  wire \rand_reg_n_0_[17] ;
  wire \rand_reg_n_0_[18] ;
  wire \rand_reg_n_0_[19] ;
  wire \rand_reg_n_0_[20] ;
  wire \rand_reg_n_0_[21] ;
  wire \rand_reg_n_0_[22] ;
  wire \rand_reg_n_0_[23] ;
  wire \rand_reg_n_0_[24] ;
  wire \rand_reg_n_0_[25] ;
  wire \rand_reg_n_0_[26] ;

  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[0] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[1]),
        .Q(Q[0]),
        .S(\rand_reg[26]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[10] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[11]),
        .Q(Q[10]),
        .R(\rand_reg[26]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[11] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[12] ),
        .Q(Q[11]),
        .S(\rand_reg[26]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[12] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[13] ),
        .Q(\rand_reg_n_0_[12] ),
        .R(\rand_reg[26]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[13] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[14] ),
        .Q(\rand_reg_n_0_[13] ),
        .S(\rand_reg[26]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[14] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[15] ),
        .Q(\rand_reg_n_0_[14] ),
        .R(\rand_reg[26]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[15] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[16] ),
        .Q(\rand_reg_n_0_[15] ),
        .R(\rand_reg[26]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[16] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[17] ),
        .Q(\rand_reg_n_0_[16] ),
        .S(\rand_reg[26]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[17] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[18] ),
        .Q(\rand_reg_n_0_[17] ),
        .R(\rand_reg[26]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[18] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[19] ),
        .Q(\rand_reg_n_0_[18] ),
        .S(\rand_reg[26]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[19] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[20] ),
        .Q(\rand_reg_n_0_[19] ),
        .R(\rand_reg[26]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[1] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[2]),
        .Q(Q[1]),
        .R(\rand_reg[26]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[20] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[21] ),
        .Q(\rand_reg_n_0_[20] ),
        .S(\rand_reg[26]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[21] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[22] ),
        .Q(\rand_reg_n_0_[21] ),
        .R(\rand_reg[26]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[22] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[23] ),
        .Q(\rand_reg_n_0_[22] ),
        .S(\rand_reg[26]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[23] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[24] ),
        .Q(\rand_reg_n_0_[23] ),
        .S(\rand_reg[26]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[24] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[25] ),
        .Q(\rand_reg_n_0_[24] ),
        .S(\rand_reg[26]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[25] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg_n_0_[26] ),
        .Q(\rand_reg_n_0_[25] ),
        .R(\rand_reg[26]_1 ));
  FDSE \rand_reg[26] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(rand_reg_gate_n_0),
        .Q(\rand_reg_n_0_[26] ),
        .S(\rand_reg[26]_1 ));
  FDRE \rand_reg[27]_inst_PRNG_0_RNG_1_reg1_rand_reg_s_15 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(\rand_reg[28]_srl3____inst_PRNG_0_RNG_1_reg1_rand_reg_s_14_n_0 ),
        .Q(\rand_reg[27]_inst_PRNG_0_RNG_1_reg1_rand_reg_s_15_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\inst/PRNG_0/RNG_1/reg4/rand_reg " *) 
  (* srl_name = "\inst/PRNG_0/RNG_1/reg4/rand_reg[28]_srl3____inst_PRNG_0_RNG_1_reg1_rand_reg_s_14 " *) 
  SRL16E #(
    .INIT(16'h0007)) 
    \rand_reg[28]_srl3____inst_PRNG_0_RNG_1_reg1_rand_reg_s_14 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(int_RNG_CLK),
        .D(\rand_reg[28]_srl3____inst_PRNG_0_RNG_1_reg1_rand_reg_s_14_i_1_n_0 ),
        .Q(\rand_reg[28]_srl3____inst_PRNG_0_RNG_1_reg1_rand_reg_s_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \rand_reg[28]_srl3____inst_PRNG_0_RNG_1_reg1_rand_reg_s_14_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .O(\rand_reg[28]_srl3____inst_PRNG_0_RNG_1_reg1_rand_reg_s_14_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[2] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[3]),
        .Q(Q[2]),
        .R(\rand_reg[26]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[3] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[4]),
        .Q(Q[3]),
        .S(\rand_reg[26]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[4] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[5]),
        .Q(Q[4]),
        .R(\rand_reg[26]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[5] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[6]),
        .Q(Q[5]),
        .S(\rand_reg[26]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \rand_reg[6] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[7]),
        .Q(Q[6]),
        .R(\rand_reg[26]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[7] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[8]),
        .Q(Q[7]),
        .S(\rand_reg[26]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[8] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[9]),
        .Q(Q[8]),
        .S(\rand_reg[26]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \rand_reg[9] 
       (.C(int_RNG_CLK),
        .CE(1'b1),
        .D(Q[10]),
        .Q(Q[9]),
        .S(\rand_reg[26]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    rand_reg_gate
       (.I0(\rand_reg[27]_inst_PRNG_0_RNG_1_reg1_rand_reg_s_15_n_0 ),
        .I1(\rand_reg[26]_0 ),
        .O(rand_reg_gate_n_0));
endmodule

(* ORIG_REF_NAME = "PRNG" *) 
module system_SPGD_SYS_0_PRNG
   (p0,
    p0_0,
    \rand_reg[26] ,
    int_RNG_CLK);
  output [46:0]p0;
  output [46:0]p0_0;
  input \rand_reg[26] ;
  input int_RNG_CLK;

  wire RNG_0_n_1;
  wire RNG_0_n_10;
  wire RNG_0_n_11;
  wire RNG_0_n_12;
  wire RNG_0_n_13;
  wire RNG_0_n_2;
  wire RNG_0_n_3;
  wire RNG_0_n_4;
  wire RNG_0_n_5;
  wire RNG_0_n_6;
  wire RNG_0_n_7;
  wire RNG_0_n_8;
  wire RNG_0_n_9;
  wire RNG_1_n_0;
  wire RNG_1_n_1;
  wire RNG_1_n_10;
  wire RNG_1_n_11;
  wire RNG_1_n_12;
  wire RNG_1_n_13;
  wire RNG_1_n_14;
  wire RNG_1_n_15;
  wire RNG_1_n_16;
  wire RNG_1_n_2;
  wire RNG_1_n_3;
  wire RNG_1_n_4;
  wire RNG_1_n_5;
  wire RNG_1_n_6;
  wire RNG_1_n_7;
  wire RNG_1_n_8;
  wire RNG_1_n_9;
  wire a0;
  wire int_RNG_CLK;
  wire [46:0]p0;
  wire [46:0]p0_0;
  wire \rand_reg[26] ;

  system_SPGD_SYS_0_CLT_RNG RNG_0
       (.int_RNG_CLK(int_RNG_CLK),
        .int_s({a0,RNG_0_n_1,RNG_0_n_2,RNG_0_n_3,RNG_0_n_4,RNG_0_n_5,RNG_0_n_6,RNG_0_n_7,RNG_0_n_8,RNG_0_n_9,RNG_0_n_10,RNG_0_n_11,RNG_0_n_12,RNG_0_n_13}),
        .\rand_reg[18] (RNG_1_n_0),
        .\rand_reg[22] (RNG_1_n_2),
        .\rand_reg[22]_0 (\rand_reg[26] ),
        .\rand_reg[23] (RNG_1_n_1));
  system_SPGD_SYS_0_gen_mult_9 RNG_0_MULT
       (.int_s({a0,RNG_0_n_1,RNG_0_n_2,RNG_0_n_3,RNG_0_n_4,RNG_0_n_5,RNG_0_n_6,RNG_0_n_7,RNG_0_n_8,RNG_0_n_9,RNG_0_n_10,RNG_0_n_11,RNG_0_n_12,RNG_0_n_13}),
        .p0(p0));
  system_SPGD_SYS_0_CLT_RNG__parameterized0 RNG_1
       (.int_RNG_CLK(int_RNG_CLK),
        .int_s({RNG_1_n_3,RNG_1_n_4,RNG_1_n_5,RNG_1_n_6,RNG_1_n_7,RNG_1_n_8,RNG_1_n_9,RNG_1_n_10,RNG_1_n_11,RNG_1_n_12,RNG_1_n_13,RNG_1_n_14,RNG_1_n_15,RNG_1_n_16}),
        .\rand_reg[26] (\rand_reg[26] ),
        .rand_reg_r_1(RNG_1_n_0),
        .rand_reg_r_2(RNG_1_n_1),
        .rand_reg_r_6(RNG_1_n_2));
  system_SPGD_SYS_0_gen_mult_10 RNG_1_MULT
       (.int_s({RNG_1_n_3,RNG_1_n_4,RNG_1_n_5,RNG_1_n_6,RNG_1_n_7,RNG_1_n_8,RNG_1_n_9,RNG_1_n_10,RNG_1_n_11,RNG_1_n_12,RNG_1_n_13,RNG_1_n_14,RNG_1_n_15,RNG_1_n_16}),
        .p0_0(p0_0));
endmodule

(* ORIG_REF_NAME = "SPGD_FSM" *) 
module system_SPGD_SYS_0_SPGD_FSM
   (int_RNG_CLK,
    int_REG_RST_reg_0,
    E,
    int_J_P_WRT_reg_0,
    int_DELTA_U_WRT,
    int_U_WRT,
    DAC_A_OUT,
    DAC_B_OUT,
    ADC_EN,
    LED_O,
    ADC_CLK,
    int_data_reg_reg,
    O,
    s0,
    \DAC_A_OUT[59] ,
    \DAC_A_OUT[55] ,
    \DAC_A_OUT[51] ,
    \DAC_A_OUT[47] ,
    \DAC_A_OUT[43] ,
    \DAC_A_OUT[39] ,
    \DAC_A_OUT[35] ,
    \DAC_A_OUT[31] ,
    \DAC_A_OUT[27] ,
    \DAC_A_OUT[23] ,
    \DAC_A_OUT[19] ,
    \DAC_A_OUT[15] ,
    \DAC_A_OUT[11] ,
    \DAC_A_OUT[7] ,
    \DAC_A_OUT[3] ,
    int_data_reg_reg_0,
    \DAC_B_OUT[63] ,
    \DAC_B_OUT[63]_0 ,
    \DAC_B_OUT[59] ,
    \DAC_B_OUT[59]_0 ,
    \DAC_B_OUT[55] ,
    \DAC_B_OUT[55]_0 ,
    \DAC_B_OUT[51] ,
    \DAC_B_OUT[51]_0 ,
    \DAC_B_OUT[47] ,
    \DAC_B_OUT[47]_0 ,
    \DAC_B_OUT[43] ,
    \DAC_B_OUT[43]_0 ,
    \DAC_B_OUT[39] ,
    \DAC_B_OUT[39]_0 ,
    \DAC_B_OUT[35] ,
    \DAC_B_OUT[35]_0 ,
    \DAC_B_OUT[31] ,
    \DAC_B_OUT[31]_0 ,
    \DAC_B_OUT[27] ,
    \DAC_B_OUT[27]_0 ,
    \DAC_B_OUT[23] ,
    \DAC_B_OUT[23]_0 ,
    \DAC_B_OUT[19] ,
    \DAC_B_OUT[19]_0 ,
    \DAC_B_OUT[15] ,
    \DAC_B_OUT[15]_0 ,
    \DAC_B_OUT[11] ,
    \DAC_B_OUT[11]_0 ,
    \DAC_B_OUT[7] ,
    \DAC_B_OUT[7]_0 ,
    \DAC_B_OUT[3] ,
    \DAC_B_OUT[3]_0 ,
    GP_IN,
    ADC_DONE);
  output int_RNG_CLK;
  output int_REG_RST_reg_0;
  output [0:0]E;
  output [0:0]int_J_P_WRT_reg_0;
  output int_DELTA_U_WRT;
  output int_U_WRT;
  output [63:0]DAC_A_OUT;
  output [63:0]DAC_B_OUT;
  output ADC_EN;
  output [3:0]LED_O;
  input ADC_CLK;
  input [63:0]int_data_reg_reg;
  input [3:0]O;
  input [63:0]s0;
  input [3:0]\DAC_A_OUT[59] ;
  input [3:0]\DAC_A_OUT[55] ;
  input [3:0]\DAC_A_OUT[51] ;
  input [3:0]\DAC_A_OUT[47] ;
  input [3:0]\DAC_A_OUT[43] ;
  input [3:0]\DAC_A_OUT[39] ;
  input [3:0]\DAC_A_OUT[35] ;
  input [3:0]\DAC_A_OUT[31] ;
  input [3:0]\DAC_A_OUT[27] ;
  input [3:0]\DAC_A_OUT[23] ;
  input [3:0]\DAC_A_OUT[19] ;
  input [3:0]\DAC_A_OUT[15] ;
  input [3:0]\DAC_A_OUT[11] ;
  input [3:0]\DAC_A_OUT[7] ;
  input [3:0]\DAC_A_OUT[3] ;
  input [63:0]int_data_reg_reg_0;
  input [3:0]\DAC_B_OUT[63] ;
  input [3:0]\DAC_B_OUT[63]_0 ;
  input [3:0]\DAC_B_OUT[59] ;
  input [3:0]\DAC_B_OUT[59]_0 ;
  input [3:0]\DAC_B_OUT[55] ;
  input [3:0]\DAC_B_OUT[55]_0 ;
  input [3:0]\DAC_B_OUT[51] ;
  input [3:0]\DAC_B_OUT[51]_0 ;
  input [3:0]\DAC_B_OUT[47] ;
  input [3:0]\DAC_B_OUT[47]_0 ;
  input [3:0]\DAC_B_OUT[43] ;
  input [3:0]\DAC_B_OUT[43]_0 ;
  input [3:0]\DAC_B_OUT[39] ;
  input [3:0]\DAC_B_OUT[39]_0 ;
  input [3:0]\DAC_B_OUT[35] ;
  input [3:0]\DAC_B_OUT[35]_0 ;
  input [3:0]\DAC_B_OUT[31] ;
  input [3:0]\DAC_B_OUT[31]_0 ;
  input [3:0]\DAC_B_OUT[27] ;
  input [3:0]\DAC_B_OUT[27]_0 ;
  input [3:0]\DAC_B_OUT[23] ;
  input [3:0]\DAC_B_OUT[23]_0 ;
  input [3:0]\DAC_B_OUT[19] ;
  input [3:0]\DAC_B_OUT[19]_0 ;
  input [3:0]\DAC_B_OUT[15] ;
  input [3:0]\DAC_B_OUT[15]_0 ;
  input [3:0]\DAC_B_OUT[11] ;
  input [3:0]\DAC_B_OUT[11]_0 ;
  input [3:0]\DAC_B_OUT[7] ;
  input [3:0]\DAC_B_OUT[7]_0 ;
  input [3:0]\DAC_B_OUT[3] ;
  input [3:0]\DAC_B_OUT[3]_0 ;
  input [0:0]GP_IN;
  input ADC_DONE;

  wire ADC_CLK;
  wire ADC_DONE;
  wire ADC_EN;
  wire ADC_a_en;
  wire ADC_a_en_reg_n_0;
  wire ADC_b_en;
  wire ADC_b_en_reg_n_0;
  wire [63:0]DAC_A_OUT;
  wire [3:0]\DAC_A_OUT[11] ;
  wire [3:0]\DAC_A_OUT[15] ;
  wire [3:0]\DAC_A_OUT[19] ;
  wire [3:0]\DAC_A_OUT[23] ;
  wire [3:0]\DAC_A_OUT[27] ;
  wire [3:0]\DAC_A_OUT[31] ;
  wire [3:0]\DAC_A_OUT[35] ;
  wire [3:0]\DAC_A_OUT[39] ;
  wire [3:0]\DAC_A_OUT[3] ;
  wire [3:0]\DAC_A_OUT[43] ;
  wire [3:0]\DAC_A_OUT[47] ;
  wire [3:0]\DAC_A_OUT[51] ;
  wire [3:0]\DAC_A_OUT[55] ;
  wire [3:0]\DAC_A_OUT[59] ;
  wire [3:0]\DAC_A_OUT[7] ;
  wire [63:0]DAC_B_OUT;
  wire [3:0]\DAC_B_OUT[11] ;
  wire [3:0]\DAC_B_OUT[11]_0 ;
  wire [3:0]\DAC_B_OUT[15] ;
  wire [3:0]\DAC_B_OUT[15]_0 ;
  wire [3:0]\DAC_B_OUT[19] ;
  wire [3:0]\DAC_B_OUT[19]_0 ;
  wire [3:0]\DAC_B_OUT[23] ;
  wire [3:0]\DAC_B_OUT[23]_0 ;
  wire [3:0]\DAC_B_OUT[27] ;
  wire [3:0]\DAC_B_OUT[27]_0 ;
  wire [3:0]\DAC_B_OUT[31] ;
  wire [3:0]\DAC_B_OUT[31]_0 ;
  wire [3:0]\DAC_B_OUT[35] ;
  wire [3:0]\DAC_B_OUT[35]_0 ;
  wire [3:0]\DAC_B_OUT[39] ;
  wire [3:0]\DAC_B_OUT[39]_0 ;
  wire [3:0]\DAC_B_OUT[3] ;
  wire [3:0]\DAC_B_OUT[3]_0 ;
  wire [3:0]\DAC_B_OUT[43] ;
  wire [3:0]\DAC_B_OUT[43]_0 ;
  wire [3:0]\DAC_B_OUT[47] ;
  wire [3:0]\DAC_B_OUT[47]_0 ;
  wire [3:0]\DAC_B_OUT[51] ;
  wire [3:0]\DAC_B_OUT[51]_0 ;
  wire [3:0]\DAC_B_OUT[55] ;
  wire [3:0]\DAC_B_OUT[55]_0 ;
  wire [3:0]\DAC_B_OUT[59] ;
  wire [3:0]\DAC_B_OUT[59]_0 ;
  wire [3:0]\DAC_B_OUT[63] ;
  wire [3:0]\DAC_B_OUT[63]_0 ;
  wire [3:0]\DAC_B_OUT[7] ;
  wire [3:0]\DAC_B_OUT[7]_0 ;
  wire [1:0]DAC_SEL;
  wire [0:0]E;
  wire \FSM_onehot_current_state[13]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_current_state_reg_n_0_[6] ;
  wire \FSM_onehot_next_state[0]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[10] ;
  wire \FSM_onehot_next_state_reg_n_0_[11] ;
  wire \FSM_onehot_next_state_reg_n_0_[12] ;
  wire \FSM_onehot_next_state_reg_n_0_[13] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_next_state_reg_n_0_[2] ;
  wire \FSM_onehot_next_state_reg_n_0_[3] ;
  wire \FSM_onehot_next_state_reg_n_0_[4] ;
  wire \FSM_onehot_next_state_reg_n_0_[5] ;
  wire \FSM_onehot_next_state_reg_n_0_[6] ;
  wire \FSM_onehot_next_state_reg_n_0_[7] ;
  wire \FSM_onehot_next_state_reg_n_0_[8] ;
  wire \FSM_onehot_next_state_reg_n_0_[9] ;
  wire [0:0]GP_IN;
  wire [3:0]LED_O;
  wire \LED_O[0]_INST_0_i_1_n_0 ;
  wire MATH_a_en;
  wire MATH_a_en_7;
  wire MATH_a_n_0;
  wire MATH_a_n_1;
  wire MATH_b_en;
  wire MATH_b_en_5;
  wire MATH_b_n_0;
  wire MATH_b_n_1;
  wire MATH_c_en;
  wire MATH_c_en_4;
  wire MATH_c_n_0;
  wire MATH_c_n_1;
  wire [3:0]O;
  wire RNG_a_en;
  wire RNG_a_en_2;
  wire RNG_a_n_0;
  wire RNG_a_n_1;
  wire [1:0]int_DAC_SEL;
  wire \int_DAC_SEL[0]_i_2_n_0 ;
  wire int_DELTA_U_WRT;
  wire int_DELTA_U_WRT_1;
  wire int_J_M_WRT;
  wire int_J_P_WRT;
  wire [0:0]int_J_P_WRT_reg_0;
  wire int_REG_RST;
  wire int_REG_RST_reg_0;
  wire int_RNG_CLK;
  wire int_RNG_CLK_9;
  wire int_U_WRT;
  wire int_U_WRT_3;
  wire [63:0]int_data_reg_reg;
  wire [63:0]int_data_reg_reg_0;
  wire [63:0]s0;
  wire timer_a_en;
  wire timer_a_en_8;
  wire timer_a_n_0;
  wire timer_a_n_1;
  wire timer_b_en;
  wire timer_b_en_6;
  wire timer_b_n_0;
  wire timer_b_n_1;
  wire timer_c_en;
  wire timer_c_en_0;
  wire timer_c_n_0;
  wire timer_c_n_1;

  LUT2 #(
    .INIT(4'hE)) 
    ADC_EN_INST_0
       (.I0(ADC_a_en_reg_n_0),
        .I1(ADC_b_en_reg_n_0),
        .O(ADC_EN));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    ADC_a_en_i_1
       (.I0(MATH_a_en_7),
        .I1(int_J_P_WRT),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(ADC_a_en));
  FDRE #(
    .INIT(1'b0)) 
    ADC_a_en_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(ADC_a_en),
        .Q(ADC_a_en_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    ADC_b_en_i_1
       (.I0(MATH_b_en_5),
        .I1(int_J_M_WRT),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .O(ADC_b_en));
  FDRE #(
    .INIT(1'b0)) 
    ADC_b_en_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(ADC_b_en),
        .Q(ADC_b_en_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \DAC_A_OUT[0]_INST_0 
       (.I0(int_data_reg_reg[0]),
        .I1(\DAC_A_OUT[3] [0]),
        .I2(DAC_SEL[0]),
        .I3(s0[0]),
        .I4(DAC_SEL[1]),
        .O(DAC_A_OUT[0]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[10]_INST_0 
       (.I0(int_data_reg_reg[10]),
        .I1(\DAC_A_OUT[11] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[10]),
        .O(DAC_A_OUT[10]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[11]_INST_0 
       (.I0(int_data_reg_reg[11]),
        .I1(\DAC_A_OUT[11] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[11]),
        .O(DAC_A_OUT[11]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[12]_INST_0 
       (.I0(int_data_reg_reg[12]),
        .I1(\DAC_A_OUT[15] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[12]),
        .O(DAC_A_OUT[12]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[13]_INST_0 
       (.I0(int_data_reg_reg[13]),
        .I1(\DAC_A_OUT[15] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[13]),
        .O(DAC_A_OUT[13]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[14]_INST_0 
       (.I0(int_data_reg_reg[14]),
        .I1(\DAC_A_OUT[15] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[14]),
        .O(DAC_A_OUT[14]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[15]_INST_0 
       (.I0(int_data_reg_reg[15]),
        .I1(\DAC_A_OUT[15] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[15]),
        .O(DAC_A_OUT[15]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[16]_INST_0 
       (.I0(int_data_reg_reg[16]),
        .I1(\DAC_A_OUT[19] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[16]),
        .O(DAC_A_OUT[16]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[17]_INST_0 
       (.I0(int_data_reg_reg[17]),
        .I1(\DAC_A_OUT[19] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[17]),
        .O(DAC_A_OUT[17]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[18]_INST_0 
       (.I0(int_data_reg_reg[18]),
        .I1(\DAC_A_OUT[19] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[18]),
        .O(DAC_A_OUT[18]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[19]_INST_0 
       (.I0(int_data_reg_reg[19]),
        .I1(\DAC_A_OUT[19] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[19]),
        .O(DAC_A_OUT[19]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[1]_INST_0 
       (.I0(int_data_reg_reg[1]),
        .I1(\DAC_A_OUT[3] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[1]),
        .O(DAC_A_OUT[1]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[20]_INST_0 
       (.I0(int_data_reg_reg[20]),
        .I1(\DAC_A_OUT[23] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[20]),
        .O(DAC_A_OUT[20]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[21]_INST_0 
       (.I0(int_data_reg_reg[21]),
        .I1(\DAC_A_OUT[23] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[21]),
        .O(DAC_A_OUT[21]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[22]_INST_0 
       (.I0(int_data_reg_reg[22]),
        .I1(\DAC_A_OUT[23] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[22]),
        .O(DAC_A_OUT[22]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[23]_INST_0 
       (.I0(int_data_reg_reg[23]),
        .I1(\DAC_A_OUT[23] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[23]),
        .O(DAC_A_OUT[23]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[24]_INST_0 
       (.I0(int_data_reg_reg[24]),
        .I1(\DAC_A_OUT[27] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[24]),
        .O(DAC_A_OUT[24]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[25]_INST_0 
       (.I0(int_data_reg_reg[25]),
        .I1(\DAC_A_OUT[27] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[25]),
        .O(DAC_A_OUT[25]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[26]_INST_0 
       (.I0(int_data_reg_reg[26]),
        .I1(\DAC_A_OUT[27] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[26]),
        .O(DAC_A_OUT[26]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[27]_INST_0 
       (.I0(int_data_reg_reg[27]),
        .I1(\DAC_A_OUT[27] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[27]),
        .O(DAC_A_OUT[27]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[28]_INST_0 
       (.I0(int_data_reg_reg[28]),
        .I1(\DAC_A_OUT[31] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[28]),
        .O(DAC_A_OUT[28]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[29]_INST_0 
       (.I0(int_data_reg_reg[29]),
        .I1(\DAC_A_OUT[31] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[29]),
        .O(DAC_A_OUT[29]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[2]_INST_0 
       (.I0(int_data_reg_reg[2]),
        .I1(\DAC_A_OUT[3] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[2]),
        .O(DAC_A_OUT[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[30]_INST_0 
       (.I0(int_data_reg_reg[30]),
        .I1(\DAC_A_OUT[31] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[30]),
        .O(DAC_A_OUT[30]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[31]_INST_0 
       (.I0(int_data_reg_reg[31]),
        .I1(\DAC_A_OUT[31] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[31]),
        .O(DAC_A_OUT[31]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[32]_INST_0 
       (.I0(int_data_reg_reg[32]),
        .I1(\DAC_A_OUT[35] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[32]),
        .O(DAC_A_OUT[32]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[33]_INST_0 
       (.I0(int_data_reg_reg[33]),
        .I1(\DAC_A_OUT[35] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[33]),
        .O(DAC_A_OUT[33]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[34]_INST_0 
       (.I0(int_data_reg_reg[34]),
        .I1(\DAC_A_OUT[35] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[34]),
        .O(DAC_A_OUT[34]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[35]_INST_0 
       (.I0(int_data_reg_reg[35]),
        .I1(\DAC_A_OUT[35] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[35]),
        .O(DAC_A_OUT[35]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[36]_INST_0 
       (.I0(int_data_reg_reg[36]),
        .I1(\DAC_A_OUT[39] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[36]),
        .O(DAC_A_OUT[36]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[37]_INST_0 
       (.I0(int_data_reg_reg[37]),
        .I1(\DAC_A_OUT[39] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[37]),
        .O(DAC_A_OUT[37]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[38]_INST_0 
       (.I0(int_data_reg_reg[38]),
        .I1(\DAC_A_OUT[39] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[38]),
        .O(DAC_A_OUT[38]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[39]_INST_0 
       (.I0(int_data_reg_reg[39]),
        .I1(\DAC_A_OUT[39] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[39]),
        .O(DAC_A_OUT[39]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[3]_INST_0 
       (.I0(int_data_reg_reg[3]),
        .I1(\DAC_A_OUT[3] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[3]),
        .O(DAC_A_OUT[3]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[40]_INST_0 
       (.I0(int_data_reg_reg[40]),
        .I1(\DAC_A_OUT[43] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[40]),
        .O(DAC_A_OUT[40]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[41]_INST_0 
       (.I0(int_data_reg_reg[41]),
        .I1(\DAC_A_OUT[43] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[41]),
        .O(DAC_A_OUT[41]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[42]_INST_0 
       (.I0(int_data_reg_reg[42]),
        .I1(\DAC_A_OUT[43] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[42]),
        .O(DAC_A_OUT[42]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[43]_INST_0 
       (.I0(int_data_reg_reg[43]),
        .I1(\DAC_A_OUT[43] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[43]),
        .O(DAC_A_OUT[43]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[44]_INST_0 
       (.I0(int_data_reg_reg[44]),
        .I1(\DAC_A_OUT[47] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[44]),
        .O(DAC_A_OUT[44]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[45]_INST_0 
       (.I0(int_data_reg_reg[45]),
        .I1(\DAC_A_OUT[47] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[45]),
        .O(DAC_A_OUT[45]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[46]_INST_0 
       (.I0(int_data_reg_reg[46]),
        .I1(\DAC_A_OUT[47] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[46]),
        .O(DAC_A_OUT[46]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[47]_INST_0 
       (.I0(int_data_reg_reg[47]),
        .I1(\DAC_A_OUT[47] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[47]),
        .O(DAC_A_OUT[47]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[48]_INST_0 
       (.I0(int_data_reg_reg[48]),
        .I1(\DAC_A_OUT[51] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[48]),
        .O(DAC_A_OUT[48]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[49]_INST_0 
       (.I0(int_data_reg_reg[49]),
        .I1(\DAC_A_OUT[51] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[49]),
        .O(DAC_A_OUT[49]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[4]_INST_0 
       (.I0(int_data_reg_reg[4]),
        .I1(\DAC_A_OUT[7] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[4]),
        .O(DAC_A_OUT[4]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[50]_INST_0 
       (.I0(int_data_reg_reg[50]),
        .I1(\DAC_A_OUT[51] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[50]),
        .O(DAC_A_OUT[50]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[51]_INST_0 
       (.I0(int_data_reg_reg[51]),
        .I1(\DAC_A_OUT[51] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[51]),
        .O(DAC_A_OUT[51]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[52]_INST_0 
       (.I0(int_data_reg_reg[52]),
        .I1(\DAC_A_OUT[55] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[52]),
        .O(DAC_A_OUT[52]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[53]_INST_0 
       (.I0(int_data_reg_reg[53]),
        .I1(\DAC_A_OUT[55] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[53]),
        .O(DAC_A_OUT[53]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[54]_INST_0 
       (.I0(int_data_reg_reg[54]),
        .I1(\DAC_A_OUT[55] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[54]),
        .O(DAC_A_OUT[54]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[55]_INST_0 
       (.I0(int_data_reg_reg[55]),
        .I1(\DAC_A_OUT[55] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[55]),
        .O(DAC_A_OUT[55]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[56]_INST_0 
       (.I0(int_data_reg_reg[56]),
        .I1(\DAC_A_OUT[59] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[56]),
        .O(DAC_A_OUT[56]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[57]_INST_0 
       (.I0(int_data_reg_reg[57]),
        .I1(\DAC_A_OUT[59] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[57]),
        .O(DAC_A_OUT[57]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[58]_INST_0 
       (.I0(int_data_reg_reg[58]),
        .I1(\DAC_A_OUT[59] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[58]),
        .O(DAC_A_OUT[58]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[59]_INST_0 
       (.I0(int_data_reg_reg[59]),
        .I1(\DAC_A_OUT[59] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[59]),
        .O(DAC_A_OUT[59]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[5]_INST_0 
       (.I0(int_data_reg_reg[5]),
        .I1(\DAC_A_OUT[7] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[5]),
        .O(DAC_A_OUT[5]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[60]_INST_0 
       (.I0(int_data_reg_reg[60]),
        .I1(O[0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[60]),
        .O(DAC_A_OUT[60]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[61]_INST_0 
       (.I0(int_data_reg_reg[61]),
        .I1(O[1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[61]),
        .O(DAC_A_OUT[61]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[62]_INST_0 
       (.I0(int_data_reg_reg[62]),
        .I1(O[2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[62]),
        .O(DAC_A_OUT[62]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[63]_INST_0 
       (.I0(int_data_reg_reg[63]),
        .I1(O[3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[63]),
        .O(DAC_A_OUT[63]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[6]_INST_0 
       (.I0(int_data_reg_reg[6]),
        .I1(\DAC_A_OUT[7] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[6]),
        .O(DAC_A_OUT[6]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[7]_INST_0 
       (.I0(int_data_reg_reg[7]),
        .I1(\DAC_A_OUT[7] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[7]),
        .O(DAC_A_OUT[7]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[8]_INST_0 
       (.I0(int_data_reg_reg[8]),
        .I1(\DAC_A_OUT[11] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[8]),
        .O(DAC_A_OUT[8]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_A_OUT[9]_INST_0 
       (.I0(int_data_reg_reg[9]),
        .I1(\DAC_A_OUT[11] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(s0[9]),
        .O(DAC_A_OUT[9]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[0]_INST_0 
       (.I0(int_data_reg_reg_0[0]),
        .I1(\DAC_B_OUT[3] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[3]_0 [0]),
        .O(DAC_B_OUT[0]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[10]_INST_0 
       (.I0(int_data_reg_reg_0[10]),
        .I1(\DAC_B_OUT[11] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[11]_0 [2]),
        .O(DAC_B_OUT[10]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[11]_INST_0 
       (.I0(int_data_reg_reg_0[11]),
        .I1(\DAC_B_OUT[11] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[11]_0 [3]),
        .O(DAC_B_OUT[11]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[12]_INST_0 
       (.I0(int_data_reg_reg_0[12]),
        .I1(\DAC_B_OUT[15] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[15]_0 [0]),
        .O(DAC_B_OUT[12]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[13]_INST_0 
       (.I0(int_data_reg_reg_0[13]),
        .I1(\DAC_B_OUT[15] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[15]_0 [1]),
        .O(DAC_B_OUT[13]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[14]_INST_0 
       (.I0(int_data_reg_reg_0[14]),
        .I1(\DAC_B_OUT[15] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[15]_0 [2]),
        .O(DAC_B_OUT[14]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[15]_INST_0 
       (.I0(int_data_reg_reg_0[15]),
        .I1(\DAC_B_OUT[15] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[15]_0 [3]),
        .O(DAC_B_OUT[15]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[16]_INST_0 
       (.I0(int_data_reg_reg_0[16]),
        .I1(\DAC_B_OUT[19] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[19]_0 [0]),
        .O(DAC_B_OUT[16]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[17]_INST_0 
       (.I0(int_data_reg_reg_0[17]),
        .I1(\DAC_B_OUT[19] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[19]_0 [1]),
        .O(DAC_B_OUT[17]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[18]_INST_0 
       (.I0(int_data_reg_reg_0[18]),
        .I1(\DAC_B_OUT[19] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[19]_0 [2]),
        .O(DAC_B_OUT[18]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[19]_INST_0 
       (.I0(int_data_reg_reg_0[19]),
        .I1(\DAC_B_OUT[19] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[19]_0 [3]),
        .O(DAC_B_OUT[19]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[1]_INST_0 
       (.I0(int_data_reg_reg_0[1]),
        .I1(\DAC_B_OUT[3] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[3]_0 [1]),
        .O(DAC_B_OUT[1]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[20]_INST_0 
       (.I0(int_data_reg_reg_0[20]),
        .I1(\DAC_B_OUT[23] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[23]_0 [0]),
        .O(DAC_B_OUT[20]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[21]_INST_0 
       (.I0(int_data_reg_reg_0[21]),
        .I1(\DAC_B_OUT[23] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[23]_0 [1]),
        .O(DAC_B_OUT[21]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[22]_INST_0 
       (.I0(int_data_reg_reg_0[22]),
        .I1(\DAC_B_OUT[23] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[23]_0 [2]),
        .O(DAC_B_OUT[22]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[23]_INST_0 
       (.I0(int_data_reg_reg_0[23]),
        .I1(\DAC_B_OUT[23] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[23]_0 [3]),
        .O(DAC_B_OUT[23]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[24]_INST_0 
       (.I0(int_data_reg_reg_0[24]),
        .I1(\DAC_B_OUT[27] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[27]_0 [0]),
        .O(DAC_B_OUT[24]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[25]_INST_0 
       (.I0(int_data_reg_reg_0[25]),
        .I1(\DAC_B_OUT[27] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[27]_0 [1]),
        .O(DAC_B_OUT[25]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[26]_INST_0 
       (.I0(int_data_reg_reg_0[26]),
        .I1(\DAC_B_OUT[27] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[27]_0 [2]),
        .O(DAC_B_OUT[26]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[27]_INST_0 
       (.I0(int_data_reg_reg_0[27]),
        .I1(\DAC_B_OUT[27] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[27]_0 [3]),
        .O(DAC_B_OUT[27]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[28]_INST_0 
       (.I0(int_data_reg_reg_0[28]),
        .I1(\DAC_B_OUT[31] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[31]_0 [0]),
        .O(DAC_B_OUT[28]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[29]_INST_0 
       (.I0(int_data_reg_reg_0[29]),
        .I1(\DAC_B_OUT[31] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[31]_0 [1]),
        .O(DAC_B_OUT[29]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[2]_INST_0 
       (.I0(int_data_reg_reg_0[2]),
        .I1(\DAC_B_OUT[3] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[3]_0 [2]),
        .O(DAC_B_OUT[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[30]_INST_0 
       (.I0(int_data_reg_reg_0[30]),
        .I1(\DAC_B_OUT[31] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[31]_0 [2]),
        .O(DAC_B_OUT[30]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[31]_INST_0 
       (.I0(int_data_reg_reg_0[31]),
        .I1(\DAC_B_OUT[31] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[31]_0 [3]),
        .O(DAC_B_OUT[31]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[32]_INST_0 
       (.I0(int_data_reg_reg_0[32]),
        .I1(\DAC_B_OUT[35] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[35]_0 [0]),
        .O(DAC_B_OUT[32]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[33]_INST_0 
       (.I0(int_data_reg_reg_0[33]),
        .I1(\DAC_B_OUT[35] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[35]_0 [1]),
        .O(DAC_B_OUT[33]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[34]_INST_0 
       (.I0(int_data_reg_reg_0[34]),
        .I1(\DAC_B_OUT[35] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[35]_0 [2]),
        .O(DAC_B_OUT[34]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[35]_INST_0 
       (.I0(int_data_reg_reg_0[35]),
        .I1(\DAC_B_OUT[35] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[35]_0 [3]),
        .O(DAC_B_OUT[35]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[36]_INST_0 
       (.I0(int_data_reg_reg_0[36]),
        .I1(\DAC_B_OUT[39] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[39]_0 [0]),
        .O(DAC_B_OUT[36]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[37]_INST_0 
       (.I0(int_data_reg_reg_0[37]),
        .I1(\DAC_B_OUT[39] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[39]_0 [1]),
        .O(DAC_B_OUT[37]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[38]_INST_0 
       (.I0(int_data_reg_reg_0[38]),
        .I1(\DAC_B_OUT[39] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[39]_0 [2]),
        .O(DAC_B_OUT[38]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[39]_INST_0 
       (.I0(int_data_reg_reg_0[39]),
        .I1(\DAC_B_OUT[39] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[39]_0 [3]),
        .O(DAC_B_OUT[39]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[3]_INST_0 
       (.I0(int_data_reg_reg_0[3]),
        .I1(\DAC_B_OUT[3] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[3]_0 [3]),
        .O(DAC_B_OUT[3]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[40]_INST_0 
       (.I0(int_data_reg_reg_0[40]),
        .I1(\DAC_B_OUT[43] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[43]_0 [0]),
        .O(DAC_B_OUT[40]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[41]_INST_0 
       (.I0(int_data_reg_reg_0[41]),
        .I1(\DAC_B_OUT[43] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[43]_0 [1]),
        .O(DAC_B_OUT[41]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[42]_INST_0 
       (.I0(int_data_reg_reg_0[42]),
        .I1(\DAC_B_OUT[43] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[43]_0 [2]),
        .O(DAC_B_OUT[42]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[43]_INST_0 
       (.I0(int_data_reg_reg_0[43]),
        .I1(\DAC_B_OUT[43] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[43]_0 [3]),
        .O(DAC_B_OUT[43]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[44]_INST_0 
       (.I0(int_data_reg_reg_0[44]),
        .I1(\DAC_B_OUT[47] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[47]_0 [0]),
        .O(DAC_B_OUT[44]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[45]_INST_0 
       (.I0(int_data_reg_reg_0[45]),
        .I1(\DAC_B_OUT[47] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[47]_0 [1]),
        .O(DAC_B_OUT[45]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[46]_INST_0 
       (.I0(int_data_reg_reg_0[46]),
        .I1(\DAC_B_OUT[47] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[47]_0 [2]),
        .O(DAC_B_OUT[46]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[47]_INST_0 
       (.I0(int_data_reg_reg_0[47]),
        .I1(\DAC_B_OUT[47] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[47]_0 [3]),
        .O(DAC_B_OUT[47]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[48]_INST_0 
       (.I0(int_data_reg_reg_0[48]),
        .I1(\DAC_B_OUT[51] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[51]_0 [0]),
        .O(DAC_B_OUT[48]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[49]_INST_0 
       (.I0(int_data_reg_reg_0[49]),
        .I1(\DAC_B_OUT[51] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[51]_0 [1]),
        .O(DAC_B_OUT[49]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[4]_INST_0 
       (.I0(int_data_reg_reg_0[4]),
        .I1(\DAC_B_OUT[7] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[7]_0 [0]),
        .O(DAC_B_OUT[4]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[50]_INST_0 
       (.I0(int_data_reg_reg_0[50]),
        .I1(\DAC_B_OUT[51] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[51]_0 [2]),
        .O(DAC_B_OUT[50]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[51]_INST_0 
       (.I0(int_data_reg_reg_0[51]),
        .I1(\DAC_B_OUT[51] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[51]_0 [3]),
        .O(DAC_B_OUT[51]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[52]_INST_0 
       (.I0(int_data_reg_reg_0[52]),
        .I1(\DAC_B_OUT[55] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[55]_0 [0]),
        .O(DAC_B_OUT[52]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[53]_INST_0 
       (.I0(int_data_reg_reg_0[53]),
        .I1(\DAC_B_OUT[55] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[55]_0 [1]),
        .O(DAC_B_OUT[53]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[54]_INST_0 
       (.I0(int_data_reg_reg_0[54]),
        .I1(\DAC_B_OUT[55] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[55]_0 [2]),
        .O(DAC_B_OUT[54]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[55]_INST_0 
       (.I0(int_data_reg_reg_0[55]),
        .I1(\DAC_B_OUT[55] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[55]_0 [3]),
        .O(DAC_B_OUT[55]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[56]_INST_0 
       (.I0(int_data_reg_reg_0[56]),
        .I1(\DAC_B_OUT[59] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[59]_0 [0]),
        .O(DAC_B_OUT[56]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[57]_INST_0 
       (.I0(int_data_reg_reg_0[57]),
        .I1(\DAC_B_OUT[59] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[59]_0 [1]),
        .O(DAC_B_OUT[57]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[58]_INST_0 
       (.I0(int_data_reg_reg_0[58]),
        .I1(\DAC_B_OUT[59] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[59]_0 [2]),
        .O(DAC_B_OUT[58]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[59]_INST_0 
       (.I0(int_data_reg_reg_0[59]),
        .I1(\DAC_B_OUT[59] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[59]_0 [3]),
        .O(DAC_B_OUT[59]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[5]_INST_0 
       (.I0(int_data_reg_reg_0[5]),
        .I1(\DAC_B_OUT[7] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[7]_0 [1]),
        .O(DAC_B_OUT[5]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[60]_INST_0 
       (.I0(int_data_reg_reg_0[60]),
        .I1(\DAC_B_OUT[63] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[63]_0 [0]),
        .O(DAC_B_OUT[60]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[61]_INST_0 
       (.I0(int_data_reg_reg_0[61]),
        .I1(\DAC_B_OUT[63] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[63]_0 [1]),
        .O(DAC_B_OUT[61]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[62]_INST_0 
       (.I0(int_data_reg_reg_0[62]),
        .I1(\DAC_B_OUT[63] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[63]_0 [2]),
        .O(DAC_B_OUT[62]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[63]_INST_0 
       (.I0(int_data_reg_reg_0[63]),
        .I1(\DAC_B_OUT[63] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[63]_0 [3]),
        .O(DAC_B_OUT[63]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[6]_INST_0 
       (.I0(int_data_reg_reg_0[6]),
        .I1(\DAC_B_OUT[7] [2]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[7]_0 [2]),
        .O(DAC_B_OUT[6]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[7]_INST_0 
       (.I0(int_data_reg_reg_0[7]),
        .I1(\DAC_B_OUT[7] [3]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[7]_0 [3]),
        .O(DAC_B_OUT[7]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[8]_INST_0 
       (.I0(int_data_reg_reg_0[8]),
        .I1(\DAC_B_OUT[11] [0]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[11]_0 [0]),
        .O(DAC_B_OUT[8]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \DAC_B_OUT[9]_INST_0 
       (.I0(int_data_reg_reg_0[9]),
        .I1(\DAC_B_OUT[11] [1]),
        .I2(DAC_SEL[0]),
        .I3(DAC_SEL[1]),
        .I4(\DAC_B_OUT[11]_0 [1]),
        .O(DAC_B_OUT[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_current_state[13]_i_1 
       (.I0(GP_IN),
        .O(\FSM_onehot_current_state[13]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "MATH_a_wait:00000000001000,J_P_wrt:00000000010000,ADC_a_wait:00000000000100,timer_c_wait:10000000000000,DELTA_U_wrt:01000000000000,RNG_wait:00100000000000,U_wrt:00010000000000,timer_a_wait:00000000000010,stopped:00000000000001,MATH_c_wait:00001000000000,MATH_b_wait:00000010000000,J_M_wrt:00000100000000,ADC_b_wait:00000001000000,timer_b_wait:00000000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .Q(int_REG_RST),
        .S(\FSM_onehot_current_state[13]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "MATH_a_wait:00000000001000,J_P_wrt:00000000010000,ADC_a_wait:00000000000100,timer_c_wait:10000000000000,DELTA_U_wrt:01000000000000,RNG_wait:00100000000000,U_wrt:00010000000000,timer_a_wait:00000000000010,stopped:00000000000001,MATH_c_wait:00001000000000,MATH_b_wait:00000010000000,J_M_wrt:00000100000000,ADC_b_wait:00000001000000,timer_b_wait:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[10] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[10] ),
        .Q(int_U_WRT_3),
        .R(\FSM_onehot_current_state[13]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "MATH_a_wait:00000000001000,J_P_wrt:00000000010000,ADC_a_wait:00000000000100,timer_c_wait:10000000000000,DELTA_U_wrt:01000000000000,RNG_wait:00100000000000,U_wrt:00010000000000,timer_a_wait:00000000000010,stopped:00000000000001,MATH_c_wait:00001000000000,MATH_b_wait:00000010000000,J_M_wrt:00000100000000,ADC_b_wait:00000001000000,timer_b_wait:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[11] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[11] ),
        .Q(RNG_a_en_2),
        .R(\FSM_onehot_current_state[13]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "MATH_a_wait:00000000001000,J_P_wrt:00000000010000,ADC_a_wait:00000000000100,timer_c_wait:10000000000000,DELTA_U_wrt:01000000000000,RNG_wait:00100000000000,U_wrt:00010000000000,timer_a_wait:00000000000010,stopped:00000000000001,MATH_c_wait:00001000000000,MATH_b_wait:00000010000000,J_M_wrt:00000100000000,ADC_b_wait:00000001000000,timer_b_wait:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[12] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[12] ),
        .Q(int_DELTA_U_WRT_1),
        .R(\FSM_onehot_current_state[13]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "MATH_a_wait:00000000001000,J_P_wrt:00000000010000,ADC_a_wait:00000000000100,timer_c_wait:10000000000000,DELTA_U_wrt:01000000000000,RNG_wait:00100000000000,U_wrt:00010000000000,timer_a_wait:00000000000010,stopped:00000000000001,MATH_c_wait:00001000000000,MATH_b_wait:00000010000000,J_M_wrt:00000100000000,ADC_b_wait:00000001000000,timer_b_wait:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[13] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[13] ),
        .Q(timer_c_en_0),
        .R(\FSM_onehot_current_state[13]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "MATH_a_wait:00000000001000,J_P_wrt:00000000010000,ADC_a_wait:00000000000100,timer_c_wait:10000000000000,DELTA_U_wrt:01000000000000,RNG_wait:00100000000000,U_wrt:00010000000000,timer_a_wait:00000000000010,stopped:00000000000001,MATH_c_wait:00001000000000,MATH_b_wait:00000010000000,J_M_wrt:00000100000000,ADC_b_wait:00000001000000,timer_b_wait:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(timer_a_en_8),
        .R(\FSM_onehot_current_state[13]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "MATH_a_wait:00000000001000,J_P_wrt:00000000010000,ADC_a_wait:00000000000100,timer_c_wait:10000000000000,DELTA_U_wrt:01000000000000,RNG_wait:00100000000000,U_wrt:00010000000000,timer_a_wait:00000000000010,stopped:00000000000001,MATH_c_wait:00001000000000,MATH_b_wait:00000010000000,J_M_wrt:00000100000000,ADC_b_wait:00000001000000,timer_b_wait:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ),
        .R(\FSM_onehot_current_state[13]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "MATH_a_wait:00000000001000,J_P_wrt:00000000010000,ADC_a_wait:00000000000100,timer_c_wait:10000000000000,DELTA_U_wrt:01000000000000,RNG_wait:00100000000000,U_wrt:00010000000000,timer_a_wait:00000000000010,stopped:00000000000001,MATH_c_wait:00001000000000,MATH_b_wait:00000010000000,J_M_wrt:00000100000000,ADC_b_wait:00000001000000,timer_b_wait:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[3] ),
        .Q(MATH_a_en_7),
        .R(\FSM_onehot_current_state[13]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "MATH_a_wait:00000000001000,J_P_wrt:00000000010000,ADC_a_wait:00000000000100,timer_c_wait:10000000000000,DELTA_U_wrt:01000000000000,RNG_wait:00100000000000,U_wrt:00010000000000,timer_a_wait:00000000000010,stopped:00000000000001,MATH_c_wait:00001000000000,MATH_b_wait:00000010000000,J_M_wrt:00000100000000,ADC_b_wait:00000001000000,timer_b_wait:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[4] ),
        .Q(int_J_P_WRT),
        .R(\FSM_onehot_current_state[13]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "MATH_a_wait:00000000001000,J_P_wrt:00000000010000,ADC_a_wait:00000000000100,timer_c_wait:10000000000000,DELTA_U_wrt:01000000000000,RNG_wait:00100000000000,U_wrt:00010000000000,timer_a_wait:00000000000010,stopped:00000000000001,MATH_c_wait:00001000000000,MATH_b_wait:00000010000000,J_M_wrt:00000100000000,ADC_b_wait:00000001000000,timer_b_wait:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[5] ),
        .Q(timer_b_en_6),
        .R(\FSM_onehot_current_state[13]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "MATH_a_wait:00000000001000,J_P_wrt:00000000010000,ADC_a_wait:00000000000100,timer_c_wait:10000000000000,DELTA_U_wrt:01000000000000,RNG_wait:00100000000000,U_wrt:00010000000000,timer_a_wait:00000000000010,stopped:00000000000001,MATH_c_wait:00001000000000,MATH_b_wait:00000010000000,J_M_wrt:00000100000000,ADC_b_wait:00000001000000,timer_b_wait:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[6] ),
        .R(\FSM_onehot_current_state[13]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "MATH_a_wait:00000000001000,J_P_wrt:00000000010000,ADC_a_wait:00000000000100,timer_c_wait:10000000000000,DELTA_U_wrt:01000000000000,RNG_wait:00100000000000,U_wrt:00010000000000,timer_a_wait:00000000000010,stopped:00000000000001,MATH_c_wait:00001000000000,MATH_b_wait:00000010000000,J_M_wrt:00000100000000,ADC_b_wait:00000001000000,timer_b_wait:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[7] ),
        .Q(MATH_b_en_5),
        .R(\FSM_onehot_current_state[13]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "MATH_a_wait:00000000001000,J_P_wrt:00000000010000,ADC_a_wait:00000000000100,timer_c_wait:10000000000000,DELTA_U_wrt:01000000000000,RNG_wait:00100000000000,U_wrt:00010000000000,timer_a_wait:00000000000010,stopped:00000000000001,MATH_c_wait:00001000000000,MATH_b_wait:00000010000000,J_M_wrt:00000100000000,ADC_b_wait:00000001000000,timer_b_wait:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[8] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[8] ),
        .Q(int_J_M_WRT),
        .R(\FSM_onehot_current_state[13]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "MATH_a_wait:00000000001000,J_P_wrt:00000000010000,ADC_a_wait:00000000000100,timer_c_wait:10000000000000,DELTA_U_wrt:01000000000000,RNG_wait:00100000000000,U_wrt:00010000000000,timer_a_wait:00000000000010,stopped:00000000000001,MATH_c_wait:00001000000000,MATH_b_wait:00000010000000,J_M_wrt:00000100000000,ADC_b_wait:00000001000000,timer_b_wait:00000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[9] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[9] ),
        .Q(MATH_c_en_4),
        .R(\FSM_onehot_current_state[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_next_state[0]_i_1 
       (.I0(int_REG_RST),
        .I1(GP_IN),
        .O(\FSM_onehot_next_state[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_next_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[10] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(MATH_c_n_0),
        .Q(\FSM_onehot_next_state_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[11] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(RNG_a_n_1),
        .Q(\FSM_onehot_next_state_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[12] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(RNG_a_n_0),
        .Q(\FSM_onehot_next_state_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[13] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(timer_c_n_1),
        .Q(\FSM_onehot_next_state_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(timer_a_n_1),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(timer_a_n_0),
        .Q(\FSM_onehot_next_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[3] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(MATH_a_n_1),
        .Q(\FSM_onehot_next_state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[4] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(MATH_a_n_0),
        .Q(\FSM_onehot_next_state_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[5] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(timer_b_n_1),
        .Q(\FSM_onehot_next_state_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[6] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(timer_b_n_0),
        .Q(\FSM_onehot_next_state_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[7] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(MATH_b_n_1),
        .Q(\FSM_onehot_next_state_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[8] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(MATH_b_n_0),
        .Q(\FSM_onehot_next_state_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[9] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(MATH_c_n_1),
        .Q(\FSM_onehot_next_state_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \LED_O[0]_INST_0 
       (.I0(MATH_a_en_7),
        .I1(timer_a_en_8),
        .I2(\LED_O[0]_INST_0_i_1_n_0 ),
        .O(LED_O[0]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \LED_O[0]_INST_0_i_1 
       (.I0(MATH_b_en_5),
        .I1(timer_b_en_6),
        .I2(RNG_a_en_2),
        .I3(timer_c_en_0),
        .I4(MATH_c_en_4),
        .O(\LED_O[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \LED_O[1]_INST_0 
       (.I0(int_U_WRT_3),
        .I1(RNG_a_en_2),
        .I2(MATH_a_en_7),
        .I3(MATH_b_en_5),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[6] ),
        .O(LED_O[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \LED_O[2]_INST_0 
       (.I0(int_DELTA_U_WRT_1),
        .I1(timer_c_en_0),
        .I2(int_J_P_WRT),
        .I3(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I4(timer_b_en_6),
        .I5(MATH_b_en_5),
        .O(LED_O[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \LED_O[3]_INST_0 
       (.I0(int_DELTA_U_WRT_1),
        .I1(timer_c_en_0),
        .I2(MATH_c_en_4),
        .I3(int_J_M_WRT),
        .I4(RNG_a_en_2),
        .I5(int_U_WRT_3),
        .O(LED_O[3]));
  system_SPGD_SYS_0_gen_counter MATH_a
       (.ADC_CLK(ADC_CLK),
        .ADC_DONE(ADC_DONE),
        .D({MATH_a_n_0,MATH_a_n_1}),
        .MATH_a_en(MATH_a_en),
        .Q({MATH_a_en_7,\FSM_onehot_current_state_reg_n_0_[2] }));
  FDRE #(
    .INIT(1'b0)) 
    MATH_a_en_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(MATH_a_en_7),
        .Q(MATH_a_en),
        .R(1'b0));
  system_SPGD_SYS_0_gen_counter_12 MATH_b
       (.ADC_CLK(ADC_CLK),
        .ADC_DONE(ADC_DONE),
        .D({MATH_b_n_0,MATH_b_n_1}),
        .MATH_b_en(MATH_b_en),
        .Q({MATH_b_en_5,\FSM_onehot_current_state_reg_n_0_[6] }));
  FDRE #(
    .INIT(1'b0)) 
    MATH_b_en_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(MATH_b_en_5),
        .Q(MATH_b_en),
        .R(1'b0));
  system_SPGD_SYS_0_gen_counter_13 MATH_c
       (.ADC_CLK(ADC_CLK),
        .D({MATH_c_n_0,MATH_c_n_1}),
        .MATH_c_en(MATH_c_en),
        .Q({MATH_c_en_4,int_J_M_WRT}));
  FDRE #(
    .INIT(1'b0)) 
    MATH_c_en_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(MATH_c_en_4),
        .Q(MATH_c_en),
        .R(1'b0));
  system_SPGD_SYS_0_gen_counter_14 RNG_a
       (.ADC_CLK(ADC_CLK),
        .D({RNG_a_n_0,RNG_a_n_1}),
        .Q({RNG_a_en_2,int_U_WRT_3}),
        .RNG_a_en(RNG_a_en));
  FDRE #(
    .INIT(1'b0)) 
    RNG_a_en_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(RNG_a_en_2),
        .Q(RNG_a_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \int_DAC_SEL[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(int_J_P_WRT),
        .I2(RNG_a_en_2),
        .I3(timer_a_en_8),
        .I4(MATH_a_en_7),
        .I5(\int_DAC_SEL[0]_i_2_n_0 ),
        .O(int_DAC_SEL[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \int_DAC_SEL[0]_i_2 
       (.I0(timer_c_en_0),
        .I1(int_DELTA_U_WRT_1),
        .O(\int_DAC_SEL[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \int_DAC_SEL[1]_i_1 
       (.I0(\LED_O[0]_INST_0_i_1_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(int_J_M_WRT),
        .I3(int_U_WRT_3),
        .I4(int_DELTA_U_WRT_1),
        .O(int_DAC_SEL[1]));
  FDRE #(
    .INIT(1'b0)) 
    \int_DAC_SEL_reg[0] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(int_DAC_SEL[0]),
        .Q(DAC_SEL[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_DAC_SEL_reg[1] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(int_DAC_SEL[1]),
        .Q(DAC_SEL[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    int_DELTA_U_WRT_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(int_DELTA_U_WRT_1),
        .Q(int_DELTA_U_WRT),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    int_J_M_WRT_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(int_J_M_WRT),
        .Q(E),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    int_J_P_WRT_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(int_J_P_WRT),
        .Q(int_J_P_WRT_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    int_REG_RST_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(int_REG_RST),
        .Q(int_REG_RST_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    int_RNG_CLK_i_1
       (.I0(RNG_a_en_2),
        .I1(int_RNG_CLK),
        .O(int_RNG_CLK_9));
  FDRE #(
    .INIT(1'b0)) 
    int_RNG_CLK_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(int_RNG_CLK_9),
        .Q(int_RNG_CLK),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    int_U_WRT_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(int_U_WRT_3),
        .Q(int_U_WRT),
        .R(1'b0));
  system_SPGD_SYS_0_gen_counter_15 timer_a
       (.ADC_CLK(ADC_CLK),
        .ADC_DONE(ADC_DONE),
        .D({timer_a_n_0,timer_a_n_1}),
        .\FSM_onehot_next_state_reg[1] (timer_c_n_0),
        .GP_IN(GP_IN),
        .Q({timer_c_en_0,\FSM_onehot_current_state_reg_n_0_[2] ,timer_a_en_8,int_REG_RST}),
        .timer_a_en(timer_a_en));
  FDRE #(
    .INIT(1'b0)) 
    timer_a_en_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(timer_a_en_8),
        .Q(timer_a_en),
        .R(1'b0));
  system_SPGD_SYS_0_gen_counter_16 timer_b
       (.ADC_CLK(ADC_CLK),
        .ADC_DONE(ADC_DONE),
        .D({timer_b_n_0,timer_b_n_1}),
        .Q({\FSM_onehot_current_state_reg_n_0_[6] ,timer_b_en_6,int_J_P_WRT}),
        .timer_b_en(timer_b_en));
  FDRE #(
    .INIT(1'b0)) 
    timer_b_en_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(timer_b_en_6),
        .Q(timer_b_en),
        .R(1'b0));
  system_SPGD_SYS_0_gen_counter_17 timer_c
       (.ADC_CLK(ADC_CLK),
        .D(timer_c_n_1),
        .F_O_reg_0(timer_c_n_0),
        .Q({timer_c_en_0,int_DELTA_U_WRT_1}),
        .timer_c_en(timer_c_en));
  FDRE #(
    .INIT(1'b0)) 
    timer_c_en_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(timer_c_en_0),
        .Q(timer_c_en),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SPGD_SYS" *) 
module system_SPGD_SYS_0_SPGD_SYS
   (REG_RESET,
    \int_data_reg_reg[55] ,
    LED_O,
    DAC_A_OUT,
    DAC_B_OUT,
    GP_OUT,
    ADC_EN,
    ADC_CLK,
    ADC_IN,
    GP_IN,
    ADC_DONE);
  output REG_RESET;
  output [15:0]\int_data_reg_reg[55] ;
  output [3:0]LED_O;
  output [63:0]DAC_A_OUT;
  output [63:0]DAC_B_OUT;
  output [15:0]GP_OUT;
  output ADC_EN;
  input ADC_CLK;
  input [61:0]ADC_IN;
  input [0:0]GP_IN;
  input ADC_DONE;

  wire ADC_CLK;
  wire ADC_DONE;
  wire ADC_EN;
  wire [61:0]ADC_IN;
  wire [63:0]DAC_A_OUT;
  wire [63:0]DAC_B_OUT;
  wire DELTA_U_0_REG_n_0;
  wire DELTA_U_0_REG_n_1;
  wire DELTA_U_0_REG_n_10;
  wire DELTA_U_0_REG_n_100;
  wire DELTA_U_0_REG_n_101;
  wire DELTA_U_0_REG_n_102;
  wire DELTA_U_0_REG_n_103;
  wire DELTA_U_0_REG_n_104;
  wire DELTA_U_0_REG_n_105;
  wire DELTA_U_0_REG_n_106;
  wire DELTA_U_0_REG_n_107;
  wire DELTA_U_0_REG_n_108;
  wire DELTA_U_0_REG_n_109;
  wire DELTA_U_0_REG_n_11;
  wire DELTA_U_0_REG_n_110;
  wire DELTA_U_0_REG_n_12;
  wire DELTA_U_0_REG_n_13;
  wire DELTA_U_0_REG_n_14;
  wire DELTA_U_0_REG_n_15;
  wire DELTA_U_0_REG_n_16;
  wire DELTA_U_0_REG_n_17;
  wire DELTA_U_0_REG_n_18;
  wire DELTA_U_0_REG_n_19;
  wire DELTA_U_0_REG_n_2;
  wire DELTA_U_0_REG_n_20;
  wire DELTA_U_0_REG_n_21;
  wire DELTA_U_0_REG_n_22;
  wire DELTA_U_0_REG_n_23;
  wire DELTA_U_0_REG_n_24;
  wire DELTA_U_0_REG_n_25;
  wire DELTA_U_0_REG_n_26;
  wire DELTA_U_0_REG_n_27;
  wire DELTA_U_0_REG_n_28;
  wire DELTA_U_0_REG_n_29;
  wire DELTA_U_0_REG_n_3;
  wire DELTA_U_0_REG_n_30;
  wire DELTA_U_0_REG_n_31;
  wire DELTA_U_0_REG_n_32;
  wire DELTA_U_0_REG_n_33;
  wire DELTA_U_0_REG_n_34;
  wire DELTA_U_0_REG_n_35;
  wire DELTA_U_0_REG_n_36;
  wire DELTA_U_0_REG_n_37;
  wire DELTA_U_0_REG_n_38;
  wire DELTA_U_0_REG_n_39;
  wire DELTA_U_0_REG_n_4;
  wire DELTA_U_0_REG_n_40;
  wire DELTA_U_0_REG_n_41;
  wire DELTA_U_0_REG_n_42;
  wire DELTA_U_0_REG_n_43;
  wire DELTA_U_0_REG_n_44;
  wire DELTA_U_0_REG_n_45;
  wire DELTA_U_0_REG_n_46;
  wire DELTA_U_0_REG_n_47;
  wire DELTA_U_0_REG_n_48;
  wire DELTA_U_0_REG_n_49;
  wire DELTA_U_0_REG_n_5;
  wire DELTA_U_0_REG_n_50;
  wire DELTA_U_0_REG_n_51;
  wire DELTA_U_0_REG_n_52;
  wire DELTA_U_0_REG_n_53;
  wire DELTA_U_0_REG_n_54;
  wire DELTA_U_0_REG_n_55;
  wire DELTA_U_0_REG_n_56;
  wire DELTA_U_0_REG_n_57;
  wire DELTA_U_0_REG_n_58;
  wire DELTA_U_0_REG_n_59;
  wire DELTA_U_0_REG_n_6;
  wire DELTA_U_0_REG_n_60;
  wire DELTA_U_0_REG_n_61;
  wire DELTA_U_0_REG_n_62;
  wire DELTA_U_0_REG_n_63;
  wire DELTA_U_0_REG_n_64;
  wire DELTA_U_0_REG_n_65;
  wire DELTA_U_0_REG_n_66;
  wire DELTA_U_0_REG_n_67;
  wire DELTA_U_0_REG_n_68;
  wire DELTA_U_0_REG_n_69;
  wire DELTA_U_0_REG_n_7;
  wire DELTA_U_0_REG_n_70;
  wire DELTA_U_0_REG_n_71;
  wire DELTA_U_0_REG_n_72;
  wire DELTA_U_0_REG_n_73;
  wire DELTA_U_0_REG_n_74;
  wire DELTA_U_0_REG_n_75;
  wire DELTA_U_0_REG_n_76;
  wire DELTA_U_0_REG_n_77;
  wire DELTA_U_0_REG_n_78;
  wire DELTA_U_0_REG_n_79;
  wire DELTA_U_0_REG_n_8;
  wire DELTA_U_0_REG_n_80;
  wire DELTA_U_0_REG_n_81;
  wire DELTA_U_0_REG_n_82;
  wire DELTA_U_0_REG_n_83;
  wire DELTA_U_0_REG_n_84;
  wire DELTA_U_0_REG_n_85;
  wire DELTA_U_0_REG_n_86;
  wire DELTA_U_0_REG_n_87;
  wire DELTA_U_0_REG_n_88;
  wire DELTA_U_0_REG_n_89;
  wire DELTA_U_0_REG_n_9;
  wire DELTA_U_0_REG_n_90;
  wire DELTA_U_0_REG_n_91;
  wire DELTA_U_0_REG_n_92;
  wire DELTA_U_0_REG_n_93;
  wire DELTA_U_0_REG_n_94;
  wire DELTA_U_0_REG_n_95;
  wire DELTA_U_0_REG_n_96;
  wire DELTA_U_0_REG_n_97;
  wire DELTA_U_0_REG_n_98;
  wire DELTA_U_0_REG_n_99;
  wire DELTA_U_1_REG_n_0;
  wire DELTA_U_1_REG_n_1;
  wire DELTA_U_1_REG_n_10;
  wire DELTA_U_1_REG_n_100;
  wire DELTA_U_1_REG_n_101;
  wire DELTA_U_1_REG_n_102;
  wire DELTA_U_1_REG_n_103;
  wire DELTA_U_1_REG_n_104;
  wire DELTA_U_1_REG_n_105;
  wire DELTA_U_1_REG_n_106;
  wire DELTA_U_1_REG_n_107;
  wire DELTA_U_1_REG_n_108;
  wire DELTA_U_1_REG_n_109;
  wire DELTA_U_1_REG_n_11;
  wire DELTA_U_1_REG_n_110;
  wire DELTA_U_1_REG_n_12;
  wire DELTA_U_1_REG_n_13;
  wire DELTA_U_1_REG_n_14;
  wire DELTA_U_1_REG_n_15;
  wire DELTA_U_1_REG_n_16;
  wire DELTA_U_1_REG_n_17;
  wire DELTA_U_1_REG_n_18;
  wire DELTA_U_1_REG_n_19;
  wire DELTA_U_1_REG_n_2;
  wire DELTA_U_1_REG_n_20;
  wire DELTA_U_1_REG_n_21;
  wire DELTA_U_1_REG_n_22;
  wire DELTA_U_1_REG_n_23;
  wire DELTA_U_1_REG_n_24;
  wire DELTA_U_1_REG_n_25;
  wire DELTA_U_1_REG_n_26;
  wire DELTA_U_1_REG_n_27;
  wire DELTA_U_1_REG_n_28;
  wire DELTA_U_1_REG_n_29;
  wire DELTA_U_1_REG_n_3;
  wire DELTA_U_1_REG_n_30;
  wire DELTA_U_1_REG_n_31;
  wire DELTA_U_1_REG_n_32;
  wire DELTA_U_1_REG_n_33;
  wire DELTA_U_1_REG_n_34;
  wire DELTA_U_1_REG_n_35;
  wire DELTA_U_1_REG_n_36;
  wire DELTA_U_1_REG_n_37;
  wire DELTA_U_1_REG_n_38;
  wire DELTA_U_1_REG_n_39;
  wire DELTA_U_1_REG_n_4;
  wire DELTA_U_1_REG_n_40;
  wire DELTA_U_1_REG_n_41;
  wire DELTA_U_1_REG_n_42;
  wire DELTA_U_1_REG_n_43;
  wire DELTA_U_1_REG_n_44;
  wire DELTA_U_1_REG_n_45;
  wire DELTA_U_1_REG_n_46;
  wire DELTA_U_1_REG_n_47;
  wire DELTA_U_1_REG_n_48;
  wire DELTA_U_1_REG_n_49;
  wire DELTA_U_1_REG_n_5;
  wire DELTA_U_1_REG_n_50;
  wire DELTA_U_1_REG_n_51;
  wire DELTA_U_1_REG_n_52;
  wire DELTA_U_1_REG_n_53;
  wire DELTA_U_1_REG_n_54;
  wire DELTA_U_1_REG_n_55;
  wire DELTA_U_1_REG_n_56;
  wire DELTA_U_1_REG_n_57;
  wire DELTA_U_1_REG_n_58;
  wire DELTA_U_1_REG_n_59;
  wire DELTA_U_1_REG_n_6;
  wire DELTA_U_1_REG_n_60;
  wire DELTA_U_1_REG_n_61;
  wire DELTA_U_1_REG_n_62;
  wire DELTA_U_1_REG_n_63;
  wire DELTA_U_1_REG_n_64;
  wire DELTA_U_1_REG_n_65;
  wire DELTA_U_1_REG_n_66;
  wire DELTA_U_1_REG_n_67;
  wire DELTA_U_1_REG_n_68;
  wire DELTA_U_1_REG_n_69;
  wire DELTA_U_1_REG_n_7;
  wire DELTA_U_1_REG_n_70;
  wire DELTA_U_1_REG_n_71;
  wire DELTA_U_1_REG_n_72;
  wire DELTA_U_1_REG_n_73;
  wire DELTA_U_1_REG_n_74;
  wire DELTA_U_1_REG_n_75;
  wire DELTA_U_1_REG_n_76;
  wire DELTA_U_1_REG_n_77;
  wire DELTA_U_1_REG_n_78;
  wire DELTA_U_1_REG_n_79;
  wire DELTA_U_1_REG_n_8;
  wire DELTA_U_1_REG_n_80;
  wire DELTA_U_1_REG_n_81;
  wire DELTA_U_1_REG_n_82;
  wire DELTA_U_1_REG_n_83;
  wire DELTA_U_1_REG_n_84;
  wire DELTA_U_1_REG_n_85;
  wire DELTA_U_1_REG_n_86;
  wire DELTA_U_1_REG_n_87;
  wire DELTA_U_1_REG_n_88;
  wire DELTA_U_1_REG_n_89;
  wire DELTA_U_1_REG_n_9;
  wire DELTA_U_1_REG_n_90;
  wire DELTA_U_1_REG_n_91;
  wire DELTA_U_1_REG_n_92;
  wire DELTA_U_1_REG_n_93;
  wire DELTA_U_1_REG_n_94;
  wire DELTA_U_1_REG_n_95;
  wire DELTA_U_1_REG_n_96;
  wire DELTA_U_1_REG_n_97;
  wire DELTA_U_1_REG_n_98;
  wire DELTA_U_1_REG_n_99;
  wire [0:0]GP_IN;
  wire [15:0]GP_OUT;
  wire [61:0]\J_MULT/p0 ;
  wire J_P_REG_n_0;
  wire J_P_REG_n_1;
  wire J_P_REG_n_10;
  wire J_P_REG_n_100;
  wire J_P_REG_n_101;
  wire J_P_REG_n_102;
  wire J_P_REG_n_103;
  wire J_P_REG_n_104;
  wire J_P_REG_n_105;
  wire J_P_REG_n_106;
  wire J_P_REG_n_107;
  wire J_P_REG_n_108;
  wire J_P_REG_n_109;
  wire J_P_REG_n_11;
  wire J_P_REG_n_110;
  wire J_P_REG_n_111;
  wire J_P_REG_n_112;
  wire J_P_REG_n_113;
  wire J_P_REG_n_114;
  wire J_P_REG_n_115;
  wire J_P_REG_n_116;
  wire J_P_REG_n_117;
  wire J_P_REG_n_118;
  wire J_P_REG_n_119;
  wire J_P_REG_n_12;
  wire J_P_REG_n_120;
  wire J_P_REG_n_121;
  wire J_P_REG_n_122;
  wire J_P_REG_n_13;
  wire J_P_REG_n_14;
  wire J_P_REG_n_15;
  wire J_P_REG_n_16;
  wire J_P_REG_n_17;
  wire J_P_REG_n_18;
  wire J_P_REG_n_19;
  wire J_P_REG_n_2;
  wire J_P_REG_n_20;
  wire J_P_REG_n_21;
  wire J_P_REG_n_22;
  wire J_P_REG_n_23;
  wire J_P_REG_n_24;
  wire J_P_REG_n_25;
  wire J_P_REG_n_26;
  wire J_P_REG_n_27;
  wire J_P_REG_n_28;
  wire J_P_REG_n_29;
  wire J_P_REG_n_3;
  wire J_P_REG_n_30;
  wire J_P_REG_n_31;
  wire J_P_REG_n_32;
  wire J_P_REG_n_33;
  wire J_P_REG_n_34;
  wire J_P_REG_n_35;
  wire J_P_REG_n_36;
  wire J_P_REG_n_37;
  wire J_P_REG_n_38;
  wire J_P_REG_n_39;
  wire J_P_REG_n_4;
  wire J_P_REG_n_40;
  wire J_P_REG_n_41;
  wire J_P_REG_n_42;
  wire J_P_REG_n_43;
  wire J_P_REG_n_44;
  wire J_P_REG_n_45;
  wire J_P_REG_n_46;
  wire J_P_REG_n_47;
  wire J_P_REG_n_48;
  wire J_P_REG_n_49;
  wire J_P_REG_n_5;
  wire J_P_REG_n_50;
  wire J_P_REG_n_51;
  wire J_P_REG_n_52;
  wire J_P_REG_n_53;
  wire J_P_REG_n_54;
  wire J_P_REG_n_55;
  wire J_P_REG_n_56;
  wire J_P_REG_n_57;
  wire J_P_REG_n_58;
  wire J_P_REG_n_59;
  wire J_P_REG_n_6;
  wire J_P_REG_n_60;
  wire J_P_REG_n_61;
  wire J_P_REG_n_62;
  wire J_P_REG_n_63;
  wire J_P_REG_n_64;
  wire J_P_REG_n_65;
  wire J_P_REG_n_66;
  wire J_P_REG_n_67;
  wire J_P_REG_n_68;
  wire J_P_REG_n_69;
  wire J_P_REG_n_7;
  wire J_P_REG_n_70;
  wire J_P_REG_n_71;
  wire J_P_REG_n_72;
  wire J_P_REG_n_73;
  wire J_P_REG_n_74;
  wire J_P_REG_n_75;
  wire J_P_REG_n_76;
  wire J_P_REG_n_77;
  wire J_P_REG_n_78;
  wire J_P_REG_n_79;
  wire J_P_REG_n_8;
  wire J_P_REG_n_80;
  wire J_P_REG_n_81;
  wire J_P_REG_n_82;
  wire J_P_REG_n_83;
  wire J_P_REG_n_84;
  wire J_P_REG_n_85;
  wire J_P_REG_n_86;
  wire J_P_REG_n_87;
  wire J_P_REG_n_88;
  wire J_P_REG_n_89;
  wire J_P_REG_n_9;
  wire J_P_REG_n_90;
  wire J_P_REG_n_91;
  wire J_P_REG_n_92;
  wire J_P_REG_n_93;
  wire J_P_REG_n_94;
  wire J_P_REG_n_95;
  wire J_P_REG_n_96;
  wire J_P_REG_n_97;
  wire J_P_REG_n_98;
  wire J_P_REG_n_99;
  wire [3:0]LED_O;
  wire PRNG_0_n_0;
  wire PRNG_0_n_1;
  wire PRNG_0_n_10;
  wire PRNG_0_n_11;
  wire PRNG_0_n_12;
  wire PRNG_0_n_13;
  wire PRNG_0_n_14;
  wire PRNG_0_n_15;
  wire PRNG_0_n_16;
  wire PRNG_0_n_17;
  wire PRNG_0_n_18;
  wire PRNG_0_n_19;
  wire PRNG_0_n_2;
  wire PRNG_0_n_20;
  wire PRNG_0_n_21;
  wire PRNG_0_n_22;
  wire PRNG_0_n_23;
  wire PRNG_0_n_24;
  wire PRNG_0_n_25;
  wire PRNG_0_n_26;
  wire PRNG_0_n_27;
  wire PRNG_0_n_28;
  wire PRNG_0_n_29;
  wire PRNG_0_n_3;
  wire PRNG_0_n_30;
  wire PRNG_0_n_31;
  wire PRNG_0_n_32;
  wire PRNG_0_n_33;
  wire PRNG_0_n_34;
  wire PRNG_0_n_35;
  wire PRNG_0_n_36;
  wire PRNG_0_n_37;
  wire PRNG_0_n_38;
  wire PRNG_0_n_39;
  wire PRNG_0_n_4;
  wire PRNG_0_n_40;
  wire PRNG_0_n_41;
  wire PRNG_0_n_42;
  wire PRNG_0_n_43;
  wire PRNG_0_n_44;
  wire PRNG_0_n_45;
  wire PRNG_0_n_46;
  wire PRNG_0_n_47;
  wire PRNG_0_n_48;
  wire PRNG_0_n_49;
  wire PRNG_0_n_5;
  wire PRNG_0_n_50;
  wire PRNG_0_n_51;
  wire PRNG_0_n_52;
  wire PRNG_0_n_53;
  wire PRNG_0_n_54;
  wire PRNG_0_n_55;
  wire PRNG_0_n_56;
  wire PRNG_0_n_57;
  wire PRNG_0_n_58;
  wire PRNG_0_n_59;
  wire PRNG_0_n_6;
  wire PRNG_0_n_60;
  wire PRNG_0_n_61;
  wire PRNG_0_n_62;
  wire PRNG_0_n_63;
  wire PRNG_0_n_64;
  wire PRNG_0_n_65;
  wire PRNG_0_n_66;
  wire PRNG_0_n_67;
  wire PRNG_0_n_68;
  wire PRNG_0_n_69;
  wire PRNG_0_n_7;
  wire PRNG_0_n_70;
  wire PRNG_0_n_71;
  wire PRNG_0_n_72;
  wire PRNG_0_n_73;
  wire PRNG_0_n_74;
  wire PRNG_0_n_75;
  wire PRNG_0_n_76;
  wire PRNG_0_n_77;
  wire PRNG_0_n_78;
  wire PRNG_0_n_79;
  wire PRNG_0_n_8;
  wire PRNG_0_n_80;
  wire PRNG_0_n_81;
  wire PRNG_0_n_82;
  wire PRNG_0_n_83;
  wire PRNG_0_n_84;
  wire PRNG_0_n_85;
  wire PRNG_0_n_86;
  wire PRNG_0_n_87;
  wire PRNG_0_n_88;
  wire PRNG_0_n_89;
  wire PRNG_0_n_9;
  wire PRNG_0_n_90;
  wire PRNG_0_n_91;
  wire PRNG_0_n_92;
  wire PRNG_0_n_93;
  wire REG_RESET;
  wire U_0_ADD_n_0;
  wire U_0_ADD_n_1;
  wire U_0_ADD_n_10;
  wire U_0_ADD_n_11;
  wire U_0_ADD_n_12;
  wire U_0_ADD_n_13;
  wire U_0_ADD_n_14;
  wire U_0_ADD_n_15;
  wire U_0_ADD_n_16;
  wire U_0_ADD_n_17;
  wire U_0_ADD_n_18;
  wire U_0_ADD_n_19;
  wire U_0_ADD_n_2;
  wire U_0_ADD_n_20;
  wire U_0_ADD_n_21;
  wire U_0_ADD_n_22;
  wire U_0_ADD_n_23;
  wire U_0_ADD_n_24;
  wire U_0_ADD_n_25;
  wire U_0_ADD_n_26;
  wire U_0_ADD_n_27;
  wire U_0_ADD_n_28;
  wire U_0_ADD_n_29;
  wire U_0_ADD_n_3;
  wire U_0_ADD_n_30;
  wire U_0_ADD_n_31;
  wire U_0_ADD_n_32;
  wire U_0_ADD_n_33;
  wire U_0_ADD_n_34;
  wire U_0_ADD_n_35;
  wire U_0_ADD_n_36;
  wire U_0_ADD_n_37;
  wire U_0_ADD_n_38;
  wire U_0_ADD_n_39;
  wire U_0_ADD_n_4;
  wire U_0_ADD_n_40;
  wire U_0_ADD_n_41;
  wire U_0_ADD_n_42;
  wire U_0_ADD_n_43;
  wire U_0_ADD_n_44;
  wire U_0_ADD_n_45;
  wire U_0_ADD_n_46;
  wire U_0_ADD_n_47;
  wire U_0_ADD_n_48;
  wire U_0_ADD_n_49;
  wire U_0_ADD_n_5;
  wire U_0_ADD_n_50;
  wire U_0_ADD_n_51;
  wire U_0_ADD_n_52;
  wire U_0_ADD_n_53;
  wire U_0_ADD_n_54;
  wire U_0_ADD_n_55;
  wire U_0_ADD_n_56;
  wire U_0_ADD_n_57;
  wire U_0_ADD_n_58;
  wire U_0_ADD_n_59;
  wire U_0_ADD_n_6;
  wire U_0_ADD_n_60;
  wire U_0_ADD_n_61;
  wire U_0_ADD_n_62;
  wire U_0_ADD_n_63;
  wire U_0_ADD_n_7;
  wire U_0_ADD_n_8;
  wire U_0_ADD_n_9;
  wire U_0_MULT_n_17;
  wire U_0_MULT_n_18;
  wire U_0_MULT_n_19;
  wire U_0_MULT_n_20;
  wire U_0_MULT_n_21;
  wire U_0_MULT_n_22;
  wire U_0_MULT_n_23;
  wire U_0_MULT_n_24;
  wire U_0_MULT_n_25;
  wire U_0_MULT_n_26;
  wire U_0_MULT_n_27;
  wire U_0_MULT_n_28;
  wire U_0_MULT_n_29;
  wire U_0_MULT_n_30;
  wire U_0_MULT_n_31;
  wire U_0_MULT_n_32;
  wire U_0_MULT_n_33;
  wire U_0_MULT_n_34;
  wire U_0_MULT_n_35;
  wire U_0_MULT_n_36;
  wire U_0_MULT_n_37;
  wire U_0_MULT_n_38;
  wire U_0_MULT_n_39;
  wire U_0_MULT_n_40;
  wire U_0_MULT_n_41;
  wire U_0_MULT_n_42;
  wire U_0_MULT_n_43;
  wire U_0_MULT_n_44;
  wire U_0_MULT_n_45;
  wire U_0_MULT_n_46;
  wire U_0_MULT_n_47;
  wire U_0_MULT_n_48;
  wire U_0_MULT_n_49;
  wire U_0_MULT_n_50;
  wire U_0_MULT_n_51;
  wire U_0_MULT_n_52;
  wire U_0_MULT_n_53;
  wire U_0_MULT_n_54;
  wire U_0_MULT_n_55;
  wire U_0_MULT_n_56;
  wire U_0_MULT_n_57;
  wire U_0_MULT_n_58;
  wire U_0_MULT_n_59;
  wire U_0_MULT_n_60;
  wire U_0_MULT_n_61;
  wire U_0_MULT_n_62;
  wire U_0_MULT_n_63;
  wire U_0_MULT_n_64;
  wire U_0_MULT_n_65;
  wire U_0_MULT_n_66;
  wire U_0_MULT_n_67;
  wire U_0_MULT_n_68;
  wire U_0_MULT_n_69;
  wire U_0_MULT_n_70;
  wire U_0_MULT_n_71;
  wire U_0_MULT_n_72;
  wire U_0_MULT_n_73;
  wire U_0_MULT_n_74;
  wire U_0_MULT_n_75;
  wire U_0_MULT_n_76;
  wire U_0_MULT_n_77;
  wire U_0_MULT_n_78;
  wire U_0_MULT_n_79;
  wire U_0_MULT_n_80;
  wire U_0_REG_n_100;
  wire U_0_REG_n_101;
  wire U_0_REG_n_102;
  wire U_0_REG_n_103;
  wire U_0_REG_n_104;
  wire U_0_REG_n_105;
  wire U_0_REG_n_106;
  wire U_0_REG_n_107;
  wire U_0_REG_n_108;
  wire U_0_REG_n_109;
  wire U_0_REG_n_110;
  wire U_0_REG_n_111;
  wire U_0_REG_n_112;
  wire U_0_REG_n_113;
  wire U_0_REG_n_114;
  wire U_0_REG_n_115;
  wire U_0_REG_n_116;
  wire U_0_REG_n_117;
  wire U_0_REG_n_118;
  wire U_0_REG_n_119;
  wire U_0_REG_n_120;
  wire U_0_REG_n_121;
  wire U_0_REG_n_122;
  wire U_0_REG_n_123;
  wire U_0_REG_n_124;
  wire U_0_REG_n_125;
  wire U_0_REG_n_126;
  wire U_0_REG_n_127;
  wire U_0_REG_n_128;
  wire U_0_REG_n_64;
  wire U_0_REG_n_65;
  wire U_0_REG_n_66;
  wire U_0_REG_n_67;
  wire U_0_REG_n_68;
  wire U_0_REG_n_69;
  wire U_0_REG_n_70;
  wire U_0_REG_n_71;
  wire U_0_REG_n_72;
  wire U_0_REG_n_73;
  wire U_0_REG_n_74;
  wire U_0_REG_n_75;
  wire U_0_REG_n_76;
  wire U_0_REG_n_77;
  wire U_0_REG_n_78;
  wire U_0_REG_n_79;
  wire U_0_REG_n_80;
  wire U_0_REG_n_81;
  wire U_0_REG_n_82;
  wire U_0_REG_n_83;
  wire U_0_REG_n_84;
  wire U_0_REG_n_85;
  wire U_0_REG_n_86;
  wire U_0_REG_n_87;
  wire U_0_REG_n_88;
  wire U_0_REG_n_89;
  wire U_0_REG_n_90;
  wire U_0_REG_n_91;
  wire U_0_REG_n_92;
  wire U_0_REG_n_93;
  wire U_0_REG_n_94;
  wire U_0_REG_n_95;
  wire U_0_REG_n_96;
  wire U_0_REG_n_97;
  wire U_0_REG_n_98;
  wire U_0_REG_n_99;
  wire U_1_ADD_n_0;
  wire U_1_ADD_n_1;
  wire U_1_ADD_n_10;
  wire U_1_ADD_n_11;
  wire U_1_ADD_n_12;
  wire U_1_ADD_n_13;
  wire U_1_ADD_n_14;
  wire U_1_ADD_n_15;
  wire U_1_ADD_n_16;
  wire U_1_ADD_n_17;
  wire U_1_ADD_n_18;
  wire U_1_ADD_n_19;
  wire U_1_ADD_n_2;
  wire U_1_ADD_n_20;
  wire U_1_ADD_n_21;
  wire U_1_ADD_n_22;
  wire U_1_ADD_n_23;
  wire U_1_ADD_n_24;
  wire U_1_ADD_n_25;
  wire U_1_ADD_n_26;
  wire U_1_ADD_n_27;
  wire U_1_ADD_n_28;
  wire U_1_ADD_n_29;
  wire U_1_ADD_n_3;
  wire U_1_ADD_n_30;
  wire U_1_ADD_n_31;
  wire U_1_ADD_n_32;
  wire U_1_ADD_n_33;
  wire U_1_ADD_n_34;
  wire U_1_ADD_n_35;
  wire U_1_ADD_n_36;
  wire U_1_ADD_n_37;
  wire U_1_ADD_n_38;
  wire U_1_ADD_n_39;
  wire U_1_ADD_n_4;
  wire U_1_ADD_n_40;
  wire U_1_ADD_n_41;
  wire U_1_ADD_n_42;
  wire U_1_ADD_n_43;
  wire U_1_ADD_n_44;
  wire U_1_ADD_n_45;
  wire U_1_ADD_n_46;
  wire U_1_ADD_n_47;
  wire U_1_ADD_n_48;
  wire U_1_ADD_n_49;
  wire U_1_ADD_n_5;
  wire U_1_ADD_n_50;
  wire U_1_ADD_n_51;
  wire U_1_ADD_n_52;
  wire U_1_ADD_n_53;
  wire U_1_ADD_n_54;
  wire U_1_ADD_n_55;
  wire U_1_ADD_n_56;
  wire U_1_ADD_n_57;
  wire U_1_ADD_n_58;
  wire U_1_ADD_n_59;
  wire U_1_ADD_n_6;
  wire U_1_ADD_n_60;
  wire U_1_ADD_n_61;
  wire U_1_ADD_n_62;
  wire U_1_ADD_n_63;
  wire U_1_ADD_n_7;
  wire U_1_ADD_n_8;
  wire U_1_ADD_n_9;
  wire U_1_MULT_n_1;
  wire U_1_MULT_n_10;
  wire U_1_MULT_n_11;
  wire U_1_MULT_n_12;
  wire U_1_MULT_n_13;
  wire U_1_MULT_n_14;
  wire U_1_MULT_n_15;
  wire U_1_MULT_n_16;
  wire U_1_MULT_n_17;
  wire U_1_MULT_n_18;
  wire U_1_MULT_n_19;
  wire U_1_MULT_n_2;
  wire U_1_MULT_n_20;
  wire U_1_MULT_n_21;
  wire U_1_MULT_n_22;
  wire U_1_MULT_n_23;
  wire U_1_MULT_n_24;
  wire U_1_MULT_n_25;
  wire U_1_MULT_n_26;
  wire U_1_MULT_n_27;
  wire U_1_MULT_n_28;
  wire U_1_MULT_n_29;
  wire U_1_MULT_n_3;
  wire U_1_MULT_n_30;
  wire U_1_MULT_n_31;
  wire U_1_MULT_n_32;
  wire U_1_MULT_n_33;
  wire U_1_MULT_n_34;
  wire U_1_MULT_n_35;
  wire U_1_MULT_n_36;
  wire U_1_MULT_n_37;
  wire U_1_MULT_n_38;
  wire U_1_MULT_n_39;
  wire U_1_MULT_n_4;
  wire U_1_MULT_n_40;
  wire U_1_MULT_n_41;
  wire U_1_MULT_n_42;
  wire U_1_MULT_n_43;
  wire U_1_MULT_n_44;
  wire U_1_MULT_n_45;
  wire U_1_MULT_n_46;
  wire U_1_MULT_n_47;
  wire U_1_MULT_n_48;
  wire U_1_MULT_n_49;
  wire U_1_MULT_n_5;
  wire U_1_MULT_n_50;
  wire U_1_MULT_n_51;
  wire U_1_MULT_n_52;
  wire U_1_MULT_n_53;
  wire U_1_MULT_n_54;
  wire U_1_MULT_n_55;
  wire U_1_MULT_n_56;
  wire U_1_MULT_n_57;
  wire U_1_MULT_n_58;
  wire U_1_MULT_n_59;
  wire U_1_MULT_n_6;
  wire U_1_MULT_n_60;
  wire U_1_MULT_n_61;
  wire U_1_MULT_n_62;
  wire U_1_MULT_n_63;
  wire U_1_MULT_n_64;
  wire U_1_MULT_n_7;
  wire U_1_MULT_n_8;
  wire U_1_MULT_n_9;
  wire U_1_REG_n_100;
  wire U_1_REG_n_101;
  wire U_1_REG_n_102;
  wire U_1_REG_n_103;
  wire U_1_REG_n_104;
  wire U_1_REG_n_105;
  wire U_1_REG_n_106;
  wire U_1_REG_n_107;
  wire U_1_REG_n_108;
  wire U_1_REG_n_109;
  wire U_1_REG_n_110;
  wire U_1_REG_n_111;
  wire U_1_REG_n_112;
  wire U_1_REG_n_113;
  wire U_1_REG_n_114;
  wire U_1_REG_n_115;
  wire U_1_REG_n_116;
  wire U_1_REG_n_117;
  wire U_1_REG_n_118;
  wire U_1_REG_n_119;
  wire U_1_REG_n_120;
  wire U_1_REG_n_121;
  wire U_1_REG_n_122;
  wire U_1_REG_n_123;
  wire U_1_REG_n_124;
  wire U_1_REG_n_125;
  wire U_1_REG_n_126;
  wire U_1_REG_n_127;
  wire U_1_REG_n_128;
  wire U_1_REG_n_64;
  wire U_1_REG_n_65;
  wire U_1_REG_n_66;
  wire U_1_REG_n_67;
  wire U_1_REG_n_68;
  wire U_1_REG_n_69;
  wire U_1_REG_n_70;
  wire U_1_REG_n_71;
  wire U_1_REG_n_72;
  wire U_1_REG_n_73;
  wire U_1_REG_n_74;
  wire U_1_REG_n_75;
  wire U_1_REG_n_76;
  wire U_1_REG_n_77;
  wire U_1_REG_n_78;
  wire U_1_REG_n_79;
  wire U_1_REG_n_80;
  wire U_1_REG_n_81;
  wire U_1_REG_n_82;
  wire U_1_REG_n_83;
  wire U_1_REG_n_84;
  wire U_1_REG_n_85;
  wire U_1_REG_n_86;
  wire U_1_REG_n_87;
  wire U_1_REG_n_88;
  wire U_1_REG_n_89;
  wire U_1_REG_n_90;
  wire U_1_REG_n_91;
  wire U_1_REG_n_92;
  wire U_1_REG_n_93;
  wire U_1_REG_n_94;
  wire U_1_REG_n_95;
  wire U_1_REG_n_96;
  wire U_1_REG_n_97;
  wire U_1_REG_n_98;
  wire U_1_REG_n_99;
  wire U_1_SUB_n_0;
  wire U_1_SUB_n_1;
  wire U_1_SUB_n_10;
  wire U_1_SUB_n_11;
  wire U_1_SUB_n_12;
  wire U_1_SUB_n_13;
  wire U_1_SUB_n_14;
  wire U_1_SUB_n_15;
  wire U_1_SUB_n_16;
  wire U_1_SUB_n_17;
  wire U_1_SUB_n_18;
  wire U_1_SUB_n_19;
  wire U_1_SUB_n_2;
  wire U_1_SUB_n_20;
  wire U_1_SUB_n_21;
  wire U_1_SUB_n_22;
  wire U_1_SUB_n_23;
  wire U_1_SUB_n_24;
  wire U_1_SUB_n_25;
  wire U_1_SUB_n_26;
  wire U_1_SUB_n_27;
  wire U_1_SUB_n_28;
  wire U_1_SUB_n_29;
  wire U_1_SUB_n_3;
  wire U_1_SUB_n_30;
  wire U_1_SUB_n_31;
  wire U_1_SUB_n_32;
  wire U_1_SUB_n_33;
  wire U_1_SUB_n_34;
  wire U_1_SUB_n_35;
  wire U_1_SUB_n_36;
  wire U_1_SUB_n_37;
  wire U_1_SUB_n_38;
  wire U_1_SUB_n_39;
  wire U_1_SUB_n_4;
  wire U_1_SUB_n_40;
  wire U_1_SUB_n_41;
  wire U_1_SUB_n_42;
  wire U_1_SUB_n_43;
  wire U_1_SUB_n_44;
  wire U_1_SUB_n_45;
  wire U_1_SUB_n_46;
  wire U_1_SUB_n_47;
  wire U_1_SUB_n_48;
  wire U_1_SUB_n_49;
  wire U_1_SUB_n_5;
  wire U_1_SUB_n_50;
  wire U_1_SUB_n_51;
  wire U_1_SUB_n_52;
  wire U_1_SUB_n_53;
  wire U_1_SUB_n_54;
  wire U_1_SUB_n_55;
  wire U_1_SUB_n_56;
  wire U_1_SUB_n_57;
  wire U_1_SUB_n_58;
  wire U_1_SUB_n_59;
  wire U_1_SUB_n_6;
  wire U_1_SUB_n_60;
  wire U_1_SUB_n_61;
  wire U_1_SUB_n_62;
  wire U_1_SUB_n_63;
  wire U_1_SUB_n_7;
  wire U_1_SUB_n_8;
  wire U_1_SUB_n_9;
  wire [63:63]b;
  wire [63:63]b__0;
  wire int_DELTA_U_WRT;
  wire int_J_M_WRT;
  wire int_J_P_WRT;
  wire int_RNG_CLK;
  wire int_U_WRT;
  wire [61:0]int_data_reg;
  wire [63:0]int_data_reg_reg;
  wire [15:0]\int_data_reg_reg[55] ;
  wire [63:0]int_data_reg_reg_0;
  wire [63:0]s0;

  system_SPGD_SYS_0_gen_reg DELTA_U_0_REG
       (.ADC_CLK(ADC_CLK),
        .Q({DELTA_U_0_REG_n_3,DELTA_U_0_REG_n_4,DELTA_U_0_REG_n_5,DELTA_U_0_REG_n_6,DELTA_U_0_REG_n_7,DELTA_U_0_REG_n_8,DELTA_U_0_REG_n_9,DELTA_U_0_REG_n_10,DELTA_U_0_REG_n_11,DELTA_U_0_REG_n_12,DELTA_U_0_REG_n_13,DELTA_U_0_REG_n_14,DELTA_U_0_REG_n_15,DELTA_U_0_REG_n_16,DELTA_U_0_REG_n_17,DELTA_U_0_REG_n_18,DELTA_U_0_REG_n_19,DELTA_U_0_REG_n_20,DELTA_U_0_REG_n_21,DELTA_U_0_REG_n_22,DELTA_U_0_REG_n_23,DELTA_U_0_REG_n_24,DELTA_U_0_REG_n_25,DELTA_U_0_REG_n_26,DELTA_U_0_REG_n_27,DELTA_U_0_REG_n_28,DELTA_U_0_REG_n_29,DELTA_U_0_REG_n_30,DELTA_U_0_REG_n_31,DELTA_U_0_REG_n_32,DELTA_U_0_REG_n_33,DELTA_U_0_REG_n_34,DELTA_U_0_REG_n_35,DELTA_U_0_REG_n_36,DELTA_U_0_REG_n_37,DELTA_U_0_REG_n_38,DELTA_U_0_REG_n_39,DELTA_U_0_REG_n_40,DELTA_U_0_REG_n_41,DELTA_U_0_REG_n_42,DELTA_U_0_REG_n_43,DELTA_U_0_REG_n_44,DELTA_U_0_REG_n_45,DELTA_U_0_REG_n_46,DELTA_U_0_REG_n_47,DELTA_U_0_REG_n_48,DELTA_U_0_REG_n_49}),
        .S({DELTA_U_0_REG_n_0,DELTA_U_0_REG_n_1,DELTA_U_0_REG_n_2}),
        .int_DELTA_U_WRT(int_DELTA_U_WRT),
        .int_data_reg_reg(int_data_reg_reg),
        .\int_data_reg_reg[11]_0 ({DELTA_U_0_REG_n_98,DELTA_U_0_REG_n_99,DELTA_U_0_REG_n_100,DELTA_U_0_REG_n_101}),
        .\int_data_reg_reg[15]_0 ({DELTA_U_0_REG_n_94,DELTA_U_0_REG_n_95,DELTA_U_0_REG_n_96,DELTA_U_0_REG_n_97}),
        .\int_data_reg_reg[19]_0 ({DELTA_U_0_REG_n_90,DELTA_U_0_REG_n_91,DELTA_U_0_REG_n_92,DELTA_U_0_REG_n_93}),
        .\int_data_reg_reg[23]_0 ({DELTA_U_0_REG_n_86,DELTA_U_0_REG_n_87,DELTA_U_0_REG_n_88,DELTA_U_0_REG_n_89}),
        .\int_data_reg_reg[27]_0 ({DELTA_U_0_REG_n_82,DELTA_U_0_REG_n_83,DELTA_U_0_REG_n_84,DELTA_U_0_REG_n_85}),
        .\int_data_reg_reg[31]_0 ({DELTA_U_0_REG_n_78,DELTA_U_0_REG_n_79,DELTA_U_0_REG_n_80,DELTA_U_0_REG_n_81}),
        .\int_data_reg_reg[35]_0 ({DELTA_U_0_REG_n_74,DELTA_U_0_REG_n_75,DELTA_U_0_REG_n_76,DELTA_U_0_REG_n_77}),
        .\int_data_reg_reg[39]_0 ({DELTA_U_0_REG_n_70,DELTA_U_0_REG_n_71,DELTA_U_0_REG_n_72,DELTA_U_0_REG_n_73}),
        .\int_data_reg_reg[3]_0 ({DELTA_U_0_REG_n_106,DELTA_U_0_REG_n_107,DELTA_U_0_REG_n_108,DELTA_U_0_REG_n_109}),
        .\int_data_reg_reg[43]_0 ({DELTA_U_0_REG_n_66,DELTA_U_0_REG_n_67,DELTA_U_0_REG_n_68,DELTA_U_0_REG_n_69}),
        .\int_data_reg_reg[63]_0 ({DELTA_U_0_REG_n_50,DELTA_U_0_REG_n_51,DELTA_U_0_REG_n_52,DELTA_U_0_REG_n_53}),
        .\int_data_reg_reg[63]_1 ({DELTA_U_0_REG_n_54,DELTA_U_0_REG_n_55,DELTA_U_0_REG_n_56,DELTA_U_0_REG_n_57}),
        .\int_data_reg_reg[63]_2 ({DELTA_U_0_REG_n_58,DELTA_U_0_REG_n_59,DELTA_U_0_REG_n_60,DELTA_U_0_REG_n_61}),
        .\int_data_reg_reg[63]_3 ({DELTA_U_0_REG_n_62,DELTA_U_0_REG_n_63,DELTA_U_0_REG_n_64,DELTA_U_0_REG_n_65}),
        .\int_data_reg_reg[63]_4 (DELTA_U_0_REG_n_110),
        .\int_data_reg_reg[63]_5 (REG_RESET),
        .\int_data_reg_reg[7]_0 ({DELTA_U_0_REG_n_102,DELTA_U_0_REG_n_103,DELTA_U_0_REG_n_104,DELTA_U_0_REG_n_105}),
        .p0({PRNG_0_n_0,PRNG_0_n_1,PRNG_0_n_2,PRNG_0_n_3,PRNG_0_n_4,PRNG_0_n_5,PRNG_0_n_6,PRNG_0_n_7,PRNG_0_n_8,PRNG_0_n_9,PRNG_0_n_10,PRNG_0_n_11,PRNG_0_n_12,PRNG_0_n_13,PRNG_0_n_14,PRNG_0_n_15,PRNG_0_n_16,PRNG_0_n_17,PRNG_0_n_18,PRNG_0_n_19,PRNG_0_n_20,PRNG_0_n_21,PRNG_0_n_22,PRNG_0_n_23,PRNG_0_n_24,PRNG_0_n_25,PRNG_0_n_26,PRNG_0_n_27,PRNG_0_n_28,PRNG_0_n_29,PRNG_0_n_30,PRNG_0_n_31,PRNG_0_n_32,PRNG_0_n_33,PRNG_0_n_34,PRNG_0_n_35,PRNG_0_n_36,PRNG_0_n_37,PRNG_0_n_38,PRNG_0_n_39,PRNG_0_n_40,PRNG_0_n_41,PRNG_0_n_42,PRNG_0_n_43,PRNG_0_n_44,PRNG_0_n_45,PRNG_0_n_46}));
  system_SPGD_SYS_0_gen_reg_0 DELTA_U_1_REG
       (.ADC_CLK(ADC_CLK),
        .Q({DELTA_U_1_REG_n_3,DELTA_U_1_REG_n_4,DELTA_U_1_REG_n_5,DELTA_U_1_REG_n_6,DELTA_U_1_REG_n_7,DELTA_U_1_REG_n_8,DELTA_U_1_REG_n_9,DELTA_U_1_REG_n_10,DELTA_U_1_REG_n_11,DELTA_U_1_REG_n_12,DELTA_U_1_REG_n_13,DELTA_U_1_REG_n_14,DELTA_U_1_REG_n_15,DELTA_U_1_REG_n_16,DELTA_U_1_REG_n_17,DELTA_U_1_REG_n_18,DELTA_U_1_REG_n_19,DELTA_U_1_REG_n_20,DELTA_U_1_REG_n_21,DELTA_U_1_REG_n_22,DELTA_U_1_REG_n_23,DELTA_U_1_REG_n_24,DELTA_U_1_REG_n_25,DELTA_U_1_REG_n_26,DELTA_U_1_REG_n_27,DELTA_U_1_REG_n_28,DELTA_U_1_REG_n_29,DELTA_U_1_REG_n_30,DELTA_U_1_REG_n_31,DELTA_U_1_REG_n_32,DELTA_U_1_REG_n_33,DELTA_U_1_REG_n_34,DELTA_U_1_REG_n_35,DELTA_U_1_REG_n_36,DELTA_U_1_REG_n_37,DELTA_U_1_REG_n_38,DELTA_U_1_REG_n_39,DELTA_U_1_REG_n_40,DELTA_U_1_REG_n_41,DELTA_U_1_REG_n_42,DELTA_U_1_REG_n_43,DELTA_U_1_REG_n_44,DELTA_U_1_REG_n_45,DELTA_U_1_REG_n_46,DELTA_U_1_REG_n_47,DELTA_U_1_REG_n_48,DELTA_U_1_REG_n_49}),
        .S({DELTA_U_1_REG_n_0,DELTA_U_1_REG_n_1,DELTA_U_1_REG_n_2}),
        .int_DELTA_U_WRT(int_DELTA_U_WRT),
        .int_data_reg_reg(int_data_reg_reg_0),
        .\int_data_reg_reg[0]_0 (REG_RESET),
        .\int_data_reg_reg[11]_0 ({DELTA_U_1_REG_n_98,DELTA_U_1_REG_n_99,DELTA_U_1_REG_n_100,DELTA_U_1_REG_n_101}),
        .\int_data_reg_reg[15]_0 ({DELTA_U_1_REG_n_94,DELTA_U_1_REG_n_95,DELTA_U_1_REG_n_96,DELTA_U_1_REG_n_97}),
        .\int_data_reg_reg[19]_0 ({DELTA_U_1_REG_n_90,DELTA_U_1_REG_n_91,DELTA_U_1_REG_n_92,DELTA_U_1_REG_n_93}),
        .\int_data_reg_reg[23]_0 ({DELTA_U_1_REG_n_86,DELTA_U_1_REG_n_87,DELTA_U_1_REG_n_88,DELTA_U_1_REG_n_89}),
        .\int_data_reg_reg[27]_0 ({DELTA_U_1_REG_n_82,DELTA_U_1_REG_n_83,DELTA_U_1_REG_n_84,DELTA_U_1_REG_n_85}),
        .\int_data_reg_reg[31]_0 ({DELTA_U_1_REG_n_78,DELTA_U_1_REG_n_79,DELTA_U_1_REG_n_80,DELTA_U_1_REG_n_81}),
        .\int_data_reg_reg[35]_0 ({DELTA_U_1_REG_n_74,DELTA_U_1_REG_n_75,DELTA_U_1_REG_n_76,DELTA_U_1_REG_n_77}),
        .\int_data_reg_reg[39]_0 ({DELTA_U_1_REG_n_70,DELTA_U_1_REG_n_71,DELTA_U_1_REG_n_72,DELTA_U_1_REG_n_73}),
        .\int_data_reg_reg[3]_0 ({DELTA_U_1_REG_n_106,DELTA_U_1_REG_n_107,DELTA_U_1_REG_n_108,DELTA_U_1_REG_n_109}),
        .\int_data_reg_reg[43]_0 ({DELTA_U_1_REG_n_66,DELTA_U_1_REG_n_67,DELTA_U_1_REG_n_68,DELTA_U_1_REG_n_69}),
        .\int_data_reg_reg[63]_0 ({DELTA_U_1_REG_n_50,DELTA_U_1_REG_n_51,DELTA_U_1_REG_n_52,DELTA_U_1_REG_n_53}),
        .\int_data_reg_reg[63]_1 ({DELTA_U_1_REG_n_54,DELTA_U_1_REG_n_55,DELTA_U_1_REG_n_56,DELTA_U_1_REG_n_57}),
        .\int_data_reg_reg[63]_2 ({DELTA_U_1_REG_n_58,DELTA_U_1_REG_n_59,DELTA_U_1_REG_n_60,DELTA_U_1_REG_n_61}),
        .\int_data_reg_reg[63]_3 ({DELTA_U_1_REG_n_62,DELTA_U_1_REG_n_63,DELTA_U_1_REG_n_64,DELTA_U_1_REG_n_65}),
        .\int_data_reg_reg[63]_4 (DELTA_U_1_REG_n_110),
        .\int_data_reg_reg[7]_0 ({DELTA_U_1_REG_n_102,DELTA_U_1_REG_n_103,DELTA_U_1_REG_n_104,DELTA_U_1_REG_n_105}),
        .p0({PRNG_0_n_47,PRNG_0_n_48,PRNG_0_n_49,PRNG_0_n_50,PRNG_0_n_51,PRNG_0_n_52,PRNG_0_n_53,PRNG_0_n_54,PRNG_0_n_55,PRNG_0_n_56,PRNG_0_n_57,PRNG_0_n_58,PRNG_0_n_59,PRNG_0_n_60,PRNG_0_n_61,PRNG_0_n_62,PRNG_0_n_63,PRNG_0_n_64,PRNG_0_n_65,PRNG_0_n_66,PRNG_0_n_67,PRNG_0_n_68,PRNG_0_n_69,PRNG_0_n_70,PRNG_0_n_71,PRNG_0_n_72,PRNG_0_n_73,PRNG_0_n_74,PRNG_0_n_75,PRNG_0_n_76,PRNG_0_n_77,PRNG_0_n_78,PRNG_0_n_79,PRNG_0_n_80,PRNG_0_n_81,PRNG_0_n_82,PRNG_0_n_83,PRNG_0_n_84,PRNG_0_n_85,PRNG_0_n_86,PRNG_0_n_87,PRNG_0_n_88,PRNG_0_n_89,PRNG_0_n_90,PRNG_0_n_91,PRNG_0_n_92,PRNG_0_n_93}));
  system_SPGD_SYS_0_SPGD_FSM FSM_0
       (.ADC_CLK(ADC_CLK),
        .ADC_DONE(ADC_DONE),
        .ADC_EN(ADC_EN),
        .DAC_A_OUT(DAC_A_OUT),
        .\DAC_A_OUT[11] ({U_0_ADD_n_8,U_0_ADD_n_9,U_0_ADD_n_10,U_0_ADD_n_11}),
        .\DAC_A_OUT[15] ({U_0_ADD_n_12,U_0_ADD_n_13,U_0_ADD_n_14,U_0_ADD_n_15}),
        .\DAC_A_OUT[19] ({U_0_ADD_n_16,U_0_ADD_n_17,U_0_ADD_n_18,U_0_ADD_n_19}),
        .\DAC_A_OUT[23] ({U_0_ADD_n_20,U_0_ADD_n_21,U_0_ADD_n_22,U_0_ADD_n_23}),
        .\DAC_A_OUT[27] ({U_0_ADD_n_24,U_0_ADD_n_25,U_0_ADD_n_26,U_0_ADD_n_27}),
        .\DAC_A_OUT[31] ({U_0_ADD_n_28,U_0_ADD_n_29,U_0_ADD_n_30,U_0_ADD_n_31}),
        .\DAC_A_OUT[35] ({U_0_ADD_n_32,U_0_ADD_n_33,U_0_ADD_n_34,U_0_ADD_n_35}),
        .\DAC_A_OUT[39] ({U_0_ADD_n_36,U_0_ADD_n_37,U_0_ADD_n_38,U_0_ADD_n_39}),
        .\DAC_A_OUT[3] ({U_0_ADD_n_0,U_0_ADD_n_1,U_0_ADD_n_2,U_0_ADD_n_3}),
        .\DAC_A_OUT[43] ({U_0_ADD_n_40,U_0_ADD_n_41,U_0_ADD_n_42,U_0_ADD_n_43}),
        .\DAC_A_OUT[47] ({U_0_ADD_n_44,U_0_ADD_n_45,U_0_ADD_n_46,U_0_ADD_n_47}),
        .\DAC_A_OUT[51] ({U_0_ADD_n_48,U_0_ADD_n_49,U_0_ADD_n_50,U_0_ADD_n_51}),
        .\DAC_A_OUT[55] ({U_0_ADD_n_52,U_0_ADD_n_53,U_0_ADD_n_54,U_0_ADD_n_55}),
        .\DAC_A_OUT[59] ({U_0_ADD_n_56,U_0_ADD_n_57,U_0_ADD_n_58,U_0_ADD_n_59}),
        .\DAC_A_OUT[7] ({U_0_ADD_n_4,U_0_ADD_n_5,U_0_ADD_n_6,U_0_ADD_n_7}),
        .DAC_B_OUT(DAC_B_OUT),
        .\DAC_B_OUT[11] ({U_1_ADD_n_8,U_1_ADD_n_9,U_1_ADD_n_10,U_1_ADD_n_11}),
        .\DAC_B_OUT[11]_0 ({U_1_SUB_n_8,U_1_SUB_n_9,U_1_SUB_n_10,U_1_SUB_n_11}),
        .\DAC_B_OUT[15] ({U_1_ADD_n_12,U_1_ADD_n_13,U_1_ADD_n_14,U_1_ADD_n_15}),
        .\DAC_B_OUT[15]_0 ({U_1_SUB_n_12,U_1_SUB_n_13,U_1_SUB_n_14,U_1_SUB_n_15}),
        .\DAC_B_OUT[19] ({U_1_ADD_n_16,U_1_ADD_n_17,U_1_ADD_n_18,U_1_ADD_n_19}),
        .\DAC_B_OUT[19]_0 ({U_1_SUB_n_16,U_1_SUB_n_17,U_1_SUB_n_18,U_1_SUB_n_19}),
        .\DAC_B_OUT[23] ({U_1_ADD_n_20,U_1_ADD_n_21,U_1_ADD_n_22,U_1_ADD_n_23}),
        .\DAC_B_OUT[23]_0 ({U_1_SUB_n_20,U_1_SUB_n_21,U_1_SUB_n_22,U_1_SUB_n_23}),
        .\DAC_B_OUT[27] ({U_1_ADD_n_24,U_1_ADD_n_25,U_1_ADD_n_26,U_1_ADD_n_27}),
        .\DAC_B_OUT[27]_0 ({U_1_SUB_n_24,U_1_SUB_n_25,U_1_SUB_n_26,U_1_SUB_n_27}),
        .\DAC_B_OUT[31] ({U_1_ADD_n_28,U_1_ADD_n_29,U_1_ADD_n_30,U_1_ADD_n_31}),
        .\DAC_B_OUT[31]_0 ({U_1_SUB_n_28,U_1_SUB_n_29,U_1_SUB_n_30,U_1_SUB_n_31}),
        .\DAC_B_OUT[35] ({U_1_ADD_n_32,U_1_ADD_n_33,U_1_ADD_n_34,U_1_ADD_n_35}),
        .\DAC_B_OUT[35]_0 ({U_1_SUB_n_32,U_1_SUB_n_33,U_1_SUB_n_34,U_1_SUB_n_35}),
        .\DAC_B_OUT[39] ({U_1_ADD_n_36,U_1_ADD_n_37,U_1_ADD_n_38,U_1_ADD_n_39}),
        .\DAC_B_OUT[39]_0 ({U_1_SUB_n_36,U_1_SUB_n_37,U_1_SUB_n_38,U_1_SUB_n_39}),
        .\DAC_B_OUT[3] ({U_1_ADD_n_0,U_1_ADD_n_1,U_1_ADD_n_2,U_1_ADD_n_3}),
        .\DAC_B_OUT[3]_0 ({U_1_SUB_n_0,U_1_SUB_n_1,U_1_SUB_n_2,U_1_SUB_n_3}),
        .\DAC_B_OUT[43] ({U_1_ADD_n_40,U_1_ADD_n_41,U_1_ADD_n_42,U_1_ADD_n_43}),
        .\DAC_B_OUT[43]_0 ({U_1_SUB_n_40,U_1_SUB_n_41,U_1_SUB_n_42,U_1_SUB_n_43}),
        .\DAC_B_OUT[47] ({U_1_ADD_n_44,U_1_ADD_n_45,U_1_ADD_n_46,U_1_ADD_n_47}),
        .\DAC_B_OUT[47]_0 ({U_1_SUB_n_44,U_1_SUB_n_45,U_1_SUB_n_46,U_1_SUB_n_47}),
        .\DAC_B_OUT[51] ({U_1_ADD_n_48,U_1_ADD_n_49,U_1_ADD_n_50,U_1_ADD_n_51}),
        .\DAC_B_OUT[51]_0 ({U_1_SUB_n_48,U_1_SUB_n_49,U_1_SUB_n_50,U_1_SUB_n_51}),
        .\DAC_B_OUT[55] ({U_1_ADD_n_52,U_1_ADD_n_53,U_1_ADD_n_54,U_1_ADD_n_55}),
        .\DAC_B_OUT[55]_0 ({U_1_SUB_n_52,U_1_SUB_n_53,U_1_SUB_n_54,U_1_SUB_n_55}),
        .\DAC_B_OUT[59] ({U_1_ADD_n_56,U_1_ADD_n_57,U_1_ADD_n_58,U_1_ADD_n_59}),
        .\DAC_B_OUT[59]_0 ({U_1_SUB_n_56,U_1_SUB_n_57,U_1_SUB_n_58,U_1_SUB_n_59}),
        .\DAC_B_OUT[63] ({U_1_ADD_n_60,U_1_ADD_n_61,U_1_ADD_n_62,U_1_ADD_n_63}),
        .\DAC_B_OUT[63]_0 ({U_1_SUB_n_60,U_1_SUB_n_61,U_1_SUB_n_62,U_1_SUB_n_63}),
        .\DAC_B_OUT[7] ({U_1_ADD_n_4,U_1_ADD_n_5,U_1_ADD_n_6,U_1_ADD_n_7}),
        .\DAC_B_OUT[7]_0 ({U_1_SUB_n_4,U_1_SUB_n_5,U_1_SUB_n_6,U_1_SUB_n_7}),
        .E(int_J_M_WRT),
        .GP_IN(GP_IN),
        .LED_O(LED_O),
        .O({U_0_ADD_n_60,U_0_ADD_n_61,U_0_ADD_n_62,U_0_ADD_n_63}),
        .int_DELTA_U_WRT(int_DELTA_U_WRT),
        .int_J_P_WRT_reg_0(int_J_P_WRT),
        .int_REG_RST_reg_0(REG_RESET),
        .int_RNG_CLK(int_RNG_CLK),
        .int_U_WRT(int_U_WRT),
        .int_data_reg_reg(int_data_reg_reg),
        .int_data_reg_reg_0(int_data_reg_reg_0),
        .s0(s0));
  system_SPGD_SYS_0_gen_reg_1 J_M_REG
       (.ADC_CLK(ADC_CLK),
        .ADC_IN(ADC_IN),
        .E(int_J_M_WRT),
        .Q(int_data_reg),
        .\int_data_reg_reg[61]_0 (REG_RESET));
  system_SPGD_SYS_0_gen_reg_2 J_P_REG
       (.ADC_CLK(ADC_CLK),
        .ADC_IN(ADC_IN),
        .E(int_J_P_WRT),
        .Q({J_P_REG_n_4,J_P_REG_n_5,J_P_REG_n_6,J_P_REG_n_7,J_P_REG_n_8,J_P_REG_n_9,J_P_REG_n_10,J_P_REG_n_11,J_P_REG_n_12,J_P_REG_n_13,J_P_REG_n_14,J_P_REG_n_15,J_P_REG_n_16,J_P_REG_n_17,J_P_REG_n_18,J_P_REG_n_19,J_P_REG_n_20,J_P_REG_n_21,J_P_REG_n_22,J_P_REG_n_23,J_P_REG_n_24,J_P_REG_n_25,J_P_REG_n_26,J_P_REG_n_27,J_P_REG_n_28,J_P_REG_n_29,J_P_REG_n_30,J_P_REG_n_31,J_P_REG_n_32,J_P_REG_n_33,J_P_REG_n_34,J_P_REG_n_35,J_P_REG_n_36,J_P_REG_n_37,J_P_REG_n_38,J_P_REG_n_39,J_P_REG_n_40,J_P_REG_n_41,J_P_REG_n_42,J_P_REG_n_43,J_P_REG_n_44,J_P_REG_n_45,J_P_REG_n_46,J_P_REG_n_47,J_P_REG_n_48,J_P_REG_n_49,J_P_REG_n_50,J_P_REG_n_51,J_P_REG_n_52,J_P_REG_n_53,J_P_REG_n_54,J_P_REG_n_55,J_P_REG_n_56,J_P_REG_n_57,J_P_REG_n_58,J_P_REG_n_59,J_P_REG_n_60,J_P_REG_n_61,J_P_REG_n_62,J_P_REG_n_63,J_P_REG_n_64}),
        .S({J_P_REG_n_0,J_P_REG_n_1,J_P_REG_n_2,J_P_REG_n_3}),
        .\int_data_reg_reg[0]_0 (REG_RESET),
        .\int_data_reg_reg[11]_0 ({J_P_REG_n_69,J_P_REG_n_70,J_P_REG_n_71,J_P_REG_n_72}),
        .\int_data_reg_reg[15]_0 ({J_P_REG_n_73,J_P_REG_n_74,J_P_REG_n_75,J_P_REG_n_76}),
        .\int_data_reg_reg[19]_0 ({J_P_REG_n_77,J_P_REG_n_78,J_P_REG_n_79,J_P_REG_n_80}),
        .\int_data_reg_reg[23]_0 ({J_P_REG_n_81,J_P_REG_n_82,J_P_REG_n_83,J_P_REG_n_84}),
        .\int_data_reg_reg[27]_0 ({J_P_REG_n_85,J_P_REG_n_86,J_P_REG_n_87,J_P_REG_n_88}),
        .\int_data_reg_reg[31]_0 ({J_P_REG_n_89,J_P_REG_n_90,J_P_REG_n_91,J_P_REG_n_92}),
        .\int_data_reg_reg[35]_0 ({J_P_REG_n_93,J_P_REG_n_94,J_P_REG_n_95,J_P_REG_n_96}),
        .\int_data_reg_reg[39]_0 ({J_P_REG_n_97,J_P_REG_n_98,J_P_REG_n_99,J_P_REG_n_100}),
        .\int_data_reg_reg[43]_0 ({J_P_REG_n_101,J_P_REG_n_102,J_P_REG_n_103,J_P_REG_n_104}),
        .\int_data_reg_reg[47]_0 ({J_P_REG_n_105,J_P_REG_n_106,J_P_REG_n_107,J_P_REG_n_108}),
        .\int_data_reg_reg[51]_0 ({J_P_REG_n_109,J_P_REG_n_110,J_P_REG_n_111,J_P_REG_n_112}),
        .\int_data_reg_reg[55]_0 ({J_P_REG_n_113,J_P_REG_n_114,J_P_REG_n_115,J_P_REG_n_116}),
        .\int_data_reg_reg[59]_0 ({J_P_REG_n_117,J_P_REG_n_118,J_P_REG_n_119,J_P_REG_n_120}),
        .\int_data_reg_reg[61]_0 ({J_P_REG_n_121,J_P_REG_n_122}),
        .\int_data_reg_reg[7]_0 ({J_P_REG_n_65,J_P_REG_n_66,J_P_REG_n_67,J_P_REG_n_68}),
        .p0__0(int_data_reg));
  system_SPGD_SYS_0_gen_subber J_SUB
       (.I7({J_P_REG_n_4,J_P_REG_n_5,J_P_REG_n_6,J_P_REG_n_7,J_P_REG_n_8,J_P_REG_n_9,J_P_REG_n_10,J_P_REG_n_11,J_P_REG_n_12,J_P_REG_n_13,J_P_REG_n_14,J_P_REG_n_15,J_P_REG_n_16,J_P_REG_n_17,J_P_REG_n_18,J_P_REG_n_19,J_P_REG_n_20,J_P_REG_n_21,J_P_REG_n_22,J_P_REG_n_23,J_P_REG_n_24,J_P_REG_n_25,J_P_REG_n_26,J_P_REG_n_27,J_P_REG_n_28,J_P_REG_n_29,J_P_REG_n_30,J_P_REG_n_31,J_P_REG_n_32,J_P_REG_n_33,J_P_REG_n_34,J_P_REG_n_35,J_P_REG_n_36,J_P_REG_n_37,J_P_REG_n_38,J_P_REG_n_39,J_P_REG_n_40,J_P_REG_n_41,J_P_REG_n_42,J_P_REG_n_43,J_P_REG_n_44,J_P_REG_n_45,J_P_REG_n_46,J_P_REG_n_47,J_P_REG_n_48,J_P_REG_n_49,J_P_REG_n_50,J_P_REG_n_51,J_P_REG_n_52,J_P_REG_n_53,J_P_REG_n_54,J_P_REG_n_55,J_P_REG_n_56,J_P_REG_n_57,J_P_REG_n_58,J_P_REG_n_59,J_P_REG_n_60,J_P_REG_n_61,J_P_REG_n_62,J_P_REG_n_63,J_P_REG_n_64}),
        .S({J_P_REG_n_0,J_P_REG_n_1,J_P_REG_n_2,J_P_REG_n_3}),
        .p0({\J_MULT/p0 [61:56],\int_data_reg_reg[55] ,\J_MULT/p0 [39:0]}),
        .p0__0({J_P_REG_n_117,J_P_REG_n_118,J_P_REG_n_119,J_P_REG_n_120}),
        .p0__0_0({J_P_REG_n_121,J_P_REG_n_122}),
        .p0__0__0({J_P_REG_n_93,J_P_REG_n_94,J_P_REG_n_95,J_P_REG_n_96}),
        .p0__0__0_0({J_P_REG_n_97,J_P_REG_n_98,J_P_REG_n_99,J_P_REG_n_100}),
        .p0__4({J_P_REG_n_109,J_P_REG_n_110,J_P_REG_n_111,J_P_REG_n_112}),
        .p0__4_0({J_P_REG_n_113,J_P_REG_n_114,J_P_REG_n_115,J_P_REG_n_116}),
        .p0__5({J_P_REG_n_73,J_P_REG_n_74,J_P_REG_n_75,J_P_REG_n_76}),
        .p0__5_0({J_P_REG_n_77,J_P_REG_n_78,J_P_REG_n_79,J_P_REG_n_80}),
        .p0__5_1({J_P_REG_n_81,J_P_REG_n_82,J_P_REG_n_83,J_P_REG_n_84}),
        .p0__5_2({J_P_REG_n_85,J_P_REG_n_86,J_P_REG_n_87,J_P_REG_n_88}),
        .p0__5_3({J_P_REG_n_89,J_P_REG_n_90,J_P_REG_n_91,J_P_REG_n_92}),
        .p0__8({J_P_REG_n_101,J_P_REG_n_102,J_P_REG_n_103,J_P_REG_n_104}),
        .p0__8_0({J_P_REG_n_105,J_P_REG_n_106,J_P_REG_n_107,J_P_REG_n_108}),
        .p0__9({J_P_REG_n_65,J_P_REG_n_66,J_P_REG_n_67,J_P_REG_n_68}),
        .p0__9_0({J_P_REG_n_69,J_P_REG_n_70,J_P_REG_n_71,J_P_REG_n_72}));
  system_SPGD_SYS_0_PRNG PRNG_0
       (.int_RNG_CLK(int_RNG_CLK),
        .p0({PRNG_0_n_0,PRNG_0_n_1,PRNG_0_n_2,PRNG_0_n_3,PRNG_0_n_4,PRNG_0_n_5,PRNG_0_n_6,PRNG_0_n_7,PRNG_0_n_8,PRNG_0_n_9,PRNG_0_n_10,PRNG_0_n_11,PRNG_0_n_12,PRNG_0_n_13,PRNG_0_n_14,PRNG_0_n_15,PRNG_0_n_16,PRNG_0_n_17,PRNG_0_n_18,PRNG_0_n_19,PRNG_0_n_20,PRNG_0_n_21,PRNG_0_n_22,PRNG_0_n_23,PRNG_0_n_24,PRNG_0_n_25,PRNG_0_n_26,PRNG_0_n_27,PRNG_0_n_28,PRNG_0_n_29,PRNG_0_n_30,PRNG_0_n_31,PRNG_0_n_32,PRNG_0_n_33,PRNG_0_n_34,PRNG_0_n_35,PRNG_0_n_36,PRNG_0_n_37,PRNG_0_n_38,PRNG_0_n_39,PRNG_0_n_40,PRNG_0_n_41,PRNG_0_n_42,PRNG_0_n_43,PRNG_0_n_44,PRNG_0_n_45,PRNG_0_n_46}),
        .p0_0({PRNG_0_n_47,PRNG_0_n_48,PRNG_0_n_49,PRNG_0_n_50,PRNG_0_n_51,PRNG_0_n_52,PRNG_0_n_53,PRNG_0_n_54,PRNG_0_n_55,PRNG_0_n_56,PRNG_0_n_57,PRNG_0_n_58,PRNG_0_n_59,PRNG_0_n_60,PRNG_0_n_61,PRNG_0_n_62,PRNG_0_n_63,PRNG_0_n_64,PRNG_0_n_65,PRNG_0_n_66,PRNG_0_n_67,PRNG_0_n_68,PRNG_0_n_69,PRNG_0_n_70,PRNG_0_n_71,PRNG_0_n_72,PRNG_0_n_73,PRNG_0_n_74,PRNG_0_n_75,PRNG_0_n_76,PRNG_0_n_77,PRNG_0_n_78,PRNG_0_n_79,PRNG_0_n_80,PRNG_0_n_81,PRNG_0_n_82,PRNG_0_n_83,PRNG_0_n_84,PRNG_0_n_85,PRNG_0_n_86,PRNG_0_n_87,PRNG_0_n_88,PRNG_0_n_89,PRNG_0_n_90,PRNG_0_n_91,PRNG_0_n_92,PRNG_0_n_93}),
        .\rand_reg[26] (REG_RESET));
  system_SPGD_SYS_0_gen_adder__parameterized0 U_0_ADD
       (.\DAC_A_OUT[11] ({DELTA_U_0_REG_n_98,DELTA_U_0_REG_n_99,DELTA_U_0_REG_n_100,DELTA_U_0_REG_n_101}),
        .\DAC_A_OUT[15] ({DELTA_U_0_REG_n_94,DELTA_U_0_REG_n_95,DELTA_U_0_REG_n_96,DELTA_U_0_REG_n_97}),
        .\DAC_A_OUT[19] ({DELTA_U_0_REG_n_90,DELTA_U_0_REG_n_91,DELTA_U_0_REG_n_92,DELTA_U_0_REG_n_93}),
        .\DAC_A_OUT[23] ({DELTA_U_0_REG_n_86,DELTA_U_0_REG_n_87,DELTA_U_0_REG_n_88,DELTA_U_0_REG_n_89}),
        .\DAC_A_OUT[27] ({DELTA_U_0_REG_n_82,DELTA_U_0_REG_n_83,DELTA_U_0_REG_n_84,DELTA_U_0_REG_n_85}),
        .\DAC_A_OUT[31] ({DELTA_U_0_REG_n_78,DELTA_U_0_REG_n_79,DELTA_U_0_REG_n_80,DELTA_U_0_REG_n_81}),
        .\DAC_A_OUT[35] ({DELTA_U_0_REG_n_74,DELTA_U_0_REG_n_75,DELTA_U_0_REG_n_76,DELTA_U_0_REG_n_77}),
        .\DAC_A_OUT[39] ({DELTA_U_0_REG_n_70,DELTA_U_0_REG_n_71,DELTA_U_0_REG_n_72,DELTA_U_0_REG_n_73}),
        .\DAC_A_OUT[3] ({DELTA_U_0_REG_n_106,DELTA_U_0_REG_n_107,DELTA_U_0_REG_n_108,DELTA_U_0_REG_n_109}),
        .\DAC_A_OUT[43] ({DELTA_U_0_REG_n_66,DELTA_U_0_REG_n_67,DELTA_U_0_REG_n_68,DELTA_U_0_REG_n_69}),
        .\DAC_A_OUT[47] ({DELTA_U_0_REG_n_62,DELTA_U_0_REG_n_63,DELTA_U_0_REG_n_64,DELTA_U_0_REG_n_65}),
        .\DAC_A_OUT[51] ({DELTA_U_0_REG_n_58,DELTA_U_0_REG_n_59,DELTA_U_0_REG_n_60,DELTA_U_0_REG_n_61}),
        .\DAC_A_OUT[55] ({DELTA_U_0_REG_n_54,DELTA_U_0_REG_n_55,DELTA_U_0_REG_n_56,DELTA_U_0_REG_n_57}),
        .\DAC_A_OUT[59] ({DELTA_U_0_REG_n_50,DELTA_U_0_REG_n_51,DELTA_U_0_REG_n_52,DELTA_U_0_REG_n_53}),
        .\DAC_A_OUT[7] ({DELTA_U_0_REG_n_102,DELTA_U_0_REG_n_103,DELTA_U_0_REG_n_104,DELTA_U_0_REG_n_105}),
        .O({U_0_ADD_n_60,U_0_ADD_n_61,U_0_ADD_n_62,U_0_ADD_n_63}),
        .S({U_0_REG_n_128,DELTA_U_0_REG_n_0,DELTA_U_0_REG_n_1,DELTA_U_0_REG_n_2}),
        .int_data_reg_reg(int_data_reg_reg[62:0]),
        .\int_data_reg_reg[11] ({U_0_ADD_n_8,U_0_ADD_n_9,U_0_ADD_n_10,U_0_ADD_n_11}),
        .\int_data_reg_reg[15] ({U_0_ADD_n_12,U_0_ADD_n_13,U_0_ADD_n_14,U_0_ADD_n_15}),
        .\int_data_reg_reg[19] ({U_0_ADD_n_16,U_0_ADD_n_17,U_0_ADD_n_18,U_0_ADD_n_19}),
        .\int_data_reg_reg[23] ({U_0_ADD_n_20,U_0_ADD_n_21,U_0_ADD_n_22,U_0_ADD_n_23}),
        .\int_data_reg_reg[27] ({U_0_ADD_n_24,U_0_ADD_n_25,U_0_ADD_n_26,U_0_ADD_n_27}),
        .\int_data_reg_reg[31] ({U_0_ADD_n_28,U_0_ADD_n_29,U_0_ADD_n_30,U_0_ADD_n_31}),
        .\int_data_reg_reg[35] ({U_0_ADD_n_32,U_0_ADD_n_33,U_0_ADD_n_34,U_0_ADD_n_35}),
        .\int_data_reg_reg[39] ({U_0_ADD_n_36,U_0_ADD_n_37,U_0_ADD_n_38,U_0_ADD_n_39}),
        .\int_data_reg_reg[3] ({U_0_ADD_n_0,U_0_ADD_n_1,U_0_ADD_n_2,U_0_ADD_n_3}),
        .\int_data_reg_reg[43] ({U_0_ADD_n_40,U_0_ADD_n_41,U_0_ADD_n_42,U_0_ADD_n_43}),
        .\int_data_reg_reg[47] ({U_0_ADD_n_44,U_0_ADD_n_45,U_0_ADD_n_46,U_0_ADD_n_47}),
        .\int_data_reg_reg[51] ({U_0_ADD_n_48,U_0_ADD_n_49,U_0_ADD_n_50,U_0_ADD_n_51}),
        .\int_data_reg_reg[55] ({U_0_ADD_n_52,U_0_ADD_n_53,U_0_ADD_n_54,U_0_ADD_n_55}),
        .\int_data_reg_reg[59] ({U_0_ADD_n_56,U_0_ADD_n_57,U_0_ADD_n_58,U_0_ADD_n_59}),
        .\int_data_reg_reg[7] ({U_0_ADD_n_4,U_0_ADD_n_5,U_0_ADD_n_6,U_0_ADD_n_7}));
  system_SPGD_SYS_0_gen_mult U_0_MULT
       (.ADC_CLK(ADC_CLK),
        .GP_OUT(GP_OUT),
        .O(b),
        .S(U_0_REG_n_127),
        .int_DELTA_U_WRT(int_DELTA_U_WRT),
        .int_data_reg_reg(int_data_reg_reg[62:0]),
        .\int_data_reg_reg[11] ({U_0_MULT_n_25,U_0_MULT_n_26,U_0_MULT_n_27,U_0_MULT_n_28}),
        .\int_data_reg_reg[15] ({U_0_MULT_n_29,U_0_MULT_n_30,U_0_MULT_n_31,U_0_MULT_n_32}),
        .\int_data_reg_reg[19] ({U_0_MULT_n_33,U_0_MULT_n_34,U_0_MULT_n_35,U_0_MULT_n_36}),
        .\int_data_reg_reg[23] ({U_0_MULT_n_37,U_0_MULT_n_38,U_0_MULT_n_39,U_0_MULT_n_40}),
        .\int_data_reg_reg[27] ({U_0_MULT_n_41,U_0_MULT_n_42,U_0_MULT_n_43,U_0_MULT_n_44}),
        .\int_data_reg_reg[31] ({U_0_MULT_n_45,U_0_MULT_n_46,U_0_MULT_n_47,U_0_MULT_n_48}),
        .\int_data_reg_reg[35] ({U_0_MULT_n_49,U_0_MULT_n_50,U_0_MULT_n_51,U_0_MULT_n_52}),
        .\int_data_reg_reg[39] ({U_0_MULT_n_53,U_0_MULT_n_54,U_0_MULT_n_55,U_0_MULT_n_56}),
        .\int_data_reg_reg[43] ({U_0_MULT_n_57,U_0_MULT_n_58,U_0_MULT_n_59,U_0_MULT_n_60}),
        .\int_data_reg_reg[47] ({U_0_MULT_n_61,U_0_MULT_n_62,U_0_MULT_n_63,U_0_MULT_n_64}),
        .\int_data_reg_reg[51] ({U_0_MULT_n_65,U_0_MULT_n_66,U_0_MULT_n_67,U_0_MULT_n_68}),
        .\int_data_reg_reg[55] ({U_0_MULT_n_69,U_0_MULT_n_70,U_0_MULT_n_71,U_0_MULT_n_72}),
        .\int_data_reg_reg[59] ({U_0_MULT_n_73,U_0_MULT_n_74,U_0_MULT_n_75,U_0_MULT_n_76}),
        .\int_data_reg_reg[63] ({U_0_MULT_n_77,U_0_MULT_n_78,U_0_MULT_n_79,U_0_MULT_n_80}),
        .p0({\J_MULT/p0 [61:56],\int_data_reg_reg[55] ,\J_MULT/p0 [39:0]}),
        .p0_0({PRNG_0_n_0,PRNG_0_n_1,PRNG_0_n_2,PRNG_0_n_3,PRNG_0_n_4,PRNG_0_n_5,PRNG_0_n_6,PRNG_0_n_7,PRNG_0_n_8,PRNG_0_n_9,PRNG_0_n_10,PRNG_0_n_11,PRNG_0_n_12,PRNG_0_n_13,PRNG_0_n_14,PRNG_0_n_15,PRNG_0_n_16,PRNG_0_n_17,PRNG_0_n_18,PRNG_0_n_19,PRNG_0_n_20,PRNG_0_n_21,PRNG_0_n_22,PRNG_0_n_23,PRNG_0_n_24,PRNG_0_n_25,PRNG_0_n_26,PRNG_0_n_27,PRNG_0_n_28,PRNG_0_n_29,PRNG_0_n_30,PRNG_0_n_31,PRNG_0_n_32,PRNG_0_n_33,PRNG_0_n_34,PRNG_0_n_35,PRNG_0_n_36,PRNG_0_n_37,PRNG_0_n_38,PRNG_0_n_39,PRNG_0_n_40,PRNG_0_n_41,PRNG_0_n_42,PRNG_0_n_43,PRNG_0_n_44,PRNG_0_n_45,PRNG_0_n_46}),
        .p0__14_0({U_0_MULT_n_17,U_0_MULT_n_18,U_0_MULT_n_19,U_0_MULT_n_20}),
        .p0__14_1({U_0_MULT_n_21,U_0_MULT_n_22,U_0_MULT_n_23,U_0_MULT_n_24}),
        .p0__14_2(REG_RESET));
  system_SPGD_SYS_0_gen_reg_3 U_0_REG
       (.ADC_CLK(ADC_CLK),
        .O(b),
        .Q({DELTA_U_0_REG_n_3,DELTA_U_0_REG_n_4,DELTA_U_0_REG_n_5,DELTA_U_0_REG_n_6,DELTA_U_0_REG_n_7,DELTA_U_0_REG_n_8,DELTA_U_0_REG_n_9,DELTA_U_0_REG_n_10,DELTA_U_0_REG_n_11,DELTA_U_0_REG_n_12,DELTA_U_0_REG_n_13,DELTA_U_0_REG_n_14,DELTA_U_0_REG_n_15,DELTA_U_0_REG_n_16,DELTA_U_0_REG_n_17,DELTA_U_0_REG_n_18,DELTA_U_0_REG_n_19,DELTA_U_0_REG_n_20,DELTA_U_0_REG_n_21,DELTA_U_0_REG_n_22,DELTA_U_0_REG_n_23,DELTA_U_0_REG_n_24,DELTA_U_0_REG_n_25,DELTA_U_0_REG_n_26,DELTA_U_0_REG_n_27,DELTA_U_0_REG_n_28,DELTA_U_0_REG_n_29,DELTA_U_0_REG_n_30,DELTA_U_0_REG_n_31,DELTA_U_0_REG_n_32,DELTA_U_0_REG_n_33,DELTA_U_0_REG_n_34,DELTA_U_0_REG_n_35,DELTA_U_0_REG_n_36,DELTA_U_0_REG_n_37,DELTA_U_0_REG_n_38,DELTA_U_0_REG_n_39,DELTA_U_0_REG_n_40,DELTA_U_0_REG_n_41,DELTA_U_0_REG_n_42,DELTA_U_0_REG_n_43,DELTA_U_0_REG_n_44,DELTA_U_0_REG_n_45,DELTA_U_0_REG_n_46,DELTA_U_0_REG_n_47,DELTA_U_0_REG_n_48,DELTA_U_0_REG_n_49}),
        .S({U_0_REG_n_64,U_0_REG_n_65,U_0_REG_n_66}),
        .int_U_WRT(int_U_WRT),
        .int_data_reg_reg(int_data_reg_reg),
        .\int_data_reg_reg[0]_0 (REG_RESET),
        .\int_data_reg_reg[11]_0 ({U_0_REG_n_115,U_0_REG_n_116,U_0_REG_n_117,U_0_REG_n_118}),
        .\int_data_reg_reg[11]_1 ({U_0_MULT_n_25,U_0_MULT_n_26,U_0_MULT_n_27,U_0_MULT_n_28}),
        .\int_data_reg_reg[15]_0 ({U_0_REG_n_111,U_0_REG_n_112,U_0_REG_n_113,U_0_REG_n_114}),
        .\int_data_reg_reg[15]_1 ({U_0_MULT_n_29,U_0_MULT_n_30,U_0_MULT_n_31,U_0_MULT_n_32}),
        .\int_data_reg_reg[19]_0 ({U_0_REG_n_107,U_0_REG_n_108,U_0_REG_n_109,U_0_REG_n_110}),
        .\int_data_reg_reg[19]_1 ({U_0_MULT_n_33,U_0_MULT_n_34,U_0_MULT_n_35,U_0_MULT_n_36}),
        .\int_data_reg_reg[23]_0 ({U_0_REG_n_103,U_0_REG_n_104,U_0_REG_n_105,U_0_REG_n_106}),
        .\int_data_reg_reg[23]_1 ({U_0_MULT_n_37,U_0_MULT_n_38,U_0_MULT_n_39,U_0_MULT_n_40}),
        .\int_data_reg_reg[27]_0 ({U_0_REG_n_99,U_0_REG_n_100,U_0_REG_n_101,U_0_REG_n_102}),
        .\int_data_reg_reg[27]_1 ({U_0_MULT_n_41,U_0_MULT_n_42,U_0_MULT_n_43,U_0_MULT_n_44}),
        .\int_data_reg_reg[31]_0 ({U_0_REG_n_95,U_0_REG_n_96,U_0_REG_n_97,U_0_REG_n_98}),
        .\int_data_reg_reg[31]_1 ({U_0_MULT_n_45,U_0_MULT_n_46,U_0_MULT_n_47,U_0_MULT_n_48}),
        .\int_data_reg_reg[35]_0 ({U_0_REG_n_91,U_0_REG_n_92,U_0_REG_n_93,U_0_REG_n_94}),
        .\int_data_reg_reg[35]_1 ({U_0_MULT_n_49,U_0_MULT_n_50,U_0_MULT_n_51,U_0_MULT_n_52}),
        .\int_data_reg_reg[39]_0 ({U_0_REG_n_87,U_0_REG_n_88,U_0_REG_n_89,U_0_REG_n_90}),
        .\int_data_reg_reg[39]_1 ({U_0_MULT_n_53,U_0_MULT_n_54,U_0_MULT_n_55,U_0_MULT_n_56}),
        .\int_data_reg_reg[3]_0 ({U_0_REG_n_123,U_0_REG_n_124,U_0_REG_n_125,U_0_REG_n_126}),
        .\int_data_reg_reg[3]_1 ({U_0_MULT_n_17,U_0_MULT_n_18,U_0_MULT_n_19,U_0_MULT_n_20}),
        .\int_data_reg_reg[43]_0 ({U_0_REG_n_83,U_0_REG_n_84,U_0_REG_n_85,U_0_REG_n_86}),
        .\int_data_reg_reg[43]_1 ({U_0_MULT_n_57,U_0_MULT_n_58,U_0_MULT_n_59,U_0_MULT_n_60}),
        .\int_data_reg_reg[47]_0 ({U_0_REG_n_79,U_0_REG_n_80,U_0_REG_n_81,U_0_REG_n_82}),
        .\int_data_reg_reg[47]_1 ({U_0_MULT_n_61,U_0_MULT_n_62,U_0_MULT_n_63,U_0_MULT_n_64}),
        .\int_data_reg_reg[51]_0 ({U_0_REG_n_75,U_0_REG_n_76,U_0_REG_n_77,U_0_REG_n_78}),
        .\int_data_reg_reg[51]_1 ({U_0_MULT_n_65,U_0_MULT_n_66,U_0_MULT_n_67,U_0_MULT_n_68}),
        .\int_data_reg_reg[55]_0 ({U_0_REG_n_71,U_0_REG_n_72,U_0_REG_n_73,U_0_REG_n_74}),
        .\int_data_reg_reg[55]_1 ({U_0_MULT_n_69,U_0_MULT_n_70,U_0_MULT_n_71,U_0_MULT_n_72}),
        .\int_data_reg_reg[59]_0 ({U_0_REG_n_67,U_0_REG_n_68,U_0_REG_n_69,U_0_REG_n_70}),
        .\int_data_reg_reg[59]_1 ({U_0_MULT_n_73,U_0_MULT_n_74,U_0_MULT_n_75,U_0_MULT_n_76}),
        .\int_data_reg_reg[63]_0 (U_0_REG_n_127),
        .\int_data_reg_reg[63]_1 (U_0_REG_n_128),
        .\int_data_reg_reg[63]_2 ({U_0_MULT_n_77,U_0_MULT_n_78,U_0_MULT_n_79,U_0_MULT_n_80}),
        .\int_data_reg_reg[7]_0 ({U_0_REG_n_119,U_0_REG_n_120,U_0_REG_n_121,U_0_REG_n_122}),
        .\int_data_reg_reg[7]_1 ({U_0_MULT_n_21,U_0_MULT_n_22,U_0_MULT_n_23,U_0_MULT_n_24}));
  system_SPGD_SYS_0_gen_subber_4 U_0_SUB
       (.\DAC_A_OUT[11] ({U_0_REG_n_115,U_0_REG_n_116,U_0_REG_n_117,U_0_REG_n_118}),
        .\DAC_A_OUT[15] ({U_0_REG_n_111,U_0_REG_n_112,U_0_REG_n_113,U_0_REG_n_114}),
        .\DAC_A_OUT[19] ({U_0_REG_n_107,U_0_REG_n_108,U_0_REG_n_109,U_0_REG_n_110}),
        .\DAC_A_OUT[23] ({U_0_REG_n_103,U_0_REG_n_104,U_0_REG_n_105,U_0_REG_n_106}),
        .\DAC_A_OUT[27] ({U_0_REG_n_99,U_0_REG_n_100,U_0_REG_n_101,U_0_REG_n_102}),
        .\DAC_A_OUT[31] ({U_0_REG_n_95,U_0_REG_n_96,U_0_REG_n_97,U_0_REG_n_98}),
        .\DAC_A_OUT[35] ({U_0_REG_n_91,U_0_REG_n_92,U_0_REG_n_93,U_0_REG_n_94}),
        .\DAC_A_OUT[39] ({U_0_REG_n_87,U_0_REG_n_88,U_0_REG_n_89,U_0_REG_n_90}),
        .\DAC_A_OUT[3] ({U_0_REG_n_123,U_0_REG_n_124,U_0_REG_n_125,U_0_REG_n_126}),
        .\DAC_A_OUT[43] ({U_0_REG_n_83,U_0_REG_n_84,U_0_REG_n_85,U_0_REG_n_86}),
        .\DAC_A_OUT[47] ({U_0_REG_n_79,U_0_REG_n_80,U_0_REG_n_81,U_0_REG_n_82}),
        .\DAC_A_OUT[51] ({U_0_REG_n_75,U_0_REG_n_76,U_0_REG_n_77,U_0_REG_n_78}),
        .\DAC_A_OUT[55] ({U_0_REG_n_71,U_0_REG_n_72,U_0_REG_n_73,U_0_REG_n_74}),
        .\DAC_A_OUT[59] ({U_0_REG_n_67,U_0_REG_n_68,U_0_REG_n_69,U_0_REG_n_70}),
        .\DAC_A_OUT[7] ({U_0_REG_n_119,U_0_REG_n_120,U_0_REG_n_121,U_0_REG_n_122}),
        .S({DELTA_U_0_REG_n_110,U_0_REG_n_64,U_0_REG_n_65,U_0_REG_n_66}),
        .int_data_reg_reg(int_data_reg_reg[62:0]),
        .s0(s0));
  system_SPGD_SYS_0_gen_adder__parameterized0_5 U_1_ADD
       (.\DAC_B_OUT[11] ({DELTA_U_1_REG_n_98,DELTA_U_1_REG_n_99,DELTA_U_1_REG_n_100,DELTA_U_1_REG_n_101}),
        .\DAC_B_OUT[15] ({DELTA_U_1_REG_n_94,DELTA_U_1_REG_n_95,DELTA_U_1_REG_n_96,DELTA_U_1_REG_n_97}),
        .\DAC_B_OUT[19] ({DELTA_U_1_REG_n_90,DELTA_U_1_REG_n_91,DELTA_U_1_REG_n_92,DELTA_U_1_REG_n_93}),
        .\DAC_B_OUT[23] ({DELTA_U_1_REG_n_86,DELTA_U_1_REG_n_87,DELTA_U_1_REG_n_88,DELTA_U_1_REG_n_89}),
        .\DAC_B_OUT[27] ({DELTA_U_1_REG_n_82,DELTA_U_1_REG_n_83,DELTA_U_1_REG_n_84,DELTA_U_1_REG_n_85}),
        .\DAC_B_OUT[31] ({DELTA_U_1_REG_n_78,DELTA_U_1_REG_n_79,DELTA_U_1_REG_n_80,DELTA_U_1_REG_n_81}),
        .\DAC_B_OUT[35] ({DELTA_U_1_REG_n_74,DELTA_U_1_REG_n_75,DELTA_U_1_REG_n_76,DELTA_U_1_REG_n_77}),
        .\DAC_B_OUT[39] ({DELTA_U_1_REG_n_70,DELTA_U_1_REG_n_71,DELTA_U_1_REG_n_72,DELTA_U_1_REG_n_73}),
        .\DAC_B_OUT[3] ({DELTA_U_1_REG_n_106,DELTA_U_1_REG_n_107,DELTA_U_1_REG_n_108,DELTA_U_1_REG_n_109}),
        .\DAC_B_OUT[43] ({DELTA_U_1_REG_n_66,DELTA_U_1_REG_n_67,DELTA_U_1_REG_n_68,DELTA_U_1_REG_n_69}),
        .\DAC_B_OUT[47] ({DELTA_U_1_REG_n_62,DELTA_U_1_REG_n_63,DELTA_U_1_REG_n_64,DELTA_U_1_REG_n_65}),
        .\DAC_B_OUT[51] ({DELTA_U_1_REG_n_58,DELTA_U_1_REG_n_59,DELTA_U_1_REG_n_60,DELTA_U_1_REG_n_61}),
        .\DAC_B_OUT[55] ({DELTA_U_1_REG_n_54,DELTA_U_1_REG_n_55,DELTA_U_1_REG_n_56,DELTA_U_1_REG_n_57}),
        .\DAC_B_OUT[59] ({DELTA_U_1_REG_n_50,DELTA_U_1_REG_n_51,DELTA_U_1_REG_n_52,DELTA_U_1_REG_n_53}),
        .\DAC_B_OUT[7] ({DELTA_U_1_REG_n_102,DELTA_U_1_REG_n_103,DELTA_U_1_REG_n_104,DELTA_U_1_REG_n_105}),
        .S({U_1_REG_n_128,DELTA_U_1_REG_n_0,DELTA_U_1_REG_n_1,DELTA_U_1_REG_n_2}),
        .int_data_reg_reg(int_data_reg_reg_0[62:0]),
        .\int_data_reg_reg[11] ({U_1_ADD_n_8,U_1_ADD_n_9,U_1_ADD_n_10,U_1_ADD_n_11}),
        .\int_data_reg_reg[15] ({U_1_ADD_n_12,U_1_ADD_n_13,U_1_ADD_n_14,U_1_ADD_n_15}),
        .\int_data_reg_reg[19] ({U_1_ADD_n_16,U_1_ADD_n_17,U_1_ADD_n_18,U_1_ADD_n_19}),
        .\int_data_reg_reg[23] ({U_1_ADD_n_20,U_1_ADD_n_21,U_1_ADD_n_22,U_1_ADD_n_23}),
        .\int_data_reg_reg[27] ({U_1_ADD_n_24,U_1_ADD_n_25,U_1_ADD_n_26,U_1_ADD_n_27}),
        .\int_data_reg_reg[31] ({U_1_ADD_n_28,U_1_ADD_n_29,U_1_ADD_n_30,U_1_ADD_n_31}),
        .\int_data_reg_reg[35] ({U_1_ADD_n_32,U_1_ADD_n_33,U_1_ADD_n_34,U_1_ADD_n_35}),
        .\int_data_reg_reg[39] ({U_1_ADD_n_36,U_1_ADD_n_37,U_1_ADD_n_38,U_1_ADD_n_39}),
        .\int_data_reg_reg[3] ({U_1_ADD_n_0,U_1_ADD_n_1,U_1_ADD_n_2,U_1_ADD_n_3}),
        .\int_data_reg_reg[43] ({U_1_ADD_n_40,U_1_ADD_n_41,U_1_ADD_n_42,U_1_ADD_n_43}),
        .\int_data_reg_reg[47] ({U_1_ADD_n_44,U_1_ADD_n_45,U_1_ADD_n_46,U_1_ADD_n_47}),
        .\int_data_reg_reg[51] ({U_1_ADD_n_48,U_1_ADD_n_49,U_1_ADD_n_50,U_1_ADD_n_51}),
        .\int_data_reg_reg[55] ({U_1_ADD_n_52,U_1_ADD_n_53,U_1_ADD_n_54,U_1_ADD_n_55}),
        .\int_data_reg_reg[59] ({U_1_ADD_n_56,U_1_ADD_n_57,U_1_ADD_n_58,U_1_ADD_n_59}),
        .\int_data_reg_reg[62] ({U_1_ADD_n_60,U_1_ADD_n_61,U_1_ADD_n_62,U_1_ADD_n_63}),
        .\int_data_reg_reg[7] ({U_1_ADD_n_4,U_1_ADD_n_5,U_1_ADD_n_6,U_1_ADD_n_7}));
  system_SPGD_SYS_0_gen_mult_6 U_1_MULT
       (.ADC_CLK(ADC_CLK),
        .O(b__0),
        .S(U_1_REG_n_127),
        .int_DELTA_U_WRT(int_DELTA_U_WRT),
        .int_data_reg_reg(int_data_reg_reg_0[62:0]),
        .\int_data_reg_reg[11] ({U_1_MULT_n_9,U_1_MULT_n_10,U_1_MULT_n_11,U_1_MULT_n_12}),
        .\int_data_reg_reg[15] ({U_1_MULT_n_13,U_1_MULT_n_14,U_1_MULT_n_15,U_1_MULT_n_16}),
        .\int_data_reg_reg[19] ({U_1_MULT_n_17,U_1_MULT_n_18,U_1_MULT_n_19,U_1_MULT_n_20}),
        .\int_data_reg_reg[23] ({U_1_MULT_n_21,U_1_MULT_n_22,U_1_MULT_n_23,U_1_MULT_n_24}),
        .\int_data_reg_reg[27] ({U_1_MULT_n_25,U_1_MULT_n_26,U_1_MULT_n_27,U_1_MULT_n_28}),
        .\int_data_reg_reg[31] ({U_1_MULT_n_29,U_1_MULT_n_30,U_1_MULT_n_31,U_1_MULT_n_32}),
        .\int_data_reg_reg[35] ({U_1_MULT_n_33,U_1_MULT_n_34,U_1_MULT_n_35,U_1_MULT_n_36}),
        .\int_data_reg_reg[39] ({U_1_MULT_n_37,U_1_MULT_n_38,U_1_MULT_n_39,U_1_MULT_n_40}),
        .\int_data_reg_reg[43] ({U_1_MULT_n_41,U_1_MULT_n_42,U_1_MULT_n_43,U_1_MULT_n_44}),
        .\int_data_reg_reg[47] ({U_1_MULT_n_45,U_1_MULT_n_46,U_1_MULT_n_47,U_1_MULT_n_48}),
        .\int_data_reg_reg[51] ({U_1_MULT_n_49,U_1_MULT_n_50,U_1_MULT_n_51,U_1_MULT_n_52}),
        .\int_data_reg_reg[55] ({U_1_MULT_n_53,U_1_MULT_n_54,U_1_MULT_n_55,U_1_MULT_n_56}),
        .\int_data_reg_reg[59] ({U_1_MULT_n_57,U_1_MULT_n_58,U_1_MULT_n_59,U_1_MULT_n_60}),
        .\int_data_reg_reg[63] ({U_1_MULT_n_61,U_1_MULT_n_62,U_1_MULT_n_63,U_1_MULT_n_64}),
        .p0({\J_MULT/p0 [61:56],\int_data_reg_reg[55] ,\J_MULT/p0 [39:0]}),
        .p0_0({PRNG_0_n_47,PRNG_0_n_48,PRNG_0_n_49,PRNG_0_n_50,PRNG_0_n_51,PRNG_0_n_52,PRNG_0_n_53,PRNG_0_n_54,PRNG_0_n_55,PRNG_0_n_56,PRNG_0_n_57,PRNG_0_n_58,PRNG_0_n_59,PRNG_0_n_60,PRNG_0_n_61,PRNG_0_n_62,PRNG_0_n_63,PRNG_0_n_64,PRNG_0_n_65,PRNG_0_n_66,PRNG_0_n_67,PRNG_0_n_68,PRNG_0_n_69,PRNG_0_n_70,PRNG_0_n_71,PRNG_0_n_72,PRNG_0_n_73,PRNG_0_n_74,PRNG_0_n_75,PRNG_0_n_76,PRNG_0_n_77,PRNG_0_n_78,PRNG_0_n_79,PRNG_0_n_80,PRNG_0_n_81,PRNG_0_n_82,PRNG_0_n_83,PRNG_0_n_84,PRNG_0_n_85,PRNG_0_n_86,PRNG_0_n_87,PRNG_0_n_88,PRNG_0_n_89,PRNG_0_n_90,PRNG_0_n_91,PRNG_0_n_92,PRNG_0_n_93}),
        .p0__14_0({U_1_MULT_n_1,U_1_MULT_n_2,U_1_MULT_n_3,U_1_MULT_n_4}),
        .p0__14_1({U_1_MULT_n_5,U_1_MULT_n_6,U_1_MULT_n_7,U_1_MULT_n_8}),
        .p0__14_2(REG_RESET));
  system_SPGD_SYS_0_gen_reg_7 U_1_REG
       (.ADC_CLK(ADC_CLK),
        .O(b__0),
        .Q({DELTA_U_1_REG_n_3,DELTA_U_1_REG_n_4,DELTA_U_1_REG_n_5,DELTA_U_1_REG_n_6,DELTA_U_1_REG_n_7,DELTA_U_1_REG_n_8,DELTA_U_1_REG_n_9,DELTA_U_1_REG_n_10,DELTA_U_1_REG_n_11,DELTA_U_1_REG_n_12,DELTA_U_1_REG_n_13,DELTA_U_1_REG_n_14,DELTA_U_1_REG_n_15,DELTA_U_1_REG_n_16,DELTA_U_1_REG_n_17,DELTA_U_1_REG_n_18,DELTA_U_1_REG_n_19,DELTA_U_1_REG_n_20,DELTA_U_1_REG_n_21,DELTA_U_1_REG_n_22,DELTA_U_1_REG_n_23,DELTA_U_1_REG_n_24,DELTA_U_1_REG_n_25,DELTA_U_1_REG_n_26,DELTA_U_1_REG_n_27,DELTA_U_1_REG_n_28,DELTA_U_1_REG_n_29,DELTA_U_1_REG_n_30,DELTA_U_1_REG_n_31,DELTA_U_1_REG_n_32,DELTA_U_1_REG_n_33,DELTA_U_1_REG_n_34,DELTA_U_1_REG_n_35,DELTA_U_1_REG_n_36,DELTA_U_1_REG_n_37,DELTA_U_1_REG_n_38,DELTA_U_1_REG_n_39,DELTA_U_1_REG_n_40,DELTA_U_1_REG_n_41,DELTA_U_1_REG_n_42,DELTA_U_1_REG_n_43,DELTA_U_1_REG_n_44,DELTA_U_1_REG_n_45,DELTA_U_1_REG_n_46,DELTA_U_1_REG_n_47,DELTA_U_1_REG_n_48,DELTA_U_1_REG_n_49}),
        .S({U_1_REG_n_64,U_1_REG_n_65,U_1_REG_n_66}),
        .int_U_WRT(int_U_WRT),
        .int_data_reg_reg(int_data_reg_reg_0),
        .\int_data_reg_reg[11]_0 ({U_1_REG_n_115,U_1_REG_n_116,U_1_REG_n_117,U_1_REG_n_118}),
        .\int_data_reg_reg[11]_1 ({U_1_MULT_n_9,U_1_MULT_n_10,U_1_MULT_n_11,U_1_MULT_n_12}),
        .\int_data_reg_reg[15]_0 ({U_1_REG_n_111,U_1_REG_n_112,U_1_REG_n_113,U_1_REG_n_114}),
        .\int_data_reg_reg[15]_1 ({U_1_MULT_n_13,U_1_MULT_n_14,U_1_MULT_n_15,U_1_MULT_n_16}),
        .\int_data_reg_reg[19]_0 ({U_1_REG_n_107,U_1_REG_n_108,U_1_REG_n_109,U_1_REG_n_110}),
        .\int_data_reg_reg[19]_1 ({U_1_MULT_n_17,U_1_MULT_n_18,U_1_MULT_n_19,U_1_MULT_n_20}),
        .\int_data_reg_reg[23]_0 ({U_1_REG_n_103,U_1_REG_n_104,U_1_REG_n_105,U_1_REG_n_106}),
        .\int_data_reg_reg[23]_1 ({U_1_MULT_n_21,U_1_MULT_n_22,U_1_MULT_n_23,U_1_MULT_n_24}),
        .\int_data_reg_reg[27]_0 ({U_1_REG_n_99,U_1_REG_n_100,U_1_REG_n_101,U_1_REG_n_102}),
        .\int_data_reg_reg[27]_1 ({U_1_MULT_n_25,U_1_MULT_n_26,U_1_MULT_n_27,U_1_MULT_n_28}),
        .\int_data_reg_reg[31]_0 ({U_1_REG_n_95,U_1_REG_n_96,U_1_REG_n_97,U_1_REG_n_98}),
        .\int_data_reg_reg[31]_1 ({U_1_MULT_n_29,U_1_MULT_n_30,U_1_MULT_n_31,U_1_MULT_n_32}),
        .\int_data_reg_reg[35]_0 ({U_1_REG_n_91,U_1_REG_n_92,U_1_REG_n_93,U_1_REG_n_94}),
        .\int_data_reg_reg[35]_1 ({U_1_MULT_n_33,U_1_MULT_n_34,U_1_MULT_n_35,U_1_MULT_n_36}),
        .\int_data_reg_reg[39]_0 ({U_1_REG_n_87,U_1_REG_n_88,U_1_REG_n_89,U_1_REG_n_90}),
        .\int_data_reg_reg[39]_1 ({U_1_MULT_n_37,U_1_MULT_n_38,U_1_MULT_n_39,U_1_MULT_n_40}),
        .\int_data_reg_reg[3]_0 ({U_1_REG_n_123,U_1_REG_n_124,U_1_REG_n_125,U_1_REG_n_126}),
        .\int_data_reg_reg[3]_1 ({U_1_MULT_n_1,U_1_MULT_n_2,U_1_MULT_n_3,U_1_MULT_n_4}),
        .\int_data_reg_reg[43]_0 ({U_1_REG_n_83,U_1_REG_n_84,U_1_REG_n_85,U_1_REG_n_86}),
        .\int_data_reg_reg[43]_1 ({U_1_MULT_n_41,U_1_MULT_n_42,U_1_MULT_n_43,U_1_MULT_n_44}),
        .\int_data_reg_reg[47]_0 ({U_1_REG_n_79,U_1_REG_n_80,U_1_REG_n_81,U_1_REG_n_82}),
        .\int_data_reg_reg[47]_1 ({U_1_MULT_n_45,U_1_MULT_n_46,U_1_MULT_n_47,U_1_MULT_n_48}),
        .\int_data_reg_reg[51]_0 ({U_1_REG_n_75,U_1_REG_n_76,U_1_REG_n_77,U_1_REG_n_78}),
        .\int_data_reg_reg[51]_1 ({U_1_MULT_n_49,U_1_MULT_n_50,U_1_MULT_n_51,U_1_MULT_n_52}),
        .\int_data_reg_reg[55]_0 ({U_1_REG_n_71,U_1_REG_n_72,U_1_REG_n_73,U_1_REG_n_74}),
        .\int_data_reg_reg[55]_1 ({U_1_MULT_n_53,U_1_MULT_n_54,U_1_MULT_n_55,U_1_MULT_n_56}),
        .\int_data_reg_reg[59]_0 ({U_1_REG_n_67,U_1_REG_n_68,U_1_REG_n_69,U_1_REG_n_70}),
        .\int_data_reg_reg[59]_1 ({U_1_MULT_n_57,U_1_MULT_n_58,U_1_MULT_n_59,U_1_MULT_n_60}),
        .\int_data_reg_reg[63]_0 (U_1_REG_n_127),
        .\int_data_reg_reg[63]_1 (U_1_REG_n_128),
        .\int_data_reg_reg[63]_2 (REG_RESET),
        .\int_data_reg_reg[63]_3 ({U_1_MULT_n_61,U_1_MULT_n_62,U_1_MULT_n_63,U_1_MULT_n_64}),
        .\int_data_reg_reg[7]_0 ({U_1_REG_n_119,U_1_REG_n_120,U_1_REG_n_121,U_1_REG_n_122}),
        .\int_data_reg_reg[7]_1 ({U_1_MULT_n_5,U_1_MULT_n_6,U_1_MULT_n_7,U_1_MULT_n_8}));
  system_SPGD_SYS_0_gen_subber_8 U_1_SUB
       (.\DAC_B_OUT[11] ({U_1_REG_n_115,U_1_REG_n_116,U_1_REG_n_117,U_1_REG_n_118}),
        .\DAC_B_OUT[15] ({U_1_REG_n_111,U_1_REG_n_112,U_1_REG_n_113,U_1_REG_n_114}),
        .\DAC_B_OUT[19] ({U_1_REG_n_107,U_1_REG_n_108,U_1_REG_n_109,U_1_REG_n_110}),
        .\DAC_B_OUT[23] ({U_1_REG_n_103,U_1_REG_n_104,U_1_REG_n_105,U_1_REG_n_106}),
        .\DAC_B_OUT[27] ({U_1_REG_n_99,U_1_REG_n_100,U_1_REG_n_101,U_1_REG_n_102}),
        .\DAC_B_OUT[31] ({U_1_REG_n_95,U_1_REG_n_96,U_1_REG_n_97,U_1_REG_n_98}),
        .\DAC_B_OUT[35] ({U_1_REG_n_91,U_1_REG_n_92,U_1_REG_n_93,U_1_REG_n_94}),
        .\DAC_B_OUT[39] ({U_1_REG_n_87,U_1_REG_n_88,U_1_REG_n_89,U_1_REG_n_90}),
        .\DAC_B_OUT[3] ({U_1_REG_n_123,U_1_REG_n_124,U_1_REG_n_125,U_1_REG_n_126}),
        .\DAC_B_OUT[43] ({U_1_REG_n_83,U_1_REG_n_84,U_1_REG_n_85,U_1_REG_n_86}),
        .\DAC_B_OUT[47] ({U_1_REG_n_79,U_1_REG_n_80,U_1_REG_n_81,U_1_REG_n_82}),
        .\DAC_B_OUT[51] ({U_1_REG_n_75,U_1_REG_n_76,U_1_REG_n_77,U_1_REG_n_78}),
        .\DAC_B_OUT[55] ({U_1_REG_n_71,U_1_REG_n_72,U_1_REG_n_73,U_1_REG_n_74}),
        .\DAC_B_OUT[59] ({U_1_REG_n_67,U_1_REG_n_68,U_1_REG_n_69,U_1_REG_n_70}),
        .\DAC_B_OUT[7] ({U_1_REG_n_119,U_1_REG_n_120,U_1_REG_n_121,U_1_REG_n_122}),
        .S({DELTA_U_1_REG_n_110,U_1_REG_n_64,U_1_REG_n_65,U_1_REG_n_66}),
        .int_data_reg_reg(int_data_reg_reg_0[62:0]),
        .\int_data_reg_reg[11] ({U_1_SUB_n_8,U_1_SUB_n_9,U_1_SUB_n_10,U_1_SUB_n_11}),
        .\int_data_reg_reg[15] ({U_1_SUB_n_12,U_1_SUB_n_13,U_1_SUB_n_14,U_1_SUB_n_15}),
        .\int_data_reg_reg[19] ({U_1_SUB_n_16,U_1_SUB_n_17,U_1_SUB_n_18,U_1_SUB_n_19}),
        .\int_data_reg_reg[23] ({U_1_SUB_n_20,U_1_SUB_n_21,U_1_SUB_n_22,U_1_SUB_n_23}),
        .\int_data_reg_reg[27] ({U_1_SUB_n_24,U_1_SUB_n_25,U_1_SUB_n_26,U_1_SUB_n_27}),
        .\int_data_reg_reg[31] ({U_1_SUB_n_28,U_1_SUB_n_29,U_1_SUB_n_30,U_1_SUB_n_31}),
        .\int_data_reg_reg[35] ({U_1_SUB_n_32,U_1_SUB_n_33,U_1_SUB_n_34,U_1_SUB_n_35}),
        .\int_data_reg_reg[39] ({U_1_SUB_n_36,U_1_SUB_n_37,U_1_SUB_n_38,U_1_SUB_n_39}),
        .\int_data_reg_reg[3] ({U_1_SUB_n_0,U_1_SUB_n_1,U_1_SUB_n_2,U_1_SUB_n_3}),
        .\int_data_reg_reg[43] ({U_1_SUB_n_40,U_1_SUB_n_41,U_1_SUB_n_42,U_1_SUB_n_43}),
        .\int_data_reg_reg[47] ({U_1_SUB_n_44,U_1_SUB_n_45,U_1_SUB_n_46,U_1_SUB_n_47}),
        .\int_data_reg_reg[51] ({U_1_SUB_n_48,U_1_SUB_n_49,U_1_SUB_n_50,U_1_SUB_n_51}),
        .\int_data_reg_reg[55] ({U_1_SUB_n_52,U_1_SUB_n_53,U_1_SUB_n_54,U_1_SUB_n_55}),
        .\int_data_reg_reg[59] ({U_1_SUB_n_56,U_1_SUB_n_57,U_1_SUB_n_58,U_1_SUB_n_59}),
        .\int_data_reg_reg[62] ({U_1_SUB_n_60,U_1_SUB_n_61,U_1_SUB_n_62,U_1_SUB_n_63}),
        .\int_data_reg_reg[7] ({U_1_SUB_n_4,U_1_SUB_n_5,U_1_SUB_n_6,U_1_SUB_n_7}));
endmodule

(* ORIG_REF_NAME = "gen_adder" *) 
module system_SPGD_SYS_0_gen_adder
   (CO,
    int_s,
    Q,
    S,
    p0,
    DI,
    p0_0,
    s0__71_carry__1_i_4__0_0,
    s0__71_carry_i_4__0_0,
    s0__71_carry__0_i_4__0_0,
    s0__71_carry__1_i_4__0_1,
    s0__71_carry__1_i_4__0_2,
    p0_1);
  output [0:0]CO;
  output [13:0]int_s;
  input [10:0]Q;
  input [3:0]S;
  input [3:0]p0;
  input [0:0]DI;
  input [3:0]p0_0;
  input [10:0]s0__71_carry__1_i_4__0_0;
  input [3:0]s0__71_carry_i_4__0_0;
  input [3:0]s0__71_carry__0_i_4__0_0;
  input [0:0]s0__71_carry__1_i_4__0_1;
  input [3:0]s0__71_carry__1_i_4__0_2;
  input [0:0]p0_1;

  wire [0:0]CO;
  wire [0:0]DI;
  wire [10:0]Q;
  wire [3:0]S;
  wire [13:0]int_s;
  wire [3:0]p0;
  wire [3:0]p0_0;
  wire [0:0]p0_1;
  wire s0__35_carry__0_n_0;
  wire s0__35_carry__0_n_1;
  wire s0__35_carry__0_n_2;
  wire s0__35_carry__0_n_3;
  wire s0__35_carry__0_n_4;
  wire s0__35_carry__0_n_5;
  wire s0__35_carry__0_n_6;
  wire s0__35_carry__0_n_7;
  wire s0__35_carry__1_n_1;
  wire s0__35_carry__1_n_2;
  wire s0__35_carry__1_n_3;
  wire s0__35_carry__1_n_4;
  wire s0__35_carry__1_n_5;
  wire s0__35_carry__1_n_6;
  wire s0__35_carry__1_n_7;
  wire s0__35_carry_n_0;
  wire s0__35_carry_n_1;
  wire s0__35_carry_n_2;
  wire s0__35_carry_n_3;
  wire s0__35_carry_n_4;
  wire s0__35_carry_n_5;
  wire s0__35_carry_n_6;
  wire s0__35_carry_n_7;
  wire s0__71_carry__0_i_1__0_n_0;
  wire s0__71_carry__0_i_2__0_n_0;
  wire s0__71_carry__0_i_3__0_n_0;
  wire [3:0]s0__71_carry__0_i_4__0_0;
  wire s0__71_carry__0_i_4__0_n_0;
  wire s0__71_carry__0_n_0;
  wire s0__71_carry__0_n_1;
  wire s0__71_carry__0_n_2;
  wire s0__71_carry__0_n_3;
  wire s0__71_carry__1_i_1__0_n_0;
  wire s0__71_carry__1_i_2__0_n_0;
  wire s0__71_carry__1_i_3__0_n_0;
  wire [10:0]s0__71_carry__1_i_4__0_0;
  wire [0:0]s0__71_carry__1_i_4__0_1;
  wire [3:0]s0__71_carry__1_i_4__0_2;
  wire s0__71_carry__1_i_4__0_n_0;
  wire s0__71_carry__1_n_0;
  wire s0__71_carry__1_n_1;
  wire s0__71_carry__1_n_2;
  wire s0__71_carry__1_n_3;
  wire s0__71_carry__2_i_1__0_n_0;
  wire s0__71_carry__2_i_2__0_n_0;
  wire s0__71_carry__2_n_3;
  wire s0__71_carry_i_1__0_n_0;
  wire s0__71_carry_i_2__0_n_0;
  wire s0__71_carry_i_3__0_n_0;
  wire [3:0]s0__71_carry_i_4__0_0;
  wire s0__71_carry_i_4__0_n_0;
  wire s0__71_carry_n_0;
  wire s0__71_carry_n_1;
  wire s0__71_carry_n_2;
  wire s0__71_carry_n_3;
  wire s0_carry__0_n_0;
  wire s0_carry__0_n_1;
  wire s0_carry__0_n_2;
  wire s0_carry__0_n_3;
  wire s0_carry__0_n_4;
  wire s0_carry__0_n_5;
  wire s0_carry__0_n_6;
  wire s0_carry__0_n_7;
  wire s0_carry__1_n_0;
  wire s0_carry__1_n_1;
  wire s0_carry__1_n_2;
  wire s0_carry__1_n_3;
  wire s0_carry__1_n_4;
  wire s0_carry__1_n_5;
  wire s0_carry__1_n_6;
  wire s0_carry__1_n_7;
  wire s0_carry__2_n_7;
  wire s0_carry_n_0;
  wire s0_carry_n_1;
  wire s0_carry_n_2;
  wire s0_carry_n_3;
  wire s0_carry_n_4;
  wire s0_carry_n_5;
  wire s0_carry_n_6;
  wire s0_carry_n_7;
  wire [3:1]NLW_s0__71_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_s0__71_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_s0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_s0_carry__2_O_UNCONNECTED;

  CARRY4 s0__35_carry
       (.CI(1'b0),
        .CO({s0__35_carry_n_0,s0__35_carry_n_1,s0__35_carry_n_2,s0__35_carry_n_3}),
        .CYINIT(1'b0),
        .DI(s0__71_carry__1_i_4__0_0[3:0]),
        .O({s0__35_carry_n_4,s0__35_carry_n_5,s0__35_carry_n_6,s0__35_carry_n_7}),
        .S(s0__71_carry_i_4__0_0));
  CARRY4 s0__35_carry__0
       (.CI(s0__35_carry_n_0),
        .CO({s0__35_carry__0_n_0,s0__35_carry__0_n_1,s0__35_carry__0_n_2,s0__35_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(s0__71_carry__1_i_4__0_0[7:4]),
        .O({s0__35_carry__0_n_4,s0__35_carry__0_n_5,s0__35_carry__0_n_6,s0__35_carry__0_n_7}),
        .S(s0__71_carry__0_i_4__0_0));
  CARRY4 s0__35_carry__1
       (.CI(s0__35_carry__0_n_0),
        .CO({CO,s0__35_carry__1_n_1,s0__35_carry__1_n_2,s0__35_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({s0__71_carry__1_i_4__0_1,s0__71_carry__1_i_4__0_0[10:8]}),
        .O({s0__35_carry__1_n_4,s0__35_carry__1_n_5,s0__35_carry__1_n_6,s0__35_carry__1_n_7}),
        .S(s0__71_carry__1_i_4__0_2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0__71_carry
       (.CI(1'b0),
        .CO({s0__71_carry_n_0,s0__71_carry_n_1,s0__71_carry_n_2,s0__71_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s0_carry_n_4,s0_carry_n_5,s0_carry_n_6,s0_carry_n_7}),
        .O(int_s[3:0]),
        .S({s0__71_carry_i_1__0_n_0,s0__71_carry_i_2__0_n_0,s0__71_carry_i_3__0_n_0,s0__71_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0__71_carry__0
       (.CI(s0__71_carry_n_0),
        .CO({s0__71_carry__0_n_0,s0__71_carry__0_n_1,s0__71_carry__0_n_2,s0__71_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({s0_carry__0_n_4,s0_carry__0_n_5,s0_carry__0_n_6,s0_carry__0_n_7}),
        .O(int_s[7:4]),
        .S({s0__71_carry__0_i_1__0_n_0,s0__71_carry__0_i_2__0_n_0,s0__71_carry__0_i_3__0_n_0,s0__71_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__0_i_1__0
       (.I0(s0_carry__0_n_4),
        .I1(s0__35_carry__0_n_4),
        .O(s0__71_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__0_i_2__0
       (.I0(s0_carry__0_n_5),
        .I1(s0__35_carry__0_n_5),
        .O(s0__71_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__0_i_3__0
       (.I0(s0_carry__0_n_6),
        .I1(s0__35_carry__0_n_6),
        .O(s0__71_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__0_i_4__0
       (.I0(s0_carry__0_n_7),
        .I1(s0__35_carry__0_n_7),
        .O(s0__71_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0__71_carry__1
       (.CI(s0__71_carry__0_n_0),
        .CO({s0__71_carry__1_n_0,s0__71_carry__1_n_1,s0__71_carry__1_n_2,s0__71_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({s0_carry__1_n_4,s0_carry__1_n_5,s0_carry__1_n_6,s0_carry__1_n_7}),
        .O(int_s[11:8]),
        .S({s0__71_carry__1_i_1__0_n_0,s0__71_carry__1_i_2__0_n_0,s0__71_carry__1_i_3__0_n_0,s0__71_carry__1_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__1_i_1__0
       (.I0(s0_carry__1_n_4),
        .I1(s0__35_carry__1_n_4),
        .O(s0__71_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__1_i_2__0
       (.I0(s0_carry__1_n_5),
        .I1(s0__35_carry__1_n_5),
        .O(s0__71_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__1_i_3__0
       (.I0(s0_carry__1_n_6),
        .I1(s0__35_carry__1_n_6),
        .O(s0__71_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__1_i_4__0
       (.I0(s0_carry__1_n_7),
        .I1(s0__35_carry__1_n_7),
        .O(s0__71_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0__71_carry__2
       (.CI(s0__71_carry__1_n_0),
        .CO({NLW_s0__71_carry__2_CO_UNCONNECTED[3:1],s0__71_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,s0_carry__2_n_7}),
        .O({NLW_s0__71_carry__2_O_UNCONNECTED[3:2],int_s[13:12]}),
        .S({1'b0,1'b0,s0__71_carry__2_i_1__0_n_0,s0__71_carry__2_i_2__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    s0__71_carry__2_i_1__0
       (.I0(s0_carry__2_n_7),
        .I1(p0_1),
        .O(s0__71_carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s0__71_carry__2_i_2__0
       (.I0(s0_carry__2_n_7),
        .I1(p0_1),
        .O(s0__71_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry_i_1__0
       (.I0(s0_carry_n_4),
        .I1(s0__35_carry_n_4),
        .O(s0__71_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry_i_2__0
       (.I0(s0_carry_n_5),
        .I1(s0__35_carry_n_5),
        .O(s0__71_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry_i_3__0
       (.I0(s0_carry_n_6),
        .I1(s0__35_carry_n_6),
        .O(s0__71_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry_i_4__0
       (.I0(s0_carry_n_7),
        .I1(s0__35_carry_n_7),
        .O(s0__71_carry_i_4__0_n_0));
  CARRY4 s0_carry
       (.CI(1'b0),
        .CO({s0_carry_n_0,s0_carry_n_1,s0_carry_n_2,s0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({s0_carry_n_4,s0_carry_n_5,s0_carry_n_6,s0_carry_n_7}),
        .S(S));
  CARRY4 s0_carry__0
       (.CI(s0_carry_n_0),
        .CO({s0_carry__0_n_0,s0_carry__0_n_1,s0_carry__0_n_2,s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({s0_carry__0_n_4,s0_carry__0_n_5,s0_carry__0_n_6,s0_carry__0_n_7}),
        .S(p0));
  CARRY4 s0_carry__1
       (.CI(s0_carry__0_n_0),
        .CO({s0_carry__1_n_0,s0_carry__1_n_1,s0_carry__1_n_2,s0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({DI,Q[10:8]}),
        .O({s0_carry__1_n_4,s0_carry__1_n_5,s0_carry__1_n_6,s0_carry__1_n_7}),
        .S(p0_0));
  CARRY4 s0_carry__2
       (.CI(s0_carry__1_n_0),
        .CO(NLW_s0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_s0_carry__2_O_UNCONNECTED[3:1],s0_carry__2_n_7}),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "gen_adder" *) 
module system_SPGD_SYS_0_gen_adder_11
   (CO,
    int_s,
    Q,
    S,
    p0__0,
    DI,
    p0__0_0,
    s0__71_carry__1_i_4_0,
    s0__71_carry_i_4_0,
    s0__71_carry__0_i_4_0,
    s0__71_carry__1_i_4_1,
    s0__71_carry__1_i_4_2,
    p0__0_1);
  output [0:0]CO;
  output [13:0]int_s;
  input [10:0]Q;
  input [3:0]S;
  input [3:0]p0__0;
  input [0:0]DI;
  input [3:0]p0__0_0;
  input [10:0]s0__71_carry__1_i_4_0;
  input [3:0]s0__71_carry_i_4_0;
  input [3:0]s0__71_carry__0_i_4_0;
  input [0:0]s0__71_carry__1_i_4_1;
  input [3:0]s0__71_carry__1_i_4_2;
  input [0:0]p0__0_1;

  wire [0:0]CO;
  wire [0:0]DI;
  wire [10:0]Q;
  wire [3:0]S;
  wire [13:0]int_s;
  wire [3:0]p0__0;
  wire [3:0]p0__0_0;
  wire [0:0]p0__0_1;
  wire s0__35_carry__0_n_0;
  wire s0__35_carry__0_n_1;
  wire s0__35_carry__0_n_2;
  wire s0__35_carry__0_n_3;
  wire s0__35_carry__0_n_4;
  wire s0__35_carry__0_n_5;
  wire s0__35_carry__0_n_6;
  wire s0__35_carry__0_n_7;
  wire s0__35_carry__1_n_1;
  wire s0__35_carry__1_n_2;
  wire s0__35_carry__1_n_3;
  wire s0__35_carry__1_n_4;
  wire s0__35_carry__1_n_5;
  wire s0__35_carry__1_n_6;
  wire s0__35_carry__1_n_7;
  wire s0__35_carry_n_0;
  wire s0__35_carry_n_1;
  wire s0__35_carry_n_2;
  wire s0__35_carry_n_3;
  wire s0__35_carry_n_4;
  wire s0__35_carry_n_5;
  wire s0__35_carry_n_6;
  wire s0__35_carry_n_7;
  wire s0__71_carry__0_i_1_n_0;
  wire s0__71_carry__0_i_2_n_0;
  wire s0__71_carry__0_i_3_n_0;
  wire [3:0]s0__71_carry__0_i_4_0;
  wire s0__71_carry__0_i_4_n_0;
  wire s0__71_carry__0_n_0;
  wire s0__71_carry__0_n_1;
  wire s0__71_carry__0_n_2;
  wire s0__71_carry__0_n_3;
  wire s0__71_carry__1_i_1_n_0;
  wire s0__71_carry__1_i_2_n_0;
  wire s0__71_carry__1_i_3_n_0;
  wire [10:0]s0__71_carry__1_i_4_0;
  wire [0:0]s0__71_carry__1_i_4_1;
  wire [3:0]s0__71_carry__1_i_4_2;
  wire s0__71_carry__1_i_4_n_0;
  wire s0__71_carry__1_n_0;
  wire s0__71_carry__1_n_1;
  wire s0__71_carry__1_n_2;
  wire s0__71_carry__1_n_3;
  wire s0__71_carry__2_i_1_n_0;
  wire s0__71_carry__2_i_2_n_0;
  wire s0__71_carry__2_n_3;
  wire s0__71_carry_i_1_n_0;
  wire s0__71_carry_i_2_n_0;
  wire s0__71_carry_i_3_n_0;
  wire [3:0]s0__71_carry_i_4_0;
  wire s0__71_carry_i_4_n_0;
  wire s0__71_carry_n_0;
  wire s0__71_carry_n_1;
  wire s0__71_carry_n_2;
  wire s0__71_carry_n_3;
  wire s0_carry__0_n_0;
  wire s0_carry__0_n_1;
  wire s0_carry__0_n_2;
  wire s0_carry__0_n_3;
  wire s0_carry__0_n_4;
  wire s0_carry__0_n_5;
  wire s0_carry__0_n_6;
  wire s0_carry__0_n_7;
  wire s0_carry__1_n_0;
  wire s0_carry__1_n_1;
  wire s0_carry__1_n_2;
  wire s0_carry__1_n_3;
  wire s0_carry__1_n_4;
  wire s0_carry__1_n_5;
  wire s0_carry__1_n_6;
  wire s0_carry__1_n_7;
  wire s0_carry__2_n_7;
  wire s0_carry_n_0;
  wire s0_carry_n_1;
  wire s0_carry_n_2;
  wire s0_carry_n_3;
  wire s0_carry_n_4;
  wire s0_carry_n_5;
  wire s0_carry_n_6;
  wire s0_carry_n_7;
  wire [3:1]NLW_s0__71_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_s0__71_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_s0_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_s0_carry__2_O_UNCONNECTED;

  CARRY4 s0__35_carry
       (.CI(1'b0),
        .CO({s0__35_carry_n_0,s0__35_carry_n_1,s0__35_carry_n_2,s0__35_carry_n_3}),
        .CYINIT(1'b0),
        .DI(s0__71_carry__1_i_4_0[3:0]),
        .O({s0__35_carry_n_4,s0__35_carry_n_5,s0__35_carry_n_6,s0__35_carry_n_7}),
        .S(s0__71_carry_i_4_0));
  CARRY4 s0__35_carry__0
       (.CI(s0__35_carry_n_0),
        .CO({s0__35_carry__0_n_0,s0__35_carry__0_n_1,s0__35_carry__0_n_2,s0__35_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(s0__71_carry__1_i_4_0[7:4]),
        .O({s0__35_carry__0_n_4,s0__35_carry__0_n_5,s0__35_carry__0_n_6,s0__35_carry__0_n_7}),
        .S(s0__71_carry__0_i_4_0));
  CARRY4 s0__35_carry__1
       (.CI(s0__35_carry__0_n_0),
        .CO({CO,s0__35_carry__1_n_1,s0__35_carry__1_n_2,s0__35_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({s0__71_carry__1_i_4_1,s0__71_carry__1_i_4_0[10:8]}),
        .O({s0__35_carry__1_n_4,s0__35_carry__1_n_5,s0__35_carry__1_n_6,s0__35_carry__1_n_7}),
        .S(s0__71_carry__1_i_4_2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0__71_carry
       (.CI(1'b0),
        .CO({s0__71_carry_n_0,s0__71_carry_n_1,s0__71_carry_n_2,s0__71_carry_n_3}),
        .CYINIT(1'b0),
        .DI({s0_carry_n_4,s0_carry_n_5,s0_carry_n_6,s0_carry_n_7}),
        .O(int_s[3:0]),
        .S({s0__71_carry_i_1_n_0,s0__71_carry_i_2_n_0,s0__71_carry_i_3_n_0,s0__71_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0__71_carry__0
       (.CI(s0__71_carry_n_0),
        .CO({s0__71_carry__0_n_0,s0__71_carry__0_n_1,s0__71_carry__0_n_2,s0__71_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({s0_carry__0_n_4,s0_carry__0_n_5,s0_carry__0_n_6,s0_carry__0_n_7}),
        .O(int_s[7:4]),
        .S({s0__71_carry__0_i_1_n_0,s0__71_carry__0_i_2_n_0,s0__71_carry__0_i_3_n_0,s0__71_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__0_i_1
       (.I0(s0_carry__0_n_4),
        .I1(s0__35_carry__0_n_4),
        .O(s0__71_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__0_i_2
       (.I0(s0_carry__0_n_5),
        .I1(s0__35_carry__0_n_5),
        .O(s0__71_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__0_i_3
       (.I0(s0_carry__0_n_6),
        .I1(s0__35_carry__0_n_6),
        .O(s0__71_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__0_i_4
       (.I0(s0_carry__0_n_7),
        .I1(s0__35_carry__0_n_7),
        .O(s0__71_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0__71_carry__1
       (.CI(s0__71_carry__0_n_0),
        .CO({s0__71_carry__1_n_0,s0__71_carry__1_n_1,s0__71_carry__1_n_2,s0__71_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({s0_carry__1_n_4,s0_carry__1_n_5,s0_carry__1_n_6,s0_carry__1_n_7}),
        .O(int_s[11:8]),
        .S({s0__71_carry__1_i_1_n_0,s0__71_carry__1_i_2_n_0,s0__71_carry__1_i_3_n_0,s0__71_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__1_i_1
       (.I0(s0_carry__1_n_4),
        .I1(s0__35_carry__1_n_4),
        .O(s0__71_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__1_i_2
       (.I0(s0_carry__1_n_5),
        .I1(s0__35_carry__1_n_5),
        .O(s0__71_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__1_i_3
       (.I0(s0_carry__1_n_6),
        .I1(s0__35_carry__1_n_6),
        .O(s0__71_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry__1_i_4
       (.I0(s0_carry__1_n_7),
        .I1(s0__35_carry__1_n_7),
        .O(s0__71_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0__71_carry__2
       (.CI(s0__71_carry__1_n_0),
        .CO({NLW_s0__71_carry__2_CO_UNCONNECTED[3:1],s0__71_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,s0_carry__2_n_7}),
        .O({NLW_s0__71_carry__2_O_UNCONNECTED[3:2],int_s[13:12]}),
        .S({1'b0,1'b0,s0__71_carry__2_i_1_n_0,s0__71_carry__2_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    s0__71_carry__2_i_1
       (.I0(s0_carry__2_n_7),
        .I1(p0__0_1),
        .O(s0__71_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s0__71_carry__2_i_2
       (.I0(s0_carry__2_n_7),
        .I1(p0__0_1),
        .O(s0__71_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry_i_1
       (.I0(s0_carry_n_4),
        .I1(s0__35_carry_n_4),
        .O(s0__71_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry_i_2
       (.I0(s0_carry_n_5),
        .I1(s0__35_carry_n_5),
        .O(s0__71_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry_i_3
       (.I0(s0_carry_n_6),
        .I1(s0__35_carry_n_6),
        .O(s0__71_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    s0__71_carry_i_4
       (.I0(s0_carry_n_7),
        .I1(s0__35_carry_n_7),
        .O(s0__71_carry_i_4_n_0));
  CARRY4 s0_carry
       (.CI(1'b0),
        .CO({s0_carry_n_0,s0_carry_n_1,s0_carry_n_2,s0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({s0_carry_n_4,s0_carry_n_5,s0_carry_n_6,s0_carry_n_7}),
        .S(S));
  CARRY4 s0_carry__0
       (.CI(s0_carry_n_0),
        .CO({s0_carry__0_n_0,s0_carry__0_n_1,s0_carry__0_n_2,s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({s0_carry__0_n_4,s0_carry__0_n_5,s0_carry__0_n_6,s0_carry__0_n_7}),
        .S(p0__0));
  CARRY4 s0_carry__1
       (.CI(s0_carry__0_n_0),
        .CO({s0_carry__1_n_0,s0_carry__1_n_1,s0_carry__1_n_2,s0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({DI,Q[10:8]}),
        .O({s0_carry__1_n_4,s0_carry__1_n_5,s0_carry__1_n_6,s0_carry__1_n_7}),
        .S(p0__0_0));
  CARRY4 s0_carry__2
       (.CI(s0_carry__1_n_0),
        .CO(NLW_s0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_s0_carry__2_O_UNCONNECTED[3:1],s0_carry__2_n_7}),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "gen_adder" *) 
module system_SPGD_SYS_0_gen_adder__parameterized0
   (\int_data_reg_reg[3] ,
    \int_data_reg_reg[7] ,
    \int_data_reg_reg[11] ,
    \int_data_reg_reg[15] ,
    \int_data_reg_reg[19] ,
    \int_data_reg_reg[23] ,
    \int_data_reg_reg[27] ,
    \int_data_reg_reg[31] ,
    \int_data_reg_reg[35] ,
    \int_data_reg_reg[39] ,
    \int_data_reg_reg[43] ,
    \int_data_reg_reg[47] ,
    \int_data_reg_reg[51] ,
    \int_data_reg_reg[55] ,
    \int_data_reg_reg[59] ,
    O,
    int_data_reg_reg,
    \DAC_A_OUT[3] ,
    \DAC_A_OUT[7] ,
    \DAC_A_OUT[11] ,
    \DAC_A_OUT[15] ,
    \DAC_A_OUT[19] ,
    \DAC_A_OUT[23] ,
    \DAC_A_OUT[27] ,
    \DAC_A_OUT[31] ,
    \DAC_A_OUT[35] ,
    \DAC_A_OUT[39] ,
    \DAC_A_OUT[43] ,
    \DAC_A_OUT[47] ,
    \DAC_A_OUT[51] ,
    \DAC_A_OUT[55] ,
    \DAC_A_OUT[59] ,
    S);
  output [3:0]\int_data_reg_reg[3] ;
  output [3:0]\int_data_reg_reg[7] ;
  output [3:0]\int_data_reg_reg[11] ;
  output [3:0]\int_data_reg_reg[15] ;
  output [3:0]\int_data_reg_reg[19] ;
  output [3:0]\int_data_reg_reg[23] ;
  output [3:0]\int_data_reg_reg[27] ;
  output [3:0]\int_data_reg_reg[31] ;
  output [3:0]\int_data_reg_reg[35] ;
  output [3:0]\int_data_reg_reg[39] ;
  output [3:0]\int_data_reg_reg[43] ;
  output [3:0]\int_data_reg_reg[47] ;
  output [3:0]\int_data_reg_reg[51] ;
  output [3:0]\int_data_reg_reg[55] ;
  output [3:0]\int_data_reg_reg[59] ;
  output [3:0]O;
  input [62:0]int_data_reg_reg;
  input [3:0]\DAC_A_OUT[3] ;
  input [3:0]\DAC_A_OUT[7] ;
  input [3:0]\DAC_A_OUT[11] ;
  input [3:0]\DAC_A_OUT[15] ;
  input [3:0]\DAC_A_OUT[19] ;
  input [3:0]\DAC_A_OUT[23] ;
  input [3:0]\DAC_A_OUT[27] ;
  input [3:0]\DAC_A_OUT[31] ;
  input [3:0]\DAC_A_OUT[35] ;
  input [3:0]\DAC_A_OUT[39] ;
  input [3:0]\DAC_A_OUT[43] ;
  input [3:0]\DAC_A_OUT[47] ;
  input [3:0]\DAC_A_OUT[51] ;
  input [3:0]\DAC_A_OUT[55] ;
  input [3:0]\DAC_A_OUT[59] ;
  input [3:0]S;

  wire [3:0]\DAC_A_OUT[11] ;
  wire [3:0]\DAC_A_OUT[15] ;
  wire [3:0]\DAC_A_OUT[19] ;
  wire [3:0]\DAC_A_OUT[23] ;
  wire [3:0]\DAC_A_OUT[27] ;
  wire [3:0]\DAC_A_OUT[31] ;
  wire [3:0]\DAC_A_OUT[35] ;
  wire [3:0]\DAC_A_OUT[39] ;
  wire [3:0]\DAC_A_OUT[3] ;
  wire [3:0]\DAC_A_OUT[43] ;
  wire [3:0]\DAC_A_OUT[47] ;
  wire [3:0]\DAC_A_OUT[51] ;
  wire [3:0]\DAC_A_OUT[55] ;
  wire [3:0]\DAC_A_OUT[59] ;
  wire [3:0]\DAC_A_OUT[7] ;
  wire [3:0]O;
  wire [3:0]S;
  wire [62:0]int_data_reg_reg;
  wire [3:0]\int_data_reg_reg[11] ;
  wire [3:0]\int_data_reg_reg[15] ;
  wire [3:0]\int_data_reg_reg[19] ;
  wire [3:0]\int_data_reg_reg[23] ;
  wire [3:0]\int_data_reg_reg[27] ;
  wire [3:0]\int_data_reg_reg[31] ;
  wire [3:0]\int_data_reg_reg[35] ;
  wire [3:0]\int_data_reg_reg[39] ;
  wire [3:0]\int_data_reg_reg[3] ;
  wire [3:0]\int_data_reg_reg[43] ;
  wire [3:0]\int_data_reg_reg[47] ;
  wire [3:0]\int_data_reg_reg[51] ;
  wire [3:0]\int_data_reg_reg[55] ;
  wire [3:0]\int_data_reg_reg[59] ;
  wire [3:0]\int_data_reg_reg[7] ;
  wire s0_carry__0_n_0;
  wire s0_carry__0_n_1;
  wire s0_carry__0_n_2;
  wire s0_carry__0_n_3;
  wire s0_carry__10_n_0;
  wire s0_carry__10_n_1;
  wire s0_carry__10_n_2;
  wire s0_carry__10_n_3;
  wire s0_carry__11_n_0;
  wire s0_carry__11_n_1;
  wire s0_carry__11_n_2;
  wire s0_carry__11_n_3;
  wire s0_carry__12_n_0;
  wire s0_carry__12_n_1;
  wire s0_carry__12_n_2;
  wire s0_carry__12_n_3;
  wire s0_carry__13_n_0;
  wire s0_carry__13_n_1;
  wire s0_carry__13_n_2;
  wire s0_carry__13_n_3;
  wire s0_carry__14_n_1;
  wire s0_carry__14_n_2;
  wire s0_carry__14_n_3;
  wire s0_carry__1_n_0;
  wire s0_carry__1_n_1;
  wire s0_carry__1_n_2;
  wire s0_carry__1_n_3;
  wire s0_carry__2_n_0;
  wire s0_carry__2_n_1;
  wire s0_carry__2_n_2;
  wire s0_carry__2_n_3;
  wire s0_carry__3_n_0;
  wire s0_carry__3_n_1;
  wire s0_carry__3_n_2;
  wire s0_carry__3_n_3;
  wire s0_carry__4_n_0;
  wire s0_carry__4_n_1;
  wire s0_carry__4_n_2;
  wire s0_carry__4_n_3;
  wire s0_carry__5_n_0;
  wire s0_carry__5_n_1;
  wire s0_carry__5_n_2;
  wire s0_carry__5_n_3;
  wire s0_carry__6_n_0;
  wire s0_carry__6_n_1;
  wire s0_carry__6_n_2;
  wire s0_carry__6_n_3;
  wire s0_carry__7_n_0;
  wire s0_carry__7_n_1;
  wire s0_carry__7_n_2;
  wire s0_carry__7_n_3;
  wire s0_carry__8_n_0;
  wire s0_carry__8_n_1;
  wire s0_carry__8_n_2;
  wire s0_carry__8_n_3;
  wire s0_carry__9_n_0;
  wire s0_carry__9_n_1;
  wire s0_carry__9_n_2;
  wire s0_carry__9_n_3;
  wire s0_carry_n_0;
  wire s0_carry_n_1;
  wire s0_carry_n_2;
  wire s0_carry_n_3;
  wire [3:3]NLW_s0_carry__14_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry
       (.CI(1'b0),
        .CO({s0_carry_n_0,s0_carry_n_1,s0_carry_n_2,s0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[3:0]),
        .O(\int_data_reg_reg[3] ),
        .S(\DAC_A_OUT[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__0
       (.CI(s0_carry_n_0),
        .CO({s0_carry__0_n_0,s0_carry__0_n_1,s0_carry__0_n_2,s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[7:4]),
        .O(\int_data_reg_reg[7] ),
        .S(\DAC_A_OUT[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__1
       (.CI(s0_carry__0_n_0),
        .CO({s0_carry__1_n_0,s0_carry__1_n_1,s0_carry__1_n_2,s0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[11:8]),
        .O(\int_data_reg_reg[11] ),
        .S(\DAC_A_OUT[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__10
       (.CI(s0_carry__9_n_0),
        .CO({s0_carry__10_n_0,s0_carry__10_n_1,s0_carry__10_n_2,s0_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[47:44]),
        .O(\int_data_reg_reg[47] ),
        .S(\DAC_A_OUT[47] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__11
       (.CI(s0_carry__10_n_0),
        .CO({s0_carry__11_n_0,s0_carry__11_n_1,s0_carry__11_n_2,s0_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[51:48]),
        .O(\int_data_reg_reg[51] ),
        .S(\DAC_A_OUT[51] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__12
       (.CI(s0_carry__11_n_0),
        .CO({s0_carry__12_n_0,s0_carry__12_n_1,s0_carry__12_n_2,s0_carry__12_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[55:52]),
        .O(\int_data_reg_reg[55] ),
        .S(\DAC_A_OUT[55] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__13
       (.CI(s0_carry__12_n_0),
        .CO({s0_carry__13_n_0,s0_carry__13_n_1,s0_carry__13_n_2,s0_carry__13_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[59:56]),
        .O(\int_data_reg_reg[59] ),
        .S(\DAC_A_OUT[59] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__14
       (.CI(s0_carry__13_n_0),
        .CO({NLW_s0_carry__14_CO_UNCONNECTED[3],s0_carry__14_n_1,s0_carry__14_n_2,s0_carry__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,int_data_reg_reg[62:60]}),
        .O(O),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__2
       (.CI(s0_carry__1_n_0),
        .CO({s0_carry__2_n_0,s0_carry__2_n_1,s0_carry__2_n_2,s0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[15:12]),
        .O(\int_data_reg_reg[15] ),
        .S(\DAC_A_OUT[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__3
       (.CI(s0_carry__2_n_0),
        .CO({s0_carry__3_n_0,s0_carry__3_n_1,s0_carry__3_n_2,s0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[19:16]),
        .O(\int_data_reg_reg[19] ),
        .S(\DAC_A_OUT[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__4
       (.CI(s0_carry__3_n_0),
        .CO({s0_carry__4_n_0,s0_carry__4_n_1,s0_carry__4_n_2,s0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[23:20]),
        .O(\int_data_reg_reg[23] ),
        .S(\DAC_A_OUT[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__5
       (.CI(s0_carry__4_n_0),
        .CO({s0_carry__5_n_0,s0_carry__5_n_1,s0_carry__5_n_2,s0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[27:24]),
        .O(\int_data_reg_reg[27] ),
        .S(\DAC_A_OUT[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__6
       (.CI(s0_carry__5_n_0),
        .CO({s0_carry__6_n_0,s0_carry__6_n_1,s0_carry__6_n_2,s0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[31:28]),
        .O(\int_data_reg_reg[31] ),
        .S(\DAC_A_OUT[31] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__7
       (.CI(s0_carry__6_n_0),
        .CO({s0_carry__7_n_0,s0_carry__7_n_1,s0_carry__7_n_2,s0_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[35:32]),
        .O(\int_data_reg_reg[35] ),
        .S(\DAC_A_OUT[35] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__8
       (.CI(s0_carry__7_n_0),
        .CO({s0_carry__8_n_0,s0_carry__8_n_1,s0_carry__8_n_2,s0_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[39:36]),
        .O(\int_data_reg_reg[39] ),
        .S(\DAC_A_OUT[39] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__9
       (.CI(s0_carry__8_n_0),
        .CO({s0_carry__9_n_0,s0_carry__9_n_1,s0_carry__9_n_2,s0_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[43:40]),
        .O(\int_data_reg_reg[43] ),
        .S(\DAC_A_OUT[43] ));
endmodule

(* ORIG_REF_NAME = "gen_adder" *) 
module system_SPGD_SYS_0_gen_adder__parameterized0_5
   (\int_data_reg_reg[3] ,
    \int_data_reg_reg[7] ,
    \int_data_reg_reg[11] ,
    \int_data_reg_reg[15] ,
    \int_data_reg_reg[19] ,
    \int_data_reg_reg[23] ,
    \int_data_reg_reg[27] ,
    \int_data_reg_reg[31] ,
    \int_data_reg_reg[35] ,
    \int_data_reg_reg[39] ,
    \int_data_reg_reg[43] ,
    \int_data_reg_reg[47] ,
    \int_data_reg_reg[51] ,
    \int_data_reg_reg[55] ,
    \int_data_reg_reg[59] ,
    \int_data_reg_reg[62] ,
    int_data_reg_reg,
    \DAC_B_OUT[3] ,
    \DAC_B_OUT[7] ,
    \DAC_B_OUT[11] ,
    \DAC_B_OUT[15] ,
    \DAC_B_OUT[19] ,
    \DAC_B_OUT[23] ,
    \DAC_B_OUT[27] ,
    \DAC_B_OUT[31] ,
    \DAC_B_OUT[35] ,
    \DAC_B_OUT[39] ,
    \DAC_B_OUT[43] ,
    \DAC_B_OUT[47] ,
    \DAC_B_OUT[51] ,
    \DAC_B_OUT[55] ,
    \DAC_B_OUT[59] ,
    S);
  output [3:0]\int_data_reg_reg[3] ;
  output [3:0]\int_data_reg_reg[7] ;
  output [3:0]\int_data_reg_reg[11] ;
  output [3:0]\int_data_reg_reg[15] ;
  output [3:0]\int_data_reg_reg[19] ;
  output [3:0]\int_data_reg_reg[23] ;
  output [3:0]\int_data_reg_reg[27] ;
  output [3:0]\int_data_reg_reg[31] ;
  output [3:0]\int_data_reg_reg[35] ;
  output [3:0]\int_data_reg_reg[39] ;
  output [3:0]\int_data_reg_reg[43] ;
  output [3:0]\int_data_reg_reg[47] ;
  output [3:0]\int_data_reg_reg[51] ;
  output [3:0]\int_data_reg_reg[55] ;
  output [3:0]\int_data_reg_reg[59] ;
  output [3:0]\int_data_reg_reg[62] ;
  input [62:0]int_data_reg_reg;
  input [3:0]\DAC_B_OUT[3] ;
  input [3:0]\DAC_B_OUT[7] ;
  input [3:0]\DAC_B_OUT[11] ;
  input [3:0]\DAC_B_OUT[15] ;
  input [3:0]\DAC_B_OUT[19] ;
  input [3:0]\DAC_B_OUT[23] ;
  input [3:0]\DAC_B_OUT[27] ;
  input [3:0]\DAC_B_OUT[31] ;
  input [3:0]\DAC_B_OUT[35] ;
  input [3:0]\DAC_B_OUT[39] ;
  input [3:0]\DAC_B_OUT[43] ;
  input [3:0]\DAC_B_OUT[47] ;
  input [3:0]\DAC_B_OUT[51] ;
  input [3:0]\DAC_B_OUT[55] ;
  input [3:0]\DAC_B_OUT[59] ;
  input [3:0]S;

  wire [3:0]\DAC_B_OUT[11] ;
  wire [3:0]\DAC_B_OUT[15] ;
  wire [3:0]\DAC_B_OUT[19] ;
  wire [3:0]\DAC_B_OUT[23] ;
  wire [3:0]\DAC_B_OUT[27] ;
  wire [3:0]\DAC_B_OUT[31] ;
  wire [3:0]\DAC_B_OUT[35] ;
  wire [3:0]\DAC_B_OUT[39] ;
  wire [3:0]\DAC_B_OUT[3] ;
  wire [3:0]\DAC_B_OUT[43] ;
  wire [3:0]\DAC_B_OUT[47] ;
  wire [3:0]\DAC_B_OUT[51] ;
  wire [3:0]\DAC_B_OUT[55] ;
  wire [3:0]\DAC_B_OUT[59] ;
  wire [3:0]\DAC_B_OUT[7] ;
  wire [3:0]S;
  wire [62:0]int_data_reg_reg;
  wire [3:0]\int_data_reg_reg[11] ;
  wire [3:0]\int_data_reg_reg[15] ;
  wire [3:0]\int_data_reg_reg[19] ;
  wire [3:0]\int_data_reg_reg[23] ;
  wire [3:0]\int_data_reg_reg[27] ;
  wire [3:0]\int_data_reg_reg[31] ;
  wire [3:0]\int_data_reg_reg[35] ;
  wire [3:0]\int_data_reg_reg[39] ;
  wire [3:0]\int_data_reg_reg[3] ;
  wire [3:0]\int_data_reg_reg[43] ;
  wire [3:0]\int_data_reg_reg[47] ;
  wire [3:0]\int_data_reg_reg[51] ;
  wire [3:0]\int_data_reg_reg[55] ;
  wire [3:0]\int_data_reg_reg[59] ;
  wire [3:0]\int_data_reg_reg[62] ;
  wire [3:0]\int_data_reg_reg[7] ;
  wire s0_carry__0_n_0;
  wire s0_carry__0_n_1;
  wire s0_carry__0_n_2;
  wire s0_carry__0_n_3;
  wire s0_carry__10_n_0;
  wire s0_carry__10_n_1;
  wire s0_carry__10_n_2;
  wire s0_carry__10_n_3;
  wire s0_carry__11_n_0;
  wire s0_carry__11_n_1;
  wire s0_carry__11_n_2;
  wire s0_carry__11_n_3;
  wire s0_carry__12_n_0;
  wire s0_carry__12_n_1;
  wire s0_carry__12_n_2;
  wire s0_carry__12_n_3;
  wire s0_carry__13_n_0;
  wire s0_carry__13_n_1;
  wire s0_carry__13_n_2;
  wire s0_carry__13_n_3;
  wire s0_carry__14_n_1;
  wire s0_carry__14_n_2;
  wire s0_carry__14_n_3;
  wire s0_carry__1_n_0;
  wire s0_carry__1_n_1;
  wire s0_carry__1_n_2;
  wire s0_carry__1_n_3;
  wire s0_carry__2_n_0;
  wire s0_carry__2_n_1;
  wire s0_carry__2_n_2;
  wire s0_carry__2_n_3;
  wire s0_carry__3_n_0;
  wire s0_carry__3_n_1;
  wire s0_carry__3_n_2;
  wire s0_carry__3_n_3;
  wire s0_carry__4_n_0;
  wire s0_carry__4_n_1;
  wire s0_carry__4_n_2;
  wire s0_carry__4_n_3;
  wire s0_carry__5_n_0;
  wire s0_carry__5_n_1;
  wire s0_carry__5_n_2;
  wire s0_carry__5_n_3;
  wire s0_carry__6_n_0;
  wire s0_carry__6_n_1;
  wire s0_carry__6_n_2;
  wire s0_carry__6_n_3;
  wire s0_carry__7_n_0;
  wire s0_carry__7_n_1;
  wire s0_carry__7_n_2;
  wire s0_carry__7_n_3;
  wire s0_carry__8_n_0;
  wire s0_carry__8_n_1;
  wire s0_carry__8_n_2;
  wire s0_carry__8_n_3;
  wire s0_carry__9_n_0;
  wire s0_carry__9_n_1;
  wire s0_carry__9_n_2;
  wire s0_carry__9_n_3;
  wire s0_carry_n_0;
  wire s0_carry_n_1;
  wire s0_carry_n_2;
  wire s0_carry_n_3;
  wire [3:3]NLW_s0_carry__14_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry
       (.CI(1'b0),
        .CO({s0_carry_n_0,s0_carry_n_1,s0_carry_n_2,s0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[3:0]),
        .O(\int_data_reg_reg[3] ),
        .S(\DAC_B_OUT[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__0
       (.CI(s0_carry_n_0),
        .CO({s0_carry__0_n_0,s0_carry__0_n_1,s0_carry__0_n_2,s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[7:4]),
        .O(\int_data_reg_reg[7] ),
        .S(\DAC_B_OUT[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__1
       (.CI(s0_carry__0_n_0),
        .CO({s0_carry__1_n_0,s0_carry__1_n_1,s0_carry__1_n_2,s0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[11:8]),
        .O(\int_data_reg_reg[11] ),
        .S(\DAC_B_OUT[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__10
       (.CI(s0_carry__9_n_0),
        .CO({s0_carry__10_n_0,s0_carry__10_n_1,s0_carry__10_n_2,s0_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[47:44]),
        .O(\int_data_reg_reg[47] ),
        .S(\DAC_B_OUT[47] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__11
       (.CI(s0_carry__10_n_0),
        .CO({s0_carry__11_n_0,s0_carry__11_n_1,s0_carry__11_n_2,s0_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[51:48]),
        .O(\int_data_reg_reg[51] ),
        .S(\DAC_B_OUT[51] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__12
       (.CI(s0_carry__11_n_0),
        .CO({s0_carry__12_n_0,s0_carry__12_n_1,s0_carry__12_n_2,s0_carry__12_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[55:52]),
        .O(\int_data_reg_reg[55] ),
        .S(\DAC_B_OUT[55] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__13
       (.CI(s0_carry__12_n_0),
        .CO({s0_carry__13_n_0,s0_carry__13_n_1,s0_carry__13_n_2,s0_carry__13_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[59:56]),
        .O(\int_data_reg_reg[59] ),
        .S(\DAC_B_OUT[59] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__14
       (.CI(s0_carry__13_n_0),
        .CO({NLW_s0_carry__14_CO_UNCONNECTED[3],s0_carry__14_n_1,s0_carry__14_n_2,s0_carry__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,int_data_reg_reg[62:60]}),
        .O(\int_data_reg_reg[62] ),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__2
       (.CI(s0_carry__1_n_0),
        .CO({s0_carry__2_n_0,s0_carry__2_n_1,s0_carry__2_n_2,s0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[15:12]),
        .O(\int_data_reg_reg[15] ),
        .S(\DAC_B_OUT[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__3
       (.CI(s0_carry__2_n_0),
        .CO({s0_carry__3_n_0,s0_carry__3_n_1,s0_carry__3_n_2,s0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[19:16]),
        .O(\int_data_reg_reg[19] ),
        .S(\DAC_B_OUT[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__4
       (.CI(s0_carry__3_n_0),
        .CO({s0_carry__4_n_0,s0_carry__4_n_1,s0_carry__4_n_2,s0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[23:20]),
        .O(\int_data_reg_reg[23] ),
        .S(\DAC_B_OUT[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__5
       (.CI(s0_carry__4_n_0),
        .CO({s0_carry__5_n_0,s0_carry__5_n_1,s0_carry__5_n_2,s0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[27:24]),
        .O(\int_data_reg_reg[27] ),
        .S(\DAC_B_OUT[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__6
       (.CI(s0_carry__5_n_0),
        .CO({s0_carry__6_n_0,s0_carry__6_n_1,s0_carry__6_n_2,s0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[31:28]),
        .O(\int_data_reg_reg[31] ),
        .S(\DAC_B_OUT[31] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__7
       (.CI(s0_carry__6_n_0),
        .CO({s0_carry__7_n_0,s0_carry__7_n_1,s0_carry__7_n_2,s0_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[35:32]),
        .O(\int_data_reg_reg[35] ),
        .S(\DAC_B_OUT[35] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__8
       (.CI(s0_carry__7_n_0),
        .CO({s0_carry__8_n_0,s0_carry__8_n_1,s0_carry__8_n_2,s0_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[39:36]),
        .O(\int_data_reg_reg[39] ),
        .S(\DAC_B_OUT[39] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__9
       (.CI(s0_carry__8_n_0),
        .CO({s0_carry__9_n_0,s0_carry__9_n_1,s0_carry__9_n_2,s0_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[43:40]),
        .O(\int_data_reg_reg[43] ),
        .S(\DAC_B_OUT[43] ));
endmodule

(* ORIG_REF_NAME = "gen_counter" *) 
module system_SPGD_SYS_0_gen_counter
   (D,
    ADC_CLK,
    MATH_a_en,
    Q,
    ADC_DONE);
  output [1:0]D;
  input ADC_CLK;
  input MATH_a_en;
  input [1:0]Q;
  input ADC_DONE;

  wire ADC_CLK;
  wire ADC_DONE;
  wire [1:0]D;
  wire F_O_i_1__0_n_0;
  wire F_O_reg_n_0;
  wire MATH_a_en;
  wire [1:0]Q;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[0]_i_2__0_n_0 ;
  wire \count[0]_i_4__0_n_0 ;
  wire \count[0]_i_5__0_n_0 ;
  wire \count[0]_i_6__0_n_0 ;
  wire [14:1]count_reg;
  wire \count_reg[0]_i_3__0_n_0 ;
  wire \count_reg[0]_i_3__0_n_1 ;
  wire \count_reg[0]_i_3__0_n_2 ;
  wire \count_reg[0]_i_3__0_n_3 ;
  wire \count_reg[0]_i_3__0_n_4 ;
  wire \count_reg[0]_i_3__0_n_5 ;
  wire \count_reg[0]_i_3__0_n_6 ;
  wire \count_reg[0]_i_3__0_n_7 ;
  wire \count_reg[12]_i_1__0_n_2 ;
  wire \count_reg[12]_i_1__0_n_3 ;
  wire \count_reg[12]_i_1__0_n_5 ;
  wire \count_reg[12]_i_1__0_n_6 ;
  wire \count_reg[12]_i_1__0_n_7 ;
  wire \count_reg[4]_i_1__0_n_0 ;
  wire \count_reg[4]_i_1__0_n_1 ;
  wire \count_reg[4]_i_1__0_n_2 ;
  wire \count_reg[4]_i_1__0_n_3 ;
  wire \count_reg[4]_i_1__0_n_4 ;
  wire \count_reg[4]_i_1__0_n_5 ;
  wire \count_reg[4]_i_1__0_n_6 ;
  wire \count_reg[4]_i_1__0_n_7 ;
  wire \count_reg[8]_i_1__0_n_0 ;
  wire \count_reg[8]_i_1__0_n_1 ;
  wire \count_reg[8]_i_1__0_n_2 ;
  wire \count_reg[8]_i_1__0_n_3 ;
  wire \count_reg[8]_i_1__0_n_4 ;
  wire \count_reg[8]_i_1__0_n_5 ;
  wire \count_reg[8]_i_1__0_n_6 ;
  wire \count_reg[8]_i_1__0_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire [3:2]\NLW_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[12]_i_1__0_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_next_state[3]_i_1 
       (.I0(F_O_reg_n_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(ADC_DONE),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_next_state[4]_i_1 
       (.I0(F_O_reg_n_0),
        .I1(Q[1]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hD0)) 
    F_O_i_1__0
       (.I0(\count[0]_i_2__0_n_0 ),
        .I1(F_O_reg_n_0),
        .I2(MATH_a_en),
        .O(F_O_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    F_O_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(F_O_i_1__0_n_0),
        .Q(F_O_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(MATH_a_en),
        .O(\count[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count[0]_i_2__0 
       (.I0(\count[0]_i_4__0_n_0 ),
        .I1(count_reg[4]),
        .I2(count_reg[8]),
        .I3(count_reg[7]),
        .I4(count_reg[14]),
        .I5(\count[0]_i_5__0_n_0 ),
        .O(\count[0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_4__0 
       (.I0(count_reg[11]),
        .I1(count_reg[12]),
        .I2(count_reg[6]),
        .I3(count_reg[9]),
        .O(\count[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \count[0]_i_5__0 
       (.I0(count_reg[1]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(count_reg[10]),
        .I4(count_reg[5]),
        .I5(count_reg[13]),
        .O(\count[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_6__0 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_6__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__0_n_0 ),
        .D(\count_reg[0]_i_3__0_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3__0_n_0 ,\count_reg[0]_i_3__0_n_1 ,\count_reg[0]_i_3__0_n_2 ,\count_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3__0_n_4 ,\count_reg[0]_i_3__0_n_5 ,\count_reg[0]_i_3__0_n_6 ,\count_reg[0]_i_3__0_n_7 }),
        .S({count_reg[3:1],\count[0]_i_6__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__0_n_0 ),
        .D(\count_reg[8]_i_1__0_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__0_n_0 ),
        .D(\count_reg[8]_i_1__0_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__0_n_0 ),
        .D(\count_reg[12]_i_1__0_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1__0 
       (.CI(\count_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_count_reg[12]_i_1__0_CO_UNCONNECTED [3:2],\count_reg[12]_i_1__0_n_2 ,\count_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[12]_i_1__0_O_UNCONNECTED [3],\count_reg[12]_i_1__0_n_5 ,\count_reg[12]_i_1__0_n_6 ,\count_reg[12]_i_1__0_n_7 }),
        .S({1'b0,count_reg[14:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__0_n_0 ),
        .D(\count_reg[12]_i_1__0_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__0_n_0 ),
        .D(\count_reg[12]_i_1__0_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__0_n_0 ),
        .D(\count_reg[0]_i_3__0_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__0_n_0 ),
        .D(\count_reg[0]_i_3__0_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__0_n_0 ),
        .D(\count_reg[0]_i_3__0_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__0_n_0 ),
        .D(\count_reg[4]_i_1__0_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1__0 
       (.CI(\count_reg[0]_i_3__0_n_0 ),
        .CO({\count_reg[4]_i_1__0_n_0 ,\count_reg[4]_i_1__0_n_1 ,\count_reg[4]_i_1__0_n_2 ,\count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__0_n_4 ,\count_reg[4]_i_1__0_n_5 ,\count_reg[4]_i_1__0_n_6 ,\count_reg[4]_i_1__0_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__0_n_0 ),
        .D(\count_reg[4]_i_1__0_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__0_n_0 ),
        .D(\count_reg[4]_i_1__0_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__0_n_0 ),
        .D(\count_reg[4]_i_1__0_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__0_n_0 ),
        .D(\count_reg[8]_i_1__0_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1__0 
       (.CI(\count_reg[4]_i_1__0_n_0 ),
        .CO({\count_reg[8]_i_1__0_n_0 ,\count_reg[8]_i_1__0_n_1 ,\count_reg[8]_i_1__0_n_2 ,\count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__0_n_4 ,\count_reg[8]_i_1__0_n_5 ,\count_reg[8]_i_1__0_n_6 ,\count_reg[8]_i_1__0_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__0_n_0 ),
        .D(\count_reg[8]_i_1__0_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "gen_counter" *) 
module system_SPGD_SYS_0_gen_counter_12
   (D,
    ADC_CLK,
    MATH_b_en,
    Q,
    ADC_DONE);
  output [1:0]D;
  input ADC_CLK;
  input MATH_b_en;
  input [1:0]Q;
  input ADC_DONE;

  wire ADC_CLK;
  wire ADC_DONE;
  wire [1:0]D;
  wire F_O_i_1__1_n_0;
  wire F_O_reg_n_0;
  wire MATH_b_en;
  wire [1:0]Q;
  wire \count[0]_i_1__2_n_0 ;
  wire \count[0]_i_2__1_n_0 ;
  wire \count[0]_i_4__2_n_0 ;
  wire \count[0]_i_5__2_n_0 ;
  wire \count[0]_i_6__2_n_0 ;
  wire [14:1]count_reg;
  wire \count_reg[0]_i_3__2_n_0 ;
  wire \count_reg[0]_i_3__2_n_1 ;
  wire \count_reg[0]_i_3__2_n_2 ;
  wire \count_reg[0]_i_3__2_n_3 ;
  wire \count_reg[0]_i_3__2_n_4 ;
  wire \count_reg[0]_i_3__2_n_5 ;
  wire \count_reg[0]_i_3__2_n_6 ;
  wire \count_reg[0]_i_3__2_n_7 ;
  wire \count_reg[12]_i_1__2_n_2 ;
  wire \count_reg[12]_i_1__2_n_3 ;
  wire \count_reg[12]_i_1__2_n_5 ;
  wire \count_reg[12]_i_1__2_n_6 ;
  wire \count_reg[12]_i_1__2_n_7 ;
  wire \count_reg[4]_i_1__2_n_0 ;
  wire \count_reg[4]_i_1__2_n_1 ;
  wire \count_reg[4]_i_1__2_n_2 ;
  wire \count_reg[4]_i_1__2_n_3 ;
  wire \count_reg[4]_i_1__2_n_4 ;
  wire \count_reg[4]_i_1__2_n_5 ;
  wire \count_reg[4]_i_1__2_n_6 ;
  wire \count_reg[4]_i_1__2_n_7 ;
  wire \count_reg[8]_i_1__2_n_0 ;
  wire \count_reg[8]_i_1__2_n_1 ;
  wire \count_reg[8]_i_1__2_n_2 ;
  wire \count_reg[8]_i_1__2_n_3 ;
  wire \count_reg[8]_i_1__2_n_4 ;
  wire \count_reg[8]_i_1__2_n_5 ;
  wire \count_reg[8]_i_1__2_n_6 ;
  wire \count_reg[8]_i_1__2_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire [3:2]\NLW_count_reg[12]_i_1__2_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[12]_i_1__2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_next_state[7]_i_1 
       (.I0(F_O_reg_n_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(ADC_DONE),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_next_state[8]_i_1 
       (.I0(F_O_reg_n_0),
        .I1(Q[1]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hD0)) 
    F_O_i_1__1
       (.I0(\count[0]_i_2__1_n_0 ),
        .I1(F_O_reg_n_0),
        .I2(MATH_b_en),
        .O(F_O_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    F_O_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(F_O_i_1__1_n_0),
        .Q(F_O_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__2 
       (.I0(MATH_b_en),
        .O(\count[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count[0]_i_2__1 
       (.I0(\count[0]_i_4__2_n_0 ),
        .I1(count_reg[4]),
        .I2(count_reg[8]),
        .I3(count_reg[7]),
        .I4(count_reg[14]),
        .I5(\count[0]_i_5__2_n_0 ),
        .O(\count[0]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_4__2 
       (.I0(count_reg[11]),
        .I1(count_reg[12]),
        .I2(count_reg[6]),
        .I3(count_reg[9]),
        .O(\count[0]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \count[0]_i_5__2 
       (.I0(count_reg[1]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(count_reg[10]),
        .I4(count_reg[5]),
        .I5(count_reg[13]),
        .O(\count[0]_i_5__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_6__2 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_6__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__1_n_0 ),
        .D(\count_reg[0]_i_3__2_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[0]_i_1__2_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_3__2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3__2_n_0 ,\count_reg[0]_i_3__2_n_1 ,\count_reg[0]_i_3__2_n_2 ,\count_reg[0]_i_3__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3__2_n_4 ,\count_reg[0]_i_3__2_n_5 ,\count_reg[0]_i_3__2_n_6 ,\count_reg[0]_i_3__2_n_7 }),
        .S({count_reg[3:1],\count[0]_i_6__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__1_n_0 ),
        .D(\count_reg[8]_i_1__2_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__1_n_0 ),
        .D(\count_reg[8]_i_1__2_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__1_n_0 ),
        .D(\count_reg[12]_i_1__2_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1__2_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1__2 
       (.CI(\count_reg[8]_i_1__2_n_0 ),
        .CO({\NLW_count_reg[12]_i_1__2_CO_UNCONNECTED [3:2],\count_reg[12]_i_1__2_n_2 ,\count_reg[12]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[12]_i_1__2_O_UNCONNECTED [3],\count_reg[12]_i_1__2_n_5 ,\count_reg[12]_i_1__2_n_6 ,\count_reg[12]_i_1__2_n_7 }),
        .S({1'b0,count_reg[14:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__1_n_0 ),
        .D(\count_reg[12]_i_1__2_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__1_n_0 ),
        .D(\count_reg[12]_i_1__2_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__1_n_0 ),
        .D(\count_reg[0]_i_3__2_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__1_n_0 ),
        .D(\count_reg[0]_i_3__2_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__1_n_0 ),
        .D(\count_reg[0]_i_3__2_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__1_n_0 ),
        .D(\count_reg[4]_i_1__2_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1__2_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1__2 
       (.CI(\count_reg[0]_i_3__2_n_0 ),
        .CO({\count_reg[4]_i_1__2_n_0 ,\count_reg[4]_i_1__2_n_1 ,\count_reg[4]_i_1__2_n_2 ,\count_reg[4]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__2_n_4 ,\count_reg[4]_i_1__2_n_5 ,\count_reg[4]_i_1__2_n_6 ,\count_reg[4]_i_1__2_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__1_n_0 ),
        .D(\count_reg[4]_i_1__2_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__1_n_0 ),
        .D(\count_reg[4]_i_1__2_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__1_n_0 ),
        .D(\count_reg[4]_i_1__2_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__1_n_0 ),
        .D(\count_reg[8]_i_1__2_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1__2_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1__2 
       (.CI(\count_reg[4]_i_1__2_n_0 ),
        .CO({\count_reg[8]_i_1__2_n_0 ,\count_reg[8]_i_1__2_n_1 ,\count_reg[8]_i_1__2_n_2 ,\count_reg[8]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__2_n_4 ,\count_reg[8]_i_1__2_n_5 ,\count_reg[8]_i_1__2_n_6 ,\count_reg[8]_i_1__2_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__1_n_0 ),
        .D(\count_reg[8]_i_1__2_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1__2_n_0 ));
endmodule

(* ORIG_REF_NAME = "gen_counter" *) 
module system_SPGD_SYS_0_gen_counter_13
   (D,
    ADC_CLK,
    MATH_c_en,
    Q);
  output [1:0]D;
  input ADC_CLK;
  input MATH_c_en;
  input [1:0]Q;

  wire ADC_CLK;
  wire [1:0]D;
  wire F_O_i_1__2_n_0;
  wire F_O_reg_n_0;
  wire MATH_c_en;
  wire [1:0]Q;
  wire \count[0]_i_1__3_n_0 ;
  wire \count[0]_i_2__2_n_0 ;
  wire \count[0]_i_4__3_n_0 ;
  wire \count[0]_i_5__3_n_0 ;
  wire \count[0]_i_6__3_n_0 ;
  wire \count[0]_i_7__1_n_0 ;
  wire \count[0]_i_8_n_0 ;
  wire [14:0]count_reg;
  wire \count_reg[0]_i_3__3_n_0 ;
  wire \count_reg[0]_i_3__3_n_1 ;
  wire \count_reg[0]_i_3__3_n_2 ;
  wire \count_reg[0]_i_3__3_n_3 ;
  wire \count_reg[0]_i_3__3_n_4 ;
  wire \count_reg[0]_i_3__3_n_5 ;
  wire \count_reg[0]_i_3__3_n_6 ;
  wire \count_reg[0]_i_3__3_n_7 ;
  wire \count_reg[12]_i_1__3_n_2 ;
  wire \count_reg[12]_i_1__3_n_3 ;
  wire \count_reg[12]_i_1__3_n_5 ;
  wire \count_reg[12]_i_1__3_n_6 ;
  wire \count_reg[12]_i_1__3_n_7 ;
  wire \count_reg[4]_i_1__3_n_0 ;
  wire \count_reg[4]_i_1__3_n_1 ;
  wire \count_reg[4]_i_1__3_n_2 ;
  wire \count_reg[4]_i_1__3_n_3 ;
  wire \count_reg[4]_i_1__3_n_4 ;
  wire \count_reg[4]_i_1__3_n_5 ;
  wire \count_reg[4]_i_1__3_n_6 ;
  wire \count_reg[4]_i_1__3_n_7 ;
  wire \count_reg[8]_i_1__3_n_0 ;
  wire \count_reg[8]_i_1__3_n_1 ;
  wire \count_reg[8]_i_1__3_n_2 ;
  wire \count_reg[8]_i_1__3_n_3 ;
  wire \count_reg[8]_i_1__3_n_4 ;
  wire \count_reg[8]_i_1__3_n_5 ;
  wire \count_reg[8]_i_1__3_n_6 ;
  wire \count_reg[8]_i_1__3_n_7 ;
  wire [3:2]\NLW_count_reg[12]_i_1__3_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[12]_i_1__3_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_next_state[10]_i_1 
       (.I0(F_O_reg_n_0),
        .I1(Q[1]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_next_state[9]_i_1 
       (.I0(Q[0]),
        .I1(F_O_reg_n_0),
        .I2(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    F_O_i_1__2
       (.I0(F_O_reg_n_0),
        .I1(\count[0]_i_4__3_n_0 ),
        .I2(MATH_c_en),
        .O(F_O_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    F_O_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(F_O_i_1__2_n_0),
        .Q(F_O_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__3 
       (.I0(MATH_c_en),
        .O(\count[0]_i_1__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2__2 
       (.I0(\count[0]_i_4__3_n_0 ),
        .O(\count[0]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count[0]_i_4__3 
       (.I0(\count[0]_i_6__3_n_0 ),
        .I1(\count[0]_i_7__1_n_0 ),
        .I2(\count[0]_i_8_n_0 ),
        .I3(count_reg[12]),
        .I4(count_reg[11]),
        .I5(count_reg[13]),
        .O(\count[0]_i_4__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_5__3 
       (.I0(count_reg[0]),
        .O(\count[0]_i_5__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_6__3 
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .I2(count_reg[9]),
        .I3(count_reg[10]),
        .O(\count[0]_i_6__3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \count[0]_i_7__1 
       (.I0(count_reg[3]),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .O(\count[0]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_8 
       (.I0(count_reg[7]),
        .I1(count_reg[8]),
        .I2(count_reg[6]),
        .I3(count_reg[14]),
        .O(\count[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__2_n_0 ),
        .D(\count_reg[0]_i_3__3_n_7 ),
        .Q(count_reg[0]),
        .R(\count[0]_i_1__3_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_3__3 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3__3_n_0 ,\count_reg[0]_i_3__3_n_1 ,\count_reg[0]_i_3__3_n_2 ,\count_reg[0]_i_3__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3__3_n_4 ,\count_reg[0]_i_3__3_n_5 ,\count_reg[0]_i_3__3_n_6 ,\count_reg[0]_i_3__3_n_7 }),
        .S({count_reg[3:1],\count[0]_i_5__3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__2_n_0 ),
        .D(\count_reg[8]_i_1__3_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__2_n_0 ),
        .D(\count_reg[8]_i_1__3_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__2_n_0 ),
        .D(\count_reg[12]_i_1__3_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1__3_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1__3 
       (.CI(\count_reg[8]_i_1__3_n_0 ),
        .CO({\NLW_count_reg[12]_i_1__3_CO_UNCONNECTED [3:2],\count_reg[12]_i_1__3_n_2 ,\count_reg[12]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[12]_i_1__3_O_UNCONNECTED [3],\count_reg[12]_i_1__3_n_5 ,\count_reg[12]_i_1__3_n_6 ,\count_reg[12]_i_1__3_n_7 }),
        .S({1'b0,count_reg[14:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__2_n_0 ),
        .D(\count_reg[12]_i_1__3_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__2_n_0 ),
        .D(\count_reg[12]_i_1__3_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__2_n_0 ),
        .D(\count_reg[0]_i_3__3_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__2_n_0 ),
        .D(\count_reg[0]_i_3__3_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__2_n_0 ),
        .D(\count_reg[0]_i_3__3_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__2_n_0 ),
        .D(\count_reg[4]_i_1__3_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1__3_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1__3 
       (.CI(\count_reg[0]_i_3__3_n_0 ),
        .CO({\count_reg[4]_i_1__3_n_0 ,\count_reg[4]_i_1__3_n_1 ,\count_reg[4]_i_1__3_n_2 ,\count_reg[4]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__3_n_4 ,\count_reg[4]_i_1__3_n_5 ,\count_reg[4]_i_1__3_n_6 ,\count_reg[4]_i_1__3_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__2_n_0 ),
        .D(\count_reg[4]_i_1__3_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__2_n_0 ),
        .D(\count_reg[4]_i_1__3_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__2_n_0 ),
        .D(\count_reg[4]_i_1__3_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__2_n_0 ),
        .D(\count_reg[8]_i_1__3_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1__3_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1__3 
       (.CI(\count_reg[4]_i_1__3_n_0 ),
        .CO({\count_reg[8]_i_1__3_n_0 ,\count_reg[8]_i_1__3_n_1 ,\count_reg[8]_i_1__3_n_2 ,\count_reg[8]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__3_n_4 ,\count_reg[8]_i_1__3_n_5 ,\count_reg[8]_i_1__3_n_6 ,\count_reg[8]_i_1__3_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__2_n_0 ),
        .D(\count_reg[8]_i_1__3_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1__3_n_0 ));
endmodule

(* ORIG_REF_NAME = "gen_counter" *) 
module system_SPGD_SYS_0_gen_counter_14
   (D,
    ADC_CLK,
    RNG_a_en,
    Q);
  output [1:0]D;
  input ADC_CLK;
  input RNG_a_en;
  input [1:0]Q;

  wire ADC_CLK;
  wire [1:0]D;
  wire F_O_i_1__3_n_0;
  wire F_O_reg_n_0;
  wire [1:0]Q;
  wire RNG_a_en;
  wire \count[0]_i_1__4_n_0 ;
  wire \count[0]_i_2__3_n_0 ;
  wire \count[0]_i_4__4_n_0 ;
  wire \count[0]_i_5__4_n_0 ;
  wire \count[0]_i_6__4_n_0 ;
  wire [14:2]count_reg;
  wire \count_reg[0]_i_3__4_n_0 ;
  wire \count_reg[0]_i_3__4_n_1 ;
  wire \count_reg[0]_i_3__4_n_2 ;
  wire \count_reg[0]_i_3__4_n_3 ;
  wire \count_reg[0]_i_3__4_n_4 ;
  wire \count_reg[0]_i_3__4_n_5 ;
  wire \count_reg[0]_i_3__4_n_6 ;
  wire \count_reg[0]_i_3__4_n_7 ;
  wire \count_reg[12]_i_1__4_n_2 ;
  wire \count_reg[12]_i_1__4_n_3 ;
  wire \count_reg[12]_i_1__4_n_5 ;
  wire \count_reg[12]_i_1__4_n_6 ;
  wire \count_reg[12]_i_1__4_n_7 ;
  wire \count_reg[4]_i_1__4_n_0 ;
  wire \count_reg[4]_i_1__4_n_1 ;
  wire \count_reg[4]_i_1__4_n_2 ;
  wire \count_reg[4]_i_1__4_n_3 ;
  wire \count_reg[4]_i_1__4_n_4 ;
  wire \count_reg[4]_i_1__4_n_5 ;
  wire \count_reg[4]_i_1__4_n_6 ;
  wire \count_reg[4]_i_1__4_n_7 ;
  wire \count_reg[8]_i_1__4_n_0 ;
  wire \count_reg[8]_i_1__4_n_1 ;
  wire \count_reg[8]_i_1__4_n_2 ;
  wire \count_reg[8]_i_1__4_n_3 ;
  wire \count_reg[8]_i_1__4_n_4 ;
  wire \count_reg[8]_i_1__4_n_5 ;
  wire \count_reg[8]_i_1__4_n_6 ;
  wire \count_reg[8]_i_1__4_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire [3:2]\NLW_count_reg[12]_i_1__4_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[12]_i_1__4_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_next_state[11]_i_1 
       (.I0(Q[0]),
        .I1(F_O_reg_n_0),
        .I2(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_next_state[12]_i_1 
       (.I0(Q[1]),
        .I1(F_O_reg_n_0),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    F_O_i_1__3
       (.I0(\count[0]_i_2__3_n_0 ),
        .I1(F_O_reg_n_0),
        .I2(RNG_a_en),
        .O(F_O_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    F_O_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(F_O_i_1__3_n_0),
        .Q(F_O_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__4 
       (.I0(RNG_a_en),
        .O(\count[0]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \count[0]_i_2__3 
       (.I0(\count[0]_i_4__4_n_0 ),
        .I1(\count[0]_i_5__4_n_0 ),
        .I2(count_reg[11]),
        .I3(count_reg[12]),
        .I4(count_reg[13]),
        .I5(count_reg[14]),
        .O(\count[0]_i_2__3_n_0 ));
  LUT5 #(
    .INIT(32'h7777777F)) 
    \count[0]_i_4__4 
       (.I0(count_reg[5]),
        .I1(count_reg[6]),
        .I2(count_reg[3]),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .O(\count[0]_i_4__4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_5__4 
       (.I0(count_reg[7]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(count_reg[10]),
        .O(\count[0]_i_5__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_6__4 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_6__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__3_n_0 ),
        .D(\count_reg[0]_i_3__4_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[0]_i_1__4_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_3__4 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3__4_n_0 ,\count_reg[0]_i_3__4_n_1 ,\count_reg[0]_i_3__4_n_2 ,\count_reg[0]_i_3__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3__4_n_4 ,\count_reg[0]_i_3__4_n_5 ,\count_reg[0]_i_3__4_n_6 ,\count_reg[0]_i_3__4_n_7 }),
        .S({count_reg[3:2],\count_reg_n_0_[1] ,\count[0]_i_6__4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__3_n_0 ),
        .D(\count_reg[8]_i_1__4_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__3_n_0 ),
        .D(\count_reg[8]_i_1__4_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__3_n_0 ),
        .D(\count_reg[12]_i_1__4_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1__4_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1__4 
       (.CI(\count_reg[8]_i_1__4_n_0 ),
        .CO({\NLW_count_reg[12]_i_1__4_CO_UNCONNECTED [3:2],\count_reg[12]_i_1__4_n_2 ,\count_reg[12]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[12]_i_1__4_O_UNCONNECTED [3],\count_reg[12]_i_1__4_n_5 ,\count_reg[12]_i_1__4_n_6 ,\count_reg[12]_i_1__4_n_7 }),
        .S({1'b0,count_reg[14:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__3_n_0 ),
        .D(\count_reg[12]_i_1__4_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__3_n_0 ),
        .D(\count_reg[12]_i_1__4_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__3_n_0 ),
        .D(\count_reg[0]_i_3__4_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(\count[0]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__3_n_0 ),
        .D(\count_reg[0]_i_3__4_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__3_n_0 ),
        .D(\count_reg[0]_i_3__4_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__3_n_0 ),
        .D(\count_reg[4]_i_1__4_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1__4_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1__4 
       (.CI(\count_reg[0]_i_3__4_n_0 ),
        .CO({\count_reg[4]_i_1__4_n_0 ,\count_reg[4]_i_1__4_n_1 ,\count_reg[4]_i_1__4_n_2 ,\count_reg[4]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__4_n_4 ,\count_reg[4]_i_1__4_n_5 ,\count_reg[4]_i_1__4_n_6 ,\count_reg[4]_i_1__4_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__3_n_0 ),
        .D(\count_reg[4]_i_1__4_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__3_n_0 ),
        .D(\count_reg[4]_i_1__4_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__3_n_0 ),
        .D(\count_reg[4]_i_1__4_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__3_n_0 ),
        .D(\count_reg[8]_i_1__4_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1__4_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1__4 
       (.CI(\count_reg[4]_i_1__4_n_0 ),
        .CO({\count_reg[8]_i_1__4_n_0 ,\count_reg[8]_i_1__4_n_1 ,\count_reg[8]_i_1__4_n_2 ,\count_reg[8]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__4_n_4 ,\count_reg[8]_i_1__4_n_5 ,\count_reg[8]_i_1__4_n_6 ,\count_reg[8]_i_1__4_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__3_n_0 ),
        .D(\count_reg[8]_i_1__4_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1__4_n_0 ));
endmodule

(* ORIG_REF_NAME = "gen_counter" *) 
module system_SPGD_SYS_0_gen_counter_15
   (D,
    ADC_CLK,
    timer_a_en,
    ADC_DONE,
    Q,
    GP_IN,
    \FSM_onehot_next_state_reg[1] );
  output [1:0]D;
  input ADC_CLK;
  input timer_a_en;
  input ADC_DONE;
  input [3:0]Q;
  input [0:0]GP_IN;
  input \FSM_onehot_next_state_reg[1] ;

  wire ADC_CLK;
  wire ADC_DONE;
  wire [1:0]D;
  wire \FSM_onehot_next_state_reg[1] ;
  wire F_O;
  wire F_O_i_1_n_0;
  wire F_O_reg_n_0;
  wire [0:0]GP_IN;
  wire [3:0]Q;
  wire clear;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire [14:3]count_reg;
  wire \count_reg[0]_i_3_n_0 ;
  wire \count_reg[0]_i_3_n_1 ;
  wire \count_reg[0]_i_3_n_2 ;
  wire \count_reg[0]_i_3_n_3 ;
  wire \count_reg[0]_i_3_n_4 ;
  wire \count_reg[0]_i_3_n_5 ;
  wire \count_reg[0]_i_3_n_6 ;
  wire \count_reg[0]_i_3_n_7 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire timer_a_en;
  wire [3:2]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[12]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \FSM_onehot_next_state[1]_i_1 
       (.I0(Q[0]),
        .I1(GP_IN),
        .I2(Q[1]),
        .I3(F_O_reg_n_0),
        .I4(\FSM_onehot_next_state_reg[1] ),
        .I5(Q[3]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_next_state[2]_i_1 
       (.I0(ADC_DONE),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(F_O_reg_n_0),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hE0)) 
    F_O_i_1
       (.I0(F_O_reg_n_0),
        .I1(F_O),
        .I2(timer_a_en),
        .O(F_O_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    F_O_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(F_O_i_1_n_0),
        .Q(F_O_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(timer_a_en),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(F_O),
        .O(\count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFEFEFFFE)) 
    \count[0]_i_4 
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .I2(count_reg[14]),
        .I3(count_reg[11]),
        .I4(\count[0]_i_6_n_0 ),
        .I5(\count[0]_i_7_n_0 ),
        .O(F_O));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_5 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \count[0]_i_6 
       (.I0(count_reg[5]),
        .I1(count_reg[4]),
        .I2(count_reg[3]),
        .O(\count[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count[0]_i_7 
       (.I0(count_reg[6]),
        .I1(count_reg[7]),
        .I2(count_reg[9]),
        .I3(count_reg[8]),
        .I4(count_reg[10]),
        .O(\count[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[0]_i_3_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3_n_0 ,\count_reg[0]_i_3_n_1 ,\count_reg[0]_i_3_n_2 ,\count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3_n_4 ,\count_reg[0]_i_3_n_5 ,\count_reg[0]_i_3_n_6 ,\count_reg[0]_i_3_n_7 }),
        .S({count_reg[3],\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\NLW_count_reg[12]_i_1_CO_UNCONNECTED [3:2],\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[12]_i_1_O_UNCONNECTED [3],\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({1'b0,count_reg[14:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[0]_i_3_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[0]_i_3_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[0]_i_3_n_4 ),
        .Q(count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_3_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2_n_0 ),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(clear));
endmodule

(* ORIG_REF_NAME = "gen_counter" *) 
module system_SPGD_SYS_0_gen_counter_16
   (D,
    ADC_CLK,
    timer_b_en,
    ADC_DONE,
    Q);
  output [1:0]D;
  input ADC_CLK;
  input timer_b_en;
  input ADC_DONE;
  input [2:0]Q;

  wire ADC_CLK;
  wire ADC_DONE;
  wire [1:0]D;
  wire F_O_i_1__5_n_0;
  wire F_O_reg_n_0;
  wire [2:0]Q;
  wire \count[0]_i_1__1_n_0 ;
  wire \count[0]_i_2__5_n_0 ;
  wire \count[0]_i_4__1_n_0 ;
  wire \count[0]_i_5__1_n_0 ;
  wire \count[0]_i_6__1_n_0 ;
  wire \count[0]_i_7__0_n_0 ;
  wire [14:0]count_reg;
  wire \count_reg[0]_i_3__1_n_0 ;
  wire \count_reg[0]_i_3__1_n_1 ;
  wire \count_reg[0]_i_3__1_n_2 ;
  wire \count_reg[0]_i_3__1_n_3 ;
  wire \count_reg[0]_i_3__1_n_4 ;
  wire \count_reg[0]_i_3__1_n_5 ;
  wire \count_reg[0]_i_3__1_n_6 ;
  wire \count_reg[0]_i_3__1_n_7 ;
  wire \count_reg[12]_i_1__1_n_2 ;
  wire \count_reg[12]_i_1__1_n_3 ;
  wire \count_reg[12]_i_1__1_n_5 ;
  wire \count_reg[12]_i_1__1_n_6 ;
  wire \count_reg[12]_i_1__1_n_7 ;
  wire \count_reg[4]_i_1__1_n_0 ;
  wire \count_reg[4]_i_1__1_n_1 ;
  wire \count_reg[4]_i_1__1_n_2 ;
  wire \count_reg[4]_i_1__1_n_3 ;
  wire \count_reg[4]_i_1__1_n_4 ;
  wire \count_reg[4]_i_1__1_n_5 ;
  wire \count_reg[4]_i_1__1_n_6 ;
  wire \count_reg[4]_i_1__1_n_7 ;
  wire \count_reg[8]_i_1__1_n_0 ;
  wire \count_reg[8]_i_1__1_n_1 ;
  wire \count_reg[8]_i_1__1_n_2 ;
  wire \count_reg[8]_i_1__1_n_3 ;
  wire \count_reg[8]_i_1__1_n_4 ;
  wire \count_reg[8]_i_1__1_n_5 ;
  wire \count_reg[8]_i_1__1_n_6 ;
  wire \count_reg[8]_i_1__1_n_7 ;
  wire timer_b_en;
  wire [3:2]\NLW_count_reg[12]_i_1__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[12]_i_1__1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_next_state[5]_i_1 
       (.I0(Q[0]),
        .I1(F_O_reg_n_0),
        .I2(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_next_state[6]_i_1 
       (.I0(ADC_DONE),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(F_O_reg_n_0),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000000)) 
    F_O_i_1__5
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .I2(count_reg[14]),
        .I3(\count[0]_i_4__1_n_0 ),
        .I4(F_O_reg_n_0),
        .I5(timer_b_en),
        .O(F_O_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    F_O_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(F_O_i_1__5_n_0),
        .Q(F_O_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__1 
       (.I0(timer_b_en),
        .O(\count[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \count[0]_i_2__5 
       (.I0(count_reg[13]),
        .I1(count_reg[12]),
        .I2(count_reg[14]),
        .I3(\count[0]_i_4__1_n_0 ),
        .O(\count[0]_i_2__5_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \count[0]_i_4__1 
       (.I0(\count[0]_i_6__1_n_0 ),
        .I1(\count[0]_i_7__0_n_0 ),
        .I2(count_reg[3]),
        .I3(count_reg[5]),
        .I4(count_reg[2]),
        .I5(count_reg[11]),
        .O(\count[0]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_5__1 
       (.I0(count_reg[0]),
        .O(\count[0]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_6__1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[8]),
        .I3(count_reg[9]),
        .O(\count[0]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count[0]_i_7__0 
       (.I0(count_reg[4]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(count_reg[10]),
        .O(\count[0]_i_7__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__5_n_0 ),
        .D(\count_reg[0]_i_3__1_n_7 ),
        .Q(count_reg[0]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_3__1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3__1_n_0 ,\count_reg[0]_i_3__1_n_1 ,\count_reg[0]_i_3__1_n_2 ,\count_reg[0]_i_3__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3__1_n_4 ,\count_reg[0]_i_3__1_n_5 ,\count_reg[0]_i_3__1_n_6 ,\count_reg[0]_i_3__1_n_7 }),
        .S({count_reg[3:1],\count[0]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__5_n_0 ),
        .D(\count_reg[8]_i_1__1_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__5_n_0 ),
        .D(\count_reg[8]_i_1__1_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__5_n_0 ),
        .D(\count_reg[12]_i_1__1_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1__1 
       (.CI(\count_reg[8]_i_1__1_n_0 ),
        .CO({\NLW_count_reg[12]_i_1__1_CO_UNCONNECTED [3:2],\count_reg[12]_i_1__1_n_2 ,\count_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[12]_i_1__1_O_UNCONNECTED [3],\count_reg[12]_i_1__1_n_5 ,\count_reg[12]_i_1__1_n_6 ,\count_reg[12]_i_1__1_n_7 }),
        .S({1'b0,count_reg[14:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__5_n_0 ),
        .D(\count_reg[12]_i_1__1_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__5_n_0 ),
        .D(\count_reg[12]_i_1__1_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__5_n_0 ),
        .D(\count_reg[0]_i_3__1_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__5_n_0 ),
        .D(\count_reg[0]_i_3__1_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__5_n_0 ),
        .D(\count_reg[0]_i_3__1_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__5_n_0 ),
        .D(\count_reg[4]_i_1__1_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1__1 
       (.CI(\count_reg[0]_i_3__1_n_0 ),
        .CO({\count_reg[4]_i_1__1_n_0 ,\count_reg[4]_i_1__1_n_1 ,\count_reg[4]_i_1__1_n_2 ,\count_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__1_n_4 ,\count_reg[4]_i_1__1_n_5 ,\count_reg[4]_i_1__1_n_6 ,\count_reg[4]_i_1__1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__5_n_0 ),
        .D(\count_reg[4]_i_1__1_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__5_n_0 ),
        .D(\count_reg[4]_i_1__1_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__5_n_0 ),
        .D(\count_reg[4]_i_1__1_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__5_n_0 ),
        .D(\count_reg[8]_i_1__1_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1__1 
       (.CI(\count_reg[4]_i_1__1_n_0 ),
        .CO({\count_reg[8]_i_1__1_n_0 ,\count_reg[8]_i_1__1_n_1 ,\count_reg[8]_i_1__1_n_2 ,\count_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__1_n_4 ,\count_reg[8]_i_1__1_n_5 ,\count_reg[8]_i_1__1_n_6 ,\count_reg[8]_i_1__1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__5_n_0 ),
        .D(\count_reg[8]_i_1__1_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1__1_n_0 ));
endmodule

(* ORIG_REF_NAME = "gen_counter" *) 
module system_SPGD_SYS_0_gen_counter_17
   (F_O_reg_0,
    D,
    ADC_CLK,
    timer_c_en,
    Q);
  output F_O_reg_0;
  output [0:0]D;
  input ADC_CLK;
  input timer_c_en;
  input [1:0]Q;

  wire ADC_CLK;
  wire [0:0]D;
  wire F_O_i_1__4_n_0;
  wire F_O_reg_0;
  wire [1:0]Q;
  wire \count[0]_i_1__5_n_0 ;
  wire \count[0]_i_2__4_n_0 ;
  wire \count[0]_i_4__5_n_0 ;
  wire \count[0]_i_5__5_n_0 ;
  wire \count[0]_i_6__5_n_0 ;
  wire \count[0]_i_7__2_n_0 ;
  wire [14:1]count_reg;
  wire \count_reg[0]_i_3__5_n_0 ;
  wire \count_reg[0]_i_3__5_n_1 ;
  wire \count_reg[0]_i_3__5_n_2 ;
  wire \count_reg[0]_i_3__5_n_3 ;
  wire \count_reg[0]_i_3__5_n_4 ;
  wire \count_reg[0]_i_3__5_n_5 ;
  wire \count_reg[0]_i_3__5_n_6 ;
  wire \count_reg[0]_i_3__5_n_7 ;
  wire \count_reg[12]_i_1__5_n_2 ;
  wire \count_reg[12]_i_1__5_n_3 ;
  wire \count_reg[12]_i_1__5_n_5 ;
  wire \count_reg[12]_i_1__5_n_6 ;
  wire \count_reg[12]_i_1__5_n_7 ;
  wire \count_reg[4]_i_1__5_n_0 ;
  wire \count_reg[4]_i_1__5_n_1 ;
  wire \count_reg[4]_i_1__5_n_2 ;
  wire \count_reg[4]_i_1__5_n_3 ;
  wire \count_reg[4]_i_1__5_n_4 ;
  wire \count_reg[4]_i_1__5_n_5 ;
  wire \count_reg[4]_i_1__5_n_6 ;
  wire \count_reg[4]_i_1__5_n_7 ;
  wire \count_reg[8]_i_1__5_n_0 ;
  wire \count_reg[8]_i_1__5_n_1 ;
  wire \count_reg[8]_i_1__5_n_2 ;
  wire \count_reg[8]_i_1__5_n_3 ;
  wire \count_reg[8]_i_1__5_n_4 ;
  wire \count_reg[8]_i_1__5_n_5 ;
  wire \count_reg[8]_i_1__5_n_6 ;
  wire \count_reg[8]_i_1__5_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire timer_c_en;
  wire [3:2]\NLW_count_reg[12]_i_1__5_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[12]_i_1__5_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_next_state[13]_i_1 
       (.I0(Q[0]),
        .I1(F_O_reg_0),
        .I2(Q[1]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    F_O_i_1__4
       (.I0(F_O_reg_0),
        .I1(\count[0]_i_4__5_n_0 ),
        .I2(timer_c_en),
        .O(F_O_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    F_O_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(F_O_i_1__4_n_0),
        .Q(F_O_reg_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__5 
       (.I0(timer_c_en),
        .O(\count[0]_i_1__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2__4 
       (.I0(\count[0]_i_4__5_n_0 ),
        .O(\count[0]_i_2__4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFEEEEEEEEEEEE)) 
    \count[0]_i_4__5 
       (.I0(count_reg[13]),
        .I1(count_reg[14]),
        .I2(\count[0]_i_6__5_n_0 ),
        .I3(\count[0]_i_7__2_n_0 ),
        .I4(count_reg[12]),
        .I5(count_reg[11]),
        .O(\count[0]_i_4__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_5__5 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_5__5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \count[0]_i_6__5 
       (.I0(count_reg[1]),
        .I1(count_reg[2]),
        .I2(count_reg[9]),
        .I3(count_reg[7]),
        .I4(count_reg[10]),
        .I5(count_reg[3]),
        .O(\count[0]_i_6__5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \count[0]_i_7__2 
       (.I0(count_reg[5]),
        .I1(count_reg[6]),
        .I2(count_reg[4]),
        .I3(count_reg[8]),
        .O(\count[0]_i_7__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__4_n_0 ),
        .D(\count_reg[0]_i_3__5_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(\count[0]_i_1__5_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_3__5 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_3__5_n_0 ,\count_reg[0]_i_3__5_n_1 ,\count_reg[0]_i_3__5_n_2 ,\count_reg[0]_i_3__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_3__5_n_4 ,\count_reg[0]_i_3__5_n_5 ,\count_reg[0]_i_3__5_n_6 ,\count_reg[0]_i_3__5_n_7 }),
        .S({count_reg[3:1],\count[0]_i_5__5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__4_n_0 ),
        .D(\count_reg[8]_i_1__5_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__4_n_0 ),
        .D(\count_reg[8]_i_1__5_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__4_n_0 ),
        .D(\count_reg[12]_i_1__5_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1__5_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1__5 
       (.CI(\count_reg[8]_i_1__5_n_0 ),
        .CO({\NLW_count_reg[12]_i_1__5_CO_UNCONNECTED [3:2],\count_reg[12]_i_1__5_n_2 ,\count_reg[12]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[12]_i_1__5_O_UNCONNECTED [3],\count_reg[12]_i_1__5_n_5 ,\count_reg[12]_i_1__5_n_6 ,\count_reg[12]_i_1__5_n_7 }),
        .S({1'b0,count_reg[14:12]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__4_n_0 ),
        .D(\count_reg[12]_i_1__5_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__4_n_0 ),
        .D(\count_reg[12]_i_1__5_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__4_n_0 ),
        .D(\count_reg[0]_i_3__5_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__4_n_0 ),
        .D(\count_reg[0]_i_3__5_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__4_n_0 ),
        .D(\count_reg[0]_i_3__5_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__4_n_0 ),
        .D(\count_reg[4]_i_1__5_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1__5_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1__5 
       (.CI(\count_reg[0]_i_3__5_n_0 ),
        .CO({\count_reg[4]_i_1__5_n_0 ,\count_reg[4]_i_1__5_n_1 ,\count_reg[4]_i_1__5_n_2 ,\count_reg[4]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__5_n_4 ,\count_reg[4]_i_1__5_n_5 ,\count_reg[4]_i_1__5_n_6 ,\count_reg[4]_i_1__5_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__4_n_0 ),
        .D(\count_reg[4]_i_1__5_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__4_n_0 ),
        .D(\count_reg[4]_i_1__5_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__4_n_0 ),
        .D(\count_reg[4]_i_1__5_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__4_n_0 ),
        .D(\count_reg[8]_i_1__5_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1__5_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1__5 
       (.CI(\count_reg[4]_i_1__5_n_0 ),
        .CO({\count_reg[8]_i_1__5_n_0 ,\count_reg[8]_i_1__5_n_1 ,\count_reg[8]_i_1__5_n_2 ,\count_reg[8]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__5_n_4 ,\count_reg[8]_i_1__5_n_5 ,\count_reg[8]_i_1__5_n_6 ,\count_reg[8]_i_1__5_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_2__4_n_0 ),
        .D(\count_reg[8]_i_1__5_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1__5_n_0 ));
endmodule

(* ORIG_REF_NAME = "gen_mult" *) 
module system_SPGD_SYS_0_gen_mult
   (O,
    GP_OUT,
    p0__14_0,
    p0__14_1,
    \int_data_reg_reg[11] ,
    \int_data_reg_reg[15] ,
    \int_data_reg_reg[19] ,
    \int_data_reg_reg[23] ,
    \int_data_reg_reg[27] ,
    \int_data_reg_reg[31] ,
    \int_data_reg_reg[35] ,
    \int_data_reg_reg[39] ,
    \int_data_reg_reg[43] ,
    \int_data_reg_reg[47] ,
    \int_data_reg_reg[51] ,
    \int_data_reg_reg[55] ,
    \int_data_reg_reg[59] ,
    \int_data_reg_reg[63] ,
    int_DELTA_U_WRT,
    ADC_CLK,
    p0__14_2,
    p0,
    p0_0,
    S,
    int_data_reg_reg);
  output [0:0]O;
  output [15:0]GP_OUT;
  output [3:0]p0__14_0;
  output [3:0]p0__14_1;
  output [3:0]\int_data_reg_reg[11] ;
  output [3:0]\int_data_reg_reg[15] ;
  output [3:0]\int_data_reg_reg[19] ;
  output [3:0]\int_data_reg_reg[23] ;
  output [3:0]\int_data_reg_reg[27] ;
  output [3:0]\int_data_reg_reg[31] ;
  output [3:0]\int_data_reg_reg[35] ;
  output [3:0]\int_data_reg_reg[39] ;
  output [3:0]\int_data_reg_reg[43] ;
  output [3:0]\int_data_reg_reg[47] ;
  output [3:0]\int_data_reg_reg[51] ;
  output [3:0]\int_data_reg_reg[55] ;
  output [3:0]\int_data_reg_reg[59] ;
  output [3:0]\int_data_reg_reg[63] ;
  input int_DELTA_U_WRT;
  input ADC_CLK;
  input p0__14_2;
  input [61:0]p0;
  input [46:0]p0_0;
  input [0:0]S;
  input [62:0]int_data_reg_reg;

  wire ADC_CLK;
  wire [15:0]GP_OUT;
  wire [0:0]O;
  wire [0:0]S;
  wire [62:0]b;
  wire int_DELTA_U_WRT;
  wire \int_data_reg[0]_i_2_n_0 ;
  wire \int_data_reg[0]_i_3_n_0 ;
  wire \int_data_reg[0]_i_4_n_0 ;
  wire \int_data_reg[0]_i_5_n_0 ;
  wire \int_data_reg[12]_i_2_n_0 ;
  wire \int_data_reg[12]_i_3_n_0 ;
  wire \int_data_reg[12]_i_4_n_0 ;
  wire \int_data_reg[12]_i_5_n_0 ;
  wire \int_data_reg[16]_i_2_n_0 ;
  wire \int_data_reg[16]_i_3_n_0 ;
  wire \int_data_reg[16]_i_4_n_0 ;
  wire \int_data_reg[16]_i_5_n_0 ;
  wire \int_data_reg[20]_i_2_n_0 ;
  wire \int_data_reg[20]_i_3_n_0 ;
  wire \int_data_reg[20]_i_4_n_0 ;
  wire \int_data_reg[20]_i_5_n_0 ;
  wire \int_data_reg[24]_i_2_n_0 ;
  wire \int_data_reg[24]_i_3_n_0 ;
  wire \int_data_reg[24]_i_4_n_0 ;
  wire \int_data_reg[24]_i_5_n_0 ;
  wire \int_data_reg[28]_i_2_n_0 ;
  wire \int_data_reg[28]_i_3_n_0 ;
  wire \int_data_reg[28]_i_4_n_0 ;
  wire \int_data_reg[28]_i_5_n_0 ;
  wire \int_data_reg[32]_i_2_n_0 ;
  wire \int_data_reg[32]_i_3_n_0 ;
  wire \int_data_reg[32]_i_4_n_0 ;
  wire \int_data_reg[32]_i_5_n_0 ;
  wire \int_data_reg[36]_i_2_n_0 ;
  wire \int_data_reg[36]_i_3_n_0 ;
  wire \int_data_reg[36]_i_4_n_0 ;
  wire \int_data_reg[36]_i_5_n_0 ;
  wire \int_data_reg[40]_i_2_n_0 ;
  wire \int_data_reg[40]_i_3_n_0 ;
  wire \int_data_reg[40]_i_4_n_0 ;
  wire \int_data_reg[40]_i_5_n_0 ;
  wire \int_data_reg[44]_i_2_n_0 ;
  wire \int_data_reg[44]_i_3_n_0 ;
  wire \int_data_reg[44]_i_4_n_0 ;
  wire \int_data_reg[44]_i_5_n_0 ;
  wire \int_data_reg[48]_i_2_n_0 ;
  wire \int_data_reg[48]_i_3_n_0 ;
  wire \int_data_reg[48]_i_4_n_0 ;
  wire \int_data_reg[48]_i_5_n_0 ;
  wire \int_data_reg[4]_i_2_n_0 ;
  wire \int_data_reg[4]_i_3_n_0 ;
  wire \int_data_reg[4]_i_4_n_0 ;
  wire \int_data_reg[4]_i_5_n_0 ;
  wire \int_data_reg[52]_i_2_n_0 ;
  wire \int_data_reg[52]_i_3_n_0 ;
  wire \int_data_reg[52]_i_4_n_0 ;
  wire \int_data_reg[52]_i_5_n_0 ;
  wire \int_data_reg[56]_i_2_n_0 ;
  wire \int_data_reg[56]_i_3_n_0 ;
  wire \int_data_reg[56]_i_4_n_0 ;
  wire \int_data_reg[56]_i_5_n_0 ;
  wire \int_data_reg[60]_i_3_n_0 ;
  wire \int_data_reg[60]_i_4_n_0 ;
  wire \int_data_reg[60]_i_5_n_0 ;
  wire \int_data_reg[8]_i_2_n_0 ;
  wire \int_data_reg[8]_i_3_n_0 ;
  wire \int_data_reg[8]_i_4_n_0 ;
  wire \int_data_reg[8]_i_5_n_0 ;
  wire [62:0]int_data_reg_reg;
  wire \int_data_reg_reg[0]_i_1_n_0 ;
  wire \int_data_reg_reg[0]_i_1_n_1 ;
  wire \int_data_reg_reg[0]_i_1_n_2 ;
  wire \int_data_reg_reg[0]_i_1_n_3 ;
  wire [3:0]\int_data_reg_reg[11] ;
  wire \int_data_reg_reg[12]_i_1_n_0 ;
  wire \int_data_reg_reg[12]_i_1_n_1 ;
  wire \int_data_reg_reg[12]_i_1_n_2 ;
  wire \int_data_reg_reg[12]_i_1_n_3 ;
  wire [3:0]\int_data_reg_reg[15] ;
  wire \int_data_reg_reg[16]_i_1_n_0 ;
  wire \int_data_reg_reg[16]_i_1_n_1 ;
  wire \int_data_reg_reg[16]_i_1_n_2 ;
  wire \int_data_reg_reg[16]_i_1_n_3 ;
  wire [3:0]\int_data_reg_reg[19] ;
  wire \int_data_reg_reg[20]_i_1_n_0 ;
  wire \int_data_reg_reg[20]_i_1_n_1 ;
  wire \int_data_reg_reg[20]_i_1_n_2 ;
  wire \int_data_reg_reg[20]_i_1_n_3 ;
  wire [3:0]\int_data_reg_reg[23] ;
  wire \int_data_reg_reg[24]_i_1_n_0 ;
  wire \int_data_reg_reg[24]_i_1_n_1 ;
  wire \int_data_reg_reg[24]_i_1_n_2 ;
  wire \int_data_reg_reg[24]_i_1_n_3 ;
  wire [3:0]\int_data_reg_reg[27] ;
  wire \int_data_reg_reg[28]_i_1_n_0 ;
  wire \int_data_reg_reg[28]_i_1_n_1 ;
  wire \int_data_reg_reg[28]_i_1_n_2 ;
  wire \int_data_reg_reg[28]_i_1_n_3 ;
  wire [3:0]\int_data_reg_reg[31] ;
  wire \int_data_reg_reg[32]_i_1_n_0 ;
  wire \int_data_reg_reg[32]_i_1_n_1 ;
  wire \int_data_reg_reg[32]_i_1_n_2 ;
  wire \int_data_reg_reg[32]_i_1_n_3 ;
  wire [3:0]\int_data_reg_reg[35] ;
  wire \int_data_reg_reg[36]_i_1_n_0 ;
  wire \int_data_reg_reg[36]_i_1_n_1 ;
  wire \int_data_reg_reg[36]_i_1_n_2 ;
  wire \int_data_reg_reg[36]_i_1_n_3 ;
  wire [3:0]\int_data_reg_reg[39] ;
  wire \int_data_reg_reg[40]_i_1_n_0 ;
  wire \int_data_reg_reg[40]_i_1_n_1 ;
  wire \int_data_reg_reg[40]_i_1_n_2 ;
  wire \int_data_reg_reg[40]_i_1_n_3 ;
  wire [3:0]\int_data_reg_reg[43] ;
  wire \int_data_reg_reg[44]_i_1_n_0 ;
  wire \int_data_reg_reg[44]_i_1_n_1 ;
  wire \int_data_reg_reg[44]_i_1_n_2 ;
  wire \int_data_reg_reg[44]_i_1_n_3 ;
  wire [3:0]\int_data_reg_reg[47] ;
  wire \int_data_reg_reg[48]_i_1_n_0 ;
  wire \int_data_reg_reg[48]_i_1_n_1 ;
  wire \int_data_reg_reg[48]_i_1_n_2 ;
  wire \int_data_reg_reg[48]_i_1_n_3 ;
  wire \int_data_reg_reg[4]_i_1_n_0 ;
  wire \int_data_reg_reg[4]_i_1_n_1 ;
  wire \int_data_reg_reg[4]_i_1_n_2 ;
  wire \int_data_reg_reg[4]_i_1_n_3 ;
  wire [3:0]\int_data_reg_reg[51] ;
  wire \int_data_reg_reg[52]_i_1_n_0 ;
  wire \int_data_reg_reg[52]_i_1_n_1 ;
  wire \int_data_reg_reg[52]_i_1_n_2 ;
  wire \int_data_reg_reg[52]_i_1_n_3 ;
  wire [3:0]\int_data_reg_reg[55] ;
  wire \int_data_reg_reg[56]_i_1_n_0 ;
  wire \int_data_reg_reg[56]_i_1_n_1 ;
  wire \int_data_reg_reg[56]_i_1_n_2 ;
  wire \int_data_reg_reg[56]_i_1_n_3 ;
  wire [3:0]\int_data_reg_reg[59] ;
  wire \int_data_reg_reg[60]_i_1_n_1 ;
  wire \int_data_reg_reg[60]_i_1_n_2 ;
  wire \int_data_reg_reg[60]_i_1_n_3 ;
  wire [3:0]\int_data_reg_reg[63] ;
  wire \int_data_reg_reg[8]_i_1_n_0 ;
  wire \int_data_reg_reg[8]_i_1_n_1 ;
  wire \int_data_reg_reg[8]_i_1_n_2 ;
  wire \int_data_reg_reg[8]_i_1_n_3 ;
  wire [61:0]p0;
  wire [46:0]p0_0;
  wire p0__0__0_n_106;
  wire p0__0__0_n_107;
  wire p0__0__0_n_108;
  wire p0__0__0_n_109;
  wire p0__0__0_n_110;
  wire p0__0__0_n_111;
  wire p0__0__0_n_112;
  wire p0__0__0_n_113;
  wire p0__0__0_n_114;
  wire p0__0__0_n_115;
  wire p0__0__0_n_116;
  wire p0__0__0_n_117;
  wire p0__0__0_n_118;
  wire p0__0__0_n_119;
  wire p0__0__0_n_120;
  wire p0__0__0_n_121;
  wire p0__0__0_n_122;
  wire p0__0__0_n_123;
  wire p0__0__0_n_124;
  wire p0__0__0_n_125;
  wire p0__0__0_n_126;
  wire p0__0__0_n_127;
  wire p0__0__0_n_128;
  wire p0__0__0_n_129;
  wire p0__0__0_n_130;
  wire p0__0__0_n_131;
  wire p0__0__0_n_132;
  wire p0__0__0_n_133;
  wire p0__0__0_n_134;
  wire p0__0__0_n_135;
  wire p0__0__0_n_136;
  wire p0__0__0_n_137;
  wire p0__0__0_n_138;
  wire p0__0__0_n_139;
  wire p0__0__0_n_140;
  wire p0__0__0_n_141;
  wire p0__0__0_n_142;
  wire p0__0__0_n_143;
  wire p0__0__0_n_144;
  wire p0__0__0_n_145;
  wire p0__0__0_n_146;
  wire p0__0__0_n_147;
  wire p0__0__0_n_148;
  wire p0__0__0_n_149;
  wire p0__0__0_n_150;
  wire p0__0__0_n_151;
  wire p0__0__0_n_152;
  wire p0__0__0_n_153;
  wire p0__0_n_100;
  wire p0__0_n_101;
  wire p0__0_n_102;
  wire p0__0_n_103;
  wire p0__0_n_104;
  wire p0__0_n_105;
  wire p0__0_n_106;
  wire p0__0_n_107;
  wire p0__0_n_108;
  wire p0__0_n_109;
  wire p0__0_n_110;
  wire p0__0_n_111;
  wire p0__0_n_112;
  wire p0__0_n_113;
  wire p0__0_n_114;
  wire p0__0_n_115;
  wire p0__0_n_116;
  wire p0__0_n_117;
  wire p0__0_n_118;
  wire p0__0_n_119;
  wire p0__0_n_120;
  wire p0__0_n_121;
  wire p0__0_n_122;
  wire p0__0_n_123;
  wire p0__0_n_124;
  wire p0__0_n_125;
  wire p0__0_n_126;
  wire p0__0_n_127;
  wire p0__0_n_128;
  wire p0__0_n_129;
  wire p0__0_n_130;
  wire p0__0_n_131;
  wire p0__0_n_132;
  wire p0__0_n_133;
  wire p0__0_n_134;
  wire p0__0_n_135;
  wire p0__0_n_136;
  wire p0__0_n_137;
  wire p0__0_n_138;
  wire p0__0_n_139;
  wire p0__0_n_140;
  wire p0__0_n_141;
  wire p0__0_n_142;
  wire p0__0_n_143;
  wire p0__0_n_144;
  wire p0__0_n_145;
  wire p0__0_n_146;
  wire p0__0_n_147;
  wire p0__0_n_148;
  wire p0__0_n_149;
  wire p0__0_n_150;
  wire p0__0_n_151;
  wire p0__0_n_152;
  wire p0__0_n_153;
  wire p0__0_n_58;
  wire p0__0_n_59;
  wire p0__0_n_60;
  wire p0__0_n_61;
  wire p0__0_n_62;
  wire p0__0_n_63;
  wire p0__0_n_64;
  wire p0__0_n_65;
  wire p0__0_n_66;
  wire p0__0_n_67;
  wire p0__0_n_68;
  wire p0__0_n_69;
  wire p0__0_n_70;
  wire p0__0_n_71;
  wire p0__0_n_72;
  wire p0__0_n_73;
  wire p0__0_n_74;
  wire p0__0_n_75;
  wire p0__0_n_76;
  wire p0__0_n_77;
  wire p0__0_n_78;
  wire p0__0_n_79;
  wire p0__0_n_80;
  wire p0__0_n_81;
  wire p0__0_n_82;
  wire p0__0_n_83;
  wire p0__0_n_84;
  wire p0__0_n_85;
  wire p0__0_n_86;
  wire p0__0_n_87;
  wire p0__0_n_88;
  wire p0__0_n_89;
  wire p0__0_n_90;
  wire p0__0_n_91;
  wire p0__0_n_92;
  wire p0__0_n_93;
  wire p0__0_n_94;
  wire p0__0_n_95;
  wire p0__0_n_96;
  wire p0__0_n_97;
  wire p0__0_n_98;
  wire p0__0_n_99;
  wire p0__10_n_100;
  wire p0__10_n_101;
  wire p0__10_n_102;
  wire p0__10_n_103;
  wire p0__10_n_104;
  wire p0__10_n_105;
  wire p0__10_n_58;
  wire p0__10_n_59;
  wire p0__10_n_60;
  wire p0__10_n_61;
  wire p0__10_n_62;
  wire p0__10_n_63;
  wire p0__10_n_64;
  wire p0__10_n_65;
  wire p0__10_n_66;
  wire p0__10_n_67;
  wire p0__10_n_68;
  wire p0__10_n_69;
  wire p0__10_n_70;
  wire p0__10_n_71;
  wire p0__10_n_72;
  wire p0__10_n_73;
  wire p0__10_n_74;
  wire p0__10_n_75;
  wire p0__10_n_76;
  wire p0__10_n_77;
  wire p0__10_n_78;
  wire p0__10_n_79;
  wire p0__10_n_80;
  wire p0__10_n_81;
  wire p0__10_n_82;
  wire p0__10_n_83;
  wire p0__10_n_84;
  wire p0__10_n_85;
  wire p0__10_n_86;
  wire p0__10_n_87;
  wire p0__10_n_88;
  wire p0__10_n_89;
  wire p0__10_n_90;
  wire p0__10_n_91;
  wire p0__10_n_92;
  wire p0__10_n_93;
  wire p0__10_n_94;
  wire p0__10_n_95;
  wire p0__10_n_96;
  wire p0__10_n_97;
  wire p0__10_n_98;
  wire p0__10_n_99;
  wire p0__11_n_100;
  wire p0__11_n_101;
  wire p0__11_n_102;
  wire p0__11_n_103;
  wire p0__11_n_104;
  wire p0__11_n_105;
  wire p0__11_n_106;
  wire p0__11_n_107;
  wire p0__11_n_108;
  wire p0__11_n_109;
  wire p0__11_n_110;
  wire p0__11_n_111;
  wire p0__11_n_112;
  wire p0__11_n_113;
  wire p0__11_n_114;
  wire p0__11_n_115;
  wire p0__11_n_116;
  wire p0__11_n_117;
  wire p0__11_n_118;
  wire p0__11_n_119;
  wire p0__11_n_120;
  wire p0__11_n_121;
  wire p0__11_n_122;
  wire p0__11_n_123;
  wire p0__11_n_124;
  wire p0__11_n_125;
  wire p0__11_n_126;
  wire p0__11_n_127;
  wire p0__11_n_128;
  wire p0__11_n_129;
  wire p0__11_n_130;
  wire p0__11_n_131;
  wire p0__11_n_132;
  wire p0__11_n_133;
  wire p0__11_n_134;
  wire p0__11_n_135;
  wire p0__11_n_136;
  wire p0__11_n_137;
  wire p0__11_n_138;
  wire p0__11_n_139;
  wire p0__11_n_140;
  wire p0__11_n_141;
  wire p0__11_n_142;
  wire p0__11_n_143;
  wire p0__11_n_144;
  wire p0__11_n_145;
  wire p0__11_n_146;
  wire p0__11_n_147;
  wire p0__11_n_148;
  wire p0__11_n_149;
  wire p0__11_n_150;
  wire p0__11_n_151;
  wire p0__11_n_152;
  wire p0__11_n_153;
  wire p0__11_n_58;
  wire p0__11_n_59;
  wire p0__11_n_60;
  wire p0__11_n_61;
  wire p0__11_n_62;
  wire p0__11_n_63;
  wire p0__11_n_64;
  wire p0__11_n_65;
  wire p0__11_n_66;
  wire p0__11_n_67;
  wire p0__11_n_68;
  wire p0__11_n_69;
  wire p0__11_n_70;
  wire p0__11_n_71;
  wire p0__11_n_72;
  wire p0__11_n_73;
  wire p0__11_n_74;
  wire p0__11_n_75;
  wire p0__11_n_76;
  wire p0__11_n_77;
  wire p0__11_n_78;
  wire p0__11_n_79;
  wire p0__11_n_80;
  wire p0__11_n_81;
  wire p0__11_n_82;
  wire p0__11_n_83;
  wire p0__11_n_84;
  wire p0__11_n_85;
  wire p0__11_n_86;
  wire p0__11_n_87;
  wire p0__11_n_88;
  wire p0__11_n_89;
  wire p0__11_n_90;
  wire p0__11_n_91;
  wire p0__11_n_92;
  wire p0__11_n_93;
  wire p0__11_n_94;
  wire p0__11_n_95;
  wire p0__11_n_96;
  wire p0__11_n_97;
  wire p0__11_n_98;
  wire p0__11_n_99;
  wire p0__12_n_106;
  wire p0__12_n_107;
  wire p0__12_n_108;
  wire p0__12_n_109;
  wire p0__12_n_110;
  wire p0__12_n_111;
  wire p0__12_n_112;
  wire p0__12_n_113;
  wire p0__12_n_114;
  wire p0__12_n_115;
  wire p0__12_n_116;
  wire p0__12_n_117;
  wire p0__12_n_118;
  wire p0__12_n_119;
  wire p0__12_n_120;
  wire p0__12_n_121;
  wire p0__12_n_122;
  wire p0__12_n_123;
  wire p0__12_n_124;
  wire p0__12_n_125;
  wire p0__12_n_126;
  wire p0__12_n_127;
  wire p0__12_n_128;
  wire p0__12_n_129;
  wire p0__12_n_130;
  wire p0__12_n_131;
  wire p0__12_n_132;
  wire p0__12_n_133;
  wire p0__12_n_134;
  wire p0__12_n_135;
  wire p0__12_n_136;
  wire p0__12_n_137;
  wire p0__12_n_138;
  wire p0__12_n_139;
  wire p0__12_n_140;
  wire p0__12_n_141;
  wire p0__12_n_142;
  wire p0__12_n_143;
  wire p0__12_n_144;
  wire p0__12_n_145;
  wire p0__12_n_146;
  wire p0__12_n_147;
  wire p0__12_n_148;
  wire p0__12_n_149;
  wire p0__12_n_150;
  wire p0__12_n_151;
  wire p0__12_n_152;
  wire p0__12_n_153;
  wire p0__13_n_100;
  wire p0__13_n_101;
  wire p0__13_n_102;
  wire p0__13_n_103;
  wire p0__13_n_104;
  wire p0__13_n_105;
  wire p0__13_n_106;
  wire p0__13_n_107;
  wire p0__13_n_108;
  wire p0__13_n_109;
  wire p0__13_n_110;
  wire p0__13_n_111;
  wire p0__13_n_112;
  wire p0__13_n_113;
  wire p0__13_n_114;
  wire p0__13_n_115;
  wire p0__13_n_116;
  wire p0__13_n_117;
  wire p0__13_n_118;
  wire p0__13_n_119;
  wire p0__13_n_120;
  wire p0__13_n_121;
  wire p0__13_n_122;
  wire p0__13_n_123;
  wire p0__13_n_124;
  wire p0__13_n_125;
  wire p0__13_n_126;
  wire p0__13_n_127;
  wire p0__13_n_128;
  wire p0__13_n_129;
  wire p0__13_n_130;
  wire p0__13_n_131;
  wire p0__13_n_132;
  wire p0__13_n_133;
  wire p0__13_n_134;
  wire p0__13_n_135;
  wire p0__13_n_136;
  wire p0__13_n_137;
  wire p0__13_n_138;
  wire p0__13_n_139;
  wire p0__13_n_140;
  wire p0__13_n_141;
  wire p0__13_n_142;
  wire p0__13_n_143;
  wire p0__13_n_144;
  wire p0__13_n_145;
  wire p0__13_n_146;
  wire p0__13_n_147;
  wire p0__13_n_148;
  wire p0__13_n_149;
  wire p0__13_n_150;
  wire p0__13_n_151;
  wire p0__13_n_152;
  wire p0__13_n_153;
  wire p0__13_n_58;
  wire p0__13_n_59;
  wire p0__13_n_60;
  wire p0__13_n_61;
  wire p0__13_n_62;
  wire p0__13_n_63;
  wire p0__13_n_64;
  wire p0__13_n_65;
  wire p0__13_n_66;
  wire p0__13_n_67;
  wire p0__13_n_68;
  wire p0__13_n_69;
  wire p0__13_n_70;
  wire p0__13_n_71;
  wire p0__13_n_72;
  wire p0__13_n_73;
  wire p0__13_n_74;
  wire p0__13_n_75;
  wire p0__13_n_76;
  wire p0__13_n_77;
  wire p0__13_n_78;
  wire p0__13_n_79;
  wire p0__13_n_80;
  wire p0__13_n_81;
  wire p0__13_n_82;
  wire p0__13_n_83;
  wire p0__13_n_84;
  wire p0__13_n_85;
  wire p0__13_n_86;
  wire p0__13_n_87;
  wire p0__13_n_88;
  wire p0__13_n_89;
  wire p0__13_n_90;
  wire p0__13_n_91;
  wire p0__13_n_92;
  wire p0__13_n_93;
  wire p0__13_n_94;
  wire p0__13_n_95;
  wire p0__13_n_96;
  wire p0__13_n_97;
  wire p0__13_n_98;
  wire p0__13_n_99;
  wire [3:0]p0__14_0;
  wire [3:0]p0__14_1;
  wire p0__14_2;
  wire p0__14_n_100;
  wire p0__14_n_101;
  wire p0__14_n_102;
  wire p0__14_n_103;
  wire p0__14_n_104;
  wire p0__14_n_105;
  wire p0__14_n_58;
  wire p0__14_n_59;
  wire p0__14_n_60;
  wire p0__14_n_61;
  wire p0__14_n_62;
  wire p0__14_n_63;
  wire p0__14_n_64;
  wire p0__14_n_65;
  wire p0__14_n_66;
  wire p0__14_n_67;
  wire p0__14_n_68;
  wire p0__14_n_69;
  wire p0__14_n_70;
  wire p0__14_n_71;
  wire p0__14_n_72;
  wire p0__14_n_73;
  wire p0__14_n_74;
  wire p0__14_n_75;
  wire p0__14_n_76;
  wire p0__14_n_77;
  wire p0__14_n_78;
  wire p0__14_n_79;
  wire p0__14_n_80;
  wire p0__14_n_81;
  wire p0__14_n_82;
  wire p0__14_n_83;
  wire p0__14_n_84;
  wire p0__14_n_85;
  wire p0__14_n_86;
  wire p0__14_n_87;
  wire p0__14_n_88;
  wire p0__14_n_89;
  wire p0__14_n_90;
  wire p0__14_n_91;
  wire p0__14_n_92;
  wire p0__14_n_93;
  wire p0__14_n_94;
  wire p0__14_n_95;
  wire p0__14_n_96;
  wire p0__14_n_97;
  wire p0__14_n_98;
  wire p0__14_n_99;
  wire p0__1_n_100;
  wire p0__1_n_101;
  wire p0__1_n_102;
  wire p0__1_n_103;
  wire p0__1_n_104;
  wire p0__1_n_105;
  wire p0__1_n_106;
  wire p0__1_n_107;
  wire p0__1_n_108;
  wire p0__1_n_109;
  wire p0__1_n_110;
  wire p0__1_n_111;
  wire p0__1_n_112;
  wire p0__1_n_113;
  wire p0__1_n_114;
  wire p0__1_n_115;
  wire p0__1_n_116;
  wire p0__1_n_117;
  wire p0__1_n_118;
  wire p0__1_n_119;
  wire p0__1_n_120;
  wire p0__1_n_121;
  wire p0__1_n_122;
  wire p0__1_n_123;
  wire p0__1_n_124;
  wire p0__1_n_125;
  wire p0__1_n_126;
  wire p0__1_n_127;
  wire p0__1_n_128;
  wire p0__1_n_129;
  wire p0__1_n_130;
  wire p0__1_n_131;
  wire p0__1_n_132;
  wire p0__1_n_133;
  wire p0__1_n_134;
  wire p0__1_n_135;
  wire p0__1_n_136;
  wire p0__1_n_137;
  wire p0__1_n_138;
  wire p0__1_n_139;
  wire p0__1_n_140;
  wire p0__1_n_141;
  wire p0__1_n_142;
  wire p0__1_n_143;
  wire p0__1_n_144;
  wire p0__1_n_145;
  wire p0__1_n_146;
  wire p0__1_n_147;
  wire p0__1_n_148;
  wire p0__1_n_149;
  wire p0__1_n_150;
  wire p0__1_n_151;
  wire p0__1_n_152;
  wire p0__1_n_153;
  wire p0__1_n_58;
  wire p0__1_n_59;
  wire p0__1_n_60;
  wire p0__1_n_61;
  wire p0__1_n_62;
  wire p0__1_n_63;
  wire p0__1_n_64;
  wire p0__1_n_65;
  wire p0__1_n_66;
  wire p0__1_n_67;
  wire p0__1_n_68;
  wire p0__1_n_69;
  wire p0__1_n_70;
  wire p0__1_n_71;
  wire p0__1_n_72;
  wire p0__1_n_73;
  wire p0__1_n_74;
  wire p0__1_n_75;
  wire p0__1_n_76;
  wire p0__1_n_77;
  wire p0__1_n_78;
  wire p0__1_n_79;
  wire p0__1_n_80;
  wire p0__1_n_81;
  wire p0__1_n_82;
  wire p0__1_n_83;
  wire p0__1_n_84;
  wire p0__1_n_85;
  wire p0__1_n_86;
  wire p0__1_n_87;
  wire p0__1_n_88;
  wire p0__1_n_89;
  wire p0__1_n_90;
  wire p0__1_n_91;
  wire p0__1_n_92;
  wire p0__1_n_93;
  wire p0__1_n_94;
  wire p0__1_n_95;
  wire p0__1_n_96;
  wire p0__1_n_97;
  wire p0__1_n_98;
  wire p0__1_n_99;
  wire p0__2_n_100;
  wire p0__2_n_101;
  wire p0__2_n_102;
  wire p0__2_n_103;
  wire p0__2_n_104;
  wire p0__2_n_105;
  wire p0__2_n_58;
  wire p0__2_n_59;
  wire p0__2_n_60;
  wire p0__2_n_61;
  wire p0__2_n_62;
  wire p0__2_n_63;
  wire p0__2_n_64;
  wire p0__2_n_65;
  wire p0__2_n_66;
  wire p0__2_n_67;
  wire p0__2_n_68;
  wire p0__2_n_69;
  wire p0__2_n_70;
  wire p0__2_n_71;
  wire p0__2_n_72;
  wire p0__2_n_73;
  wire p0__2_n_74;
  wire p0__2_n_75;
  wire p0__2_n_76;
  wire p0__2_n_77;
  wire p0__2_n_78;
  wire p0__2_n_79;
  wire p0__2_n_80;
  wire p0__2_n_81;
  wire p0__2_n_82;
  wire p0__2_n_83;
  wire p0__2_n_84;
  wire p0__2_n_85;
  wire p0__2_n_86;
  wire p0__2_n_87;
  wire p0__2_n_88;
  wire p0__2_n_89;
  wire p0__2_n_90;
  wire p0__2_n_91;
  wire p0__2_n_92;
  wire p0__2_n_93;
  wire p0__2_n_94;
  wire p0__2_n_95;
  wire p0__2_n_96;
  wire p0__2_n_97;
  wire p0__2_n_98;
  wire p0__2_n_99;
  wire p0__3_n_106;
  wire p0__3_n_107;
  wire p0__3_n_108;
  wire p0__3_n_109;
  wire p0__3_n_110;
  wire p0__3_n_111;
  wire p0__3_n_112;
  wire p0__3_n_113;
  wire p0__3_n_114;
  wire p0__3_n_115;
  wire p0__3_n_116;
  wire p0__3_n_117;
  wire p0__3_n_118;
  wire p0__3_n_119;
  wire p0__3_n_120;
  wire p0__3_n_121;
  wire p0__3_n_122;
  wire p0__3_n_123;
  wire p0__3_n_124;
  wire p0__3_n_125;
  wire p0__3_n_126;
  wire p0__3_n_127;
  wire p0__3_n_128;
  wire p0__3_n_129;
  wire p0__3_n_130;
  wire p0__3_n_131;
  wire p0__3_n_132;
  wire p0__3_n_133;
  wire p0__3_n_134;
  wire p0__3_n_135;
  wire p0__3_n_136;
  wire p0__3_n_137;
  wire p0__3_n_138;
  wire p0__3_n_139;
  wire p0__3_n_140;
  wire p0__3_n_141;
  wire p0__3_n_142;
  wire p0__3_n_143;
  wire p0__3_n_144;
  wire p0__3_n_145;
  wire p0__3_n_146;
  wire p0__3_n_147;
  wire p0__3_n_148;
  wire p0__3_n_149;
  wire p0__3_n_150;
  wire p0__3_n_151;
  wire p0__3_n_152;
  wire p0__3_n_153;
  wire p0__4_carry__0_i_1_n_0;
  wire p0__4_carry__0_i_2_n_0;
  wire p0__4_carry__0_i_3_n_0;
  wire p0__4_carry__0_i_4_n_0;
  wire p0__4_carry__0_n_0;
  wire p0__4_carry__0_n_1;
  wire p0__4_carry__0_n_2;
  wire p0__4_carry__0_n_3;
  wire p0__4_carry__10_i_10_n_0;
  wire p0__4_carry__10_i_11_n_0;
  wire p0__4_carry__10_i_12_n_0;
  wire p0__4_carry__10_i_1_n_0;
  wire p0__4_carry__10_i_2_n_0;
  wire p0__4_carry__10_i_3_n_0;
  wire p0__4_carry__10_i_4_n_0;
  wire p0__4_carry__10_i_5_n_0;
  wire p0__4_carry__10_i_6_n_0;
  wire p0__4_carry__10_i_7_n_0;
  wire p0__4_carry__10_i_8_n_0;
  wire p0__4_carry__10_i_9_n_0;
  wire p0__4_carry__10_n_0;
  wire p0__4_carry__10_n_1;
  wire p0__4_carry__10_n_2;
  wire p0__4_carry__10_n_3;
  wire p0__4_carry__11_i_10_n_0;
  wire p0__4_carry__11_i_11_n_0;
  wire p0__4_carry__11_i_12_n_0;
  wire p0__4_carry__11_i_13_n_0;
  wire p0__4_carry__11_i_14_n_0;
  wire p0__4_carry__11_i_15_n_0;
  wire p0__4_carry__11_i_16_n_0;
  wire p0__4_carry__11_i_1_n_0;
  wire p0__4_carry__11_i_2_n_0;
  wire p0__4_carry__11_i_3_n_0;
  wire p0__4_carry__11_i_4_n_0;
  wire p0__4_carry__11_i_5_n_0;
  wire p0__4_carry__11_i_6_n_0;
  wire p0__4_carry__11_i_7_n_0;
  wire p0__4_carry__11_i_8_n_0;
  wire p0__4_carry__11_i_9_n_0;
  wire p0__4_carry__11_n_0;
  wire p0__4_carry__11_n_1;
  wire p0__4_carry__11_n_2;
  wire p0__4_carry__11_n_3;
  wire p0__4_carry__12_i_10_n_0;
  wire p0__4_carry__12_i_11_n_0;
  wire p0__4_carry__12_i_12_n_0;
  wire p0__4_carry__12_i_13_n_0;
  wire p0__4_carry__12_i_14_n_0;
  wire p0__4_carry__12_i_15_n_0;
  wire p0__4_carry__12_i_16_n_0;
  wire p0__4_carry__12_i_1_n_0;
  wire p0__4_carry__12_i_2_n_0;
  wire p0__4_carry__12_i_3_n_0;
  wire p0__4_carry__12_i_4_n_0;
  wire p0__4_carry__12_i_5_n_0;
  wire p0__4_carry__12_i_6_n_0;
  wire p0__4_carry__12_i_7_n_0;
  wire p0__4_carry__12_i_8_n_0;
  wire p0__4_carry__12_i_9_n_0;
  wire p0__4_carry__12_n_0;
  wire p0__4_carry__12_n_1;
  wire p0__4_carry__12_n_2;
  wire p0__4_carry__12_n_3;
  wire p0__4_carry__13_i_10_n_0;
  wire p0__4_carry__13_i_11_n_0;
  wire p0__4_carry__13_i_12_n_0;
  wire p0__4_carry__13_i_13_n_0;
  wire p0__4_carry__13_i_14_n_0;
  wire p0__4_carry__13_i_15_n_0;
  wire p0__4_carry__13_i_16_n_0;
  wire p0__4_carry__13_i_1_n_0;
  wire p0__4_carry__13_i_2_n_0;
  wire p0__4_carry__13_i_3_n_0;
  wire p0__4_carry__13_i_4_n_0;
  wire p0__4_carry__13_i_5_n_0;
  wire p0__4_carry__13_i_6_n_0;
  wire p0__4_carry__13_i_7_n_0;
  wire p0__4_carry__13_i_8_n_0;
  wire p0__4_carry__13_i_9_n_0;
  wire p0__4_carry__13_n_0;
  wire p0__4_carry__13_n_1;
  wire p0__4_carry__13_n_2;
  wire p0__4_carry__13_n_3;
  wire p0__4_carry__14_i_10_n_0;
  wire p0__4_carry__14_i_11_n_0;
  wire p0__4_carry__14_i_12_n_0;
  wire p0__4_carry__14_i_13_n_0;
  wire p0__4_carry__14_i_14_n_0;
  wire p0__4_carry__14_i_15_n_0;
  wire p0__4_carry__14_i_16_n_0;
  wire p0__4_carry__14_i_1_n_0;
  wire p0__4_carry__14_i_2_n_0;
  wire p0__4_carry__14_i_3_n_0;
  wire p0__4_carry__14_i_4_n_0;
  wire p0__4_carry__14_i_5_n_0;
  wire p0__4_carry__14_i_6_n_0;
  wire p0__4_carry__14_i_7_n_0;
  wire p0__4_carry__14_i_8_n_0;
  wire p0__4_carry__14_i_9_n_0;
  wire p0__4_carry__14_n_0;
  wire p0__4_carry__14_n_1;
  wire p0__4_carry__14_n_2;
  wire p0__4_carry__14_n_3;
  wire p0__4_carry__15_i_10_n_0;
  wire p0__4_carry__15_i_11_n_0;
  wire p0__4_carry__15_i_12_n_0;
  wire p0__4_carry__15_i_13_n_0;
  wire p0__4_carry__15_i_14_n_0;
  wire p0__4_carry__15_i_1_n_0;
  wire p0__4_carry__15_i_2_n_0;
  wire p0__4_carry__15_i_3_n_0;
  wire p0__4_carry__15_i_4_n_0;
  wire p0__4_carry__15_i_5_n_0;
  wire p0__4_carry__15_i_6_n_0;
  wire p0__4_carry__15_i_7_n_0;
  wire p0__4_carry__15_i_8_n_0;
  wire p0__4_carry__15_i_9_n_0;
  wire p0__4_carry__15_n_0;
  wire p0__4_carry__15_n_1;
  wire p0__4_carry__15_n_2;
  wire p0__4_carry__15_n_3;
  wire p0__4_carry__16_i_1_n_0;
  wire p0__4_carry__16_i_2_n_0;
  wire p0__4_carry__16_i_3_n_0;
  wire p0__4_carry__16_i_4_n_0;
  wire p0__4_carry__16_i_5_n_0;
  wire p0__4_carry__16_i_6_n_0;
  wire p0__4_carry__16_i_7_n_0;
  wire p0__4_carry__16_i_8_n_0;
  wire p0__4_carry__16_n_0;
  wire p0__4_carry__16_n_1;
  wire p0__4_carry__16_n_2;
  wire p0__4_carry__16_n_3;
  wire p0__4_carry__17_i_1_n_0;
  wire p0__4_carry__17_i_2_n_0;
  wire p0__4_carry__17_i_3_n_0;
  wire p0__4_carry__17_i_4_n_0;
  wire p0__4_carry__17_i_5_n_0;
  wire p0__4_carry__17_i_6_n_0;
  wire p0__4_carry__17_i_7_n_0;
  wire p0__4_carry__17_i_8_n_0;
  wire p0__4_carry__17_n_0;
  wire p0__4_carry__17_n_1;
  wire p0__4_carry__17_n_2;
  wire p0__4_carry__17_n_3;
  wire p0__4_carry__18_i_1_n_0;
  wire p0__4_carry__18_i_2_n_0;
  wire p0__4_carry__18_i_3_n_0;
  wire p0__4_carry__18_i_4_n_0;
  wire p0__4_carry__18_i_5_n_0;
  wire p0__4_carry__18_n_2;
  wire p0__4_carry__18_n_3;
  wire p0__4_carry__1_i_1_n_0;
  wire p0__4_carry__1_i_2_n_0;
  wire p0__4_carry__1_i_3_n_0;
  wire p0__4_carry__1_i_4_n_0;
  wire p0__4_carry__1_n_0;
  wire p0__4_carry__1_n_1;
  wire p0__4_carry__1_n_2;
  wire p0__4_carry__1_n_3;
  wire p0__4_carry__2_i_1_n_0;
  wire p0__4_carry__2_i_2_n_0;
  wire p0__4_carry__2_i_3_n_0;
  wire p0__4_carry__2_i_4_n_0;
  wire p0__4_carry__2_n_0;
  wire p0__4_carry__2_n_1;
  wire p0__4_carry__2_n_2;
  wire p0__4_carry__2_n_3;
  wire p0__4_carry__3_i_1_n_0;
  wire p0__4_carry__3_i_2_n_0;
  wire p0__4_carry__3_i_3_n_0;
  wire p0__4_carry__3_i_4_n_0;
  wire p0__4_carry__3_i_5_n_0;
  wire p0__4_carry__3_n_0;
  wire p0__4_carry__3_n_1;
  wire p0__4_carry__3_n_2;
  wire p0__4_carry__3_n_3;
  wire p0__4_carry__4_i_1_n_0;
  wire p0__4_carry__4_i_2_n_0;
  wire p0__4_carry__4_i_3_n_0;
  wire p0__4_carry__4_i_4_n_0;
  wire p0__4_carry__4_i_5_n_0;
  wire p0__4_carry__4_i_6_n_0;
  wire p0__4_carry__4_i_7_n_0;
  wire p0__4_carry__4_i_8_n_0;
  wire p0__4_carry__4_n_0;
  wire p0__4_carry__4_n_1;
  wire p0__4_carry__4_n_2;
  wire p0__4_carry__4_n_3;
  wire p0__4_carry__5_i_1_n_0;
  wire p0__4_carry__5_i_2_n_0;
  wire p0__4_carry__5_i_3_n_0;
  wire p0__4_carry__5_i_4_n_0;
  wire p0__4_carry__5_i_5_n_0;
  wire p0__4_carry__5_i_6_n_0;
  wire p0__4_carry__5_i_7_n_0;
  wire p0__4_carry__5_i_8_n_0;
  wire p0__4_carry__5_n_0;
  wire p0__4_carry__5_n_1;
  wire p0__4_carry__5_n_2;
  wire p0__4_carry__5_n_3;
  wire p0__4_carry__6_i_1_n_0;
  wire p0__4_carry__6_i_2_n_0;
  wire p0__4_carry__6_i_3_n_0;
  wire p0__4_carry__6_i_4_n_0;
  wire p0__4_carry__6_i_5_n_0;
  wire p0__4_carry__6_i_6_n_0;
  wire p0__4_carry__6_i_7_n_0;
  wire p0__4_carry__6_i_8_n_0;
  wire p0__4_carry__6_n_0;
  wire p0__4_carry__6_n_1;
  wire p0__4_carry__6_n_2;
  wire p0__4_carry__6_n_3;
  wire p0__4_carry__7_i_1_n_0;
  wire p0__4_carry__7_i_2_n_0;
  wire p0__4_carry__7_i_3_n_0;
  wire p0__4_carry__7_i_4_n_0;
  wire p0__4_carry__7_i_5_n_0;
  wire p0__4_carry__7_i_6_n_0;
  wire p0__4_carry__7_i_7_n_0;
  wire p0__4_carry__7_i_8_n_0;
  wire p0__4_carry__7_n_0;
  wire p0__4_carry__7_n_1;
  wire p0__4_carry__7_n_2;
  wire p0__4_carry__7_n_3;
  wire p0__4_carry__8_i_10_n_0;
  wire p0__4_carry__8_i_11_n_0;
  wire p0__4_carry__8_i_12_n_0;
  wire p0__4_carry__8_i_1_n_0;
  wire p0__4_carry__8_i_2_n_0;
  wire p0__4_carry__8_i_3_n_0;
  wire p0__4_carry__8_i_4_n_0;
  wire p0__4_carry__8_i_5_n_0;
  wire p0__4_carry__8_i_6_n_0;
  wire p0__4_carry__8_i_7_n_0;
  wire p0__4_carry__8_i_8_n_0;
  wire p0__4_carry__8_i_9_n_0;
  wire p0__4_carry__8_n_0;
  wire p0__4_carry__8_n_1;
  wire p0__4_carry__8_n_2;
  wire p0__4_carry__8_n_3;
  wire p0__4_carry__9_i_10_n_0;
  wire p0__4_carry__9_i_11_n_0;
  wire p0__4_carry__9_i_12_n_0;
  wire p0__4_carry__9_i_1_n_0;
  wire p0__4_carry__9_i_2_n_0;
  wire p0__4_carry__9_i_3_n_0;
  wire p0__4_carry__9_i_4_n_0;
  wire p0__4_carry__9_i_5_n_0;
  wire p0__4_carry__9_i_6_n_0;
  wire p0__4_carry__9_i_7_n_0;
  wire p0__4_carry__9_i_8_n_0;
  wire p0__4_carry__9_i_9_n_0;
  wire p0__4_carry__9_n_0;
  wire p0__4_carry__9_n_1;
  wire p0__4_carry__9_n_2;
  wire p0__4_carry__9_n_3;
  wire p0__4_carry_i_1_n_0;
  wire p0__4_carry_i_2_n_0;
  wire p0__4_carry_i_3_n_0;
  wire p0__4_carry_n_0;
  wire p0__4_carry_n_1;
  wire p0__4_carry_n_2;
  wire p0__4_carry_n_3;
  wire p0__4_n_100;
  wire p0__4_n_101;
  wire p0__4_n_102;
  wire p0__4_n_103;
  wire p0__4_n_104;
  wire p0__4_n_105;
  wire p0__4_n_106;
  wire p0__4_n_107;
  wire p0__4_n_108;
  wire p0__4_n_109;
  wire p0__4_n_110;
  wire p0__4_n_111;
  wire p0__4_n_112;
  wire p0__4_n_113;
  wire p0__4_n_114;
  wire p0__4_n_115;
  wire p0__4_n_116;
  wire p0__4_n_117;
  wire p0__4_n_118;
  wire p0__4_n_119;
  wire p0__4_n_120;
  wire p0__4_n_121;
  wire p0__4_n_122;
  wire p0__4_n_123;
  wire p0__4_n_124;
  wire p0__4_n_125;
  wire p0__4_n_126;
  wire p0__4_n_127;
  wire p0__4_n_128;
  wire p0__4_n_129;
  wire p0__4_n_130;
  wire p0__4_n_131;
  wire p0__4_n_132;
  wire p0__4_n_133;
  wire p0__4_n_134;
  wire p0__4_n_135;
  wire p0__4_n_136;
  wire p0__4_n_137;
  wire p0__4_n_138;
  wire p0__4_n_139;
  wire p0__4_n_140;
  wire p0__4_n_141;
  wire p0__4_n_142;
  wire p0__4_n_143;
  wire p0__4_n_144;
  wire p0__4_n_145;
  wire p0__4_n_146;
  wire p0__4_n_147;
  wire p0__4_n_148;
  wire p0__4_n_149;
  wire p0__4_n_150;
  wire p0__4_n_151;
  wire p0__4_n_152;
  wire p0__4_n_153;
  wire p0__4_n_58;
  wire p0__4_n_59;
  wire p0__4_n_60;
  wire p0__4_n_61;
  wire p0__4_n_62;
  wire p0__4_n_63;
  wire p0__4_n_64;
  wire p0__4_n_65;
  wire p0__4_n_66;
  wire p0__4_n_67;
  wire p0__4_n_68;
  wire p0__4_n_69;
  wire p0__4_n_70;
  wire p0__4_n_71;
  wire p0__4_n_72;
  wire p0__4_n_73;
  wire p0__4_n_74;
  wire p0__4_n_75;
  wire p0__4_n_76;
  wire p0__4_n_77;
  wire p0__4_n_78;
  wire p0__4_n_79;
  wire p0__4_n_80;
  wire p0__4_n_81;
  wire p0__4_n_82;
  wire p0__4_n_83;
  wire p0__4_n_84;
  wire p0__4_n_85;
  wire p0__4_n_86;
  wire p0__4_n_87;
  wire p0__4_n_88;
  wire p0__4_n_89;
  wire p0__4_n_90;
  wire p0__4_n_91;
  wire p0__4_n_92;
  wire p0__4_n_93;
  wire p0__4_n_94;
  wire p0__4_n_95;
  wire p0__4_n_96;
  wire p0__4_n_97;
  wire p0__4_n_98;
  wire p0__4_n_99;
  wire p0__5_n_106;
  wire p0__5_n_107;
  wire p0__5_n_108;
  wire p0__5_n_109;
  wire p0__5_n_110;
  wire p0__5_n_111;
  wire p0__5_n_112;
  wire p0__5_n_113;
  wire p0__5_n_114;
  wire p0__5_n_115;
  wire p0__5_n_116;
  wire p0__5_n_117;
  wire p0__5_n_118;
  wire p0__5_n_119;
  wire p0__5_n_120;
  wire p0__5_n_121;
  wire p0__5_n_122;
  wire p0__5_n_123;
  wire p0__5_n_124;
  wire p0__5_n_125;
  wire p0__5_n_126;
  wire p0__5_n_127;
  wire p0__5_n_128;
  wire p0__5_n_129;
  wire p0__5_n_130;
  wire p0__5_n_131;
  wire p0__5_n_132;
  wire p0__5_n_133;
  wire p0__5_n_134;
  wire p0__5_n_135;
  wire p0__5_n_136;
  wire p0__5_n_137;
  wire p0__5_n_138;
  wire p0__5_n_139;
  wire p0__5_n_140;
  wire p0__5_n_141;
  wire p0__5_n_142;
  wire p0__5_n_143;
  wire p0__5_n_144;
  wire p0__5_n_145;
  wire p0__5_n_146;
  wire p0__5_n_147;
  wire p0__5_n_148;
  wire p0__5_n_149;
  wire p0__5_n_150;
  wire p0__5_n_151;
  wire p0__5_n_152;
  wire p0__5_n_153;
  wire p0__6_n_100;
  wire p0__6_n_101;
  wire p0__6_n_102;
  wire p0__6_n_103;
  wire p0__6_n_104;
  wire p0__6_n_105;
  wire p0__6_n_58;
  wire p0__6_n_59;
  wire p0__6_n_60;
  wire p0__6_n_61;
  wire p0__6_n_62;
  wire p0__6_n_63;
  wire p0__6_n_64;
  wire p0__6_n_65;
  wire p0__6_n_66;
  wire p0__6_n_67;
  wire p0__6_n_68;
  wire p0__6_n_69;
  wire p0__6_n_70;
  wire p0__6_n_71;
  wire p0__6_n_72;
  wire p0__6_n_73;
  wire p0__6_n_74;
  wire p0__6_n_75;
  wire p0__6_n_76;
  wire p0__6_n_77;
  wire p0__6_n_78;
  wire p0__6_n_79;
  wire p0__6_n_80;
  wire p0__6_n_81;
  wire p0__6_n_82;
  wire p0__6_n_83;
  wire p0__6_n_84;
  wire p0__6_n_85;
  wire p0__6_n_86;
  wire p0__6_n_87;
  wire p0__6_n_88;
  wire p0__6_n_89;
  wire p0__6_n_90;
  wire p0__6_n_91;
  wire p0__6_n_92;
  wire p0__6_n_93;
  wire p0__6_n_94;
  wire p0__6_n_95;
  wire p0__6_n_96;
  wire p0__6_n_97;
  wire p0__6_n_98;
  wire p0__6_n_99;
  wire p0__7_n_106;
  wire p0__7_n_107;
  wire p0__7_n_108;
  wire p0__7_n_109;
  wire p0__7_n_110;
  wire p0__7_n_111;
  wire p0__7_n_112;
  wire p0__7_n_113;
  wire p0__7_n_114;
  wire p0__7_n_115;
  wire p0__7_n_116;
  wire p0__7_n_117;
  wire p0__7_n_118;
  wire p0__7_n_119;
  wire p0__7_n_120;
  wire p0__7_n_121;
  wire p0__7_n_122;
  wire p0__7_n_123;
  wire p0__7_n_124;
  wire p0__7_n_125;
  wire p0__7_n_126;
  wire p0__7_n_127;
  wire p0__7_n_128;
  wire p0__7_n_129;
  wire p0__7_n_130;
  wire p0__7_n_131;
  wire p0__7_n_132;
  wire p0__7_n_133;
  wire p0__7_n_134;
  wire p0__7_n_135;
  wire p0__7_n_136;
  wire p0__7_n_137;
  wire p0__7_n_138;
  wire p0__7_n_139;
  wire p0__7_n_140;
  wire p0__7_n_141;
  wire p0__7_n_142;
  wire p0__7_n_143;
  wire p0__7_n_144;
  wire p0__7_n_145;
  wire p0__7_n_146;
  wire p0__7_n_147;
  wire p0__7_n_148;
  wire p0__7_n_149;
  wire p0__7_n_150;
  wire p0__7_n_151;
  wire p0__7_n_152;
  wire p0__7_n_153;
  wire p0__8_n_100;
  wire p0__8_n_101;
  wire p0__8_n_102;
  wire p0__8_n_103;
  wire p0__8_n_104;
  wire p0__8_n_105;
  wire p0__8_n_106;
  wire p0__8_n_107;
  wire p0__8_n_108;
  wire p0__8_n_109;
  wire p0__8_n_110;
  wire p0__8_n_111;
  wire p0__8_n_112;
  wire p0__8_n_113;
  wire p0__8_n_114;
  wire p0__8_n_115;
  wire p0__8_n_116;
  wire p0__8_n_117;
  wire p0__8_n_118;
  wire p0__8_n_119;
  wire p0__8_n_120;
  wire p0__8_n_121;
  wire p0__8_n_122;
  wire p0__8_n_123;
  wire p0__8_n_124;
  wire p0__8_n_125;
  wire p0__8_n_126;
  wire p0__8_n_127;
  wire p0__8_n_128;
  wire p0__8_n_129;
  wire p0__8_n_130;
  wire p0__8_n_131;
  wire p0__8_n_132;
  wire p0__8_n_133;
  wire p0__8_n_134;
  wire p0__8_n_135;
  wire p0__8_n_136;
  wire p0__8_n_137;
  wire p0__8_n_138;
  wire p0__8_n_139;
  wire p0__8_n_140;
  wire p0__8_n_141;
  wire p0__8_n_142;
  wire p0__8_n_143;
  wire p0__8_n_144;
  wire p0__8_n_145;
  wire p0__8_n_146;
  wire p0__8_n_147;
  wire p0__8_n_148;
  wire p0__8_n_149;
  wire p0__8_n_150;
  wire p0__8_n_151;
  wire p0__8_n_152;
  wire p0__8_n_153;
  wire p0__8_n_58;
  wire p0__8_n_59;
  wire p0__8_n_60;
  wire p0__8_n_61;
  wire p0__8_n_62;
  wire p0__8_n_63;
  wire p0__8_n_64;
  wire p0__8_n_65;
  wire p0__8_n_66;
  wire p0__8_n_67;
  wire p0__8_n_68;
  wire p0__8_n_69;
  wire p0__8_n_70;
  wire p0__8_n_71;
  wire p0__8_n_72;
  wire p0__8_n_73;
  wire p0__8_n_74;
  wire p0__8_n_75;
  wire p0__8_n_76;
  wire p0__8_n_77;
  wire p0__8_n_78;
  wire p0__8_n_79;
  wire p0__8_n_80;
  wire p0__8_n_81;
  wire p0__8_n_82;
  wire p0__8_n_83;
  wire p0__8_n_84;
  wire p0__8_n_85;
  wire p0__8_n_86;
  wire p0__8_n_87;
  wire p0__8_n_88;
  wire p0__8_n_89;
  wire p0__8_n_90;
  wire p0__8_n_91;
  wire p0__8_n_92;
  wire p0__8_n_93;
  wire p0__8_n_94;
  wire p0__8_n_95;
  wire p0__8_n_96;
  wire p0__8_n_97;
  wire p0__8_n_98;
  wire p0__8_n_99;
  wire p0__9_n_106;
  wire p0__9_n_107;
  wire p0__9_n_108;
  wire p0__9_n_109;
  wire p0__9_n_110;
  wire p0__9_n_111;
  wire p0__9_n_112;
  wire p0__9_n_113;
  wire p0__9_n_114;
  wire p0__9_n_115;
  wire p0__9_n_116;
  wire p0__9_n_117;
  wire p0__9_n_118;
  wire p0__9_n_119;
  wire p0__9_n_120;
  wire p0__9_n_121;
  wire p0__9_n_122;
  wire p0__9_n_123;
  wire p0__9_n_124;
  wire p0__9_n_125;
  wire p0__9_n_126;
  wire p0__9_n_127;
  wire p0__9_n_128;
  wire p0__9_n_129;
  wire p0__9_n_130;
  wire p0__9_n_131;
  wire p0__9_n_132;
  wire p0__9_n_133;
  wire p0__9_n_134;
  wire p0__9_n_135;
  wire p0__9_n_136;
  wire p0__9_n_137;
  wire p0__9_n_138;
  wire p0__9_n_139;
  wire p0__9_n_140;
  wire p0__9_n_141;
  wire p0__9_n_142;
  wire p0__9_n_143;
  wire p0__9_n_144;
  wire p0__9_n_145;
  wire p0__9_n_146;
  wire p0__9_n_147;
  wire p0__9_n_148;
  wire p0__9_n_149;
  wire p0__9_n_150;
  wire p0__9_n_151;
  wire p0__9_n_152;
  wire p0__9_n_153;
  wire [3:3]\NLW_int_data_reg_reg[60]_i_1_CO_UNCONNECTED ;
  wire NLW_p0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__0_OVERFLOW_UNCONNECTED;
  wire NLW_p0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__0_CARRYOUT_UNCONNECTED;
  wire NLW_p0__0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__0__0_OVERFLOW_UNCONNECTED;
  wire NLW_p0__0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__0__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__0__0_P_UNCONNECTED;
  wire NLW_p0__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__1_OVERFLOW_UNCONNECTED;
  wire NLW_p0__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__1_CARRYOUT_UNCONNECTED;
  wire NLW_p0__10_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__10_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__10_OVERFLOW_UNCONNECTED;
  wire NLW_p0__10_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__10_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__10_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__10_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__10_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__10_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__10_PCOUT_UNCONNECTED;
  wire NLW_p0__11_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__11_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__11_OVERFLOW_UNCONNECTED;
  wire NLW_p0__11_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__11_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__11_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__11_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__11_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__11_CARRYOUT_UNCONNECTED;
  wire NLW_p0__12_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__12_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__12_OVERFLOW_UNCONNECTED;
  wire NLW_p0__12_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__12_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__12_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__12_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__12_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__12_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__12_P_UNCONNECTED;
  wire NLW_p0__13_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__13_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__13_OVERFLOW_UNCONNECTED;
  wire NLW_p0__13_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__13_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__13_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__13_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__13_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__13_CARRYOUT_UNCONNECTED;
  wire NLW_p0__14_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__14_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__14_OVERFLOW_UNCONNECTED;
  wire NLW_p0__14_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__14_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__14_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__14_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__14_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__14_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__14_PCOUT_UNCONNECTED;
  wire NLW_p0__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__2_OVERFLOW_UNCONNECTED;
  wire NLW_p0__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__2_PCOUT_UNCONNECTED;
  wire NLW_p0__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__3_OVERFLOW_UNCONNECTED;
  wire NLW_p0__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__3_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__3_P_UNCONNECTED;
  wire NLW_p0__4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__4_OVERFLOW_UNCONNECTED;
  wire NLW_p0__4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__4_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__4_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__4_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__4_CARRYOUT_UNCONNECTED;
  wire [3:0]NLW_p0__4_carry_O_UNCONNECTED;
  wire [3:0]NLW_p0__4_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_p0__4_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_p0__4_carry__18_CO_UNCONNECTED;
  wire [3:3]NLW_p0__4_carry__18_O_UNCONNECTED;
  wire [2:0]NLW_p0__4_carry__2_O_UNCONNECTED;
  wire NLW_p0__5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__5_OVERFLOW_UNCONNECTED;
  wire NLW_p0__5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__5_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__5_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__5_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__5_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__5_P_UNCONNECTED;
  wire NLW_p0__6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__6_OVERFLOW_UNCONNECTED;
  wire NLW_p0__6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__6_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__6_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__6_PCOUT_UNCONNECTED;
  wire NLW_p0__7_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__7_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__7_OVERFLOW_UNCONNECTED;
  wire NLW_p0__7_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__7_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__7_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__7_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__7_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__7_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__7_P_UNCONNECTED;
  wire NLW_p0__8_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__8_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__8_OVERFLOW_UNCONNECTED;
  wire NLW_p0__8_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__8_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__8_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__8_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__8_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__8_CARRYOUT_UNCONNECTED;
  wire NLW_p0__9_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__9_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__9_OVERFLOW_UNCONNECTED;
  wire NLW_p0__9_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__9_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__9_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__9_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__9_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__9_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__9_P_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_2 
       (.I0(b[3]),
        .I1(int_data_reg_reg[3]),
        .O(\int_data_reg[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_3 
       (.I0(b[2]),
        .I1(int_data_reg_reg[2]),
        .O(\int_data_reg[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_4 
       (.I0(b[1]),
        .I1(int_data_reg_reg[1]),
        .O(\int_data_reg[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_5 
       (.I0(b[0]),
        .I1(int_data_reg_reg[0]),
        .O(\int_data_reg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[12]_i_2 
       (.I0(GP_OUT[8]),
        .I1(int_data_reg_reg[15]),
        .O(\int_data_reg[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[12]_i_3 
       (.I0(GP_OUT[7]),
        .I1(int_data_reg_reg[14]),
        .O(\int_data_reg[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[12]_i_4 
       (.I0(GP_OUT[6]),
        .I1(int_data_reg_reg[13]),
        .O(\int_data_reg[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[12]_i_5 
       (.I0(GP_OUT[5]),
        .I1(int_data_reg_reg[12]),
        .O(\int_data_reg[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[16]_i_2 
       (.I0(GP_OUT[12]),
        .I1(int_data_reg_reg[19]),
        .O(\int_data_reg[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[16]_i_3 
       (.I0(GP_OUT[11]),
        .I1(int_data_reg_reg[18]),
        .O(\int_data_reg[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[16]_i_4 
       (.I0(GP_OUT[10]),
        .I1(int_data_reg_reg[17]),
        .O(\int_data_reg[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[16]_i_5 
       (.I0(GP_OUT[9]),
        .I1(int_data_reg_reg[16]),
        .O(\int_data_reg[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[20]_i_2 
       (.I0(b[23]),
        .I1(int_data_reg_reg[23]),
        .O(\int_data_reg[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[20]_i_3 
       (.I0(GP_OUT[15]),
        .I1(int_data_reg_reg[22]),
        .O(\int_data_reg[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[20]_i_4 
       (.I0(GP_OUT[14]),
        .I1(int_data_reg_reg[21]),
        .O(\int_data_reg[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[20]_i_5 
       (.I0(GP_OUT[13]),
        .I1(int_data_reg_reg[20]),
        .O(\int_data_reg[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[24]_i_2 
       (.I0(b[27]),
        .I1(int_data_reg_reg[27]),
        .O(\int_data_reg[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[24]_i_3 
       (.I0(b[26]),
        .I1(int_data_reg_reg[26]),
        .O(\int_data_reg[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[24]_i_4 
       (.I0(b[25]),
        .I1(int_data_reg_reg[25]),
        .O(\int_data_reg[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[24]_i_5 
       (.I0(b[24]),
        .I1(int_data_reg_reg[24]),
        .O(\int_data_reg[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[28]_i_2 
       (.I0(b[31]),
        .I1(int_data_reg_reg[31]),
        .O(\int_data_reg[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[28]_i_3 
       (.I0(b[30]),
        .I1(int_data_reg_reg[30]),
        .O(\int_data_reg[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[28]_i_4 
       (.I0(b[29]),
        .I1(int_data_reg_reg[29]),
        .O(\int_data_reg[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[28]_i_5 
       (.I0(b[28]),
        .I1(int_data_reg_reg[28]),
        .O(\int_data_reg[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[32]_i_2 
       (.I0(b[35]),
        .I1(int_data_reg_reg[35]),
        .O(\int_data_reg[32]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[32]_i_3 
       (.I0(b[34]),
        .I1(int_data_reg_reg[34]),
        .O(\int_data_reg[32]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[32]_i_4 
       (.I0(b[33]),
        .I1(int_data_reg_reg[33]),
        .O(\int_data_reg[32]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[32]_i_5 
       (.I0(b[32]),
        .I1(int_data_reg_reg[32]),
        .O(\int_data_reg[32]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[36]_i_2 
       (.I0(b[39]),
        .I1(int_data_reg_reg[39]),
        .O(\int_data_reg[36]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[36]_i_3 
       (.I0(b[38]),
        .I1(int_data_reg_reg[38]),
        .O(\int_data_reg[36]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[36]_i_4 
       (.I0(b[37]),
        .I1(int_data_reg_reg[37]),
        .O(\int_data_reg[36]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[36]_i_5 
       (.I0(b[36]),
        .I1(int_data_reg_reg[36]),
        .O(\int_data_reg[36]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[40]_i_2 
       (.I0(b[43]),
        .I1(int_data_reg_reg[43]),
        .O(\int_data_reg[40]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[40]_i_3 
       (.I0(b[42]),
        .I1(int_data_reg_reg[42]),
        .O(\int_data_reg[40]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[40]_i_4 
       (.I0(b[41]),
        .I1(int_data_reg_reg[41]),
        .O(\int_data_reg[40]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[40]_i_5 
       (.I0(b[40]),
        .I1(int_data_reg_reg[40]),
        .O(\int_data_reg[40]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[44]_i_2 
       (.I0(b[47]),
        .I1(int_data_reg_reg[47]),
        .O(\int_data_reg[44]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[44]_i_3 
       (.I0(b[46]),
        .I1(int_data_reg_reg[46]),
        .O(\int_data_reg[44]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[44]_i_4 
       (.I0(b[45]),
        .I1(int_data_reg_reg[45]),
        .O(\int_data_reg[44]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[44]_i_5 
       (.I0(b[44]),
        .I1(int_data_reg_reg[44]),
        .O(\int_data_reg[44]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[48]_i_2 
       (.I0(b[51]),
        .I1(int_data_reg_reg[51]),
        .O(\int_data_reg[48]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[48]_i_3 
       (.I0(b[50]),
        .I1(int_data_reg_reg[50]),
        .O(\int_data_reg[48]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[48]_i_4 
       (.I0(b[49]),
        .I1(int_data_reg_reg[49]),
        .O(\int_data_reg[48]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[48]_i_5 
       (.I0(b[48]),
        .I1(int_data_reg_reg[48]),
        .O(\int_data_reg[48]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[4]_i_2 
       (.I0(GP_OUT[0]),
        .I1(int_data_reg_reg[7]),
        .O(\int_data_reg[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[4]_i_3 
       (.I0(b[6]),
        .I1(int_data_reg_reg[6]),
        .O(\int_data_reg[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[4]_i_4 
       (.I0(b[5]),
        .I1(int_data_reg_reg[5]),
        .O(\int_data_reg[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[4]_i_5 
       (.I0(b[4]),
        .I1(int_data_reg_reg[4]),
        .O(\int_data_reg[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[52]_i_2 
       (.I0(b[55]),
        .I1(int_data_reg_reg[55]),
        .O(\int_data_reg[52]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[52]_i_3 
       (.I0(b[54]),
        .I1(int_data_reg_reg[54]),
        .O(\int_data_reg[52]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[52]_i_4 
       (.I0(b[53]),
        .I1(int_data_reg_reg[53]),
        .O(\int_data_reg[52]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[52]_i_5 
       (.I0(b[52]),
        .I1(int_data_reg_reg[52]),
        .O(\int_data_reg[52]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[56]_i_2 
       (.I0(b[59]),
        .I1(int_data_reg_reg[59]),
        .O(\int_data_reg[56]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[56]_i_3 
       (.I0(b[58]),
        .I1(int_data_reg_reg[58]),
        .O(\int_data_reg[56]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[56]_i_4 
       (.I0(b[57]),
        .I1(int_data_reg_reg[57]),
        .O(\int_data_reg[56]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[56]_i_5 
       (.I0(b[56]),
        .I1(int_data_reg_reg[56]),
        .O(\int_data_reg[56]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[60]_i_3 
       (.I0(b[62]),
        .I1(int_data_reg_reg[62]),
        .O(\int_data_reg[60]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[60]_i_4 
       (.I0(b[61]),
        .I1(int_data_reg_reg[61]),
        .O(\int_data_reg[60]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[60]_i_5 
       (.I0(b[60]),
        .I1(int_data_reg_reg[60]),
        .O(\int_data_reg[60]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[8]_i_2 
       (.I0(GP_OUT[4]),
        .I1(int_data_reg_reg[11]),
        .O(\int_data_reg[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[8]_i_3 
       (.I0(GP_OUT[3]),
        .I1(int_data_reg_reg[10]),
        .O(\int_data_reg[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[8]_i_4 
       (.I0(GP_OUT[2]),
        .I1(int_data_reg_reg[9]),
        .O(\int_data_reg[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[8]_i_5 
       (.I0(GP_OUT[1]),
        .I1(int_data_reg_reg[8]),
        .O(\int_data_reg[8]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\int_data_reg_reg[0]_i_1_n_0 ,\int_data_reg_reg[0]_i_1_n_1 ,\int_data_reg_reg[0]_i_1_n_2 ,\int_data_reg_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[3:0]),
        .O(p0__14_0),
        .S({\int_data_reg[0]_i_2_n_0 ,\int_data_reg[0]_i_3_n_0 ,\int_data_reg[0]_i_4_n_0 ,\int_data_reg[0]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[12]_i_1 
       (.CI(\int_data_reg_reg[8]_i_1_n_0 ),
        .CO({\int_data_reg_reg[12]_i_1_n_0 ,\int_data_reg_reg[12]_i_1_n_1 ,\int_data_reg_reg[12]_i_1_n_2 ,\int_data_reg_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(GP_OUT[8:5]),
        .O(\int_data_reg_reg[15] ),
        .S({\int_data_reg[12]_i_2_n_0 ,\int_data_reg[12]_i_3_n_0 ,\int_data_reg[12]_i_4_n_0 ,\int_data_reg[12]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[16]_i_1 
       (.CI(\int_data_reg_reg[12]_i_1_n_0 ),
        .CO({\int_data_reg_reg[16]_i_1_n_0 ,\int_data_reg_reg[16]_i_1_n_1 ,\int_data_reg_reg[16]_i_1_n_2 ,\int_data_reg_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(GP_OUT[12:9]),
        .O(\int_data_reg_reg[19] ),
        .S({\int_data_reg[16]_i_2_n_0 ,\int_data_reg[16]_i_3_n_0 ,\int_data_reg[16]_i_4_n_0 ,\int_data_reg[16]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[20]_i_1 
       (.CI(\int_data_reg_reg[16]_i_1_n_0 ),
        .CO({\int_data_reg_reg[20]_i_1_n_0 ,\int_data_reg_reg[20]_i_1_n_1 ,\int_data_reg_reg[20]_i_1_n_2 ,\int_data_reg_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({b[23],GP_OUT[15:13]}),
        .O(\int_data_reg_reg[23] ),
        .S({\int_data_reg[20]_i_2_n_0 ,\int_data_reg[20]_i_3_n_0 ,\int_data_reg[20]_i_4_n_0 ,\int_data_reg[20]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[24]_i_1 
       (.CI(\int_data_reg_reg[20]_i_1_n_0 ),
        .CO({\int_data_reg_reg[24]_i_1_n_0 ,\int_data_reg_reg[24]_i_1_n_1 ,\int_data_reg_reg[24]_i_1_n_2 ,\int_data_reg_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[27:24]),
        .O(\int_data_reg_reg[27] ),
        .S({\int_data_reg[24]_i_2_n_0 ,\int_data_reg[24]_i_3_n_0 ,\int_data_reg[24]_i_4_n_0 ,\int_data_reg[24]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[28]_i_1 
       (.CI(\int_data_reg_reg[24]_i_1_n_0 ),
        .CO({\int_data_reg_reg[28]_i_1_n_0 ,\int_data_reg_reg[28]_i_1_n_1 ,\int_data_reg_reg[28]_i_1_n_2 ,\int_data_reg_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[31:28]),
        .O(\int_data_reg_reg[31] ),
        .S({\int_data_reg[28]_i_2_n_0 ,\int_data_reg[28]_i_3_n_0 ,\int_data_reg[28]_i_4_n_0 ,\int_data_reg[28]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[32]_i_1 
       (.CI(\int_data_reg_reg[28]_i_1_n_0 ),
        .CO({\int_data_reg_reg[32]_i_1_n_0 ,\int_data_reg_reg[32]_i_1_n_1 ,\int_data_reg_reg[32]_i_1_n_2 ,\int_data_reg_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[35:32]),
        .O(\int_data_reg_reg[35] ),
        .S({\int_data_reg[32]_i_2_n_0 ,\int_data_reg[32]_i_3_n_0 ,\int_data_reg[32]_i_4_n_0 ,\int_data_reg[32]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[36]_i_1 
       (.CI(\int_data_reg_reg[32]_i_1_n_0 ),
        .CO({\int_data_reg_reg[36]_i_1_n_0 ,\int_data_reg_reg[36]_i_1_n_1 ,\int_data_reg_reg[36]_i_1_n_2 ,\int_data_reg_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[39:36]),
        .O(\int_data_reg_reg[39] ),
        .S({\int_data_reg[36]_i_2_n_0 ,\int_data_reg[36]_i_3_n_0 ,\int_data_reg[36]_i_4_n_0 ,\int_data_reg[36]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[40]_i_1 
       (.CI(\int_data_reg_reg[36]_i_1_n_0 ),
        .CO({\int_data_reg_reg[40]_i_1_n_0 ,\int_data_reg_reg[40]_i_1_n_1 ,\int_data_reg_reg[40]_i_1_n_2 ,\int_data_reg_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[43:40]),
        .O(\int_data_reg_reg[43] ),
        .S({\int_data_reg[40]_i_2_n_0 ,\int_data_reg[40]_i_3_n_0 ,\int_data_reg[40]_i_4_n_0 ,\int_data_reg[40]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[44]_i_1 
       (.CI(\int_data_reg_reg[40]_i_1_n_0 ),
        .CO({\int_data_reg_reg[44]_i_1_n_0 ,\int_data_reg_reg[44]_i_1_n_1 ,\int_data_reg_reg[44]_i_1_n_2 ,\int_data_reg_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[47:44]),
        .O(\int_data_reg_reg[47] ),
        .S({\int_data_reg[44]_i_2_n_0 ,\int_data_reg[44]_i_3_n_0 ,\int_data_reg[44]_i_4_n_0 ,\int_data_reg[44]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[48]_i_1 
       (.CI(\int_data_reg_reg[44]_i_1_n_0 ),
        .CO({\int_data_reg_reg[48]_i_1_n_0 ,\int_data_reg_reg[48]_i_1_n_1 ,\int_data_reg_reg[48]_i_1_n_2 ,\int_data_reg_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[51:48]),
        .O(\int_data_reg_reg[51] ),
        .S({\int_data_reg[48]_i_2_n_0 ,\int_data_reg[48]_i_3_n_0 ,\int_data_reg[48]_i_4_n_0 ,\int_data_reg[48]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[4]_i_1 
       (.CI(\int_data_reg_reg[0]_i_1_n_0 ),
        .CO({\int_data_reg_reg[4]_i_1_n_0 ,\int_data_reg_reg[4]_i_1_n_1 ,\int_data_reg_reg[4]_i_1_n_2 ,\int_data_reg_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({GP_OUT[0],b[6:4]}),
        .O(p0__14_1),
        .S({\int_data_reg[4]_i_2_n_0 ,\int_data_reg[4]_i_3_n_0 ,\int_data_reg[4]_i_4_n_0 ,\int_data_reg[4]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[52]_i_1 
       (.CI(\int_data_reg_reg[48]_i_1_n_0 ),
        .CO({\int_data_reg_reg[52]_i_1_n_0 ,\int_data_reg_reg[52]_i_1_n_1 ,\int_data_reg_reg[52]_i_1_n_2 ,\int_data_reg_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[55:52]),
        .O(\int_data_reg_reg[55] ),
        .S({\int_data_reg[52]_i_2_n_0 ,\int_data_reg[52]_i_3_n_0 ,\int_data_reg[52]_i_4_n_0 ,\int_data_reg[52]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[56]_i_1 
       (.CI(\int_data_reg_reg[52]_i_1_n_0 ),
        .CO({\int_data_reg_reg[56]_i_1_n_0 ,\int_data_reg_reg[56]_i_1_n_1 ,\int_data_reg_reg[56]_i_1_n_2 ,\int_data_reg_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(b[59:56]),
        .O(\int_data_reg_reg[59] ),
        .S({\int_data_reg[56]_i_2_n_0 ,\int_data_reg[56]_i_3_n_0 ,\int_data_reg[56]_i_4_n_0 ,\int_data_reg[56]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[60]_i_1 
       (.CI(\int_data_reg_reg[56]_i_1_n_0 ),
        .CO({\NLW_int_data_reg_reg[60]_i_1_CO_UNCONNECTED [3],\int_data_reg_reg[60]_i_1_n_1 ,\int_data_reg_reg[60]_i_1_n_2 ,\int_data_reg_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,b[62:60]}),
        .O(\int_data_reg_reg[63] ),
        .S({S,\int_data_reg[60]_i_3_n_0 ,\int_data_reg[60]_i_4_n_0 ,\int_data_reg[60]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[8]_i_1 
       (.CI(\int_data_reg_reg[4]_i_1_n_0 ),
        .CO({\int_data_reg_reg[8]_i_1_n_0 ,\int_data_reg_reg[8]_i_1_n_1 ,\int_data_reg_reg[8]_i_1_n_2 ,\int_data_reg_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(GP_OUT[4:1]),
        .O(\int_data_reg_reg[11] ),
        .S({\int_data_reg[8]_i_2_n_0 ,\int_data_reg[8]_i_3_n_0 ,\int_data_reg[8]_i_4_n_0 ,\int_data_reg[8]_i_5_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 13x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0_0[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0[61],p0[61],p0[61],p0[61],p0[61],p0[61:49]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(int_DELTA_U_WRT),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__0_OVERFLOW_UNCONNECTED),
        .P({p0__0_n_58,p0__0_n_59,p0__0_n_60,p0__0_n_61,p0__0_n_62,p0__0_n_63,p0__0_n_64,p0__0_n_65,p0__0_n_66,p0__0_n_67,p0__0_n_68,p0__0_n_69,p0__0_n_70,p0__0_n_71,p0__0_n_72,p0__0_n_73,p0__0_n_74,p0__0_n_75,p0__0_n_76,p0__0_n_77,p0__0_n_78,p0__0_n_79,p0__0_n_80,p0__0_n_81,p0__0_n_82,p0__0_n_83,p0__0_n_84,p0__0_n_85,p0__0_n_86,p0__0_n_87,p0__0_n_88,p0__0_n_89,p0__0_n_90,p0__0_n_91,p0__0_n_92,p0__0_n_93,p0__0_n_94,p0__0_n_95,p0__0_n_96,p0__0_n_97,p0__0_n_98,p0__0_n_99,p0__0_n_100,p0__0_n_101,p0__0_n_102,p0__0_n_103,p0__0_n_104,p0__0_n_105}),
        .PATTERNBDETECT(NLW_p0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__0_n_106,p0__0_n_107,p0__0_n_108,p0__0_n_109,p0__0_n_110,p0__0_n_111,p0__0_n_112,p0__0_n_113,p0__0_n_114,p0__0_n_115,p0__0_n_116,p0__0_n_117,p0__0_n_118,p0__0_n_119,p0__0_n_120,p0__0_n_121,p0__0_n_122,p0__0_n_123,p0__0_n_124,p0__0_n_125,p0__0_n_126,p0__0_n_127,p0__0_n_128,p0__0_n_129,p0__0_n_130,p0__0_n_131,p0__0_n_132,p0__0_n_133,p0__0_n_134,p0__0_n_135,p0__0_n_136,p0__0_n_137,p0__0_n_138,p0__0_n_139,p0__0_n_140,p0__0_n_141,p0__0_n_142,p0__0_n_143,p0__0_n_144,p0__0_n_145,p0__0_n_146,p0__0_n_147,p0__0_n_148,p0__0_n_149,p0__0_n_150,p0__0_n_151,p0__0_n_152,p0__0_n_153}),
        .RSTA(p0__14_2),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x13 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[48:32]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__0__0_OVERFLOW_UNCONNECTED),
        .P(NLW_p0__0__0_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_p0__0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__0_n_106,p0__0_n_107,p0__0_n_108,p0__0_n_109,p0__0_n_110,p0__0_n_111,p0__0_n_112,p0__0_n_113,p0__0_n_114,p0__0_n_115,p0__0_n_116,p0__0_n_117,p0__0_n_118,p0__0_n_119,p0__0_n_120,p0__0_n_121,p0__0_n_122,p0__0_n_123,p0__0_n_124,p0__0_n_125,p0__0_n_126,p0__0_n_127,p0__0_n_128,p0__0_n_129,p0__0_n_130,p0__0_n_131,p0__0_n_132,p0__0_n_133,p0__0_n_134,p0__0_n_135,p0__0_n_136,p0__0_n_137,p0__0_n_138,p0__0_n_139,p0__0_n_140,p0__0_n_141,p0__0_n_142,p0__0_n_143,p0__0_n_144,p0__0_n_145,p0__0_n_146,p0__0_n_147,p0__0_n_148,p0__0_n_149,p0__0_n_150,p0__0_n_151,p0__0_n_152,p0__0_n_153}),
        .PCOUT({p0__0__0_n_106,p0__0__0_n_107,p0__0__0_n_108,p0__0__0_n_109,p0__0__0_n_110,p0__0__0_n_111,p0__0__0_n_112,p0__0__0_n_113,p0__0__0_n_114,p0__0__0_n_115,p0__0__0_n_116,p0__0__0_n_117,p0__0__0_n_118,p0__0__0_n_119,p0__0__0_n_120,p0__0__0_n_121,p0__0__0_n_122,p0__0__0_n_123,p0__0__0_n_124,p0__0__0_n_125,p0__0__0_n_126,p0__0__0_n_127,p0__0__0_n_128,p0__0__0_n_129,p0__0__0_n_130,p0__0__0_n_131,p0__0__0_n_132,p0__0__0_n_133,p0__0__0_n_134,p0__0__0_n_135,p0__0__0_n_136,p0__0__0_n_137,p0__0__0_n_138,p0__0__0_n_139,p0__0__0_n_140,p0__0__0_n_141,p0__0__0_n_142,p0__0__0_n_143,p0__0__0_n_144,p0__0__0_n_145,p0__0__0_n_146,p0__0__0_n_147,p0__0__0_n_148,p0__0__0_n_149,p0__0__0_n_150,p0__0__0_n_151,p0__0__0_n_152,p0__0__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__0__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 13x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46:34]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0[61],p0[61],p0[61],p0[61],p0[61],p0[61:49]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(int_DELTA_U_WRT),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__1_OVERFLOW_UNCONNECTED),
        .P({p0__1_n_58,p0__1_n_59,p0__1_n_60,p0__1_n_61,p0__1_n_62,p0__1_n_63,p0__1_n_64,p0__1_n_65,p0__1_n_66,p0__1_n_67,p0__1_n_68,p0__1_n_69,p0__1_n_70,p0__1_n_71,p0__1_n_72,p0__1_n_73,p0__1_n_74,p0__1_n_75,p0__1_n_76,p0__1_n_77,p0__1_n_78,p0__1_n_79,p0__1_n_80,p0__1_n_81,p0__1_n_82,p0__1_n_83,p0__1_n_84,p0__1_n_85,p0__1_n_86,p0__1_n_87,p0__1_n_88,p0__1_n_89,p0__1_n_90,p0__1_n_91,p0__1_n_92,p0__1_n_93,p0__1_n_94,p0__1_n_95,p0__1_n_96,p0__1_n_97,p0__1_n_98,p0__1_n_99,p0__1_n_100,p0__1_n_101,p0__1_n_102,p0__1_n_103,p0__1_n_104,p0__1_n_105}),
        .PATTERNBDETECT(NLW_p0__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__0__0_n_106,p0__0__0_n_107,p0__0__0_n_108,p0__0__0_n_109,p0__0__0_n_110,p0__0__0_n_111,p0__0__0_n_112,p0__0__0_n_113,p0__0__0_n_114,p0__0__0_n_115,p0__0__0_n_116,p0__0__0_n_117,p0__0__0_n_118,p0__0__0_n_119,p0__0__0_n_120,p0__0__0_n_121,p0__0__0_n_122,p0__0__0_n_123,p0__0__0_n_124,p0__0__0_n_125,p0__0__0_n_126,p0__0__0_n_127,p0__0__0_n_128,p0__0__0_n_129,p0__0__0_n_130,p0__0__0_n_131,p0__0__0_n_132,p0__0__0_n_133,p0__0__0_n_134,p0__0__0_n_135,p0__0__0_n_136,p0__0__0_n_137,p0__0__0_n_138,p0__0__0_n_139,p0__0__0_n_140,p0__0__0_n_141,p0__0__0_n_142,p0__0__0_n_143,p0__0__0_n_144,p0__0__0_n_145,p0__0__0_n_146,p0__0__0_n_147,p0__0__0_n_148,p0__0__0_n_149,p0__0__0_n_150,p0__0__0_n_151,p0__0__0_n_152,p0__0__0_n_153}),
        .PCOUT({p0__1_n_106,p0__1_n_107,p0__1_n_108,p0__1_n_109,p0__1_n_110,p0__1_n_111,p0__1_n_112,p0__1_n_113,p0__1_n_114,p0__1_n_115,p0__1_n_116,p0__1_n_117,p0__1_n_118,p0__1_n_119,p0__1_n_120,p0__1_n_121,p0__1_n_122,p0__1_n_123,p0__1_n_124,p0__1_n_125,p0__1_n_126,p0__1_n_127,p0__1_n_128,p0__1_n_129,p0__1_n_130,p0__1_n_131,p0__1_n_132,p0__1_n_133,p0__1_n_134,p0__1_n_135,p0__1_n_136,p0__1_n_137,p0__1_n_138,p0__1_n_139,p0__1_n_140,p0__1_n_141,p0__1_n_142,p0__1_n_143,p0__1_n_144,p0__1_n_145,p0__1_n_146,p0__1_n_147,p0__1_n_148,p0__1_n_149,p0__1_n_150,p0__1_n_151,p0__1_n_152,p0__1_n_153}),
        .RSTA(p0__14_2),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__10
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[31:15]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__10_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__10_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__10_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__10_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__10_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__10_OVERFLOW_UNCONNECTED),
        .P({p0__10_n_58,p0__10_n_59,p0__10_n_60,p0__10_n_61,p0__10_n_62,p0__10_n_63,p0__10_n_64,p0__10_n_65,p0__10_n_66,p0__10_n_67,p0__10_n_68,p0__10_n_69,p0__10_n_70,p0__10_n_71,p0__10_n_72,p0__10_n_73,p0__10_n_74,p0__10_n_75,p0__10_n_76,p0__10_n_77,p0__10_n_78,p0__10_n_79,p0__10_n_80,p0__10_n_81,p0__10_n_82,p0__10_n_83,p0__10_n_84,p0__10_n_85,p0__10_n_86,p0__10_n_87,p0__10_n_88,p0__10_n_89,p0__10_n_90,p0__10_n_91,p0__10_n_92,p0__10_n_93,p0__10_n_94,p0__10_n_95,p0__10_n_96,p0__10_n_97,p0__10_n_98,p0__10_n_99,p0__10_n_100,p0__10_n_101,p0__10_n_102,p0__10_n_103,p0__10_n_104,p0__10_n_105}),
        .PATTERNBDETECT(NLW_p0__10_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__10_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__9_n_106,p0__9_n_107,p0__9_n_108,p0__9_n_109,p0__9_n_110,p0__9_n_111,p0__9_n_112,p0__9_n_113,p0__9_n_114,p0__9_n_115,p0__9_n_116,p0__9_n_117,p0__9_n_118,p0__9_n_119,p0__9_n_120,p0__9_n_121,p0__9_n_122,p0__9_n_123,p0__9_n_124,p0__9_n_125,p0__9_n_126,p0__9_n_127,p0__9_n_128,p0__9_n_129,p0__9_n_130,p0__9_n_131,p0__9_n_132,p0__9_n_133,p0__9_n_134,p0__9_n_135,p0__9_n_136,p0__9_n_137,p0__9_n_138,p0__9_n_139,p0__9_n_140,p0__9_n_141,p0__9_n_142,p0__9_n_143,p0__9_n_144,p0__9_n_145,p0__9_n_146,p0__9_n_147,p0__9_n_148,p0__9_n_149,p0__9_n_150,p0__9_n_151,p0__9_n_152,p0__9_n_153}),
        .PCOUT(NLW_p0__10_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__10_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__11
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[14:0],1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__11_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__11_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__11_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__11_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__11_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__11_OVERFLOW_UNCONNECTED),
        .P({p0__11_n_58,p0__11_n_59,p0__11_n_60,p0__11_n_61,p0__11_n_62,p0__11_n_63,p0__11_n_64,p0__11_n_65,p0__11_n_66,p0__11_n_67,p0__11_n_68,p0__11_n_69,p0__11_n_70,p0__11_n_71,p0__11_n_72,p0__11_n_73,p0__11_n_74,p0__11_n_75,p0__11_n_76,p0__11_n_77,p0__11_n_78,p0__11_n_79,p0__11_n_80,p0__11_n_81,p0__11_n_82,p0__11_n_83,p0__11_n_84,p0__11_n_85,p0__11_n_86,p0__11_n_87,p0__11_n_88,p0__11_n_89,p0__11_n_90,p0__11_n_91,p0__11_n_92,p0__11_n_93,p0__11_n_94,p0__11_n_95,p0__11_n_96,p0__11_n_97,p0__11_n_98,p0__11_n_99,p0__11_n_100,p0__11_n_101,p0__11_n_102,p0__11_n_103,p0__11_n_104,p0__11_n_105}),
        .PATTERNBDETECT(NLW_p0__11_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__11_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__11_n_106,p0__11_n_107,p0__11_n_108,p0__11_n_109,p0__11_n_110,p0__11_n_111,p0__11_n_112,p0__11_n_113,p0__11_n_114,p0__11_n_115,p0__11_n_116,p0__11_n_117,p0__11_n_118,p0__11_n_119,p0__11_n_120,p0__11_n_121,p0__11_n_122,p0__11_n_123,p0__11_n_124,p0__11_n_125,p0__11_n_126,p0__11_n_127,p0__11_n_128,p0__11_n_129,p0__11_n_130,p0__11_n_131,p0__11_n_132,p0__11_n_133,p0__11_n_134,p0__11_n_135,p0__11_n_136,p0__11_n_137,p0__11_n_138,p0__11_n_139,p0__11_n_140,p0__11_n_141,p0__11_n_142,p0__11_n_143,p0__11_n_144,p0__11_n_145,p0__11_n_146,p0__11_n_147,p0__11_n_148,p0__11_n_149,p0__11_n_150,p0__11_n_151,p0__11_n_152,p0__11_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__11_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__12
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[14:0],1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__12_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__12_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__12_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__12_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__12_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__12_OVERFLOW_UNCONNECTED),
        .P(NLW_p0__12_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_p0__12_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__12_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__11_n_106,p0__11_n_107,p0__11_n_108,p0__11_n_109,p0__11_n_110,p0__11_n_111,p0__11_n_112,p0__11_n_113,p0__11_n_114,p0__11_n_115,p0__11_n_116,p0__11_n_117,p0__11_n_118,p0__11_n_119,p0__11_n_120,p0__11_n_121,p0__11_n_122,p0__11_n_123,p0__11_n_124,p0__11_n_125,p0__11_n_126,p0__11_n_127,p0__11_n_128,p0__11_n_129,p0__11_n_130,p0__11_n_131,p0__11_n_132,p0__11_n_133,p0__11_n_134,p0__11_n_135,p0__11_n_136,p0__11_n_137,p0__11_n_138,p0__11_n_139,p0__11_n_140,p0__11_n_141,p0__11_n_142,p0__11_n_143,p0__11_n_144,p0__11_n_145,p0__11_n_146,p0__11_n_147,p0__11_n_148,p0__11_n_149,p0__11_n_150,p0__11_n_151,p0__11_n_152,p0__11_n_153}),
        .PCOUT({p0__12_n_106,p0__12_n_107,p0__12_n_108,p0__12_n_109,p0__12_n_110,p0__12_n_111,p0__12_n_112,p0__12_n_113,p0__12_n_114,p0__12_n_115,p0__12_n_116,p0__12_n_117,p0__12_n_118,p0__12_n_119,p0__12_n_120,p0__12_n_121,p0__12_n_122,p0__12_n_123,p0__12_n_124,p0__12_n_125,p0__12_n_126,p0__12_n_127,p0__12_n_128,p0__12_n_129,p0__12_n_130,p0__12_n_131,p0__12_n_132,p0__12_n_133,p0__12_n_134,p0__12_n_135,p0__12_n_136,p0__12_n_137,p0__12_n_138,p0__12_n_139,p0__12_n_140,p0__12_n_141,p0__12_n_142,p0__12_n_143,p0__12_n_144,p0__12_n_145,p0__12_n_146,p0__12_n_147,p0__12_n_148,p0__12_n_149,p0__12_n_150,p0__12_n_151,p0__12_n_152,p0__12_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__12_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__13
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[31:15]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__13_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__13_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__13_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__13_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__13_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__13_OVERFLOW_UNCONNECTED),
        .P({p0__13_n_58,p0__13_n_59,p0__13_n_60,p0__13_n_61,p0__13_n_62,p0__13_n_63,p0__13_n_64,p0__13_n_65,p0__13_n_66,p0__13_n_67,p0__13_n_68,p0__13_n_69,p0__13_n_70,p0__13_n_71,p0__13_n_72,p0__13_n_73,p0__13_n_74,p0__13_n_75,p0__13_n_76,p0__13_n_77,p0__13_n_78,p0__13_n_79,p0__13_n_80,p0__13_n_81,p0__13_n_82,p0__13_n_83,p0__13_n_84,p0__13_n_85,p0__13_n_86,p0__13_n_87,p0__13_n_88,p0__13_n_89,p0__13_n_90,p0__13_n_91,p0__13_n_92,p0__13_n_93,p0__13_n_94,p0__13_n_95,p0__13_n_96,p0__13_n_97,p0__13_n_98,p0__13_n_99,p0__13_n_100,p0__13_n_101,p0__13_n_102,p0__13_n_103,p0__13_n_104,p0__13_n_105}),
        .PATTERNBDETECT(NLW_p0__13_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__13_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__12_n_106,p0__12_n_107,p0__12_n_108,p0__12_n_109,p0__12_n_110,p0__12_n_111,p0__12_n_112,p0__12_n_113,p0__12_n_114,p0__12_n_115,p0__12_n_116,p0__12_n_117,p0__12_n_118,p0__12_n_119,p0__12_n_120,p0__12_n_121,p0__12_n_122,p0__12_n_123,p0__12_n_124,p0__12_n_125,p0__12_n_126,p0__12_n_127,p0__12_n_128,p0__12_n_129,p0__12_n_130,p0__12_n_131,p0__12_n_132,p0__12_n_133,p0__12_n_134,p0__12_n_135,p0__12_n_136,p0__12_n_137,p0__12_n_138,p0__12_n_139,p0__12_n_140,p0__12_n_141,p0__12_n_142,p0__12_n_143,p0__12_n_144,p0__12_n_145,p0__12_n_146,p0__12_n_147,p0__12_n_148,p0__12_n_149,p0__12_n_150,p0__12_n_151,p0__12_n_152,p0__12_n_153}),
        .PCOUT({p0__13_n_106,p0__13_n_107,p0__13_n_108,p0__13_n_109,p0__13_n_110,p0__13_n_111,p0__13_n_112,p0__13_n_113,p0__13_n_114,p0__13_n_115,p0__13_n_116,p0__13_n_117,p0__13_n_118,p0__13_n_119,p0__13_n_120,p0__13_n_121,p0__13_n_122,p0__13_n_123,p0__13_n_124,p0__13_n_125,p0__13_n_126,p0__13_n_127,p0__13_n_128,p0__13_n_129,p0__13_n_130,p0__13_n_131,p0__13_n_132,p0__13_n_133,p0__13_n_134,p0__13_n_135,p0__13_n_136,p0__13_n_137,p0__13_n_138,p0__13_n_139,p0__13_n_140,p0__13_n_141,p0__13_n_142,p0__13_n_143,p0__13_n_144,p0__13_n_145,p0__13_n_146,p0__13_n_147,p0__13_n_148,p0__13_n_149,p0__13_n_150,p0__13_n_151,p0__13_n_152,p0__13_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__13_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__14
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[14:0],1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__14_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__14_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__14_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__14_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__14_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__14_OVERFLOW_UNCONNECTED),
        .P({p0__14_n_58,p0__14_n_59,p0__14_n_60,p0__14_n_61,p0__14_n_62,p0__14_n_63,p0__14_n_64,p0__14_n_65,p0__14_n_66,p0__14_n_67,p0__14_n_68,p0__14_n_69,p0__14_n_70,p0__14_n_71,p0__14_n_72,p0__14_n_73,p0__14_n_74,p0__14_n_75,p0__14_n_76,p0__14_n_77,p0__14_n_78,p0__14_n_79,p0__14_n_80,p0__14_n_81,p0__14_n_82,p0__14_n_83,p0__14_n_84,p0__14_n_85,p0__14_n_86,p0__14_n_87,p0__14_n_88,p0__14_n_89,p0__14_n_90,p0__14_n_91,p0__14_n_92,p0__14_n_93,p0__14_n_94,p0__14_n_95,p0__14_n_96,p0__14_n_97,p0__14_n_98,p0__14_n_99,p0__14_n_100,p0__14_n_101,p0__14_n_102,p0__14_n_103,p0__14_n_104,p0__14_n_105}),
        .PATTERNBDETECT(NLW_p0__14_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__14_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__13_n_106,p0__13_n_107,p0__13_n_108,p0__13_n_109,p0__13_n_110,p0__13_n_111,p0__13_n_112,p0__13_n_113,p0__13_n_114,p0__13_n_115,p0__13_n_116,p0__13_n_117,p0__13_n_118,p0__13_n_119,p0__13_n_120,p0__13_n_121,p0__13_n_122,p0__13_n_123,p0__13_n_124,p0__13_n_125,p0__13_n_126,p0__13_n_127,p0__13_n_128,p0__13_n_129,p0__13_n_130,p0__13_n_131,p0__13_n_132,p0__13_n_133,p0__13_n_134,p0__13_n_135,p0__13_n_136,p0__13_n_137,p0__13_n_138,p0__13_n_139,p0__13_n_140,p0__13_n_141,p0__13_n_142,p0__13_n_143,p0__13_n_144,p0__13_n_145,p0__13_n_146,p0__13_n_147,p0__13_n_148,p0__13_n_149,p0__13_n_150,p0__13_n_151,p0__13_n_152,p0__13_n_153}),
        .PCOUT(NLW_p0__14_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__14_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 13x13 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__2
       (.A({p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61:49]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__2_OVERFLOW_UNCONNECTED),
        .P({p0__2_n_58,p0__2_n_59,p0__2_n_60,p0__2_n_61,p0__2_n_62,p0__2_n_63,p0__2_n_64,p0__2_n_65,p0__2_n_66,p0__2_n_67,p0__2_n_68,p0__2_n_69,p0__2_n_70,p0__2_n_71,p0__2_n_72,p0__2_n_73,p0__2_n_74,p0__2_n_75,p0__2_n_76,p0__2_n_77,p0__2_n_78,p0__2_n_79,p0__2_n_80,p0__2_n_81,p0__2_n_82,p0__2_n_83,p0__2_n_84,p0__2_n_85,p0__2_n_86,p0__2_n_87,p0__2_n_88,p0__2_n_89,p0__2_n_90,p0__2_n_91,p0__2_n_92,p0__2_n_93,p0__2_n_94,p0__2_n_95,p0__2_n_96,p0__2_n_97,p0__2_n_98,p0__2_n_99,p0__2_n_100,p0__2_n_101,p0__2_n_102,p0__2_n_103,p0__2_n_104,p0__2_n_105}),
        .PATTERNBDETECT(NLW_p0__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__1_n_106,p0__1_n_107,p0__1_n_108,p0__1_n_109,p0__1_n_110,p0__1_n_111,p0__1_n_112,p0__1_n_113,p0__1_n_114,p0__1_n_115,p0__1_n_116,p0__1_n_117,p0__1_n_118,p0__1_n_119,p0__1_n_120,p0__1_n_121,p0__1_n_122,p0__1_n_123,p0__1_n_124,p0__1_n_125,p0__1_n_126,p0__1_n_127,p0__1_n_128,p0__1_n_129,p0__1_n_130,p0__1_n_131,p0__1_n_132,p0__1_n_133,p0__1_n_134,p0__1_n_135,p0__1_n_136,p0__1_n_137,p0__1_n_138,p0__1_n_139,p0__1_n_140,p0__1_n_141,p0__1_n_142,p0__1_n_143,p0__1_n_144,p0__1_n_145,p0__1_n_146,p0__1_n_147,p0__1_n_148,p0__1_n_149,p0__1_n_150,p0__1_n_151,p0__1_n_152,p0__1_n_153}),
        .PCOUT(NLW_p0__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[48:32]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__3_OVERFLOW_UNCONNECTED),
        .P(NLW_p0__3_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_p0__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__3_n_106,p0__3_n_107,p0__3_n_108,p0__3_n_109,p0__3_n_110,p0__3_n_111,p0__3_n_112,p0__3_n_113,p0__3_n_114,p0__3_n_115,p0__3_n_116,p0__3_n_117,p0__3_n_118,p0__3_n_119,p0__3_n_120,p0__3_n_121,p0__3_n_122,p0__3_n_123,p0__3_n_124,p0__3_n_125,p0__3_n_126,p0__3_n_127,p0__3_n_128,p0__3_n_129,p0__3_n_130,p0__3_n_131,p0__3_n_132,p0__3_n_133,p0__3_n_134,p0__3_n_135,p0__3_n_136,p0__3_n_137,p0__3_n_138,p0__3_n_139,p0__3_n_140,p0__3_n_141,p0__3_n_142,p0__3_n_143,p0__3_n_144,p0__3_n_145,p0__3_n_146,p0__3_n_147,p0__3_n_148,p0__3_n_149,p0__3_n_150,p0__3_n_151,p0__3_n_152,p0__3_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__3_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 13x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__4
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0_0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__4_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0[61],p0[61],p0[61],p0[61],p0[61],p0[61:49]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__4_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__4_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__4_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(int_DELTA_U_WRT),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__4_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__4_OVERFLOW_UNCONNECTED),
        .P({p0__4_n_58,p0__4_n_59,p0__4_n_60,p0__4_n_61,p0__4_n_62,p0__4_n_63,p0__4_n_64,p0__4_n_65,p0__4_n_66,p0__4_n_67,p0__4_n_68,p0__4_n_69,p0__4_n_70,p0__4_n_71,p0__4_n_72,p0__4_n_73,p0__4_n_74,p0__4_n_75,p0__4_n_76,p0__4_n_77,p0__4_n_78,p0__4_n_79,p0__4_n_80,p0__4_n_81,p0__4_n_82,p0__4_n_83,p0__4_n_84,p0__4_n_85,p0__4_n_86,p0__4_n_87,p0__4_n_88,p0__4_n_89,p0__4_n_90,p0__4_n_91,p0__4_n_92,p0__4_n_93,p0__4_n_94,p0__4_n_95,p0__4_n_96,p0__4_n_97,p0__4_n_98,p0__4_n_99,p0__4_n_100,p0__4_n_101,p0__4_n_102,p0__4_n_103,p0__4_n_104,p0__4_n_105}),
        .PATTERNBDETECT(NLW_p0__4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__4_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__3_n_106,p0__3_n_107,p0__3_n_108,p0__3_n_109,p0__3_n_110,p0__3_n_111,p0__3_n_112,p0__3_n_113,p0__3_n_114,p0__3_n_115,p0__3_n_116,p0__3_n_117,p0__3_n_118,p0__3_n_119,p0__3_n_120,p0__3_n_121,p0__3_n_122,p0__3_n_123,p0__3_n_124,p0__3_n_125,p0__3_n_126,p0__3_n_127,p0__3_n_128,p0__3_n_129,p0__3_n_130,p0__3_n_131,p0__3_n_132,p0__3_n_133,p0__3_n_134,p0__3_n_135,p0__3_n_136,p0__3_n_137,p0__3_n_138,p0__3_n_139,p0__3_n_140,p0__3_n_141,p0__3_n_142,p0__3_n_143,p0__3_n_144,p0__3_n_145,p0__3_n_146,p0__3_n_147,p0__3_n_148,p0__3_n_149,p0__3_n_150,p0__3_n_151,p0__3_n_152,p0__3_n_153}),
        .PCOUT({p0__4_n_106,p0__4_n_107,p0__4_n_108,p0__4_n_109,p0__4_n_110,p0__4_n_111,p0__4_n_112,p0__4_n_113,p0__4_n_114,p0__4_n_115,p0__4_n_116,p0__4_n_117,p0__4_n_118,p0__4_n_119,p0__4_n_120,p0__4_n_121,p0__4_n_122,p0__4_n_123,p0__4_n_124,p0__4_n_125,p0__4_n_126,p0__4_n_127,p0__4_n_128,p0__4_n_129,p0__4_n_130,p0__4_n_131,p0__4_n_132,p0__4_n_133,p0__4_n_134,p0__4_n_135,p0__4_n_136,p0__4_n_137,p0__4_n_138,p0__4_n_139,p0__4_n_140,p0__4_n_141,p0__4_n_142,p0__4_n_143,p0__4_n_144,p0__4_n_145,p0__4_n_146,p0__4_n_147,p0__4_n_148,p0__4_n_149,p0__4_n_150,p0__4_n_151,p0__4_n_152,p0__4_n_153}),
        .RSTA(p0__14_2),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__4_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry
       (.CI(1'b0),
        .CO({p0__4_carry_n_0,p0__4_carry_n_1,p0__4_carry_n_2,p0__4_carry_n_3}),
        .CYINIT(1'b0),
        .DI({p0__14_n_103,p0__14_n_104,p0__14_n_105,1'b0}),
        .O(NLW_p0__4_carry_O_UNCONNECTED[3:0]),
        .S({p0__4_carry_i_1_n_0,p0__4_carry_i_2_n_0,p0__4_carry_i_3_n_0,p0__13_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__0
       (.CI(p0__4_carry_n_0),
        .CO({p0__4_carry__0_n_0,p0__4_carry__0_n_1,p0__4_carry__0_n_2,p0__4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({p0__14_n_99,p0__14_n_100,p0__14_n_101,p0__14_n_102}),
        .O(NLW_p0__4_carry__0_O_UNCONNECTED[3:0]),
        .S({p0__4_carry__0_i_1_n_0,p0__4_carry__0_i_2_n_0,p0__4_carry__0_i_3_n_0,p0__4_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__0_i_1
       (.I0(p0__14_n_99),
        .I1(p0__8_n_99),
        .O(p0__4_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__0_i_2
       (.I0(p0__14_n_100),
        .I1(p0__8_n_100),
        .O(p0__4_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__0_i_3
       (.I0(p0__14_n_101),
        .I1(p0__8_n_101),
        .O(p0__4_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__0_i_4
       (.I0(p0__14_n_102),
        .I1(p0__8_n_102),
        .O(p0__4_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__1
       (.CI(p0__4_carry__0_n_0),
        .CO({p0__4_carry__1_n_0,p0__4_carry__1_n_1,p0__4_carry__1_n_2,p0__4_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({p0__14_n_95,p0__14_n_96,p0__14_n_97,p0__14_n_98}),
        .O(NLW_p0__4_carry__1_O_UNCONNECTED[3:0]),
        .S({p0__4_carry__1_i_1_n_0,p0__4_carry__1_i_2_n_0,p0__4_carry__1_i_3_n_0,p0__4_carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__10
       (.CI(p0__4_carry__9_n_0),
        .CO({p0__4_carry__10_n_0,p0__4_carry__10_n_1,p0__4_carry__10_n_2,p0__4_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__10_i_1_n_0,p0__4_carry__10_i_2_n_0,p0__4_carry__10_i_3_n_0,p0__4_carry__10_i_4_n_0}),
        .O(b[32:29]),
        .S({p0__4_carry__10_i_5_n_0,p0__4_carry__10_i_6_n_0,p0__4_carry__10_i_7_n_0,p0__4_carry__10_i_8_n_0}));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    p0__4_carry__10_i_1
       (.I0(p0__6_n_95),
        .I1(p0__10_n_78),
        .I2(p0__0_n_95),
        .I3(p0__4_carry__10_i_9_n_0),
        .I4(p0__14_n_60),
        .O(p0__4_carry__10_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__10_i_10
       (.I0(p0__6_n_95),
        .I1(p0__10_n_78),
        .I2(p0__0_n_95),
        .O(p0__4_carry__10_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__10_i_11
       (.I0(p0__6_n_96),
        .I1(p0__10_n_79),
        .I2(p0__0_n_96),
        .O(p0__4_carry__10_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__10_i_12
       (.I0(p0__6_n_93),
        .I1(p0__10_n_76),
        .I2(p0__0_n_93),
        .O(p0__4_carry__10_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__10_i_2
       (.I0(p0__6_n_96),
        .I1(p0__10_n_79),
        .I2(p0__0_n_96),
        .I3(p0__14_n_61),
        .I4(p0__4_carry__10_i_10_n_0),
        .O(p0__4_carry__10_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__10_i_3
       (.I0(p0__6_n_97),
        .I1(p0__10_n_80),
        .I2(p0__0_n_97),
        .I3(p0__14_n_62),
        .I4(p0__4_carry__10_i_11_n_0),
        .O(p0__4_carry__10_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__10_i_4
       (.I0(p0__6_n_98),
        .I1(p0__10_n_81),
        .I2(p0__0_n_98),
        .I3(p0__14_n_63),
        .I4(p0__4_carry__9_i_12_n_0),
        .O(p0__4_carry__10_i_4_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__10_i_5
       (.I0(p0__4_carry__10_i_1_n_0),
        .I1(p0__0_n_94),
        .I2(p0__10_n_77),
        .I3(p0__6_n_94),
        .I4(p0__14_n_59),
        .I5(p0__4_carry__10_i_12_n_0),
        .O(p0__4_carry__10_i_5_n_0));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    p0__4_carry__10_i_6
       (.I0(p0__4_carry__10_i_2_n_0),
        .I1(p0__14_n_60),
        .I2(p0__4_carry__10_i_9_n_0),
        .I3(p0__6_n_95),
        .I4(p0__10_n_78),
        .I5(p0__0_n_95),
        .O(p0__4_carry__10_i_6_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__10_i_7
       (.I0(p0__4_carry__10_i_3_n_0),
        .I1(p0__6_n_96),
        .I2(p0__10_n_79),
        .I3(p0__0_n_96),
        .I4(p0__14_n_61),
        .I5(p0__4_carry__10_i_10_n_0),
        .O(p0__4_carry__10_i_7_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__10_i_8
       (.I0(p0__4_carry__10_i_4_n_0),
        .I1(p0__6_n_97),
        .I2(p0__10_n_80),
        .I3(p0__0_n_97),
        .I4(p0__14_n_62),
        .I5(p0__4_carry__10_i_11_n_0),
        .O(p0__4_carry__10_i_8_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    p0__4_carry__10_i_9
       (.I0(p0__6_n_94),
        .I1(p0__0_n_94),
        .I2(p0__10_n_77),
        .O(p0__4_carry__10_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__11
       (.CI(p0__4_carry__10_n_0),
        .CO({p0__4_carry__11_n_0,p0__4_carry__11_n_1,p0__4_carry__11_n_2,p0__4_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__11_i_1_n_0,p0__4_carry__11_i_2_n_0,p0__4_carry__11_i_3_n_0,p0__4_carry__11_i_4_n_0}),
        .O(b[36:33]),
        .S({p0__4_carry__11_i_5_n_0,p0__4_carry__11_i_6_n_0,p0__4_carry__11_i_7_n_0,p0__4_carry__11_i_8_n_0}));
  LUT4 #(
    .INIT(16'hA800)) 
    p0__4_carry__11_i_1
       (.I0(p0__4_carry__11_i_9_n_0),
        .I1(p0__0_n_92),
        .I2(p0__6_n_92),
        .I3(p0__4_carry__11_i_10_n_0),
        .O(p0__4_carry__11_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h99966669)) 
    p0__4_carry__11_i_10
       (.I0(p0__0_n_90),
        .I1(p0__6_n_90),
        .I2(p0__0_n_91),
        .I3(p0__6_n_91),
        .I4(p0__10_n_73),
        .O(p0__4_carry__11_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__11_i_11
       (.I0(p0__0_n_92),
        .I1(p0__6_n_92),
        .O(p0__4_carry__11_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__11_i_12
       (.I0(p0__6_n_91),
        .I1(p0__0_n_91),
        .I2(p0__10_n_73),
        .I3(p0__6_n_90),
        .I4(p0__0_n_90),
        .O(p0__4_carry__11_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__11_i_13
       (.I0(p0__0_n_90),
        .I1(p0__6_n_90),
        .O(p0__4_carry__11_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h9)) 
    p0__4_carry__11_i_14
       (.I0(p0__6_n_91),
        .I1(p0__0_n_91),
        .O(p0__4_carry__11_i_14_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    p0__4_carry__11_i_15
       (.I0(p0__10_n_75),
        .I1(p0__14_n_58),
        .O(p0__4_carry__11_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__11_i_16
       (.I0(p0__6_n_93),
        .I1(p0__10_n_76),
        .I2(p0__0_n_93),
        .O(p0__4_carry__11_i_16_n_0));
  LUT4 #(
    .INIT(16'h57A8)) 
    p0__4_carry__11_i_2
       (.I0(p0__4_carry__11_i_9_n_0),
        .I1(p0__0_n_92),
        .I2(p0__6_n_92),
        .I3(p0__4_carry__11_i_10_n_0),
        .O(p0__4_carry__11_i_2_n_0));
  LUT6 #(
    .INIT(64'hE80000E8FFE8E8FF)) 
    p0__4_carry__11_i_3
       (.I0(p0__6_n_93),
        .I1(p0__10_n_76),
        .I2(p0__0_n_93),
        .I3(p0__14_n_58),
        .I4(p0__10_n_75),
        .I5(p0__4_carry__11_i_11_n_0),
        .O(p0__4_carry__11_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__11_i_4
       (.I0(p0__0_n_94),
        .I1(p0__10_n_77),
        .I2(p0__6_n_94),
        .I3(p0__14_n_59),
        .I4(p0__4_carry__10_i_12_n_0),
        .O(p0__4_carry__11_i_4_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__11_i_5
       (.I0(p0__4_carry__11_i_1_n_0),
        .I1(p0__4_carry__11_i_12_n_0),
        .I2(p0__6_n_89),
        .I3(p0__0_n_89),
        .I4(p0__4_carry__11_i_13_n_0),
        .I5(p0__10_n_72),
        .O(p0__4_carry__11_i_5_n_0));
  LUT6 #(
    .INIT(64'hA9555556555656AA)) 
    p0__4_carry__11_i_6
       (.I0(p0__4_carry__11_i_10_n_0),
        .I1(p0__6_n_92),
        .I2(p0__0_n_92),
        .I3(p0__4_carry__11_i_14_n_0),
        .I4(p0__4_carry__11_i_15_n_0),
        .I5(p0__10_n_74),
        .O(p0__4_carry__11_i_6_n_0));
  LUT4 #(
    .INIT(16'h9996)) 
    p0__4_carry__11_i_7
       (.I0(p0__4_carry__11_i_3_n_0),
        .I1(p0__4_carry__11_i_9_n_0),
        .I2(p0__0_n_92),
        .I3(p0__6_n_92),
        .O(p0__4_carry__11_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    p0__4_carry__11_i_8
       (.I0(p0__4_carry__11_i_4_n_0),
        .I1(p0__14_n_58),
        .I2(p0__10_n_75),
        .I3(p0__6_n_92),
        .I4(p0__0_n_92),
        .I5(p0__4_carry__11_i_16_n_0),
        .O(p0__4_carry__11_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h66969969)) 
    p0__4_carry__11_i_9
       (.I0(p0__0_n_91),
        .I1(p0__6_n_91),
        .I2(p0__10_n_75),
        .I3(p0__14_n_58),
        .I4(p0__10_n_74),
        .O(p0__4_carry__11_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__12
       (.CI(p0__4_carry__11_n_0),
        .CO({p0__4_carry__12_n_0,p0__4_carry__12_n_1,p0__4_carry__12_n_2,p0__4_carry__12_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__12_i_1_n_0,p0__4_carry__12_i_2_n_0,p0__4_carry__12_i_3_n_0,p0__4_carry__12_i_4_n_0}),
        .O(b[40:37]),
        .S({p0__4_carry__12_i_5_n_0,p0__4_carry__12_i_6_n_0,p0__4_carry__12_i_7_n_0,p0__4_carry__12_i_8_n_0}));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__12_i_1
       (.I0(p0__10_n_69),
        .I1(p0__6_n_87),
        .I2(p0__1_n_104),
        .I3(p0__1_n_103),
        .I4(p0__6_n_86),
        .I5(p0__4_carry__12_i_9_n_0),
        .O(p0__4_carry__12_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__12_i_10
       (.I0(p0__6_n_89),
        .I1(p0__0_n_89),
        .I2(p0__10_n_71),
        .I3(p0__1_n_105),
        .I4(p0__6_n_88),
        .O(p0__4_carry__12_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__12_i_11
       (.I0(p0__6_n_90),
        .I1(p0__0_n_90),
        .I2(p0__10_n_72),
        .I3(p0__0_n_89),
        .I4(p0__6_n_89),
        .O(p0__4_carry__12_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__12_i_12
       (.I0(p0__6_n_87),
        .I1(p0__1_n_104),
        .I2(p0__10_n_69),
        .I3(p0__1_n_103),
        .I4(p0__6_n_86),
        .O(p0__4_carry__12_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__12_i_13
       (.I0(p0__1_n_103),
        .I1(p0__6_n_86),
        .O(p0__4_carry__12_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__12_i_14
       (.I0(p0__1_n_104),
        .I1(p0__6_n_87),
        .O(p0__4_carry__12_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__12_i_15
       (.I0(p0__1_n_105),
        .I1(p0__6_n_88),
        .O(p0__4_carry__12_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h66699996)) 
    p0__4_carry__12_i_16
       (.I0(p0__6_n_88),
        .I1(p0__1_n_105),
        .I2(p0__0_n_89),
        .I3(p0__6_n_89),
        .I4(p0__10_n_71),
        .O(p0__4_carry__12_i_16_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__12_i_2
       (.I0(p0__10_n_70),
        .I1(p0__6_n_88),
        .I2(p0__1_n_105),
        .I3(p0__1_n_104),
        .I4(p0__6_n_87),
        .I5(p0__4_carry__12_i_10_n_0),
        .O(p0__4_carry__12_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__12_i_3
       (.I0(p0__10_n_71),
        .I1(p0__6_n_89),
        .I2(p0__0_n_89),
        .I3(p0__1_n_105),
        .I4(p0__6_n_88),
        .I5(p0__4_carry__12_i_11_n_0),
        .O(p0__4_carry__12_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__12_i_4
       (.I0(p0__10_n_72),
        .I1(p0__6_n_90),
        .I2(p0__0_n_90),
        .I3(p0__0_n_89),
        .I4(p0__6_n_89),
        .I5(p0__4_carry__11_i_12_n_0),
        .O(p0__4_carry__12_i_4_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__12_i_5
       (.I0(p0__4_carry__12_i_1_n_0),
        .I1(p0__4_carry__12_i_12_n_0),
        .I2(p0__6_n_85),
        .I3(p0__1_n_102),
        .I4(p0__4_carry__12_i_13_n_0),
        .I5(p0__10_n_68),
        .O(p0__4_carry__12_i_5_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__12_i_6
       (.I0(p0__4_carry__12_i_2_n_0),
        .I1(p0__4_carry__12_i_9_n_0),
        .I2(p0__6_n_86),
        .I3(p0__1_n_103),
        .I4(p0__4_carry__12_i_14_n_0),
        .I5(p0__10_n_69),
        .O(p0__4_carry__12_i_6_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__12_i_7
       (.I0(p0__4_carry__12_i_3_n_0),
        .I1(p0__4_carry__12_i_10_n_0),
        .I2(p0__6_n_87),
        .I3(p0__1_n_104),
        .I4(p0__4_carry__12_i_15_n_0),
        .I5(p0__10_n_70),
        .O(p0__4_carry__12_i_7_n_0));
  LUT6 #(
    .INIT(64'h599A9A59A66565A6)) 
    p0__4_carry__12_i_8
       (.I0(p0__4_carry__12_i_4_n_0),
        .I1(p0__4_carry__11_i_13_n_0),
        .I2(p0__10_n_72),
        .I3(p0__0_n_89),
        .I4(p0__6_n_89),
        .I5(p0__4_carry__12_i_16_n_0),
        .O(p0__4_carry__12_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__12_i_9
       (.I0(p0__6_n_88),
        .I1(p0__1_n_105),
        .I2(p0__10_n_70),
        .I3(p0__1_n_104),
        .I4(p0__6_n_87),
        .O(p0__4_carry__12_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__13
       (.CI(p0__4_carry__12_n_0),
        .CO({p0__4_carry__13_n_0,p0__4_carry__13_n_1,p0__4_carry__13_n_2,p0__4_carry__13_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__13_i_1_n_0,p0__4_carry__13_i_2_n_0,p0__4_carry__13_i_3_n_0,p0__4_carry__13_i_4_n_0}),
        .O(b[44:41]),
        .S({p0__4_carry__13_i_5_n_0,p0__4_carry__13_i_6_n_0,p0__4_carry__13_i_7_n_0,p0__4_carry__13_i_8_n_0}));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__13_i_1
       (.I0(p0__10_n_65),
        .I1(p0__6_n_83),
        .I2(p0__1_n_100),
        .I3(p0__1_n_99),
        .I4(p0__6_n_82),
        .I5(p0__4_carry__13_i_9_n_0),
        .O(p0__4_carry__13_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__13_i_10
       (.I0(p0__6_n_85),
        .I1(p0__1_n_102),
        .I2(p0__10_n_67),
        .I3(p0__1_n_101),
        .I4(p0__6_n_84),
        .O(p0__4_carry__13_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__13_i_11
       (.I0(p0__6_n_86),
        .I1(p0__1_n_103),
        .I2(p0__10_n_68),
        .I3(p0__1_n_102),
        .I4(p0__6_n_85),
        .O(p0__4_carry__13_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__13_i_12
       (.I0(p0__6_n_83),
        .I1(p0__1_n_100),
        .I2(p0__10_n_65),
        .I3(p0__1_n_99),
        .I4(p0__6_n_82),
        .O(p0__4_carry__13_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__13_i_13
       (.I0(p0__1_n_99),
        .I1(p0__6_n_82),
        .O(p0__4_carry__13_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__13_i_14
       (.I0(p0__1_n_100),
        .I1(p0__6_n_83),
        .O(p0__4_carry__13_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__13_i_15
       (.I0(p0__1_n_101),
        .I1(p0__6_n_84),
        .O(p0__4_carry__13_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__13_i_16
       (.I0(p0__1_n_102),
        .I1(p0__6_n_85),
        .O(p0__4_carry__13_i_16_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__13_i_2
       (.I0(p0__10_n_66),
        .I1(p0__6_n_84),
        .I2(p0__1_n_101),
        .I3(p0__1_n_100),
        .I4(p0__6_n_83),
        .I5(p0__4_carry__13_i_10_n_0),
        .O(p0__4_carry__13_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__13_i_3
       (.I0(p0__10_n_67),
        .I1(p0__6_n_85),
        .I2(p0__1_n_102),
        .I3(p0__1_n_101),
        .I4(p0__6_n_84),
        .I5(p0__4_carry__13_i_11_n_0),
        .O(p0__4_carry__13_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__13_i_4
       (.I0(p0__10_n_68),
        .I1(p0__6_n_86),
        .I2(p0__1_n_103),
        .I3(p0__1_n_102),
        .I4(p0__6_n_85),
        .I5(p0__4_carry__12_i_12_n_0),
        .O(p0__4_carry__13_i_4_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__13_i_5
       (.I0(p0__4_carry__13_i_1_n_0),
        .I1(p0__4_carry__13_i_12_n_0),
        .I2(p0__6_n_81),
        .I3(p0__1_n_98),
        .I4(p0__4_carry__13_i_13_n_0),
        .I5(p0__10_n_64),
        .O(p0__4_carry__13_i_5_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__13_i_6
       (.I0(p0__4_carry__13_i_2_n_0),
        .I1(p0__4_carry__13_i_9_n_0),
        .I2(p0__6_n_82),
        .I3(p0__1_n_99),
        .I4(p0__4_carry__13_i_14_n_0),
        .I5(p0__10_n_65),
        .O(p0__4_carry__13_i_6_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__13_i_7
       (.I0(p0__4_carry__13_i_3_n_0),
        .I1(p0__4_carry__13_i_10_n_0),
        .I2(p0__6_n_83),
        .I3(p0__1_n_100),
        .I4(p0__4_carry__13_i_15_n_0),
        .I5(p0__10_n_66),
        .O(p0__4_carry__13_i_7_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__13_i_8
       (.I0(p0__4_carry__13_i_4_n_0),
        .I1(p0__4_carry__13_i_11_n_0),
        .I2(p0__6_n_84),
        .I3(p0__1_n_101),
        .I4(p0__4_carry__13_i_16_n_0),
        .I5(p0__10_n_67),
        .O(p0__4_carry__13_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__13_i_9
       (.I0(p0__6_n_84),
        .I1(p0__1_n_101),
        .I2(p0__10_n_66),
        .I3(p0__1_n_100),
        .I4(p0__6_n_83),
        .O(p0__4_carry__13_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__14
       (.CI(p0__4_carry__13_n_0),
        .CO({p0__4_carry__14_n_0,p0__4_carry__14_n_1,p0__4_carry__14_n_2,p0__4_carry__14_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__14_i_1_n_0,p0__4_carry__14_i_2_n_0,p0__4_carry__14_i_3_n_0,p0__4_carry__14_i_4_n_0}),
        .O(b[48:45]),
        .S({p0__4_carry__14_i_5_n_0,p0__4_carry__14_i_6_n_0,p0__4_carry__14_i_7_n_0,p0__4_carry__14_i_8_n_0}));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__14_i_1
       (.I0(p0__10_n_61),
        .I1(p0__6_n_79),
        .I2(p0__1_n_96),
        .I3(p0__1_n_95),
        .I4(p0__6_n_78),
        .I5(p0__4_carry__14_i_9_n_0),
        .O(p0__4_carry__14_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__14_i_10
       (.I0(p0__6_n_81),
        .I1(p0__1_n_98),
        .I2(p0__10_n_63),
        .I3(p0__1_n_97),
        .I4(p0__6_n_80),
        .O(p0__4_carry__14_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__14_i_11
       (.I0(p0__6_n_82),
        .I1(p0__1_n_99),
        .I2(p0__10_n_64),
        .I3(p0__1_n_98),
        .I4(p0__6_n_81),
        .O(p0__4_carry__14_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__14_i_12
       (.I0(p0__6_n_79),
        .I1(p0__1_n_96),
        .I2(p0__10_n_61),
        .I3(p0__1_n_95),
        .I4(p0__6_n_78),
        .O(p0__4_carry__14_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__14_i_13
       (.I0(p0__1_n_95),
        .I1(p0__6_n_78),
        .O(p0__4_carry__14_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__14_i_14
       (.I0(p0__1_n_96),
        .I1(p0__6_n_79),
        .O(p0__4_carry__14_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__14_i_15
       (.I0(p0__1_n_97),
        .I1(p0__6_n_80),
        .O(p0__4_carry__14_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__14_i_16
       (.I0(p0__1_n_98),
        .I1(p0__6_n_81),
        .O(p0__4_carry__14_i_16_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__14_i_2
       (.I0(p0__10_n_62),
        .I1(p0__6_n_80),
        .I2(p0__1_n_97),
        .I3(p0__1_n_96),
        .I4(p0__6_n_79),
        .I5(p0__4_carry__14_i_10_n_0),
        .O(p0__4_carry__14_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__14_i_3
       (.I0(p0__10_n_63),
        .I1(p0__6_n_81),
        .I2(p0__1_n_98),
        .I3(p0__1_n_97),
        .I4(p0__6_n_80),
        .I5(p0__4_carry__14_i_11_n_0),
        .O(p0__4_carry__14_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__14_i_4
       (.I0(p0__10_n_64),
        .I1(p0__6_n_82),
        .I2(p0__1_n_99),
        .I3(p0__1_n_98),
        .I4(p0__6_n_81),
        .I5(p0__4_carry__13_i_12_n_0),
        .O(p0__4_carry__14_i_4_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__14_i_5
       (.I0(p0__4_carry__14_i_1_n_0),
        .I1(p0__4_carry__14_i_12_n_0),
        .I2(p0__6_n_77),
        .I3(p0__1_n_94),
        .I4(p0__4_carry__14_i_13_n_0),
        .I5(p0__10_n_60),
        .O(p0__4_carry__14_i_5_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__14_i_6
       (.I0(p0__4_carry__14_i_2_n_0),
        .I1(p0__4_carry__14_i_9_n_0),
        .I2(p0__6_n_78),
        .I3(p0__1_n_95),
        .I4(p0__4_carry__14_i_14_n_0),
        .I5(p0__10_n_61),
        .O(p0__4_carry__14_i_6_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__14_i_7
       (.I0(p0__4_carry__14_i_3_n_0),
        .I1(p0__4_carry__14_i_10_n_0),
        .I2(p0__6_n_79),
        .I3(p0__1_n_96),
        .I4(p0__4_carry__14_i_15_n_0),
        .I5(p0__10_n_62),
        .O(p0__4_carry__14_i_7_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__14_i_8
       (.I0(p0__4_carry__14_i_4_n_0),
        .I1(p0__4_carry__14_i_11_n_0),
        .I2(p0__6_n_80),
        .I3(p0__1_n_97),
        .I4(p0__4_carry__14_i_16_n_0),
        .I5(p0__10_n_63),
        .O(p0__4_carry__14_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__14_i_9
       (.I0(p0__6_n_80),
        .I1(p0__1_n_97),
        .I2(p0__10_n_62),
        .I3(p0__1_n_96),
        .I4(p0__6_n_79),
        .O(p0__4_carry__14_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__15
       (.CI(p0__4_carry__14_n_0),
        .CO({p0__4_carry__15_n_0,p0__4_carry__15_n_1,p0__4_carry__15_n_2,p0__4_carry__15_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__15_i_1_n_0,p0__4_carry__15_i_2_n_0,p0__4_carry__15_i_3_n_0,p0__4_carry__15_i_4_n_0}),
        .O(b[52:49]),
        .S({p0__4_carry__15_i_5_n_0,p0__4_carry__15_i_6_n_0,p0__4_carry__15_i_7_n_0,p0__4_carry__15_i_8_n_0}));
  LUT5 #(
    .INIT(32'h90990090)) 
    p0__4_carry__15_i_1
       (.I0(p0__1_n_91),
        .I1(p0__6_n_74),
        .I2(p0__1_n_92),
        .I3(p0__10_n_58),
        .I4(p0__6_n_75),
        .O(p0__4_carry__15_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__15_i_10
       (.I0(p0__6_n_78),
        .I1(p0__1_n_95),
        .I2(p0__10_n_60),
        .I3(p0__1_n_94),
        .I4(p0__6_n_77),
        .O(p0__4_carry__15_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__15_i_11
       (.I0(p0__1_n_93),
        .I1(p0__6_n_76),
        .O(p0__4_carry__15_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__15_i_12
       (.I0(p0__6_n_77),
        .I1(p0__1_n_94),
        .I2(p0__10_n_59),
        .I3(p0__1_n_93),
        .I4(p0__6_n_76),
        .O(p0__4_carry__15_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p0__4_carry__15_i_13
       (.I0(p0__6_n_74),
        .I1(p0__1_n_91),
        .O(p0__4_carry__15_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__15_i_14
       (.I0(p0__1_n_94),
        .I1(p0__6_n_77),
        .O(p0__4_carry__15_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEE0E000)) 
    p0__4_carry__15_i_2
       (.I0(p0__6_n_77),
        .I1(p0__1_n_94),
        .I2(p0__10_n_59),
        .I3(p0__1_n_93),
        .I4(p0__6_n_76),
        .I5(p0__4_carry__15_i_9_n_0),
        .O(p0__4_carry__15_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__15_i_3
       (.I0(p0__10_n_59),
        .I1(p0__6_n_77),
        .I2(p0__1_n_94),
        .I3(p0__1_n_93),
        .I4(p0__6_n_76),
        .I5(p0__4_carry__15_i_10_n_0),
        .O(p0__4_carry__15_i_3_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__15_i_4
       (.I0(p0__10_n_60),
        .I1(p0__6_n_78),
        .I2(p0__1_n_95),
        .I3(p0__1_n_94),
        .I4(p0__6_n_77),
        .I5(p0__4_carry__14_i_12_n_0),
        .O(p0__4_carry__15_i_4_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__15_i_5
       (.I0(p0__6_n_74),
        .I1(p0__1_n_91),
        .I2(p0__6_n_73),
        .I3(p0__1_n_90),
        .I4(p0__4_carry__15_i_1_n_0),
        .O(p0__4_carry__15_i_5_n_0));
  LUT6 #(
    .INIT(64'h18718E18E78E71E7)) 
    p0__4_carry__15_i_6
       (.I0(p0__4_carry__15_i_11_n_0),
        .I1(p0__4_carry__15_i_12_n_0),
        .I2(p0__6_n_75),
        .I3(p0__10_n_58),
        .I4(p0__1_n_92),
        .I5(p0__4_carry__15_i_13_n_0),
        .O(p0__4_carry__15_i_6_n_0));
  LUT6 #(
    .INIT(64'h599A9AA6A6656559)) 
    p0__4_carry__15_i_7
       (.I0(p0__4_carry__15_i_3_n_0),
        .I1(p0__4_carry__15_i_14_n_0),
        .I2(p0__10_n_59),
        .I3(p0__1_n_93),
        .I4(p0__6_n_76),
        .I5(p0__4_carry__15_i_9_n_0),
        .O(p0__4_carry__15_i_7_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__15_i_8
       (.I0(p0__4_carry__15_i_4_n_0),
        .I1(p0__4_carry__15_i_10_n_0),
        .I2(p0__6_n_76),
        .I3(p0__1_n_93),
        .I4(p0__4_carry__15_i_14_n_0),
        .I5(p0__10_n_59),
        .O(p0__4_carry__15_i_8_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    p0__4_carry__15_i_9
       (.I0(p0__1_n_92),
        .I1(p0__10_n_58),
        .I2(p0__6_n_75),
        .O(p0__4_carry__15_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__16
       (.CI(p0__4_carry__15_n_0),
        .CO({p0__4_carry__16_n_0,p0__4_carry__16_n_1,p0__4_carry__16_n_2,p0__4_carry__16_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__16_i_1_n_0,p0__4_carry__16_i_2_n_0,p0__4_carry__16_i_3_n_0,p0__4_carry__16_i_4_n_0}),
        .O(b[56:53]),
        .S({p0__4_carry__16_i_5_n_0,p0__4_carry__16_i_6_n_0,p0__4_carry__16_i_7_n_0,p0__4_carry__16_i_8_n_0}));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__16_i_1
       (.I0(p0__6_n_71),
        .I1(p0__2_n_105),
        .I2(p0__6_n_70),
        .I3(p0__2_n_104),
        .O(p0__4_carry__16_i_1_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__16_i_2
       (.I0(p0__6_n_72),
        .I1(p0__1_n_89),
        .I2(p0__6_n_71),
        .I3(p0__2_n_105),
        .O(p0__4_carry__16_i_2_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__16_i_3
       (.I0(p0__6_n_73),
        .I1(p0__1_n_90),
        .I2(p0__6_n_72),
        .I3(p0__1_n_89),
        .O(p0__4_carry__16_i_3_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__16_i_4
       (.I0(p0__6_n_74),
        .I1(p0__1_n_91),
        .I2(p0__6_n_73),
        .I3(p0__1_n_90),
        .O(p0__4_carry__16_i_4_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__16_i_5
       (.I0(p0__6_n_70),
        .I1(p0__2_n_104),
        .I2(p0__6_n_69),
        .I3(p0__2_n_103),
        .I4(p0__4_carry__16_i_1_n_0),
        .O(p0__4_carry__16_i_5_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__16_i_6
       (.I0(p0__6_n_71),
        .I1(p0__2_n_105),
        .I2(p0__6_n_70),
        .I3(p0__2_n_104),
        .I4(p0__4_carry__16_i_2_n_0),
        .O(p0__4_carry__16_i_6_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__16_i_7
       (.I0(p0__6_n_72),
        .I1(p0__1_n_89),
        .I2(p0__6_n_71),
        .I3(p0__2_n_105),
        .I4(p0__4_carry__16_i_3_n_0),
        .O(p0__4_carry__16_i_7_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__16_i_8
       (.I0(p0__6_n_73),
        .I1(p0__1_n_90),
        .I2(p0__6_n_72),
        .I3(p0__1_n_89),
        .I4(p0__4_carry__16_i_4_n_0),
        .O(p0__4_carry__16_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__17
       (.CI(p0__4_carry__16_n_0),
        .CO({p0__4_carry__17_n_0,p0__4_carry__17_n_1,p0__4_carry__17_n_2,p0__4_carry__17_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__17_i_1_n_0,p0__4_carry__17_i_2_n_0,p0__4_carry__17_i_3_n_0,p0__4_carry__17_i_4_n_0}),
        .O(b[60:57]),
        .S({p0__4_carry__17_i_5_n_0,p0__4_carry__17_i_6_n_0,p0__4_carry__17_i_7_n_0,p0__4_carry__17_i_8_n_0}));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__17_i_1
       (.I0(p0__6_n_67),
        .I1(p0__2_n_101),
        .I2(p0__6_n_66),
        .I3(p0__2_n_100),
        .O(p0__4_carry__17_i_1_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__17_i_2
       (.I0(p0__6_n_68),
        .I1(p0__2_n_102),
        .I2(p0__6_n_67),
        .I3(p0__2_n_101),
        .O(p0__4_carry__17_i_2_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__17_i_3
       (.I0(p0__6_n_69),
        .I1(p0__2_n_103),
        .I2(p0__6_n_68),
        .I3(p0__2_n_102),
        .O(p0__4_carry__17_i_3_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__17_i_4
       (.I0(p0__6_n_70),
        .I1(p0__2_n_104),
        .I2(p0__6_n_69),
        .I3(p0__2_n_103),
        .O(p0__4_carry__17_i_4_n_0));
  (* HLUTNM = "lutpair39" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__17_i_5
       (.I0(p0__6_n_66),
        .I1(p0__2_n_100),
        .I2(p0__6_n_65),
        .I3(p0__2_n_99),
        .I4(p0__4_carry__17_i_1_n_0),
        .O(p0__4_carry__17_i_5_n_0));
  (* HLUTNM = "lutpair38" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__17_i_6
       (.I0(p0__6_n_67),
        .I1(p0__2_n_101),
        .I2(p0__6_n_66),
        .I3(p0__2_n_100),
        .I4(p0__4_carry__17_i_2_n_0),
        .O(p0__4_carry__17_i_6_n_0));
  (* HLUTNM = "lutpair37" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__17_i_7
       (.I0(p0__6_n_68),
        .I1(p0__2_n_102),
        .I2(p0__6_n_67),
        .I3(p0__2_n_101),
        .I4(p0__4_carry__17_i_3_n_0),
        .O(p0__4_carry__17_i_7_n_0));
  (* HLUTNM = "lutpair36" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__17_i_8
       (.I0(p0__6_n_69),
        .I1(p0__2_n_103),
        .I2(p0__6_n_68),
        .I3(p0__2_n_102),
        .I4(p0__4_carry__17_i_4_n_0),
        .O(p0__4_carry__17_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__18
       (.CI(p0__4_carry__17_n_0),
        .CO({NLW_p0__4_carry__18_CO_UNCONNECTED[3:2],p0__4_carry__18_n_2,p0__4_carry__18_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p0__4_carry__18_i_1_n_0,p0__4_carry__18_i_2_n_0}),
        .O({NLW_p0__4_carry__18_O_UNCONNECTED[3],O,b[62:61]}),
        .S({1'b0,p0__4_carry__18_i_3_n_0,p0__4_carry__18_i_4_n_0,p0__4_carry__18_i_5_n_0}));
  (* HLUTNM = "lutpair40" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__18_i_1
       (.I0(p0__6_n_65),
        .I1(p0__2_n_99),
        .I2(p0__6_n_64),
        .I3(p0__2_n_98),
        .O(p0__4_carry__18_i_1_n_0));
  (* HLUTNM = "lutpair39" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__18_i_2
       (.I0(p0__6_n_66),
        .I1(p0__2_n_100),
        .I2(p0__6_n_65),
        .I3(p0__2_n_99),
        .O(p0__4_carry__18_i_2_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__4_carry__18_i_3
       (.I0(p0__2_n_98),
        .I1(p0__6_n_64),
        .I2(p0__2_n_96),
        .I3(p0__6_n_62),
        .I4(p0__2_n_97),
        .I5(p0__6_n_63),
        .O(p0__4_carry__18_i_3_n_0));
  LUT5 #(
    .INIT(32'h96969669)) 
    p0__4_carry__18_i_4
       (.I0(p0__4_carry__18_i_1_n_0),
        .I1(p0__2_n_97),
        .I2(p0__6_n_63),
        .I3(p0__2_n_98),
        .I4(p0__6_n_64),
        .O(p0__4_carry__18_i_4_n_0));
  (* HLUTNM = "lutpair40" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__18_i_5
       (.I0(p0__6_n_65),
        .I1(p0__2_n_99),
        .I2(p0__6_n_64),
        .I3(p0__2_n_98),
        .I4(p0__4_carry__18_i_2_n_0),
        .O(p0__4_carry__18_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__1_i_1
       (.I0(p0__14_n_95),
        .I1(p0__8_n_95),
        .O(p0__4_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__1_i_2
       (.I0(p0__14_n_96),
        .I1(p0__8_n_96),
        .O(p0__4_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__1_i_3
       (.I0(p0__14_n_97),
        .I1(p0__8_n_97),
        .O(p0__4_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__1_i_4
       (.I0(p0__14_n_98),
        .I1(p0__8_n_98),
        .O(p0__4_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__2
       (.CI(p0__4_carry__1_n_0),
        .CO({p0__4_carry__2_n_0,p0__4_carry__2_n_1,p0__4_carry__2_n_2,p0__4_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({p0__14_n_91,p0__14_n_92,p0__14_n_93,p0__14_n_94}),
        .O({b[0],NLW_p0__4_carry__2_O_UNCONNECTED[2:0]}),
        .S({p0__4_carry__2_i_1_n_0,p0__4_carry__2_i_2_n_0,p0__4_carry__2_i_3_n_0,p0__4_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__2_i_1
       (.I0(p0__14_n_91),
        .I1(p0__8_n_91),
        .O(p0__4_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__2_i_2
       (.I0(p0__14_n_92),
        .I1(p0__8_n_92),
        .O(p0__4_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__2_i_3
       (.I0(p0__14_n_93),
        .I1(p0__8_n_93),
        .O(p0__4_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__2_i_4
       (.I0(p0__14_n_94),
        .I1(p0__8_n_94),
        .O(p0__4_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__3
       (.CI(p0__4_carry__2_n_0),
        .CO({p0__4_carry__3_n_0,p0__4_carry__3_n_1,p0__4_carry__3_n_2,p0__4_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__3_i_1_n_0,p0__14_n_88,p0__14_n_89,p0__14_n_90}),
        .O(b[4:1]),
        .S({p0__4_carry__3_i_2_n_0,p0__4_carry__3_i_3_n_0,p0__4_carry__3_i_4_n_0,p0__4_carry__3_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__3_i_1
       (.I0(p0__14_n_87),
        .I1(p0__10_n_104),
        .I2(p0__4_n_104),
        .O(p0__4_carry__3_i_1_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    p0__4_carry__3_i_2
       (.I0(p0__14_n_87),
        .I1(p0__4_n_104),
        .I2(p0__10_n_104),
        .I3(p0__4_n_105),
        .I4(p0__10_n_105),
        .O(p0__4_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__3_i_3
       (.I0(p0__4_n_105),
        .I1(p0__10_n_105),
        .I2(p0__14_n_88),
        .O(p0__4_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__3_i_4
       (.I0(p0__14_n_89),
        .I1(p0__8_n_89),
        .O(p0__4_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__3_i_5
       (.I0(p0__14_n_90),
        .I1(p0__8_n_90),
        .O(p0__4_carry__3_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__4
       (.CI(p0__4_carry__3_n_0),
        .CO({p0__4_carry__4_n_0,p0__4_carry__4_n_1,p0__4_carry__4_n_2,p0__4_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__4_i_1_n_0,p0__4_carry__4_i_2_n_0,p0__4_carry__4_i_3_n_0,p0__4_carry__4_i_4_n_0}),
        .O({GP_OUT[1:0],b[6:5]}),
        .S({p0__4_carry__4_i_5_n_0,p0__4_carry__4_i_6_n_0,p0__4_carry__4_i_7_n_0,p0__4_carry__4_i_8_n_0}));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__4_i_1
       (.I0(p0__4_n_101),
        .I1(p0__14_n_84),
        .I2(p0__10_n_101),
        .O(p0__4_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__4_i_2
       (.I0(p0__4_n_102),
        .I1(p0__14_n_85),
        .I2(p0__10_n_102),
        .O(p0__4_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__4_i_3
       (.I0(p0__4_n_103),
        .I1(p0__14_n_86),
        .I2(p0__10_n_103),
        .O(p0__4_carry__4_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__4_i_4
       (.I0(p0__14_n_87),
        .I1(p0__4_n_104),
        .I2(p0__10_n_104),
        .O(p0__4_carry__4_i_4_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__4_i_5
       (.I0(p0__4_n_100),
        .I1(p0__14_n_83),
        .I2(p0__10_n_100),
        .I3(p0__4_carry__4_i_1_n_0),
        .O(p0__4_carry__4_i_5_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__4_i_6
       (.I0(p0__4_n_101),
        .I1(p0__14_n_84),
        .I2(p0__10_n_101),
        .I3(p0__4_carry__4_i_2_n_0),
        .O(p0__4_carry__4_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__4_i_7
       (.I0(p0__4_n_102),
        .I1(p0__14_n_85),
        .I2(p0__10_n_102),
        .I3(p0__4_carry__4_i_3_n_0),
        .O(p0__4_carry__4_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__4_i_8
       (.I0(p0__4_n_103),
        .I1(p0__14_n_86),
        .I2(p0__10_n_103),
        .I3(p0__4_carry__4_i_4_n_0),
        .O(p0__4_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__5
       (.CI(p0__4_carry__4_n_0),
        .CO({p0__4_carry__5_n_0,p0__4_carry__5_n_1,p0__4_carry__5_n_2,p0__4_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__5_i_1_n_0,p0__4_carry__5_i_2_n_0,p0__4_carry__5_i_3_n_0,p0__4_carry__5_i_4_n_0}),
        .O(GP_OUT[5:2]),
        .S({p0__4_carry__5_i_5_n_0,p0__4_carry__5_i_6_n_0,p0__4_carry__5_i_7_n_0,p0__4_carry__5_i_8_n_0}));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__5_i_1
       (.I0(p0__4_n_97),
        .I1(p0__14_n_80),
        .I2(p0__10_n_97),
        .O(p0__4_carry__5_i_1_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__5_i_2
       (.I0(p0__4_n_98),
        .I1(p0__14_n_81),
        .I2(p0__10_n_98),
        .O(p0__4_carry__5_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__5_i_3
       (.I0(p0__4_n_99),
        .I1(p0__14_n_82),
        .I2(p0__10_n_99),
        .O(p0__4_carry__5_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__5_i_4
       (.I0(p0__4_n_100),
        .I1(p0__14_n_83),
        .I2(p0__10_n_100),
        .O(p0__4_carry__5_i_4_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__5_i_5
       (.I0(p0__4_n_96),
        .I1(p0__14_n_79),
        .I2(p0__10_n_96),
        .I3(p0__4_carry__5_i_1_n_0),
        .O(p0__4_carry__5_i_5_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__5_i_6
       (.I0(p0__4_n_97),
        .I1(p0__14_n_80),
        .I2(p0__10_n_97),
        .I3(p0__4_carry__5_i_2_n_0),
        .O(p0__4_carry__5_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__5_i_7
       (.I0(p0__4_n_98),
        .I1(p0__14_n_81),
        .I2(p0__10_n_98),
        .I3(p0__4_carry__5_i_3_n_0),
        .O(p0__4_carry__5_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__5_i_8
       (.I0(p0__4_n_99),
        .I1(p0__14_n_82),
        .I2(p0__10_n_99),
        .I3(p0__4_carry__5_i_4_n_0),
        .O(p0__4_carry__5_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__6
       (.CI(p0__4_carry__5_n_0),
        .CO({p0__4_carry__6_n_0,p0__4_carry__6_n_1,p0__4_carry__6_n_2,p0__4_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__6_i_1_n_0,p0__4_carry__6_i_2_n_0,p0__4_carry__6_i_3_n_0,p0__4_carry__6_i_4_n_0}),
        .O(GP_OUT[9:6]),
        .S({p0__4_carry__6_i_5_n_0,p0__4_carry__6_i_6_n_0,p0__4_carry__6_i_7_n_0,p0__4_carry__6_i_8_n_0}));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__6_i_1
       (.I0(p0__4_n_93),
        .I1(p0__14_n_76),
        .I2(p0__10_n_93),
        .O(p0__4_carry__6_i_1_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__6_i_2
       (.I0(p0__4_n_94),
        .I1(p0__14_n_77),
        .I2(p0__10_n_94),
        .O(p0__4_carry__6_i_2_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__6_i_3
       (.I0(p0__4_n_95),
        .I1(p0__14_n_78),
        .I2(p0__10_n_95),
        .O(p0__4_carry__6_i_3_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__6_i_4
       (.I0(p0__4_n_96),
        .I1(p0__14_n_79),
        .I2(p0__10_n_96),
        .O(p0__4_carry__6_i_4_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__6_i_5
       (.I0(p0__4_n_92),
        .I1(p0__14_n_75),
        .I2(p0__10_n_92),
        .I3(p0__4_carry__6_i_1_n_0),
        .O(p0__4_carry__6_i_5_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__6_i_6
       (.I0(p0__4_n_93),
        .I1(p0__14_n_76),
        .I2(p0__10_n_93),
        .I3(p0__4_carry__6_i_2_n_0),
        .O(p0__4_carry__6_i_6_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__6_i_7
       (.I0(p0__4_n_94),
        .I1(p0__14_n_77),
        .I2(p0__10_n_94),
        .I3(p0__4_carry__6_i_3_n_0),
        .O(p0__4_carry__6_i_7_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__6_i_8
       (.I0(p0__4_n_95),
        .I1(p0__14_n_78),
        .I2(p0__10_n_95),
        .I3(p0__4_carry__6_i_4_n_0),
        .O(p0__4_carry__6_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__7
       (.CI(p0__4_carry__6_n_0),
        .CO({p0__4_carry__7_n_0,p0__4_carry__7_n_1,p0__4_carry__7_n_2,p0__4_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__7_i_1_n_0,p0__4_carry__7_i_2_n_0,p0__4_carry__7_i_3_n_0,p0__4_carry__7_i_4_n_0}),
        .O(GP_OUT[13:10]),
        .S({p0__4_carry__7_i_5_n_0,p0__4_carry__7_i_6_n_0,p0__4_carry__7_i_7_n_0,p0__4_carry__7_i_8_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__7_i_1
       (.I0(p0__0_n_105),
        .I1(p0__10_n_88),
        .I2(p0__6_n_105),
        .I3(p0__14_n_71),
        .O(p0__4_carry__7_i_1_n_0));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__7_i_2
       (.I0(p0__4_n_90),
        .I1(p0__14_n_73),
        .I2(p0__10_n_90),
        .O(p0__4_carry__7_i_2_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__7_i_3
       (.I0(p0__4_n_91),
        .I1(p0__14_n_74),
        .I2(p0__10_n_91),
        .O(p0__4_carry__7_i_3_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__7_i_4
       (.I0(p0__4_n_92),
        .I1(p0__14_n_75),
        .I2(p0__10_n_92),
        .O(p0__4_carry__7_i_4_n_0));
  LUT4 #(
    .INIT(16'h566A)) 
    p0__4_carry__7_i_5
       (.I0(p0__4_carry__7_i_1_n_0),
        .I1(p0__10_n_89),
        .I2(p0__14_n_72),
        .I3(p0__4_n_89),
        .O(p0__4_carry__7_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__7_i_6
       (.I0(p0__4_carry__7_i_2_n_0),
        .I1(p0__4_n_89),
        .I2(p0__14_n_72),
        .I3(p0__10_n_89),
        .O(p0__4_carry__7_i_6_n_0));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__7_i_7
       (.I0(p0__4_n_90),
        .I1(p0__14_n_73),
        .I2(p0__10_n_90),
        .I3(p0__4_carry__7_i_3_n_0),
        .O(p0__4_carry__7_i_7_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__7_i_8
       (.I0(p0__4_n_91),
        .I1(p0__14_n_74),
        .I2(p0__10_n_91),
        .I3(p0__4_carry__7_i_4_n_0),
        .O(p0__4_carry__7_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__8
       (.CI(p0__4_carry__7_n_0),
        .CO({p0__4_carry__8_n_0,p0__4_carry__8_n_1,p0__4_carry__8_n_2,p0__4_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__8_i_1_n_0,p0__4_carry__8_i_2_n_0,p0__4_carry__8_i_3_n_0,p0__4_carry__8_i_4_n_0}),
        .O({b[24:23],GP_OUT[15:14]}),
        .S({p0__4_carry__8_i_5_n_0,p0__4_carry__8_i_6_n_0,p0__4_carry__8_i_7_n_0,p0__4_carry__8_i_8_n_0}));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    p0__4_carry__8_i_1
       (.I0(p0__6_n_103),
        .I1(p0__10_n_86),
        .I2(p0__0_n_103),
        .I3(p0__4_carry__8_i_9_n_0),
        .I4(p0__14_n_68),
        .O(p0__4_carry__8_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__8_i_10
       (.I0(p0__6_n_103),
        .I1(p0__10_n_86),
        .I2(p0__0_n_103),
        .O(p0__4_carry__8_i_10_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__8_i_11
       (.I0(p0__6_n_104),
        .I1(p0__10_n_87),
        .I2(p0__0_n_104),
        .O(p0__4_carry__8_i_11_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__8_i_12
       (.I0(p0__6_n_101),
        .I1(p0__10_n_84),
        .I2(p0__0_n_101),
        .O(p0__4_carry__8_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__8_i_2
       (.I0(p0__6_n_104),
        .I1(p0__10_n_87),
        .I2(p0__0_n_104),
        .I3(p0__14_n_69),
        .I4(p0__4_carry__8_i_10_n_0),
        .O(p0__4_carry__8_i_2_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    p0__4_carry__8_i_3
       (.I0(p0__14_n_70),
        .I1(p0__4_carry__8_i_11_n_0),
        .I2(p0__0_n_105),
        .I3(p0__10_n_88),
        .I4(p0__6_n_105),
        .O(p0__4_carry__8_i_3_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    p0__4_carry__8_i_4
       (.I0(p0__6_n_105),
        .I1(p0__10_n_88),
        .I2(p0__0_n_105),
        .I3(p0__4_carry__8_i_11_n_0),
        .I4(p0__14_n_70),
        .O(p0__4_carry__8_i_4_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__8_i_5
       (.I0(p0__4_carry__8_i_1_n_0),
        .I1(p0__0_n_102),
        .I2(p0__10_n_85),
        .I3(p0__6_n_102),
        .I4(p0__14_n_67),
        .I5(p0__4_carry__8_i_12_n_0),
        .O(p0__4_carry__8_i_5_n_0));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    p0__4_carry__8_i_6
       (.I0(p0__4_carry__8_i_2_n_0),
        .I1(p0__14_n_68),
        .I2(p0__4_carry__8_i_9_n_0),
        .I3(p0__6_n_103),
        .I4(p0__10_n_86),
        .I5(p0__0_n_103),
        .O(p0__4_carry__8_i_6_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__8_i_7
       (.I0(p0__4_carry__8_i_3_n_0),
        .I1(p0__6_n_104),
        .I2(p0__10_n_87),
        .I3(p0__0_n_104),
        .I4(p0__14_n_69),
        .I5(p0__4_carry__8_i_10_n_0),
        .O(p0__4_carry__8_i_7_n_0));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    p0__4_carry__8_i_8
       (.I0(p0__14_n_70),
        .I1(p0__4_carry__8_i_11_n_0),
        .I2(p0__6_n_105),
        .I3(p0__10_n_88),
        .I4(p0__0_n_105),
        .I5(p0__14_n_71),
        .O(p0__4_carry__8_i_8_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    p0__4_carry__8_i_9
       (.I0(p0__6_n_102),
        .I1(p0__0_n_102),
        .I2(p0__10_n_85),
        .O(p0__4_carry__8_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__9
       (.CI(p0__4_carry__8_n_0),
        .CO({p0__4_carry__9_n_0,p0__4_carry__9_n_1,p0__4_carry__9_n_2,p0__4_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__9_i_1_n_0,p0__4_carry__9_i_2_n_0,p0__4_carry__9_i_3_n_0,p0__4_carry__9_i_4_n_0}),
        .O(b[28:25]),
        .S({p0__4_carry__9_i_5_n_0,p0__4_carry__9_i_6_n_0,p0__4_carry__9_i_7_n_0,p0__4_carry__9_i_8_n_0}));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__9_i_1
       (.I0(p0__6_n_99),
        .I1(p0__10_n_82),
        .I2(p0__0_n_99),
        .I3(p0__14_n_64),
        .I4(p0__4_carry__9_i_9_n_0),
        .O(p0__4_carry__9_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__9_i_10
       (.I0(p0__6_n_99),
        .I1(p0__10_n_82),
        .I2(p0__0_n_99),
        .O(p0__4_carry__9_i_10_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    p0__4_carry__9_i_11
       (.I0(p0__6_n_100),
        .I1(p0__0_n_100),
        .I2(p0__10_n_83),
        .O(p0__4_carry__9_i_11_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__9_i_12
       (.I0(p0__6_n_97),
        .I1(p0__10_n_80),
        .I2(p0__0_n_97),
        .O(p0__4_carry__9_i_12_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__9_i_2
       (.I0(p0__0_n_100),
        .I1(p0__10_n_83),
        .I2(p0__6_n_100),
        .I3(p0__14_n_65),
        .I4(p0__4_carry__9_i_10_n_0),
        .O(p0__4_carry__9_i_2_n_0));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    p0__4_carry__9_i_3
       (.I0(p0__6_n_101),
        .I1(p0__10_n_84),
        .I2(p0__0_n_101),
        .I3(p0__4_carry__9_i_11_n_0),
        .I4(p0__14_n_66),
        .O(p0__4_carry__9_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__9_i_4
       (.I0(p0__0_n_102),
        .I1(p0__10_n_85),
        .I2(p0__6_n_102),
        .I3(p0__14_n_67),
        .I4(p0__4_carry__8_i_12_n_0),
        .O(p0__4_carry__9_i_4_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__9_i_5
       (.I0(p0__4_carry__9_i_1_n_0),
        .I1(p0__6_n_98),
        .I2(p0__10_n_81),
        .I3(p0__0_n_98),
        .I4(p0__14_n_63),
        .I5(p0__4_carry__9_i_12_n_0),
        .O(p0__4_carry__9_i_5_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__9_i_6
       (.I0(p0__4_carry__9_i_2_n_0),
        .I1(p0__6_n_99),
        .I2(p0__10_n_82),
        .I3(p0__0_n_99),
        .I4(p0__14_n_64),
        .I5(p0__4_carry__9_i_9_n_0),
        .O(p0__4_carry__9_i_6_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__9_i_7
       (.I0(p0__4_carry__9_i_3_n_0),
        .I1(p0__0_n_100),
        .I2(p0__10_n_83),
        .I3(p0__6_n_100),
        .I4(p0__14_n_65),
        .I5(p0__4_carry__9_i_10_n_0),
        .O(p0__4_carry__9_i_7_n_0));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    p0__4_carry__9_i_8
       (.I0(p0__4_carry__9_i_4_n_0),
        .I1(p0__14_n_66),
        .I2(p0__4_carry__9_i_11_n_0),
        .I3(p0__6_n_101),
        .I4(p0__10_n_84),
        .I5(p0__0_n_101),
        .O(p0__4_carry__9_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__9_i_9
       (.I0(p0__6_n_98),
        .I1(p0__10_n_81),
        .I2(p0__0_n_98),
        .O(p0__4_carry__9_i_9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry_i_1
       (.I0(p0__14_n_103),
        .I1(p0__8_n_103),
        .O(p0__4_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry_i_2
       (.I0(p0__14_n_104),
        .I1(p0__8_n_104),
        .O(p0__4_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry_i_3
       (.I0(p0__14_n_105),
        .I1(p0__8_n_105),
        .O(p0__4_carry_i_3_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x13 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__5
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[31:15]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__5_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__5_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__5_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__5_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__5_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__5_OVERFLOW_UNCONNECTED),
        .P(NLW_p0__5_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_p0__5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__5_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__4_n_106,p0__4_n_107,p0__4_n_108,p0__4_n_109,p0__4_n_110,p0__4_n_111,p0__4_n_112,p0__4_n_113,p0__4_n_114,p0__4_n_115,p0__4_n_116,p0__4_n_117,p0__4_n_118,p0__4_n_119,p0__4_n_120,p0__4_n_121,p0__4_n_122,p0__4_n_123,p0__4_n_124,p0__4_n_125,p0__4_n_126,p0__4_n_127,p0__4_n_128,p0__4_n_129,p0__4_n_130,p0__4_n_131,p0__4_n_132,p0__4_n_133,p0__4_n_134,p0__4_n_135,p0__4_n_136,p0__4_n_137,p0__4_n_138,p0__4_n_139,p0__4_n_140,p0__4_n_141,p0__4_n_142,p0__4_n_143,p0__4_n_144,p0__4_n_145,p0__4_n_146,p0__4_n_147,p0__4_n_148,p0__4_n_149,p0__4_n_150,p0__4_n_151,p0__4_n_152,p0__4_n_153}),
        .PCOUT({p0__5_n_106,p0__5_n_107,p0__5_n_108,p0__5_n_109,p0__5_n_110,p0__5_n_111,p0__5_n_112,p0__5_n_113,p0__5_n_114,p0__5_n_115,p0__5_n_116,p0__5_n_117,p0__5_n_118,p0__5_n_119,p0__5_n_120,p0__5_n_121,p0__5_n_122,p0__5_n_123,p0__5_n_124,p0__5_n_125,p0__5_n_126,p0__5_n_127,p0__5_n_128,p0__5_n_129,p0__5_n_130,p0__5_n_131,p0__5_n_132,p0__5_n_133,p0__5_n_134,p0__5_n_135,p0__5_n_136,p0__5_n_137,p0__5_n_138,p0__5_n_139,p0__5_n_140,p0__5_n_141,p0__5_n_142,p0__5_n_143,p0__5_n_144,p0__5_n_145,p0__5_n_146,p0__5_n_147,p0__5_n_148,p0__5_n_149,p0__5_n_150,p0__5_n_151,p0__5_n_152,p0__5_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__5_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[48:32]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__6_OVERFLOW_UNCONNECTED),
        .P({p0__6_n_58,p0__6_n_59,p0__6_n_60,p0__6_n_61,p0__6_n_62,p0__6_n_63,p0__6_n_64,p0__6_n_65,p0__6_n_66,p0__6_n_67,p0__6_n_68,p0__6_n_69,p0__6_n_70,p0__6_n_71,p0__6_n_72,p0__6_n_73,p0__6_n_74,p0__6_n_75,p0__6_n_76,p0__6_n_77,p0__6_n_78,p0__6_n_79,p0__6_n_80,p0__6_n_81,p0__6_n_82,p0__6_n_83,p0__6_n_84,p0__6_n_85,p0__6_n_86,p0__6_n_87,p0__6_n_88,p0__6_n_89,p0__6_n_90,p0__6_n_91,p0__6_n_92,p0__6_n_93,p0__6_n_94,p0__6_n_95,p0__6_n_96,p0__6_n_97,p0__6_n_98,p0__6_n_99,p0__6_n_100,p0__6_n_101,p0__6_n_102,p0__6_n_103,p0__6_n_104,p0__6_n_105}),
        .PATTERNBDETECT(NLW_p0__6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__6_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__5_n_106,p0__5_n_107,p0__5_n_108,p0__5_n_109,p0__5_n_110,p0__5_n_111,p0__5_n_112,p0__5_n_113,p0__5_n_114,p0__5_n_115,p0__5_n_116,p0__5_n_117,p0__5_n_118,p0__5_n_119,p0__5_n_120,p0__5_n_121,p0__5_n_122,p0__5_n_123,p0__5_n_124,p0__5_n_125,p0__5_n_126,p0__5_n_127,p0__5_n_128,p0__5_n_129,p0__5_n_130,p0__5_n_131,p0__5_n_132,p0__5_n_133,p0__5_n_134,p0__5_n_135,p0__5_n_136,p0__5_n_137,p0__5_n_138,p0__5_n_139,p0__5_n_140,p0__5_n_141,p0__5_n_142,p0__5_n_143,p0__5_n_144,p0__5_n_145,p0__5_n_146,p0__5_n_147,p0__5_n_148,p0__5_n_149,p0__5_n_150,p0__5_n_151,p0__5_n_152,p0__5_n_153}),
        .PCOUT(NLW_p0__6_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__6_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__7
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[31:15]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__7_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__7_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__7_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__7_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__7_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__7_OVERFLOW_UNCONNECTED),
        .P(NLW_p0__7_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_p0__7_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__7_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__7_n_106,p0__7_n_107,p0__7_n_108,p0__7_n_109,p0__7_n_110,p0__7_n_111,p0__7_n_112,p0__7_n_113,p0__7_n_114,p0__7_n_115,p0__7_n_116,p0__7_n_117,p0__7_n_118,p0__7_n_119,p0__7_n_120,p0__7_n_121,p0__7_n_122,p0__7_n_123,p0__7_n_124,p0__7_n_125,p0__7_n_126,p0__7_n_127,p0__7_n_128,p0__7_n_129,p0__7_n_130,p0__7_n_131,p0__7_n_132,p0__7_n_133,p0__7_n_134,p0__7_n_135,p0__7_n_136,p0__7_n_137,p0__7_n_138,p0__7_n_139,p0__7_n_140,p0__7_n_141,p0__7_n_142,p0__7_n_143,p0__7_n_144,p0__7_n_145,p0__7_n_146,p0__7_n_147,p0__7_n_148,p0__7_n_149,p0__7_n_150,p0__7_n_151,p0__7_n_152,p0__7_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__7_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__8
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[48:32]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__8_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__8_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__8_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__8_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__8_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__8_OVERFLOW_UNCONNECTED),
        .P({p0__8_n_58,p0__8_n_59,p0__8_n_60,p0__8_n_61,p0__8_n_62,p0__8_n_63,p0__8_n_64,p0__8_n_65,p0__8_n_66,p0__8_n_67,p0__8_n_68,p0__8_n_69,p0__8_n_70,p0__8_n_71,p0__8_n_72,p0__8_n_73,p0__8_n_74,p0__8_n_75,p0__8_n_76,p0__8_n_77,p0__8_n_78,p0__8_n_79,p0__8_n_80,p0__8_n_81,p0__8_n_82,p0__8_n_83,p0__8_n_84,p0__8_n_85,p0__8_n_86,p0__8_n_87,p0__8_n_88,p0__8_n_89,p0__8_n_90,p0__8_n_91,p0__8_n_92,p0__8_n_93,p0__8_n_94,p0__8_n_95,p0__8_n_96,p0__8_n_97,p0__8_n_98,p0__8_n_99,p0__8_n_100,p0__8_n_101,p0__8_n_102,p0__8_n_103,p0__8_n_104,p0__8_n_105}),
        .PATTERNBDETECT(NLW_p0__8_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__8_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__7_n_106,p0__7_n_107,p0__7_n_108,p0__7_n_109,p0__7_n_110,p0__7_n_111,p0__7_n_112,p0__7_n_113,p0__7_n_114,p0__7_n_115,p0__7_n_116,p0__7_n_117,p0__7_n_118,p0__7_n_119,p0__7_n_120,p0__7_n_121,p0__7_n_122,p0__7_n_123,p0__7_n_124,p0__7_n_125,p0__7_n_126,p0__7_n_127,p0__7_n_128,p0__7_n_129,p0__7_n_130,p0__7_n_131,p0__7_n_132,p0__7_n_133,p0__7_n_134,p0__7_n_135,p0__7_n_136,p0__7_n_137,p0__7_n_138,p0__7_n_139,p0__7_n_140,p0__7_n_141,p0__7_n_142,p0__7_n_143,p0__7_n_144,p0__7_n_145,p0__7_n_146,p0__7_n_147,p0__7_n_148,p0__7_n_149,p0__7_n_150,p0__7_n_151,p0__7_n_152,p0__7_n_153}),
        .PCOUT({p0__8_n_106,p0__8_n_107,p0__8_n_108,p0__8_n_109,p0__8_n_110,p0__8_n_111,p0__8_n_112,p0__8_n_113,p0__8_n_114,p0__8_n_115,p0__8_n_116,p0__8_n_117,p0__8_n_118,p0__8_n_119,p0__8_n_120,p0__8_n_121,p0__8_n_122,p0__8_n_123,p0__8_n_124,p0__8_n_125,p0__8_n_126,p0__8_n_127,p0__8_n_128,p0__8_n_129,p0__8_n_130,p0__8_n_131,p0__8_n_132,p0__8_n_133,p0__8_n_134,p0__8_n_135,p0__8_n_136,p0__8_n_137,p0__8_n_138,p0__8_n_139,p0__8_n_140,p0__8_n_141,p0__8_n_142,p0__8_n_143,p0__8_n_144,p0__8_n_145,p0__8_n_146,p0__8_n_147,p0__8_n_148,p0__8_n_149,p0__8_n_150,p0__8_n_151,p0__8_n_152,p0__8_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__8_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x13 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__9
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[14:0],1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__9_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__9_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__9_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__9_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__9_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__9_OVERFLOW_UNCONNECTED),
        .P(NLW_p0__9_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_p0__9_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__9_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__8_n_106,p0__8_n_107,p0__8_n_108,p0__8_n_109,p0__8_n_110,p0__8_n_111,p0__8_n_112,p0__8_n_113,p0__8_n_114,p0__8_n_115,p0__8_n_116,p0__8_n_117,p0__8_n_118,p0__8_n_119,p0__8_n_120,p0__8_n_121,p0__8_n_122,p0__8_n_123,p0__8_n_124,p0__8_n_125,p0__8_n_126,p0__8_n_127,p0__8_n_128,p0__8_n_129,p0__8_n_130,p0__8_n_131,p0__8_n_132,p0__8_n_133,p0__8_n_134,p0__8_n_135,p0__8_n_136,p0__8_n_137,p0__8_n_138,p0__8_n_139,p0__8_n_140,p0__8_n_141,p0__8_n_142,p0__8_n_143,p0__8_n_144,p0__8_n_145,p0__8_n_146,p0__8_n_147,p0__8_n_148,p0__8_n_149,p0__8_n_150,p0__8_n_151,p0__8_n_152,p0__8_n_153}),
        .PCOUT({p0__9_n_106,p0__9_n_107,p0__9_n_108,p0__9_n_109,p0__9_n_110,p0__9_n_111,p0__9_n_112,p0__9_n_113,p0__9_n_114,p0__9_n_115,p0__9_n_116,p0__9_n_117,p0__9_n_118,p0__9_n_119,p0__9_n_120,p0__9_n_121,p0__9_n_122,p0__9_n_123,p0__9_n_124,p0__9_n_125,p0__9_n_126,p0__9_n_127,p0__9_n_128,p0__9_n_129,p0__9_n_130,p0__9_n_131,p0__9_n_132,p0__9_n_133,p0__9_n_134,p0__9_n_135,p0__9_n_136,p0__9_n_137,p0__9_n_138,p0__9_n_139,p0__9_n_140,p0__9_n_141,p0__9_n_142,p0__9_n_143,p0__9_n_144,p0__9_n_145,p0__9_n_146,p0__9_n_147,p0__9_n_148,p0__9_n_149,p0__9_n_150,p0__9_n_151,p0__9_n_152,p0__9_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__9_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "gen_mult" *) 
module system_SPGD_SYS_0_gen_mult_10
   (p0_0,
    int_s);
  output [46:0]p0_0;
  input [13:0]int_s;

  wire \int_data_reg[0]_i_10_n_0 ;
  wire \int_data_reg[0]_i_11_n_0 ;
  wire \int_data_reg[0]_i_13_n_0 ;
  wire \int_data_reg[0]_i_14_n_0 ;
  wire \int_data_reg[0]_i_15_n_0 ;
  wire \int_data_reg[0]_i_16_n_0 ;
  wire \int_data_reg[0]_i_17_n_0 ;
  wire \int_data_reg[0]_i_18_n_0 ;
  wire \int_data_reg[0]_i_19_n_0 ;
  wire \int_data_reg[0]_i_3_n_0 ;
  wire \int_data_reg[0]_i_4_n_0 ;
  wire \int_data_reg[0]_i_5_n_0 ;
  wire \int_data_reg[0]_i_6_n_0 ;
  wire \int_data_reg[0]_i_8_n_0 ;
  wire \int_data_reg[0]_i_9_n_0 ;
  wire \int_data_reg[12]_i_2_n_0 ;
  wire \int_data_reg[12]_i_3_n_0 ;
  wire \int_data_reg[12]_i_4_n_0 ;
  wire \int_data_reg[12]_i_5_n_0 ;
  wire \int_data_reg[12]_i_6_n_0 ;
  wire \int_data_reg[12]_i_7_n_0 ;
  wire \int_data_reg[12]_i_8_n_0 ;
  wire \int_data_reg[12]_i_9_n_0 ;
  wire \int_data_reg[16]_i_2_n_0 ;
  wire \int_data_reg[16]_i_3_n_0 ;
  wire \int_data_reg[16]_i_4_n_0 ;
  wire \int_data_reg[16]_i_5_n_0 ;
  wire \int_data_reg[16]_i_6_n_0 ;
  wire \int_data_reg[16]_i_7_n_0 ;
  wire \int_data_reg[16]_i_8_n_0 ;
  wire \int_data_reg[16]_i_9_n_0 ;
  wire \int_data_reg[20]_i_2__1_n_0 ;
  wire \int_data_reg[20]_i_3__1_n_0 ;
  wire \int_data_reg[20]_i_4__1_n_0 ;
  wire \int_data_reg[20]_i_5_n_0 ;
  wire \int_data_reg[20]_i_6_n_0 ;
  wire \int_data_reg[20]_i_7_n_0 ;
  wire \int_data_reg[20]_i_8_n_0 ;
  wire \int_data_reg[20]_i_9_n_0 ;
  wire \int_data_reg[24]_i_2__1_n_0 ;
  wire \int_data_reg[24]_i_3__1_n_0 ;
  wire \int_data_reg[24]_i_4__1_n_0 ;
  wire \int_data_reg[24]_i_5__1_n_0 ;
  wire \int_data_reg[24]_i_6_n_0 ;
  wire \int_data_reg[24]_i_7_n_0 ;
  wire \int_data_reg[24]_i_8_n_0 ;
  wire \int_data_reg[24]_i_9_n_0 ;
  wire \int_data_reg[28]_i_2__1_n_0 ;
  wire \int_data_reg[28]_i_3__1_n_0 ;
  wire \int_data_reg[28]_i_4__1_n_0 ;
  wire \int_data_reg[28]_i_5__1_n_0 ;
  wire \int_data_reg[28]_i_6_n_0 ;
  wire \int_data_reg[28]_i_7_n_0 ;
  wire \int_data_reg[28]_i_8_n_0 ;
  wire \int_data_reg[28]_i_9_n_0 ;
  wire \int_data_reg[32]_i_2__1_n_0 ;
  wire \int_data_reg[32]_i_3__1_n_0 ;
  wire \int_data_reg[32]_i_4__1_n_0 ;
  wire \int_data_reg[32]_i_5__1_n_0 ;
  wire \int_data_reg[32]_i_6_n_0 ;
  wire \int_data_reg[32]_i_7_n_0 ;
  wire \int_data_reg[32]_i_8_n_0 ;
  wire \int_data_reg[32]_i_9_n_0 ;
  wire \int_data_reg[36]_i_2__1_n_0 ;
  wire \int_data_reg[36]_i_3__1_n_0 ;
  wire \int_data_reg[36]_i_4__1_n_0 ;
  wire \int_data_reg[36]_i_5__1_n_0 ;
  wire \int_data_reg[36]_i_6_n_0 ;
  wire \int_data_reg[36]_i_7_n_0 ;
  wire \int_data_reg[36]_i_8_n_0 ;
  wire \int_data_reg[36]_i_9_n_0 ;
  wire \int_data_reg[40]_i_2__1_n_0 ;
  wire \int_data_reg[40]_i_3__1_n_0 ;
  wire \int_data_reg[40]_i_4__1_n_0 ;
  wire \int_data_reg[40]_i_5__1_n_0 ;
  wire \int_data_reg[40]_i_6_n_0 ;
  wire \int_data_reg[40]_i_7_n_0 ;
  wire \int_data_reg[40]_i_8_n_0 ;
  wire \int_data_reg[40]_i_9_n_0 ;
  wire \int_data_reg[44]_i_2__1_n_0 ;
  wire \int_data_reg[44]_i_3__1_n_0 ;
  wire \int_data_reg[44]_i_4__1_n_0 ;
  wire \int_data_reg[44]_i_5__1_n_0 ;
  wire \int_data_reg[44]_i_6_n_0 ;
  wire \int_data_reg[44]_i_7_n_0 ;
  wire \int_data_reg[44]_i_8_n_0 ;
  wire \int_data_reg[44]_i_9_n_0 ;
  wire \int_data_reg[4]_i_2_n_0 ;
  wire \int_data_reg[4]_i_3_n_0 ;
  wire \int_data_reg[4]_i_4_n_0 ;
  wire \int_data_reg[4]_i_5_n_0 ;
  wire \int_data_reg[4]_i_6_n_0 ;
  wire \int_data_reg[63]_i_2_n_0 ;
  wire \int_data_reg[63]_i_3_n_0 ;
  wire \int_data_reg[63]_i_4_n_0 ;
  wire \int_data_reg[8]_i_2_n_0 ;
  wire \int_data_reg[8]_i_3_n_0 ;
  wire \int_data_reg[8]_i_4_n_0 ;
  wire \int_data_reg[8]_i_5_n_0 ;
  wire \int_data_reg[8]_i_6_n_0 ;
  wire \int_data_reg[8]_i_7_n_0 ;
  wire \int_data_reg[8]_i_8_n_0 ;
  wire \int_data_reg[8]_i_9_n_0 ;
  wire \int_data_reg_reg[0]_i_12_n_0 ;
  wire \int_data_reg_reg[0]_i_12_n_1 ;
  wire \int_data_reg_reg[0]_i_12_n_2 ;
  wire \int_data_reg_reg[0]_i_12_n_3 ;
  wire \int_data_reg_reg[0]_i_1_n_0 ;
  wire \int_data_reg_reg[0]_i_1_n_1 ;
  wire \int_data_reg_reg[0]_i_1_n_2 ;
  wire \int_data_reg_reg[0]_i_1_n_3 ;
  wire \int_data_reg_reg[0]_i_2_n_0 ;
  wire \int_data_reg_reg[0]_i_2_n_1 ;
  wire \int_data_reg_reg[0]_i_2_n_2 ;
  wire \int_data_reg_reg[0]_i_2_n_3 ;
  wire \int_data_reg_reg[0]_i_7_n_0 ;
  wire \int_data_reg_reg[0]_i_7_n_1 ;
  wire \int_data_reg_reg[0]_i_7_n_2 ;
  wire \int_data_reg_reg[0]_i_7_n_3 ;
  wire \int_data_reg_reg[12]_i_1_n_0 ;
  wire \int_data_reg_reg[12]_i_1_n_1 ;
  wire \int_data_reg_reg[12]_i_1_n_2 ;
  wire \int_data_reg_reg[12]_i_1_n_3 ;
  wire \int_data_reg_reg[16]_i_1_n_0 ;
  wire \int_data_reg_reg[16]_i_1_n_1 ;
  wire \int_data_reg_reg[16]_i_1_n_2 ;
  wire \int_data_reg_reg[16]_i_1_n_3 ;
  wire \int_data_reg_reg[20]_i_1_n_0 ;
  wire \int_data_reg_reg[20]_i_1_n_1 ;
  wire \int_data_reg_reg[20]_i_1_n_2 ;
  wire \int_data_reg_reg[20]_i_1_n_3 ;
  wire \int_data_reg_reg[24]_i_1_n_0 ;
  wire \int_data_reg_reg[24]_i_1_n_1 ;
  wire \int_data_reg_reg[24]_i_1_n_2 ;
  wire \int_data_reg_reg[24]_i_1_n_3 ;
  wire \int_data_reg_reg[28]_i_1_n_0 ;
  wire \int_data_reg_reg[28]_i_1_n_1 ;
  wire \int_data_reg_reg[28]_i_1_n_2 ;
  wire \int_data_reg_reg[28]_i_1_n_3 ;
  wire \int_data_reg_reg[32]_i_1_n_0 ;
  wire \int_data_reg_reg[32]_i_1_n_1 ;
  wire \int_data_reg_reg[32]_i_1_n_2 ;
  wire \int_data_reg_reg[32]_i_1_n_3 ;
  wire \int_data_reg_reg[36]_i_1_n_0 ;
  wire \int_data_reg_reg[36]_i_1_n_1 ;
  wire \int_data_reg_reg[36]_i_1_n_2 ;
  wire \int_data_reg_reg[36]_i_1_n_3 ;
  wire \int_data_reg_reg[40]_i_1_n_0 ;
  wire \int_data_reg_reg[40]_i_1_n_1 ;
  wire \int_data_reg_reg[40]_i_1_n_2 ;
  wire \int_data_reg_reg[40]_i_1_n_3 ;
  wire \int_data_reg_reg[44]_i_1_n_0 ;
  wire \int_data_reg_reg[44]_i_1_n_1 ;
  wire \int_data_reg_reg[44]_i_1_n_2 ;
  wire \int_data_reg_reg[44]_i_1_n_3 ;
  wire \int_data_reg_reg[4]_i_1_n_0 ;
  wire \int_data_reg_reg[4]_i_1_n_1 ;
  wire \int_data_reg_reg[4]_i_1_n_2 ;
  wire \int_data_reg_reg[4]_i_1_n_3 ;
  wire \int_data_reg_reg[63]_i_1_n_3 ;
  wire \int_data_reg_reg[8]_i_1_n_0 ;
  wire \int_data_reg_reg[8]_i_1_n_1 ;
  wire \int_data_reg_reg[8]_i_1_n_2 ;
  wire \int_data_reg_reg[8]_i_1_n_3 ;
  wire [13:0]int_s;
  wire [46:0]p0_0;
  wire p0__0_n_100;
  wire p0__0_n_101;
  wire p0__0_n_102;
  wire p0__0_n_103;
  wire p0__0_n_104;
  wire p0__0_n_105;
  wire p0__0_n_58;
  wire p0__0_n_59;
  wire p0__0_n_60;
  wire p0__0_n_61;
  wire p0__0_n_62;
  wire p0__0_n_63;
  wire p0__0_n_64;
  wire p0__0_n_65;
  wire p0__0_n_66;
  wire p0__0_n_67;
  wire p0__0_n_68;
  wire p0__0_n_69;
  wire p0__0_n_70;
  wire p0__0_n_71;
  wire p0__0_n_72;
  wire p0__0_n_73;
  wire p0__0_n_74;
  wire p0__0_n_75;
  wire p0__0_n_76;
  wire p0__0_n_77;
  wire p0__0_n_78;
  wire p0__0_n_79;
  wire p0__0_n_80;
  wire p0__0_n_81;
  wire p0__0_n_82;
  wire p0__0_n_83;
  wire p0__0_n_84;
  wire p0__0_n_85;
  wire p0__0_n_86;
  wire p0__0_n_87;
  wire p0__0_n_88;
  wire p0__0_n_89;
  wire p0__0_n_90;
  wire p0__0_n_91;
  wire p0__0_n_92;
  wire p0__0_n_93;
  wire p0__0_n_94;
  wire p0__0_n_95;
  wire p0__0_n_96;
  wire p0__0_n_97;
  wire p0__0_n_98;
  wire p0__0_n_99;
  wire p0__1_n_100;
  wire p0__1_n_101;
  wire p0__1_n_102;
  wire p0__1_n_103;
  wire p0__1_n_104;
  wire p0__1_n_105;
  wire p0__1_n_106;
  wire p0__1_n_107;
  wire p0__1_n_108;
  wire p0__1_n_109;
  wire p0__1_n_110;
  wire p0__1_n_111;
  wire p0__1_n_112;
  wire p0__1_n_113;
  wire p0__1_n_114;
  wire p0__1_n_115;
  wire p0__1_n_116;
  wire p0__1_n_117;
  wire p0__1_n_118;
  wire p0__1_n_119;
  wire p0__1_n_120;
  wire p0__1_n_121;
  wire p0__1_n_122;
  wire p0__1_n_123;
  wire p0__1_n_124;
  wire p0__1_n_125;
  wire p0__1_n_126;
  wire p0__1_n_127;
  wire p0__1_n_128;
  wire p0__1_n_129;
  wire p0__1_n_130;
  wire p0__1_n_131;
  wire p0__1_n_132;
  wire p0__1_n_133;
  wire p0__1_n_134;
  wire p0__1_n_135;
  wire p0__1_n_136;
  wire p0__1_n_137;
  wire p0__1_n_138;
  wire p0__1_n_139;
  wire p0__1_n_140;
  wire p0__1_n_141;
  wire p0__1_n_142;
  wire p0__1_n_143;
  wire p0__1_n_144;
  wire p0__1_n_145;
  wire p0__1_n_146;
  wire p0__1_n_147;
  wire p0__1_n_148;
  wire p0__1_n_149;
  wire p0__1_n_150;
  wire p0__1_n_151;
  wire p0__1_n_152;
  wire p0__1_n_153;
  wire p0__1_n_58;
  wire p0__1_n_59;
  wire p0__1_n_60;
  wire p0__1_n_61;
  wire p0__1_n_62;
  wire p0__1_n_63;
  wire p0__1_n_64;
  wire p0__1_n_65;
  wire p0__1_n_66;
  wire p0__1_n_67;
  wire p0__1_n_68;
  wire p0__1_n_69;
  wire p0__1_n_70;
  wire p0__1_n_71;
  wire p0__1_n_72;
  wire p0__1_n_73;
  wire p0__1_n_74;
  wire p0__1_n_75;
  wire p0__1_n_76;
  wire p0__1_n_77;
  wire p0__1_n_78;
  wire p0__1_n_79;
  wire p0__1_n_80;
  wire p0__1_n_81;
  wire p0__1_n_82;
  wire p0__1_n_83;
  wire p0__1_n_84;
  wire p0__1_n_85;
  wire p0__1_n_86;
  wire p0__1_n_87;
  wire p0__1_n_88;
  wire p0__1_n_89;
  wire p0__1_n_90;
  wire p0__1_n_91;
  wire p0__1_n_92;
  wire p0__1_n_93;
  wire p0__1_n_94;
  wire p0__1_n_95;
  wire p0__1_n_96;
  wire p0__1_n_97;
  wire p0__1_n_98;
  wire p0__1_n_99;
  wire p0__2_n_100;
  wire p0__2_n_101;
  wire p0__2_n_102;
  wire p0__2_n_103;
  wire p0__2_n_104;
  wire p0__2_n_105;
  wire p0__2_n_106;
  wire p0__2_n_107;
  wire p0__2_n_108;
  wire p0__2_n_109;
  wire p0__2_n_110;
  wire p0__2_n_111;
  wire p0__2_n_112;
  wire p0__2_n_113;
  wire p0__2_n_114;
  wire p0__2_n_115;
  wire p0__2_n_116;
  wire p0__2_n_117;
  wire p0__2_n_118;
  wire p0__2_n_119;
  wire p0__2_n_120;
  wire p0__2_n_121;
  wire p0__2_n_122;
  wire p0__2_n_123;
  wire p0__2_n_124;
  wire p0__2_n_125;
  wire p0__2_n_126;
  wire p0__2_n_127;
  wire p0__2_n_128;
  wire p0__2_n_129;
  wire p0__2_n_130;
  wire p0__2_n_131;
  wire p0__2_n_132;
  wire p0__2_n_133;
  wire p0__2_n_134;
  wire p0__2_n_135;
  wire p0__2_n_136;
  wire p0__2_n_137;
  wire p0__2_n_138;
  wire p0__2_n_139;
  wire p0__2_n_140;
  wire p0__2_n_141;
  wire p0__2_n_142;
  wire p0__2_n_143;
  wire p0__2_n_144;
  wire p0__2_n_145;
  wire p0__2_n_146;
  wire p0__2_n_147;
  wire p0__2_n_148;
  wire p0__2_n_149;
  wire p0__2_n_150;
  wire p0__2_n_151;
  wire p0__2_n_152;
  wire p0__2_n_153;
  wire p0__2_n_24;
  wire p0__2_n_25;
  wire p0__2_n_26;
  wire p0__2_n_27;
  wire p0__2_n_28;
  wire p0__2_n_29;
  wire p0__2_n_30;
  wire p0__2_n_31;
  wire p0__2_n_32;
  wire p0__2_n_33;
  wire p0__2_n_34;
  wire p0__2_n_35;
  wire p0__2_n_36;
  wire p0__2_n_37;
  wire p0__2_n_38;
  wire p0__2_n_39;
  wire p0__2_n_40;
  wire p0__2_n_41;
  wire p0__2_n_42;
  wire p0__2_n_43;
  wire p0__2_n_44;
  wire p0__2_n_45;
  wire p0__2_n_46;
  wire p0__2_n_47;
  wire p0__2_n_48;
  wire p0__2_n_49;
  wire p0__2_n_50;
  wire p0__2_n_51;
  wire p0__2_n_52;
  wire p0__2_n_53;
  wire p0__2_n_58;
  wire p0__2_n_59;
  wire p0__2_n_60;
  wire p0__2_n_61;
  wire p0__2_n_62;
  wire p0__2_n_63;
  wire p0__2_n_64;
  wire p0__2_n_65;
  wire p0__2_n_66;
  wire p0__2_n_67;
  wire p0__2_n_68;
  wire p0__2_n_69;
  wire p0__2_n_70;
  wire p0__2_n_71;
  wire p0__2_n_72;
  wire p0__2_n_73;
  wire p0__2_n_74;
  wire p0__2_n_75;
  wire p0__2_n_76;
  wire p0__2_n_77;
  wire p0__2_n_78;
  wire p0__2_n_79;
  wire p0__2_n_80;
  wire p0__2_n_81;
  wire p0__2_n_82;
  wire p0__2_n_83;
  wire p0__2_n_84;
  wire p0__2_n_85;
  wire p0__2_n_86;
  wire p0__2_n_87;
  wire p0__2_n_88;
  wire p0__2_n_89;
  wire p0__2_n_90;
  wire p0__2_n_91;
  wire p0__2_n_92;
  wire p0__2_n_93;
  wire p0__2_n_94;
  wire p0__2_n_95;
  wire p0__2_n_96;
  wire p0__2_n_97;
  wire p0__2_n_98;
  wire p0__2_n_99;
  wire p0__3_n_100;
  wire p0__3_n_101;
  wire p0__3_n_102;
  wire p0__3_n_103;
  wire p0__3_n_104;
  wire p0__3_n_105;
  wire p0__3_n_58;
  wire p0__3_n_59;
  wire p0__3_n_60;
  wire p0__3_n_61;
  wire p0__3_n_62;
  wire p0__3_n_63;
  wire p0__3_n_64;
  wire p0__3_n_65;
  wire p0__3_n_66;
  wire p0__3_n_67;
  wire p0__3_n_68;
  wire p0__3_n_69;
  wire p0__3_n_70;
  wire p0__3_n_71;
  wire p0__3_n_72;
  wire p0__3_n_73;
  wire p0__3_n_74;
  wire p0__3_n_75;
  wire p0__3_n_76;
  wire p0__3_n_77;
  wire p0__3_n_78;
  wire p0__3_n_79;
  wire p0__3_n_80;
  wire p0__3_n_81;
  wire p0__3_n_82;
  wire p0__3_n_83;
  wire p0__3_n_84;
  wire p0__3_n_85;
  wire p0__3_n_86;
  wire p0__3_n_87;
  wire p0__3_n_88;
  wire p0__3_n_89;
  wire p0__3_n_90;
  wire p0__3_n_91;
  wire p0__3_n_92;
  wire p0__3_n_93;
  wire p0__3_n_94;
  wire p0__3_n_95;
  wire p0__3_n_96;
  wire p0__3_n_97;
  wire p0__3_n_98;
  wire p0__3_n_99;
  wire p0__4_n_100;
  wire p0__4_n_101;
  wire p0__4_n_102;
  wire p0__4_n_103;
  wire p0__4_n_104;
  wire p0__4_n_105;
  wire p0__4_n_106;
  wire p0__4_n_107;
  wire p0__4_n_108;
  wire p0__4_n_109;
  wire p0__4_n_110;
  wire p0__4_n_111;
  wire p0__4_n_112;
  wire p0__4_n_113;
  wire p0__4_n_114;
  wire p0__4_n_115;
  wire p0__4_n_116;
  wire p0__4_n_117;
  wire p0__4_n_118;
  wire p0__4_n_119;
  wire p0__4_n_120;
  wire p0__4_n_121;
  wire p0__4_n_122;
  wire p0__4_n_123;
  wire p0__4_n_124;
  wire p0__4_n_125;
  wire p0__4_n_126;
  wire p0__4_n_127;
  wire p0__4_n_128;
  wire p0__4_n_129;
  wire p0__4_n_130;
  wire p0__4_n_131;
  wire p0__4_n_132;
  wire p0__4_n_133;
  wire p0__4_n_134;
  wire p0__4_n_135;
  wire p0__4_n_136;
  wire p0__4_n_137;
  wire p0__4_n_138;
  wire p0__4_n_139;
  wire p0__4_n_140;
  wire p0__4_n_141;
  wire p0__4_n_142;
  wire p0__4_n_143;
  wire p0__4_n_144;
  wire p0__4_n_145;
  wire p0__4_n_146;
  wire p0__4_n_147;
  wire p0__4_n_148;
  wire p0__4_n_149;
  wire p0__4_n_150;
  wire p0__4_n_151;
  wire p0__4_n_152;
  wire p0__4_n_153;
  wire p0__4_n_24;
  wire p0__4_n_25;
  wire p0__4_n_26;
  wire p0__4_n_27;
  wire p0__4_n_28;
  wire p0__4_n_29;
  wire p0__4_n_30;
  wire p0__4_n_31;
  wire p0__4_n_32;
  wire p0__4_n_33;
  wire p0__4_n_34;
  wire p0__4_n_35;
  wire p0__4_n_36;
  wire p0__4_n_37;
  wire p0__4_n_38;
  wire p0__4_n_39;
  wire p0__4_n_40;
  wire p0__4_n_41;
  wire p0__4_n_42;
  wire p0__4_n_43;
  wire p0__4_n_44;
  wire p0__4_n_45;
  wire p0__4_n_46;
  wire p0__4_n_47;
  wire p0__4_n_48;
  wire p0__4_n_49;
  wire p0__4_n_50;
  wire p0__4_n_51;
  wire p0__4_n_52;
  wire p0__4_n_53;
  wire p0__4_n_58;
  wire p0__4_n_59;
  wire p0__4_n_60;
  wire p0__4_n_61;
  wire p0__4_n_62;
  wire p0__4_n_63;
  wire p0__4_n_64;
  wire p0__4_n_65;
  wire p0__4_n_66;
  wire p0__4_n_67;
  wire p0__4_n_68;
  wire p0__4_n_69;
  wire p0__4_n_70;
  wire p0__4_n_71;
  wire p0__4_n_72;
  wire p0__4_n_73;
  wire p0__4_n_74;
  wire p0__4_n_75;
  wire p0__4_n_76;
  wire p0__4_n_77;
  wire p0__4_n_78;
  wire p0__4_n_79;
  wire p0__4_n_80;
  wire p0__4_n_81;
  wire p0__4_n_82;
  wire p0__4_n_83;
  wire p0__4_n_84;
  wire p0__4_n_85;
  wire p0__4_n_86;
  wire p0__4_n_87;
  wire p0__4_n_88;
  wire p0__4_n_89;
  wire p0__4_n_90;
  wire p0__4_n_91;
  wire p0__4_n_92;
  wire p0__4_n_93;
  wire p0__4_n_94;
  wire p0__4_n_95;
  wire p0__4_n_96;
  wire p0__4_n_97;
  wire p0__4_n_98;
  wire p0__4_n_99;
  wire p0__5_n_100;
  wire p0__5_n_101;
  wire p0__5_n_102;
  wire p0__5_n_103;
  wire p0__5_n_104;
  wire p0__5_n_105;
  wire p0__5_n_106;
  wire p0__5_n_107;
  wire p0__5_n_108;
  wire p0__5_n_109;
  wire p0__5_n_110;
  wire p0__5_n_111;
  wire p0__5_n_112;
  wire p0__5_n_113;
  wire p0__5_n_114;
  wire p0__5_n_115;
  wire p0__5_n_116;
  wire p0__5_n_117;
  wire p0__5_n_118;
  wire p0__5_n_119;
  wire p0__5_n_120;
  wire p0__5_n_121;
  wire p0__5_n_122;
  wire p0__5_n_123;
  wire p0__5_n_124;
  wire p0__5_n_125;
  wire p0__5_n_126;
  wire p0__5_n_127;
  wire p0__5_n_128;
  wire p0__5_n_129;
  wire p0__5_n_130;
  wire p0__5_n_131;
  wire p0__5_n_132;
  wire p0__5_n_133;
  wire p0__5_n_134;
  wire p0__5_n_135;
  wire p0__5_n_136;
  wire p0__5_n_137;
  wire p0__5_n_138;
  wire p0__5_n_139;
  wire p0__5_n_140;
  wire p0__5_n_141;
  wire p0__5_n_142;
  wire p0__5_n_143;
  wire p0__5_n_144;
  wire p0__5_n_145;
  wire p0__5_n_146;
  wire p0__5_n_147;
  wire p0__5_n_148;
  wire p0__5_n_149;
  wire p0__5_n_150;
  wire p0__5_n_151;
  wire p0__5_n_152;
  wire p0__5_n_153;
  wire p0__5_n_24;
  wire p0__5_n_25;
  wire p0__5_n_26;
  wire p0__5_n_27;
  wire p0__5_n_28;
  wire p0__5_n_29;
  wire p0__5_n_30;
  wire p0__5_n_31;
  wire p0__5_n_32;
  wire p0__5_n_33;
  wire p0__5_n_34;
  wire p0__5_n_35;
  wire p0__5_n_36;
  wire p0__5_n_37;
  wire p0__5_n_38;
  wire p0__5_n_39;
  wire p0__5_n_40;
  wire p0__5_n_41;
  wire p0__5_n_42;
  wire p0__5_n_43;
  wire p0__5_n_44;
  wire p0__5_n_45;
  wire p0__5_n_46;
  wire p0__5_n_47;
  wire p0__5_n_48;
  wire p0__5_n_49;
  wire p0__5_n_50;
  wire p0__5_n_51;
  wire p0__5_n_52;
  wire p0__5_n_53;
  wire p0__5_n_58;
  wire p0__5_n_59;
  wire p0__5_n_60;
  wire p0__5_n_61;
  wire p0__5_n_62;
  wire p0__5_n_63;
  wire p0__5_n_64;
  wire p0__5_n_65;
  wire p0__5_n_66;
  wire p0__5_n_67;
  wire p0__5_n_68;
  wire p0__5_n_69;
  wire p0__5_n_70;
  wire p0__5_n_71;
  wire p0__5_n_72;
  wire p0__5_n_73;
  wire p0__5_n_74;
  wire p0__5_n_75;
  wire p0__5_n_76;
  wire p0__5_n_77;
  wire p0__5_n_78;
  wire p0__5_n_79;
  wire p0__5_n_80;
  wire p0__5_n_81;
  wire p0__5_n_82;
  wire p0__5_n_83;
  wire p0__5_n_84;
  wire p0__5_n_85;
  wire p0__5_n_86;
  wire p0__5_n_87;
  wire p0__5_n_88;
  wire p0__5_n_89;
  wire p0__5_n_90;
  wire p0__5_n_91;
  wire p0__5_n_92;
  wire p0__5_n_93;
  wire p0__5_n_94;
  wire p0__5_n_95;
  wire p0__5_n_96;
  wire p0__5_n_97;
  wire p0__5_n_98;
  wire p0__5_n_99;
  wire p0__6_n_100;
  wire p0__6_n_101;
  wire p0__6_n_102;
  wire p0__6_n_103;
  wire p0__6_n_104;
  wire p0__6_n_105;
  wire p0__6_n_58;
  wire p0__6_n_59;
  wire p0__6_n_60;
  wire p0__6_n_61;
  wire p0__6_n_62;
  wire p0__6_n_63;
  wire p0__6_n_64;
  wire p0__6_n_65;
  wire p0__6_n_66;
  wire p0__6_n_67;
  wire p0__6_n_68;
  wire p0__6_n_69;
  wire p0__6_n_70;
  wire p0__6_n_71;
  wire p0__6_n_72;
  wire p0__6_n_73;
  wire p0__6_n_74;
  wire p0__6_n_75;
  wire p0__6_n_76;
  wire p0__6_n_77;
  wire p0__6_n_78;
  wire p0__6_n_79;
  wire p0__6_n_80;
  wire p0__6_n_81;
  wire p0__6_n_82;
  wire p0__6_n_83;
  wire p0__6_n_84;
  wire p0__6_n_85;
  wire p0__6_n_86;
  wire p0__6_n_87;
  wire p0__6_n_88;
  wire p0__6_n_89;
  wire p0__6_n_90;
  wire p0__6_n_91;
  wire p0__6_n_92;
  wire p0__6_n_93;
  wire p0__6_n_94;
  wire p0__6_n_95;
  wire p0__6_n_96;
  wire p0__6_n_97;
  wire p0__6_n_98;
  wire p0__6_n_99;
  wire p0_n_100;
  wire p0_n_101;
  wire p0_n_102;
  wire p0_n_103;
  wire p0_n_104;
  wire p0_n_105;
  wire p0_n_106;
  wire p0_n_107;
  wire p0_n_108;
  wire p0_n_109;
  wire p0_n_110;
  wire p0_n_111;
  wire p0_n_112;
  wire p0_n_113;
  wire p0_n_114;
  wire p0_n_115;
  wire p0_n_116;
  wire p0_n_117;
  wire p0_n_118;
  wire p0_n_119;
  wire p0_n_120;
  wire p0_n_121;
  wire p0_n_122;
  wire p0_n_123;
  wire p0_n_124;
  wire p0_n_125;
  wire p0_n_126;
  wire p0_n_127;
  wire p0_n_128;
  wire p0_n_129;
  wire p0_n_130;
  wire p0_n_131;
  wire p0_n_132;
  wire p0_n_133;
  wire p0_n_134;
  wire p0_n_135;
  wire p0_n_136;
  wire p0_n_137;
  wire p0_n_138;
  wire p0_n_139;
  wire p0_n_140;
  wire p0_n_141;
  wire p0_n_142;
  wire p0_n_143;
  wire p0_n_144;
  wire p0_n_145;
  wire p0_n_146;
  wire p0_n_147;
  wire p0_n_148;
  wire p0_n_149;
  wire p0_n_150;
  wire p0_n_151;
  wire p0_n_152;
  wire p0_n_153;
  wire p0_n_58;
  wire p0_n_59;
  wire p0_n_60;
  wire p0_n_61;
  wire p0_n_62;
  wire p0_n_63;
  wire p0_n_64;
  wire p0_n_65;
  wire p0_n_66;
  wire p0_n_67;
  wire p0_n_68;
  wire p0_n_69;
  wire p0_n_70;
  wire p0_n_71;
  wire p0_n_72;
  wire p0_n_73;
  wire p0_n_74;
  wire p0_n_75;
  wire p0_n_76;
  wire p0_n_77;
  wire p0_n_78;
  wire p0_n_79;
  wire p0_n_80;
  wire p0_n_81;
  wire p0_n_82;
  wire p0_n_83;
  wire p0_n_84;
  wire p0_n_85;
  wire p0_n_86;
  wire p0_n_87;
  wire p0_n_88;
  wire p0_n_89;
  wire p0_n_90;
  wire p0_n_91;
  wire p0_n_92;
  wire p0_n_93;
  wire p0_n_94;
  wire p0_n_95;
  wire p0_n_96;
  wire p0_n_97;
  wire p0_n_98;
  wire p0_n_99;
  wire [2:0]\NLW_int_data_reg_reg[0]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_int_data_reg_reg[0]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_int_data_reg_reg[0]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_int_data_reg_reg[0]_i_7_O_UNCONNECTED ;
  wire [3:1]\NLW_int_data_reg_reg[63]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_int_data_reg_reg[63]_i_1_O_UNCONNECTED ;
  wire NLW_p0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0_OVERFLOW_UNCONNECTED;
  wire NLW_p0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0_CARRYOUT_UNCONNECTED;
  wire NLW_p0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__0_OVERFLOW_UNCONNECTED;
  wire NLW_p0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__0_PCOUT_UNCONNECTED;
  wire NLW_p0__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__1_OVERFLOW_UNCONNECTED;
  wire NLW_p0__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__1_CARRYOUT_UNCONNECTED;
  wire NLW_p0__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__2_OVERFLOW_UNCONNECTED;
  wire NLW_p0__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__2_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_p0__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__2_CARRYOUT_UNCONNECTED;
  wire NLW_p0__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__3_OVERFLOW_UNCONNECTED;
  wire NLW_p0__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__3_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__3_PCOUT_UNCONNECTED;
  wire NLW_p0__4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__4_OVERFLOW_UNCONNECTED;
  wire NLW_p0__4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__4_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__4_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_p0__4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__4_CARRYOUT_UNCONNECTED;
  wire NLW_p0__5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__5_OVERFLOW_UNCONNECTED;
  wire NLW_p0__5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__5_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__5_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_p0__5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__5_CARRYOUT_UNCONNECTED;
  wire NLW_p0__6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__6_OVERFLOW_UNCONNECTED;
  wire NLW_p0__6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__6_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__6_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__6_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_10 
       (.I0(p0__6_n_80),
        .I1(p0__2_n_97),
        .O(\int_data_reg[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_11 
       (.I0(p0__6_n_81),
        .I1(p0__2_n_98),
        .O(\int_data_reg[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_13 
       (.I0(p0__6_n_82),
        .I1(p0__2_n_99),
        .O(\int_data_reg[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_14 
       (.I0(p0__6_n_83),
        .I1(p0__2_n_100),
        .O(\int_data_reg[0]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_15 
       (.I0(p0__6_n_84),
        .I1(p0__2_n_101),
        .O(\int_data_reg[0]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_16 
       (.I0(p0__6_n_85),
        .I1(p0__2_n_102),
        .O(\int_data_reg[0]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_17 
       (.I0(p0__6_n_86),
        .I1(p0__2_n_103),
        .O(\int_data_reg[0]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_18 
       (.I0(p0__6_n_87),
        .I1(p0__2_n_104),
        .O(\int_data_reg[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_19 
       (.I0(p0__6_n_88),
        .I1(p0__2_n_105),
        .O(\int_data_reg[0]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_3 
       (.I0(p0__6_n_74),
        .I1(p0__2_n_91),
        .O(\int_data_reg[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_4 
       (.I0(p0__6_n_75),
        .I1(p0__2_n_92),
        .O(\int_data_reg[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_5 
       (.I0(p0__6_n_76),
        .I1(p0__2_n_93),
        .O(\int_data_reg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_6 
       (.I0(p0__6_n_77),
        .I1(p0__2_n_94),
        .O(\int_data_reg[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_8 
       (.I0(p0__6_n_78),
        .I1(p0__2_n_95),
        .O(\int_data_reg[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_9 
       (.I0(p0__6_n_79),
        .I1(p0__2_n_96),
        .O(\int_data_reg[0]_i_9_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_data_reg[12]_i_2 
       (.I0(p0_n_97),
        .I1(p0__3_n_97),
        .I2(p0__6_n_63),
        .O(\int_data_reg[12]_i_2_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_data_reg[12]_i_3 
       (.I0(p0_n_98),
        .I1(p0__3_n_98),
        .I2(p0__6_n_64),
        .O(\int_data_reg[12]_i_3_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_data_reg[12]_i_4 
       (.I0(p0_n_99),
        .I1(p0__3_n_99),
        .I2(p0__6_n_65),
        .O(\int_data_reg[12]_i_4_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_data_reg[12]_i_5 
       (.I0(p0_n_100),
        .I1(p0__3_n_100),
        .I2(p0__6_n_66),
        .O(\int_data_reg[12]_i_5_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \int_data_reg[12]_i_6 
       (.I0(p0_n_96),
        .I1(p0__3_n_96),
        .I2(p0__6_n_62),
        .I3(\int_data_reg[12]_i_2_n_0 ),
        .O(\int_data_reg[12]_i_6_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \int_data_reg[12]_i_7 
       (.I0(p0_n_97),
        .I1(p0__3_n_97),
        .I2(p0__6_n_63),
        .I3(\int_data_reg[12]_i_3_n_0 ),
        .O(\int_data_reg[12]_i_7_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \int_data_reg[12]_i_8 
       (.I0(p0_n_98),
        .I1(p0__3_n_98),
        .I2(p0__6_n_64),
        .I3(\int_data_reg[12]_i_4_n_0 ),
        .O(\int_data_reg[12]_i_8_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \int_data_reg[12]_i_9 
       (.I0(p0_n_99),
        .I1(p0__3_n_99),
        .I2(p0__6_n_65),
        .I3(\int_data_reg[12]_i_5_n_0 ),
        .O(\int_data_reg[12]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \int_data_reg[16]_i_2 
       (.I0(p0__6_n_58),
        .I1(p0__3_n_92),
        .I2(p0_n_92),
        .O(\int_data_reg[16]_i_2_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_data_reg[16]_i_3 
       (.I0(p0_n_94),
        .I1(p0__3_n_94),
        .I2(p0__6_n_60),
        .O(\int_data_reg[16]_i_3_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_data_reg[16]_i_4 
       (.I0(p0_n_95),
        .I1(p0__3_n_95),
        .I2(p0__6_n_61),
        .O(\int_data_reg[16]_i_4_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_data_reg[16]_i_5 
       (.I0(p0_n_96),
        .I1(p0__3_n_96),
        .I2(p0__6_n_62),
        .O(\int_data_reg[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \int_data_reg[16]_i_6 
       (.I0(p0__6_n_58),
        .I1(p0__3_n_92),
        .I2(p0_n_92),
        .I3(p0__6_n_59),
        .I4(p0__3_n_93),
        .I5(p0_n_93),
        .O(\int_data_reg[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \int_data_reg[16]_i_7 
       (.I0(\int_data_reg[16]_i_3_n_0 ),
        .I1(p0__3_n_93),
        .I2(p0_n_93),
        .I3(p0__6_n_59),
        .O(\int_data_reg[16]_i_7_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \int_data_reg[16]_i_8 
       (.I0(p0_n_94),
        .I1(p0__3_n_94),
        .I2(p0__6_n_60),
        .I3(\int_data_reg[16]_i_4_n_0 ),
        .O(\int_data_reg[16]_i_8_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \int_data_reg[16]_i_9 
       (.I0(p0_n_95),
        .I1(p0__3_n_95),
        .I2(p0__6_n_61),
        .I3(\int_data_reg[16]_i_5_n_0 ),
        .O(\int_data_reg[16]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[20]_i_2__1 
       (.I0(p0_n_90),
        .I1(p0__3_n_90),
        .I2(p0_n_89),
        .I3(p0__3_n_89),
        .O(\int_data_reg[20]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[20]_i_3__1 
       (.I0(p0_n_91),
        .I1(p0__3_n_91),
        .I2(p0_n_90),
        .I3(p0__3_n_90),
        .O(\int_data_reg[20]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[20]_i_4__1 
       (.I0(p0_n_92),
        .I1(p0__3_n_92),
        .I2(p0_n_91),
        .I3(p0__3_n_91),
        .O(\int_data_reg[20]_i_4__1_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \int_data_reg[20]_i_5 
       (.I0(p0_n_92),
        .I1(p0__3_n_92),
        .I2(p0__6_n_58),
        .O(\int_data_reg[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[20]_i_6 
       (.I0(p0__3_n_90),
        .I1(p0_n_90),
        .I2(p0__3_n_88),
        .I3(p0__0_n_105),
        .I4(p0__3_n_89),
        .I5(p0_n_89),
        .O(\int_data_reg[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[20]_i_7 
       (.I0(p0__3_n_91),
        .I1(p0_n_91),
        .I2(p0__3_n_89),
        .I3(p0_n_89),
        .I4(p0__3_n_90),
        .I5(p0_n_90),
        .O(\int_data_reg[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[20]_i_8 
       (.I0(p0__3_n_92),
        .I1(p0_n_92),
        .I2(p0__3_n_90),
        .I3(p0_n_90),
        .I4(p0__3_n_91),
        .I5(p0_n_91),
        .O(\int_data_reg[20]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h693C3C96)) 
    \int_data_reg[20]_i_9 
       (.I0(p0__6_n_58),
        .I1(p0__3_n_91),
        .I2(p0_n_91),
        .I3(p0__3_n_92),
        .I4(p0_n_92),
        .O(\int_data_reg[20]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[24]_i_2__1 
       (.I0(p0__0_n_103),
        .I1(p0__3_n_86),
        .I2(p0__0_n_102),
        .I3(p0__3_n_85),
        .O(\int_data_reg[24]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[24]_i_3__1 
       (.I0(p0__0_n_104),
        .I1(p0__3_n_87),
        .I2(p0__0_n_103),
        .I3(p0__3_n_86),
        .O(\int_data_reg[24]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[24]_i_4__1 
       (.I0(p0__0_n_105),
        .I1(p0__3_n_88),
        .I2(p0__0_n_104),
        .I3(p0__3_n_87),
        .O(\int_data_reg[24]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[24]_i_5__1 
       (.I0(p0_n_89),
        .I1(p0__3_n_89),
        .I2(p0__0_n_105),
        .I3(p0__3_n_88),
        .O(\int_data_reg[24]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[24]_i_6 
       (.I0(p0__3_n_86),
        .I1(p0__0_n_103),
        .I2(p0__3_n_84),
        .I3(p0__0_n_101),
        .I4(p0__3_n_85),
        .I5(p0__0_n_102),
        .O(\int_data_reg[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[24]_i_7 
       (.I0(p0__3_n_87),
        .I1(p0__0_n_104),
        .I2(p0__3_n_85),
        .I3(p0__0_n_102),
        .I4(p0__3_n_86),
        .I5(p0__0_n_103),
        .O(\int_data_reg[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[24]_i_8 
       (.I0(p0__3_n_88),
        .I1(p0__0_n_105),
        .I2(p0__3_n_86),
        .I3(p0__0_n_103),
        .I4(p0__3_n_87),
        .I5(p0__0_n_104),
        .O(\int_data_reg[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[24]_i_9 
       (.I0(p0__3_n_89),
        .I1(p0_n_89),
        .I2(p0__3_n_87),
        .I3(p0__0_n_104),
        .I4(p0__3_n_88),
        .I5(p0__0_n_105),
        .O(\int_data_reg[24]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[28]_i_2__1 
       (.I0(p0__0_n_99),
        .I1(p0__3_n_82),
        .I2(p0__0_n_98),
        .I3(p0__3_n_81),
        .O(\int_data_reg[28]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[28]_i_3__1 
       (.I0(p0__0_n_100),
        .I1(p0__3_n_83),
        .I2(p0__0_n_99),
        .I3(p0__3_n_82),
        .O(\int_data_reg[28]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[28]_i_4__1 
       (.I0(p0__0_n_101),
        .I1(p0__3_n_84),
        .I2(p0__0_n_100),
        .I3(p0__3_n_83),
        .O(\int_data_reg[28]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[28]_i_5__1 
       (.I0(p0__0_n_102),
        .I1(p0__3_n_85),
        .I2(p0__0_n_101),
        .I3(p0__3_n_84),
        .O(\int_data_reg[28]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[28]_i_6 
       (.I0(p0__3_n_82),
        .I1(p0__0_n_99),
        .I2(p0__3_n_80),
        .I3(p0__0_n_97),
        .I4(p0__3_n_81),
        .I5(p0__0_n_98),
        .O(\int_data_reg[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[28]_i_7 
       (.I0(p0__3_n_83),
        .I1(p0__0_n_100),
        .I2(p0__3_n_81),
        .I3(p0__0_n_98),
        .I4(p0__3_n_82),
        .I5(p0__0_n_99),
        .O(\int_data_reg[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[28]_i_8 
       (.I0(p0__3_n_84),
        .I1(p0__0_n_101),
        .I2(p0__3_n_82),
        .I3(p0__0_n_99),
        .I4(p0__3_n_83),
        .I5(p0__0_n_100),
        .O(\int_data_reg[28]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[28]_i_9 
       (.I0(p0__3_n_85),
        .I1(p0__0_n_102),
        .I2(p0__3_n_83),
        .I3(p0__0_n_100),
        .I4(p0__3_n_84),
        .I5(p0__0_n_101),
        .O(\int_data_reg[28]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[32]_i_2__1 
       (.I0(p0__0_n_95),
        .I1(p0__3_n_78),
        .I2(p0__0_n_94),
        .I3(p0__3_n_77),
        .O(\int_data_reg[32]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[32]_i_3__1 
       (.I0(p0__0_n_96),
        .I1(p0__3_n_79),
        .I2(p0__0_n_95),
        .I3(p0__3_n_78),
        .O(\int_data_reg[32]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[32]_i_4__1 
       (.I0(p0__0_n_97),
        .I1(p0__3_n_80),
        .I2(p0__0_n_96),
        .I3(p0__3_n_79),
        .O(\int_data_reg[32]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[32]_i_5__1 
       (.I0(p0__0_n_98),
        .I1(p0__3_n_81),
        .I2(p0__0_n_97),
        .I3(p0__3_n_80),
        .O(\int_data_reg[32]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[32]_i_6 
       (.I0(p0__3_n_78),
        .I1(p0__0_n_95),
        .I2(p0__3_n_76),
        .I3(p0__0_n_93),
        .I4(p0__3_n_77),
        .I5(p0__0_n_94),
        .O(\int_data_reg[32]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[32]_i_7 
       (.I0(p0__3_n_79),
        .I1(p0__0_n_96),
        .I2(p0__3_n_77),
        .I3(p0__0_n_94),
        .I4(p0__3_n_78),
        .I5(p0__0_n_95),
        .O(\int_data_reg[32]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[32]_i_8 
       (.I0(p0__3_n_80),
        .I1(p0__0_n_97),
        .I2(p0__3_n_78),
        .I3(p0__0_n_95),
        .I4(p0__3_n_79),
        .I5(p0__0_n_96),
        .O(\int_data_reg[32]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[32]_i_9 
       (.I0(p0__3_n_81),
        .I1(p0__0_n_98),
        .I2(p0__3_n_79),
        .I3(p0__0_n_96),
        .I4(p0__3_n_80),
        .I5(p0__0_n_97),
        .O(\int_data_reg[32]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[36]_i_2__1 
       (.I0(p0__0_n_91),
        .I1(p0__3_n_74),
        .I2(p0__0_n_90),
        .I3(p0__3_n_73),
        .O(\int_data_reg[36]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[36]_i_3__1 
       (.I0(p0__0_n_92),
        .I1(p0__3_n_75),
        .I2(p0__0_n_91),
        .I3(p0__3_n_74),
        .O(\int_data_reg[36]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[36]_i_4__1 
       (.I0(p0__0_n_93),
        .I1(p0__3_n_76),
        .I2(p0__0_n_92),
        .I3(p0__3_n_75),
        .O(\int_data_reg[36]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[36]_i_5__1 
       (.I0(p0__0_n_94),
        .I1(p0__3_n_77),
        .I2(p0__0_n_93),
        .I3(p0__3_n_76),
        .O(\int_data_reg[36]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[36]_i_6 
       (.I0(p0__3_n_74),
        .I1(p0__0_n_91),
        .I2(p0__3_n_72),
        .I3(p0__0_n_89),
        .I4(p0__3_n_73),
        .I5(p0__0_n_90),
        .O(\int_data_reg[36]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[36]_i_7 
       (.I0(p0__3_n_75),
        .I1(p0__0_n_92),
        .I2(p0__3_n_73),
        .I3(p0__0_n_90),
        .I4(p0__3_n_74),
        .I5(p0__0_n_91),
        .O(\int_data_reg[36]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[36]_i_8 
       (.I0(p0__3_n_76),
        .I1(p0__0_n_93),
        .I2(p0__3_n_74),
        .I3(p0__0_n_91),
        .I4(p0__3_n_75),
        .I5(p0__0_n_92),
        .O(\int_data_reg[36]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[36]_i_9 
       (.I0(p0__3_n_77),
        .I1(p0__0_n_94),
        .I2(p0__3_n_75),
        .I3(p0__0_n_92),
        .I4(p0__3_n_76),
        .I5(p0__0_n_93),
        .O(\int_data_reg[36]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[40]_i_2__1 
       (.I0(p0__0_n_87),
        .I1(p0__3_n_70),
        .I2(p0__0_n_86),
        .I3(p0__3_n_69),
        .O(\int_data_reg[40]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[40]_i_3__1 
       (.I0(p0__0_n_88),
        .I1(p0__3_n_71),
        .I2(p0__0_n_87),
        .I3(p0__3_n_70),
        .O(\int_data_reg[40]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[40]_i_4__1 
       (.I0(p0__0_n_89),
        .I1(p0__3_n_72),
        .I2(p0__0_n_88),
        .I3(p0__3_n_71),
        .O(\int_data_reg[40]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[40]_i_5__1 
       (.I0(p0__0_n_90),
        .I1(p0__3_n_73),
        .I2(p0__0_n_89),
        .I3(p0__3_n_72),
        .O(\int_data_reg[40]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[40]_i_6 
       (.I0(p0__3_n_70),
        .I1(p0__0_n_87),
        .I2(p0__3_n_68),
        .I3(p0__0_n_85),
        .I4(p0__3_n_69),
        .I5(p0__0_n_86),
        .O(\int_data_reg[40]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[40]_i_7 
       (.I0(p0__3_n_71),
        .I1(p0__0_n_88),
        .I2(p0__3_n_69),
        .I3(p0__0_n_86),
        .I4(p0__3_n_70),
        .I5(p0__0_n_87),
        .O(\int_data_reg[40]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[40]_i_8 
       (.I0(p0__3_n_72),
        .I1(p0__0_n_89),
        .I2(p0__3_n_70),
        .I3(p0__0_n_87),
        .I4(p0__3_n_71),
        .I5(p0__0_n_88),
        .O(\int_data_reg[40]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[40]_i_9 
       (.I0(p0__3_n_73),
        .I1(p0__0_n_90),
        .I2(p0__3_n_71),
        .I3(p0__0_n_88),
        .I4(p0__3_n_72),
        .I5(p0__0_n_89),
        .O(\int_data_reg[40]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[44]_i_2__1 
       (.I0(p0__0_n_83),
        .I1(p0__3_n_66),
        .I2(p0__0_n_82),
        .I3(p0__3_n_65),
        .O(\int_data_reg[44]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[44]_i_3__1 
       (.I0(p0__0_n_84),
        .I1(p0__3_n_67),
        .I2(p0__0_n_83),
        .I3(p0__3_n_66),
        .O(\int_data_reg[44]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[44]_i_4__1 
       (.I0(p0__0_n_85),
        .I1(p0__3_n_68),
        .I2(p0__0_n_84),
        .I3(p0__3_n_67),
        .O(\int_data_reg[44]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[44]_i_5__1 
       (.I0(p0__0_n_86),
        .I1(p0__3_n_69),
        .I2(p0__0_n_85),
        .I3(p0__3_n_68),
        .O(\int_data_reg[44]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[44]_i_6 
       (.I0(p0__3_n_66),
        .I1(p0__0_n_83),
        .I2(p0__3_n_64),
        .I3(p0__0_n_81),
        .I4(p0__3_n_65),
        .I5(p0__0_n_82),
        .O(\int_data_reg[44]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[44]_i_7 
       (.I0(p0__3_n_67),
        .I1(p0__0_n_84),
        .I2(p0__3_n_65),
        .I3(p0__0_n_82),
        .I4(p0__3_n_66),
        .I5(p0__0_n_83),
        .O(\int_data_reg[44]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[44]_i_8 
       (.I0(p0__3_n_68),
        .I1(p0__0_n_85),
        .I2(p0__3_n_66),
        .I3(p0__0_n_83),
        .I4(p0__3_n_67),
        .I5(p0__0_n_84),
        .O(\int_data_reg[44]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[44]_i_9 
       (.I0(p0__3_n_69),
        .I1(p0__0_n_86),
        .I2(p0__3_n_67),
        .I3(p0__0_n_84),
        .I4(p0__3_n_68),
        .I5(p0__0_n_85),
        .O(\int_data_reg[44]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \int_data_reg[4]_i_2 
       (.I0(p0__6_n_70),
        .I1(p0_n_104),
        .I2(p0__3_n_104),
        .O(\int_data_reg[4]_i_2_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \int_data_reg[4]_i_3 
       (.I0(p0_n_104),
        .I1(p0__3_n_104),
        .I2(p0__6_n_70),
        .I3(p0__3_n_105),
        .I4(p0_n_105),
        .O(\int_data_reg[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \int_data_reg[4]_i_4 
       (.I0(p0_n_105),
        .I1(p0__3_n_105),
        .I2(p0__6_n_71),
        .O(\int_data_reg[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[4]_i_5 
       (.I0(p0__6_n_72),
        .I1(p0__2_n_89),
        .O(\int_data_reg[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[4]_i_6 
       (.I0(p0__6_n_73),
        .I1(p0__2_n_90),
        .O(\int_data_reg[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \int_data_reg[63]_i_2 
       (.I0(p0__0_n_82),
        .I1(p0__3_n_65),
        .I2(p0__0_n_81),
        .I3(p0__3_n_64),
        .O(\int_data_reg[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[63]_i_3 
       (.I0(p0__3_n_64),
        .I1(p0__0_n_81),
        .I2(p0__3_n_62),
        .I3(p0__0_n_79),
        .I4(p0__3_n_63),
        .I5(p0__0_n_80),
        .O(\int_data_reg[63]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \int_data_reg[63]_i_4 
       (.I0(p0__3_n_65),
        .I1(p0__0_n_82),
        .I2(p0__3_n_63),
        .I3(p0__0_n_80),
        .I4(p0__3_n_64),
        .I5(p0__0_n_81),
        .O(\int_data_reg[63]_i_4_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_data_reg[8]_i_2 
       (.I0(p0_n_101),
        .I1(p0__3_n_101),
        .I2(p0__6_n_67),
        .O(\int_data_reg[8]_i_2_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_data_reg[8]_i_3 
       (.I0(p0_n_102),
        .I1(p0__3_n_102),
        .I2(p0__6_n_68),
        .O(\int_data_reg[8]_i_3_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_data_reg[8]_i_4 
       (.I0(p0_n_103),
        .I1(p0__3_n_103),
        .I2(p0__6_n_69),
        .O(\int_data_reg[8]_i_4_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \int_data_reg[8]_i_5 
       (.I0(p0_n_104),
        .I1(p0__3_n_104),
        .I2(p0__6_n_70),
        .O(\int_data_reg[8]_i_5_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \int_data_reg[8]_i_6 
       (.I0(p0_n_100),
        .I1(p0__3_n_100),
        .I2(p0__6_n_66),
        .I3(\int_data_reg[8]_i_2_n_0 ),
        .O(\int_data_reg[8]_i_6_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \int_data_reg[8]_i_7 
       (.I0(p0_n_101),
        .I1(p0__3_n_101),
        .I2(p0__6_n_67),
        .I3(\int_data_reg[8]_i_3_n_0 ),
        .O(\int_data_reg[8]_i_7_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \int_data_reg[8]_i_8 
       (.I0(p0_n_102),
        .I1(p0__3_n_102),
        .I2(p0__6_n_68),
        .I3(\int_data_reg[8]_i_4_n_0 ),
        .O(\int_data_reg[8]_i_8_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \int_data_reg[8]_i_9 
       (.I0(p0_n_103),
        .I1(p0__3_n_103),
        .I2(p0__6_n_69),
        .I3(\int_data_reg[8]_i_5_n_0 ),
        .O(\int_data_reg[8]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[0]_i_1 
       (.CI(\int_data_reg_reg[0]_i_2_n_0 ),
        .CO({\int_data_reg_reg[0]_i_1_n_0 ,\int_data_reg_reg[0]_i_1_n_1 ,\int_data_reg_reg[0]_i_1_n_2 ,\int_data_reg_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__6_n_74,p0__6_n_75,p0__6_n_76,p0__6_n_77}),
        .O({p0_0[0],\NLW_int_data_reg_reg[0]_i_1_O_UNCONNECTED [2:0]}),
        .S({\int_data_reg[0]_i_3_n_0 ,\int_data_reg[0]_i_4_n_0 ,\int_data_reg[0]_i_5_n_0 ,\int_data_reg[0]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[0]_i_12 
       (.CI(1'b0),
        .CO({\int_data_reg_reg[0]_i_12_n_0 ,\int_data_reg_reg[0]_i_12_n_1 ,\int_data_reg_reg[0]_i_12_n_2 ,\int_data_reg_reg[0]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__6_n_86,p0__6_n_87,p0__6_n_88,1'b0}),
        .O(\NLW_int_data_reg_reg[0]_i_12_O_UNCONNECTED [3:0]),
        .S({\int_data_reg[0]_i_17_n_0 ,\int_data_reg[0]_i_18_n_0 ,\int_data_reg[0]_i_19_n_0 ,p0__6_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[0]_i_2 
       (.CI(\int_data_reg_reg[0]_i_7_n_0 ),
        .CO({\int_data_reg_reg[0]_i_2_n_0 ,\int_data_reg_reg[0]_i_2_n_1 ,\int_data_reg_reg[0]_i_2_n_2 ,\int_data_reg_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__6_n_78,p0__6_n_79,p0__6_n_80,p0__6_n_81}),
        .O(\NLW_int_data_reg_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({\int_data_reg[0]_i_8_n_0 ,\int_data_reg[0]_i_9_n_0 ,\int_data_reg[0]_i_10_n_0 ,\int_data_reg[0]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[0]_i_7 
       (.CI(\int_data_reg_reg[0]_i_12_n_0 ),
        .CO({\int_data_reg_reg[0]_i_7_n_0 ,\int_data_reg_reg[0]_i_7_n_1 ,\int_data_reg_reg[0]_i_7_n_2 ,\int_data_reg_reg[0]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__6_n_82,p0__6_n_83,p0__6_n_84,p0__6_n_85}),
        .O(\NLW_int_data_reg_reg[0]_i_7_O_UNCONNECTED [3:0]),
        .S({\int_data_reg[0]_i_13_n_0 ,\int_data_reg[0]_i_14_n_0 ,\int_data_reg[0]_i_15_n_0 ,\int_data_reg[0]_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[12]_i_1 
       (.CI(\int_data_reg_reg[8]_i_1_n_0 ),
        .CO({\int_data_reg_reg[12]_i_1_n_0 ,\int_data_reg_reg[12]_i_1_n_1 ,\int_data_reg_reg[12]_i_1_n_2 ,\int_data_reg_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\int_data_reg[12]_i_2_n_0 ,\int_data_reg[12]_i_3_n_0 ,\int_data_reg[12]_i_4_n_0 ,\int_data_reg[12]_i_5_n_0 }),
        .O(p0_0[12:9]),
        .S({\int_data_reg[12]_i_6_n_0 ,\int_data_reg[12]_i_7_n_0 ,\int_data_reg[12]_i_8_n_0 ,\int_data_reg[12]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[16]_i_1 
       (.CI(\int_data_reg_reg[12]_i_1_n_0 ),
        .CO({\int_data_reg_reg[16]_i_1_n_0 ,\int_data_reg_reg[16]_i_1_n_1 ,\int_data_reg_reg[16]_i_1_n_2 ,\int_data_reg_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\int_data_reg[16]_i_2_n_0 ,\int_data_reg[16]_i_3_n_0 ,\int_data_reg[16]_i_4_n_0 ,\int_data_reg[16]_i_5_n_0 }),
        .O(p0_0[16:13]),
        .S({\int_data_reg[16]_i_6_n_0 ,\int_data_reg[16]_i_7_n_0 ,\int_data_reg[16]_i_8_n_0 ,\int_data_reg[16]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[20]_i_1 
       (.CI(\int_data_reg_reg[16]_i_1_n_0 ),
        .CO({\int_data_reg_reg[20]_i_1_n_0 ,\int_data_reg_reg[20]_i_1_n_1 ,\int_data_reg_reg[20]_i_1_n_2 ,\int_data_reg_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\int_data_reg[20]_i_2__1_n_0 ,\int_data_reg[20]_i_3__1_n_0 ,\int_data_reg[20]_i_4__1_n_0 ,\int_data_reg[20]_i_5_n_0 }),
        .O(p0_0[20:17]),
        .S({\int_data_reg[20]_i_6_n_0 ,\int_data_reg[20]_i_7_n_0 ,\int_data_reg[20]_i_8_n_0 ,\int_data_reg[20]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[24]_i_1 
       (.CI(\int_data_reg_reg[20]_i_1_n_0 ),
        .CO({\int_data_reg_reg[24]_i_1_n_0 ,\int_data_reg_reg[24]_i_1_n_1 ,\int_data_reg_reg[24]_i_1_n_2 ,\int_data_reg_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\int_data_reg[24]_i_2__1_n_0 ,\int_data_reg[24]_i_3__1_n_0 ,\int_data_reg[24]_i_4__1_n_0 ,\int_data_reg[24]_i_5__1_n_0 }),
        .O(p0_0[24:21]),
        .S({\int_data_reg[24]_i_6_n_0 ,\int_data_reg[24]_i_7_n_0 ,\int_data_reg[24]_i_8_n_0 ,\int_data_reg[24]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[28]_i_1 
       (.CI(\int_data_reg_reg[24]_i_1_n_0 ),
        .CO({\int_data_reg_reg[28]_i_1_n_0 ,\int_data_reg_reg[28]_i_1_n_1 ,\int_data_reg_reg[28]_i_1_n_2 ,\int_data_reg_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\int_data_reg[28]_i_2__1_n_0 ,\int_data_reg[28]_i_3__1_n_0 ,\int_data_reg[28]_i_4__1_n_0 ,\int_data_reg[28]_i_5__1_n_0 }),
        .O(p0_0[28:25]),
        .S({\int_data_reg[28]_i_6_n_0 ,\int_data_reg[28]_i_7_n_0 ,\int_data_reg[28]_i_8_n_0 ,\int_data_reg[28]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[32]_i_1 
       (.CI(\int_data_reg_reg[28]_i_1_n_0 ),
        .CO({\int_data_reg_reg[32]_i_1_n_0 ,\int_data_reg_reg[32]_i_1_n_1 ,\int_data_reg_reg[32]_i_1_n_2 ,\int_data_reg_reg[32]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\int_data_reg[32]_i_2__1_n_0 ,\int_data_reg[32]_i_3__1_n_0 ,\int_data_reg[32]_i_4__1_n_0 ,\int_data_reg[32]_i_5__1_n_0 }),
        .O(p0_0[32:29]),
        .S({\int_data_reg[32]_i_6_n_0 ,\int_data_reg[32]_i_7_n_0 ,\int_data_reg[32]_i_8_n_0 ,\int_data_reg[32]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[36]_i_1 
       (.CI(\int_data_reg_reg[32]_i_1_n_0 ),
        .CO({\int_data_reg_reg[36]_i_1_n_0 ,\int_data_reg_reg[36]_i_1_n_1 ,\int_data_reg_reg[36]_i_1_n_2 ,\int_data_reg_reg[36]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\int_data_reg[36]_i_2__1_n_0 ,\int_data_reg[36]_i_3__1_n_0 ,\int_data_reg[36]_i_4__1_n_0 ,\int_data_reg[36]_i_5__1_n_0 }),
        .O(p0_0[36:33]),
        .S({\int_data_reg[36]_i_6_n_0 ,\int_data_reg[36]_i_7_n_0 ,\int_data_reg[36]_i_8_n_0 ,\int_data_reg[36]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[40]_i_1 
       (.CI(\int_data_reg_reg[36]_i_1_n_0 ),
        .CO({\int_data_reg_reg[40]_i_1_n_0 ,\int_data_reg_reg[40]_i_1_n_1 ,\int_data_reg_reg[40]_i_1_n_2 ,\int_data_reg_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\int_data_reg[40]_i_2__1_n_0 ,\int_data_reg[40]_i_3__1_n_0 ,\int_data_reg[40]_i_4__1_n_0 ,\int_data_reg[40]_i_5__1_n_0 }),
        .O(p0_0[40:37]),
        .S({\int_data_reg[40]_i_6_n_0 ,\int_data_reg[40]_i_7_n_0 ,\int_data_reg[40]_i_8_n_0 ,\int_data_reg[40]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[44]_i_1 
       (.CI(\int_data_reg_reg[40]_i_1_n_0 ),
        .CO({\int_data_reg_reg[44]_i_1_n_0 ,\int_data_reg_reg[44]_i_1_n_1 ,\int_data_reg_reg[44]_i_1_n_2 ,\int_data_reg_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\int_data_reg[44]_i_2__1_n_0 ,\int_data_reg[44]_i_3__1_n_0 ,\int_data_reg[44]_i_4__1_n_0 ,\int_data_reg[44]_i_5__1_n_0 }),
        .O(p0_0[44:41]),
        .S({\int_data_reg[44]_i_6_n_0 ,\int_data_reg[44]_i_7_n_0 ,\int_data_reg[44]_i_8_n_0 ,\int_data_reg[44]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[4]_i_1 
       (.CI(\int_data_reg_reg[0]_i_1_n_0 ),
        .CO({\int_data_reg_reg[4]_i_1_n_0 ,\int_data_reg_reg[4]_i_1_n_1 ,\int_data_reg_reg[4]_i_1_n_2 ,\int_data_reg_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\int_data_reg[4]_i_2_n_0 ,p0__6_n_71,p0__6_n_72,p0__6_n_73}),
        .O(p0_0[4:1]),
        .S({\int_data_reg[4]_i_3_n_0 ,\int_data_reg[4]_i_4_n_0 ,\int_data_reg[4]_i_5_n_0 ,\int_data_reg[4]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[63]_i_1 
       (.CI(\int_data_reg_reg[44]_i_1_n_0 ),
        .CO({\NLW_int_data_reg_reg[63]_i_1_CO_UNCONNECTED [3:1],\int_data_reg_reg[63]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\int_data_reg[63]_i_2_n_0 }),
        .O({\NLW_int_data_reg_reg[63]_i_1_O_UNCONNECTED [3:2],p0_0[46:45]}),
        .S({1'b0,1'b0,\int_data_reg[63]_i_3_n_0 ,\int_data_reg[63]_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \int_data_reg_reg[8]_i_1 
       (.CI(\int_data_reg_reg[4]_i_1_n_0 ),
        .CO({\int_data_reg_reg[8]_i_1_n_0 ,\int_data_reg_reg[8]_i_1_n_1 ,\int_data_reg_reg[8]_i_1_n_2 ,\int_data_reg_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\int_data_reg[8]_i_2_n_0 ,\int_data_reg[8]_i_3_n_0 ,\int_data_reg[8]_i_4_n_0 ,\int_data_reg[8]_i_5_n_0 }),
        .O(p0_0[8:5]),
        .S({\int_data_reg[8]_i_6_n_0 ,\int_data_reg[8]_i_7_n_0 ,\int_data_reg[8]_i_8_n_0 ,\int_data_reg[8]_i_9_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 11x18 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({int_s[13],int_s[13],int_s[13],int_s[13],int_s[13],int_s[13],int_s[13],int_s[13:3]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0_OVERFLOW_UNCONNECTED),
        .P({p0_n_58,p0_n_59,p0_n_60,p0_n_61,p0_n_62,p0_n_63,p0_n_64,p0_n_65,p0_n_66,p0_n_67,p0_n_68,p0_n_69,p0_n_70,p0_n_71,p0_n_72,p0_n_73,p0_n_74,p0_n_75,p0_n_76,p0_n_77,p0_n_78,p0_n_79,p0_n_80,p0_n_81,p0_n_82,p0_n_83,p0_n_84,p0_n_85,p0_n_86,p0_n_87,p0_n_88,p0_n_89,p0_n_90,p0_n_91,p0_n_92,p0_n_93,p0_n_94,p0_n_95,p0_n_96,p0_n_97,p0_n_98,p0_n_99,p0_n_100,p0_n_101,p0_n_102,p0_n_103,p0_n_104,p0_n_105}),
        .PATTERNBDETECT(NLW_p0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0_n_106,p0_n_107,p0_n_108,p0_n_109,p0_n_110,p0_n_111,p0_n_112,p0_n_113,p0_n_114,p0_n_115,p0_n_116,p0_n_117,p0_n_118,p0_n_119,p0_n_120,p0_n_121,p0_n_122,p0_n_123,p0_n_124,p0_n_125,p0_n_126,p0_n_127,p0_n_128,p0_n_129,p0_n_130,p0_n_131,p0_n_132,p0_n_133,p0_n_134,p0_n_135,p0_n_136,p0_n_137,p0_n_138,p0_n_139,p0_n_140,p0_n_141,p0_n_142,p0_n_143,p0_n_144,p0_n_145,p0_n_146,p0_n_147,p0_n_148,p0_n_149,p0_n_150,p0_n_151,p0_n_152,p0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 11x16 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({int_s[13],int_s[13],int_s[13],int_s[13],int_s[13],int_s[13],int_s[13],int_s[13:3]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__0_OVERFLOW_UNCONNECTED),
        .P({p0__0_n_58,p0__0_n_59,p0__0_n_60,p0__0_n_61,p0__0_n_62,p0__0_n_63,p0__0_n_64,p0__0_n_65,p0__0_n_66,p0__0_n_67,p0__0_n_68,p0__0_n_69,p0__0_n_70,p0__0_n_71,p0__0_n_72,p0__0_n_73,p0__0_n_74,p0__0_n_75,p0__0_n_76,p0__0_n_77,p0__0_n_78,p0__0_n_79,p0__0_n_80,p0__0_n_81,p0__0_n_82,p0__0_n_83,p0__0_n_84,p0__0_n_85,p0__0_n_86,p0__0_n_87,p0__0_n_88,p0__0_n_89,p0__0_n_90,p0__0_n_91,p0__0_n_92,p0__0_n_93,p0__0_n_94,p0__0_n_95,p0__0_n_96,p0__0_n_97,p0__0_n_98,p0__0_n_99,p0__0_n_100,p0__0_n_101,p0__0_n_102,p0__0_n_103,p0__0_n_104,p0__0_n_105}),
        .PATTERNBDETECT(NLW_p0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0_n_106,p0_n_107,p0_n_108,p0_n_109,p0_n_110,p0_n_111,p0_n_112,p0_n_113,p0_n_114,p0_n_115,p0_n_116,p0_n_117,p0_n_118,p0_n_119,p0_n_120,p0_n_121,p0_n_122,p0_n_123,p0_n_124,p0_n_125,p0_n_126,p0_n_127,p0_n_128,p0_n_129,p0_n_130,p0_n_131,p0_n_132,p0_n_133,p0_n_134,p0_n_135,p0_n_136,p0_n_137,p0_n_138,p0_n_139,p0_n_140,p0_n_141,p0_n_142,p0_n_143,p0_n_144,p0_n_145,p0_n_146,p0_n_147,p0_n_148,p0_n_149,p0_n_150,p0_n_151,p0_n_152,p0_n_153}),
        .PCOUT(NLW_p0__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__1_OVERFLOW_UNCONNECTED),
        .P({p0__1_n_58,p0__1_n_59,p0__1_n_60,p0__1_n_61,p0__1_n_62,p0__1_n_63,p0__1_n_64,p0__1_n_65,p0__1_n_66,p0__1_n_67,p0__1_n_68,p0__1_n_69,p0__1_n_70,p0__1_n_71,p0__1_n_72,p0__1_n_73,p0__1_n_74,p0__1_n_75,p0__1_n_76,p0__1_n_77,p0__1_n_78,p0__1_n_79,p0__1_n_80,p0__1_n_81,p0__1_n_82,p0__1_n_83,p0__1_n_84,p0__1_n_85,p0__1_n_86,p0__1_n_87,p0__1_n_88,p0__1_n_89,p0__1_n_90,p0__1_n_91,p0__1_n_92,p0__1_n_93,p0__1_n_94,p0__1_n_95,p0__1_n_96,p0__1_n_97,p0__1_n_98,p0__1_n_99,p0__1_n_100,p0__1_n_101,p0__1_n_102,p0__1_n_103,p0__1_n_104,p0__1_n_105}),
        .PATTERNBDETECT(NLW_p0__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__1_n_106,p0__1_n_107,p0__1_n_108,p0__1_n_109,p0__1_n_110,p0__1_n_111,p0__1_n_112,p0__1_n_113,p0__1_n_114,p0__1_n_115,p0__1_n_116,p0__1_n_117,p0__1_n_118,p0__1_n_119,p0__1_n_120,p0__1_n_121,p0__1_n_122,p0__1_n_123,p0__1_n_124,p0__1_n_125,p0__1_n_126,p0__1_n_127,p0__1_n_128,p0__1_n_129,p0__1_n_130,p0__1_n_131,p0__1_n_132,p0__1_n_133,p0__1_n_134,p0__1_n_135,p0__1_n_136,p0__1_n_137,p0__1_n_138,p0__1_n_139,p0__1_n_140,p0__1_n_141,p0__1_n_142,p0__1_n_143,p0__1_n_144,p0__1_n_145,p0__1_n_146,p0__1_n_147,p0__1_n_148,p0__1_n_149,p0__1_n_150,p0__1_n_151,p0__1_n_152,p0__1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,int_s[2:0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({p0__2_n_24,p0__2_n_25,p0__2_n_26,p0__2_n_27,p0__2_n_28,p0__2_n_29,p0__2_n_30,p0__2_n_31,p0__2_n_32,p0__2_n_33,p0__2_n_34,p0__2_n_35,p0__2_n_36,p0__2_n_37,p0__2_n_38,p0__2_n_39,p0__2_n_40,p0__2_n_41,p0__2_n_42,p0__2_n_43,p0__2_n_44,p0__2_n_45,p0__2_n_46,p0__2_n_47,p0__2_n_48,p0__2_n_49,p0__2_n_50,p0__2_n_51,p0__2_n_52,p0__2_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__2_OVERFLOW_UNCONNECTED),
        .P({p0__2_n_58,p0__2_n_59,p0__2_n_60,p0__2_n_61,p0__2_n_62,p0__2_n_63,p0__2_n_64,p0__2_n_65,p0__2_n_66,p0__2_n_67,p0__2_n_68,p0__2_n_69,p0__2_n_70,p0__2_n_71,p0__2_n_72,p0__2_n_73,p0__2_n_74,p0__2_n_75,p0__2_n_76,p0__2_n_77,p0__2_n_78,p0__2_n_79,p0__2_n_80,p0__2_n_81,p0__2_n_82,p0__2_n_83,p0__2_n_84,p0__2_n_85,p0__2_n_86,p0__2_n_87,p0__2_n_88,p0__2_n_89,p0__2_n_90,p0__2_n_91,p0__2_n_92,p0__2_n_93,p0__2_n_94,p0__2_n_95,p0__2_n_96,p0__2_n_97,p0__2_n_98,p0__2_n_99,p0__2_n_100,p0__2_n_101,p0__2_n_102,p0__2_n_103,p0__2_n_104,p0__2_n_105}),
        .PATTERNBDETECT(NLW_p0__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__1_n_106,p0__1_n_107,p0__1_n_108,p0__1_n_109,p0__1_n_110,p0__1_n_111,p0__1_n_112,p0__1_n_113,p0__1_n_114,p0__1_n_115,p0__1_n_116,p0__1_n_117,p0__1_n_118,p0__1_n_119,p0__1_n_120,p0__1_n_121,p0__1_n_122,p0__1_n_123,p0__1_n_124,p0__1_n_125,p0__1_n_126,p0__1_n_127,p0__1_n_128,p0__1_n_129,p0__1_n_130,p0__1_n_131,p0__1_n_132,p0__1_n_133,p0__1_n_134,p0__1_n_135,p0__1_n_136,p0__1_n_137,p0__1_n_138,p0__1_n_139,p0__1_n_140,p0__1_n_141,p0__1_n_142,p0__1_n_143,p0__1_n_144,p0__1_n_145,p0__1_n_146,p0__1_n_147,p0__1_n_148,p0__1_n_149,p0__1_n_150,p0__1_n_151,p0__1_n_152,p0__1_n_153}),
        .PCOUT({p0__2_n_106,p0__2_n_107,p0__2_n_108,p0__2_n_109,p0__2_n_110,p0__2_n_111,p0__2_n_112,p0__2_n_113,p0__2_n_114,p0__2_n_115,p0__2_n_116,p0__2_n_117,p0__2_n_118,p0__2_n_119,p0__2_n_120,p0__2_n_121,p0__2_n_122,p0__2_n_123,p0__2_n_124,p0__2_n_125,p0__2_n_126,p0__2_n_127,p0__2_n_128,p0__2_n_129,p0__2_n_130,p0__2_n_131,p0__2_n_132,p0__2_n_133,p0__2_n_134,p0__2_n_135,p0__2_n_136,p0__2_n_137,p0__2_n_138,p0__2_n_139,p0__2_n_140,p0__2_n_141,p0__2_n_142,p0__2_n_143,p0__2_n_144,p0__2_n_145,p0__2_n_146,p0__2_n_147,p0__2_n_148,p0__2_n_149,p0__2_n_150,p0__2_n_151,p0__2_n_152,p0__2_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({p0__2_n_24,p0__2_n_25,p0__2_n_26,p0__2_n_27,p0__2_n_28,p0__2_n_29,p0__2_n_30,p0__2_n_31,p0__2_n_32,p0__2_n_33,p0__2_n_34,p0__2_n_35,p0__2_n_36,p0__2_n_37,p0__2_n_38,p0__2_n_39,p0__2_n_40,p0__2_n_41,p0__2_n_42,p0__2_n_43,p0__2_n_44,p0__2_n_45,p0__2_n_46,p0__2_n_47,p0__2_n_48,p0__2_n_49,p0__2_n_50,p0__2_n_51,p0__2_n_52,p0__2_n_53}),
        .ACOUT(NLW_p0__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__3_OVERFLOW_UNCONNECTED),
        .P({p0__3_n_58,p0__3_n_59,p0__3_n_60,p0__3_n_61,p0__3_n_62,p0__3_n_63,p0__3_n_64,p0__3_n_65,p0__3_n_66,p0__3_n_67,p0__3_n_68,p0__3_n_69,p0__3_n_70,p0__3_n_71,p0__3_n_72,p0__3_n_73,p0__3_n_74,p0__3_n_75,p0__3_n_76,p0__3_n_77,p0__3_n_78,p0__3_n_79,p0__3_n_80,p0__3_n_81,p0__3_n_82,p0__3_n_83,p0__3_n_84,p0__3_n_85,p0__3_n_86,p0__3_n_87,p0__3_n_88,p0__3_n_89,p0__3_n_90,p0__3_n_91,p0__3_n_92,p0__3_n_93,p0__3_n_94,p0__3_n_95,p0__3_n_96,p0__3_n_97,p0__3_n_98,p0__3_n_99,p0__3_n_100,p0__3_n_101,p0__3_n_102,p0__3_n_103,p0__3_n_104,p0__3_n_105}),
        .PATTERNBDETECT(NLW_p0__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__2_n_106,p0__2_n_107,p0__2_n_108,p0__2_n_109,p0__2_n_110,p0__2_n_111,p0__2_n_112,p0__2_n_113,p0__2_n_114,p0__2_n_115,p0__2_n_116,p0__2_n_117,p0__2_n_118,p0__2_n_119,p0__2_n_120,p0__2_n_121,p0__2_n_122,p0__2_n_123,p0__2_n_124,p0__2_n_125,p0__2_n_126,p0__2_n_127,p0__2_n_128,p0__2_n_129,p0__2_n_130,p0__2_n_131,p0__2_n_132,p0__2_n_133,p0__2_n_134,p0__2_n_135,p0__2_n_136,p0__2_n_137,p0__2_n_138,p0__2_n_139,p0__2_n_140,p0__2_n_141,p0__2_n_142,p0__2_n_143,p0__2_n_144,p0__2_n_145,p0__2_n_146,p0__2_n_147,p0__2_n_148,p0__2_n_149,p0__2_n_150,p0__2_n_151,p0__2_n_152,p0__2_n_153}),
        .PCOUT(NLW_p0__3_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__3_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__4
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({p0__4_n_24,p0__4_n_25,p0__4_n_26,p0__4_n_27,p0__4_n_28,p0__4_n_29,p0__4_n_30,p0__4_n_31,p0__4_n_32,p0__4_n_33,p0__4_n_34,p0__4_n_35,p0__4_n_36,p0__4_n_37,p0__4_n_38,p0__4_n_39,p0__4_n_40,p0__4_n_41,p0__4_n_42,p0__4_n_43,p0__4_n_44,p0__4_n_45,p0__4_n_46,p0__4_n_47,p0__4_n_48,p0__4_n_49,p0__4_n_50,p0__4_n_51,p0__4_n_52,p0__4_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__4_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__4_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__4_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__4_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__4_OVERFLOW_UNCONNECTED),
        .P({p0__4_n_58,p0__4_n_59,p0__4_n_60,p0__4_n_61,p0__4_n_62,p0__4_n_63,p0__4_n_64,p0__4_n_65,p0__4_n_66,p0__4_n_67,p0__4_n_68,p0__4_n_69,p0__4_n_70,p0__4_n_71,p0__4_n_72,p0__4_n_73,p0__4_n_74,p0__4_n_75,p0__4_n_76,p0__4_n_77,p0__4_n_78,p0__4_n_79,p0__4_n_80,p0__4_n_81,p0__4_n_82,p0__4_n_83,p0__4_n_84,p0__4_n_85,p0__4_n_86,p0__4_n_87,p0__4_n_88,p0__4_n_89,p0__4_n_90,p0__4_n_91,p0__4_n_92,p0__4_n_93,p0__4_n_94,p0__4_n_95,p0__4_n_96,p0__4_n_97,p0__4_n_98,p0__4_n_99,p0__4_n_100,p0__4_n_101,p0__4_n_102,p0__4_n_103,p0__4_n_104,p0__4_n_105}),
        .PATTERNBDETECT(NLW_p0__4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__4_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__4_n_106,p0__4_n_107,p0__4_n_108,p0__4_n_109,p0__4_n_110,p0__4_n_111,p0__4_n_112,p0__4_n_113,p0__4_n_114,p0__4_n_115,p0__4_n_116,p0__4_n_117,p0__4_n_118,p0__4_n_119,p0__4_n_120,p0__4_n_121,p0__4_n_122,p0__4_n_123,p0__4_n_124,p0__4_n_125,p0__4_n_126,p0__4_n_127,p0__4_n_128,p0__4_n_129,p0__4_n_130,p0__4_n_131,p0__4_n_132,p0__4_n_133,p0__4_n_134,p0__4_n_135,p0__4_n_136,p0__4_n_137,p0__4_n_138,p0__4_n_139,p0__4_n_140,p0__4_n_141,p0__4_n_142,p0__4_n_143,p0__4_n_144,p0__4_n_145,p0__4_n_146,p0__4_n_147,p0__4_n_148,p0__4_n_149,p0__4_n_150,p0__4_n_151,p0__4_n_152,p0__4_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__4_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__5
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({p0__4_n_24,p0__4_n_25,p0__4_n_26,p0__4_n_27,p0__4_n_28,p0__4_n_29,p0__4_n_30,p0__4_n_31,p0__4_n_32,p0__4_n_33,p0__4_n_34,p0__4_n_35,p0__4_n_36,p0__4_n_37,p0__4_n_38,p0__4_n_39,p0__4_n_40,p0__4_n_41,p0__4_n_42,p0__4_n_43,p0__4_n_44,p0__4_n_45,p0__4_n_46,p0__4_n_47,p0__4_n_48,p0__4_n_49,p0__4_n_50,p0__4_n_51,p0__4_n_52,p0__4_n_53}),
        .ACOUT({p0__5_n_24,p0__5_n_25,p0__5_n_26,p0__5_n_27,p0__5_n_28,p0__5_n_29,p0__5_n_30,p0__5_n_31,p0__5_n_32,p0__5_n_33,p0__5_n_34,p0__5_n_35,p0__5_n_36,p0__5_n_37,p0__5_n_38,p0__5_n_39,p0__5_n_40,p0__5_n_41,p0__5_n_42,p0__5_n_43,p0__5_n_44,p0__5_n_45,p0__5_n_46,p0__5_n_47,p0__5_n_48,p0__5_n_49,p0__5_n_50,p0__5_n_51,p0__5_n_52,p0__5_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__5_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__5_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__5_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__5_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__5_OVERFLOW_UNCONNECTED),
        .P({p0__5_n_58,p0__5_n_59,p0__5_n_60,p0__5_n_61,p0__5_n_62,p0__5_n_63,p0__5_n_64,p0__5_n_65,p0__5_n_66,p0__5_n_67,p0__5_n_68,p0__5_n_69,p0__5_n_70,p0__5_n_71,p0__5_n_72,p0__5_n_73,p0__5_n_74,p0__5_n_75,p0__5_n_76,p0__5_n_77,p0__5_n_78,p0__5_n_79,p0__5_n_80,p0__5_n_81,p0__5_n_82,p0__5_n_83,p0__5_n_84,p0__5_n_85,p0__5_n_86,p0__5_n_87,p0__5_n_88,p0__5_n_89,p0__5_n_90,p0__5_n_91,p0__5_n_92,p0__5_n_93,p0__5_n_94,p0__5_n_95,p0__5_n_96,p0__5_n_97,p0__5_n_98,p0__5_n_99,p0__5_n_100,p0__5_n_101,p0__5_n_102,p0__5_n_103,p0__5_n_104,p0__5_n_105}),
        .PATTERNBDETECT(NLW_p0__5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__5_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__4_n_106,p0__4_n_107,p0__4_n_108,p0__4_n_109,p0__4_n_110,p0__4_n_111,p0__4_n_112,p0__4_n_113,p0__4_n_114,p0__4_n_115,p0__4_n_116,p0__4_n_117,p0__4_n_118,p0__4_n_119,p0__4_n_120,p0__4_n_121,p0__4_n_122,p0__4_n_123,p0__4_n_124,p0__4_n_125,p0__4_n_126,p0__4_n_127,p0__4_n_128,p0__4_n_129,p0__4_n_130,p0__4_n_131,p0__4_n_132,p0__4_n_133,p0__4_n_134,p0__4_n_135,p0__4_n_136,p0__4_n_137,p0__4_n_138,p0__4_n_139,p0__4_n_140,p0__4_n_141,p0__4_n_142,p0__4_n_143,p0__4_n_144,p0__4_n_145,p0__4_n_146,p0__4_n_147,p0__4_n_148,p0__4_n_149,p0__4_n_150,p0__4_n_151,p0__4_n_152,p0__4_n_153}),
        .PCOUT({p0__5_n_106,p0__5_n_107,p0__5_n_108,p0__5_n_109,p0__5_n_110,p0__5_n_111,p0__5_n_112,p0__5_n_113,p0__5_n_114,p0__5_n_115,p0__5_n_116,p0__5_n_117,p0__5_n_118,p0__5_n_119,p0__5_n_120,p0__5_n_121,p0__5_n_122,p0__5_n_123,p0__5_n_124,p0__5_n_125,p0__5_n_126,p0__5_n_127,p0__5_n_128,p0__5_n_129,p0__5_n_130,p0__5_n_131,p0__5_n_132,p0__5_n_133,p0__5_n_134,p0__5_n_135,p0__5_n_136,p0__5_n_137,p0__5_n_138,p0__5_n_139,p0__5_n_140,p0__5_n_141,p0__5_n_142,p0__5_n_143,p0__5_n_144,p0__5_n_145,p0__5_n_146,p0__5_n_147,p0__5_n_148,p0__5_n_149,p0__5_n_150,p0__5_n_151,p0__5_n_152,p0__5_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__5_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({p0__5_n_24,p0__5_n_25,p0__5_n_26,p0__5_n_27,p0__5_n_28,p0__5_n_29,p0__5_n_30,p0__5_n_31,p0__5_n_32,p0__5_n_33,p0__5_n_34,p0__5_n_35,p0__5_n_36,p0__5_n_37,p0__5_n_38,p0__5_n_39,p0__5_n_40,p0__5_n_41,p0__5_n_42,p0__5_n_43,p0__5_n_44,p0__5_n_45,p0__5_n_46,p0__5_n_47,p0__5_n_48,p0__5_n_49,p0__5_n_50,p0__5_n_51,p0__5_n_52,p0__5_n_53}),
        .ACOUT(NLW_p0__6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__6_OVERFLOW_UNCONNECTED),
        .P({p0__6_n_58,p0__6_n_59,p0__6_n_60,p0__6_n_61,p0__6_n_62,p0__6_n_63,p0__6_n_64,p0__6_n_65,p0__6_n_66,p0__6_n_67,p0__6_n_68,p0__6_n_69,p0__6_n_70,p0__6_n_71,p0__6_n_72,p0__6_n_73,p0__6_n_74,p0__6_n_75,p0__6_n_76,p0__6_n_77,p0__6_n_78,p0__6_n_79,p0__6_n_80,p0__6_n_81,p0__6_n_82,p0__6_n_83,p0__6_n_84,p0__6_n_85,p0__6_n_86,p0__6_n_87,p0__6_n_88,p0__6_n_89,p0__6_n_90,p0__6_n_91,p0__6_n_92,p0__6_n_93,p0__6_n_94,p0__6_n_95,p0__6_n_96,p0__6_n_97,p0__6_n_98,p0__6_n_99,p0__6_n_100,p0__6_n_101,p0__6_n_102,p0__6_n_103,p0__6_n_104,p0__6_n_105}),
        .PATTERNBDETECT(NLW_p0__6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__6_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__5_n_106,p0__5_n_107,p0__5_n_108,p0__5_n_109,p0__5_n_110,p0__5_n_111,p0__5_n_112,p0__5_n_113,p0__5_n_114,p0__5_n_115,p0__5_n_116,p0__5_n_117,p0__5_n_118,p0__5_n_119,p0__5_n_120,p0__5_n_121,p0__5_n_122,p0__5_n_123,p0__5_n_124,p0__5_n_125,p0__5_n_126,p0__5_n_127,p0__5_n_128,p0__5_n_129,p0__5_n_130,p0__5_n_131,p0__5_n_132,p0__5_n_133,p0__5_n_134,p0__5_n_135,p0__5_n_136,p0__5_n_137,p0__5_n_138,p0__5_n_139,p0__5_n_140,p0__5_n_141,p0__5_n_142,p0__5_n_143,p0__5_n_144,p0__5_n_145,p0__5_n_146,p0__5_n_147,p0__5_n_148,p0__5_n_149,p0__5_n_150,p0__5_n_151,p0__5_n_152,p0__5_n_153}),
        .PCOUT(NLW_p0__6_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__6_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "gen_mult" *) 
module system_SPGD_SYS_0_gen_mult_6
   (O,
    p0__14_0,
    p0__14_1,
    \int_data_reg_reg[11] ,
    \int_data_reg_reg[15] ,
    \int_data_reg_reg[19] ,
    \int_data_reg_reg[23] ,
    \int_data_reg_reg[27] ,
    \int_data_reg_reg[31] ,
    \int_data_reg_reg[35] ,
    \int_data_reg_reg[39] ,
    \int_data_reg_reg[43] ,
    \int_data_reg_reg[47] ,
    \int_data_reg_reg[51] ,
    \int_data_reg_reg[55] ,
    \int_data_reg_reg[59] ,
    \int_data_reg_reg[63] ,
    int_DELTA_U_WRT,
    ADC_CLK,
    p0__14_2,
    p0,
    p0_0,
    S,
    int_data_reg_reg);
  output [0:0]O;
  output [3:0]p0__14_0;
  output [3:0]p0__14_1;
  output [3:0]\int_data_reg_reg[11] ;
  output [3:0]\int_data_reg_reg[15] ;
  output [3:0]\int_data_reg_reg[19] ;
  output [3:0]\int_data_reg_reg[23] ;
  output [3:0]\int_data_reg_reg[27] ;
  output [3:0]\int_data_reg_reg[31] ;
  output [3:0]\int_data_reg_reg[35] ;
  output [3:0]\int_data_reg_reg[39] ;
  output [3:0]\int_data_reg_reg[43] ;
  output [3:0]\int_data_reg_reg[47] ;
  output [3:0]\int_data_reg_reg[51] ;
  output [3:0]\int_data_reg_reg[55] ;
  output [3:0]\int_data_reg_reg[59] ;
  output [3:0]\int_data_reg_reg[63] ;
  input int_DELTA_U_WRT;
  input ADC_CLK;
  input p0__14_2;
  input [61:0]p0;
  input [46:0]p0_0;
  input [0:0]S;
  input [62:0]int_data_reg_reg;

  wire ADC_CLK;
  wire [0:0]O;
  wire [0:0]S;
  wire [62:0]b__0;
  wire int_DELTA_U_WRT;
  wire \int_data_reg[0]_i_2__0_n_0 ;
  wire \int_data_reg[0]_i_3__0_n_0 ;
  wire \int_data_reg[0]_i_4__0_n_0 ;
  wire \int_data_reg[0]_i_5__0_n_0 ;
  wire \int_data_reg[12]_i_2__0_n_0 ;
  wire \int_data_reg[12]_i_3__0_n_0 ;
  wire \int_data_reg[12]_i_4__0_n_0 ;
  wire \int_data_reg[12]_i_5__0_n_0 ;
  wire \int_data_reg[16]_i_2__0_n_0 ;
  wire \int_data_reg[16]_i_3__0_n_0 ;
  wire \int_data_reg[16]_i_4__0_n_0 ;
  wire \int_data_reg[16]_i_5__0_n_0 ;
  wire \int_data_reg[20]_i_2__0_n_0 ;
  wire \int_data_reg[20]_i_3__0_n_0 ;
  wire \int_data_reg[20]_i_4__0_n_0 ;
  wire \int_data_reg[20]_i_5__0_n_0 ;
  wire \int_data_reg[24]_i_2__0_n_0 ;
  wire \int_data_reg[24]_i_3__0_n_0 ;
  wire \int_data_reg[24]_i_4__0_n_0 ;
  wire \int_data_reg[24]_i_5__0_n_0 ;
  wire \int_data_reg[28]_i_2__0_n_0 ;
  wire \int_data_reg[28]_i_3__0_n_0 ;
  wire \int_data_reg[28]_i_4__0_n_0 ;
  wire \int_data_reg[28]_i_5__0_n_0 ;
  wire \int_data_reg[32]_i_2__0_n_0 ;
  wire \int_data_reg[32]_i_3__0_n_0 ;
  wire \int_data_reg[32]_i_4__0_n_0 ;
  wire \int_data_reg[32]_i_5__0_n_0 ;
  wire \int_data_reg[36]_i_2__0_n_0 ;
  wire \int_data_reg[36]_i_3__0_n_0 ;
  wire \int_data_reg[36]_i_4__0_n_0 ;
  wire \int_data_reg[36]_i_5__0_n_0 ;
  wire \int_data_reg[40]_i_2__0_n_0 ;
  wire \int_data_reg[40]_i_3__0_n_0 ;
  wire \int_data_reg[40]_i_4__0_n_0 ;
  wire \int_data_reg[40]_i_5__0_n_0 ;
  wire \int_data_reg[44]_i_2__0_n_0 ;
  wire \int_data_reg[44]_i_3__0_n_0 ;
  wire \int_data_reg[44]_i_4__0_n_0 ;
  wire \int_data_reg[44]_i_5__0_n_0 ;
  wire \int_data_reg[48]_i_2__0_n_0 ;
  wire \int_data_reg[48]_i_3__0_n_0 ;
  wire \int_data_reg[48]_i_4__0_n_0 ;
  wire \int_data_reg[48]_i_5__0_n_0 ;
  wire \int_data_reg[4]_i_2__0_n_0 ;
  wire \int_data_reg[4]_i_3__0_n_0 ;
  wire \int_data_reg[4]_i_4__0_n_0 ;
  wire \int_data_reg[4]_i_5__0_n_0 ;
  wire \int_data_reg[52]_i_2__0_n_0 ;
  wire \int_data_reg[52]_i_3__0_n_0 ;
  wire \int_data_reg[52]_i_4__0_n_0 ;
  wire \int_data_reg[52]_i_5__0_n_0 ;
  wire \int_data_reg[56]_i_2__0_n_0 ;
  wire \int_data_reg[56]_i_3__0_n_0 ;
  wire \int_data_reg[56]_i_4__0_n_0 ;
  wire \int_data_reg[56]_i_5__0_n_0 ;
  wire \int_data_reg[60]_i_3__0_n_0 ;
  wire \int_data_reg[60]_i_4__0_n_0 ;
  wire \int_data_reg[60]_i_5__0_n_0 ;
  wire \int_data_reg[8]_i_2__0_n_0 ;
  wire \int_data_reg[8]_i_3__0_n_0 ;
  wire \int_data_reg[8]_i_4__0_n_0 ;
  wire \int_data_reg[8]_i_5__0_n_0 ;
  wire [62:0]int_data_reg_reg;
  wire \int_data_reg_reg[0]_i_1__0_n_0 ;
  wire \int_data_reg_reg[0]_i_1__0_n_1 ;
  wire \int_data_reg_reg[0]_i_1__0_n_2 ;
  wire \int_data_reg_reg[0]_i_1__0_n_3 ;
  wire [3:0]\int_data_reg_reg[11] ;
  wire \int_data_reg_reg[12]_i_1__0_n_0 ;
  wire \int_data_reg_reg[12]_i_1__0_n_1 ;
  wire \int_data_reg_reg[12]_i_1__0_n_2 ;
  wire \int_data_reg_reg[12]_i_1__0_n_3 ;
  wire [3:0]\int_data_reg_reg[15] ;
  wire \int_data_reg_reg[16]_i_1__0_n_0 ;
  wire \int_data_reg_reg[16]_i_1__0_n_1 ;
  wire \int_data_reg_reg[16]_i_1__0_n_2 ;
  wire \int_data_reg_reg[16]_i_1__0_n_3 ;
  wire [3:0]\int_data_reg_reg[19] ;
  wire \int_data_reg_reg[20]_i_1__0_n_0 ;
  wire \int_data_reg_reg[20]_i_1__0_n_1 ;
  wire \int_data_reg_reg[20]_i_1__0_n_2 ;
  wire \int_data_reg_reg[20]_i_1__0_n_3 ;
  wire [3:0]\int_data_reg_reg[23] ;
  wire \int_data_reg_reg[24]_i_1__0_n_0 ;
  wire \int_data_reg_reg[24]_i_1__0_n_1 ;
  wire \int_data_reg_reg[24]_i_1__0_n_2 ;
  wire \int_data_reg_reg[24]_i_1__0_n_3 ;
  wire [3:0]\int_data_reg_reg[27] ;
  wire \int_data_reg_reg[28]_i_1__0_n_0 ;
  wire \int_data_reg_reg[28]_i_1__0_n_1 ;
  wire \int_data_reg_reg[28]_i_1__0_n_2 ;
  wire \int_data_reg_reg[28]_i_1__0_n_3 ;
  wire [3:0]\int_data_reg_reg[31] ;
  wire \int_data_reg_reg[32]_i_1__0_n_0 ;
  wire \int_data_reg_reg[32]_i_1__0_n_1 ;
  wire \int_data_reg_reg[32]_i_1__0_n_2 ;
  wire \int_data_reg_reg[32]_i_1__0_n_3 ;
  wire [3:0]\int_data_reg_reg[35] ;
  wire \int_data_reg_reg[36]_i_1__0_n_0 ;
  wire \int_data_reg_reg[36]_i_1__0_n_1 ;
  wire \int_data_reg_reg[36]_i_1__0_n_2 ;
  wire \int_data_reg_reg[36]_i_1__0_n_3 ;
  wire [3:0]\int_data_reg_reg[39] ;
  wire \int_data_reg_reg[40]_i_1__0_n_0 ;
  wire \int_data_reg_reg[40]_i_1__0_n_1 ;
  wire \int_data_reg_reg[40]_i_1__0_n_2 ;
  wire \int_data_reg_reg[40]_i_1__0_n_3 ;
  wire [3:0]\int_data_reg_reg[43] ;
  wire \int_data_reg_reg[44]_i_1__0_n_0 ;
  wire \int_data_reg_reg[44]_i_1__0_n_1 ;
  wire \int_data_reg_reg[44]_i_1__0_n_2 ;
  wire \int_data_reg_reg[44]_i_1__0_n_3 ;
  wire [3:0]\int_data_reg_reg[47] ;
  wire \int_data_reg_reg[48]_i_1__0_n_0 ;
  wire \int_data_reg_reg[48]_i_1__0_n_1 ;
  wire \int_data_reg_reg[48]_i_1__0_n_2 ;
  wire \int_data_reg_reg[48]_i_1__0_n_3 ;
  wire \int_data_reg_reg[4]_i_1__0_n_0 ;
  wire \int_data_reg_reg[4]_i_1__0_n_1 ;
  wire \int_data_reg_reg[4]_i_1__0_n_2 ;
  wire \int_data_reg_reg[4]_i_1__0_n_3 ;
  wire [3:0]\int_data_reg_reg[51] ;
  wire \int_data_reg_reg[52]_i_1__0_n_0 ;
  wire \int_data_reg_reg[52]_i_1__0_n_1 ;
  wire \int_data_reg_reg[52]_i_1__0_n_2 ;
  wire \int_data_reg_reg[52]_i_1__0_n_3 ;
  wire [3:0]\int_data_reg_reg[55] ;
  wire \int_data_reg_reg[56]_i_1__0_n_0 ;
  wire \int_data_reg_reg[56]_i_1__0_n_1 ;
  wire \int_data_reg_reg[56]_i_1__0_n_2 ;
  wire \int_data_reg_reg[56]_i_1__0_n_3 ;
  wire [3:0]\int_data_reg_reg[59] ;
  wire \int_data_reg_reg[60]_i_1__0_n_1 ;
  wire \int_data_reg_reg[60]_i_1__0_n_2 ;
  wire \int_data_reg_reg[60]_i_1__0_n_3 ;
  wire [3:0]\int_data_reg_reg[63] ;
  wire \int_data_reg_reg[8]_i_1__0_n_0 ;
  wire \int_data_reg_reg[8]_i_1__0_n_1 ;
  wire \int_data_reg_reg[8]_i_1__0_n_2 ;
  wire \int_data_reg_reg[8]_i_1__0_n_3 ;
  wire [61:0]p0;
  wire [46:0]p0_0;
  wire p0__0__0_n_106;
  wire p0__0__0_n_107;
  wire p0__0__0_n_108;
  wire p0__0__0_n_109;
  wire p0__0__0_n_110;
  wire p0__0__0_n_111;
  wire p0__0__0_n_112;
  wire p0__0__0_n_113;
  wire p0__0__0_n_114;
  wire p0__0__0_n_115;
  wire p0__0__0_n_116;
  wire p0__0__0_n_117;
  wire p0__0__0_n_118;
  wire p0__0__0_n_119;
  wire p0__0__0_n_120;
  wire p0__0__0_n_121;
  wire p0__0__0_n_122;
  wire p0__0__0_n_123;
  wire p0__0__0_n_124;
  wire p0__0__0_n_125;
  wire p0__0__0_n_126;
  wire p0__0__0_n_127;
  wire p0__0__0_n_128;
  wire p0__0__0_n_129;
  wire p0__0__0_n_130;
  wire p0__0__0_n_131;
  wire p0__0__0_n_132;
  wire p0__0__0_n_133;
  wire p0__0__0_n_134;
  wire p0__0__0_n_135;
  wire p0__0__0_n_136;
  wire p0__0__0_n_137;
  wire p0__0__0_n_138;
  wire p0__0__0_n_139;
  wire p0__0__0_n_140;
  wire p0__0__0_n_141;
  wire p0__0__0_n_142;
  wire p0__0__0_n_143;
  wire p0__0__0_n_144;
  wire p0__0__0_n_145;
  wire p0__0__0_n_146;
  wire p0__0__0_n_147;
  wire p0__0__0_n_148;
  wire p0__0__0_n_149;
  wire p0__0__0_n_150;
  wire p0__0__0_n_151;
  wire p0__0__0_n_152;
  wire p0__0__0_n_153;
  wire p0__0_n_100;
  wire p0__0_n_101;
  wire p0__0_n_102;
  wire p0__0_n_103;
  wire p0__0_n_104;
  wire p0__0_n_105;
  wire p0__0_n_106;
  wire p0__0_n_107;
  wire p0__0_n_108;
  wire p0__0_n_109;
  wire p0__0_n_110;
  wire p0__0_n_111;
  wire p0__0_n_112;
  wire p0__0_n_113;
  wire p0__0_n_114;
  wire p0__0_n_115;
  wire p0__0_n_116;
  wire p0__0_n_117;
  wire p0__0_n_118;
  wire p0__0_n_119;
  wire p0__0_n_120;
  wire p0__0_n_121;
  wire p0__0_n_122;
  wire p0__0_n_123;
  wire p0__0_n_124;
  wire p0__0_n_125;
  wire p0__0_n_126;
  wire p0__0_n_127;
  wire p0__0_n_128;
  wire p0__0_n_129;
  wire p0__0_n_130;
  wire p0__0_n_131;
  wire p0__0_n_132;
  wire p0__0_n_133;
  wire p0__0_n_134;
  wire p0__0_n_135;
  wire p0__0_n_136;
  wire p0__0_n_137;
  wire p0__0_n_138;
  wire p0__0_n_139;
  wire p0__0_n_140;
  wire p0__0_n_141;
  wire p0__0_n_142;
  wire p0__0_n_143;
  wire p0__0_n_144;
  wire p0__0_n_145;
  wire p0__0_n_146;
  wire p0__0_n_147;
  wire p0__0_n_148;
  wire p0__0_n_149;
  wire p0__0_n_150;
  wire p0__0_n_151;
  wire p0__0_n_152;
  wire p0__0_n_153;
  wire p0__0_n_58;
  wire p0__0_n_59;
  wire p0__0_n_60;
  wire p0__0_n_61;
  wire p0__0_n_62;
  wire p0__0_n_63;
  wire p0__0_n_64;
  wire p0__0_n_65;
  wire p0__0_n_66;
  wire p0__0_n_67;
  wire p0__0_n_68;
  wire p0__0_n_69;
  wire p0__0_n_70;
  wire p0__0_n_71;
  wire p0__0_n_72;
  wire p0__0_n_73;
  wire p0__0_n_74;
  wire p0__0_n_75;
  wire p0__0_n_76;
  wire p0__0_n_77;
  wire p0__0_n_78;
  wire p0__0_n_79;
  wire p0__0_n_80;
  wire p0__0_n_81;
  wire p0__0_n_82;
  wire p0__0_n_83;
  wire p0__0_n_84;
  wire p0__0_n_85;
  wire p0__0_n_86;
  wire p0__0_n_87;
  wire p0__0_n_88;
  wire p0__0_n_89;
  wire p0__0_n_90;
  wire p0__0_n_91;
  wire p0__0_n_92;
  wire p0__0_n_93;
  wire p0__0_n_94;
  wire p0__0_n_95;
  wire p0__0_n_96;
  wire p0__0_n_97;
  wire p0__0_n_98;
  wire p0__0_n_99;
  wire p0__10_n_100;
  wire p0__10_n_101;
  wire p0__10_n_102;
  wire p0__10_n_103;
  wire p0__10_n_104;
  wire p0__10_n_105;
  wire p0__10_n_58;
  wire p0__10_n_59;
  wire p0__10_n_60;
  wire p0__10_n_61;
  wire p0__10_n_62;
  wire p0__10_n_63;
  wire p0__10_n_64;
  wire p0__10_n_65;
  wire p0__10_n_66;
  wire p0__10_n_67;
  wire p0__10_n_68;
  wire p0__10_n_69;
  wire p0__10_n_70;
  wire p0__10_n_71;
  wire p0__10_n_72;
  wire p0__10_n_73;
  wire p0__10_n_74;
  wire p0__10_n_75;
  wire p0__10_n_76;
  wire p0__10_n_77;
  wire p0__10_n_78;
  wire p0__10_n_79;
  wire p0__10_n_80;
  wire p0__10_n_81;
  wire p0__10_n_82;
  wire p0__10_n_83;
  wire p0__10_n_84;
  wire p0__10_n_85;
  wire p0__10_n_86;
  wire p0__10_n_87;
  wire p0__10_n_88;
  wire p0__10_n_89;
  wire p0__10_n_90;
  wire p0__10_n_91;
  wire p0__10_n_92;
  wire p0__10_n_93;
  wire p0__10_n_94;
  wire p0__10_n_95;
  wire p0__10_n_96;
  wire p0__10_n_97;
  wire p0__10_n_98;
  wire p0__10_n_99;
  wire p0__11_n_100;
  wire p0__11_n_101;
  wire p0__11_n_102;
  wire p0__11_n_103;
  wire p0__11_n_104;
  wire p0__11_n_105;
  wire p0__11_n_106;
  wire p0__11_n_107;
  wire p0__11_n_108;
  wire p0__11_n_109;
  wire p0__11_n_110;
  wire p0__11_n_111;
  wire p0__11_n_112;
  wire p0__11_n_113;
  wire p0__11_n_114;
  wire p0__11_n_115;
  wire p0__11_n_116;
  wire p0__11_n_117;
  wire p0__11_n_118;
  wire p0__11_n_119;
  wire p0__11_n_120;
  wire p0__11_n_121;
  wire p0__11_n_122;
  wire p0__11_n_123;
  wire p0__11_n_124;
  wire p0__11_n_125;
  wire p0__11_n_126;
  wire p0__11_n_127;
  wire p0__11_n_128;
  wire p0__11_n_129;
  wire p0__11_n_130;
  wire p0__11_n_131;
  wire p0__11_n_132;
  wire p0__11_n_133;
  wire p0__11_n_134;
  wire p0__11_n_135;
  wire p0__11_n_136;
  wire p0__11_n_137;
  wire p0__11_n_138;
  wire p0__11_n_139;
  wire p0__11_n_140;
  wire p0__11_n_141;
  wire p0__11_n_142;
  wire p0__11_n_143;
  wire p0__11_n_144;
  wire p0__11_n_145;
  wire p0__11_n_146;
  wire p0__11_n_147;
  wire p0__11_n_148;
  wire p0__11_n_149;
  wire p0__11_n_150;
  wire p0__11_n_151;
  wire p0__11_n_152;
  wire p0__11_n_153;
  wire p0__11_n_58;
  wire p0__11_n_59;
  wire p0__11_n_60;
  wire p0__11_n_61;
  wire p0__11_n_62;
  wire p0__11_n_63;
  wire p0__11_n_64;
  wire p0__11_n_65;
  wire p0__11_n_66;
  wire p0__11_n_67;
  wire p0__11_n_68;
  wire p0__11_n_69;
  wire p0__11_n_70;
  wire p0__11_n_71;
  wire p0__11_n_72;
  wire p0__11_n_73;
  wire p0__11_n_74;
  wire p0__11_n_75;
  wire p0__11_n_76;
  wire p0__11_n_77;
  wire p0__11_n_78;
  wire p0__11_n_79;
  wire p0__11_n_80;
  wire p0__11_n_81;
  wire p0__11_n_82;
  wire p0__11_n_83;
  wire p0__11_n_84;
  wire p0__11_n_85;
  wire p0__11_n_86;
  wire p0__11_n_87;
  wire p0__11_n_88;
  wire p0__11_n_89;
  wire p0__11_n_90;
  wire p0__11_n_91;
  wire p0__11_n_92;
  wire p0__11_n_93;
  wire p0__11_n_94;
  wire p0__11_n_95;
  wire p0__11_n_96;
  wire p0__11_n_97;
  wire p0__11_n_98;
  wire p0__11_n_99;
  wire p0__12_n_106;
  wire p0__12_n_107;
  wire p0__12_n_108;
  wire p0__12_n_109;
  wire p0__12_n_110;
  wire p0__12_n_111;
  wire p0__12_n_112;
  wire p0__12_n_113;
  wire p0__12_n_114;
  wire p0__12_n_115;
  wire p0__12_n_116;
  wire p0__12_n_117;
  wire p0__12_n_118;
  wire p0__12_n_119;
  wire p0__12_n_120;
  wire p0__12_n_121;
  wire p0__12_n_122;
  wire p0__12_n_123;
  wire p0__12_n_124;
  wire p0__12_n_125;
  wire p0__12_n_126;
  wire p0__12_n_127;
  wire p0__12_n_128;
  wire p0__12_n_129;
  wire p0__12_n_130;
  wire p0__12_n_131;
  wire p0__12_n_132;
  wire p0__12_n_133;
  wire p0__12_n_134;
  wire p0__12_n_135;
  wire p0__12_n_136;
  wire p0__12_n_137;
  wire p0__12_n_138;
  wire p0__12_n_139;
  wire p0__12_n_140;
  wire p0__12_n_141;
  wire p0__12_n_142;
  wire p0__12_n_143;
  wire p0__12_n_144;
  wire p0__12_n_145;
  wire p0__12_n_146;
  wire p0__12_n_147;
  wire p0__12_n_148;
  wire p0__12_n_149;
  wire p0__12_n_150;
  wire p0__12_n_151;
  wire p0__12_n_152;
  wire p0__12_n_153;
  wire p0__13_n_100;
  wire p0__13_n_101;
  wire p0__13_n_102;
  wire p0__13_n_103;
  wire p0__13_n_104;
  wire p0__13_n_105;
  wire p0__13_n_106;
  wire p0__13_n_107;
  wire p0__13_n_108;
  wire p0__13_n_109;
  wire p0__13_n_110;
  wire p0__13_n_111;
  wire p0__13_n_112;
  wire p0__13_n_113;
  wire p0__13_n_114;
  wire p0__13_n_115;
  wire p0__13_n_116;
  wire p0__13_n_117;
  wire p0__13_n_118;
  wire p0__13_n_119;
  wire p0__13_n_120;
  wire p0__13_n_121;
  wire p0__13_n_122;
  wire p0__13_n_123;
  wire p0__13_n_124;
  wire p0__13_n_125;
  wire p0__13_n_126;
  wire p0__13_n_127;
  wire p0__13_n_128;
  wire p0__13_n_129;
  wire p0__13_n_130;
  wire p0__13_n_131;
  wire p0__13_n_132;
  wire p0__13_n_133;
  wire p0__13_n_134;
  wire p0__13_n_135;
  wire p0__13_n_136;
  wire p0__13_n_137;
  wire p0__13_n_138;
  wire p0__13_n_139;
  wire p0__13_n_140;
  wire p0__13_n_141;
  wire p0__13_n_142;
  wire p0__13_n_143;
  wire p0__13_n_144;
  wire p0__13_n_145;
  wire p0__13_n_146;
  wire p0__13_n_147;
  wire p0__13_n_148;
  wire p0__13_n_149;
  wire p0__13_n_150;
  wire p0__13_n_151;
  wire p0__13_n_152;
  wire p0__13_n_153;
  wire p0__13_n_58;
  wire p0__13_n_59;
  wire p0__13_n_60;
  wire p0__13_n_61;
  wire p0__13_n_62;
  wire p0__13_n_63;
  wire p0__13_n_64;
  wire p0__13_n_65;
  wire p0__13_n_66;
  wire p0__13_n_67;
  wire p0__13_n_68;
  wire p0__13_n_69;
  wire p0__13_n_70;
  wire p0__13_n_71;
  wire p0__13_n_72;
  wire p0__13_n_73;
  wire p0__13_n_74;
  wire p0__13_n_75;
  wire p0__13_n_76;
  wire p0__13_n_77;
  wire p0__13_n_78;
  wire p0__13_n_79;
  wire p0__13_n_80;
  wire p0__13_n_81;
  wire p0__13_n_82;
  wire p0__13_n_83;
  wire p0__13_n_84;
  wire p0__13_n_85;
  wire p0__13_n_86;
  wire p0__13_n_87;
  wire p0__13_n_88;
  wire p0__13_n_89;
  wire p0__13_n_90;
  wire p0__13_n_91;
  wire p0__13_n_92;
  wire p0__13_n_93;
  wire p0__13_n_94;
  wire p0__13_n_95;
  wire p0__13_n_96;
  wire p0__13_n_97;
  wire p0__13_n_98;
  wire p0__13_n_99;
  wire [3:0]p0__14_0;
  wire [3:0]p0__14_1;
  wire p0__14_2;
  wire p0__14_n_100;
  wire p0__14_n_101;
  wire p0__14_n_102;
  wire p0__14_n_103;
  wire p0__14_n_104;
  wire p0__14_n_105;
  wire p0__14_n_58;
  wire p0__14_n_59;
  wire p0__14_n_60;
  wire p0__14_n_61;
  wire p0__14_n_62;
  wire p0__14_n_63;
  wire p0__14_n_64;
  wire p0__14_n_65;
  wire p0__14_n_66;
  wire p0__14_n_67;
  wire p0__14_n_68;
  wire p0__14_n_69;
  wire p0__14_n_70;
  wire p0__14_n_71;
  wire p0__14_n_72;
  wire p0__14_n_73;
  wire p0__14_n_74;
  wire p0__14_n_75;
  wire p0__14_n_76;
  wire p0__14_n_77;
  wire p0__14_n_78;
  wire p0__14_n_79;
  wire p0__14_n_80;
  wire p0__14_n_81;
  wire p0__14_n_82;
  wire p0__14_n_83;
  wire p0__14_n_84;
  wire p0__14_n_85;
  wire p0__14_n_86;
  wire p0__14_n_87;
  wire p0__14_n_88;
  wire p0__14_n_89;
  wire p0__14_n_90;
  wire p0__14_n_91;
  wire p0__14_n_92;
  wire p0__14_n_93;
  wire p0__14_n_94;
  wire p0__14_n_95;
  wire p0__14_n_96;
  wire p0__14_n_97;
  wire p0__14_n_98;
  wire p0__14_n_99;
  wire p0__1_n_100;
  wire p0__1_n_101;
  wire p0__1_n_102;
  wire p0__1_n_103;
  wire p0__1_n_104;
  wire p0__1_n_105;
  wire p0__1_n_106;
  wire p0__1_n_107;
  wire p0__1_n_108;
  wire p0__1_n_109;
  wire p0__1_n_110;
  wire p0__1_n_111;
  wire p0__1_n_112;
  wire p0__1_n_113;
  wire p0__1_n_114;
  wire p0__1_n_115;
  wire p0__1_n_116;
  wire p0__1_n_117;
  wire p0__1_n_118;
  wire p0__1_n_119;
  wire p0__1_n_120;
  wire p0__1_n_121;
  wire p0__1_n_122;
  wire p0__1_n_123;
  wire p0__1_n_124;
  wire p0__1_n_125;
  wire p0__1_n_126;
  wire p0__1_n_127;
  wire p0__1_n_128;
  wire p0__1_n_129;
  wire p0__1_n_130;
  wire p0__1_n_131;
  wire p0__1_n_132;
  wire p0__1_n_133;
  wire p0__1_n_134;
  wire p0__1_n_135;
  wire p0__1_n_136;
  wire p0__1_n_137;
  wire p0__1_n_138;
  wire p0__1_n_139;
  wire p0__1_n_140;
  wire p0__1_n_141;
  wire p0__1_n_142;
  wire p0__1_n_143;
  wire p0__1_n_144;
  wire p0__1_n_145;
  wire p0__1_n_146;
  wire p0__1_n_147;
  wire p0__1_n_148;
  wire p0__1_n_149;
  wire p0__1_n_150;
  wire p0__1_n_151;
  wire p0__1_n_152;
  wire p0__1_n_153;
  wire p0__1_n_58;
  wire p0__1_n_59;
  wire p0__1_n_60;
  wire p0__1_n_61;
  wire p0__1_n_62;
  wire p0__1_n_63;
  wire p0__1_n_64;
  wire p0__1_n_65;
  wire p0__1_n_66;
  wire p0__1_n_67;
  wire p0__1_n_68;
  wire p0__1_n_69;
  wire p0__1_n_70;
  wire p0__1_n_71;
  wire p0__1_n_72;
  wire p0__1_n_73;
  wire p0__1_n_74;
  wire p0__1_n_75;
  wire p0__1_n_76;
  wire p0__1_n_77;
  wire p0__1_n_78;
  wire p0__1_n_79;
  wire p0__1_n_80;
  wire p0__1_n_81;
  wire p0__1_n_82;
  wire p0__1_n_83;
  wire p0__1_n_84;
  wire p0__1_n_85;
  wire p0__1_n_86;
  wire p0__1_n_87;
  wire p0__1_n_88;
  wire p0__1_n_89;
  wire p0__1_n_90;
  wire p0__1_n_91;
  wire p0__1_n_92;
  wire p0__1_n_93;
  wire p0__1_n_94;
  wire p0__1_n_95;
  wire p0__1_n_96;
  wire p0__1_n_97;
  wire p0__1_n_98;
  wire p0__1_n_99;
  wire p0__2_n_100;
  wire p0__2_n_101;
  wire p0__2_n_102;
  wire p0__2_n_103;
  wire p0__2_n_104;
  wire p0__2_n_105;
  wire p0__2_n_58;
  wire p0__2_n_59;
  wire p0__2_n_60;
  wire p0__2_n_61;
  wire p0__2_n_62;
  wire p0__2_n_63;
  wire p0__2_n_64;
  wire p0__2_n_65;
  wire p0__2_n_66;
  wire p0__2_n_67;
  wire p0__2_n_68;
  wire p0__2_n_69;
  wire p0__2_n_70;
  wire p0__2_n_71;
  wire p0__2_n_72;
  wire p0__2_n_73;
  wire p0__2_n_74;
  wire p0__2_n_75;
  wire p0__2_n_76;
  wire p0__2_n_77;
  wire p0__2_n_78;
  wire p0__2_n_79;
  wire p0__2_n_80;
  wire p0__2_n_81;
  wire p0__2_n_82;
  wire p0__2_n_83;
  wire p0__2_n_84;
  wire p0__2_n_85;
  wire p0__2_n_86;
  wire p0__2_n_87;
  wire p0__2_n_88;
  wire p0__2_n_89;
  wire p0__2_n_90;
  wire p0__2_n_91;
  wire p0__2_n_92;
  wire p0__2_n_93;
  wire p0__2_n_94;
  wire p0__2_n_95;
  wire p0__2_n_96;
  wire p0__2_n_97;
  wire p0__2_n_98;
  wire p0__2_n_99;
  wire p0__3_n_106;
  wire p0__3_n_107;
  wire p0__3_n_108;
  wire p0__3_n_109;
  wire p0__3_n_110;
  wire p0__3_n_111;
  wire p0__3_n_112;
  wire p0__3_n_113;
  wire p0__3_n_114;
  wire p0__3_n_115;
  wire p0__3_n_116;
  wire p0__3_n_117;
  wire p0__3_n_118;
  wire p0__3_n_119;
  wire p0__3_n_120;
  wire p0__3_n_121;
  wire p0__3_n_122;
  wire p0__3_n_123;
  wire p0__3_n_124;
  wire p0__3_n_125;
  wire p0__3_n_126;
  wire p0__3_n_127;
  wire p0__3_n_128;
  wire p0__3_n_129;
  wire p0__3_n_130;
  wire p0__3_n_131;
  wire p0__3_n_132;
  wire p0__3_n_133;
  wire p0__3_n_134;
  wire p0__3_n_135;
  wire p0__3_n_136;
  wire p0__3_n_137;
  wire p0__3_n_138;
  wire p0__3_n_139;
  wire p0__3_n_140;
  wire p0__3_n_141;
  wire p0__3_n_142;
  wire p0__3_n_143;
  wire p0__3_n_144;
  wire p0__3_n_145;
  wire p0__3_n_146;
  wire p0__3_n_147;
  wire p0__3_n_148;
  wire p0__3_n_149;
  wire p0__3_n_150;
  wire p0__3_n_151;
  wire p0__3_n_152;
  wire p0__3_n_153;
  wire p0__4_carry__0_i_1__0_n_0;
  wire p0__4_carry__0_i_2__0_n_0;
  wire p0__4_carry__0_i_3__0_n_0;
  wire p0__4_carry__0_i_4__0_n_0;
  wire p0__4_carry__0_n_0;
  wire p0__4_carry__0_n_1;
  wire p0__4_carry__0_n_2;
  wire p0__4_carry__0_n_3;
  wire p0__4_carry__10_i_10__0_n_0;
  wire p0__4_carry__10_i_11__0_n_0;
  wire p0__4_carry__10_i_12__0_n_0;
  wire p0__4_carry__10_i_1__0_n_0;
  wire p0__4_carry__10_i_2__0_n_0;
  wire p0__4_carry__10_i_3__0_n_0;
  wire p0__4_carry__10_i_4__0_n_0;
  wire p0__4_carry__10_i_5__0_n_0;
  wire p0__4_carry__10_i_6__0_n_0;
  wire p0__4_carry__10_i_7__0_n_0;
  wire p0__4_carry__10_i_8__0_n_0;
  wire p0__4_carry__10_i_9__0_n_0;
  wire p0__4_carry__10_n_0;
  wire p0__4_carry__10_n_1;
  wire p0__4_carry__10_n_2;
  wire p0__4_carry__10_n_3;
  wire p0__4_carry__11_i_10__0_n_0;
  wire p0__4_carry__11_i_11__0_n_0;
  wire p0__4_carry__11_i_12__0_n_0;
  wire p0__4_carry__11_i_13__0_n_0;
  wire p0__4_carry__11_i_14__0_n_0;
  wire p0__4_carry__11_i_15__0_n_0;
  wire p0__4_carry__11_i_16__0_n_0;
  wire p0__4_carry__11_i_17_n_0;
  wire p0__4_carry__11_i_1__0_n_0;
  wire p0__4_carry__11_i_2__0_n_0;
  wire p0__4_carry__11_i_3__0_n_0;
  wire p0__4_carry__11_i_4__0_n_0;
  wire p0__4_carry__11_i_5__0_n_0;
  wire p0__4_carry__11_i_6__0_n_0;
  wire p0__4_carry__11_i_7__0_n_0;
  wire p0__4_carry__11_i_8__0_n_0;
  wire p0__4_carry__11_i_9__0_n_0;
  wire p0__4_carry__11_n_0;
  wire p0__4_carry__11_n_1;
  wire p0__4_carry__11_n_2;
  wire p0__4_carry__11_n_3;
  wire p0__4_carry__12_i_10__0_n_0;
  wire p0__4_carry__12_i_11__0_n_0;
  wire p0__4_carry__12_i_12__0_n_0;
  wire p0__4_carry__12_i_13__0_n_0;
  wire p0__4_carry__12_i_14__0_n_0;
  wire p0__4_carry__12_i_15__0_n_0;
  wire p0__4_carry__12_i_16__0_n_0;
  wire p0__4_carry__12_i_1__0_n_0;
  wire p0__4_carry__12_i_2__0_n_0;
  wire p0__4_carry__12_i_3__0_n_0;
  wire p0__4_carry__12_i_4__0_n_0;
  wire p0__4_carry__12_i_5__0_n_0;
  wire p0__4_carry__12_i_6__0_n_0;
  wire p0__4_carry__12_i_7__0_n_0;
  wire p0__4_carry__12_i_8__0_n_0;
  wire p0__4_carry__12_i_9__0_n_0;
  wire p0__4_carry__12_n_0;
  wire p0__4_carry__12_n_1;
  wire p0__4_carry__12_n_2;
  wire p0__4_carry__12_n_3;
  wire p0__4_carry__13_i_10__0_n_0;
  wire p0__4_carry__13_i_11__0_n_0;
  wire p0__4_carry__13_i_12__0_n_0;
  wire p0__4_carry__13_i_13__0_n_0;
  wire p0__4_carry__13_i_14__0_n_0;
  wire p0__4_carry__13_i_15__0_n_0;
  wire p0__4_carry__13_i_16__0_n_0;
  wire p0__4_carry__13_i_1__0_n_0;
  wire p0__4_carry__13_i_2__0_n_0;
  wire p0__4_carry__13_i_3__0_n_0;
  wire p0__4_carry__13_i_4__0_n_0;
  wire p0__4_carry__13_i_5__0_n_0;
  wire p0__4_carry__13_i_6__0_n_0;
  wire p0__4_carry__13_i_7__0_n_0;
  wire p0__4_carry__13_i_8__0_n_0;
  wire p0__4_carry__13_i_9__0_n_0;
  wire p0__4_carry__13_n_0;
  wire p0__4_carry__13_n_1;
  wire p0__4_carry__13_n_2;
  wire p0__4_carry__13_n_3;
  wire p0__4_carry__14_i_10__0_n_0;
  wire p0__4_carry__14_i_11__0_n_0;
  wire p0__4_carry__14_i_12__0_n_0;
  wire p0__4_carry__14_i_13__0_n_0;
  wire p0__4_carry__14_i_14__0_n_0;
  wire p0__4_carry__14_i_15__0_n_0;
  wire p0__4_carry__14_i_16__0_n_0;
  wire p0__4_carry__14_i_1__0_n_0;
  wire p0__4_carry__14_i_2__0_n_0;
  wire p0__4_carry__14_i_3__0_n_0;
  wire p0__4_carry__14_i_4__0_n_0;
  wire p0__4_carry__14_i_5__0_n_0;
  wire p0__4_carry__14_i_6__0_n_0;
  wire p0__4_carry__14_i_7__0_n_0;
  wire p0__4_carry__14_i_8__0_n_0;
  wire p0__4_carry__14_i_9__0_n_0;
  wire p0__4_carry__14_n_0;
  wire p0__4_carry__14_n_1;
  wire p0__4_carry__14_n_2;
  wire p0__4_carry__14_n_3;
  wire p0__4_carry__15_i_10__0_n_0;
  wire p0__4_carry__15_i_11__0_n_0;
  wire p0__4_carry__15_i_12__0_n_0;
  wire p0__4_carry__15_i_13__0_n_0;
  wire p0__4_carry__15_i_14__0_n_0;
  wire p0__4_carry__15_i_1__0_n_0;
  wire p0__4_carry__15_i_2__0_n_0;
  wire p0__4_carry__15_i_3__0_n_0;
  wire p0__4_carry__15_i_4__0_n_0;
  wire p0__4_carry__15_i_5__0_n_0;
  wire p0__4_carry__15_i_6__0_n_0;
  wire p0__4_carry__15_i_7__0_n_0;
  wire p0__4_carry__15_i_8__0_n_0;
  wire p0__4_carry__15_i_9__0_n_0;
  wire p0__4_carry__15_n_0;
  wire p0__4_carry__15_n_1;
  wire p0__4_carry__15_n_2;
  wire p0__4_carry__15_n_3;
  wire p0__4_carry__16_i_1__0_n_0;
  wire p0__4_carry__16_i_2__0_n_0;
  wire p0__4_carry__16_i_3__0_n_0;
  wire p0__4_carry__16_i_4__0_n_0;
  wire p0__4_carry__16_i_5__0_n_0;
  wire p0__4_carry__16_i_6__0_n_0;
  wire p0__4_carry__16_i_7__0_n_0;
  wire p0__4_carry__16_i_8__0_n_0;
  wire p0__4_carry__16_n_0;
  wire p0__4_carry__16_n_1;
  wire p0__4_carry__16_n_2;
  wire p0__4_carry__16_n_3;
  wire p0__4_carry__17_i_1__0_n_0;
  wire p0__4_carry__17_i_2__0_n_0;
  wire p0__4_carry__17_i_3__0_n_0;
  wire p0__4_carry__17_i_4__0_n_0;
  wire p0__4_carry__17_i_5__0_n_0;
  wire p0__4_carry__17_i_6__0_n_0;
  wire p0__4_carry__17_i_7__0_n_0;
  wire p0__4_carry__17_i_8__0_n_0;
  wire p0__4_carry__17_n_0;
  wire p0__4_carry__17_n_1;
  wire p0__4_carry__17_n_2;
  wire p0__4_carry__17_n_3;
  wire p0__4_carry__18_i_1__0_n_0;
  wire p0__4_carry__18_i_2__0_n_0;
  wire p0__4_carry__18_i_3__0_n_0;
  wire p0__4_carry__18_i_4__0_n_0;
  wire p0__4_carry__18_i_5__0_n_0;
  wire p0__4_carry__18_n_2;
  wire p0__4_carry__18_n_3;
  wire p0__4_carry__1_i_1__0_n_0;
  wire p0__4_carry__1_i_2__0_n_0;
  wire p0__4_carry__1_i_3__0_n_0;
  wire p0__4_carry__1_i_4__0_n_0;
  wire p0__4_carry__1_n_0;
  wire p0__4_carry__1_n_1;
  wire p0__4_carry__1_n_2;
  wire p0__4_carry__1_n_3;
  wire p0__4_carry__2_i_1__0_n_0;
  wire p0__4_carry__2_i_2__0_n_0;
  wire p0__4_carry__2_i_3__0_n_0;
  wire p0__4_carry__2_i_4__0_n_0;
  wire p0__4_carry__2_n_0;
  wire p0__4_carry__2_n_1;
  wire p0__4_carry__2_n_2;
  wire p0__4_carry__2_n_3;
  wire p0__4_carry__3_i_1__0_n_0;
  wire p0__4_carry__3_i_2__0_n_0;
  wire p0__4_carry__3_i_3__0_n_0;
  wire p0__4_carry__3_i_4__0_n_0;
  wire p0__4_carry__3_i_5__0_n_0;
  wire p0__4_carry__3_n_0;
  wire p0__4_carry__3_n_1;
  wire p0__4_carry__3_n_2;
  wire p0__4_carry__3_n_3;
  wire p0__4_carry__4_i_1__0_n_0;
  wire p0__4_carry__4_i_2__0_n_0;
  wire p0__4_carry__4_i_3__0_n_0;
  wire p0__4_carry__4_i_4__0_n_0;
  wire p0__4_carry__4_i_5__0_n_0;
  wire p0__4_carry__4_i_6__0_n_0;
  wire p0__4_carry__4_i_7__0_n_0;
  wire p0__4_carry__4_i_8__0_n_0;
  wire p0__4_carry__4_n_0;
  wire p0__4_carry__4_n_1;
  wire p0__4_carry__4_n_2;
  wire p0__4_carry__4_n_3;
  wire p0__4_carry__5_i_1__0_n_0;
  wire p0__4_carry__5_i_2__0_n_0;
  wire p0__4_carry__5_i_3__0_n_0;
  wire p0__4_carry__5_i_4__0_n_0;
  wire p0__4_carry__5_i_5__0_n_0;
  wire p0__4_carry__5_i_6__0_n_0;
  wire p0__4_carry__5_i_7__0_n_0;
  wire p0__4_carry__5_i_8__0_n_0;
  wire p0__4_carry__5_n_0;
  wire p0__4_carry__5_n_1;
  wire p0__4_carry__5_n_2;
  wire p0__4_carry__5_n_3;
  wire p0__4_carry__6_i_1__0_n_0;
  wire p0__4_carry__6_i_2__0_n_0;
  wire p0__4_carry__6_i_3__0_n_0;
  wire p0__4_carry__6_i_4__0_n_0;
  wire p0__4_carry__6_i_5__0_n_0;
  wire p0__4_carry__6_i_6__0_n_0;
  wire p0__4_carry__6_i_7__0_n_0;
  wire p0__4_carry__6_i_8__0_n_0;
  wire p0__4_carry__6_n_0;
  wire p0__4_carry__6_n_1;
  wire p0__4_carry__6_n_2;
  wire p0__4_carry__6_n_3;
  wire p0__4_carry__7_i_1__0_n_0;
  wire p0__4_carry__7_i_2__0_n_0;
  wire p0__4_carry__7_i_3__0_n_0;
  wire p0__4_carry__7_i_4__0_n_0;
  wire p0__4_carry__7_i_5__0_n_0;
  wire p0__4_carry__7_i_6__0_n_0;
  wire p0__4_carry__7_i_7__0_n_0;
  wire p0__4_carry__7_i_8__0_n_0;
  wire p0__4_carry__7_n_0;
  wire p0__4_carry__7_n_1;
  wire p0__4_carry__7_n_2;
  wire p0__4_carry__7_n_3;
  wire p0__4_carry__8_i_10__0_n_0;
  wire p0__4_carry__8_i_11__0_n_0;
  wire p0__4_carry__8_i_12__0_n_0;
  wire p0__4_carry__8_i_13_n_0;
  wire p0__4_carry__8_i_14_n_0;
  wire p0__4_carry__8_i_1__0_n_0;
  wire p0__4_carry__8_i_2__0_n_0;
  wire p0__4_carry__8_i_3__0_n_0;
  wire p0__4_carry__8_i_4__0_n_0;
  wire p0__4_carry__8_i_5__0_n_0;
  wire p0__4_carry__8_i_6__0_n_0;
  wire p0__4_carry__8_i_7__0_n_0;
  wire p0__4_carry__8_i_8__0_n_0;
  wire p0__4_carry__8_i_9__0_n_0;
  wire p0__4_carry__8_n_0;
  wire p0__4_carry__8_n_1;
  wire p0__4_carry__8_n_2;
  wire p0__4_carry__8_n_3;
  wire p0__4_carry__9_i_10__0_n_0;
  wire p0__4_carry__9_i_11__0_n_0;
  wire p0__4_carry__9_i_12__0_n_0;
  wire p0__4_carry__9_i_1__0_n_0;
  wire p0__4_carry__9_i_2__0_n_0;
  wire p0__4_carry__9_i_3__0_n_0;
  wire p0__4_carry__9_i_4__0_n_0;
  wire p0__4_carry__9_i_5__0_n_0;
  wire p0__4_carry__9_i_6__0_n_0;
  wire p0__4_carry__9_i_7__0_n_0;
  wire p0__4_carry__9_i_8__0_n_0;
  wire p0__4_carry__9_i_9__0_n_0;
  wire p0__4_carry__9_n_0;
  wire p0__4_carry__9_n_1;
  wire p0__4_carry__9_n_2;
  wire p0__4_carry__9_n_3;
  wire p0__4_carry_i_1__0_n_0;
  wire p0__4_carry_i_2__0_n_0;
  wire p0__4_carry_i_3__0_n_0;
  wire p0__4_carry_n_0;
  wire p0__4_carry_n_1;
  wire p0__4_carry_n_2;
  wire p0__4_carry_n_3;
  wire p0__4_n_100;
  wire p0__4_n_101;
  wire p0__4_n_102;
  wire p0__4_n_103;
  wire p0__4_n_104;
  wire p0__4_n_105;
  wire p0__4_n_106;
  wire p0__4_n_107;
  wire p0__4_n_108;
  wire p0__4_n_109;
  wire p0__4_n_110;
  wire p0__4_n_111;
  wire p0__4_n_112;
  wire p0__4_n_113;
  wire p0__4_n_114;
  wire p0__4_n_115;
  wire p0__4_n_116;
  wire p0__4_n_117;
  wire p0__4_n_118;
  wire p0__4_n_119;
  wire p0__4_n_120;
  wire p0__4_n_121;
  wire p0__4_n_122;
  wire p0__4_n_123;
  wire p0__4_n_124;
  wire p0__4_n_125;
  wire p0__4_n_126;
  wire p0__4_n_127;
  wire p0__4_n_128;
  wire p0__4_n_129;
  wire p0__4_n_130;
  wire p0__4_n_131;
  wire p0__4_n_132;
  wire p0__4_n_133;
  wire p0__4_n_134;
  wire p0__4_n_135;
  wire p0__4_n_136;
  wire p0__4_n_137;
  wire p0__4_n_138;
  wire p0__4_n_139;
  wire p0__4_n_140;
  wire p0__4_n_141;
  wire p0__4_n_142;
  wire p0__4_n_143;
  wire p0__4_n_144;
  wire p0__4_n_145;
  wire p0__4_n_146;
  wire p0__4_n_147;
  wire p0__4_n_148;
  wire p0__4_n_149;
  wire p0__4_n_150;
  wire p0__4_n_151;
  wire p0__4_n_152;
  wire p0__4_n_153;
  wire p0__4_n_58;
  wire p0__4_n_59;
  wire p0__4_n_60;
  wire p0__4_n_61;
  wire p0__4_n_62;
  wire p0__4_n_63;
  wire p0__4_n_64;
  wire p0__4_n_65;
  wire p0__4_n_66;
  wire p0__4_n_67;
  wire p0__4_n_68;
  wire p0__4_n_69;
  wire p0__4_n_70;
  wire p0__4_n_71;
  wire p0__4_n_72;
  wire p0__4_n_73;
  wire p0__4_n_74;
  wire p0__4_n_75;
  wire p0__4_n_76;
  wire p0__4_n_77;
  wire p0__4_n_78;
  wire p0__4_n_79;
  wire p0__4_n_80;
  wire p0__4_n_81;
  wire p0__4_n_82;
  wire p0__4_n_83;
  wire p0__4_n_84;
  wire p0__4_n_85;
  wire p0__4_n_86;
  wire p0__4_n_87;
  wire p0__4_n_88;
  wire p0__4_n_89;
  wire p0__4_n_90;
  wire p0__4_n_91;
  wire p0__4_n_92;
  wire p0__4_n_93;
  wire p0__4_n_94;
  wire p0__4_n_95;
  wire p0__4_n_96;
  wire p0__4_n_97;
  wire p0__4_n_98;
  wire p0__4_n_99;
  wire p0__5_n_106;
  wire p0__5_n_107;
  wire p0__5_n_108;
  wire p0__5_n_109;
  wire p0__5_n_110;
  wire p0__5_n_111;
  wire p0__5_n_112;
  wire p0__5_n_113;
  wire p0__5_n_114;
  wire p0__5_n_115;
  wire p0__5_n_116;
  wire p0__5_n_117;
  wire p0__5_n_118;
  wire p0__5_n_119;
  wire p0__5_n_120;
  wire p0__5_n_121;
  wire p0__5_n_122;
  wire p0__5_n_123;
  wire p0__5_n_124;
  wire p0__5_n_125;
  wire p0__5_n_126;
  wire p0__5_n_127;
  wire p0__5_n_128;
  wire p0__5_n_129;
  wire p0__5_n_130;
  wire p0__5_n_131;
  wire p0__5_n_132;
  wire p0__5_n_133;
  wire p0__5_n_134;
  wire p0__5_n_135;
  wire p0__5_n_136;
  wire p0__5_n_137;
  wire p0__5_n_138;
  wire p0__5_n_139;
  wire p0__5_n_140;
  wire p0__5_n_141;
  wire p0__5_n_142;
  wire p0__5_n_143;
  wire p0__5_n_144;
  wire p0__5_n_145;
  wire p0__5_n_146;
  wire p0__5_n_147;
  wire p0__5_n_148;
  wire p0__5_n_149;
  wire p0__5_n_150;
  wire p0__5_n_151;
  wire p0__5_n_152;
  wire p0__5_n_153;
  wire p0__6_n_100;
  wire p0__6_n_101;
  wire p0__6_n_102;
  wire p0__6_n_103;
  wire p0__6_n_104;
  wire p0__6_n_105;
  wire p0__6_n_58;
  wire p0__6_n_59;
  wire p0__6_n_60;
  wire p0__6_n_61;
  wire p0__6_n_62;
  wire p0__6_n_63;
  wire p0__6_n_64;
  wire p0__6_n_65;
  wire p0__6_n_66;
  wire p0__6_n_67;
  wire p0__6_n_68;
  wire p0__6_n_69;
  wire p0__6_n_70;
  wire p0__6_n_71;
  wire p0__6_n_72;
  wire p0__6_n_73;
  wire p0__6_n_74;
  wire p0__6_n_75;
  wire p0__6_n_76;
  wire p0__6_n_77;
  wire p0__6_n_78;
  wire p0__6_n_79;
  wire p0__6_n_80;
  wire p0__6_n_81;
  wire p0__6_n_82;
  wire p0__6_n_83;
  wire p0__6_n_84;
  wire p0__6_n_85;
  wire p0__6_n_86;
  wire p0__6_n_87;
  wire p0__6_n_88;
  wire p0__6_n_89;
  wire p0__6_n_90;
  wire p0__6_n_91;
  wire p0__6_n_92;
  wire p0__6_n_93;
  wire p0__6_n_94;
  wire p0__6_n_95;
  wire p0__6_n_96;
  wire p0__6_n_97;
  wire p0__6_n_98;
  wire p0__6_n_99;
  wire p0__7_n_106;
  wire p0__7_n_107;
  wire p0__7_n_108;
  wire p0__7_n_109;
  wire p0__7_n_110;
  wire p0__7_n_111;
  wire p0__7_n_112;
  wire p0__7_n_113;
  wire p0__7_n_114;
  wire p0__7_n_115;
  wire p0__7_n_116;
  wire p0__7_n_117;
  wire p0__7_n_118;
  wire p0__7_n_119;
  wire p0__7_n_120;
  wire p0__7_n_121;
  wire p0__7_n_122;
  wire p0__7_n_123;
  wire p0__7_n_124;
  wire p0__7_n_125;
  wire p0__7_n_126;
  wire p0__7_n_127;
  wire p0__7_n_128;
  wire p0__7_n_129;
  wire p0__7_n_130;
  wire p0__7_n_131;
  wire p0__7_n_132;
  wire p0__7_n_133;
  wire p0__7_n_134;
  wire p0__7_n_135;
  wire p0__7_n_136;
  wire p0__7_n_137;
  wire p0__7_n_138;
  wire p0__7_n_139;
  wire p0__7_n_140;
  wire p0__7_n_141;
  wire p0__7_n_142;
  wire p0__7_n_143;
  wire p0__7_n_144;
  wire p0__7_n_145;
  wire p0__7_n_146;
  wire p0__7_n_147;
  wire p0__7_n_148;
  wire p0__7_n_149;
  wire p0__7_n_150;
  wire p0__7_n_151;
  wire p0__7_n_152;
  wire p0__7_n_153;
  wire p0__8_n_100;
  wire p0__8_n_101;
  wire p0__8_n_102;
  wire p0__8_n_103;
  wire p0__8_n_104;
  wire p0__8_n_105;
  wire p0__8_n_106;
  wire p0__8_n_107;
  wire p0__8_n_108;
  wire p0__8_n_109;
  wire p0__8_n_110;
  wire p0__8_n_111;
  wire p0__8_n_112;
  wire p0__8_n_113;
  wire p0__8_n_114;
  wire p0__8_n_115;
  wire p0__8_n_116;
  wire p0__8_n_117;
  wire p0__8_n_118;
  wire p0__8_n_119;
  wire p0__8_n_120;
  wire p0__8_n_121;
  wire p0__8_n_122;
  wire p0__8_n_123;
  wire p0__8_n_124;
  wire p0__8_n_125;
  wire p0__8_n_126;
  wire p0__8_n_127;
  wire p0__8_n_128;
  wire p0__8_n_129;
  wire p0__8_n_130;
  wire p0__8_n_131;
  wire p0__8_n_132;
  wire p0__8_n_133;
  wire p0__8_n_134;
  wire p0__8_n_135;
  wire p0__8_n_136;
  wire p0__8_n_137;
  wire p0__8_n_138;
  wire p0__8_n_139;
  wire p0__8_n_140;
  wire p0__8_n_141;
  wire p0__8_n_142;
  wire p0__8_n_143;
  wire p0__8_n_144;
  wire p0__8_n_145;
  wire p0__8_n_146;
  wire p0__8_n_147;
  wire p0__8_n_148;
  wire p0__8_n_149;
  wire p0__8_n_150;
  wire p0__8_n_151;
  wire p0__8_n_152;
  wire p0__8_n_153;
  wire p0__8_n_58;
  wire p0__8_n_59;
  wire p0__8_n_60;
  wire p0__8_n_61;
  wire p0__8_n_62;
  wire p0__8_n_63;
  wire p0__8_n_64;
  wire p0__8_n_65;
  wire p0__8_n_66;
  wire p0__8_n_67;
  wire p0__8_n_68;
  wire p0__8_n_69;
  wire p0__8_n_70;
  wire p0__8_n_71;
  wire p0__8_n_72;
  wire p0__8_n_73;
  wire p0__8_n_74;
  wire p0__8_n_75;
  wire p0__8_n_76;
  wire p0__8_n_77;
  wire p0__8_n_78;
  wire p0__8_n_79;
  wire p0__8_n_80;
  wire p0__8_n_81;
  wire p0__8_n_82;
  wire p0__8_n_83;
  wire p0__8_n_84;
  wire p0__8_n_85;
  wire p0__8_n_86;
  wire p0__8_n_87;
  wire p0__8_n_88;
  wire p0__8_n_89;
  wire p0__8_n_90;
  wire p0__8_n_91;
  wire p0__8_n_92;
  wire p0__8_n_93;
  wire p0__8_n_94;
  wire p0__8_n_95;
  wire p0__8_n_96;
  wire p0__8_n_97;
  wire p0__8_n_98;
  wire p0__8_n_99;
  wire p0__9_n_106;
  wire p0__9_n_107;
  wire p0__9_n_108;
  wire p0__9_n_109;
  wire p0__9_n_110;
  wire p0__9_n_111;
  wire p0__9_n_112;
  wire p0__9_n_113;
  wire p0__9_n_114;
  wire p0__9_n_115;
  wire p0__9_n_116;
  wire p0__9_n_117;
  wire p0__9_n_118;
  wire p0__9_n_119;
  wire p0__9_n_120;
  wire p0__9_n_121;
  wire p0__9_n_122;
  wire p0__9_n_123;
  wire p0__9_n_124;
  wire p0__9_n_125;
  wire p0__9_n_126;
  wire p0__9_n_127;
  wire p0__9_n_128;
  wire p0__9_n_129;
  wire p0__9_n_130;
  wire p0__9_n_131;
  wire p0__9_n_132;
  wire p0__9_n_133;
  wire p0__9_n_134;
  wire p0__9_n_135;
  wire p0__9_n_136;
  wire p0__9_n_137;
  wire p0__9_n_138;
  wire p0__9_n_139;
  wire p0__9_n_140;
  wire p0__9_n_141;
  wire p0__9_n_142;
  wire p0__9_n_143;
  wire p0__9_n_144;
  wire p0__9_n_145;
  wire p0__9_n_146;
  wire p0__9_n_147;
  wire p0__9_n_148;
  wire p0__9_n_149;
  wire p0__9_n_150;
  wire p0__9_n_151;
  wire p0__9_n_152;
  wire p0__9_n_153;
  wire [3:3]\NLW_int_data_reg_reg[60]_i_1__0_CO_UNCONNECTED ;
  wire NLW_p0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__0_OVERFLOW_UNCONNECTED;
  wire NLW_p0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__0_CARRYOUT_UNCONNECTED;
  wire NLW_p0__0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__0__0_OVERFLOW_UNCONNECTED;
  wire NLW_p0__0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__0__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__0__0_P_UNCONNECTED;
  wire NLW_p0__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__1_OVERFLOW_UNCONNECTED;
  wire NLW_p0__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__1_CARRYOUT_UNCONNECTED;
  wire NLW_p0__10_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__10_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__10_OVERFLOW_UNCONNECTED;
  wire NLW_p0__10_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__10_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__10_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__10_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__10_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__10_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__10_PCOUT_UNCONNECTED;
  wire NLW_p0__11_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__11_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__11_OVERFLOW_UNCONNECTED;
  wire NLW_p0__11_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__11_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__11_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__11_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__11_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__11_CARRYOUT_UNCONNECTED;
  wire NLW_p0__12_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__12_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__12_OVERFLOW_UNCONNECTED;
  wire NLW_p0__12_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__12_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__12_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__12_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__12_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__12_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__12_P_UNCONNECTED;
  wire NLW_p0__13_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__13_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__13_OVERFLOW_UNCONNECTED;
  wire NLW_p0__13_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__13_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__13_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__13_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__13_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__13_CARRYOUT_UNCONNECTED;
  wire NLW_p0__14_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__14_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__14_OVERFLOW_UNCONNECTED;
  wire NLW_p0__14_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__14_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__14_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__14_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__14_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__14_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__14_PCOUT_UNCONNECTED;
  wire NLW_p0__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__2_OVERFLOW_UNCONNECTED;
  wire NLW_p0__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__2_PCOUT_UNCONNECTED;
  wire NLW_p0__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__3_OVERFLOW_UNCONNECTED;
  wire NLW_p0__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__3_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__3_P_UNCONNECTED;
  wire NLW_p0__4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__4_OVERFLOW_UNCONNECTED;
  wire NLW_p0__4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__4_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__4_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__4_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__4_CARRYOUT_UNCONNECTED;
  wire [3:0]NLW_p0__4_carry_O_UNCONNECTED;
  wire [3:0]NLW_p0__4_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_p0__4_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_p0__4_carry__18_CO_UNCONNECTED;
  wire [3:3]NLW_p0__4_carry__18_O_UNCONNECTED;
  wire [2:0]NLW_p0__4_carry__2_O_UNCONNECTED;
  wire NLW_p0__5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__5_OVERFLOW_UNCONNECTED;
  wire NLW_p0__5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__5_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__5_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__5_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__5_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__5_P_UNCONNECTED;
  wire NLW_p0__6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__6_OVERFLOW_UNCONNECTED;
  wire NLW_p0__6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__6_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__6_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__6_PCOUT_UNCONNECTED;
  wire NLW_p0__7_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__7_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__7_OVERFLOW_UNCONNECTED;
  wire NLW_p0__7_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__7_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__7_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__7_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__7_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__7_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__7_P_UNCONNECTED;
  wire NLW_p0__8_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__8_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__8_OVERFLOW_UNCONNECTED;
  wire NLW_p0__8_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__8_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__8_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__8_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__8_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__8_CARRYOUT_UNCONNECTED;
  wire NLW_p0__9_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__9_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__9_OVERFLOW_UNCONNECTED;
  wire NLW_p0__9_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__9_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__9_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__9_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__9_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__9_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__9_P_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_2__0 
       (.I0(b__0[3]),
        .I1(int_data_reg_reg[3]),
        .O(\int_data_reg[0]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_3__0 
       (.I0(b__0[2]),
        .I1(int_data_reg_reg[2]),
        .O(\int_data_reg[0]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_4__0 
       (.I0(b__0[1]),
        .I1(int_data_reg_reg[1]),
        .O(\int_data_reg[0]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[0]_i_5__0 
       (.I0(b__0[0]),
        .I1(int_data_reg_reg[0]),
        .O(\int_data_reg[0]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[12]_i_2__0 
       (.I0(b__0[15]),
        .I1(int_data_reg_reg[15]),
        .O(\int_data_reg[12]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[12]_i_3__0 
       (.I0(b__0[14]),
        .I1(int_data_reg_reg[14]),
        .O(\int_data_reg[12]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[12]_i_4__0 
       (.I0(b__0[13]),
        .I1(int_data_reg_reg[13]),
        .O(\int_data_reg[12]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[12]_i_5__0 
       (.I0(b__0[12]),
        .I1(int_data_reg_reg[12]),
        .O(\int_data_reg[12]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[16]_i_2__0 
       (.I0(b__0[19]),
        .I1(int_data_reg_reg[19]),
        .O(\int_data_reg[16]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[16]_i_3__0 
       (.I0(b__0[18]),
        .I1(int_data_reg_reg[18]),
        .O(\int_data_reg[16]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[16]_i_4__0 
       (.I0(b__0[17]),
        .I1(int_data_reg_reg[17]),
        .O(\int_data_reg[16]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[16]_i_5__0 
       (.I0(b__0[16]),
        .I1(int_data_reg_reg[16]),
        .O(\int_data_reg[16]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[20]_i_2__0 
       (.I0(b__0[23]),
        .I1(int_data_reg_reg[23]),
        .O(\int_data_reg[20]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[20]_i_3__0 
       (.I0(b__0[22]),
        .I1(int_data_reg_reg[22]),
        .O(\int_data_reg[20]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[20]_i_4__0 
       (.I0(b__0[21]),
        .I1(int_data_reg_reg[21]),
        .O(\int_data_reg[20]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[20]_i_5__0 
       (.I0(b__0[20]),
        .I1(int_data_reg_reg[20]),
        .O(\int_data_reg[20]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[24]_i_2__0 
       (.I0(b__0[27]),
        .I1(int_data_reg_reg[27]),
        .O(\int_data_reg[24]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[24]_i_3__0 
       (.I0(b__0[26]),
        .I1(int_data_reg_reg[26]),
        .O(\int_data_reg[24]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[24]_i_4__0 
       (.I0(b__0[25]),
        .I1(int_data_reg_reg[25]),
        .O(\int_data_reg[24]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[24]_i_5__0 
       (.I0(b__0[24]),
        .I1(int_data_reg_reg[24]),
        .O(\int_data_reg[24]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[28]_i_2__0 
       (.I0(b__0[31]),
        .I1(int_data_reg_reg[31]),
        .O(\int_data_reg[28]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[28]_i_3__0 
       (.I0(b__0[30]),
        .I1(int_data_reg_reg[30]),
        .O(\int_data_reg[28]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[28]_i_4__0 
       (.I0(b__0[29]),
        .I1(int_data_reg_reg[29]),
        .O(\int_data_reg[28]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[28]_i_5__0 
       (.I0(b__0[28]),
        .I1(int_data_reg_reg[28]),
        .O(\int_data_reg[28]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[32]_i_2__0 
       (.I0(b__0[35]),
        .I1(int_data_reg_reg[35]),
        .O(\int_data_reg[32]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[32]_i_3__0 
       (.I0(b__0[34]),
        .I1(int_data_reg_reg[34]),
        .O(\int_data_reg[32]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[32]_i_4__0 
       (.I0(b__0[33]),
        .I1(int_data_reg_reg[33]),
        .O(\int_data_reg[32]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[32]_i_5__0 
       (.I0(b__0[32]),
        .I1(int_data_reg_reg[32]),
        .O(\int_data_reg[32]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[36]_i_2__0 
       (.I0(b__0[39]),
        .I1(int_data_reg_reg[39]),
        .O(\int_data_reg[36]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[36]_i_3__0 
       (.I0(b__0[38]),
        .I1(int_data_reg_reg[38]),
        .O(\int_data_reg[36]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[36]_i_4__0 
       (.I0(b__0[37]),
        .I1(int_data_reg_reg[37]),
        .O(\int_data_reg[36]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[36]_i_5__0 
       (.I0(b__0[36]),
        .I1(int_data_reg_reg[36]),
        .O(\int_data_reg[36]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[40]_i_2__0 
       (.I0(b__0[43]),
        .I1(int_data_reg_reg[43]),
        .O(\int_data_reg[40]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[40]_i_3__0 
       (.I0(b__0[42]),
        .I1(int_data_reg_reg[42]),
        .O(\int_data_reg[40]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[40]_i_4__0 
       (.I0(b__0[41]),
        .I1(int_data_reg_reg[41]),
        .O(\int_data_reg[40]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[40]_i_5__0 
       (.I0(b__0[40]),
        .I1(int_data_reg_reg[40]),
        .O(\int_data_reg[40]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[44]_i_2__0 
       (.I0(b__0[47]),
        .I1(int_data_reg_reg[47]),
        .O(\int_data_reg[44]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[44]_i_3__0 
       (.I0(b__0[46]),
        .I1(int_data_reg_reg[46]),
        .O(\int_data_reg[44]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[44]_i_4__0 
       (.I0(b__0[45]),
        .I1(int_data_reg_reg[45]),
        .O(\int_data_reg[44]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[44]_i_5__0 
       (.I0(b__0[44]),
        .I1(int_data_reg_reg[44]),
        .O(\int_data_reg[44]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[48]_i_2__0 
       (.I0(b__0[51]),
        .I1(int_data_reg_reg[51]),
        .O(\int_data_reg[48]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[48]_i_3__0 
       (.I0(b__0[50]),
        .I1(int_data_reg_reg[50]),
        .O(\int_data_reg[48]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[48]_i_4__0 
       (.I0(b__0[49]),
        .I1(int_data_reg_reg[49]),
        .O(\int_data_reg[48]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[48]_i_5__0 
       (.I0(b__0[48]),
        .I1(int_data_reg_reg[48]),
        .O(\int_data_reg[48]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[4]_i_2__0 
       (.I0(b__0[7]),
        .I1(int_data_reg_reg[7]),
        .O(\int_data_reg[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[4]_i_3__0 
       (.I0(b__0[6]),
        .I1(int_data_reg_reg[6]),
        .O(\int_data_reg[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[4]_i_4__0 
       (.I0(b__0[5]),
        .I1(int_data_reg_reg[5]),
        .O(\int_data_reg[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[4]_i_5__0 
       (.I0(b__0[4]),
        .I1(int_data_reg_reg[4]),
        .O(\int_data_reg[4]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[52]_i_2__0 
       (.I0(b__0[55]),
        .I1(int_data_reg_reg[55]),
        .O(\int_data_reg[52]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[52]_i_3__0 
       (.I0(b__0[54]),
        .I1(int_data_reg_reg[54]),
        .O(\int_data_reg[52]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[52]_i_4__0 
       (.I0(b__0[53]),
        .I1(int_data_reg_reg[53]),
        .O(\int_data_reg[52]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[52]_i_5__0 
       (.I0(b__0[52]),
        .I1(int_data_reg_reg[52]),
        .O(\int_data_reg[52]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[56]_i_2__0 
       (.I0(b__0[59]),
        .I1(int_data_reg_reg[59]),
        .O(\int_data_reg[56]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[56]_i_3__0 
       (.I0(b__0[58]),
        .I1(int_data_reg_reg[58]),
        .O(\int_data_reg[56]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[56]_i_4__0 
       (.I0(b__0[57]),
        .I1(int_data_reg_reg[57]),
        .O(\int_data_reg[56]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[56]_i_5__0 
       (.I0(b__0[56]),
        .I1(int_data_reg_reg[56]),
        .O(\int_data_reg[56]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[60]_i_3__0 
       (.I0(b__0[62]),
        .I1(int_data_reg_reg[62]),
        .O(\int_data_reg[60]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[60]_i_4__0 
       (.I0(b__0[61]),
        .I1(int_data_reg_reg[61]),
        .O(\int_data_reg[60]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[60]_i_5__0 
       (.I0(b__0[60]),
        .I1(int_data_reg_reg[60]),
        .O(\int_data_reg[60]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[8]_i_2__0 
       (.I0(b__0[11]),
        .I1(int_data_reg_reg[11]),
        .O(\int_data_reg[8]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[8]_i_3__0 
       (.I0(b__0[10]),
        .I1(int_data_reg_reg[10]),
        .O(\int_data_reg[8]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[8]_i_4__0 
       (.I0(b__0[9]),
        .I1(int_data_reg_reg[9]),
        .O(\int_data_reg[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[8]_i_5__0 
       (.I0(b__0[8]),
        .I1(int_data_reg_reg[8]),
        .O(\int_data_reg[8]_i_5__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\int_data_reg_reg[0]_i_1__0_n_0 ,\int_data_reg_reg[0]_i_1__0_n_1 ,\int_data_reg_reg[0]_i_1__0_n_2 ,\int_data_reg_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(b__0[3:0]),
        .O(p0__14_0),
        .S({\int_data_reg[0]_i_2__0_n_0 ,\int_data_reg[0]_i_3__0_n_0 ,\int_data_reg[0]_i_4__0_n_0 ,\int_data_reg[0]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[12]_i_1__0 
       (.CI(\int_data_reg_reg[8]_i_1__0_n_0 ),
        .CO({\int_data_reg_reg[12]_i_1__0_n_0 ,\int_data_reg_reg[12]_i_1__0_n_1 ,\int_data_reg_reg[12]_i_1__0_n_2 ,\int_data_reg_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(b__0[15:12]),
        .O(\int_data_reg_reg[15] ),
        .S({\int_data_reg[12]_i_2__0_n_0 ,\int_data_reg[12]_i_3__0_n_0 ,\int_data_reg[12]_i_4__0_n_0 ,\int_data_reg[12]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[16]_i_1__0 
       (.CI(\int_data_reg_reg[12]_i_1__0_n_0 ),
        .CO({\int_data_reg_reg[16]_i_1__0_n_0 ,\int_data_reg_reg[16]_i_1__0_n_1 ,\int_data_reg_reg[16]_i_1__0_n_2 ,\int_data_reg_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(b__0[19:16]),
        .O(\int_data_reg_reg[19] ),
        .S({\int_data_reg[16]_i_2__0_n_0 ,\int_data_reg[16]_i_3__0_n_0 ,\int_data_reg[16]_i_4__0_n_0 ,\int_data_reg[16]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[20]_i_1__0 
       (.CI(\int_data_reg_reg[16]_i_1__0_n_0 ),
        .CO({\int_data_reg_reg[20]_i_1__0_n_0 ,\int_data_reg_reg[20]_i_1__0_n_1 ,\int_data_reg_reg[20]_i_1__0_n_2 ,\int_data_reg_reg[20]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(b__0[23:20]),
        .O(\int_data_reg_reg[23] ),
        .S({\int_data_reg[20]_i_2__0_n_0 ,\int_data_reg[20]_i_3__0_n_0 ,\int_data_reg[20]_i_4__0_n_0 ,\int_data_reg[20]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[24]_i_1__0 
       (.CI(\int_data_reg_reg[20]_i_1__0_n_0 ),
        .CO({\int_data_reg_reg[24]_i_1__0_n_0 ,\int_data_reg_reg[24]_i_1__0_n_1 ,\int_data_reg_reg[24]_i_1__0_n_2 ,\int_data_reg_reg[24]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(b__0[27:24]),
        .O(\int_data_reg_reg[27] ),
        .S({\int_data_reg[24]_i_2__0_n_0 ,\int_data_reg[24]_i_3__0_n_0 ,\int_data_reg[24]_i_4__0_n_0 ,\int_data_reg[24]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[28]_i_1__0 
       (.CI(\int_data_reg_reg[24]_i_1__0_n_0 ),
        .CO({\int_data_reg_reg[28]_i_1__0_n_0 ,\int_data_reg_reg[28]_i_1__0_n_1 ,\int_data_reg_reg[28]_i_1__0_n_2 ,\int_data_reg_reg[28]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(b__0[31:28]),
        .O(\int_data_reg_reg[31] ),
        .S({\int_data_reg[28]_i_2__0_n_0 ,\int_data_reg[28]_i_3__0_n_0 ,\int_data_reg[28]_i_4__0_n_0 ,\int_data_reg[28]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[32]_i_1__0 
       (.CI(\int_data_reg_reg[28]_i_1__0_n_0 ),
        .CO({\int_data_reg_reg[32]_i_1__0_n_0 ,\int_data_reg_reg[32]_i_1__0_n_1 ,\int_data_reg_reg[32]_i_1__0_n_2 ,\int_data_reg_reg[32]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(b__0[35:32]),
        .O(\int_data_reg_reg[35] ),
        .S({\int_data_reg[32]_i_2__0_n_0 ,\int_data_reg[32]_i_3__0_n_0 ,\int_data_reg[32]_i_4__0_n_0 ,\int_data_reg[32]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[36]_i_1__0 
       (.CI(\int_data_reg_reg[32]_i_1__0_n_0 ),
        .CO({\int_data_reg_reg[36]_i_1__0_n_0 ,\int_data_reg_reg[36]_i_1__0_n_1 ,\int_data_reg_reg[36]_i_1__0_n_2 ,\int_data_reg_reg[36]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(b__0[39:36]),
        .O(\int_data_reg_reg[39] ),
        .S({\int_data_reg[36]_i_2__0_n_0 ,\int_data_reg[36]_i_3__0_n_0 ,\int_data_reg[36]_i_4__0_n_0 ,\int_data_reg[36]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[40]_i_1__0 
       (.CI(\int_data_reg_reg[36]_i_1__0_n_0 ),
        .CO({\int_data_reg_reg[40]_i_1__0_n_0 ,\int_data_reg_reg[40]_i_1__0_n_1 ,\int_data_reg_reg[40]_i_1__0_n_2 ,\int_data_reg_reg[40]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(b__0[43:40]),
        .O(\int_data_reg_reg[43] ),
        .S({\int_data_reg[40]_i_2__0_n_0 ,\int_data_reg[40]_i_3__0_n_0 ,\int_data_reg[40]_i_4__0_n_0 ,\int_data_reg[40]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[44]_i_1__0 
       (.CI(\int_data_reg_reg[40]_i_1__0_n_0 ),
        .CO({\int_data_reg_reg[44]_i_1__0_n_0 ,\int_data_reg_reg[44]_i_1__0_n_1 ,\int_data_reg_reg[44]_i_1__0_n_2 ,\int_data_reg_reg[44]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(b__0[47:44]),
        .O(\int_data_reg_reg[47] ),
        .S({\int_data_reg[44]_i_2__0_n_0 ,\int_data_reg[44]_i_3__0_n_0 ,\int_data_reg[44]_i_4__0_n_0 ,\int_data_reg[44]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[48]_i_1__0 
       (.CI(\int_data_reg_reg[44]_i_1__0_n_0 ),
        .CO({\int_data_reg_reg[48]_i_1__0_n_0 ,\int_data_reg_reg[48]_i_1__0_n_1 ,\int_data_reg_reg[48]_i_1__0_n_2 ,\int_data_reg_reg[48]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(b__0[51:48]),
        .O(\int_data_reg_reg[51] ),
        .S({\int_data_reg[48]_i_2__0_n_0 ,\int_data_reg[48]_i_3__0_n_0 ,\int_data_reg[48]_i_4__0_n_0 ,\int_data_reg[48]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[4]_i_1__0 
       (.CI(\int_data_reg_reg[0]_i_1__0_n_0 ),
        .CO({\int_data_reg_reg[4]_i_1__0_n_0 ,\int_data_reg_reg[4]_i_1__0_n_1 ,\int_data_reg_reg[4]_i_1__0_n_2 ,\int_data_reg_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(b__0[7:4]),
        .O(p0__14_1),
        .S({\int_data_reg[4]_i_2__0_n_0 ,\int_data_reg[4]_i_3__0_n_0 ,\int_data_reg[4]_i_4__0_n_0 ,\int_data_reg[4]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[52]_i_1__0 
       (.CI(\int_data_reg_reg[48]_i_1__0_n_0 ),
        .CO({\int_data_reg_reg[52]_i_1__0_n_0 ,\int_data_reg_reg[52]_i_1__0_n_1 ,\int_data_reg_reg[52]_i_1__0_n_2 ,\int_data_reg_reg[52]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(b__0[55:52]),
        .O(\int_data_reg_reg[55] ),
        .S({\int_data_reg[52]_i_2__0_n_0 ,\int_data_reg[52]_i_3__0_n_0 ,\int_data_reg[52]_i_4__0_n_0 ,\int_data_reg[52]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[56]_i_1__0 
       (.CI(\int_data_reg_reg[52]_i_1__0_n_0 ),
        .CO({\int_data_reg_reg[56]_i_1__0_n_0 ,\int_data_reg_reg[56]_i_1__0_n_1 ,\int_data_reg_reg[56]_i_1__0_n_2 ,\int_data_reg_reg[56]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(b__0[59:56]),
        .O(\int_data_reg_reg[59] ),
        .S({\int_data_reg[56]_i_2__0_n_0 ,\int_data_reg[56]_i_3__0_n_0 ,\int_data_reg[56]_i_4__0_n_0 ,\int_data_reg[56]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[60]_i_1__0 
       (.CI(\int_data_reg_reg[56]_i_1__0_n_0 ),
        .CO({\NLW_int_data_reg_reg[60]_i_1__0_CO_UNCONNECTED [3],\int_data_reg_reg[60]_i_1__0_n_1 ,\int_data_reg_reg[60]_i_1__0_n_2 ,\int_data_reg_reg[60]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,b__0[62:60]}),
        .O(\int_data_reg_reg[63] ),
        .S({S,\int_data_reg[60]_i_3__0_n_0 ,\int_data_reg[60]_i_4__0_n_0 ,\int_data_reg[60]_i_5__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \int_data_reg_reg[8]_i_1__0 
       (.CI(\int_data_reg_reg[4]_i_1__0_n_0 ),
        .CO({\int_data_reg_reg[8]_i_1__0_n_0 ,\int_data_reg_reg[8]_i_1__0_n_1 ,\int_data_reg_reg[8]_i_1__0_n_2 ,\int_data_reg_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI(b__0[11:8]),
        .O(\int_data_reg_reg[11] ),
        .S({\int_data_reg[8]_i_2__0_n_0 ,\int_data_reg[8]_i_3__0_n_0 ,\int_data_reg[8]_i_4__0_n_0 ,\int_data_reg[8]_i_5__0_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 13x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0_0[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0[61],p0[61],p0[61],p0[61],p0[61],p0[61:49]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(int_DELTA_U_WRT),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__0_OVERFLOW_UNCONNECTED),
        .P({p0__0_n_58,p0__0_n_59,p0__0_n_60,p0__0_n_61,p0__0_n_62,p0__0_n_63,p0__0_n_64,p0__0_n_65,p0__0_n_66,p0__0_n_67,p0__0_n_68,p0__0_n_69,p0__0_n_70,p0__0_n_71,p0__0_n_72,p0__0_n_73,p0__0_n_74,p0__0_n_75,p0__0_n_76,p0__0_n_77,p0__0_n_78,p0__0_n_79,p0__0_n_80,p0__0_n_81,p0__0_n_82,p0__0_n_83,p0__0_n_84,p0__0_n_85,p0__0_n_86,p0__0_n_87,p0__0_n_88,p0__0_n_89,p0__0_n_90,p0__0_n_91,p0__0_n_92,p0__0_n_93,p0__0_n_94,p0__0_n_95,p0__0_n_96,p0__0_n_97,p0__0_n_98,p0__0_n_99,p0__0_n_100,p0__0_n_101,p0__0_n_102,p0__0_n_103,p0__0_n_104,p0__0_n_105}),
        .PATTERNBDETECT(NLW_p0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__0_n_106,p0__0_n_107,p0__0_n_108,p0__0_n_109,p0__0_n_110,p0__0_n_111,p0__0_n_112,p0__0_n_113,p0__0_n_114,p0__0_n_115,p0__0_n_116,p0__0_n_117,p0__0_n_118,p0__0_n_119,p0__0_n_120,p0__0_n_121,p0__0_n_122,p0__0_n_123,p0__0_n_124,p0__0_n_125,p0__0_n_126,p0__0_n_127,p0__0_n_128,p0__0_n_129,p0__0_n_130,p0__0_n_131,p0__0_n_132,p0__0_n_133,p0__0_n_134,p0__0_n_135,p0__0_n_136,p0__0_n_137,p0__0_n_138,p0__0_n_139,p0__0_n_140,p0__0_n_141,p0__0_n_142,p0__0_n_143,p0__0_n_144,p0__0_n_145,p0__0_n_146,p0__0_n_147,p0__0_n_148,p0__0_n_149,p0__0_n_150,p0__0_n_151,p0__0_n_152,p0__0_n_153}),
        .RSTA(p0__14_2),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x13 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[48:32]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__0__0_OVERFLOW_UNCONNECTED),
        .P(NLW_p0__0__0_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_p0__0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__0_n_106,p0__0_n_107,p0__0_n_108,p0__0_n_109,p0__0_n_110,p0__0_n_111,p0__0_n_112,p0__0_n_113,p0__0_n_114,p0__0_n_115,p0__0_n_116,p0__0_n_117,p0__0_n_118,p0__0_n_119,p0__0_n_120,p0__0_n_121,p0__0_n_122,p0__0_n_123,p0__0_n_124,p0__0_n_125,p0__0_n_126,p0__0_n_127,p0__0_n_128,p0__0_n_129,p0__0_n_130,p0__0_n_131,p0__0_n_132,p0__0_n_133,p0__0_n_134,p0__0_n_135,p0__0_n_136,p0__0_n_137,p0__0_n_138,p0__0_n_139,p0__0_n_140,p0__0_n_141,p0__0_n_142,p0__0_n_143,p0__0_n_144,p0__0_n_145,p0__0_n_146,p0__0_n_147,p0__0_n_148,p0__0_n_149,p0__0_n_150,p0__0_n_151,p0__0_n_152,p0__0_n_153}),
        .PCOUT({p0__0__0_n_106,p0__0__0_n_107,p0__0__0_n_108,p0__0__0_n_109,p0__0__0_n_110,p0__0__0_n_111,p0__0__0_n_112,p0__0__0_n_113,p0__0__0_n_114,p0__0__0_n_115,p0__0__0_n_116,p0__0__0_n_117,p0__0__0_n_118,p0__0__0_n_119,p0__0__0_n_120,p0__0__0_n_121,p0__0__0_n_122,p0__0__0_n_123,p0__0__0_n_124,p0__0__0_n_125,p0__0__0_n_126,p0__0__0_n_127,p0__0__0_n_128,p0__0__0_n_129,p0__0__0_n_130,p0__0__0_n_131,p0__0__0_n_132,p0__0__0_n_133,p0__0__0_n_134,p0__0__0_n_135,p0__0__0_n_136,p0__0__0_n_137,p0__0__0_n_138,p0__0__0_n_139,p0__0__0_n_140,p0__0__0_n_141,p0__0__0_n_142,p0__0__0_n_143,p0__0__0_n_144,p0__0__0_n_145,p0__0__0_n_146,p0__0__0_n_147,p0__0__0_n_148,p0__0__0_n_149,p0__0__0_n_150,p0__0__0_n_151,p0__0__0_n_152,p0__0__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__0__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 13x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46:34]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0[61],p0[61],p0[61],p0[61],p0[61],p0[61:49]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(int_DELTA_U_WRT),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__1_OVERFLOW_UNCONNECTED),
        .P({p0__1_n_58,p0__1_n_59,p0__1_n_60,p0__1_n_61,p0__1_n_62,p0__1_n_63,p0__1_n_64,p0__1_n_65,p0__1_n_66,p0__1_n_67,p0__1_n_68,p0__1_n_69,p0__1_n_70,p0__1_n_71,p0__1_n_72,p0__1_n_73,p0__1_n_74,p0__1_n_75,p0__1_n_76,p0__1_n_77,p0__1_n_78,p0__1_n_79,p0__1_n_80,p0__1_n_81,p0__1_n_82,p0__1_n_83,p0__1_n_84,p0__1_n_85,p0__1_n_86,p0__1_n_87,p0__1_n_88,p0__1_n_89,p0__1_n_90,p0__1_n_91,p0__1_n_92,p0__1_n_93,p0__1_n_94,p0__1_n_95,p0__1_n_96,p0__1_n_97,p0__1_n_98,p0__1_n_99,p0__1_n_100,p0__1_n_101,p0__1_n_102,p0__1_n_103,p0__1_n_104,p0__1_n_105}),
        .PATTERNBDETECT(NLW_p0__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__0__0_n_106,p0__0__0_n_107,p0__0__0_n_108,p0__0__0_n_109,p0__0__0_n_110,p0__0__0_n_111,p0__0__0_n_112,p0__0__0_n_113,p0__0__0_n_114,p0__0__0_n_115,p0__0__0_n_116,p0__0__0_n_117,p0__0__0_n_118,p0__0__0_n_119,p0__0__0_n_120,p0__0__0_n_121,p0__0__0_n_122,p0__0__0_n_123,p0__0__0_n_124,p0__0__0_n_125,p0__0__0_n_126,p0__0__0_n_127,p0__0__0_n_128,p0__0__0_n_129,p0__0__0_n_130,p0__0__0_n_131,p0__0__0_n_132,p0__0__0_n_133,p0__0__0_n_134,p0__0__0_n_135,p0__0__0_n_136,p0__0__0_n_137,p0__0__0_n_138,p0__0__0_n_139,p0__0__0_n_140,p0__0__0_n_141,p0__0__0_n_142,p0__0__0_n_143,p0__0__0_n_144,p0__0__0_n_145,p0__0__0_n_146,p0__0__0_n_147,p0__0__0_n_148,p0__0__0_n_149,p0__0__0_n_150,p0__0__0_n_151,p0__0__0_n_152,p0__0__0_n_153}),
        .PCOUT({p0__1_n_106,p0__1_n_107,p0__1_n_108,p0__1_n_109,p0__1_n_110,p0__1_n_111,p0__1_n_112,p0__1_n_113,p0__1_n_114,p0__1_n_115,p0__1_n_116,p0__1_n_117,p0__1_n_118,p0__1_n_119,p0__1_n_120,p0__1_n_121,p0__1_n_122,p0__1_n_123,p0__1_n_124,p0__1_n_125,p0__1_n_126,p0__1_n_127,p0__1_n_128,p0__1_n_129,p0__1_n_130,p0__1_n_131,p0__1_n_132,p0__1_n_133,p0__1_n_134,p0__1_n_135,p0__1_n_136,p0__1_n_137,p0__1_n_138,p0__1_n_139,p0__1_n_140,p0__1_n_141,p0__1_n_142,p0__1_n_143,p0__1_n_144,p0__1_n_145,p0__1_n_146,p0__1_n_147,p0__1_n_148,p0__1_n_149,p0__1_n_150,p0__1_n_151,p0__1_n_152,p0__1_n_153}),
        .RSTA(p0__14_2),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__10
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[31:15]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__10_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__10_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__10_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__10_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__10_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__10_OVERFLOW_UNCONNECTED),
        .P({p0__10_n_58,p0__10_n_59,p0__10_n_60,p0__10_n_61,p0__10_n_62,p0__10_n_63,p0__10_n_64,p0__10_n_65,p0__10_n_66,p0__10_n_67,p0__10_n_68,p0__10_n_69,p0__10_n_70,p0__10_n_71,p0__10_n_72,p0__10_n_73,p0__10_n_74,p0__10_n_75,p0__10_n_76,p0__10_n_77,p0__10_n_78,p0__10_n_79,p0__10_n_80,p0__10_n_81,p0__10_n_82,p0__10_n_83,p0__10_n_84,p0__10_n_85,p0__10_n_86,p0__10_n_87,p0__10_n_88,p0__10_n_89,p0__10_n_90,p0__10_n_91,p0__10_n_92,p0__10_n_93,p0__10_n_94,p0__10_n_95,p0__10_n_96,p0__10_n_97,p0__10_n_98,p0__10_n_99,p0__10_n_100,p0__10_n_101,p0__10_n_102,p0__10_n_103,p0__10_n_104,p0__10_n_105}),
        .PATTERNBDETECT(NLW_p0__10_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__10_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__9_n_106,p0__9_n_107,p0__9_n_108,p0__9_n_109,p0__9_n_110,p0__9_n_111,p0__9_n_112,p0__9_n_113,p0__9_n_114,p0__9_n_115,p0__9_n_116,p0__9_n_117,p0__9_n_118,p0__9_n_119,p0__9_n_120,p0__9_n_121,p0__9_n_122,p0__9_n_123,p0__9_n_124,p0__9_n_125,p0__9_n_126,p0__9_n_127,p0__9_n_128,p0__9_n_129,p0__9_n_130,p0__9_n_131,p0__9_n_132,p0__9_n_133,p0__9_n_134,p0__9_n_135,p0__9_n_136,p0__9_n_137,p0__9_n_138,p0__9_n_139,p0__9_n_140,p0__9_n_141,p0__9_n_142,p0__9_n_143,p0__9_n_144,p0__9_n_145,p0__9_n_146,p0__9_n_147,p0__9_n_148,p0__9_n_149,p0__9_n_150,p0__9_n_151,p0__9_n_152,p0__9_n_153}),
        .PCOUT(NLW_p0__10_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__10_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__11
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[14:0],1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__11_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__11_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__11_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__11_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__11_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__11_OVERFLOW_UNCONNECTED),
        .P({p0__11_n_58,p0__11_n_59,p0__11_n_60,p0__11_n_61,p0__11_n_62,p0__11_n_63,p0__11_n_64,p0__11_n_65,p0__11_n_66,p0__11_n_67,p0__11_n_68,p0__11_n_69,p0__11_n_70,p0__11_n_71,p0__11_n_72,p0__11_n_73,p0__11_n_74,p0__11_n_75,p0__11_n_76,p0__11_n_77,p0__11_n_78,p0__11_n_79,p0__11_n_80,p0__11_n_81,p0__11_n_82,p0__11_n_83,p0__11_n_84,p0__11_n_85,p0__11_n_86,p0__11_n_87,p0__11_n_88,p0__11_n_89,p0__11_n_90,p0__11_n_91,p0__11_n_92,p0__11_n_93,p0__11_n_94,p0__11_n_95,p0__11_n_96,p0__11_n_97,p0__11_n_98,p0__11_n_99,p0__11_n_100,p0__11_n_101,p0__11_n_102,p0__11_n_103,p0__11_n_104,p0__11_n_105}),
        .PATTERNBDETECT(NLW_p0__11_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__11_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__11_n_106,p0__11_n_107,p0__11_n_108,p0__11_n_109,p0__11_n_110,p0__11_n_111,p0__11_n_112,p0__11_n_113,p0__11_n_114,p0__11_n_115,p0__11_n_116,p0__11_n_117,p0__11_n_118,p0__11_n_119,p0__11_n_120,p0__11_n_121,p0__11_n_122,p0__11_n_123,p0__11_n_124,p0__11_n_125,p0__11_n_126,p0__11_n_127,p0__11_n_128,p0__11_n_129,p0__11_n_130,p0__11_n_131,p0__11_n_132,p0__11_n_133,p0__11_n_134,p0__11_n_135,p0__11_n_136,p0__11_n_137,p0__11_n_138,p0__11_n_139,p0__11_n_140,p0__11_n_141,p0__11_n_142,p0__11_n_143,p0__11_n_144,p0__11_n_145,p0__11_n_146,p0__11_n_147,p0__11_n_148,p0__11_n_149,p0__11_n_150,p0__11_n_151,p0__11_n_152,p0__11_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__11_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__12
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[14:0],1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__12_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__12_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__12_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__12_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__12_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__12_OVERFLOW_UNCONNECTED),
        .P(NLW_p0__12_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_p0__12_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__12_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__11_n_106,p0__11_n_107,p0__11_n_108,p0__11_n_109,p0__11_n_110,p0__11_n_111,p0__11_n_112,p0__11_n_113,p0__11_n_114,p0__11_n_115,p0__11_n_116,p0__11_n_117,p0__11_n_118,p0__11_n_119,p0__11_n_120,p0__11_n_121,p0__11_n_122,p0__11_n_123,p0__11_n_124,p0__11_n_125,p0__11_n_126,p0__11_n_127,p0__11_n_128,p0__11_n_129,p0__11_n_130,p0__11_n_131,p0__11_n_132,p0__11_n_133,p0__11_n_134,p0__11_n_135,p0__11_n_136,p0__11_n_137,p0__11_n_138,p0__11_n_139,p0__11_n_140,p0__11_n_141,p0__11_n_142,p0__11_n_143,p0__11_n_144,p0__11_n_145,p0__11_n_146,p0__11_n_147,p0__11_n_148,p0__11_n_149,p0__11_n_150,p0__11_n_151,p0__11_n_152,p0__11_n_153}),
        .PCOUT({p0__12_n_106,p0__12_n_107,p0__12_n_108,p0__12_n_109,p0__12_n_110,p0__12_n_111,p0__12_n_112,p0__12_n_113,p0__12_n_114,p0__12_n_115,p0__12_n_116,p0__12_n_117,p0__12_n_118,p0__12_n_119,p0__12_n_120,p0__12_n_121,p0__12_n_122,p0__12_n_123,p0__12_n_124,p0__12_n_125,p0__12_n_126,p0__12_n_127,p0__12_n_128,p0__12_n_129,p0__12_n_130,p0__12_n_131,p0__12_n_132,p0__12_n_133,p0__12_n_134,p0__12_n_135,p0__12_n_136,p0__12_n_137,p0__12_n_138,p0__12_n_139,p0__12_n_140,p0__12_n_141,p0__12_n_142,p0__12_n_143,p0__12_n_144,p0__12_n_145,p0__12_n_146,p0__12_n_147,p0__12_n_148,p0__12_n_149,p0__12_n_150,p0__12_n_151,p0__12_n_152,p0__12_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__12_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__13
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[31:15]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__13_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__13_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__13_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__13_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__13_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__13_OVERFLOW_UNCONNECTED),
        .P({p0__13_n_58,p0__13_n_59,p0__13_n_60,p0__13_n_61,p0__13_n_62,p0__13_n_63,p0__13_n_64,p0__13_n_65,p0__13_n_66,p0__13_n_67,p0__13_n_68,p0__13_n_69,p0__13_n_70,p0__13_n_71,p0__13_n_72,p0__13_n_73,p0__13_n_74,p0__13_n_75,p0__13_n_76,p0__13_n_77,p0__13_n_78,p0__13_n_79,p0__13_n_80,p0__13_n_81,p0__13_n_82,p0__13_n_83,p0__13_n_84,p0__13_n_85,p0__13_n_86,p0__13_n_87,p0__13_n_88,p0__13_n_89,p0__13_n_90,p0__13_n_91,p0__13_n_92,p0__13_n_93,p0__13_n_94,p0__13_n_95,p0__13_n_96,p0__13_n_97,p0__13_n_98,p0__13_n_99,p0__13_n_100,p0__13_n_101,p0__13_n_102,p0__13_n_103,p0__13_n_104,p0__13_n_105}),
        .PATTERNBDETECT(NLW_p0__13_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__13_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__12_n_106,p0__12_n_107,p0__12_n_108,p0__12_n_109,p0__12_n_110,p0__12_n_111,p0__12_n_112,p0__12_n_113,p0__12_n_114,p0__12_n_115,p0__12_n_116,p0__12_n_117,p0__12_n_118,p0__12_n_119,p0__12_n_120,p0__12_n_121,p0__12_n_122,p0__12_n_123,p0__12_n_124,p0__12_n_125,p0__12_n_126,p0__12_n_127,p0__12_n_128,p0__12_n_129,p0__12_n_130,p0__12_n_131,p0__12_n_132,p0__12_n_133,p0__12_n_134,p0__12_n_135,p0__12_n_136,p0__12_n_137,p0__12_n_138,p0__12_n_139,p0__12_n_140,p0__12_n_141,p0__12_n_142,p0__12_n_143,p0__12_n_144,p0__12_n_145,p0__12_n_146,p0__12_n_147,p0__12_n_148,p0__12_n_149,p0__12_n_150,p0__12_n_151,p0__12_n_152,p0__12_n_153}),
        .PCOUT({p0__13_n_106,p0__13_n_107,p0__13_n_108,p0__13_n_109,p0__13_n_110,p0__13_n_111,p0__13_n_112,p0__13_n_113,p0__13_n_114,p0__13_n_115,p0__13_n_116,p0__13_n_117,p0__13_n_118,p0__13_n_119,p0__13_n_120,p0__13_n_121,p0__13_n_122,p0__13_n_123,p0__13_n_124,p0__13_n_125,p0__13_n_126,p0__13_n_127,p0__13_n_128,p0__13_n_129,p0__13_n_130,p0__13_n_131,p0__13_n_132,p0__13_n_133,p0__13_n_134,p0__13_n_135,p0__13_n_136,p0__13_n_137,p0__13_n_138,p0__13_n_139,p0__13_n_140,p0__13_n_141,p0__13_n_142,p0__13_n_143,p0__13_n_144,p0__13_n_145,p0__13_n_146,p0__13_n_147,p0__13_n_148,p0__13_n_149,p0__13_n_150,p0__13_n_151,p0__13_n_152,p0__13_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__13_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__14
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[14:0],1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__14_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__14_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__14_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__14_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__14_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__14_OVERFLOW_UNCONNECTED),
        .P({p0__14_n_58,p0__14_n_59,p0__14_n_60,p0__14_n_61,p0__14_n_62,p0__14_n_63,p0__14_n_64,p0__14_n_65,p0__14_n_66,p0__14_n_67,p0__14_n_68,p0__14_n_69,p0__14_n_70,p0__14_n_71,p0__14_n_72,p0__14_n_73,p0__14_n_74,p0__14_n_75,p0__14_n_76,p0__14_n_77,p0__14_n_78,p0__14_n_79,p0__14_n_80,p0__14_n_81,p0__14_n_82,p0__14_n_83,p0__14_n_84,p0__14_n_85,p0__14_n_86,p0__14_n_87,p0__14_n_88,p0__14_n_89,p0__14_n_90,p0__14_n_91,p0__14_n_92,p0__14_n_93,p0__14_n_94,p0__14_n_95,p0__14_n_96,p0__14_n_97,p0__14_n_98,p0__14_n_99,p0__14_n_100,p0__14_n_101,p0__14_n_102,p0__14_n_103,p0__14_n_104,p0__14_n_105}),
        .PATTERNBDETECT(NLW_p0__14_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__14_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__13_n_106,p0__13_n_107,p0__13_n_108,p0__13_n_109,p0__13_n_110,p0__13_n_111,p0__13_n_112,p0__13_n_113,p0__13_n_114,p0__13_n_115,p0__13_n_116,p0__13_n_117,p0__13_n_118,p0__13_n_119,p0__13_n_120,p0__13_n_121,p0__13_n_122,p0__13_n_123,p0__13_n_124,p0__13_n_125,p0__13_n_126,p0__13_n_127,p0__13_n_128,p0__13_n_129,p0__13_n_130,p0__13_n_131,p0__13_n_132,p0__13_n_133,p0__13_n_134,p0__13_n_135,p0__13_n_136,p0__13_n_137,p0__13_n_138,p0__13_n_139,p0__13_n_140,p0__13_n_141,p0__13_n_142,p0__13_n_143,p0__13_n_144,p0__13_n_145,p0__13_n_146,p0__13_n_147,p0__13_n_148,p0__13_n_149,p0__13_n_150,p0__13_n_151,p0__13_n_152,p0__13_n_153}),
        .PCOUT(NLW_p0__14_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__14_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 13x13 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__2
       (.A({p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61],p0[61:49]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__2_OVERFLOW_UNCONNECTED),
        .P({p0__2_n_58,p0__2_n_59,p0__2_n_60,p0__2_n_61,p0__2_n_62,p0__2_n_63,p0__2_n_64,p0__2_n_65,p0__2_n_66,p0__2_n_67,p0__2_n_68,p0__2_n_69,p0__2_n_70,p0__2_n_71,p0__2_n_72,p0__2_n_73,p0__2_n_74,p0__2_n_75,p0__2_n_76,p0__2_n_77,p0__2_n_78,p0__2_n_79,p0__2_n_80,p0__2_n_81,p0__2_n_82,p0__2_n_83,p0__2_n_84,p0__2_n_85,p0__2_n_86,p0__2_n_87,p0__2_n_88,p0__2_n_89,p0__2_n_90,p0__2_n_91,p0__2_n_92,p0__2_n_93,p0__2_n_94,p0__2_n_95,p0__2_n_96,p0__2_n_97,p0__2_n_98,p0__2_n_99,p0__2_n_100,p0__2_n_101,p0__2_n_102,p0__2_n_103,p0__2_n_104,p0__2_n_105}),
        .PATTERNBDETECT(NLW_p0__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__1_n_106,p0__1_n_107,p0__1_n_108,p0__1_n_109,p0__1_n_110,p0__1_n_111,p0__1_n_112,p0__1_n_113,p0__1_n_114,p0__1_n_115,p0__1_n_116,p0__1_n_117,p0__1_n_118,p0__1_n_119,p0__1_n_120,p0__1_n_121,p0__1_n_122,p0__1_n_123,p0__1_n_124,p0__1_n_125,p0__1_n_126,p0__1_n_127,p0__1_n_128,p0__1_n_129,p0__1_n_130,p0__1_n_131,p0__1_n_132,p0__1_n_133,p0__1_n_134,p0__1_n_135,p0__1_n_136,p0__1_n_137,p0__1_n_138,p0__1_n_139,p0__1_n_140,p0__1_n_141,p0__1_n_142,p0__1_n_143,p0__1_n_144,p0__1_n_145,p0__1_n_146,p0__1_n_147,p0__1_n_148,p0__1_n_149,p0__1_n_150,p0__1_n_151,p0__1_n_152,p0__1_n_153}),
        .PCOUT(NLW_p0__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[48:32]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__3_OVERFLOW_UNCONNECTED),
        .P(NLW_p0__3_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_p0__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__3_n_106,p0__3_n_107,p0__3_n_108,p0__3_n_109,p0__3_n_110,p0__3_n_111,p0__3_n_112,p0__3_n_113,p0__3_n_114,p0__3_n_115,p0__3_n_116,p0__3_n_117,p0__3_n_118,p0__3_n_119,p0__3_n_120,p0__3_n_121,p0__3_n_122,p0__3_n_123,p0__3_n_124,p0__3_n_125,p0__3_n_126,p0__3_n_127,p0__3_n_128,p0__3_n_129,p0__3_n_130,p0__3_n_131,p0__3_n_132,p0__3_n_133,p0__3_n_134,p0__3_n_135,p0__3_n_136,p0__3_n_137,p0__3_n_138,p0__3_n_139,p0__3_n_140,p0__3_n_141,p0__3_n_142,p0__3_n_143,p0__3_n_144,p0__3_n_145,p0__3_n_146,p0__3_n_147,p0__3_n_148,p0__3_n_149,p0__3_n_150,p0__3_n_151,p0__3_n_152,p0__3_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__3_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 13x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__4
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0_0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__4_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0[61],p0[61],p0[61],p0[61],p0[61],p0[61:49]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__4_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__4_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__4_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(int_DELTA_U_WRT),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__4_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__4_OVERFLOW_UNCONNECTED),
        .P({p0__4_n_58,p0__4_n_59,p0__4_n_60,p0__4_n_61,p0__4_n_62,p0__4_n_63,p0__4_n_64,p0__4_n_65,p0__4_n_66,p0__4_n_67,p0__4_n_68,p0__4_n_69,p0__4_n_70,p0__4_n_71,p0__4_n_72,p0__4_n_73,p0__4_n_74,p0__4_n_75,p0__4_n_76,p0__4_n_77,p0__4_n_78,p0__4_n_79,p0__4_n_80,p0__4_n_81,p0__4_n_82,p0__4_n_83,p0__4_n_84,p0__4_n_85,p0__4_n_86,p0__4_n_87,p0__4_n_88,p0__4_n_89,p0__4_n_90,p0__4_n_91,p0__4_n_92,p0__4_n_93,p0__4_n_94,p0__4_n_95,p0__4_n_96,p0__4_n_97,p0__4_n_98,p0__4_n_99,p0__4_n_100,p0__4_n_101,p0__4_n_102,p0__4_n_103,p0__4_n_104,p0__4_n_105}),
        .PATTERNBDETECT(NLW_p0__4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__4_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__3_n_106,p0__3_n_107,p0__3_n_108,p0__3_n_109,p0__3_n_110,p0__3_n_111,p0__3_n_112,p0__3_n_113,p0__3_n_114,p0__3_n_115,p0__3_n_116,p0__3_n_117,p0__3_n_118,p0__3_n_119,p0__3_n_120,p0__3_n_121,p0__3_n_122,p0__3_n_123,p0__3_n_124,p0__3_n_125,p0__3_n_126,p0__3_n_127,p0__3_n_128,p0__3_n_129,p0__3_n_130,p0__3_n_131,p0__3_n_132,p0__3_n_133,p0__3_n_134,p0__3_n_135,p0__3_n_136,p0__3_n_137,p0__3_n_138,p0__3_n_139,p0__3_n_140,p0__3_n_141,p0__3_n_142,p0__3_n_143,p0__3_n_144,p0__3_n_145,p0__3_n_146,p0__3_n_147,p0__3_n_148,p0__3_n_149,p0__3_n_150,p0__3_n_151,p0__3_n_152,p0__3_n_153}),
        .PCOUT({p0__4_n_106,p0__4_n_107,p0__4_n_108,p0__4_n_109,p0__4_n_110,p0__4_n_111,p0__4_n_112,p0__4_n_113,p0__4_n_114,p0__4_n_115,p0__4_n_116,p0__4_n_117,p0__4_n_118,p0__4_n_119,p0__4_n_120,p0__4_n_121,p0__4_n_122,p0__4_n_123,p0__4_n_124,p0__4_n_125,p0__4_n_126,p0__4_n_127,p0__4_n_128,p0__4_n_129,p0__4_n_130,p0__4_n_131,p0__4_n_132,p0__4_n_133,p0__4_n_134,p0__4_n_135,p0__4_n_136,p0__4_n_137,p0__4_n_138,p0__4_n_139,p0__4_n_140,p0__4_n_141,p0__4_n_142,p0__4_n_143,p0__4_n_144,p0__4_n_145,p0__4_n_146,p0__4_n_147,p0__4_n_148,p0__4_n_149,p0__4_n_150,p0__4_n_151,p0__4_n_152,p0__4_n_153}),
        .RSTA(p0__14_2),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__4_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry
       (.CI(1'b0),
        .CO({p0__4_carry_n_0,p0__4_carry_n_1,p0__4_carry_n_2,p0__4_carry_n_3}),
        .CYINIT(1'b0),
        .DI({p0__14_n_103,p0__14_n_104,p0__14_n_105,1'b0}),
        .O(NLW_p0__4_carry_O_UNCONNECTED[3:0]),
        .S({p0__4_carry_i_1__0_n_0,p0__4_carry_i_2__0_n_0,p0__4_carry_i_3__0_n_0,p0__13_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__0
       (.CI(p0__4_carry_n_0),
        .CO({p0__4_carry__0_n_0,p0__4_carry__0_n_1,p0__4_carry__0_n_2,p0__4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({p0__14_n_99,p0__14_n_100,p0__14_n_101,p0__14_n_102}),
        .O(NLW_p0__4_carry__0_O_UNCONNECTED[3:0]),
        .S({p0__4_carry__0_i_1__0_n_0,p0__4_carry__0_i_2__0_n_0,p0__4_carry__0_i_3__0_n_0,p0__4_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__0_i_1__0
       (.I0(p0__14_n_99),
        .I1(p0__8_n_99),
        .O(p0__4_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__0_i_2__0
       (.I0(p0__14_n_100),
        .I1(p0__8_n_100),
        .O(p0__4_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__0_i_3__0
       (.I0(p0__14_n_101),
        .I1(p0__8_n_101),
        .O(p0__4_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__0_i_4__0
       (.I0(p0__14_n_102),
        .I1(p0__8_n_102),
        .O(p0__4_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__1
       (.CI(p0__4_carry__0_n_0),
        .CO({p0__4_carry__1_n_0,p0__4_carry__1_n_1,p0__4_carry__1_n_2,p0__4_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({p0__14_n_95,p0__14_n_96,p0__14_n_97,p0__14_n_98}),
        .O(NLW_p0__4_carry__1_O_UNCONNECTED[3:0]),
        .S({p0__4_carry__1_i_1__0_n_0,p0__4_carry__1_i_2__0_n_0,p0__4_carry__1_i_3__0_n_0,p0__4_carry__1_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__10
       (.CI(p0__4_carry__9_n_0),
        .CO({p0__4_carry__10_n_0,p0__4_carry__10_n_1,p0__4_carry__10_n_2,p0__4_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__10_i_1__0_n_0,p0__4_carry__10_i_2__0_n_0,p0__4_carry__10_i_3__0_n_0,p0__4_carry__10_i_4__0_n_0}),
        .O(b__0[32:29]),
        .S({p0__4_carry__10_i_5__0_n_0,p0__4_carry__10_i_6__0_n_0,p0__4_carry__10_i_7__0_n_0,p0__4_carry__10_i_8__0_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__10_i_10__0
       (.I0(p0__6_n_95),
        .I1(p0__10_n_78),
        .I2(p0__0_n_95),
        .O(p0__4_carry__10_i_10__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__10_i_11__0
       (.I0(p0__6_n_96),
        .I1(p0__10_n_79),
        .I2(p0__0_n_96),
        .O(p0__4_carry__10_i_11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__10_i_12__0
       (.I0(p0__6_n_93),
        .I1(p0__10_n_76),
        .I2(p0__0_n_93),
        .O(p0__4_carry__10_i_12__0_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__10_i_1__0
       (.I0(p0__6_n_95),
        .I1(p0__10_n_78),
        .I2(p0__0_n_95),
        .I3(p0__14_n_60),
        .I4(p0__4_carry__10_i_9__0_n_0),
        .O(p0__4_carry__10_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__10_i_2__0
       (.I0(p0__6_n_96),
        .I1(p0__10_n_79),
        .I2(p0__0_n_96),
        .I3(p0__14_n_61),
        .I4(p0__4_carry__10_i_10__0_n_0),
        .O(p0__4_carry__10_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__10_i_3__0
       (.I0(p0__6_n_97),
        .I1(p0__10_n_80),
        .I2(p0__0_n_97),
        .I3(p0__14_n_62),
        .I4(p0__4_carry__10_i_11__0_n_0),
        .O(p0__4_carry__10_i_3__0_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__10_i_4__0
       (.I0(p0__6_n_98),
        .I1(p0__10_n_81),
        .I2(p0__0_n_98),
        .I3(p0__14_n_63),
        .I4(p0__4_carry__9_i_12__0_n_0),
        .O(p0__4_carry__10_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__10_i_5__0
       (.I0(p0__4_carry__10_i_1__0_n_0),
        .I1(p0__6_n_94),
        .I2(p0__10_n_77),
        .I3(p0__0_n_94),
        .I4(p0__14_n_59),
        .I5(p0__4_carry__10_i_12__0_n_0),
        .O(p0__4_carry__10_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__10_i_6__0
       (.I0(p0__4_carry__10_i_2__0_n_0),
        .I1(p0__6_n_95),
        .I2(p0__10_n_78),
        .I3(p0__0_n_95),
        .I4(p0__14_n_60),
        .I5(p0__4_carry__10_i_9__0_n_0),
        .O(p0__4_carry__10_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__10_i_7__0
       (.I0(p0__4_carry__10_i_3__0_n_0),
        .I1(p0__6_n_96),
        .I2(p0__10_n_79),
        .I3(p0__0_n_96),
        .I4(p0__14_n_61),
        .I5(p0__4_carry__10_i_10__0_n_0),
        .O(p0__4_carry__10_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__10_i_8__0
       (.I0(p0__4_carry__10_i_4__0_n_0),
        .I1(p0__6_n_97),
        .I2(p0__10_n_80),
        .I3(p0__0_n_97),
        .I4(p0__14_n_62),
        .I5(p0__4_carry__10_i_11__0_n_0),
        .O(p0__4_carry__10_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__10_i_9__0
       (.I0(p0__6_n_94),
        .I1(p0__10_n_77),
        .I2(p0__0_n_94),
        .O(p0__4_carry__10_i_9__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__11
       (.CI(p0__4_carry__10_n_0),
        .CO({p0__4_carry__11_n_0,p0__4_carry__11_n_1,p0__4_carry__11_n_2,p0__4_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__11_i_1__0_n_0,p0__4_carry__11_i_2__0_n_0,p0__4_carry__11_i_3__0_n_0,p0__4_carry__11_i_4__0_n_0}),
        .O(b__0[36:33]),
        .S({p0__4_carry__11_i_5__0_n_0,p0__4_carry__11_i_6__0_n_0,p0__4_carry__11_i_7__0_n_0,p0__4_carry__11_i_8__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h99966669)) 
    p0__4_carry__11_i_10__0
       (.I0(p0__0_n_90),
        .I1(p0__6_n_90),
        .I2(p0__0_n_91),
        .I3(p0__6_n_91),
        .I4(p0__10_n_73),
        .O(p0__4_carry__11_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h17)) 
    p0__4_carry__11_i_11__0
       (.I0(p0__0_n_93),
        .I1(p0__10_n_76),
        .I2(p0__6_n_93),
        .O(p0__4_carry__11_i_11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__11_i_12__0
       (.I0(p0__6_n_91),
        .I1(p0__0_n_91),
        .I2(p0__10_n_73),
        .I3(p0__6_n_90),
        .I4(p0__0_n_90),
        .O(p0__4_carry__11_i_12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__11_i_13__0
       (.I0(p0__0_n_90),
        .I1(p0__6_n_90),
        .O(p0__4_carry__11_i_13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h9)) 
    p0__4_carry__11_i_14__0
       (.I0(p0__6_n_91),
        .I1(p0__0_n_91),
        .O(p0__4_carry__11_i_14__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    p0__4_carry__11_i_15__0
       (.I0(p0__10_n_75),
        .I1(p0__14_n_58),
        .O(p0__4_carry__11_i_15__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__11_i_16__0
       (.I0(p0__6_n_94),
        .I1(p0__10_n_77),
        .I2(p0__0_n_94),
        .O(p0__4_carry__11_i_16__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    p0__4_carry__11_i_17
       (.I0(p0__0_n_92),
        .I1(p0__6_n_92),
        .I2(p0__10_n_75),
        .I3(p0__14_n_58),
        .O(p0__4_carry__11_i_17_n_0));
  LUT4 #(
    .INIT(16'hA800)) 
    p0__4_carry__11_i_1__0
       (.I0(p0__4_carry__11_i_9__0_n_0),
        .I1(p0__0_n_92),
        .I2(p0__6_n_92),
        .I3(p0__4_carry__11_i_10__0_n_0),
        .O(p0__4_carry__11_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h57A8)) 
    p0__4_carry__11_i_2__0
       (.I0(p0__4_carry__11_i_9__0_n_0),
        .I1(p0__0_n_92),
        .I2(p0__6_n_92),
        .I3(p0__4_carry__11_i_10__0_n_0),
        .O(p0__4_carry__11_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hD74141D7)) 
    p0__4_carry__11_i_3__0
       (.I0(p0__4_carry__11_i_11__0_n_0),
        .I1(p0__14_n_58),
        .I2(p0__10_n_75),
        .I3(p0__6_n_92),
        .I4(p0__0_n_92),
        .O(p0__4_carry__11_i_3__0_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__11_i_4__0
       (.I0(p0__6_n_94),
        .I1(p0__10_n_77),
        .I2(p0__0_n_94),
        .I3(p0__14_n_59),
        .I4(p0__4_carry__10_i_12__0_n_0),
        .O(p0__4_carry__11_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__11_i_5__0
       (.I0(p0__4_carry__11_i_1__0_n_0),
        .I1(p0__4_carry__11_i_12__0_n_0),
        .I2(p0__6_n_89),
        .I3(p0__0_n_89),
        .I4(p0__4_carry__11_i_13__0_n_0),
        .I5(p0__10_n_72),
        .O(p0__4_carry__11_i_5__0_n_0));
  LUT6 #(
    .INIT(64'hA9555556555656AA)) 
    p0__4_carry__11_i_6__0
       (.I0(p0__4_carry__11_i_10__0_n_0),
        .I1(p0__6_n_92),
        .I2(p0__0_n_92),
        .I3(p0__4_carry__11_i_14__0_n_0),
        .I4(p0__4_carry__11_i_15__0_n_0),
        .I5(p0__10_n_74),
        .O(p0__4_carry__11_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9996)) 
    p0__4_carry__11_i_7__0
       (.I0(p0__4_carry__11_i_3__0_n_0),
        .I1(p0__4_carry__11_i_9__0_n_0),
        .I2(p0__0_n_92),
        .I3(p0__6_n_92),
        .O(p0__4_carry__11_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h177E7EE8E8818117)) 
    p0__4_carry__11_i_8__0
       (.I0(p0__14_n_59),
        .I1(p0__4_carry__11_i_16__0_n_0),
        .I2(p0__0_n_93),
        .I3(p0__10_n_76),
        .I4(p0__6_n_93),
        .I5(p0__4_carry__11_i_17_n_0),
        .O(p0__4_carry__11_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h66969969)) 
    p0__4_carry__11_i_9__0
       (.I0(p0__0_n_91),
        .I1(p0__6_n_91),
        .I2(p0__10_n_75),
        .I3(p0__14_n_58),
        .I4(p0__10_n_74),
        .O(p0__4_carry__11_i_9__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__12
       (.CI(p0__4_carry__11_n_0),
        .CO({p0__4_carry__12_n_0,p0__4_carry__12_n_1,p0__4_carry__12_n_2,p0__4_carry__12_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__12_i_1__0_n_0,p0__4_carry__12_i_2__0_n_0,p0__4_carry__12_i_3__0_n_0,p0__4_carry__12_i_4__0_n_0}),
        .O(b__0[40:37]),
        .S({p0__4_carry__12_i_5__0_n_0,p0__4_carry__12_i_6__0_n_0,p0__4_carry__12_i_7__0_n_0,p0__4_carry__12_i_8__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__12_i_10__0
       (.I0(p0__6_n_89),
        .I1(p0__0_n_89),
        .I2(p0__10_n_71),
        .I3(p0__1_n_105),
        .I4(p0__6_n_88),
        .O(p0__4_carry__12_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__12_i_11__0
       (.I0(p0__6_n_90),
        .I1(p0__0_n_90),
        .I2(p0__10_n_72),
        .I3(p0__0_n_89),
        .I4(p0__6_n_89),
        .O(p0__4_carry__12_i_11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__12_i_12__0
       (.I0(p0__6_n_87),
        .I1(p0__1_n_104),
        .I2(p0__10_n_69),
        .I3(p0__1_n_103),
        .I4(p0__6_n_86),
        .O(p0__4_carry__12_i_12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__12_i_13__0
       (.I0(p0__1_n_103),
        .I1(p0__6_n_86),
        .O(p0__4_carry__12_i_13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__12_i_14__0
       (.I0(p0__1_n_104),
        .I1(p0__6_n_87),
        .O(p0__4_carry__12_i_14__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__12_i_15__0
       (.I0(p0__1_n_105),
        .I1(p0__6_n_88),
        .O(p0__4_carry__12_i_15__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h66699996)) 
    p0__4_carry__12_i_16__0
       (.I0(p0__6_n_88),
        .I1(p0__1_n_105),
        .I2(p0__0_n_89),
        .I3(p0__6_n_89),
        .I4(p0__10_n_71),
        .O(p0__4_carry__12_i_16__0_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__12_i_1__0
       (.I0(p0__10_n_69),
        .I1(p0__6_n_87),
        .I2(p0__1_n_104),
        .I3(p0__1_n_103),
        .I4(p0__6_n_86),
        .I5(p0__4_carry__12_i_9__0_n_0),
        .O(p0__4_carry__12_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__12_i_2__0
       (.I0(p0__10_n_70),
        .I1(p0__6_n_88),
        .I2(p0__1_n_105),
        .I3(p0__1_n_104),
        .I4(p0__6_n_87),
        .I5(p0__4_carry__12_i_10__0_n_0),
        .O(p0__4_carry__12_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__12_i_3__0
       (.I0(p0__10_n_71),
        .I1(p0__6_n_89),
        .I2(p0__0_n_89),
        .I3(p0__1_n_105),
        .I4(p0__6_n_88),
        .I5(p0__4_carry__12_i_11__0_n_0),
        .O(p0__4_carry__12_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__12_i_4__0
       (.I0(p0__10_n_72),
        .I1(p0__6_n_90),
        .I2(p0__0_n_90),
        .I3(p0__0_n_89),
        .I4(p0__6_n_89),
        .I5(p0__4_carry__11_i_12__0_n_0),
        .O(p0__4_carry__12_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__12_i_5__0
       (.I0(p0__4_carry__12_i_1__0_n_0),
        .I1(p0__4_carry__12_i_12__0_n_0),
        .I2(p0__6_n_85),
        .I3(p0__1_n_102),
        .I4(p0__4_carry__12_i_13__0_n_0),
        .I5(p0__10_n_68),
        .O(p0__4_carry__12_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__12_i_6__0
       (.I0(p0__4_carry__12_i_2__0_n_0),
        .I1(p0__4_carry__12_i_9__0_n_0),
        .I2(p0__6_n_86),
        .I3(p0__1_n_103),
        .I4(p0__4_carry__12_i_14__0_n_0),
        .I5(p0__10_n_69),
        .O(p0__4_carry__12_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__12_i_7__0
       (.I0(p0__4_carry__12_i_3__0_n_0),
        .I1(p0__4_carry__12_i_10__0_n_0),
        .I2(p0__6_n_87),
        .I3(p0__1_n_104),
        .I4(p0__4_carry__12_i_15__0_n_0),
        .I5(p0__10_n_70),
        .O(p0__4_carry__12_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h599A9A59A66565A6)) 
    p0__4_carry__12_i_8__0
       (.I0(p0__4_carry__12_i_4__0_n_0),
        .I1(p0__4_carry__11_i_13__0_n_0),
        .I2(p0__10_n_72),
        .I3(p0__0_n_89),
        .I4(p0__6_n_89),
        .I5(p0__4_carry__12_i_16__0_n_0),
        .O(p0__4_carry__12_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__12_i_9__0
       (.I0(p0__6_n_88),
        .I1(p0__1_n_105),
        .I2(p0__10_n_70),
        .I3(p0__1_n_104),
        .I4(p0__6_n_87),
        .O(p0__4_carry__12_i_9__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__13
       (.CI(p0__4_carry__12_n_0),
        .CO({p0__4_carry__13_n_0,p0__4_carry__13_n_1,p0__4_carry__13_n_2,p0__4_carry__13_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__13_i_1__0_n_0,p0__4_carry__13_i_2__0_n_0,p0__4_carry__13_i_3__0_n_0,p0__4_carry__13_i_4__0_n_0}),
        .O(b__0[44:41]),
        .S({p0__4_carry__13_i_5__0_n_0,p0__4_carry__13_i_6__0_n_0,p0__4_carry__13_i_7__0_n_0,p0__4_carry__13_i_8__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__13_i_10__0
       (.I0(p0__6_n_85),
        .I1(p0__1_n_102),
        .I2(p0__10_n_67),
        .I3(p0__1_n_101),
        .I4(p0__6_n_84),
        .O(p0__4_carry__13_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__13_i_11__0
       (.I0(p0__6_n_86),
        .I1(p0__1_n_103),
        .I2(p0__10_n_68),
        .I3(p0__1_n_102),
        .I4(p0__6_n_85),
        .O(p0__4_carry__13_i_11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__13_i_12__0
       (.I0(p0__6_n_83),
        .I1(p0__1_n_100),
        .I2(p0__10_n_65),
        .I3(p0__1_n_99),
        .I4(p0__6_n_82),
        .O(p0__4_carry__13_i_12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__13_i_13__0
       (.I0(p0__1_n_99),
        .I1(p0__6_n_82),
        .O(p0__4_carry__13_i_13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__13_i_14__0
       (.I0(p0__1_n_100),
        .I1(p0__6_n_83),
        .O(p0__4_carry__13_i_14__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__13_i_15__0
       (.I0(p0__1_n_101),
        .I1(p0__6_n_84),
        .O(p0__4_carry__13_i_15__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__13_i_16__0
       (.I0(p0__1_n_102),
        .I1(p0__6_n_85),
        .O(p0__4_carry__13_i_16__0_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__13_i_1__0
       (.I0(p0__10_n_65),
        .I1(p0__6_n_83),
        .I2(p0__1_n_100),
        .I3(p0__1_n_99),
        .I4(p0__6_n_82),
        .I5(p0__4_carry__13_i_9__0_n_0),
        .O(p0__4_carry__13_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__13_i_2__0
       (.I0(p0__10_n_66),
        .I1(p0__6_n_84),
        .I2(p0__1_n_101),
        .I3(p0__1_n_100),
        .I4(p0__6_n_83),
        .I5(p0__4_carry__13_i_10__0_n_0),
        .O(p0__4_carry__13_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__13_i_3__0
       (.I0(p0__10_n_67),
        .I1(p0__6_n_85),
        .I2(p0__1_n_102),
        .I3(p0__1_n_101),
        .I4(p0__6_n_84),
        .I5(p0__4_carry__13_i_11__0_n_0),
        .O(p0__4_carry__13_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__13_i_4__0
       (.I0(p0__10_n_68),
        .I1(p0__6_n_86),
        .I2(p0__1_n_103),
        .I3(p0__1_n_102),
        .I4(p0__6_n_85),
        .I5(p0__4_carry__12_i_12__0_n_0),
        .O(p0__4_carry__13_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__13_i_5__0
       (.I0(p0__4_carry__13_i_1__0_n_0),
        .I1(p0__4_carry__13_i_12__0_n_0),
        .I2(p0__6_n_81),
        .I3(p0__1_n_98),
        .I4(p0__4_carry__13_i_13__0_n_0),
        .I5(p0__10_n_64),
        .O(p0__4_carry__13_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__13_i_6__0
       (.I0(p0__4_carry__13_i_2__0_n_0),
        .I1(p0__4_carry__13_i_9__0_n_0),
        .I2(p0__6_n_82),
        .I3(p0__1_n_99),
        .I4(p0__4_carry__13_i_14__0_n_0),
        .I5(p0__10_n_65),
        .O(p0__4_carry__13_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__13_i_7__0
       (.I0(p0__4_carry__13_i_3__0_n_0),
        .I1(p0__4_carry__13_i_10__0_n_0),
        .I2(p0__6_n_83),
        .I3(p0__1_n_100),
        .I4(p0__4_carry__13_i_15__0_n_0),
        .I5(p0__10_n_66),
        .O(p0__4_carry__13_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__13_i_8__0
       (.I0(p0__4_carry__13_i_4__0_n_0),
        .I1(p0__4_carry__13_i_11__0_n_0),
        .I2(p0__6_n_84),
        .I3(p0__1_n_101),
        .I4(p0__4_carry__13_i_16__0_n_0),
        .I5(p0__10_n_67),
        .O(p0__4_carry__13_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__13_i_9__0
       (.I0(p0__6_n_84),
        .I1(p0__1_n_101),
        .I2(p0__10_n_66),
        .I3(p0__1_n_100),
        .I4(p0__6_n_83),
        .O(p0__4_carry__13_i_9__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__14
       (.CI(p0__4_carry__13_n_0),
        .CO({p0__4_carry__14_n_0,p0__4_carry__14_n_1,p0__4_carry__14_n_2,p0__4_carry__14_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__14_i_1__0_n_0,p0__4_carry__14_i_2__0_n_0,p0__4_carry__14_i_3__0_n_0,p0__4_carry__14_i_4__0_n_0}),
        .O(b__0[48:45]),
        .S({p0__4_carry__14_i_5__0_n_0,p0__4_carry__14_i_6__0_n_0,p0__4_carry__14_i_7__0_n_0,p0__4_carry__14_i_8__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__14_i_10__0
       (.I0(p0__6_n_81),
        .I1(p0__1_n_98),
        .I2(p0__10_n_63),
        .I3(p0__1_n_97),
        .I4(p0__6_n_80),
        .O(p0__4_carry__14_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__14_i_11__0
       (.I0(p0__6_n_82),
        .I1(p0__1_n_99),
        .I2(p0__10_n_64),
        .I3(p0__1_n_98),
        .I4(p0__6_n_81),
        .O(p0__4_carry__14_i_11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__14_i_12__0
       (.I0(p0__6_n_79),
        .I1(p0__1_n_96),
        .I2(p0__10_n_61),
        .I3(p0__1_n_95),
        .I4(p0__6_n_78),
        .O(p0__4_carry__14_i_12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__14_i_13__0
       (.I0(p0__1_n_95),
        .I1(p0__6_n_78),
        .O(p0__4_carry__14_i_13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__14_i_14__0
       (.I0(p0__1_n_96),
        .I1(p0__6_n_79),
        .O(p0__4_carry__14_i_14__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__14_i_15__0
       (.I0(p0__1_n_97),
        .I1(p0__6_n_80),
        .O(p0__4_carry__14_i_15__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__14_i_16__0
       (.I0(p0__1_n_98),
        .I1(p0__6_n_81),
        .O(p0__4_carry__14_i_16__0_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__14_i_1__0
       (.I0(p0__10_n_61),
        .I1(p0__6_n_79),
        .I2(p0__1_n_96),
        .I3(p0__1_n_95),
        .I4(p0__6_n_78),
        .I5(p0__4_carry__14_i_9__0_n_0),
        .O(p0__4_carry__14_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__14_i_2__0
       (.I0(p0__10_n_62),
        .I1(p0__6_n_80),
        .I2(p0__1_n_97),
        .I3(p0__1_n_96),
        .I4(p0__6_n_79),
        .I5(p0__4_carry__14_i_10__0_n_0),
        .O(p0__4_carry__14_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__14_i_3__0
       (.I0(p0__10_n_63),
        .I1(p0__6_n_81),
        .I2(p0__1_n_98),
        .I3(p0__1_n_97),
        .I4(p0__6_n_80),
        .I5(p0__4_carry__14_i_11__0_n_0),
        .O(p0__4_carry__14_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__14_i_4__0
       (.I0(p0__10_n_64),
        .I1(p0__6_n_82),
        .I2(p0__1_n_99),
        .I3(p0__1_n_98),
        .I4(p0__6_n_81),
        .I5(p0__4_carry__13_i_12__0_n_0),
        .O(p0__4_carry__14_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__14_i_5__0
       (.I0(p0__4_carry__14_i_1__0_n_0),
        .I1(p0__4_carry__14_i_12__0_n_0),
        .I2(p0__6_n_77),
        .I3(p0__1_n_94),
        .I4(p0__4_carry__14_i_13__0_n_0),
        .I5(p0__10_n_60),
        .O(p0__4_carry__14_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__14_i_6__0
       (.I0(p0__4_carry__14_i_2__0_n_0),
        .I1(p0__4_carry__14_i_9__0_n_0),
        .I2(p0__6_n_78),
        .I3(p0__1_n_95),
        .I4(p0__4_carry__14_i_14__0_n_0),
        .I5(p0__10_n_61),
        .O(p0__4_carry__14_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__14_i_7__0
       (.I0(p0__4_carry__14_i_3__0_n_0),
        .I1(p0__4_carry__14_i_10__0_n_0),
        .I2(p0__6_n_79),
        .I3(p0__1_n_96),
        .I4(p0__4_carry__14_i_15__0_n_0),
        .I5(p0__10_n_62),
        .O(p0__4_carry__14_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__14_i_8__0
       (.I0(p0__4_carry__14_i_4__0_n_0),
        .I1(p0__4_carry__14_i_11__0_n_0),
        .I2(p0__6_n_80),
        .I3(p0__1_n_97),
        .I4(p0__4_carry__14_i_16__0_n_0),
        .I5(p0__10_n_63),
        .O(p0__4_carry__14_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__14_i_9__0
       (.I0(p0__6_n_80),
        .I1(p0__1_n_97),
        .I2(p0__10_n_62),
        .I3(p0__1_n_96),
        .I4(p0__6_n_79),
        .O(p0__4_carry__14_i_9__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__15
       (.CI(p0__4_carry__14_n_0),
        .CO({p0__4_carry__15_n_0,p0__4_carry__15_n_1,p0__4_carry__15_n_2,p0__4_carry__15_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__15_i_1__0_n_0,p0__4_carry__15_i_2__0_n_0,p0__4_carry__15_i_3__0_n_0,p0__4_carry__15_i_4__0_n_0}),
        .O(b__0[52:49]),
        .S({p0__4_carry__15_i_5__0_n_0,p0__4_carry__15_i_6__0_n_0,p0__4_carry__15_i_7__0_n_0,p0__4_carry__15_i_8__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__15_i_10__0
       (.I0(p0__6_n_78),
        .I1(p0__1_n_95),
        .I2(p0__10_n_60),
        .I3(p0__1_n_94),
        .I4(p0__6_n_77),
        .O(p0__4_carry__15_i_10__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__15_i_11__0
       (.I0(p0__1_n_93),
        .I1(p0__6_n_76),
        .O(p0__4_carry__15_i_11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h011F1F01)) 
    p0__4_carry__15_i_12__0
       (.I0(p0__6_n_77),
        .I1(p0__1_n_94),
        .I2(p0__10_n_59),
        .I3(p0__1_n_93),
        .I4(p0__6_n_76),
        .O(p0__4_carry__15_i_12__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p0__4_carry__15_i_13__0
       (.I0(p0__6_n_74),
        .I1(p0__1_n_91),
        .O(p0__4_carry__15_i_13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h1)) 
    p0__4_carry__15_i_14__0
       (.I0(p0__1_n_94),
        .I1(p0__6_n_77),
        .O(p0__4_carry__15_i_14__0_n_0));
  LUT5 #(
    .INIT(32'h90990090)) 
    p0__4_carry__15_i_1__0
       (.I0(p0__1_n_91),
        .I1(p0__6_n_74),
        .I2(p0__1_n_92),
        .I3(p0__10_n_58),
        .I4(p0__6_n_75),
        .O(p0__4_carry__15_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEE0E000)) 
    p0__4_carry__15_i_2__0
       (.I0(p0__6_n_77),
        .I1(p0__1_n_94),
        .I2(p0__10_n_59),
        .I3(p0__1_n_93),
        .I4(p0__6_n_76),
        .I5(p0__4_carry__15_i_9__0_n_0),
        .O(p0__4_carry__15_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__15_i_3__0
       (.I0(p0__10_n_59),
        .I1(p0__6_n_77),
        .I2(p0__1_n_94),
        .I3(p0__1_n_93),
        .I4(p0__6_n_76),
        .I5(p0__4_carry__15_i_10__0_n_0),
        .O(p0__4_carry__15_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h00000000A95656A9)) 
    p0__4_carry__15_i_4__0
       (.I0(p0__10_n_60),
        .I1(p0__6_n_78),
        .I2(p0__1_n_95),
        .I3(p0__1_n_94),
        .I4(p0__6_n_77),
        .I5(p0__4_carry__14_i_12__0_n_0),
        .O(p0__4_carry__15_i_4__0_n_0));
  (* HLUTNM = "lutpair50" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__15_i_5__0
       (.I0(p0__6_n_74),
        .I1(p0__1_n_91),
        .I2(p0__6_n_73),
        .I3(p0__1_n_90),
        .I4(p0__4_carry__15_i_1__0_n_0),
        .O(p0__4_carry__15_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h18718E18E78E71E7)) 
    p0__4_carry__15_i_6__0
       (.I0(p0__4_carry__15_i_11__0_n_0),
        .I1(p0__4_carry__15_i_12__0_n_0),
        .I2(p0__6_n_75),
        .I3(p0__10_n_58),
        .I4(p0__1_n_92),
        .I5(p0__4_carry__15_i_13__0_n_0),
        .O(p0__4_carry__15_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h599A9AA6A6656559)) 
    p0__4_carry__15_i_7__0
       (.I0(p0__4_carry__15_i_3__0_n_0),
        .I1(p0__4_carry__15_i_14__0_n_0),
        .I2(p0__10_n_59),
        .I3(p0__1_n_93),
        .I4(p0__6_n_76),
        .I5(p0__4_carry__15_i_9__0_n_0),
        .O(p0__4_carry__15_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    p0__4_carry__15_i_8__0
       (.I0(p0__4_carry__15_i_4__0_n_0),
        .I1(p0__4_carry__15_i_10__0_n_0),
        .I2(p0__6_n_76),
        .I3(p0__1_n_93),
        .I4(p0__4_carry__15_i_14__0_n_0),
        .I5(p0__10_n_59),
        .O(p0__4_carry__15_i_8__0_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    p0__4_carry__15_i_9__0
       (.I0(p0__1_n_92),
        .I1(p0__10_n_58),
        .I2(p0__6_n_75),
        .O(p0__4_carry__15_i_9__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__16
       (.CI(p0__4_carry__15_n_0),
        .CO({p0__4_carry__16_n_0,p0__4_carry__16_n_1,p0__4_carry__16_n_2,p0__4_carry__16_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__16_i_1__0_n_0,p0__4_carry__16_i_2__0_n_0,p0__4_carry__16_i_3__0_n_0,p0__4_carry__16_i_4__0_n_0}),
        .O(b__0[56:53]),
        .S({p0__4_carry__16_i_5__0_n_0,p0__4_carry__16_i_6__0_n_0,p0__4_carry__16_i_7__0_n_0,p0__4_carry__16_i_8__0_n_0}));
  (* HLUTNM = "lutpair53" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__16_i_1__0
       (.I0(p0__6_n_71),
        .I1(p0__2_n_105),
        .I2(p0__6_n_70),
        .I3(p0__2_n_104),
        .O(p0__4_carry__16_i_1__0_n_0));
  (* HLUTNM = "lutpair52" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__16_i_2__0
       (.I0(p0__6_n_72),
        .I1(p0__1_n_89),
        .I2(p0__6_n_71),
        .I3(p0__2_n_105),
        .O(p0__4_carry__16_i_2__0_n_0));
  (* HLUTNM = "lutpair51" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__16_i_3__0
       (.I0(p0__6_n_73),
        .I1(p0__1_n_90),
        .I2(p0__6_n_72),
        .I3(p0__1_n_89),
        .O(p0__4_carry__16_i_3__0_n_0));
  (* HLUTNM = "lutpair50" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__16_i_4__0
       (.I0(p0__6_n_74),
        .I1(p0__1_n_91),
        .I2(p0__6_n_73),
        .I3(p0__1_n_90),
        .O(p0__4_carry__16_i_4__0_n_0));
  (* HLUTNM = "lutpair54" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__16_i_5__0
       (.I0(p0__6_n_70),
        .I1(p0__2_n_104),
        .I2(p0__6_n_69),
        .I3(p0__2_n_103),
        .I4(p0__4_carry__16_i_1__0_n_0),
        .O(p0__4_carry__16_i_5__0_n_0));
  (* HLUTNM = "lutpair53" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__16_i_6__0
       (.I0(p0__6_n_71),
        .I1(p0__2_n_105),
        .I2(p0__6_n_70),
        .I3(p0__2_n_104),
        .I4(p0__4_carry__16_i_2__0_n_0),
        .O(p0__4_carry__16_i_6__0_n_0));
  (* HLUTNM = "lutpair52" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__16_i_7__0
       (.I0(p0__6_n_72),
        .I1(p0__1_n_89),
        .I2(p0__6_n_71),
        .I3(p0__2_n_105),
        .I4(p0__4_carry__16_i_3__0_n_0),
        .O(p0__4_carry__16_i_7__0_n_0));
  (* HLUTNM = "lutpair51" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__16_i_8__0
       (.I0(p0__6_n_73),
        .I1(p0__1_n_90),
        .I2(p0__6_n_72),
        .I3(p0__1_n_89),
        .I4(p0__4_carry__16_i_4__0_n_0),
        .O(p0__4_carry__16_i_8__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__17
       (.CI(p0__4_carry__16_n_0),
        .CO({p0__4_carry__17_n_0,p0__4_carry__17_n_1,p0__4_carry__17_n_2,p0__4_carry__17_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__17_i_1__0_n_0,p0__4_carry__17_i_2__0_n_0,p0__4_carry__17_i_3__0_n_0,p0__4_carry__17_i_4__0_n_0}),
        .O(b__0[60:57]),
        .S({p0__4_carry__17_i_5__0_n_0,p0__4_carry__17_i_6__0_n_0,p0__4_carry__17_i_7__0_n_0,p0__4_carry__17_i_8__0_n_0}));
  (* HLUTNM = "lutpair57" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__17_i_1__0
       (.I0(p0__6_n_67),
        .I1(p0__2_n_101),
        .I2(p0__6_n_66),
        .I3(p0__2_n_100),
        .O(p0__4_carry__17_i_1__0_n_0));
  (* HLUTNM = "lutpair56" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__17_i_2__0
       (.I0(p0__6_n_68),
        .I1(p0__2_n_102),
        .I2(p0__6_n_67),
        .I3(p0__2_n_101),
        .O(p0__4_carry__17_i_2__0_n_0));
  (* HLUTNM = "lutpair55" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__17_i_3__0
       (.I0(p0__6_n_69),
        .I1(p0__2_n_103),
        .I2(p0__6_n_68),
        .I3(p0__2_n_102),
        .O(p0__4_carry__17_i_3__0_n_0));
  (* HLUTNM = "lutpair54" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__17_i_4__0
       (.I0(p0__6_n_70),
        .I1(p0__2_n_104),
        .I2(p0__6_n_69),
        .I3(p0__2_n_103),
        .O(p0__4_carry__17_i_4__0_n_0));
  (* HLUTNM = "lutpair58" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__17_i_5__0
       (.I0(p0__6_n_66),
        .I1(p0__2_n_100),
        .I2(p0__6_n_65),
        .I3(p0__2_n_99),
        .I4(p0__4_carry__17_i_1__0_n_0),
        .O(p0__4_carry__17_i_5__0_n_0));
  (* HLUTNM = "lutpair57" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__17_i_6__0
       (.I0(p0__6_n_67),
        .I1(p0__2_n_101),
        .I2(p0__6_n_66),
        .I3(p0__2_n_100),
        .I4(p0__4_carry__17_i_2__0_n_0),
        .O(p0__4_carry__17_i_6__0_n_0));
  (* HLUTNM = "lutpair56" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__17_i_7__0
       (.I0(p0__6_n_68),
        .I1(p0__2_n_102),
        .I2(p0__6_n_67),
        .I3(p0__2_n_101),
        .I4(p0__4_carry__17_i_3__0_n_0),
        .O(p0__4_carry__17_i_7__0_n_0));
  (* HLUTNM = "lutpair55" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__17_i_8__0
       (.I0(p0__6_n_69),
        .I1(p0__2_n_103),
        .I2(p0__6_n_68),
        .I3(p0__2_n_102),
        .I4(p0__4_carry__17_i_4__0_n_0),
        .O(p0__4_carry__17_i_8__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__18
       (.CI(p0__4_carry__17_n_0),
        .CO({NLW_p0__4_carry__18_CO_UNCONNECTED[3:2],p0__4_carry__18_n_2,p0__4_carry__18_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p0__4_carry__18_i_1__0_n_0,p0__4_carry__18_i_2__0_n_0}),
        .O({NLW_p0__4_carry__18_O_UNCONNECTED[3],O,b__0[62:61]}),
        .S({1'b0,p0__4_carry__18_i_3__0_n_0,p0__4_carry__18_i_4__0_n_0,p0__4_carry__18_i_5__0_n_0}));
  (* HLUTNM = "lutpair59" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__18_i_1__0
       (.I0(p0__6_n_65),
        .I1(p0__2_n_99),
        .I2(p0__6_n_64),
        .I3(p0__2_n_98),
        .O(p0__4_carry__18_i_1__0_n_0));
  (* HLUTNM = "lutpair58" *) 
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__4_carry__18_i_2__0
       (.I0(p0__6_n_66),
        .I1(p0__2_n_100),
        .I2(p0__6_n_65),
        .I3(p0__2_n_99),
        .O(p0__4_carry__18_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__4_carry__18_i_3__0
       (.I0(p0__2_n_98),
        .I1(p0__6_n_64),
        .I2(p0__2_n_96),
        .I3(p0__6_n_62),
        .I4(p0__2_n_97),
        .I5(p0__6_n_63),
        .O(p0__4_carry__18_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h96969669)) 
    p0__4_carry__18_i_4__0
       (.I0(p0__4_carry__18_i_1__0_n_0),
        .I1(p0__2_n_97),
        .I2(p0__6_n_63),
        .I3(p0__2_n_98),
        .I4(p0__6_n_64),
        .O(p0__4_carry__18_i_4__0_n_0));
  (* HLUTNM = "lutpair59" *) 
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__4_carry__18_i_5__0
       (.I0(p0__6_n_65),
        .I1(p0__2_n_99),
        .I2(p0__6_n_64),
        .I3(p0__2_n_98),
        .I4(p0__4_carry__18_i_2__0_n_0),
        .O(p0__4_carry__18_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__1_i_1__0
       (.I0(p0__14_n_95),
        .I1(p0__8_n_95),
        .O(p0__4_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__1_i_2__0
       (.I0(p0__14_n_96),
        .I1(p0__8_n_96),
        .O(p0__4_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__1_i_3__0
       (.I0(p0__14_n_97),
        .I1(p0__8_n_97),
        .O(p0__4_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__1_i_4__0
       (.I0(p0__14_n_98),
        .I1(p0__8_n_98),
        .O(p0__4_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__2
       (.CI(p0__4_carry__1_n_0),
        .CO({p0__4_carry__2_n_0,p0__4_carry__2_n_1,p0__4_carry__2_n_2,p0__4_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({p0__14_n_91,p0__14_n_92,p0__14_n_93,p0__14_n_94}),
        .O({b__0[0],NLW_p0__4_carry__2_O_UNCONNECTED[2:0]}),
        .S({p0__4_carry__2_i_1__0_n_0,p0__4_carry__2_i_2__0_n_0,p0__4_carry__2_i_3__0_n_0,p0__4_carry__2_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__2_i_1__0
       (.I0(p0__14_n_91),
        .I1(p0__8_n_91),
        .O(p0__4_carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__2_i_2__0
       (.I0(p0__14_n_92),
        .I1(p0__8_n_92),
        .O(p0__4_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__2_i_3__0
       (.I0(p0__14_n_93),
        .I1(p0__8_n_93),
        .O(p0__4_carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__2_i_4__0
       (.I0(p0__14_n_94),
        .I1(p0__8_n_94),
        .O(p0__4_carry__2_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__3
       (.CI(p0__4_carry__2_n_0),
        .CO({p0__4_carry__3_n_0,p0__4_carry__3_n_1,p0__4_carry__3_n_2,p0__4_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__3_i_1__0_n_0,p0__14_n_88,p0__14_n_89,p0__14_n_90}),
        .O(b__0[4:1]),
        .S({p0__4_carry__3_i_2__0_n_0,p0__4_carry__3_i_3__0_n_0,p0__4_carry__3_i_4__0_n_0,p0__4_carry__3_i_5__0_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__3_i_1__0
       (.I0(p0__14_n_87),
        .I1(p0__10_n_104),
        .I2(p0__4_n_104),
        .O(p0__4_carry__3_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    p0__4_carry__3_i_2__0
       (.I0(p0__14_n_87),
        .I1(p0__4_n_104),
        .I2(p0__10_n_104),
        .I3(p0__4_n_105),
        .I4(p0__10_n_105),
        .O(p0__4_carry__3_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__3_i_3__0
       (.I0(p0__4_n_105),
        .I1(p0__10_n_105),
        .I2(p0__14_n_88),
        .O(p0__4_carry__3_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__3_i_4__0
       (.I0(p0__14_n_89),
        .I1(p0__8_n_89),
        .O(p0__4_carry__3_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry__3_i_5__0
       (.I0(p0__14_n_90),
        .I1(p0__8_n_90),
        .O(p0__4_carry__3_i_5__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__4
       (.CI(p0__4_carry__3_n_0),
        .CO({p0__4_carry__4_n_0,p0__4_carry__4_n_1,p0__4_carry__4_n_2,p0__4_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__4_i_1__0_n_0,p0__4_carry__4_i_2__0_n_0,p0__4_carry__4_i_3__0_n_0,p0__4_carry__4_i_4__0_n_0}),
        .O(b__0[8:5]),
        .S({p0__4_carry__4_i_5__0_n_0,p0__4_carry__4_i_6__0_n_0,p0__4_carry__4_i_7__0_n_0,p0__4_carry__4_i_8__0_n_0}));
  (* HLUTNM = "lutpair41" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__4_i_1__0
       (.I0(p0__4_n_101),
        .I1(p0__14_n_84),
        .I2(p0__10_n_101),
        .O(p0__4_carry__4_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__4_i_2__0
       (.I0(p0__4_n_102),
        .I1(p0__14_n_85),
        .I2(p0__10_n_102),
        .O(p0__4_carry__4_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__4_i_3__0
       (.I0(p0__4_n_103),
        .I1(p0__14_n_86),
        .I2(p0__10_n_103),
        .O(p0__4_carry__4_i_3__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__4_i_4__0
       (.I0(p0__14_n_87),
        .I1(p0__4_n_104),
        .I2(p0__10_n_104),
        .O(p0__4_carry__4_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__4_i_5__0
       (.I0(p0__4_n_100),
        .I1(p0__14_n_83),
        .I2(p0__10_n_100),
        .I3(p0__4_carry__4_i_1__0_n_0),
        .O(p0__4_carry__4_i_5__0_n_0));
  (* HLUTNM = "lutpair41" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__4_i_6__0
       (.I0(p0__4_n_101),
        .I1(p0__14_n_84),
        .I2(p0__10_n_101),
        .I3(p0__4_carry__4_i_2__0_n_0),
        .O(p0__4_carry__4_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__4_i_7__0
       (.I0(p0__4_n_102),
        .I1(p0__14_n_85),
        .I2(p0__10_n_102),
        .I3(p0__4_carry__4_i_3__0_n_0),
        .O(p0__4_carry__4_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__4_i_8__0
       (.I0(p0__4_n_103),
        .I1(p0__14_n_86),
        .I2(p0__10_n_103),
        .I3(p0__4_carry__4_i_4__0_n_0),
        .O(p0__4_carry__4_i_8__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__5
       (.CI(p0__4_carry__4_n_0),
        .CO({p0__4_carry__5_n_0,p0__4_carry__5_n_1,p0__4_carry__5_n_2,p0__4_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__5_i_1__0_n_0,p0__4_carry__5_i_2__0_n_0,p0__4_carry__5_i_3__0_n_0,p0__4_carry__5_i_4__0_n_0}),
        .O(b__0[12:9]),
        .S({p0__4_carry__5_i_5__0_n_0,p0__4_carry__5_i_6__0_n_0,p0__4_carry__5_i_7__0_n_0,p0__4_carry__5_i_8__0_n_0}));
  (* HLUTNM = "lutpair42" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__5_i_1__0
       (.I0(p0__4_n_97),
        .I1(p0__14_n_80),
        .I2(p0__10_n_97),
        .O(p0__4_carry__5_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__5_i_2__0
       (.I0(p0__4_n_98),
        .I1(p0__14_n_81),
        .I2(p0__10_n_98),
        .O(p0__4_carry__5_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__5_i_3__0
       (.I0(p0__4_n_99),
        .I1(p0__14_n_82),
        .I2(p0__10_n_99),
        .O(p0__4_carry__5_i_3__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__5_i_4__0
       (.I0(p0__4_n_100),
        .I1(p0__14_n_83),
        .I2(p0__10_n_100),
        .O(p0__4_carry__5_i_4__0_n_0));
  (* HLUTNM = "lutpair43" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__5_i_5__0
       (.I0(p0__4_n_96),
        .I1(p0__14_n_79),
        .I2(p0__10_n_96),
        .I3(p0__4_carry__5_i_1__0_n_0),
        .O(p0__4_carry__5_i_5__0_n_0));
  (* HLUTNM = "lutpair42" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__5_i_6__0
       (.I0(p0__4_n_97),
        .I1(p0__14_n_80),
        .I2(p0__10_n_97),
        .I3(p0__4_carry__5_i_2__0_n_0),
        .O(p0__4_carry__5_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__5_i_7__0
       (.I0(p0__4_n_98),
        .I1(p0__14_n_81),
        .I2(p0__10_n_98),
        .I3(p0__4_carry__5_i_3__0_n_0),
        .O(p0__4_carry__5_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__5_i_8__0
       (.I0(p0__4_n_99),
        .I1(p0__14_n_82),
        .I2(p0__10_n_99),
        .I3(p0__4_carry__5_i_4__0_n_0),
        .O(p0__4_carry__5_i_8__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__6
       (.CI(p0__4_carry__5_n_0),
        .CO({p0__4_carry__6_n_0,p0__4_carry__6_n_1,p0__4_carry__6_n_2,p0__4_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__6_i_1__0_n_0,p0__4_carry__6_i_2__0_n_0,p0__4_carry__6_i_3__0_n_0,p0__4_carry__6_i_4__0_n_0}),
        .O(b__0[16:13]),
        .S({p0__4_carry__6_i_5__0_n_0,p0__4_carry__6_i_6__0_n_0,p0__4_carry__6_i_7__0_n_0,p0__4_carry__6_i_8__0_n_0}));
  (* HLUTNM = "lutpair46" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__6_i_1__0
       (.I0(p0__4_n_93),
        .I1(p0__14_n_76),
        .I2(p0__10_n_93),
        .O(p0__4_carry__6_i_1__0_n_0));
  (* HLUTNM = "lutpair45" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__6_i_2__0
       (.I0(p0__4_n_94),
        .I1(p0__14_n_77),
        .I2(p0__10_n_94),
        .O(p0__4_carry__6_i_2__0_n_0));
  (* HLUTNM = "lutpair44" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__6_i_3__0
       (.I0(p0__4_n_95),
        .I1(p0__14_n_78),
        .I2(p0__10_n_95),
        .O(p0__4_carry__6_i_3__0_n_0));
  (* HLUTNM = "lutpair43" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__6_i_4__0
       (.I0(p0__4_n_96),
        .I1(p0__14_n_79),
        .I2(p0__10_n_96),
        .O(p0__4_carry__6_i_4__0_n_0));
  (* HLUTNM = "lutpair47" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__6_i_5__0
       (.I0(p0__4_n_92),
        .I1(p0__14_n_75),
        .I2(p0__10_n_92),
        .I3(p0__4_carry__6_i_1__0_n_0),
        .O(p0__4_carry__6_i_5__0_n_0));
  (* HLUTNM = "lutpair46" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__6_i_6__0
       (.I0(p0__4_n_93),
        .I1(p0__14_n_76),
        .I2(p0__10_n_93),
        .I3(p0__4_carry__6_i_2__0_n_0),
        .O(p0__4_carry__6_i_6__0_n_0));
  (* HLUTNM = "lutpair45" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__6_i_7__0
       (.I0(p0__4_n_94),
        .I1(p0__14_n_77),
        .I2(p0__10_n_94),
        .I3(p0__4_carry__6_i_3__0_n_0),
        .O(p0__4_carry__6_i_7__0_n_0));
  (* HLUTNM = "lutpair44" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__6_i_8__0
       (.I0(p0__4_n_95),
        .I1(p0__14_n_78),
        .I2(p0__10_n_95),
        .I3(p0__4_carry__6_i_4__0_n_0),
        .O(p0__4_carry__6_i_8__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__7
       (.CI(p0__4_carry__6_n_0),
        .CO({p0__4_carry__7_n_0,p0__4_carry__7_n_1,p0__4_carry__7_n_2,p0__4_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__7_i_1__0_n_0,p0__4_carry__7_i_2__0_n_0,p0__4_carry__7_i_3__0_n_0,p0__4_carry__7_i_4__0_n_0}),
        .O(b__0[20:17]),
        .S({p0__4_carry__7_i_5__0_n_0,p0__4_carry__7_i_6__0_n_0,p0__4_carry__7_i_7__0_n_0,p0__4_carry__7_i_8__0_n_0}));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__7_i_1__0
       (.I0(p0__0_n_105),
        .I1(p0__10_n_88),
        .I2(p0__6_n_105),
        .I3(p0__14_n_71),
        .O(p0__4_carry__7_i_1__0_n_0));
  (* HLUTNM = "lutpair49" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__7_i_2__0
       (.I0(p0__4_n_90),
        .I1(p0__14_n_73),
        .I2(p0__10_n_90),
        .O(p0__4_carry__7_i_2__0_n_0));
  (* HLUTNM = "lutpair48" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__7_i_3__0
       (.I0(p0__4_n_91),
        .I1(p0__14_n_74),
        .I2(p0__10_n_91),
        .O(p0__4_carry__7_i_3__0_n_0));
  (* HLUTNM = "lutpair47" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__7_i_4__0
       (.I0(p0__4_n_92),
        .I1(p0__14_n_75),
        .I2(p0__10_n_92),
        .O(p0__4_carry__7_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h566A)) 
    p0__4_carry__7_i_5__0
       (.I0(p0__4_carry__7_i_1__0_n_0),
        .I1(p0__10_n_89),
        .I2(p0__14_n_72),
        .I3(p0__4_n_89),
        .O(p0__4_carry__7_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__7_i_6__0
       (.I0(p0__4_carry__7_i_2__0_n_0),
        .I1(p0__4_n_89),
        .I2(p0__14_n_72),
        .I3(p0__10_n_89),
        .O(p0__4_carry__7_i_6__0_n_0));
  (* HLUTNM = "lutpair49" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__7_i_7__0
       (.I0(p0__4_n_90),
        .I1(p0__14_n_73),
        .I2(p0__10_n_90),
        .I3(p0__4_carry__7_i_3__0_n_0),
        .O(p0__4_carry__7_i_7__0_n_0));
  (* HLUTNM = "lutpair48" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_carry__7_i_8__0
       (.I0(p0__4_n_91),
        .I1(p0__14_n_74),
        .I2(p0__10_n_91),
        .I3(p0__4_carry__7_i_4__0_n_0),
        .O(p0__4_carry__7_i_8__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__8
       (.CI(p0__4_carry__7_n_0),
        .CO({p0__4_carry__8_n_0,p0__4_carry__8_n_1,p0__4_carry__8_n_2,p0__4_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__8_i_1__0_n_0,p0__4_carry__8_i_2__0_n_0,p0__4_carry__8_i_3__0_n_0,p0__4_carry__8_i_4__0_n_0}),
        .O(b__0[24:21]),
        .S({p0__4_carry__8_i_5__0_n_0,p0__4_carry__8_i_6__0_n_0,p0__4_carry__8_i_7__0_n_0,p0__4_carry__8_i_8__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__8_i_10__0
       (.I0(p0__6_n_103),
        .I1(p0__10_n_86),
        .I2(p0__0_n_103),
        .O(p0__4_carry__8_i_10__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__8_i_11__0
       (.I0(p0__6_n_104),
        .I1(p0__10_n_87),
        .I2(p0__0_n_104),
        .O(p0__4_carry__8_i_11__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__8_i_12__0
       (.I0(p0__6_n_101),
        .I1(p0__10_n_84),
        .I2(p0__0_n_101),
        .O(p0__4_carry__8_i_12__0_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_carry__8_i_13
       (.I0(p0__0_n_105),
        .I1(p0__10_n_88),
        .I2(p0__6_n_105),
        .O(p0__4_carry__8_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    p0__4_carry__8_i_14
       (.I0(p0__6_n_103),
        .I1(p0__10_n_86),
        .I2(p0__0_n_103),
        .I3(p0__14_n_69),
        .O(p0__4_carry__8_i_14_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__8_i_1__0
       (.I0(p0__6_n_103),
        .I1(p0__10_n_86),
        .I2(p0__0_n_103),
        .I3(p0__14_n_68),
        .I4(p0__4_carry__8_i_9__0_n_0),
        .O(p0__4_carry__8_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__8_i_2__0
       (.I0(p0__0_n_104),
        .I1(p0__10_n_87),
        .I2(p0__6_n_104),
        .I3(p0__14_n_69),
        .I4(p0__4_carry__8_i_10__0_n_0),
        .O(p0__4_carry__8_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    p0__4_carry__8_i_3__0
       (.I0(p0__14_n_70),
        .I1(p0__4_carry__8_i_11__0_n_0),
        .I2(p0__0_n_105),
        .I3(p0__10_n_88),
        .I4(p0__6_n_105),
        .O(p0__4_carry__8_i_3__0_n_0));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    p0__4_carry__8_i_4__0
       (.I0(p0__6_n_105),
        .I1(p0__10_n_88),
        .I2(p0__0_n_105),
        .I3(p0__4_carry__8_i_11__0_n_0),
        .I4(p0__14_n_70),
        .O(p0__4_carry__8_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__8_i_5__0
       (.I0(p0__4_carry__8_i_1__0_n_0),
        .I1(p0__6_n_102),
        .I2(p0__10_n_85),
        .I3(p0__0_n_102),
        .I4(p0__14_n_67),
        .I5(p0__4_carry__8_i_12__0_n_0),
        .O(p0__4_carry__8_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__8_i_6__0
       (.I0(p0__4_carry__8_i_2__0_n_0),
        .I1(p0__6_n_103),
        .I2(p0__10_n_86),
        .I3(p0__0_n_103),
        .I4(p0__14_n_68),
        .I5(p0__4_carry__8_i_9__0_n_0),
        .O(p0__4_carry__8_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h177E7EE8E8818117)) 
    p0__4_carry__8_i_7__0
       (.I0(p0__4_carry__8_i_13_n_0),
        .I1(p0__14_n_70),
        .I2(p0__0_n_104),
        .I3(p0__10_n_87),
        .I4(p0__6_n_104),
        .I5(p0__4_carry__8_i_14_n_0),
        .O(p0__4_carry__8_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    p0__4_carry__8_i_8__0
       (.I0(p0__14_n_70),
        .I1(p0__4_carry__8_i_11__0_n_0),
        .I2(p0__6_n_105),
        .I3(p0__10_n_88),
        .I4(p0__0_n_105),
        .I5(p0__14_n_71),
        .O(p0__4_carry__8_i_8__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__8_i_9__0
       (.I0(p0__6_n_102),
        .I1(p0__10_n_85),
        .I2(p0__0_n_102),
        .O(p0__4_carry__8_i_9__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_carry__9
       (.CI(p0__4_carry__8_n_0),
        .CO({p0__4_carry__9_n_0,p0__4_carry__9_n_1,p0__4_carry__9_n_2,p0__4_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_carry__9_i_1__0_n_0,p0__4_carry__9_i_2__0_n_0,p0__4_carry__9_i_3__0_n_0,p0__4_carry__9_i_4__0_n_0}),
        .O(b__0[28:25]),
        .S({p0__4_carry__9_i_5__0_n_0,p0__4_carry__9_i_6__0_n_0,p0__4_carry__9_i_7__0_n_0,p0__4_carry__9_i_8__0_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__9_i_10__0
       (.I0(p0__6_n_99),
        .I1(p0__10_n_82),
        .I2(p0__0_n_99),
        .O(p0__4_carry__9_i_10__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__9_i_11__0
       (.I0(p0__6_n_100),
        .I1(p0__10_n_83),
        .I2(p0__0_n_100),
        .O(p0__4_carry__9_i_11__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__9_i_12__0
       (.I0(p0__6_n_97),
        .I1(p0__10_n_80),
        .I2(p0__0_n_97),
        .O(p0__4_carry__9_i_12__0_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__9_i_1__0
       (.I0(p0__6_n_99),
        .I1(p0__10_n_82),
        .I2(p0__0_n_99),
        .I3(p0__14_n_64),
        .I4(p0__4_carry__9_i_9__0_n_0),
        .O(p0__4_carry__9_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__9_i_2__0
       (.I0(p0__6_n_100),
        .I1(p0__10_n_83),
        .I2(p0__0_n_100),
        .I3(p0__14_n_65),
        .I4(p0__4_carry__9_i_10__0_n_0),
        .O(p0__4_carry__9_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__9_i_3__0
       (.I0(p0__6_n_101),
        .I1(p0__10_n_84),
        .I2(p0__0_n_101),
        .I3(p0__14_n_66),
        .I4(p0__4_carry__9_i_11__0_n_0),
        .O(p0__4_carry__9_i_3__0_n_0));
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    p0__4_carry__9_i_4__0
       (.I0(p0__6_n_102),
        .I1(p0__10_n_85),
        .I2(p0__0_n_102),
        .I3(p0__14_n_67),
        .I4(p0__4_carry__8_i_12__0_n_0),
        .O(p0__4_carry__9_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__9_i_5__0
       (.I0(p0__4_carry__9_i_1__0_n_0),
        .I1(p0__6_n_98),
        .I2(p0__10_n_81),
        .I3(p0__0_n_98),
        .I4(p0__14_n_63),
        .I5(p0__4_carry__9_i_12__0_n_0),
        .O(p0__4_carry__9_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__9_i_6__0
       (.I0(p0__4_carry__9_i_2__0_n_0),
        .I1(p0__6_n_99),
        .I2(p0__10_n_82),
        .I3(p0__0_n_99),
        .I4(p0__14_n_64),
        .I5(p0__4_carry__9_i_9__0_n_0),
        .O(p0__4_carry__9_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__9_i_7__0
       (.I0(p0__4_carry__9_i_3__0_n_0),
        .I1(p0__6_n_100),
        .I2(p0__10_n_83),
        .I3(p0__0_n_100),
        .I4(p0__14_n_65),
        .I5(p0__4_carry__9_i_10__0_n_0),
        .O(p0__4_carry__9_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h566AA995A995566A)) 
    p0__4_carry__9_i_8__0
       (.I0(p0__4_carry__9_i_4__0_n_0),
        .I1(p0__6_n_101),
        .I2(p0__10_n_84),
        .I3(p0__0_n_101),
        .I4(p0__14_n_66),
        .I5(p0__4_carry__9_i_11__0_n_0),
        .O(p0__4_carry__9_i_8__0_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_carry__9_i_9__0
       (.I0(p0__6_n_98),
        .I1(p0__10_n_81),
        .I2(p0__0_n_98),
        .O(p0__4_carry__9_i_9__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry_i_1__0
       (.I0(p0__14_n_103),
        .I1(p0__8_n_103),
        .O(p0__4_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry_i_2__0
       (.I0(p0__14_n_104),
        .I1(p0__8_n_104),
        .O(p0__4_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_carry_i_3__0
       (.I0(p0__14_n_105),
        .I1(p0__8_n_105),
        .O(p0__4_carry_i_3__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x13 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__5
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[31:15]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__5_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__5_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__5_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__5_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__5_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__5_OVERFLOW_UNCONNECTED),
        .P(NLW_p0__5_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_p0__5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__5_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__4_n_106,p0__4_n_107,p0__4_n_108,p0__4_n_109,p0__4_n_110,p0__4_n_111,p0__4_n_112,p0__4_n_113,p0__4_n_114,p0__4_n_115,p0__4_n_116,p0__4_n_117,p0__4_n_118,p0__4_n_119,p0__4_n_120,p0__4_n_121,p0__4_n_122,p0__4_n_123,p0__4_n_124,p0__4_n_125,p0__4_n_126,p0__4_n_127,p0__4_n_128,p0__4_n_129,p0__4_n_130,p0__4_n_131,p0__4_n_132,p0__4_n_133,p0__4_n_134,p0__4_n_135,p0__4_n_136,p0__4_n_137,p0__4_n_138,p0__4_n_139,p0__4_n_140,p0__4_n_141,p0__4_n_142,p0__4_n_143,p0__4_n_144,p0__4_n_145,p0__4_n_146,p0__4_n_147,p0__4_n_148,p0__4_n_149,p0__4_n_150,p0__4_n_151,p0__4_n_152,p0__4_n_153}),
        .PCOUT({p0__5_n_106,p0__5_n_107,p0__5_n_108,p0__5_n_109,p0__5_n_110,p0__5_n_111,p0__5_n_112,p0__5_n_113,p0__5_n_114,p0__5_n_115,p0__5_n_116,p0__5_n_117,p0__5_n_118,p0__5_n_119,p0__5_n_120,p0__5_n_121,p0__5_n_122,p0__5_n_123,p0__5_n_124,p0__5_n_125,p0__5_n_126,p0__5_n_127,p0__5_n_128,p0__5_n_129,p0__5_n_130,p0__5_n_131,p0__5_n_132,p0__5_n_133,p0__5_n_134,p0__5_n_135,p0__5_n_136,p0__5_n_137,p0__5_n_138,p0__5_n_139,p0__5_n_140,p0__5_n_141,p0__5_n_142,p0__5_n_143,p0__5_n_144,p0__5_n_145,p0__5_n_146,p0__5_n_147,p0__5_n_148,p0__5_n_149,p0__5_n_150,p0__5_n_151,p0__5_n_152,p0__5_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__5_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[48:32]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46:34]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__6_OVERFLOW_UNCONNECTED),
        .P({p0__6_n_58,p0__6_n_59,p0__6_n_60,p0__6_n_61,p0__6_n_62,p0__6_n_63,p0__6_n_64,p0__6_n_65,p0__6_n_66,p0__6_n_67,p0__6_n_68,p0__6_n_69,p0__6_n_70,p0__6_n_71,p0__6_n_72,p0__6_n_73,p0__6_n_74,p0__6_n_75,p0__6_n_76,p0__6_n_77,p0__6_n_78,p0__6_n_79,p0__6_n_80,p0__6_n_81,p0__6_n_82,p0__6_n_83,p0__6_n_84,p0__6_n_85,p0__6_n_86,p0__6_n_87,p0__6_n_88,p0__6_n_89,p0__6_n_90,p0__6_n_91,p0__6_n_92,p0__6_n_93,p0__6_n_94,p0__6_n_95,p0__6_n_96,p0__6_n_97,p0__6_n_98,p0__6_n_99,p0__6_n_100,p0__6_n_101,p0__6_n_102,p0__6_n_103,p0__6_n_104,p0__6_n_105}),
        .PATTERNBDETECT(NLW_p0__6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__6_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__5_n_106,p0__5_n_107,p0__5_n_108,p0__5_n_109,p0__5_n_110,p0__5_n_111,p0__5_n_112,p0__5_n_113,p0__5_n_114,p0__5_n_115,p0__5_n_116,p0__5_n_117,p0__5_n_118,p0__5_n_119,p0__5_n_120,p0__5_n_121,p0__5_n_122,p0__5_n_123,p0__5_n_124,p0__5_n_125,p0__5_n_126,p0__5_n_127,p0__5_n_128,p0__5_n_129,p0__5_n_130,p0__5_n_131,p0__5_n_132,p0__5_n_133,p0__5_n_134,p0__5_n_135,p0__5_n_136,p0__5_n_137,p0__5_n_138,p0__5_n_139,p0__5_n_140,p0__5_n_141,p0__5_n_142,p0__5_n_143,p0__5_n_144,p0__5_n_145,p0__5_n_146,p0__5_n_147,p0__5_n_148,p0__5_n_149,p0__5_n_150,p0__5_n_151,p0__5_n_152,p0__5_n_153}),
        .PCOUT(NLW_p0__6_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__6_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__7
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[31:15]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__7_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[33:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__7_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__7_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__7_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__7_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__7_OVERFLOW_UNCONNECTED),
        .P(NLW_p0__7_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_p0__7_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__7_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__7_n_106,p0__7_n_107,p0__7_n_108,p0__7_n_109,p0__7_n_110,p0__7_n_111,p0__7_n_112,p0__7_n_113,p0__7_n_114,p0__7_n_115,p0__7_n_116,p0__7_n_117,p0__7_n_118,p0__7_n_119,p0__7_n_120,p0__7_n_121,p0__7_n_122,p0__7_n_123,p0__7_n_124,p0__7_n_125,p0__7_n_126,p0__7_n_127,p0__7_n_128,p0__7_n_129,p0__7_n_130,p0__7_n_131,p0__7_n_132,p0__7_n_133,p0__7_n_134,p0__7_n_135,p0__7_n_136,p0__7_n_137,p0__7_n_138,p0__7_n_139,p0__7_n_140,p0__7_n_141,p0__7_n_142,p0__7_n_143,p0__7_n_144,p0__7_n_145,p0__7_n_146,p0__7_n_147,p0__7_n_148,p0__7_n_149,p0__7_n_150,p0__7_n_151,p0__7_n_152,p0__7_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__7_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__8
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[48:32]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__8_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0_0[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__8_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__8_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__8_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__8_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__8_OVERFLOW_UNCONNECTED),
        .P({p0__8_n_58,p0__8_n_59,p0__8_n_60,p0__8_n_61,p0__8_n_62,p0__8_n_63,p0__8_n_64,p0__8_n_65,p0__8_n_66,p0__8_n_67,p0__8_n_68,p0__8_n_69,p0__8_n_70,p0__8_n_71,p0__8_n_72,p0__8_n_73,p0__8_n_74,p0__8_n_75,p0__8_n_76,p0__8_n_77,p0__8_n_78,p0__8_n_79,p0__8_n_80,p0__8_n_81,p0__8_n_82,p0__8_n_83,p0__8_n_84,p0__8_n_85,p0__8_n_86,p0__8_n_87,p0__8_n_88,p0__8_n_89,p0__8_n_90,p0__8_n_91,p0__8_n_92,p0__8_n_93,p0__8_n_94,p0__8_n_95,p0__8_n_96,p0__8_n_97,p0__8_n_98,p0__8_n_99,p0__8_n_100,p0__8_n_101,p0__8_n_102,p0__8_n_103,p0__8_n_104,p0__8_n_105}),
        .PATTERNBDETECT(NLW_p0__8_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__8_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__7_n_106,p0__7_n_107,p0__7_n_108,p0__7_n_109,p0__7_n_110,p0__7_n_111,p0__7_n_112,p0__7_n_113,p0__7_n_114,p0__7_n_115,p0__7_n_116,p0__7_n_117,p0__7_n_118,p0__7_n_119,p0__7_n_120,p0__7_n_121,p0__7_n_122,p0__7_n_123,p0__7_n_124,p0__7_n_125,p0__7_n_126,p0__7_n_127,p0__7_n_128,p0__7_n_129,p0__7_n_130,p0__7_n_131,p0__7_n_132,p0__7_n_133,p0__7_n_134,p0__7_n_135,p0__7_n_136,p0__7_n_137,p0__7_n_138,p0__7_n_139,p0__7_n_140,p0__7_n_141,p0__7_n_142,p0__7_n_143,p0__7_n_144,p0__7_n_145,p0__7_n_146,p0__7_n_147,p0__7_n_148,p0__7_n_149,p0__7_n_150,p0__7_n_151,p0__7_n_152,p0__7_n_153}),
        .PCOUT({p0__8_n_106,p0__8_n_107,p0__8_n_108,p0__8_n_109,p0__8_n_110,p0__8_n_111,p0__8_n_112,p0__8_n_113,p0__8_n_114,p0__8_n_115,p0__8_n_116,p0__8_n_117,p0__8_n_118,p0__8_n_119,p0__8_n_120,p0__8_n_121,p0__8_n_122,p0__8_n_123,p0__8_n_124,p0__8_n_125,p0__8_n_126,p0__8_n_127,p0__8_n_128,p0__8_n_129,p0__8_n_130,p0__8_n_131,p0__8_n_132,p0__8_n_133,p0__8_n_134,p0__8_n_135,p0__8_n_136,p0__8_n_137,p0__8_n_138,p0__8_n_139,p0__8_n_140,p0__8_n_141,p0__8_n_142,p0__8_n_143,p0__8_n_144,p0__8_n_145,p0__8_n_146,p0__8_n_147,p0__8_n_148,p0__8_n_149,p0__8_n_150,p0__8_n_151,p0__8_n_152,p0__8_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__8_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x13 16}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__9
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0[14:0],1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__9_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46],p0_0[46]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__9_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__9_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__9_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(int_DELTA_U_WRT),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ADC_CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__9_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__9_OVERFLOW_UNCONNECTED),
        .P(NLW_p0__9_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_p0__9_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__9_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__8_n_106,p0__8_n_107,p0__8_n_108,p0__8_n_109,p0__8_n_110,p0__8_n_111,p0__8_n_112,p0__8_n_113,p0__8_n_114,p0__8_n_115,p0__8_n_116,p0__8_n_117,p0__8_n_118,p0__8_n_119,p0__8_n_120,p0__8_n_121,p0__8_n_122,p0__8_n_123,p0__8_n_124,p0__8_n_125,p0__8_n_126,p0__8_n_127,p0__8_n_128,p0__8_n_129,p0__8_n_130,p0__8_n_131,p0__8_n_132,p0__8_n_133,p0__8_n_134,p0__8_n_135,p0__8_n_136,p0__8_n_137,p0__8_n_138,p0__8_n_139,p0__8_n_140,p0__8_n_141,p0__8_n_142,p0__8_n_143,p0__8_n_144,p0__8_n_145,p0__8_n_146,p0__8_n_147,p0__8_n_148,p0__8_n_149,p0__8_n_150,p0__8_n_151,p0__8_n_152,p0__8_n_153}),
        .PCOUT({p0__9_n_106,p0__9_n_107,p0__9_n_108,p0__9_n_109,p0__9_n_110,p0__9_n_111,p0__9_n_112,p0__9_n_113,p0__9_n_114,p0__9_n_115,p0__9_n_116,p0__9_n_117,p0__9_n_118,p0__9_n_119,p0__9_n_120,p0__9_n_121,p0__9_n_122,p0__9_n_123,p0__9_n_124,p0__9_n_125,p0__9_n_126,p0__9_n_127,p0__9_n_128,p0__9_n_129,p0__9_n_130,p0__9_n_131,p0__9_n_132,p0__9_n_133,p0__9_n_134,p0__9_n_135,p0__9_n_136,p0__9_n_137,p0__9_n_138,p0__9_n_139,p0__9_n_140,p0__9_n_141,p0__9_n_142,p0__9_n_143,p0__9_n_144,p0__9_n_145,p0__9_n_146,p0__9_n_147,p0__9_n_148,p0__9_n_149,p0__9_n_150,p0__9_n_151,p0__9_n_152,p0__9_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(p0__14_2),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__9_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "gen_mult" *) 
module system_SPGD_SYS_0_gen_mult_9
   (p0,
    int_s);
  output [46:0]p0;
  input [13:0]int_s;

  wire [13:0]int_s;
  wire [46:0]p0;
  wire p0__0__0_n_100;
  wire p0__0__0_n_101;
  wire p0__0__0_n_102;
  wire p0__0__0_n_103;
  wire p0__0__0_n_104;
  wire p0__0__0_n_105;
  wire p0__0__0_n_58;
  wire p0__0__0_n_59;
  wire p0__0__0_n_60;
  wire p0__0__0_n_61;
  wire p0__0__0_n_62;
  wire p0__0__0_n_63;
  wire p0__0__0_n_64;
  wire p0__0__0_n_65;
  wire p0__0__0_n_66;
  wire p0__0__0_n_67;
  wire p0__0__0_n_68;
  wire p0__0__0_n_69;
  wire p0__0__0_n_70;
  wire p0__0__0_n_71;
  wire p0__0__0_n_72;
  wire p0__0__0_n_73;
  wire p0__0__0_n_74;
  wire p0__0__0_n_75;
  wire p0__0__0_n_76;
  wire p0__0__0_n_77;
  wire p0__0__0_n_78;
  wire p0__0__0_n_79;
  wire p0__0__0_n_80;
  wire p0__0__0_n_81;
  wire p0__0__0_n_82;
  wire p0__0__0_n_83;
  wire p0__0__0_n_84;
  wire p0__0__0_n_85;
  wire p0__0__0_n_86;
  wire p0__0__0_n_87;
  wire p0__0__0_n_88;
  wire p0__0__0_n_89;
  wire p0__0__0_n_90;
  wire p0__0__0_n_91;
  wire p0__0__0_n_92;
  wire p0__0__0_n_93;
  wire p0__0__0_n_94;
  wire p0__0__0_n_95;
  wire p0__0__0_n_96;
  wire p0__0__0_n_97;
  wire p0__0__0_n_98;
  wire p0__0__0_n_99;
  wire p0__0_i_1_n_3;
  wire p0__0_i_2_n_0;
  wire p0__0_i_3_n_0;
  wire p0__0_i_4_n_0;
  wire p0__0_n_100;
  wire p0__0_n_101;
  wire p0__0_n_102;
  wire p0__0_n_103;
  wire p0__0_n_104;
  wire p0__0_n_105;
  wire p0__0_n_106;
  wire p0__0_n_107;
  wire p0__0_n_108;
  wire p0__0_n_109;
  wire p0__0_n_110;
  wire p0__0_n_111;
  wire p0__0_n_112;
  wire p0__0_n_113;
  wire p0__0_n_114;
  wire p0__0_n_115;
  wire p0__0_n_116;
  wire p0__0_n_117;
  wire p0__0_n_118;
  wire p0__0_n_119;
  wire p0__0_n_120;
  wire p0__0_n_121;
  wire p0__0_n_122;
  wire p0__0_n_123;
  wire p0__0_n_124;
  wire p0__0_n_125;
  wire p0__0_n_126;
  wire p0__0_n_127;
  wire p0__0_n_128;
  wire p0__0_n_129;
  wire p0__0_n_130;
  wire p0__0_n_131;
  wire p0__0_n_132;
  wire p0__0_n_133;
  wire p0__0_n_134;
  wire p0__0_n_135;
  wire p0__0_n_136;
  wire p0__0_n_137;
  wire p0__0_n_138;
  wire p0__0_n_139;
  wire p0__0_n_140;
  wire p0__0_n_141;
  wire p0__0_n_142;
  wire p0__0_n_143;
  wire p0__0_n_144;
  wire p0__0_n_145;
  wire p0__0_n_146;
  wire p0__0_n_147;
  wire p0__0_n_148;
  wire p0__0_n_149;
  wire p0__0_n_150;
  wire p0__0_n_151;
  wire p0__0_n_152;
  wire p0__0_n_153;
  wire p0__0_n_58;
  wire p0__0_n_59;
  wire p0__0_n_60;
  wire p0__0_n_61;
  wire p0__0_n_62;
  wire p0__0_n_63;
  wire p0__0_n_64;
  wire p0__0_n_65;
  wire p0__0_n_66;
  wire p0__0_n_67;
  wire p0__0_n_68;
  wire p0__0_n_69;
  wire p0__0_n_70;
  wire p0__0_n_71;
  wire p0__0_n_72;
  wire p0__0_n_73;
  wire p0__0_n_74;
  wire p0__0_n_75;
  wire p0__0_n_76;
  wire p0__0_n_77;
  wire p0__0_n_78;
  wire p0__0_n_79;
  wire p0__0_n_80;
  wire p0__0_n_81;
  wire p0__0_n_82;
  wire p0__0_n_83;
  wire p0__0_n_84;
  wire p0__0_n_85;
  wire p0__0_n_86;
  wire p0__0_n_87;
  wire p0__0_n_88;
  wire p0__0_n_89;
  wire p0__0_n_90;
  wire p0__0_n_91;
  wire p0__0_n_92;
  wire p0__0_n_93;
  wire p0__0_n_94;
  wire p0__0_n_95;
  wire p0__0_n_96;
  wire p0__0_n_97;
  wire p0__0_n_98;
  wire p0__0_n_99;
  wire p0__1_i_10_n_0;
  wire p0__1_i_11_n_0;
  wire p0__1_i_12_n_0;
  wire p0__1_i_13_n_0;
  wire p0__1_i_14_n_0;
  wire p0__1_i_15_n_0;
  wire p0__1_i_16_n_0;
  wire p0__1_i_17_n_0;
  wire p0__1_i_18_n_0;
  wire p0__1_i_1_n_0;
  wire p0__1_i_1_n_1;
  wire p0__1_i_1_n_2;
  wire p0__1_i_1_n_3;
  wire p0__1_i_2_n_0;
  wire p0__1_i_2_n_1;
  wire p0__1_i_2_n_2;
  wire p0__1_i_2_n_3;
  wire p0__1_i_3_n_0;
  wire p0__1_i_4_n_0;
  wire p0__1_i_5_n_0;
  wire p0__1_i_6_n_0;
  wire p0__1_i_7_n_0;
  wire p0__1_i_8_n_0;
  wire p0__1_i_9_n_0;
  wire p0__1_n_100;
  wire p0__1_n_101;
  wire p0__1_n_102;
  wire p0__1_n_103;
  wire p0__1_n_104;
  wire p0__1_n_105;
  wire p0__1_n_106;
  wire p0__1_n_107;
  wire p0__1_n_108;
  wire p0__1_n_109;
  wire p0__1_n_110;
  wire p0__1_n_111;
  wire p0__1_n_112;
  wire p0__1_n_113;
  wire p0__1_n_114;
  wire p0__1_n_115;
  wire p0__1_n_116;
  wire p0__1_n_117;
  wire p0__1_n_118;
  wire p0__1_n_119;
  wire p0__1_n_120;
  wire p0__1_n_121;
  wire p0__1_n_122;
  wire p0__1_n_123;
  wire p0__1_n_124;
  wire p0__1_n_125;
  wire p0__1_n_126;
  wire p0__1_n_127;
  wire p0__1_n_128;
  wire p0__1_n_129;
  wire p0__1_n_130;
  wire p0__1_n_131;
  wire p0__1_n_132;
  wire p0__1_n_133;
  wire p0__1_n_134;
  wire p0__1_n_135;
  wire p0__1_n_136;
  wire p0__1_n_137;
  wire p0__1_n_138;
  wire p0__1_n_139;
  wire p0__1_n_140;
  wire p0__1_n_141;
  wire p0__1_n_142;
  wire p0__1_n_143;
  wire p0__1_n_144;
  wire p0__1_n_145;
  wire p0__1_n_146;
  wire p0__1_n_147;
  wire p0__1_n_148;
  wire p0__1_n_149;
  wire p0__1_n_150;
  wire p0__1_n_151;
  wire p0__1_n_152;
  wire p0__1_n_153;
  wire p0__1_n_58;
  wire p0__1_n_59;
  wire p0__1_n_60;
  wire p0__1_n_61;
  wire p0__1_n_62;
  wire p0__1_n_63;
  wire p0__1_n_64;
  wire p0__1_n_65;
  wire p0__1_n_66;
  wire p0__1_n_67;
  wire p0__1_n_68;
  wire p0__1_n_69;
  wire p0__1_n_70;
  wire p0__1_n_71;
  wire p0__1_n_72;
  wire p0__1_n_73;
  wire p0__1_n_74;
  wire p0__1_n_75;
  wire p0__1_n_76;
  wire p0__1_n_77;
  wire p0__1_n_78;
  wire p0__1_n_79;
  wire p0__1_n_80;
  wire p0__1_n_81;
  wire p0__1_n_82;
  wire p0__1_n_83;
  wire p0__1_n_84;
  wire p0__1_n_85;
  wire p0__1_n_86;
  wire p0__1_n_87;
  wire p0__1_n_88;
  wire p0__1_n_89;
  wire p0__1_n_90;
  wire p0__1_n_91;
  wire p0__1_n_92;
  wire p0__1_n_93;
  wire p0__1_n_94;
  wire p0__1_n_95;
  wire p0__1_n_96;
  wire p0__1_n_97;
  wire p0__1_n_98;
  wire p0__1_n_99;
  wire p0__2_n_100;
  wire p0__2_n_101;
  wire p0__2_n_102;
  wire p0__2_n_103;
  wire p0__2_n_104;
  wire p0__2_n_105;
  wire p0__2_n_106;
  wire p0__2_n_107;
  wire p0__2_n_108;
  wire p0__2_n_109;
  wire p0__2_n_110;
  wire p0__2_n_111;
  wire p0__2_n_112;
  wire p0__2_n_113;
  wire p0__2_n_114;
  wire p0__2_n_115;
  wire p0__2_n_116;
  wire p0__2_n_117;
  wire p0__2_n_118;
  wire p0__2_n_119;
  wire p0__2_n_120;
  wire p0__2_n_121;
  wire p0__2_n_122;
  wire p0__2_n_123;
  wire p0__2_n_124;
  wire p0__2_n_125;
  wire p0__2_n_126;
  wire p0__2_n_127;
  wire p0__2_n_128;
  wire p0__2_n_129;
  wire p0__2_n_130;
  wire p0__2_n_131;
  wire p0__2_n_132;
  wire p0__2_n_133;
  wire p0__2_n_134;
  wire p0__2_n_135;
  wire p0__2_n_136;
  wire p0__2_n_137;
  wire p0__2_n_138;
  wire p0__2_n_139;
  wire p0__2_n_140;
  wire p0__2_n_141;
  wire p0__2_n_142;
  wire p0__2_n_143;
  wire p0__2_n_144;
  wire p0__2_n_145;
  wire p0__2_n_146;
  wire p0__2_n_147;
  wire p0__2_n_148;
  wire p0__2_n_149;
  wire p0__2_n_150;
  wire p0__2_n_151;
  wire p0__2_n_152;
  wire p0__2_n_153;
  wire p0__2_n_24;
  wire p0__2_n_25;
  wire p0__2_n_26;
  wire p0__2_n_27;
  wire p0__2_n_28;
  wire p0__2_n_29;
  wire p0__2_n_30;
  wire p0__2_n_31;
  wire p0__2_n_32;
  wire p0__2_n_33;
  wire p0__2_n_34;
  wire p0__2_n_35;
  wire p0__2_n_36;
  wire p0__2_n_37;
  wire p0__2_n_38;
  wire p0__2_n_39;
  wire p0__2_n_40;
  wire p0__2_n_41;
  wire p0__2_n_42;
  wire p0__2_n_43;
  wire p0__2_n_44;
  wire p0__2_n_45;
  wire p0__2_n_46;
  wire p0__2_n_47;
  wire p0__2_n_48;
  wire p0__2_n_49;
  wire p0__2_n_50;
  wire p0__2_n_51;
  wire p0__2_n_52;
  wire p0__2_n_53;
  wire p0__2_n_58;
  wire p0__2_n_59;
  wire p0__2_n_60;
  wire p0__2_n_61;
  wire p0__2_n_62;
  wire p0__2_n_63;
  wire p0__2_n_64;
  wire p0__2_n_65;
  wire p0__2_n_66;
  wire p0__2_n_67;
  wire p0__2_n_68;
  wire p0__2_n_69;
  wire p0__2_n_70;
  wire p0__2_n_71;
  wire p0__2_n_72;
  wire p0__2_n_73;
  wire p0__2_n_74;
  wire p0__2_n_75;
  wire p0__2_n_76;
  wire p0__2_n_77;
  wire p0__2_n_78;
  wire p0__2_n_79;
  wire p0__2_n_80;
  wire p0__2_n_81;
  wire p0__2_n_82;
  wire p0__2_n_83;
  wire p0__2_n_84;
  wire p0__2_n_85;
  wire p0__2_n_86;
  wire p0__2_n_87;
  wire p0__2_n_88;
  wire p0__2_n_89;
  wire p0__2_n_90;
  wire p0__2_n_91;
  wire p0__2_n_92;
  wire p0__2_n_93;
  wire p0__2_n_94;
  wire p0__2_n_95;
  wire p0__2_n_96;
  wire p0__2_n_97;
  wire p0__2_n_98;
  wire p0__2_n_99;
  wire p0__3_n_100;
  wire p0__3_n_101;
  wire p0__3_n_102;
  wire p0__3_n_103;
  wire p0__3_n_104;
  wire p0__3_n_105;
  wire p0__3_n_58;
  wire p0__3_n_59;
  wire p0__3_n_60;
  wire p0__3_n_61;
  wire p0__3_n_62;
  wire p0__3_n_63;
  wire p0__3_n_64;
  wire p0__3_n_65;
  wire p0__3_n_66;
  wire p0__3_n_67;
  wire p0__3_n_68;
  wire p0__3_n_69;
  wire p0__3_n_70;
  wire p0__3_n_71;
  wire p0__3_n_72;
  wire p0__3_n_73;
  wire p0__3_n_74;
  wire p0__3_n_75;
  wire p0__3_n_76;
  wire p0__3_n_77;
  wire p0__3_n_78;
  wire p0__3_n_79;
  wire p0__3_n_80;
  wire p0__3_n_81;
  wire p0__3_n_82;
  wire p0__3_n_83;
  wire p0__3_n_84;
  wire p0__3_n_85;
  wire p0__3_n_86;
  wire p0__3_n_87;
  wire p0__3_n_88;
  wire p0__3_n_89;
  wire p0__3_n_90;
  wire p0__3_n_91;
  wire p0__3_n_92;
  wire p0__3_n_93;
  wire p0__3_n_94;
  wire p0__3_n_95;
  wire p0__3_n_96;
  wire p0__3_n_97;
  wire p0__3_n_98;
  wire p0__3_n_99;
  wire p0__4_i_10_n_0;
  wire p0__4_i_11_n_0;
  wire p0__4_i_12_n_0;
  wire p0__4_i_13_n_0;
  wire p0__4_i_14_n_0;
  wire p0__4_i_15_n_0;
  wire p0__4_i_16_n_0;
  wire p0__4_i_17_n_0;
  wire p0__4_i_18_n_0;
  wire p0__4_i_19_n_0;
  wire p0__4_i_1_n_0;
  wire p0__4_i_1_n_1;
  wire p0__4_i_1_n_2;
  wire p0__4_i_1_n_3;
  wire p0__4_i_20_n_0;
  wire p0__4_i_21_n_0;
  wire p0__4_i_22_n_0;
  wire p0__4_i_23_n_0;
  wire p0__4_i_24_n_0;
  wire p0__4_i_25_n_0;
  wire p0__4_i_26_n_0;
  wire p0__4_i_27_n_0;
  wire p0__4_i_28_n_0;
  wire p0__4_i_29_n_0;
  wire p0__4_i_2_n_0;
  wire p0__4_i_2_n_1;
  wire p0__4_i_2_n_2;
  wire p0__4_i_2_n_3;
  wire p0__4_i_30_n_0;
  wire p0__4_i_31_n_0;
  wire p0__4_i_32_n_0;
  wire p0__4_i_33_n_0;
  wire p0__4_i_34_n_0;
  wire p0__4_i_35_n_0;
  wire p0__4_i_35_n_1;
  wire p0__4_i_35_n_2;
  wire p0__4_i_35_n_3;
  wire p0__4_i_36_n_0;
  wire p0__4_i_37_n_0;
  wire p0__4_i_38_n_0;
  wire p0__4_i_39_n_0;
  wire p0__4_i_3_n_0;
  wire p0__4_i_3_n_1;
  wire p0__4_i_3_n_2;
  wire p0__4_i_3_n_3;
  wire p0__4_i_40_n_0;
  wire p0__4_i_40_n_1;
  wire p0__4_i_40_n_2;
  wire p0__4_i_40_n_3;
  wire p0__4_i_41_n_0;
  wire p0__4_i_42_n_0;
  wire p0__4_i_43_n_0;
  wire p0__4_i_44_n_0;
  wire p0__4_i_45_n_0;
  wire p0__4_i_45_n_1;
  wire p0__4_i_45_n_2;
  wire p0__4_i_45_n_3;
  wire p0__4_i_46_n_0;
  wire p0__4_i_47_n_0;
  wire p0__4_i_48_n_0;
  wire p0__4_i_49_n_0;
  wire p0__4_i_4_n_0;
  wire p0__4_i_4_n_1;
  wire p0__4_i_4_n_2;
  wire p0__4_i_4_n_3;
  wire p0__4_i_50_n_0;
  wire p0__4_i_51_n_0;
  wire p0__4_i_52_n_0;
  wire p0__4_i_5_n_0;
  wire p0__4_i_5_n_1;
  wire p0__4_i_5_n_2;
  wire p0__4_i_5_n_3;
  wire p0__4_i_6_n_0;
  wire p0__4_i_7_n_0;
  wire p0__4_i_8_n_0;
  wire p0__4_i_9_n_0;
  wire p0__4_n_100;
  wire p0__4_n_101;
  wire p0__4_n_102;
  wire p0__4_n_103;
  wire p0__4_n_104;
  wire p0__4_n_105;
  wire p0__4_n_106;
  wire p0__4_n_107;
  wire p0__4_n_108;
  wire p0__4_n_109;
  wire p0__4_n_110;
  wire p0__4_n_111;
  wire p0__4_n_112;
  wire p0__4_n_113;
  wire p0__4_n_114;
  wire p0__4_n_115;
  wire p0__4_n_116;
  wire p0__4_n_117;
  wire p0__4_n_118;
  wire p0__4_n_119;
  wire p0__4_n_120;
  wire p0__4_n_121;
  wire p0__4_n_122;
  wire p0__4_n_123;
  wire p0__4_n_124;
  wire p0__4_n_125;
  wire p0__4_n_126;
  wire p0__4_n_127;
  wire p0__4_n_128;
  wire p0__4_n_129;
  wire p0__4_n_130;
  wire p0__4_n_131;
  wire p0__4_n_132;
  wire p0__4_n_133;
  wire p0__4_n_134;
  wire p0__4_n_135;
  wire p0__4_n_136;
  wire p0__4_n_137;
  wire p0__4_n_138;
  wire p0__4_n_139;
  wire p0__4_n_140;
  wire p0__4_n_141;
  wire p0__4_n_142;
  wire p0__4_n_143;
  wire p0__4_n_144;
  wire p0__4_n_145;
  wire p0__4_n_146;
  wire p0__4_n_147;
  wire p0__4_n_148;
  wire p0__4_n_149;
  wire p0__4_n_150;
  wire p0__4_n_151;
  wire p0__4_n_152;
  wire p0__4_n_153;
  wire p0__4_n_24;
  wire p0__4_n_25;
  wire p0__4_n_26;
  wire p0__4_n_27;
  wire p0__4_n_28;
  wire p0__4_n_29;
  wire p0__4_n_30;
  wire p0__4_n_31;
  wire p0__4_n_32;
  wire p0__4_n_33;
  wire p0__4_n_34;
  wire p0__4_n_35;
  wire p0__4_n_36;
  wire p0__4_n_37;
  wire p0__4_n_38;
  wire p0__4_n_39;
  wire p0__4_n_40;
  wire p0__4_n_41;
  wire p0__4_n_42;
  wire p0__4_n_43;
  wire p0__4_n_44;
  wire p0__4_n_45;
  wire p0__4_n_46;
  wire p0__4_n_47;
  wire p0__4_n_48;
  wire p0__4_n_49;
  wire p0__4_n_50;
  wire p0__4_n_51;
  wire p0__4_n_52;
  wire p0__4_n_53;
  wire p0__4_n_58;
  wire p0__4_n_59;
  wire p0__4_n_60;
  wire p0__4_n_61;
  wire p0__4_n_62;
  wire p0__4_n_63;
  wire p0__4_n_64;
  wire p0__4_n_65;
  wire p0__4_n_66;
  wire p0__4_n_67;
  wire p0__4_n_68;
  wire p0__4_n_69;
  wire p0__4_n_70;
  wire p0__4_n_71;
  wire p0__4_n_72;
  wire p0__4_n_73;
  wire p0__4_n_74;
  wire p0__4_n_75;
  wire p0__4_n_76;
  wire p0__4_n_77;
  wire p0__4_n_78;
  wire p0__4_n_79;
  wire p0__4_n_80;
  wire p0__4_n_81;
  wire p0__4_n_82;
  wire p0__4_n_83;
  wire p0__4_n_84;
  wire p0__4_n_85;
  wire p0__4_n_86;
  wire p0__4_n_87;
  wire p0__4_n_88;
  wire p0__4_n_89;
  wire p0__4_n_90;
  wire p0__4_n_91;
  wire p0__4_n_92;
  wire p0__4_n_93;
  wire p0__4_n_94;
  wire p0__4_n_95;
  wire p0__4_n_96;
  wire p0__4_n_97;
  wire p0__4_n_98;
  wire p0__4_n_99;
  wire p0__5_n_100;
  wire p0__5_n_101;
  wire p0__5_n_102;
  wire p0__5_n_103;
  wire p0__5_n_104;
  wire p0__5_n_105;
  wire p0__5_n_106;
  wire p0__5_n_107;
  wire p0__5_n_108;
  wire p0__5_n_109;
  wire p0__5_n_110;
  wire p0__5_n_111;
  wire p0__5_n_112;
  wire p0__5_n_113;
  wire p0__5_n_114;
  wire p0__5_n_115;
  wire p0__5_n_116;
  wire p0__5_n_117;
  wire p0__5_n_118;
  wire p0__5_n_119;
  wire p0__5_n_120;
  wire p0__5_n_121;
  wire p0__5_n_122;
  wire p0__5_n_123;
  wire p0__5_n_124;
  wire p0__5_n_125;
  wire p0__5_n_126;
  wire p0__5_n_127;
  wire p0__5_n_128;
  wire p0__5_n_129;
  wire p0__5_n_130;
  wire p0__5_n_131;
  wire p0__5_n_132;
  wire p0__5_n_133;
  wire p0__5_n_134;
  wire p0__5_n_135;
  wire p0__5_n_136;
  wire p0__5_n_137;
  wire p0__5_n_138;
  wire p0__5_n_139;
  wire p0__5_n_140;
  wire p0__5_n_141;
  wire p0__5_n_142;
  wire p0__5_n_143;
  wire p0__5_n_144;
  wire p0__5_n_145;
  wire p0__5_n_146;
  wire p0__5_n_147;
  wire p0__5_n_148;
  wire p0__5_n_149;
  wire p0__5_n_150;
  wire p0__5_n_151;
  wire p0__5_n_152;
  wire p0__5_n_153;
  wire p0__5_n_24;
  wire p0__5_n_25;
  wire p0__5_n_26;
  wire p0__5_n_27;
  wire p0__5_n_28;
  wire p0__5_n_29;
  wire p0__5_n_30;
  wire p0__5_n_31;
  wire p0__5_n_32;
  wire p0__5_n_33;
  wire p0__5_n_34;
  wire p0__5_n_35;
  wire p0__5_n_36;
  wire p0__5_n_37;
  wire p0__5_n_38;
  wire p0__5_n_39;
  wire p0__5_n_40;
  wire p0__5_n_41;
  wire p0__5_n_42;
  wire p0__5_n_43;
  wire p0__5_n_44;
  wire p0__5_n_45;
  wire p0__5_n_46;
  wire p0__5_n_47;
  wire p0__5_n_48;
  wire p0__5_n_49;
  wire p0__5_n_50;
  wire p0__5_n_51;
  wire p0__5_n_52;
  wire p0__5_n_53;
  wire p0__5_n_58;
  wire p0__5_n_59;
  wire p0__5_n_60;
  wire p0__5_n_61;
  wire p0__5_n_62;
  wire p0__5_n_63;
  wire p0__5_n_64;
  wire p0__5_n_65;
  wire p0__5_n_66;
  wire p0__5_n_67;
  wire p0__5_n_68;
  wire p0__5_n_69;
  wire p0__5_n_70;
  wire p0__5_n_71;
  wire p0__5_n_72;
  wire p0__5_n_73;
  wire p0__5_n_74;
  wire p0__5_n_75;
  wire p0__5_n_76;
  wire p0__5_n_77;
  wire p0__5_n_78;
  wire p0__5_n_79;
  wire p0__5_n_80;
  wire p0__5_n_81;
  wire p0__5_n_82;
  wire p0__5_n_83;
  wire p0__5_n_84;
  wire p0__5_n_85;
  wire p0__5_n_86;
  wire p0__5_n_87;
  wire p0__5_n_88;
  wire p0__5_n_89;
  wire p0__5_n_90;
  wire p0__5_n_91;
  wire p0__5_n_92;
  wire p0__5_n_93;
  wire p0__5_n_94;
  wire p0__5_n_95;
  wire p0__5_n_96;
  wire p0__5_n_97;
  wire p0__5_n_98;
  wire p0__5_n_99;
  wire p0__6_n_100;
  wire p0__6_n_101;
  wire p0__6_n_102;
  wire p0__6_n_103;
  wire p0__6_n_104;
  wire p0__6_n_105;
  wire p0__6_n_58;
  wire p0__6_n_59;
  wire p0__6_n_60;
  wire p0__6_n_61;
  wire p0__6_n_62;
  wire p0__6_n_63;
  wire p0__6_n_64;
  wire p0__6_n_65;
  wire p0__6_n_66;
  wire p0__6_n_67;
  wire p0__6_n_68;
  wire p0__6_n_69;
  wire p0__6_n_70;
  wire p0__6_n_71;
  wire p0__6_n_72;
  wire p0__6_n_73;
  wire p0__6_n_74;
  wire p0__6_n_75;
  wire p0__6_n_76;
  wire p0__6_n_77;
  wire p0__6_n_78;
  wire p0__6_n_79;
  wire p0__6_n_80;
  wire p0__6_n_81;
  wire p0__6_n_82;
  wire p0__6_n_83;
  wire p0__6_n_84;
  wire p0__6_n_85;
  wire p0__6_n_86;
  wire p0__6_n_87;
  wire p0__6_n_88;
  wire p0__6_n_89;
  wire p0__6_n_90;
  wire p0__6_n_91;
  wire p0__6_n_92;
  wire p0__6_n_93;
  wire p0__6_n_94;
  wire p0__6_n_95;
  wire p0__6_n_96;
  wire p0__6_n_97;
  wire p0__6_n_98;
  wire p0__6_n_99;
  wire p0_i_10_n_0;
  wire p0_i_11_n_0;
  wire p0_i_12_n_0;
  wire p0_i_13_n_0;
  wire p0_i_14_n_0;
  wire p0_i_15_n_0;
  wire p0_i_16_n_0;
  wire p0_i_17_n_0;
  wire p0_i_18_n_0;
  wire p0_i_19_n_0;
  wire p0_i_1_n_0;
  wire p0_i_1_n_1;
  wire p0_i_1_n_2;
  wire p0_i_1_n_3;
  wire p0_i_20_n_0;
  wire p0_i_21_n_0;
  wire p0_i_22_n_0;
  wire p0_i_23_n_0;
  wire p0_i_24_n_0;
  wire p0_i_25_n_0;
  wire p0_i_26_n_0;
  wire p0_i_27_n_0;
  wire p0_i_28_n_0;
  wire p0_i_29_n_0;
  wire p0_i_2_n_0;
  wire p0_i_2_n_1;
  wire p0_i_2_n_2;
  wire p0_i_2_n_3;
  wire p0_i_30_n_0;
  wire p0_i_31_n_0;
  wire p0_i_32_n_0;
  wire p0_i_33_n_0;
  wire p0_i_34_n_0;
  wire p0_i_35_n_0;
  wire p0_i_36_n_0;
  wire p0_i_37_n_0;
  wire p0_i_38_n_0;
  wire p0_i_39_n_0;
  wire p0_i_3_n_0;
  wire p0_i_3_n_1;
  wire p0_i_3_n_2;
  wire p0_i_3_n_3;
  wire p0_i_40_n_0;
  wire p0_i_41_n_0;
  wire p0_i_42_n_0;
  wire p0_i_43_n_0;
  wire p0_i_44_n_0;
  wire p0_i_45_n_0;
  wire p0_i_4_n_0;
  wire p0_i_4_n_1;
  wire p0_i_4_n_2;
  wire p0_i_4_n_3;
  wire p0_i_5_n_0;
  wire p0_i_5_n_1;
  wire p0_i_5_n_2;
  wire p0_i_5_n_3;
  wire p0_i_6_n_0;
  wire p0_i_7_n_0;
  wire p0_i_8_n_0;
  wire p0_i_9_n_0;
  wire NLW_p0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__0_OVERFLOW_UNCONNECTED;
  wire NLW_p0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__0_CARRYOUT_UNCONNECTED;
  wire NLW_p0__0__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__0__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__0__0_OVERFLOW_UNCONNECTED;
  wire NLW_p0__0__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__0__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__0__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__0__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__0__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__0__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__0__0_PCOUT_UNCONNECTED;
  wire [3:1]NLW_p0__0_i_1_CO_UNCONNECTED;
  wire [3:2]NLW_p0__0_i_1_O_UNCONNECTED;
  wire NLW_p0__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__1_OVERFLOW_UNCONNECTED;
  wire NLW_p0__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__1_CARRYOUT_UNCONNECTED;
  wire NLW_p0__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__2_OVERFLOW_UNCONNECTED;
  wire NLW_p0__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__2_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_p0__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__2_CARRYOUT_UNCONNECTED;
  wire NLW_p0__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__3_OVERFLOW_UNCONNECTED;
  wire NLW_p0__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__3_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__3_PCOUT_UNCONNECTED;
  wire NLW_p0__4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__4_OVERFLOW_UNCONNECTED;
  wire NLW_p0__4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__4_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__4_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_p0__4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__4_CARRYOUT_UNCONNECTED;
  wire [3:0]NLW_p0__4_i_35_O_UNCONNECTED;
  wire [3:0]NLW_p0__4_i_40_O_UNCONNECTED;
  wire [3:0]NLW_p0__4_i_45_O_UNCONNECTED;
  wire [2:0]NLW_p0__4_i_5_O_UNCONNECTED;
  wire NLW_p0__5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__5_OVERFLOW_UNCONNECTED;
  wire NLW_p0__5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__5_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__5_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_p0__5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__5_CARRYOUT_UNCONNECTED;
  wire NLW_p0__6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__6_OVERFLOW_UNCONNECTED;
  wire NLW_p0__6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__6_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__6_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__6_PCOUT_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 11x18 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({int_s[13],int_s[13],int_s[13],int_s[13],int_s[13],int_s[13],int_s[13],int_s[13:3]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__0_OVERFLOW_UNCONNECTED),
        .P({p0__0_n_58,p0__0_n_59,p0__0_n_60,p0__0_n_61,p0__0_n_62,p0__0_n_63,p0__0_n_64,p0__0_n_65,p0__0_n_66,p0__0_n_67,p0__0_n_68,p0__0_n_69,p0__0_n_70,p0__0_n_71,p0__0_n_72,p0__0_n_73,p0__0_n_74,p0__0_n_75,p0__0_n_76,p0__0_n_77,p0__0_n_78,p0__0_n_79,p0__0_n_80,p0__0_n_81,p0__0_n_82,p0__0_n_83,p0__0_n_84,p0__0_n_85,p0__0_n_86,p0__0_n_87,p0__0_n_88,p0__0_n_89,p0__0_n_90,p0__0_n_91,p0__0_n_92,p0__0_n_93,p0__0_n_94,p0__0_n_95,p0__0_n_96,p0__0_n_97,p0__0_n_98,p0__0_n_99,p0__0_n_100,p0__0_n_101,p0__0_n_102,p0__0_n_103,p0__0_n_104,p0__0_n_105}),
        .PATTERNBDETECT(NLW_p0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__0_n_106,p0__0_n_107,p0__0_n_108,p0__0_n_109,p0__0_n_110,p0__0_n_111,p0__0_n_112,p0__0_n_113,p0__0_n_114,p0__0_n_115,p0__0_n_116,p0__0_n_117,p0__0_n_118,p0__0_n_119,p0__0_n_120,p0__0_n_121,p0__0_n_122,p0__0_n_123,p0__0_n_124,p0__0_n_125,p0__0_n_126,p0__0_n_127,p0__0_n_128,p0__0_n_129,p0__0_n_130,p0__0_n_131,p0__0_n_132,p0__0_n_133,p0__0_n_134,p0__0_n_135,p0__0_n_136,p0__0_n_137,p0__0_n_138,p0__0_n_139,p0__0_n_140,p0__0_n_141,p0__0_n_142,p0__0_n_143,p0__0_n_144,p0__0_n_145,p0__0_n_146,p0__0_n_147,p0__0_n_148,p0__0_n_149,p0__0_n_150,p0__0_n_151,p0__0_n_152,p0__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 11x16 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({int_s[13],int_s[13],int_s[13],int_s[13],int_s[13],int_s[13],int_s[13],int_s[13:3]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__0__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__0__0_OVERFLOW_UNCONNECTED),
        .P({p0__0__0_n_58,p0__0__0_n_59,p0__0__0_n_60,p0__0__0_n_61,p0__0__0_n_62,p0__0__0_n_63,p0__0__0_n_64,p0__0__0_n_65,p0__0__0_n_66,p0__0__0_n_67,p0__0__0_n_68,p0__0__0_n_69,p0__0__0_n_70,p0__0__0_n_71,p0__0__0_n_72,p0__0__0_n_73,p0__0__0_n_74,p0__0__0_n_75,p0__0__0_n_76,p0__0__0_n_77,p0__0__0_n_78,p0__0__0_n_79,p0__0__0_n_80,p0__0__0_n_81,p0__0__0_n_82,p0__0__0_n_83,p0__0__0_n_84,p0__0__0_n_85,p0__0__0_n_86,p0__0__0_n_87,p0__0__0_n_88,p0__0__0_n_89,p0__0__0_n_90,p0__0__0_n_91,p0__0__0_n_92,p0__0__0_n_93,p0__0__0_n_94,p0__0__0_n_95,p0__0__0_n_96,p0__0__0_n_97,p0__0__0_n_98,p0__0__0_n_99,p0__0__0_n_100,p0__0__0_n_101,p0__0__0_n_102,p0__0__0_n_103,p0__0__0_n_104,p0__0__0_n_105}),
        .PATTERNBDETECT(NLW_p0__0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__0_n_106,p0__0_n_107,p0__0_n_108,p0__0_n_109,p0__0_n_110,p0__0_n_111,p0__0_n_112,p0__0_n_113,p0__0_n_114,p0__0_n_115,p0__0_n_116,p0__0_n_117,p0__0_n_118,p0__0_n_119,p0__0_n_120,p0__0_n_121,p0__0_n_122,p0__0_n_123,p0__0_n_124,p0__0_n_125,p0__0_n_126,p0__0_n_127,p0__0_n_128,p0__0_n_129,p0__0_n_130,p0__0_n_131,p0__0_n_132,p0__0_n_133,p0__0_n_134,p0__0_n_135,p0__0_n_136,p0__0_n_137,p0__0_n_138,p0__0_n_139,p0__0_n_140,p0__0_n_141,p0__0_n_142,p0__0_n_143,p0__0_n_144,p0__0_n_145,p0__0_n_146,p0__0_n_147,p0__0_n_148,p0__0_n_149,p0__0_n_150,p0__0_n_151,p0__0_n_152,p0__0_n_153}),
        .PCOUT(NLW_p0__0__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__0__0_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__0_i_1
       (.CI(p0__1_i_1_n_0),
        .CO({NLW_p0__0_i_1_CO_UNCONNECTED[3:1],p0__0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p0__0_i_2_n_0}),
        .O({NLW_p0__0_i_1_O_UNCONNECTED[3:2],p0[46:45]}),
        .S({1'b0,1'b0,p0__0_i_3_n_0,p0__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__0_i_2
       (.I0(p0__0__0_n_82),
        .I1(p0__3_n_65),
        .I2(p0__0__0_n_81),
        .I3(p0__3_n_64),
        .O(p0__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__0_i_3
       (.I0(p0__3_n_64),
        .I1(p0__0__0_n_81),
        .I2(p0__3_n_62),
        .I3(p0__0__0_n_79),
        .I4(p0__3_n_63),
        .I5(p0__0__0_n_80),
        .O(p0__0_i_3_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__0_i_4
       (.I0(p0__3_n_65),
        .I1(p0__0__0_n_82),
        .I2(p0__3_n_63),
        .I3(p0__0__0_n_80),
        .I4(p0__3_n_64),
        .I5(p0__0__0_n_81),
        .O(p0__0_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__1_OVERFLOW_UNCONNECTED),
        .P({p0__1_n_58,p0__1_n_59,p0__1_n_60,p0__1_n_61,p0__1_n_62,p0__1_n_63,p0__1_n_64,p0__1_n_65,p0__1_n_66,p0__1_n_67,p0__1_n_68,p0__1_n_69,p0__1_n_70,p0__1_n_71,p0__1_n_72,p0__1_n_73,p0__1_n_74,p0__1_n_75,p0__1_n_76,p0__1_n_77,p0__1_n_78,p0__1_n_79,p0__1_n_80,p0__1_n_81,p0__1_n_82,p0__1_n_83,p0__1_n_84,p0__1_n_85,p0__1_n_86,p0__1_n_87,p0__1_n_88,p0__1_n_89,p0__1_n_90,p0__1_n_91,p0__1_n_92,p0__1_n_93,p0__1_n_94,p0__1_n_95,p0__1_n_96,p0__1_n_97,p0__1_n_98,p0__1_n_99,p0__1_n_100,p0__1_n_101,p0__1_n_102,p0__1_n_103,p0__1_n_104,p0__1_n_105}),
        .PATTERNBDETECT(NLW_p0__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__1_n_106,p0__1_n_107,p0__1_n_108,p0__1_n_109,p0__1_n_110,p0__1_n_111,p0__1_n_112,p0__1_n_113,p0__1_n_114,p0__1_n_115,p0__1_n_116,p0__1_n_117,p0__1_n_118,p0__1_n_119,p0__1_n_120,p0__1_n_121,p0__1_n_122,p0__1_n_123,p0__1_n_124,p0__1_n_125,p0__1_n_126,p0__1_n_127,p0__1_n_128,p0__1_n_129,p0__1_n_130,p0__1_n_131,p0__1_n_132,p0__1_n_133,p0__1_n_134,p0__1_n_135,p0__1_n_136,p0__1_n_137,p0__1_n_138,p0__1_n_139,p0__1_n_140,p0__1_n_141,p0__1_n_142,p0__1_n_143,p0__1_n_144,p0__1_n_145,p0__1_n_146,p0__1_n_147,p0__1_n_148,p0__1_n_149,p0__1_n_150,p0__1_n_151,p0__1_n_152,p0__1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__1_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__1_i_1
       (.CI(p0__1_i_2_n_0),
        .CO({p0__1_i_1_n_0,p0__1_i_1_n_1,p0__1_i_1_n_2,p0__1_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({p0__1_i_3_n_0,p0__1_i_4_n_0,p0__1_i_5_n_0,p0__1_i_6_n_0}),
        .O(p0[44:41]),
        .S({p0__1_i_7_n_0,p0__1_i_8_n_0,p0__1_i_9_n_0,p0__1_i_10_n_0}));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__1_i_10
       (.I0(p0__3_n_69),
        .I1(p0__0__0_n_86),
        .I2(p0__3_n_67),
        .I3(p0__0__0_n_84),
        .I4(p0__3_n_68),
        .I5(p0__0__0_n_85),
        .O(p0__1_i_10_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__1_i_11
       (.I0(p0__0__0_n_87),
        .I1(p0__3_n_70),
        .I2(p0__0__0_n_86),
        .I3(p0__3_n_69),
        .O(p0__1_i_11_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__1_i_12
       (.I0(p0__0__0_n_88),
        .I1(p0__3_n_71),
        .I2(p0__0__0_n_87),
        .I3(p0__3_n_70),
        .O(p0__1_i_12_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__1_i_13
       (.I0(p0__0__0_n_89),
        .I1(p0__3_n_72),
        .I2(p0__0__0_n_88),
        .I3(p0__3_n_71),
        .O(p0__1_i_13_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__1_i_14
       (.I0(p0__0__0_n_90),
        .I1(p0__3_n_73),
        .I2(p0__0__0_n_89),
        .I3(p0__3_n_72),
        .O(p0__1_i_14_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__1_i_15
       (.I0(p0__3_n_70),
        .I1(p0__0__0_n_87),
        .I2(p0__3_n_68),
        .I3(p0__0__0_n_85),
        .I4(p0__3_n_69),
        .I5(p0__0__0_n_86),
        .O(p0__1_i_15_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__1_i_16
       (.I0(p0__3_n_71),
        .I1(p0__0__0_n_88),
        .I2(p0__3_n_69),
        .I3(p0__0__0_n_86),
        .I4(p0__3_n_70),
        .I5(p0__0__0_n_87),
        .O(p0__1_i_16_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__1_i_17
       (.I0(p0__3_n_72),
        .I1(p0__0__0_n_89),
        .I2(p0__3_n_70),
        .I3(p0__0__0_n_87),
        .I4(p0__3_n_71),
        .I5(p0__0__0_n_88),
        .O(p0__1_i_17_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__1_i_18
       (.I0(p0__3_n_73),
        .I1(p0__0__0_n_90),
        .I2(p0__3_n_71),
        .I3(p0__0__0_n_88),
        .I4(p0__3_n_72),
        .I5(p0__0__0_n_89),
        .O(p0__1_i_18_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__1_i_2
       (.CI(p0_i_1_n_0),
        .CO({p0__1_i_2_n_0,p0__1_i_2_n_1,p0__1_i_2_n_2,p0__1_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({p0__1_i_11_n_0,p0__1_i_12_n_0,p0__1_i_13_n_0,p0__1_i_14_n_0}),
        .O(p0[40:37]),
        .S({p0__1_i_15_n_0,p0__1_i_16_n_0,p0__1_i_17_n_0,p0__1_i_18_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__1_i_3
       (.I0(p0__0__0_n_83),
        .I1(p0__3_n_66),
        .I2(p0__0__0_n_82),
        .I3(p0__3_n_65),
        .O(p0__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__1_i_4
       (.I0(p0__0__0_n_84),
        .I1(p0__3_n_67),
        .I2(p0__0__0_n_83),
        .I3(p0__3_n_66),
        .O(p0__1_i_4_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__1_i_5
       (.I0(p0__0__0_n_85),
        .I1(p0__3_n_68),
        .I2(p0__0__0_n_84),
        .I3(p0__3_n_67),
        .O(p0__1_i_5_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__1_i_6
       (.I0(p0__0__0_n_86),
        .I1(p0__3_n_69),
        .I2(p0__0__0_n_85),
        .I3(p0__3_n_68),
        .O(p0__1_i_6_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__1_i_7
       (.I0(p0__3_n_66),
        .I1(p0__0__0_n_83),
        .I2(p0__3_n_64),
        .I3(p0__0__0_n_81),
        .I4(p0__3_n_65),
        .I5(p0__0__0_n_82),
        .O(p0__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__1_i_8
       (.I0(p0__3_n_67),
        .I1(p0__0__0_n_84),
        .I2(p0__3_n_65),
        .I3(p0__0__0_n_82),
        .I4(p0__3_n_66),
        .I5(p0__0__0_n_83),
        .O(p0__1_i_8_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__1_i_9
       (.I0(p0__3_n_68),
        .I1(p0__0__0_n_85),
        .I2(p0__3_n_66),
        .I3(p0__0__0_n_83),
        .I4(p0__3_n_67),
        .I5(p0__0__0_n_84),
        .O(p0__1_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,int_s[2:0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({p0__2_n_24,p0__2_n_25,p0__2_n_26,p0__2_n_27,p0__2_n_28,p0__2_n_29,p0__2_n_30,p0__2_n_31,p0__2_n_32,p0__2_n_33,p0__2_n_34,p0__2_n_35,p0__2_n_36,p0__2_n_37,p0__2_n_38,p0__2_n_39,p0__2_n_40,p0__2_n_41,p0__2_n_42,p0__2_n_43,p0__2_n_44,p0__2_n_45,p0__2_n_46,p0__2_n_47,p0__2_n_48,p0__2_n_49,p0__2_n_50,p0__2_n_51,p0__2_n_52,p0__2_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__2_OVERFLOW_UNCONNECTED),
        .P({p0__2_n_58,p0__2_n_59,p0__2_n_60,p0__2_n_61,p0__2_n_62,p0__2_n_63,p0__2_n_64,p0__2_n_65,p0__2_n_66,p0__2_n_67,p0__2_n_68,p0__2_n_69,p0__2_n_70,p0__2_n_71,p0__2_n_72,p0__2_n_73,p0__2_n_74,p0__2_n_75,p0__2_n_76,p0__2_n_77,p0__2_n_78,p0__2_n_79,p0__2_n_80,p0__2_n_81,p0__2_n_82,p0__2_n_83,p0__2_n_84,p0__2_n_85,p0__2_n_86,p0__2_n_87,p0__2_n_88,p0__2_n_89,p0__2_n_90,p0__2_n_91,p0__2_n_92,p0__2_n_93,p0__2_n_94,p0__2_n_95,p0__2_n_96,p0__2_n_97,p0__2_n_98,p0__2_n_99,p0__2_n_100,p0__2_n_101,p0__2_n_102,p0__2_n_103,p0__2_n_104,p0__2_n_105}),
        .PATTERNBDETECT(NLW_p0__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__1_n_106,p0__1_n_107,p0__1_n_108,p0__1_n_109,p0__1_n_110,p0__1_n_111,p0__1_n_112,p0__1_n_113,p0__1_n_114,p0__1_n_115,p0__1_n_116,p0__1_n_117,p0__1_n_118,p0__1_n_119,p0__1_n_120,p0__1_n_121,p0__1_n_122,p0__1_n_123,p0__1_n_124,p0__1_n_125,p0__1_n_126,p0__1_n_127,p0__1_n_128,p0__1_n_129,p0__1_n_130,p0__1_n_131,p0__1_n_132,p0__1_n_133,p0__1_n_134,p0__1_n_135,p0__1_n_136,p0__1_n_137,p0__1_n_138,p0__1_n_139,p0__1_n_140,p0__1_n_141,p0__1_n_142,p0__1_n_143,p0__1_n_144,p0__1_n_145,p0__1_n_146,p0__1_n_147,p0__1_n_148,p0__1_n_149,p0__1_n_150,p0__1_n_151,p0__1_n_152,p0__1_n_153}),
        .PCOUT({p0__2_n_106,p0__2_n_107,p0__2_n_108,p0__2_n_109,p0__2_n_110,p0__2_n_111,p0__2_n_112,p0__2_n_113,p0__2_n_114,p0__2_n_115,p0__2_n_116,p0__2_n_117,p0__2_n_118,p0__2_n_119,p0__2_n_120,p0__2_n_121,p0__2_n_122,p0__2_n_123,p0__2_n_124,p0__2_n_125,p0__2_n_126,p0__2_n_127,p0__2_n_128,p0__2_n_129,p0__2_n_130,p0__2_n_131,p0__2_n_132,p0__2_n_133,p0__2_n_134,p0__2_n_135,p0__2_n_136,p0__2_n_137,p0__2_n_138,p0__2_n_139,p0__2_n_140,p0__2_n_141,p0__2_n_142,p0__2_n_143,p0__2_n_144,p0__2_n_145,p0__2_n_146,p0__2_n_147,p0__2_n_148,p0__2_n_149,p0__2_n_150,p0__2_n_151,p0__2_n_152,p0__2_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({p0__2_n_24,p0__2_n_25,p0__2_n_26,p0__2_n_27,p0__2_n_28,p0__2_n_29,p0__2_n_30,p0__2_n_31,p0__2_n_32,p0__2_n_33,p0__2_n_34,p0__2_n_35,p0__2_n_36,p0__2_n_37,p0__2_n_38,p0__2_n_39,p0__2_n_40,p0__2_n_41,p0__2_n_42,p0__2_n_43,p0__2_n_44,p0__2_n_45,p0__2_n_46,p0__2_n_47,p0__2_n_48,p0__2_n_49,p0__2_n_50,p0__2_n_51,p0__2_n_52,p0__2_n_53}),
        .ACOUT(NLW_p0__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__3_OVERFLOW_UNCONNECTED),
        .P({p0__3_n_58,p0__3_n_59,p0__3_n_60,p0__3_n_61,p0__3_n_62,p0__3_n_63,p0__3_n_64,p0__3_n_65,p0__3_n_66,p0__3_n_67,p0__3_n_68,p0__3_n_69,p0__3_n_70,p0__3_n_71,p0__3_n_72,p0__3_n_73,p0__3_n_74,p0__3_n_75,p0__3_n_76,p0__3_n_77,p0__3_n_78,p0__3_n_79,p0__3_n_80,p0__3_n_81,p0__3_n_82,p0__3_n_83,p0__3_n_84,p0__3_n_85,p0__3_n_86,p0__3_n_87,p0__3_n_88,p0__3_n_89,p0__3_n_90,p0__3_n_91,p0__3_n_92,p0__3_n_93,p0__3_n_94,p0__3_n_95,p0__3_n_96,p0__3_n_97,p0__3_n_98,p0__3_n_99,p0__3_n_100,p0__3_n_101,p0__3_n_102,p0__3_n_103,p0__3_n_104,p0__3_n_105}),
        .PATTERNBDETECT(NLW_p0__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__2_n_106,p0__2_n_107,p0__2_n_108,p0__2_n_109,p0__2_n_110,p0__2_n_111,p0__2_n_112,p0__2_n_113,p0__2_n_114,p0__2_n_115,p0__2_n_116,p0__2_n_117,p0__2_n_118,p0__2_n_119,p0__2_n_120,p0__2_n_121,p0__2_n_122,p0__2_n_123,p0__2_n_124,p0__2_n_125,p0__2_n_126,p0__2_n_127,p0__2_n_128,p0__2_n_129,p0__2_n_130,p0__2_n_131,p0__2_n_132,p0__2_n_133,p0__2_n_134,p0__2_n_135,p0__2_n_136,p0__2_n_137,p0__2_n_138,p0__2_n_139,p0__2_n_140,p0__2_n_141,p0__2_n_142,p0__2_n_143,p0__2_n_144,p0__2_n_145,p0__2_n_146,p0__2_n_147,p0__2_n_148,p0__2_n_149,p0__2_n_150,p0__2_n_151,p0__2_n_152,p0__2_n_153}),
        .PCOUT(NLW_p0__3_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__3_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__4
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({p0__4_n_24,p0__4_n_25,p0__4_n_26,p0__4_n_27,p0__4_n_28,p0__4_n_29,p0__4_n_30,p0__4_n_31,p0__4_n_32,p0__4_n_33,p0__4_n_34,p0__4_n_35,p0__4_n_36,p0__4_n_37,p0__4_n_38,p0__4_n_39,p0__4_n_40,p0__4_n_41,p0__4_n_42,p0__4_n_43,p0__4_n_44,p0__4_n_45,p0__4_n_46,p0__4_n_47,p0__4_n_48,p0__4_n_49,p0__4_n_50,p0__4_n_51,p0__4_n_52,p0__4_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__4_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__4_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__4_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__4_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__4_OVERFLOW_UNCONNECTED),
        .P({p0__4_n_58,p0__4_n_59,p0__4_n_60,p0__4_n_61,p0__4_n_62,p0__4_n_63,p0__4_n_64,p0__4_n_65,p0__4_n_66,p0__4_n_67,p0__4_n_68,p0__4_n_69,p0__4_n_70,p0__4_n_71,p0__4_n_72,p0__4_n_73,p0__4_n_74,p0__4_n_75,p0__4_n_76,p0__4_n_77,p0__4_n_78,p0__4_n_79,p0__4_n_80,p0__4_n_81,p0__4_n_82,p0__4_n_83,p0__4_n_84,p0__4_n_85,p0__4_n_86,p0__4_n_87,p0__4_n_88,p0__4_n_89,p0__4_n_90,p0__4_n_91,p0__4_n_92,p0__4_n_93,p0__4_n_94,p0__4_n_95,p0__4_n_96,p0__4_n_97,p0__4_n_98,p0__4_n_99,p0__4_n_100,p0__4_n_101,p0__4_n_102,p0__4_n_103,p0__4_n_104,p0__4_n_105}),
        .PATTERNBDETECT(NLW_p0__4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__4_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__4_n_106,p0__4_n_107,p0__4_n_108,p0__4_n_109,p0__4_n_110,p0__4_n_111,p0__4_n_112,p0__4_n_113,p0__4_n_114,p0__4_n_115,p0__4_n_116,p0__4_n_117,p0__4_n_118,p0__4_n_119,p0__4_n_120,p0__4_n_121,p0__4_n_122,p0__4_n_123,p0__4_n_124,p0__4_n_125,p0__4_n_126,p0__4_n_127,p0__4_n_128,p0__4_n_129,p0__4_n_130,p0__4_n_131,p0__4_n_132,p0__4_n_133,p0__4_n_134,p0__4_n_135,p0__4_n_136,p0__4_n_137,p0__4_n_138,p0__4_n_139,p0__4_n_140,p0__4_n_141,p0__4_n_142,p0__4_n_143,p0__4_n_144,p0__4_n_145,p0__4_n_146,p0__4_n_147,p0__4_n_148,p0__4_n_149,p0__4_n_150,p0__4_n_151,p0__4_n_152,p0__4_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__4_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_i_1
       (.CI(p0__4_i_2_n_0),
        .CO({p0__4_i_1_n_0,p0__4_i_1_n_1,p0__4_i_1_n_2,p0__4_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_i_6_n_0,p0__4_i_7_n_0,p0__4_i_8_n_0,p0__4_i_9_n_0}),
        .O(p0[16:13]),
        .S({p0__4_i_10_n_0,p0__4_i_11_n_0,p0__4_i_12_n_0,p0__4_i_13_n_0}));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    p0__4_i_10
       (.I0(p0__6_n_58),
        .I1(p0__3_n_92),
        .I2(p0__0_n_92),
        .I3(p0__6_n_59),
        .I4(p0__3_n_93),
        .I5(p0__0_n_93),
        .O(p0__4_i_10_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_i_11
       (.I0(p0__4_i_7_n_0),
        .I1(p0__3_n_93),
        .I2(p0__0_n_93),
        .I3(p0__6_n_59),
        .O(p0__4_i_11_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_i_12
       (.I0(p0__0_n_94),
        .I1(p0__3_n_94),
        .I2(p0__6_n_60),
        .I3(p0__4_i_8_n_0),
        .O(p0__4_i_12_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_i_13
       (.I0(p0__0_n_95),
        .I1(p0__3_n_95),
        .I2(p0__6_n_61),
        .I3(p0__4_i_9_n_0),
        .O(p0__4_i_13_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_i_14
       (.I0(p0__0_n_97),
        .I1(p0__3_n_97),
        .I2(p0__6_n_63),
        .O(p0__4_i_14_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_i_15
       (.I0(p0__0_n_98),
        .I1(p0__3_n_98),
        .I2(p0__6_n_64),
        .O(p0__4_i_15_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_i_16
       (.I0(p0__0_n_99),
        .I1(p0__3_n_99),
        .I2(p0__6_n_65),
        .O(p0__4_i_16_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_i_17
       (.I0(p0__0_n_100),
        .I1(p0__3_n_100),
        .I2(p0__6_n_66),
        .O(p0__4_i_17_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_i_18
       (.I0(p0__0_n_96),
        .I1(p0__3_n_96),
        .I2(p0__6_n_62),
        .I3(p0__4_i_14_n_0),
        .O(p0__4_i_18_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_i_19
       (.I0(p0__0_n_97),
        .I1(p0__3_n_97),
        .I2(p0__6_n_63),
        .I3(p0__4_i_15_n_0),
        .O(p0__4_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_i_2
       (.CI(p0__4_i_3_n_0),
        .CO({p0__4_i_2_n_0,p0__4_i_2_n_1,p0__4_i_2_n_2,p0__4_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_i_14_n_0,p0__4_i_15_n_0,p0__4_i_16_n_0,p0__4_i_17_n_0}),
        .O(p0[12:9]),
        .S({p0__4_i_18_n_0,p0__4_i_19_n_0,p0__4_i_20_n_0,p0__4_i_21_n_0}));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_i_20
       (.I0(p0__0_n_98),
        .I1(p0__3_n_98),
        .I2(p0__6_n_64),
        .I3(p0__4_i_16_n_0),
        .O(p0__4_i_20_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_i_21
       (.I0(p0__0_n_99),
        .I1(p0__3_n_99),
        .I2(p0__6_n_65),
        .I3(p0__4_i_17_n_0),
        .O(p0__4_i_21_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_i_22
       (.I0(p0__0_n_101),
        .I1(p0__3_n_101),
        .I2(p0__6_n_67),
        .O(p0__4_i_22_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_i_23
       (.I0(p0__0_n_102),
        .I1(p0__3_n_102),
        .I2(p0__6_n_68),
        .O(p0__4_i_23_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_i_24
       (.I0(p0__0_n_103),
        .I1(p0__3_n_103),
        .I2(p0__6_n_69),
        .O(p0__4_i_24_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_i_25
       (.I0(p0__0_n_104),
        .I1(p0__3_n_104),
        .I2(p0__6_n_70),
        .O(p0__4_i_25_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_i_26
       (.I0(p0__0_n_100),
        .I1(p0__3_n_100),
        .I2(p0__6_n_66),
        .I3(p0__4_i_22_n_0),
        .O(p0__4_i_26_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_i_27
       (.I0(p0__0_n_101),
        .I1(p0__3_n_101),
        .I2(p0__6_n_67),
        .I3(p0__4_i_23_n_0),
        .O(p0__4_i_27_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_i_28
       (.I0(p0__0_n_102),
        .I1(p0__3_n_102),
        .I2(p0__6_n_68),
        .I3(p0__4_i_24_n_0),
        .O(p0__4_i_28_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__4_i_29
       (.I0(p0__0_n_103),
        .I1(p0__3_n_103),
        .I2(p0__6_n_69),
        .I3(p0__4_i_25_n_0),
        .O(p0__4_i_29_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_i_3
       (.CI(p0__4_i_4_n_0),
        .CO({p0__4_i_3_n_0,p0__4_i_3_n_1,p0__4_i_3_n_2,p0__4_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_i_22_n_0,p0__4_i_23_n_0,p0__4_i_24_n_0,p0__4_i_25_n_0}),
        .O(p0[8:5]),
        .S({p0__4_i_26_n_0,p0__4_i_27_n_0,p0__4_i_28_n_0,p0__4_i_29_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_i_30
       (.I0(p0__6_n_70),
        .I1(p0__0_n_104),
        .I2(p0__3_n_104),
        .O(p0__4_i_30_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    p0__4_i_31
       (.I0(p0__0_n_104),
        .I1(p0__3_n_104),
        .I2(p0__6_n_70),
        .I3(p0__3_n_105),
        .I4(p0__0_n_105),
        .O(p0__4_i_31_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_i_32
       (.I0(p0__0_n_105),
        .I1(p0__3_n_105),
        .I2(p0__6_n_71),
        .O(p0__4_i_32_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_33
       (.I0(p0__6_n_72),
        .I1(p0__2_n_89),
        .O(p0__4_i_33_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_34
       (.I0(p0__6_n_73),
        .I1(p0__2_n_90),
        .O(p0__4_i_34_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_i_35
       (.CI(p0__4_i_40_n_0),
        .CO({p0__4_i_35_n_0,p0__4_i_35_n_1,p0__4_i_35_n_2,p0__4_i_35_n_3}),
        .CYINIT(1'b0),
        .DI({p0__6_n_78,p0__6_n_79,p0__6_n_80,p0__6_n_81}),
        .O(NLW_p0__4_i_35_O_UNCONNECTED[3:0]),
        .S({p0__4_i_41_n_0,p0__4_i_42_n_0,p0__4_i_43_n_0,p0__4_i_44_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_36
       (.I0(p0__6_n_74),
        .I1(p0__2_n_91),
        .O(p0__4_i_36_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_37
       (.I0(p0__6_n_75),
        .I1(p0__2_n_92),
        .O(p0__4_i_37_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_38
       (.I0(p0__6_n_76),
        .I1(p0__2_n_93),
        .O(p0__4_i_38_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_39
       (.I0(p0__6_n_77),
        .I1(p0__2_n_94),
        .O(p0__4_i_39_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_i_4
       (.CI(p0__4_i_5_n_0),
        .CO({p0__4_i_4_n_0,p0__4_i_4_n_1,p0__4_i_4_n_2,p0__4_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({p0__4_i_30_n_0,p0__6_n_71,p0__6_n_72,p0__6_n_73}),
        .O(p0[4:1]),
        .S({p0__4_i_31_n_0,p0__4_i_32_n_0,p0__4_i_33_n_0,p0__4_i_34_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_i_40
       (.CI(p0__4_i_45_n_0),
        .CO({p0__4_i_40_n_0,p0__4_i_40_n_1,p0__4_i_40_n_2,p0__4_i_40_n_3}),
        .CYINIT(1'b0),
        .DI({p0__6_n_82,p0__6_n_83,p0__6_n_84,p0__6_n_85}),
        .O(NLW_p0__4_i_40_O_UNCONNECTED[3:0]),
        .S({p0__4_i_46_n_0,p0__4_i_47_n_0,p0__4_i_48_n_0,p0__4_i_49_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_41
       (.I0(p0__6_n_78),
        .I1(p0__2_n_95),
        .O(p0__4_i_41_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_42
       (.I0(p0__6_n_79),
        .I1(p0__2_n_96),
        .O(p0__4_i_42_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_43
       (.I0(p0__6_n_80),
        .I1(p0__2_n_97),
        .O(p0__4_i_43_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_44
       (.I0(p0__6_n_81),
        .I1(p0__2_n_98),
        .O(p0__4_i_44_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_i_45
       (.CI(1'b0),
        .CO({p0__4_i_45_n_0,p0__4_i_45_n_1,p0__4_i_45_n_2,p0__4_i_45_n_3}),
        .CYINIT(1'b0),
        .DI({p0__6_n_86,p0__6_n_87,p0__6_n_88,1'b0}),
        .O(NLW_p0__4_i_45_O_UNCONNECTED[3:0]),
        .S({p0__4_i_50_n_0,p0__4_i_51_n_0,p0__4_i_52_n_0,p0__6_n_89}));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_46
       (.I0(p0__6_n_82),
        .I1(p0__2_n_99),
        .O(p0__4_i_46_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_47
       (.I0(p0__6_n_83),
        .I1(p0__2_n_100),
        .O(p0__4_i_47_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_48
       (.I0(p0__6_n_84),
        .I1(p0__2_n_101),
        .O(p0__4_i_48_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_49
       (.I0(p0__6_n_85),
        .I1(p0__2_n_102),
        .O(p0__4_i_49_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__4_i_5
       (.CI(p0__4_i_35_n_0),
        .CO({p0__4_i_5_n_0,p0__4_i_5_n_1,p0__4_i_5_n_2,p0__4_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({p0__6_n_74,p0__6_n_75,p0__6_n_76,p0__6_n_77}),
        .O({p0[0],NLW_p0__4_i_5_O_UNCONNECTED[2:0]}),
        .S({p0__4_i_36_n_0,p0__4_i_37_n_0,p0__4_i_38_n_0,p0__4_i_39_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_50
       (.I0(p0__6_n_86),
        .I1(p0__2_n_103),
        .O(p0__4_i_50_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_51
       (.I0(p0__6_n_87),
        .I1(p0__2_n_104),
        .O(p0__4_i_51_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__4_i_52
       (.I0(p0__6_n_88),
        .I1(p0__2_n_105),
        .O(p0__4_i_52_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__4_i_6
       (.I0(p0__6_n_58),
        .I1(p0__3_n_92),
        .I2(p0__0_n_92),
        .O(p0__4_i_6_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_i_7
       (.I0(p0__0_n_94),
        .I1(p0__3_n_94),
        .I2(p0__6_n_60),
        .O(p0__4_i_7_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_i_8
       (.I0(p0__0_n_95),
        .I1(p0__3_n_95),
        .I2(p0__6_n_61),
        .O(p0__4_i_8_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__4_i_9
       (.I0(p0__0_n_96),
        .I1(p0__3_n_96),
        .I2(p0__6_n_62),
        .O(p0__4_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__5
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({p0__4_n_24,p0__4_n_25,p0__4_n_26,p0__4_n_27,p0__4_n_28,p0__4_n_29,p0__4_n_30,p0__4_n_31,p0__4_n_32,p0__4_n_33,p0__4_n_34,p0__4_n_35,p0__4_n_36,p0__4_n_37,p0__4_n_38,p0__4_n_39,p0__4_n_40,p0__4_n_41,p0__4_n_42,p0__4_n_43,p0__4_n_44,p0__4_n_45,p0__4_n_46,p0__4_n_47,p0__4_n_48,p0__4_n_49,p0__4_n_50,p0__4_n_51,p0__4_n_52,p0__4_n_53}),
        .ACOUT({p0__5_n_24,p0__5_n_25,p0__5_n_26,p0__5_n_27,p0__5_n_28,p0__5_n_29,p0__5_n_30,p0__5_n_31,p0__5_n_32,p0__5_n_33,p0__5_n_34,p0__5_n_35,p0__5_n_36,p0__5_n_37,p0__5_n_38,p0__5_n_39,p0__5_n_40,p0__5_n_41,p0__5_n_42,p0__5_n_43,p0__5_n_44,p0__5_n_45,p0__5_n_46,p0__5_n_47,p0__5_n_48,p0__5_n_49,p0__5_n_50,p0__5_n_51,p0__5_n_52,p0__5_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__5_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__5_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__5_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__5_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__5_OVERFLOW_UNCONNECTED),
        .P({p0__5_n_58,p0__5_n_59,p0__5_n_60,p0__5_n_61,p0__5_n_62,p0__5_n_63,p0__5_n_64,p0__5_n_65,p0__5_n_66,p0__5_n_67,p0__5_n_68,p0__5_n_69,p0__5_n_70,p0__5_n_71,p0__5_n_72,p0__5_n_73,p0__5_n_74,p0__5_n_75,p0__5_n_76,p0__5_n_77,p0__5_n_78,p0__5_n_79,p0__5_n_80,p0__5_n_81,p0__5_n_82,p0__5_n_83,p0__5_n_84,p0__5_n_85,p0__5_n_86,p0__5_n_87,p0__5_n_88,p0__5_n_89,p0__5_n_90,p0__5_n_91,p0__5_n_92,p0__5_n_93,p0__5_n_94,p0__5_n_95,p0__5_n_96,p0__5_n_97,p0__5_n_98,p0__5_n_99,p0__5_n_100,p0__5_n_101,p0__5_n_102,p0__5_n_103,p0__5_n_104,p0__5_n_105}),
        .PATTERNBDETECT(NLW_p0__5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__5_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__4_n_106,p0__4_n_107,p0__4_n_108,p0__4_n_109,p0__4_n_110,p0__4_n_111,p0__4_n_112,p0__4_n_113,p0__4_n_114,p0__4_n_115,p0__4_n_116,p0__4_n_117,p0__4_n_118,p0__4_n_119,p0__4_n_120,p0__4_n_121,p0__4_n_122,p0__4_n_123,p0__4_n_124,p0__4_n_125,p0__4_n_126,p0__4_n_127,p0__4_n_128,p0__4_n_129,p0__4_n_130,p0__4_n_131,p0__4_n_132,p0__4_n_133,p0__4_n_134,p0__4_n_135,p0__4_n_136,p0__4_n_137,p0__4_n_138,p0__4_n_139,p0__4_n_140,p0__4_n_141,p0__4_n_142,p0__4_n_143,p0__4_n_144,p0__4_n_145,p0__4_n_146,p0__4_n_147,p0__4_n_148,p0__4_n_149,p0__4_n_150,p0__4_n_151,p0__4_n_152,p0__4_n_153}),
        .PCOUT({p0__5_n_106,p0__5_n_107,p0__5_n_108,p0__5_n_109,p0__5_n_110,p0__5_n_111,p0__5_n_112,p0__5_n_113,p0__5_n_114,p0__5_n_115,p0__5_n_116,p0__5_n_117,p0__5_n_118,p0__5_n_119,p0__5_n_120,p0__5_n_121,p0__5_n_122,p0__5_n_123,p0__5_n_124,p0__5_n_125,p0__5_n_126,p0__5_n_127,p0__5_n_128,p0__5_n_129,p0__5_n_130,p0__5_n_131,p0__5_n_132,p0__5_n_133,p0__5_n_134,p0__5_n_135,p0__5_n_136,p0__5_n_137,p0__5_n_138,p0__5_n_139,p0__5_n_140,p0__5_n_141,p0__5_n_142,p0__5_n_143,p0__5_n_144,p0__5_n_145,p0__5_n_146,p0__5_n_147,p0__5_n_148,p0__5_n_149,p0__5_n_150,p0__5_n_151,p0__5_n_152,p0__5_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__5_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 8}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p0__6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({p0__5_n_24,p0__5_n_25,p0__5_n_26,p0__5_n_27,p0__5_n_28,p0__5_n_29,p0__5_n_30,p0__5_n_31,p0__5_n_32,p0__5_n_33,p0__5_n_34,p0__5_n_35,p0__5_n_36,p0__5_n_37,p0__5_n_38,p0__5_n_39,p0__5_n_40,p0__5_n_41,p0__5_n_42,p0__5_n_43,p0__5_n_44,p0__5_n_45,p0__5_n_46,p0__5_n_47,p0__5_n_48,p0__5_n_49,p0__5_n_50,p0__5_n_51,p0__5_n_52,p0__5_n_53}),
        .ACOUT(NLW_p0__6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p0__6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__6_OVERFLOW_UNCONNECTED),
        .P({p0__6_n_58,p0__6_n_59,p0__6_n_60,p0__6_n_61,p0__6_n_62,p0__6_n_63,p0__6_n_64,p0__6_n_65,p0__6_n_66,p0__6_n_67,p0__6_n_68,p0__6_n_69,p0__6_n_70,p0__6_n_71,p0__6_n_72,p0__6_n_73,p0__6_n_74,p0__6_n_75,p0__6_n_76,p0__6_n_77,p0__6_n_78,p0__6_n_79,p0__6_n_80,p0__6_n_81,p0__6_n_82,p0__6_n_83,p0__6_n_84,p0__6_n_85,p0__6_n_86,p0__6_n_87,p0__6_n_88,p0__6_n_89,p0__6_n_90,p0__6_n_91,p0__6_n_92,p0__6_n_93,p0__6_n_94,p0__6_n_95,p0__6_n_96,p0__6_n_97,p0__6_n_98,p0__6_n_99,p0__6_n_100,p0__6_n_101,p0__6_n_102,p0__6_n_103,p0__6_n_104,p0__6_n_105}),
        .PATTERNBDETECT(NLW_p0__6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__6_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__5_n_106,p0__5_n_107,p0__5_n_108,p0__5_n_109,p0__5_n_110,p0__5_n_111,p0__5_n_112,p0__5_n_113,p0__5_n_114,p0__5_n_115,p0__5_n_116,p0__5_n_117,p0__5_n_118,p0__5_n_119,p0__5_n_120,p0__5_n_121,p0__5_n_122,p0__5_n_123,p0__5_n_124,p0__5_n_125,p0__5_n_126,p0__5_n_127,p0__5_n_128,p0__5_n_129,p0__5_n_130,p0__5_n_131,p0__5_n_132,p0__5_n_133,p0__5_n_134,p0__5_n_135,p0__5_n_136,p0__5_n_137,p0__5_n_138,p0__5_n_139,p0__5_n_140,p0__5_n_141,p0__5_n_142,p0__5_n_143,p0__5_n_144,p0__5_n_145,p0__5_n_146,p0__5_n_147,p0__5_n_148,p0__5_n_149,p0__5_n_150,p0__5_n_151,p0__5_n_152,p0__5_n_153}),
        .PCOUT(NLW_p0__6_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__6_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_i_1
       (.CI(p0_i_2_n_0),
        .CO({p0_i_1_n_0,p0_i_1_n_1,p0_i_1_n_2,p0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({p0_i_6_n_0,p0_i_7_n_0,p0_i_8_n_0,p0_i_9_n_0}),
        .O(p0[36:33]),
        .S({p0_i_10_n_0,p0_i_11_n_0,p0_i_12_n_0,p0_i_13_n_0}));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_10
       (.I0(p0__3_n_74),
        .I1(p0__0__0_n_91),
        .I2(p0__3_n_72),
        .I3(p0__0__0_n_89),
        .I4(p0__3_n_73),
        .I5(p0__0__0_n_90),
        .O(p0_i_10_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_11
       (.I0(p0__3_n_75),
        .I1(p0__0__0_n_92),
        .I2(p0__3_n_73),
        .I3(p0__0__0_n_90),
        .I4(p0__3_n_74),
        .I5(p0__0__0_n_91),
        .O(p0_i_11_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_12
       (.I0(p0__3_n_76),
        .I1(p0__0__0_n_93),
        .I2(p0__3_n_74),
        .I3(p0__0__0_n_91),
        .I4(p0__3_n_75),
        .I5(p0__0__0_n_92),
        .O(p0_i_12_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_13
       (.I0(p0__3_n_77),
        .I1(p0__0__0_n_94),
        .I2(p0__3_n_75),
        .I3(p0__0__0_n_92),
        .I4(p0__3_n_76),
        .I5(p0__0__0_n_93),
        .O(p0_i_13_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_14
       (.I0(p0__0__0_n_95),
        .I1(p0__3_n_78),
        .I2(p0__0__0_n_94),
        .I3(p0__3_n_77),
        .O(p0_i_14_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_15
       (.I0(p0__0__0_n_96),
        .I1(p0__3_n_79),
        .I2(p0__0__0_n_95),
        .I3(p0__3_n_78),
        .O(p0_i_15_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_16
       (.I0(p0__0__0_n_97),
        .I1(p0__3_n_80),
        .I2(p0__0__0_n_96),
        .I3(p0__3_n_79),
        .O(p0_i_16_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_17
       (.I0(p0__0__0_n_98),
        .I1(p0__3_n_81),
        .I2(p0__0__0_n_97),
        .I3(p0__3_n_80),
        .O(p0_i_17_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_18
       (.I0(p0__3_n_78),
        .I1(p0__0__0_n_95),
        .I2(p0__3_n_76),
        .I3(p0__0__0_n_93),
        .I4(p0__3_n_77),
        .I5(p0__0__0_n_94),
        .O(p0_i_18_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_19
       (.I0(p0__3_n_79),
        .I1(p0__0__0_n_96),
        .I2(p0__3_n_77),
        .I3(p0__0__0_n_94),
        .I4(p0__3_n_78),
        .I5(p0__0__0_n_95),
        .O(p0_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_i_2
       (.CI(p0_i_3_n_0),
        .CO({p0_i_2_n_0,p0_i_2_n_1,p0_i_2_n_2,p0_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({p0_i_14_n_0,p0_i_15_n_0,p0_i_16_n_0,p0_i_17_n_0}),
        .O(p0[32:29]),
        .S({p0_i_18_n_0,p0_i_19_n_0,p0_i_20_n_0,p0_i_21_n_0}));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_20
       (.I0(p0__3_n_80),
        .I1(p0__0__0_n_97),
        .I2(p0__3_n_78),
        .I3(p0__0__0_n_95),
        .I4(p0__3_n_79),
        .I5(p0__0__0_n_96),
        .O(p0_i_20_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_21
       (.I0(p0__3_n_81),
        .I1(p0__0__0_n_98),
        .I2(p0__3_n_79),
        .I3(p0__0__0_n_96),
        .I4(p0__3_n_80),
        .I5(p0__0__0_n_97),
        .O(p0_i_21_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_22
       (.I0(p0__0__0_n_99),
        .I1(p0__3_n_82),
        .I2(p0__0__0_n_98),
        .I3(p0__3_n_81),
        .O(p0_i_22_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_23
       (.I0(p0__0__0_n_100),
        .I1(p0__3_n_83),
        .I2(p0__0__0_n_99),
        .I3(p0__3_n_82),
        .O(p0_i_23_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_24
       (.I0(p0__0__0_n_101),
        .I1(p0__3_n_84),
        .I2(p0__0__0_n_100),
        .I3(p0__3_n_83),
        .O(p0_i_24_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_25
       (.I0(p0__0__0_n_102),
        .I1(p0__3_n_85),
        .I2(p0__0__0_n_101),
        .I3(p0__3_n_84),
        .O(p0_i_25_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_26
       (.I0(p0__3_n_82),
        .I1(p0__0__0_n_99),
        .I2(p0__3_n_80),
        .I3(p0__0__0_n_97),
        .I4(p0__3_n_81),
        .I5(p0__0__0_n_98),
        .O(p0_i_26_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_27
       (.I0(p0__3_n_83),
        .I1(p0__0__0_n_100),
        .I2(p0__3_n_81),
        .I3(p0__0__0_n_98),
        .I4(p0__3_n_82),
        .I5(p0__0__0_n_99),
        .O(p0_i_27_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_28
       (.I0(p0__3_n_84),
        .I1(p0__0__0_n_101),
        .I2(p0__3_n_82),
        .I3(p0__0__0_n_99),
        .I4(p0__3_n_83),
        .I5(p0__0__0_n_100),
        .O(p0_i_28_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_29
       (.I0(p0__3_n_85),
        .I1(p0__0__0_n_102),
        .I2(p0__3_n_83),
        .I3(p0__0__0_n_100),
        .I4(p0__3_n_84),
        .I5(p0__0__0_n_101),
        .O(p0_i_29_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_i_3
       (.CI(p0_i_4_n_0),
        .CO({p0_i_3_n_0,p0_i_3_n_1,p0_i_3_n_2,p0_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({p0_i_22_n_0,p0_i_23_n_0,p0_i_24_n_0,p0_i_25_n_0}),
        .O(p0[28:25]),
        .S({p0_i_26_n_0,p0_i_27_n_0,p0_i_28_n_0,p0_i_29_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_30
       (.I0(p0__0__0_n_103),
        .I1(p0__3_n_86),
        .I2(p0__0__0_n_102),
        .I3(p0__3_n_85),
        .O(p0_i_30_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_31
       (.I0(p0__0__0_n_104),
        .I1(p0__3_n_87),
        .I2(p0__0__0_n_103),
        .I3(p0__3_n_86),
        .O(p0_i_31_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_32
       (.I0(p0__0__0_n_105),
        .I1(p0__3_n_88),
        .I2(p0__0__0_n_104),
        .I3(p0__3_n_87),
        .O(p0_i_32_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_33
       (.I0(p0__0_n_89),
        .I1(p0__3_n_89),
        .I2(p0__0__0_n_105),
        .I3(p0__3_n_88),
        .O(p0_i_33_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_34
       (.I0(p0__3_n_86),
        .I1(p0__0__0_n_103),
        .I2(p0__3_n_84),
        .I3(p0__0__0_n_101),
        .I4(p0__3_n_85),
        .I5(p0__0__0_n_102),
        .O(p0_i_34_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_35
       (.I0(p0__3_n_87),
        .I1(p0__0__0_n_104),
        .I2(p0__3_n_85),
        .I3(p0__0__0_n_102),
        .I4(p0__3_n_86),
        .I5(p0__0__0_n_103),
        .O(p0_i_35_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_36
       (.I0(p0__3_n_88),
        .I1(p0__0__0_n_105),
        .I2(p0__3_n_86),
        .I3(p0__0__0_n_103),
        .I4(p0__3_n_87),
        .I5(p0__0__0_n_104),
        .O(p0_i_36_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_37
       (.I0(p0__3_n_89),
        .I1(p0__0_n_89),
        .I2(p0__3_n_87),
        .I3(p0__0__0_n_104),
        .I4(p0__3_n_88),
        .I5(p0__0__0_n_105),
        .O(p0_i_37_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_38
       (.I0(p0__0_n_90),
        .I1(p0__3_n_90),
        .I2(p0__0_n_89),
        .I3(p0__3_n_89),
        .O(p0_i_38_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_39
       (.I0(p0__0_n_91),
        .I1(p0__3_n_91),
        .I2(p0__0_n_90),
        .I3(p0__3_n_90),
        .O(p0_i_39_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_i_4
       (.CI(p0_i_5_n_0),
        .CO({p0_i_4_n_0,p0_i_4_n_1,p0_i_4_n_2,p0_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({p0_i_30_n_0,p0_i_31_n_0,p0_i_32_n_0,p0_i_33_n_0}),
        .O(p0[24:21]),
        .S({p0_i_34_n_0,p0_i_35_n_0,p0_i_36_n_0,p0_i_37_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_40
       (.I0(p0__0_n_92),
        .I1(p0__3_n_92),
        .I2(p0__0_n_91),
        .I3(p0__3_n_91),
        .O(p0_i_40_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    p0_i_41
       (.I0(p0__0_n_92),
        .I1(p0__3_n_92),
        .I2(p0__6_n_58),
        .O(p0_i_41_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_42
       (.I0(p0__3_n_90),
        .I1(p0__0_n_90),
        .I2(p0__3_n_88),
        .I3(p0__0__0_n_105),
        .I4(p0__3_n_89),
        .I5(p0__0_n_89),
        .O(p0_i_42_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_43
       (.I0(p0__3_n_91),
        .I1(p0__0_n_91),
        .I2(p0__3_n_89),
        .I3(p0__0_n_89),
        .I4(p0__3_n_90),
        .I5(p0__0_n_90),
        .O(p0_i_43_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0_i_44
       (.I0(p0__3_n_92),
        .I1(p0__0_n_92),
        .I2(p0__3_n_90),
        .I3(p0__0_n_90),
        .I4(p0__3_n_91),
        .I5(p0__0_n_91),
        .O(p0_i_44_n_0));
  LUT5 #(
    .INIT(32'h693C3C96)) 
    p0_i_45
       (.I0(p0__6_n_58),
        .I1(p0__3_n_91),
        .I2(p0__0_n_91),
        .I3(p0__3_n_92),
        .I4(p0__0_n_92),
        .O(p0_i_45_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_i_5
       (.CI(p0__4_i_1_n_0),
        .CO({p0_i_5_n_0,p0_i_5_n_1,p0_i_5_n_2,p0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({p0_i_38_n_0,p0_i_39_n_0,p0_i_40_n_0,p0_i_41_n_0}),
        .O(p0[20:17]),
        .S({p0_i_42_n_0,p0_i_43_n_0,p0_i_44_n_0,p0_i_45_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_6
       (.I0(p0__0__0_n_91),
        .I1(p0__3_n_74),
        .I2(p0__0__0_n_90),
        .I3(p0__3_n_73),
        .O(p0_i_6_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_7
       (.I0(p0__0__0_n_92),
        .I1(p0__3_n_75),
        .I2(p0__0__0_n_91),
        .I3(p0__3_n_74),
        .O(p0_i_7_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_8
       (.I0(p0__0__0_n_93),
        .I1(p0__3_n_76),
        .I2(p0__0__0_n_92),
        .I3(p0__3_n_75),
        .O(p0_i_8_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0_i_9
       (.I0(p0__0__0_n_94),
        .I1(p0__3_n_77),
        .I2(p0__0__0_n_93),
        .I3(p0__3_n_76),
        .O(p0_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "gen_reg" *) 
module system_SPGD_SYS_0_gen_reg
   (S,
    Q,
    \int_data_reg_reg[63]_0 ,
    \int_data_reg_reg[63]_1 ,
    \int_data_reg_reg[63]_2 ,
    \int_data_reg_reg[63]_3 ,
    \int_data_reg_reg[43]_0 ,
    \int_data_reg_reg[39]_0 ,
    \int_data_reg_reg[35]_0 ,
    \int_data_reg_reg[31]_0 ,
    \int_data_reg_reg[27]_0 ,
    \int_data_reg_reg[23]_0 ,
    \int_data_reg_reg[19]_0 ,
    \int_data_reg_reg[15]_0 ,
    \int_data_reg_reg[11]_0 ,
    \int_data_reg_reg[7]_0 ,
    \int_data_reg_reg[3]_0 ,
    \int_data_reg_reg[63]_4 ,
    int_data_reg_reg,
    \int_data_reg_reg[63]_5 ,
    int_DELTA_U_WRT,
    p0,
    ADC_CLK);
  output [2:0]S;
  output [46:0]Q;
  output [3:0]\int_data_reg_reg[63]_0 ;
  output [3:0]\int_data_reg_reg[63]_1 ;
  output [3:0]\int_data_reg_reg[63]_2 ;
  output [3:0]\int_data_reg_reg[63]_3 ;
  output [3:0]\int_data_reg_reg[43]_0 ;
  output [3:0]\int_data_reg_reg[39]_0 ;
  output [3:0]\int_data_reg_reg[35]_0 ;
  output [3:0]\int_data_reg_reg[31]_0 ;
  output [3:0]\int_data_reg_reg[27]_0 ;
  output [3:0]\int_data_reg_reg[23]_0 ;
  output [3:0]\int_data_reg_reg[19]_0 ;
  output [3:0]\int_data_reg_reg[15]_0 ;
  output [3:0]\int_data_reg_reg[11]_0 ;
  output [3:0]\int_data_reg_reg[7]_0 ;
  output [3:0]\int_data_reg_reg[3]_0 ;
  output [0:0]\int_data_reg_reg[63]_4 ;
  input [63:0]int_data_reg_reg;
  input \int_data_reg_reg[63]_5 ;
  input int_DELTA_U_WRT;
  input [46:0]p0;
  input ADC_CLK;

  wire ADC_CLK;
  wire [46:0]Q;
  wire [2:0]S;
  wire int_DELTA_U_WRT;
  wire [63:0]int_data_reg_reg;
  wire [3:0]\int_data_reg_reg[11]_0 ;
  wire [3:0]\int_data_reg_reg[15]_0 ;
  wire [3:0]\int_data_reg_reg[19]_0 ;
  wire [3:0]\int_data_reg_reg[23]_0 ;
  wire [3:0]\int_data_reg_reg[27]_0 ;
  wire [3:0]\int_data_reg_reg[31]_0 ;
  wire [3:0]\int_data_reg_reg[35]_0 ;
  wire [3:0]\int_data_reg_reg[39]_0 ;
  wire [3:0]\int_data_reg_reg[3]_0 ;
  wire [3:0]\int_data_reg_reg[43]_0 ;
  wire [3:0]\int_data_reg_reg[63]_0 ;
  wire [3:0]\int_data_reg_reg[63]_1 ;
  wire [3:0]\int_data_reg_reg[63]_2 ;
  wire [3:0]\int_data_reg_reg[63]_3 ;
  wire [0:0]\int_data_reg_reg[63]_4 ;
  wire \int_data_reg_reg[63]_5 ;
  wire [3:0]\int_data_reg_reg[7]_0 ;
  wire [46:0]p0;

  FDRE \int_data_reg_reg[0] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[0]),
        .Q(Q[0]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[10] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[10]),
        .Q(Q[10]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[11] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[11]),
        .Q(Q[11]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[12] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[12]),
        .Q(Q[12]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[13] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[13]),
        .Q(Q[13]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[14] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[14]),
        .Q(Q[14]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[15] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[15]),
        .Q(Q[15]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[16] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[16]),
        .Q(Q[16]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[17] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[17]),
        .Q(Q[17]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[18] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[18]),
        .Q(Q[18]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[19] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[19]),
        .Q(Q[19]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[1] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[1]),
        .Q(Q[1]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[20] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[20]),
        .Q(Q[20]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[21] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[21]),
        .Q(Q[21]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[22] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[22]),
        .Q(Q[22]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[23] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[23]),
        .Q(Q[23]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[24] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[24]),
        .Q(Q[24]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[25] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[25]),
        .Q(Q[25]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[26] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[26]),
        .Q(Q[26]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[27] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[27]),
        .Q(Q[27]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[28] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[28]),
        .Q(Q[28]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[29] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[29]),
        .Q(Q[29]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[2] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[2]),
        .Q(Q[2]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[30] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[30]),
        .Q(Q[30]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[31] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[31]),
        .Q(Q[31]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[32] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[32]),
        .Q(Q[32]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[33] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[33]),
        .Q(Q[33]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[34] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[34]),
        .Q(Q[34]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[35] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[35]),
        .Q(Q[35]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[36] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[36]),
        .Q(Q[36]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[37] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[37]),
        .Q(Q[37]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[38] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[38]),
        .Q(Q[38]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[39] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[39]),
        .Q(Q[39]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[3] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[3]),
        .Q(Q[3]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[40] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[40]),
        .Q(Q[40]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[41] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[41]),
        .Q(Q[41]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[42] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[42]),
        .Q(Q[42]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[43] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[43]),
        .Q(Q[43]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[44] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[44]),
        .Q(Q[44]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[45] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[45]),
        .Q(Q[45]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[4] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[4]),
        .Q(Q[4]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[5] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[5]),
        .Q(Q[5]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[63] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[46]),
        .Q(Q[46]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[6] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[6]),
        .Q(Q[6]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[7] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[7]),
        .Q(Q[7]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[8] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[8]),
        .Q(Q[8]),
        .R(\int_data_reg_reg[63]_5 ));
  FDRE \int_data_reg_reg[9] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[9]),
        .Q(Q[9]),
        .R(\int_data_reg_reg[63]_5 ));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_1__1
       (.I0(Q[7]),
        .I1(int_data_reg_reg[7]),
        .O(\int_data_reg_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_2__1
       (.I0(Q[6]),
        .I1(int_data_reg_reg[6]),
        .O(\int_data_reg_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_3__1
       (.I0(Q[5]),
        .I1(int_data_reg_reg[5]),
        .O(\int_data_reg_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_4__1
       (.I0(Q[4]),
        .I1(int_data_reg_reg[4]),
        .O(\int_data_reg_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__10_i_1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[47]),
        .O(\int_data_reg_reg[63]_3 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__10_i_2
       (.I0(Q[46]),
        .I1(int_data_reg_reg[46]),
        .O(\int_data_reg_reg[63]_3 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__10_i_3
       (.I0(Q[45]),
        .I1(int_data_reg_reg[45]),
        .O(\int_data_reg_reg[63]_3 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__10_i_4
       (.I0(Q[44]),
        .I1(int_data_reg_reg[44]),
        .O(\int_data_reg_reg[63]_3 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__11_i_1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[51]),
        .O(\int_data_reg_reg[63]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__11_i_2
       (.I0(Q[46]),
        .I1(int_data_reg_reg[50]),
        .O(\int_data_reg_reg[63]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__11_i_3
       (.I0(Q[46]),
        .I1(int_data_reg_reg[49]),
        .O(\int_data_reg_reg[63]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__11_i_4
       (.I0(Q[46]),
        .I1(int_data_reg_reg[48]),
        .O(\int_data_reg_reg[63]_2 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__12_i_1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[55]),
        .O(\int_data_reg_reg[63]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__12_i_2
       (.I0(Q[46]),
        .I1(int_data_reg_reg[54]),
        .O(\int_data_reg_reg[63]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__12_i_3
       (.I0(Q[46]),
        .I1(int_data_reg_reg[53]),
        .O(\int_data_reg_reg[63]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__12_i_4
       (.I0(Q[46]),
        .I1(int_data_reg_reg[52]),
        .O(\int_data_reg_reg[63]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__13_i_1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[59]),
        .O(\int_data_reg_reg[63]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__13_i_2
       (.I0(Q[46]),
        .I1(int_data_reg_reg[58]),
        .O(\int_data_reg_reg[63]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__13_i_3
       (.I0(Q[46]),
        .I1(int_data_reg_reg[57]),
        .O(\int_data_reg_reg[63]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__13_i_4
       (.I0(Q[46]),
        .I1(int_data_reg_reg[56]),
        .O(\int_data_reg_reg[63]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__14_i_1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[63]),
        .O(\int_data_reg_reg[63]_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__14_i_2
       (.I0(Q[46]),
        .I1(int_data_reg_reg[62]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__14_i_3
       (.I0(Q[46]),
        .I1(int_data_reg_reg[61]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__14_i_4
       (.I0(Q[46]),
        .I1(int_data_reg_reg[60]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_1__1
       (.I0(Q[11]),
        .I1(int_data_reg_reg[11]),
        .O(\int_data_reg_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_2
       (.I0(Q[10]),
        .I1(int_data_reg_reg[10]),
        .O(\int_data_reg_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_3__1
       (.I0(Q[9]),
        .I1(int_data_reg_reg[9]),
        .O(\int_data_reg_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_4__1
       (.I0(Q[8]),
        .I1(int_data_reg_reg[8]),
        .O(\int_data_reg_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__2_i_1
       (.I0(Q[15]),
        .I1(int_data_reg_reg[15]),
        .O(\int_data_reg_reg[15]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__2_i_2
       (.I0(Q[14]),
        .I1(int_data_reg_reg[14]),
        .O(\int_data_reg_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__2_i_3
       (.I0(Q[13]),
        .I1(int_data_reg_reg[13]),
        .O(\int_data_reg_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__2_i_4
       (.I0(Q[12]),
        .I1(int_data_reg_reg[12]),
        .O(\int_data_reg_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__3_i_1
       (.I0(Q[19]),
        .I1(int_data_reg_reg[19]),
        .O(\int_data_reg_reg[19]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__3_i_2
       (.I0(Q[18]),
        .I1(int_data_reg_reg[18]),
        .O(\int_data_reg_reg[19]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__3_i_3
       (.I0(Q[17]),
        .I1(int_data_reg_reg[17]),
        .O(\int_data_reg_reg[19]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__3_i_4
       (.I0(Q[16]),
        .I1(int_data_reg_reg[16]),
        .O(\int_data_reg_reg[19]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__4_i_1
       (.I0(Q[23]),
        .I1(int_data_reg_reg[23]),
        .O(\int_data_reg_reg[23]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__4_i_2
       (.I0(Q[22]),
        .I1(int_data_reg_reg[22]),
        .O(\int_data_reg_reg[23]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__4_i_3
       (.I0(Q[21]),
        .I1(int_data_reg_reg[21]),
        .O(\int_data_reg_reg[23]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__4_i_4
       (.I0(Q[20]),
        .I1(int_data_reg_reg[20]),
        .O(\int_data_reg_reg[23]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__5_i_1
       (.I0(Q[27]),
        .I1(int_data_reg_reg[27]),
        .O(\int_data_reg_reg[27]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__5_i_2
       (.I0(Q[26]),
        .I1(int_data_reg_reg[26]),
        .O(\int_data_reg_reg[27]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__5_i_3
       (.I0(Q[25]),
        .I1(int_data_reg_reg[25]),
        .O(\int_data_reg_reg[27]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__5_i_4
       (.I0(Q[24]),
        .I1(int_data_reg_reg[24]),
        .O(\int_data_reg_reg[27]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__6_i_1
       (.I0(Q[31]),
        .I1(int_data_reg_reg[31]),
        .O(\int_data_reg_reg[31]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__6_i_2
       (.I0(Q[30]),
        .I1(int_data_reg_reg[30]),
        .O(\int_data_reg_reg[31]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__6_i_3
       (.I0(Q[29]),
        .I1(int_data_reg_reg[29]),
        .O(\int_data_reg_reg[31]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__6_i_4
       (.I0(Q[28]),
        .I1(int_data_reg_reg[28]),
        .O(\int_data_reg_reg[31]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__7_i_1
       (.I0(Q[35]),
        .I1(int_data_reg_reg[35]),
        .O(\int_data_reg_reg[35]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__7_i_2
       (.I0(Q[34]),
        .I1(int_data_reg_reg[34]),
        .O(\int_data_reg_reg[35]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__7_i_3
       (.I0(Q[33]),
        .I1(int_data_reg_reg[33]),
        .O(\int_data_reg_reg[35]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__7_i_4
       (.I0(Q[32]),
        .I1(int_data_reg_reg[32]),
        .O(\int_data_reg_reg[35]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__8_i_1
       (.I0(Q[39]),
        .I1(int_data_reg_reg[39]),
        .O(\int_data_reg_reg[39]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__8_i_2
       (.I0(Q[38]),
        .I1(int_data_reg_reg[38]),
        .O(\int_data_reg_reg[39]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__8_i_3
       (.I0(Q[37]),
        .I1(int_data_reg_reg[37]),
        .O(\int_data_reg_reg[39]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__8_i_4
       (.I0(Q[36]),
        .I1(int_data_reg_reg[36]),
        .O(\int_data_reg_reg[39]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__9_i_1
       (.I0(Q[43]),
        .I1(int_data_reg_reg[43]),
        .O(\int_data_reg_reg[43]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__9_i_2
       (.I0(Q[42]),
        .I1(int_data_reg_reg[42]),
        .O(\int_data_reg_reg[43]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__9_i_3
       (.I0(Q[41]),
        .I1(int_data_reg_reg[41]),
        .O(\int_data_reg_reg[43]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__9_i_4
       (.I0(Q[40]),
        .I1(int_data_reg_reg[40]),
        .O(\int_data_reg_reg[43]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_1__1
       (.I0(Q[3]),
        .I1(int_data_reg_reg[3]),
        .O(\int_data_reg_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_2__1
       (.I0(Q[2]),
        .I1(int_data_reg_reg[2]),
        .O(\int_data_reg_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_3__1
       (.I0(Q[1]),
        .I1(int_data_reg_reg[1]),
        .O(\int_data_reg_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_4__1
       (.I0(Q[0]),
        .I1(int_data_reg_reg[0]),
        .O(\int_data_reg_reg[3]_0 [0]));
endmodule

(* ORIG_REF_NAME = "gen_reg" *) 
module system_SPGD_SYS_0_gen_reg_0
   (S,
    Q,
    \int_data_reg_reg[63]_0 ,
    \int_data_reg_reg[63]_1 ,
    \int_data_reg_reg[63]_2 ,
    \int_data_reg_reg[63]_3 ,
    \int_data_reg_reg[43]_0 ,
    \int_data_reg_reg[39]_0 ,
    \int_data_reg_reg[35]_0 ,
    \int_data_reg_reg[31]_0 ,
    \int_data_reg_reg[27]_0 ,
    \int_data_reg_reg[23]_0 ,
    \int_data_reg_reg[19]_0 ,
    \int_data_reg_reg[15]_0 ,
    \int_data_reg_reg[11]_0 ,
    \int_data_reg_reg[7]_0 ,
    \int_data_reg_reg[3]_0 ,
    \int_data_reg_reg[63]_4 ,
    int_data_reg_reg,
    \int_data_reg_reg[0]_0 ,
    int_DELTA_U_WRT,
    p0,
    ADC_CLK);
  output [2:0]S;
  output [46:0]Q;
  output [3:0]\int_data_reg_reg[63]_0 ;
  output [3:0]\int_data_reg_reg[63]_1 ;
  output [3:0]\int_data_reg_reg[63]_2 ;
  output [3:0]\int_data_reg_reg[63]_3 ;
  output [3:0]\int_data_reg_reg[43]_0 ;
  output [3:0]\int_data_reg_reg[39]_0 ;
  output [3:0]\int_data_reg_reg[35]_0 ;
  output [3:0]\int_data_reg_reg[31]_0 ;
  output [3:0]\int_data_reg_reg[27]_0 ;
  output [3:0]\int_data_reg_reg[23]_0 ;
  output [3:0]\int_data_reg_reg[19]_0 ;
  output [3:0]\int_data_reg_reg[15]_0 ;
  output [3:0]\int_data_reg_reg[11]_0 ;
  output [3:0]\int_data_reg_reg[7]_0 ;
  output [3:0]\int_data_reg_reg[3]_0 ;
  output [0:0]\int_data_reg_reg[63]_4 ;
  input [63:0]int_data_reg_reg;
  input \int_data_reg_reg[0]_0 ;
  input int_DELTA_U_WRT;
  input [46:0]p0;
  input ADC_CLK;

  wire ADC_CLK;
  wire [46:0]Q;
  wire [2:0]S;
  wire int_DELTA_U_WRT;
  wire [63:0]int_data_reg_reg;
  wire \int_data_reg_reg[0]_0 ;
  wire [3:0]\int_data_reg_reg[11]_0 ;
  wire [3:0]\int_data_reg_reg[15]_0 ;
  wire [3:0]\int_data_reg_reg[19]_0 ;
  wire [3:0]\int_data_reg_reg[23]_0 ;
  wire [3:0]\int_data_reg_reg[27]_0 ;
  wire [3:0]\int_data_reg_reg[31]_0 ;
  wire [3:0]\int_data_reg_reg[35]_0 ;
  wire [3:0]\int_data_reg_reg[39]_0 ;
  wire [3:0]\int_data_reg_reg[3]_0 ;
  wire [3:0]\int_data_reg_reg[43]_0 ;
  wire [3:0]\int_data_reg_reg[63]_0 ;
  wire [3:0]\int_data_reg_reg[63]_1 ;
  wire [3:0]\int_data_reg_reg[63]_2 ;
  wire [3:0]\int_data_reg_reg[63]_3 ;
  wire [0:0]\int_data_reg_reg[63]_4 ;
  wire [3:0]\int_data_reg_reg[7]_0 ;
  wire [46:0]p0;

  FDRE \int_data_reg_reg[0] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[0]),
        .Q(Q[0]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[10] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[10]),
        .Q(Q[10]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[11] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[11]),
        .Q(Q[11]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[12] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[12]),
        .Q(Q[12]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[13] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[13]),
        .Q(Q[13]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[14] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[14]),
        .Q(Q[14]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[15] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[15]),
        .Q(Q[15]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[16] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[16]),
        .Q(Q[16]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[17] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[17]),
        .Q(Q[17]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[18] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[18]),
        .Q(Q[18]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[19] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[19]),
        .Q(Q[19]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[1] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[1]),
        .Q(Q[1]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[20] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[20]),
        .Q(Q[20]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[21] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[21]),
        .Q(Q[21]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[22] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[22]),
        .Q(Q[22]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[23] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[23]),
        .Q(Q[23]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[24] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[24]),
        .Q(Q[24]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[25] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[25]),
        .Q(Q[25]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[26] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[26]),
        .Q(Q[26]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[27] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[27]),
        .Q(Q[27]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[28] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[28]),
        .Q(Q[28]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[29] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[29]),
        .Q(Q[29]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[2] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[2]),
        .Q(Q[2]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[30] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[30]),
        .Q(Q[30]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[31] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[31]),
        .Q(Q[31]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[32] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[32]),
        .Q(Q[32]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[33] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[33]),
        .Q(Q[33]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[34] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[34]),
        .Q(Q[34]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[35] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[35]),
        .Q(Q[35]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[36] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[36]),
        .Q(Q[36]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[37] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[37]),
        .Q(Q[37]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[38] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[38]),
        .Q(Q[38]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[39] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[39]),
        .Q(Q[39]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[3] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[3]),
        .Q(Q[3]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[40] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[40]),
        .Q(Q[40]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[41] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[41]),
        .Q(Q[41]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[42] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[42]),
        .Q(Q[42]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[43] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[43]),
        .Q(Q[43]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[44] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[44]),
        .Q(Q[44]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[45] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[45]),
        .Q(Q[45]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[4] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[4]),
        .Q(Q[4]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[5] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[5]),
        .Q(Q[5]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[63] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[46]),
        .Q(Q[46]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[6] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[6]),
        .Q(Q[6]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[7] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[7]),
        .Q(Q[7]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[8] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[8]),
        .Q(Q[8]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[9] 
       (.C(ADC_CLK),
        .CE(int_DELTA_U_WRT),
        .D(p0[9]),
        .Q(Q[9]),
        .R(\int_data_reg_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_1__3
       (.I0(Q[7]),
        .I1(int_data_reg_reg[7]),
        .O(\int_data_reg_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_2__3
       (.I0(Q[6]),
        .I1(int_data_reg_reg[6]),
        .O(\int_data_reg_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_3__3
       (.I0(Q[5]),
        .I1(int_data_reg_reg[5]),
        .O(\int_data_reg_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__0_i_4__3
       (.I0(Q[4]),
        .I1(int_data_reg_reg[4]),
        .O(\int_data_reg_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__10_i_1__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[47]),
        .O(\int_data_reg_reg[63]_3 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__10_i_2__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[46]),
        .O(\int_data_reg_reg[63]_3 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__10_i_3__1
       (.I0(Q[45]),
        .I1(int_data_reg_reg[45]),
        .O(\int_data_reg_reg[63]_3 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__10_i_4__1
       (.I0(Q[44]),
        .I1(int_data_reg_reg[44]),
        .O(\int_data_reg_reg[63]_3 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__11_i_1__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[51]),
        .O(\int_data_reg_reg[63]_2 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__11_i_2__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[50]),
        .O(\int_data_reg_reg[63]_2 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__11_i_3__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[49]),
        .O(\int_data_reg_reg[63]_2 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__11_i_4__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[48]),
        .O(\int_data_reg_reg[63]_2 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__12_i_1__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[55]),
        .O(\int_data_reg_reg[63]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__12_i_2__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[54]),
        .O(\int_data_reg_reg[63]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__12_i_3__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[53]),
        .O(\int_data_reg_reg[63]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__12_i_4__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[52]),
        .O(\int_data_reg_reg[63]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__13_i_1__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[59]),
        .O(\int_data_reg_reg[63]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__13_i_2__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[58]),
        .O(\int_data_reg_reg[63]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__13_i_3__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[57]),
        .O(\int_data_reg_reg[63]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__13_i_4__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[56]),
        .O(\int_data_reg_reg[63]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__14_i_1__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[63]),
        .O(\int_data_reg_reg[63]_4 ));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__14_i_2__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[62]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__14_i_3__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[61]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__14_i_4__1
       (.I0(Q[46]),
        .I1(int_data_reg_reg[60]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_1__3
       (.I0(Q[11]),
        .I1(int_data_reg_reg[11]),
        .O(\int_data_reg_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_2__1
       (.I0(Q[10]),
        .I1(int_data_reg_reg[10]),
        .O(\int_data_reg_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_3__3
       (.I0(Q[9]),
        .I1(int_data_reg_reg[9]),
        .O(\int_data_reg_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__1_i_4__3
       (.I0(Q[8]),
        .I1(int_data_reg_reg[8]),
        .O(\int_data_reg_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__2_i_1__1
       (.I0(Q[15]),
        .I1(int_data_reg_reg[15]),
        .O(\int_data_reg_reg[15]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__2_i_2__1
       (.I0(Q[14]),
        .I1(int_data_reg_reg[14]),
        .O(\int_data_reg_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__2_i_3__1
       (.I0(Q[13]),
        .I1(int_data_reg_reg[13]),
        .O(\int_data_reg_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__2_i_4__1
       (.I0(Q[12]),
        .I1(int_data_reg_reg[12]),
        .O(\int_data_reg_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__3_i_1__1
       (.I0(Q[19]),
        .I1(int_data_reg_reg[19]),
        .O(\int_data_reg_reg[19]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__3_i_2__1
       (.I0(Q[18]),
        .I1(int_data_reg_reg[18]),
        .O(\int_data_reg_reg[19]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__3_i_3__1
       (.I0(Q[17]),
        .I1(int_data_reg_reg[17]),
        .O(\int_data_reg_reg[19]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__3_i_4__1
       (.I0(Q[16]),
        .I1(int_data_reg_reg[16]),
        .O(\int_data_reg_reg[19]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__4_i_1__1
       (.I0(Q[23]),
        .I1(int_data_reg_reg[23]),
        .O(\int_data_reg_reg[23]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__4_i_2__1
       (.I0(Q[22]),
        .I1(int_data_reg_reg[22]),
        .O(\int_data_reg_reg[23]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__4_i_3__1
       (.I0(Q[21]),
        .I1(int_data_reg_reg[21]),
        .O(\int_data_reg_reg[23]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__4_i_4__1
       (.I0(Q[20]),
        .I1(int_data_reg_reg[20]),
        .O(\int_data_reg_reg[23]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__5_i_1__1
       (.I0(Q[27]),
        .I1(int_data_reg_reg[27]),
        .O(\int_data_reg_reg[27]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__5_i_2__1
       (.I0(Q[26]),
        .I1(int_data_reg_reg[26]),
        .O(\int_data_reg_reg[27]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__5_i_3__1
       (.I0(Q[25]),
        .I1(int_data_reg_reg[25]),
        .O(\int_data_reg_reg[27]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__5_i_4__1
       (.I0(Q[24]),
        .I1(int_data_reg_reg[24]),
        .O(\int_data_reg_reg[27]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__6_i_1__1
       (.I0(Q[31]),
        .I1(int_data_reg_reg[31]),
        .O(\int_data_reg_reg[31]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__6_i_2__1
       (.I0(Q[30]),
        .I1(int_data_reg_reg[30]),
        .O(\int_data_reg_reg[31]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__6_i_3__1
       (.I0(Q[29]),
        .I1(int_data_reg_reg[29]),
        .O(\int_data_reg_reg[31]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__6_i_4__1
       (.I0(Q[28]),
        .I1(int_data_reg_reg[28]),
        .O(\int_data_reg_reg[31]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__7_i_1__1
       (.I0(Q[35]),
        .I1(int_data_reg_reg[35]),
        .O(\int_data_reg_reg[35]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__7_i_2__1
       (.I0(Q[34]),
        .I1(int_data_reg_reg[34]),
        .O(\int_data_reg_reg[35]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__7_i_3__1
       (.I0(Q[33]),
        .I1(int_data_reg_reg[33]),
        .O(\int_data_reg_reg[35]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__7_i_4__1
       (.I0(Q[32]),
        .I1(int_data_reg_reg[32]),
        .O(\int_data_reg_reg[35]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__8_i_1__1
       (.I0(Q[39]),
        .I1(int_data_reg_reg[39]),
        .O(\int_data_reg_reg[39]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__8_i_2__1
       (.I0(Q[38]),
        .I1(int_data_reg_reg[38]),
        .O(\int_data_reg_reg[39]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__8_i_3__1
       (.I0(Q[37]),
        .I1(int_data_reg_reg[37]),
        .O(\int_data_reg_reg[39]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__8_i_4__1
       (.I0(Q[36]),
        .I1(int_data_reg_reg[36]),
        .O(\int_data_reg_reg[39]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__9_i_1__1
       (.I0(Q[43]),
        .I1(int_data_reg_reg[43]),
        .O(\int_data_reg_reg[43]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__9_i_2__1
       (.I0(Q[42]),
        .I1(int_data_reg_reg[42]),
        .O(\int_data_reg_reg[43]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__9_i_3__1
       (.I0(Q[41]),
        .I1(int_data_reg_reg[41]),
        .O(\int_data_reg_reg[43]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__9_i_4__1
       (.I0(Q[40]),
        .I1(int_data_reg_reg[40]),
        .O(\int_data_reg_reg[43]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_1__3
       (.I0(Q[3]),
        .I1(int_data_reg_reg[3]),
        .O(\int_data_reg_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_2__3
       (.I0(Q[2]),
        .I1(int_data_reg_reg[2]),
        .O(\int_data_reg_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_3__3
       (.I0(Q[1]),
        .I1(int_data_reg_reg[1]),
        .O(\int_data_reg_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry_i_4__3
       (.I0(Q[0]),
        .I1(int_data_reg_reg[0]),
        .O(\int_data_reg_reg[3]_0 [0]));
endmodule

(* ORIG_REF_NAME = "gen_reg" *) 
module system_SPGD_SYS_0_gen_reg_1
   (Q,
    \int_data_reg_reg[61]_0 ,
    E,
    ADC_IN,
    ADC_CLK);
  output [61:0]Q;
  input \int_data_reg_reg[61]_0 ;
  input [0:0]E;
  input [61:0]ADC_IN;
  input ADC_CLK;

  wire ADC_CLK;
  wire [61:0]ADC_IN;
  wire [0:0]E;
  wire [61:0]Q;
  wire \int_data_reg_reg[61]_0 ;

  FDRE \int_data_reg_reg[0] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[0]),
        .Q(Q[0]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[10] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[10]),
        .Q(Q[10]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[11] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[11]),
        .Q(Q[11]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[12] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[12]),
        .Q(Q[12]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[13] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[13]),
        .Q(Q[13]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[14] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[14]),
        .Q(Q[14]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[15] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[15]),
        .Q(Q[15]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[16] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[16]),
        .Q(Q[16]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[17] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[17]),
        .Q(Q[17]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[18] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[18]),
        .Q(Q[18]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[19] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[19]),
        .Q(Q[19]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[1] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[1]),
        .Q(Q[1]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[20] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[20]),
        .Q(Q[20]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[21] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[21]),
        .Q(Q[21]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[22] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[22]),
        .Q(Q[22]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[23] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[23]),
        .Q(Q[23]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[24] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[24]),
        .Q(Q[24]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[25] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[25]),
        .Q(Q[25]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[26] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[26]),
        .Q(Q[26]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[27] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[27]),
        .Q(Q[27]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[28] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[28]),
        .Q(Q[28]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[29] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[29]),
        .Q(Q[29]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[2] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[2]),
        .Q(Q[2]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[30] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[30]),
        .Q(Q[30]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[31] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[31]),
        .Q(Q[31]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[32] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[32]),
        .Q(Q[32]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[33] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[33]),
        .Q(Q[33]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[34] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[34]),
        .Q(Q[34]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[35] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[35]),
        .Q(Q[35]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[36] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[36]),
        .Q(Q[36]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[37] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[37]),
        .Q(Q[37]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[38] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[38]),
        .Q(Q[38]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[39] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[39]),
        .Q(Q[39]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[3] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[3]),
        .Q(Q[3]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[40] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[40]),
        .Q(Q[40]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[41] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[41]),
        .Q(Q[41]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[42] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[42]),
        .Q(Q[42]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[43] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[43]),
        .Q(Q[43]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[44] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[44]),
        .Q(Q[44]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[45] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[45]),
        .Q(Q[45]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[46] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[46]),
        .Q(Q[46]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[47] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[47]),
        .Q(Q[47]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[48] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[48]),
        .Q(Q[48]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[49] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[49]),
        .Q(Q[49]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[4] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[4]),
        .Q(Q[4]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[50] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[50]),
        .Q(Q[50]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[51] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[51]),
        .Q(Q[51]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[52] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[52]),
        .Q(Q[52]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[53] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[53]),
        .Q(Q[53]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[54] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[54]),
        .Q(Q[54]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[55] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[55]),
        .Q(Q[55]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[56] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[56]),
        .Q(Q[56]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[57] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[57]),
        .Q(Q[57]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[58] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[58]),
        .Q(Q[58]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[59] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[59]),
        .Q(Q[59]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[5] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[5]),
        .Q(Q[5]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[60] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[60]),
        .Q(Q[60]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[61] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[61]),
        .Q(Q[61]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[6] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[6]),
        .Q(Q[6]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[7] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[7]),
        .Q(Q[7]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[8] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[8]),
        .Q(Q[8]),
        .R(\int_data_reg_reg[61]_0 ));
  FDRE \int_data_reg_reg[9] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[9]),
        .Q(Q[9]),
        .R(\int_data_reg_reg[61]_0 ));
endmodule

(* ORIG_REF_NAME = "gen_reg" *) 
module system_SPGD_SYS_0_gen_reg_2
   (S,
    Q,
    \int_data_reg_reg[7]_0 ,
    \int_data_reg_reg[11]_0 ,
    \int_data_reg_reg[15]_0 ,
    \int_data_reg_reg[19]_0 ,
    \int_data_reg_reg[23]_0 ,
    \int_data_reg_reg[27]_0 ,
    \int_data_reg_reg[31]_0 ,
    \int_data_reg_reg[35]_0 ,
    \int_data_reg_reg[39]_0 ,
    \int_data_reg_reg[43]_0 ,
    \int_data_reg_reg[47]_0 ,
    \int_data_reg_reg[51]_0 ,
    \int_data_reg_reg[55]_0 ,
    \int_data_reg_reg[59]_0 ,
    \int_data_reg_reg[61]_0 ,
    p0__0,
    \int_data_reg_reg[0]_0 ,
    E,
    ADC_IN,
    ADC_CLK);
  output [3:0]S;
  output [60:0]Q;
  output [3:0]\int_data_reg_reg[7]_0 ;
  output [3:0]\int_data_reg_reg[11]_0 ;
  output [3:0]\int_data_reg_reg[15]_0 ;
  output [3:0]\int_data_reg_reg[19]_0 ;
  output [3:0]\int_data_reg_reg[23]_0 ;
  output [3:0]\int_data_reg_reg[27]_0 ;
  output [3:0]\int_data_reg_reg[31]_0 ;
  output [3:0]\int_data_reg_reg[35]_0 ;
  output [3:0]\int_data_reg_reg[39]_0 ;
  output [3:0]\int_data_reg_reg[43]_0 ;
  output [3:0]\int_data_reg_reg[47]_0 ;
  output [3:0]\int_data_reg_reg[51]_0 ;
  output [3:0]\int_data_reg_reg[55]_0 ;
  output [3:0]\int_data_reg_reg[59]_0 ;
  output [1:0]\int_data_reg_reg[61]_0 ;
  input [61:0]p0__0;
  input \int_data_reg_reg[0]_0 ;
  input [0:0]E;
  input [61:0]ADC_IN;
  input ADC_CLK;

  wire ADC_CLK;
  wire [61:0]ADC_IN;
  wire [0:0]E;
  wire [60:0]Q;
  wire [3:0]S;
  wire \int_data_reg_reg[0]_0 ;
  wire [3:0]\int_data_reg_reg[11]_0 ;
  wire [3:0]\int_data_reg_reg[15]_0 ;
  wire [3:0]\int_data_reg_reg[19]_0 ;
  wire [3:0]\int_data_reg_reg[23]_0 ;
  wire [3:0]\int_data_reg_reg[27]_0 ;
  wire [3:0]\int_data_reg_reg[31]_0 ;
  wire [3:0]\int_data_reg_reg[35]_0 ;
  wire [3:0]\int_data_reg_reg[39]_0 ;
  wire [3:0]\int_data_reg_reg[43]_0 ;
  wire [3:0]\int_data_reg_reg[47]_0 ;
  wire [3:0]\int_data_reg_reg[51]_0 ;
  wire [3:0]\int_data_reg_reg[55]_0 ;
  wire [3:0]\int_data_reg_reg[59]_0 ;
  wire [1:0]\int_data_reg_reg[61]_0 ;
  wire [3:0]\int_data_reg_reg[7]_0 ;
  wire \int_data_reg_reg_n_0_[61] ;
  wire [61:0]p0__0;

  FDRE \int_data_reg_reg[0] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[0]),
        .Q(Q[0]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[10] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[10]),
        .Q(Q[10]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[11] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[11]),
        .Q(Q[11]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[12] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[12]),
        .Q(Q[12]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[13] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[13]),
        .Q(Q[13]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[14] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[14]),
        .Q(Q[14]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[15] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[15]),
        .Q(Q[15]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[16] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[16]),
        .Q(Q[16]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[17] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[17]),
        .Q(Q[17]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[18] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[18]),
        .Q(Q[18]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[19] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[19]),
        .Q(Q[19]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[1] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[1]),
        .Q(Q[1]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[20] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[20]),
        .Q(Q[20]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[21] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[21]),
        .Q(Q[21]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[22] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[22]),
        .Q(Q[22]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[23] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[23]),
        .Q(Q[23]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[24] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[24]),
        .Q(Q[24]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[25] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[25]),
        .Q(Q[25]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[26] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[26]),
        .Q(Q[26]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[27] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[27]),
        .Q(Q[27]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[28] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[28]),
        .Q(Q[28]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[29] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[29]),
        .Q(Q[29]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[2] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[2]),
        .Q(Q[2]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[30] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[30]),
        .Q(Q[30]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[31] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[31]),
        .Q(Q[31]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[32] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[32]),
        .Q(Q[32]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[33] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[33]),
        .Q(Q[33]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[34] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[34]),
        .Q(Q[34]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[35] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[35]),
        .Q(Q[35]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[36] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[36]),
        .Q(Q[36]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[37] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[37]),
        .Q(Q[37]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[38] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[38]),
        .Q(Q[38]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[39] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[39]),
        .Q(Q[39]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[3] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[3]),
        .Q(Q[3]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[40] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[40]),
        .Q(Q[40]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[41] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[41]),
        .Q(Q[41]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[42] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[42]),
        .Q(Q[42]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[43] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[43]),
        .Q(Q[43]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[44] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[44]),
        .Q(Q[44]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[45] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[45]),
        .Q(Q[45]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[46] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[46]),
        .Q(Q[46]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[47] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[47]),
        .Q(Q[47]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[48] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[48]),
        .Q(Q[48]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[49] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[49]),
        .Q(Q[49]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[4] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[4]),
        .Q(Q[4]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[50] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[50]),
        .Q(Q[50]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[51] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[51]),
        .Q(Q[51]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[52] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[52]),
        .Q(Q[52]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[53] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[53]),
        .Q(Q[53]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[54] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[54]),
        .Q(Q[54]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[55] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[55]),
        .Q(Q[55]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[56] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[56]),
        .Q(Q[56]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[57] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[57]),
        .Q(Q[57]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[58] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[58]),
        .Q(Q[58]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[59] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[59]),
        .Q(Q[59]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[5] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[5]),
        .Q(Q[5]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[60] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[60]),
        .Q(Q[60]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[61] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[61]),
        .Q(\int_data_reg_reg_n_0_[61] ),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[6] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[6]),
        .Q(Q[6]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[7] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[7]),
        .Q(Q[7]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[8] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[8]),
        .Q(Q[8]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[9] 
       (.C(ADC_CLK),
        .CE(E),
        .D(ADC_IN[9]),
        .Q(Q[9]),
        .R(\int_data_reg_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_1__5
       (.I0(Q[7]),
        .I1(p0__0[7]),
        .O(\int_data_reg_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_2__5
       (.I0(Q[6]),
        .I1(p0__0[6]),
        .O(\int_data_reg_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_3__5
       (.I0(Q[5]),
        .I1(p0__0[5]),
        .O(\int_data_reg_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_4__5
       (.I0(Q[4]),
        .I1(p0__0[4]),
        .O(\int_data_reg_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__10_i_1__3
       (.I0(Q[47]),
        .I1(p0__0[47]),
        .O(\int_data_reg_reg[47]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__10_i_2__3
       (.I0(Q[46]),
        .I1(p0__0[46]),
        .O(\int_data_reg_reg[47]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__10_i_3__3
       (.I0(Q[45]),
        .I1(p0__0[45]),
        .O(\int_data_reg_reg[47]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__10_i_4__3
       (.I0(Q[44]),
        .I1(p0__0[44]),
        .O(\int_data_reg_reg[47]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__11_i_1__3
       (.I0(Q[51]),
        .I1(p0__0[51]),
        .O(\int_data_reg_reg[51]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__11_i_2__3
       (.I0(Q[50]),
        .I1(p0__0[50]),
        .O(\int_data_reg_reg[51]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__11_i_3__3
       (.I0(Q[49]),
        .I1(p0__0[49]),
        .O(\int_data_reg_reg[51]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__11_i_4__3
       (.I0(Q[48]),
        .I1(p0__0[48]),
        .O(\int_data_reg_reg[51]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__12_i_1__3
       (.I0(Q[55]),
        .I1(p0__0[55]),
        .O(\int_data_reg_reg[55]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__12_i_2__3
       (.I0(Q[54]),
        .I1(p0__0[54]),
        .O(\int_data_reg_reg[55]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__12_i_3__3
       (.I0(Q[53]),
        .I1(p0__0[53]),
        .O(\int_data_reg_reg[55]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__12_i_4__3
       (.I0(Q[52]),
        .I1(p0__0[52]),
        .O(\int_data_reg_reg[55]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__13_i_1__3
       (.I0(Q[59]),
        .I1(p0__0[59]),
        .O(\int_data_reg_reg[59]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__13_i_2__3
       (.I0(Q[58]),
        .I1(p0__0[58]),
        .O(\int_data_reg_reg[59]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__13_i_3__3
       (.I0(Q[57]),
        .I1(p0__0[57]),
        .O(\int_data_reg_reg[59]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__13_i_4__3
       (.I0(Q[56]),
        .I1(p0__0[56]),
        .O(\int_data_reg_reg[59]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__14_i_1__3
       (.I0(\int_data_reg_reg_n_0_[61] ),
        .I1(p0__0[61]),
        .O(\int_data_reg_reg[61]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__14_i_2__3
       (.I0(Q[60]),
        .I1(p0__0[60]),
        .O(\int_data_reg_reg[61]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_1__5
       (.I0(Q[11]),
        .I1(p0__0[11]),
        .O(\int_data_reg_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_2__3
       (.I0(Q[10]),
        .I1(p0__0[10]),
        .O(\int_data_reg_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_3__5
       (.I0(Q[9]),
        .I1(p0__0[9]),
        .O(\int_data_reg_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_4__5
       (.I0(Q[8]),
        .I1(p0__0[8]),
        .O(\int_data_reg_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_1__3
       (.I0(Q[15]),
        .I1(p0__0[15]),
        .O(\int_data_reg_reg[15]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_2__3
       (.I0(Q[14]),
        .I1(p0__0[14]),
        .O(\int_data_reg_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_3__3
       (.I0(Q[13]),
        .I1(p0__0[13]),
        .O(\int_data_reg_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_4__3
       (.I0(Q[12]),
        .I1(p0__0[12]),
        .O(\int_data_reg_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_1__3
       (.I0(Q[19]),
        .I1(p0__0[19]),
        .O(\int_data_reg_reg[19]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_2__3
       (.I0(Q[18]),
        .I1(p0__0[18]),
        .O(\int_data_reg_reg[19]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_3__3
       (.I0(Q[17]),
        .I1(p0__0[17]),
        .O(\int_data_reg_reg[19]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_4__3
       (.I0(Q[16]),
        .I1(p0__0[16]),
        .O(\int_data_reg_reg[19]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_1__3
       (.I0(Q[23]),
        .I1(p0__0[23]),
        .O(\int_data_reg_reg[23]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_2__3
       (.I0(Q[22]),
        .I1(p0__0[22]),
        .O(\int_data_reg_reg[23]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_3__3
       (.I0(Q[21]),
        .I1(p0__0[21]),
        .O(\int_data_reg_reg[23]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_4__3
       (.I0(Q[20]),
        .I1(p0__0[20]),
        .O(\int_data_reg_reg[23]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_1__3
       (.I0(Q[27]),
        .I1(p0__0[27]),
        .O(\int_data_reg_reg[27]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_2__3
       (.I0(Q[26]),
        .I1(p0__0[26]),
        .O(\int_data_reg_reg[27]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_3__3
       (.I0(Q[25]),
        .I1(p0__0[25]),
        .O(\int_data_reg_reg[27]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_4__3
       (.I0(Q[24]),
        .I1(p0__0[24]),
        .O(\int_data_reg_reg[27]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_1__3
       (.I0(Q[31]),
        .I1(p0__0[31]),
        .O(\int_data_reg_reg[31]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_2__3
       (.I0(Q[30]),
        .I1(p0__0[30]),
        .O(\int_data_reg_reg[31]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_3__3
       (.I0(Q[29]),
        .I1(p0__0[29]),
        .O(\int_data_reg_reg[31]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_4__3
       (.I0(Q[28]),
        .I1(p0__0[28]),
        .O(\int_data_reg_reg[31]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__7_i_1__3
       (.I0(Q[35]),
        .I1(p0__0[35]),
        .O(\int_data_reg_reg[35]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__7_i_2__3
       (.I0(Q[34]),
        .I1(p0__0[34]),
        .O(\int_data_reg_reg[35]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__7_i_3__3
       (.I0(Q[33]),
        .I1(p0__0[33]),
        .O(\int_data_reg_reg[35]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__7_i_4__3
       (.I0(Q[32]),
        .I1(p0__0[32]),
        .O(\int_data_reg_reg[35]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__8_i_1__3
       (.I0(Q[39]),
        .I1(p0__0[39]),
        .O(\int_data_reg_reg[39]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__8_i_2__3
       (.I0(Q[38]),
        .I1(p0__0[38]),
        .O(\int_data_reg_reg[39]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__8_i_3__3
       (.I0(Q[37]),
        .I1(p0__0[37]),
        .O(\int_data_reg_reg[39]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__8_i_4__3
       (.I0(Q[36]),
        .I1(p0__0[36]),
        .O(\int_data_reg_reg[39]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__9_i_1__3
       (.I0(Q[43]),
        .I1(p0__0[43]),
        .O(\int_data_reg_reg[43]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__9_i_2__3
       (.I0(Q[42]),
        .I1(p0__0[42]),
        .O(\int_data_reg_reg[43]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__9_i_3__3
       (.I0(Q[41]),
        .I1(p0__0[41]),
        .O(\int_data_reg_reg[43]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__9_i_4__3
       (.I0(Q[40]),
        .I1(p0__0[40]),
        .O(\int_data_reg_reg[43]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_1__5
       (.I0(Q[3]),
        .I1(p0__0[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_2__5
       (.I0(Q[2]),
        .I1(p0__0[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_3__5
       (.I0(Q[1]),
        .I1(p0__0[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_4__5
       (.I0(Q[0]),
        .I1(p0__0[0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "gen_reg" *) 
module system_SPGD_SYS_0_gen_reg_3
   (int_data_reg_reg,
    S,
    \int_data_reg_reg[59]_0 ,
    \int_data_reg_reg[55]_0 ,
    \int_data_reg_reg[51]_0 ,
    \int_data_reg_reg[47]_0 ,
    \int_data_reg_reg[43]_0 ,
    \int_data_reg_reg[39]_0 ,
    \int_data_reg_reg[35]_0 ,
    \int_data_reg_reg[31]_0 ,
    \int_data_reg_reg[27]_0 ,
    \int_data_reg_reg[23]_0 ,
    \int_data_reg_reg[19]_0 ,
    \int_data_reg_reg[15]_0 ,
    \int_data_reg_reg[11]_0 ,
    \int_data_reg_reg[7]_0 ,
    \int_data_reg_reg[3]_0 ,
    \int_data_reg_reg[63]_0 ,
    \int_data_reg_reg[63]_1 ,
    \int_data_reg_reg[0]_0 ,
    int_U_WRT,
    \int_data_reg_reg[3]_1 ,
    ADC_CLK,
    \int_data_reg_reg[7]_1 ,
    \int_data_reg_reg[11]_1 ,
    \int_data_reg_reg[15]_1 ,
    \int_data_reg_reg[19]_1 ,
    \int_data_reg_reg[23]_1 ,
    \int_data_reg_reg[27]_1 ,
    \int_data_reg_reg[31]_1 ,
    \int_data_reg_reg[35]_1 ,
    \int_data_reg_reg[39]_1 ,
    \int_data_reg_reg[43]_1 ,
    \int_data_reg_reg[47]_1 ,
    \int_data_reg_reg[51]_1 ,
    \int_data_reg_reg[55]_1 ,
    \int_data_reg_reg[59]_1 ,
    \int_data_reg_reg[63]_2 ,
    Q,
    O);
  output [63:0]int_data_reg_reg;
  output [2:0]S;
  output [3:0]\int_data_reg_reg[59]_0 ;
  output [3:0]\int_data_reg_reg[55]_0 ;
  output [3:0]\int_data_reg_reg[51]_0 ;
  output [3:0]\int_data_reg_reg[47]_0 ;
  output [3:0]\int_data_reg_reg[43]_0 ;
  output [3:0]\int_data_reg_reg[39]_0 ;
  output [3:0]\int_data_reg_reg[35]_0 ;
  output [3:0]\int_data_reg_reg[31]_0 ;
  output [3:0]\int_data_reg_reg[27]_0 ;
  output [3:0]\int_data_reg_reg[23]_0 ;
  output [3:0]\int_data_reg_reg[19]_0 ;
  output [3:0]\int_data_reg_reg[15]_0 ;
  output [3:0]\int_data_reg_reg[11]_0 ;
  output [3:0]\int_data_reg_reg[7]_0 ;
  output [3:0]\int_data_reg_reg[3]_0 ;
  output [0:0]\int_data_reg_reg[63]_0 ;
  output [0:0]\int_data_reg_reg[63]_1 ;
  input \int_data_reg_reg[0]_0 ;
  input int_U_WRT;
  input [3:0]\int_data_reg_reg[3]_1 ;
  input ADC_CLK;
  input [3:0]\int_data_reg_reg[7]_1 ;
  input [3:0]\int_data_reg_reg[11]_1 ;
  input [3:0]\int_data_reg_reg[15]_1 ;
  input [3:0]\int_data_reg_reg[19]_1 ;
  input [3:0]\int_data_reg_reg[23]_1 ;
  input [3:0]\int_data_reg_reg[27]_1 ;
  input [3:0]\int_data_reg_reg[31]_1 ;
  input [3:0]\int_data_reg_reg[35]_1 ;
  input [3:0]\int_data_reg_reg[39]_1 ;
  input [3:0]\int_data_reg_reg[43]_1 ;
  input [3:0]\int_data_reg_reg[47]_1 ;
  input [3:0]\int_data_reg_reg[51]_1 ;
  input [3:0]\int_data_reg_reg[55]_1 ;
  input [3:0]\int_data_reg_reg[59]_1 ;
  input [3:0]\int_data_reg_reg[63]_2 ;
  input [46:0]Q;
  input [0:0]O;

  wire ADC_CLK;
  wire [0:0]O;
  wire [46:0]Q;
  wire [2:0]S;
  wire int_U_WRT;
  wire [63:0]int_data_reg_reg;
  wire \int_data_reg_reg[0]_0 ;
  wire [3:0]\int_data_reg_reg[11]_0 ;
  wire [3:0]\int_data_reg_reg[11]_1 ;
  wire [3:0]\int_data_reg_reg[15]_0 ;
  wire [3:0]\int_data_reg_reg[15]_1 ;
  wire [3:0]\int_data_reg_reg[19]_0 ;
  wire [3:0]\int_data_reg_reg[19]_1 ;
  wire [3:0]\int_data_reg_reg[23]_0 ;
  wire [3:0]\int_data_reg_reg[23]_1 ;
  wire [3:0]\int_data_reg_reg[27]_0 ;
  wire [3:0]\int_data_reg_reg[27]_1 ;
  wire [3:0]\int_data_reg_reg[31]_0 ;
  wire [3:0]\int_data_reg_reg[31]_1 ;
  wire [3:0]\int_data_reg_reg[35]_0 ;
  wire [3:0]\int_data_reg_reg[35]_1 ;
  wire [3:0]\int_data_reg_reg[39]_0 ;
  wire [3:0]\int_data_reg_reg[39]_1 ;
  wire [3:0]\int_data_reg_reg[3]_0 ;
  wire [3:0]\int_data_reg_reg[3]_1 ;
  wire [3:0]\int_data_reg_reg[43]_0 ;
  wire [3:0]\int_data_reg_reg[43]_1 ;
  wire [3:0]\int_data_reg_reg[47]_0 ;
  wire [3:0]\int_data_reg_reg[47]_1 ;
  wire [3:0]\int_data_reg_reg[51]_0 ;
  wire [3:0]\int_data_reg_reg[51]_1 ;
  wire [3:0]\int_data_reg_reg[55]_0 ;
  wire [3:0]\int_data_reg_reg[55]_1 ;
  wire [3:0]\int_data_reg_reg[59]_0 ;
  wire [3:0]\int_data_reg_reg[59]_1 ;
  wire [0:0]\int_data_reg_reg[63]_0 ;
  wire [0:0]\int_data_reg_reg[63]_1 ;
  wire [3:0]\int_data_reg_reg[63]_2 ;
  wire [3:0]\int_data_reg_reg[7]_0 ;
  wire [3:0]\int_data_reg_reg[7]_1 ;

  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[60]_i_2 
       (.I0(int_data_reg_reg[63]),
        .I1(O),
        .O(\int_data_reg_reg[63]_0 ));
  FDRE \int_data_reg_reg[0] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[3]_1 [0]),
        .Q(int_data_reg_reg[0]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[10] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[11]_1 [2]),
        .Q(int_data_reg_reg[10]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[11] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[11]_1 [3]),
        .Q(int_data_reg_reg[11]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[12] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[15]_1 [0]),
        .Q(int_data_reg_reg[12]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[13] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[15]_1 [1]),
        .Q(int_data_reg_reg[13]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[14] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[15]_1 [2]),
        .Q(int_data_reg_reg[14]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[15] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[15]_1 [3]),
        .Q(int_data_reg_reg[15]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[16] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[19]_1 [0]),
        .Q(int_data_reg_reg[16]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[17] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[19]_1 [1]),
        .Q(int_data_reg_reg[17]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[18] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[19]_1 [2]),
        .Q(int_data_reg_reg[18]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[19] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[19]_1 [3]),
        .Q(int_data_reg_reg[19]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[1] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[3]_1 [1]),
        .Q(int_data_reg_reg[1]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[20] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[23]_1 [0]),
        .Q(int_data_reg_reg[20]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[21] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[23]_1 [1]),
        .Q(int_data_reg_reg[21]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[22] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[23]_1 [2]),
        .Q(int_data_reg_reg[22]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[23] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[23]_1 [3]),
        .Q(int_data_reg_reg[23]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[24] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[27]_1 [0]),
        .Q(int_data_reg_reg[24]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[25] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[27]_1 [1]),
        .Q(int_data_reg_reg[25]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[26] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[27]_1 [2]),
        .Q(int_data_reg_reg[26]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[27] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[27]_1 [3]),
        .Q(int_data_reg_reg[27]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[28] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[31]_1 [0]),
        .Q(int_data_reg_reg[28]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[29] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[31]_1 [1]),
        .Q(int_data_reg_reg[29]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[2] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[3]_1 [2]),
        .Q(int_data_reg_reg[2]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[30] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[31]_1 [2]),
        .Q(int_data_reg_reg[30]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[31] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[31]_1 [3]),
        .Q(int_data_reg_reg[31]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[32] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[35]_1 [0]),
        .Q(int_data_reg_reg[32]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[33] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[35]_1 [1]),
        .Q(int_data_reg_reg[33]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[34] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[35]_1 [2]),
        .Q(int_data_reg_reg[34]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[35] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[35]_1 [3]),
        .Q(int_data_reg_reg[35]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[36] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[39]_1 [0]),
        .Q(int_data_reg_reg[36]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[37] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[39]_1 [1]),
        .Q(int_data_reg_reg[37]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[38] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[39]_1 [2]),
        .Q(int_data_reg_reg[38]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[39] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[39]_1 [3]),
        .Q(int_data_reg_reg[39]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[3] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[3]_1 [3]),
        .Q(int_data_reg_reg[3]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[40] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[43]_1 [0]),
        .Q(int_data_reg_reg[40]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[41] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[43]_1 [1]),
        .Q(int_data_reg_reg[41]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[42] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[43]_1 [2]),
        .Q(int_data_reg_reg[42]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[43] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[43]_1 [3]),
        .Q(int_data_reg_reg[43]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[44] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[47]_1 [0]),
        .Q(int_data_reg_reg[44]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[45] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[47]_1 [1]),
        .Q(int_data_reg_reg[45]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[46] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[47]_1 [2]),
        .Q(int_data_reg_reg[46]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[47] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[47]_1 [3]),
        .Q(int_data_reg_reg[47]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[48] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[51]_1 [0]),
        .Q(int_data_reg_reg[48]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[49] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[51]_1 [1]),
        .Q(int_data_reg_reg[49]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[4] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[7]_1 [0]),
        .Q(int_data_reg_reg[4]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[50] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[51]_1 [2]),
        .Q(int_data_reg_reg[50]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[51] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[51]_1 [3]),
        .Q(int_data_reg_reg[51]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[52] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[55]_1 [0]),
        .Q(int_data_reg_reg[52]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[53] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[55]_1 [1]),
        .Q(int_data_reg_reg[53]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[54] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[55]_1 [2]),
        .Q(int_data_reg_reg[54]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[55] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[55]_1 [3]),
        .Q(int_data_reg_reg[55]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[56] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[59]_1 [0]),
        .Q(int_data_reg_reg[56]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[57] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[59]_1 [1]),
        .Q(int_data_reg_reg[57]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[58] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[59]_1 [2]),
        .Q(int_data_reg_reg[58]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[59] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[59]_1 [3]),
        .Q(int_data_reg_reg[59]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[5] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[7]_1 [1]),
        .Q(int_data_reg_reg[5]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[60] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[63]_2 [0]),
        .Q(int_data_reg_reg[60]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[61] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[63]_2 [1]),
        .Q(int_data_reg_reg[61]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[62] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[63]_2 [2]),
        .Q(int_data_reg_reg[62]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[63] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[63]_2 [3]),
        .Q(int_data_reg_reg[63]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[6] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[7]_1 [2]),
        .Q(int_data_reg_reg[6]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[7] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[7]_1 [3]),
        .Q(int_data_reg_reg[7]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[8] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[11]_1 [0]),
        .Q(int_data_reg_reg[8]),
        .R(\int_data_reg_reg[0]_0 ));
  FDRE \int_data_reg_reg[9] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[11]_1 [1]),
        .Q(int_data_reg_reg[9]),
        .R(\int_data_reg_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_1__2
       (.I0(int_data_reg_reg[7]),
        .I1(Q[7]),
        .O(\int_data_reg_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_2__2
       (.I0(int_data_reg_reg[6]),
        .I1(Q[6]),
        .O(\int_data_reg_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_3__2
       (.I0(int_data_reg_reg[5]),
        .I1(Q[5]),
        .O(\int_data_reg_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_4__2
       (.I0(int_data_reg_reg[4]),
        .I1(Q[4]),
        .O(\int_data_reg_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__10_i_1__0
       (.I0(int_data_reg_reg[47]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[47]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__10_i_2__0
       (.I0(int_data_reg_reg[46]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[47]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__10_i_3__0
       (.I0(int_data_reg_reg[45]),
        .I1(Q[45]),
        .O(\int_data_reg_reg[47]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__10_i_4__0
       (.I0(int_data_reg_reg[44]),
        .I1(Q[44]),
        .O(\int_data_reg_reg[47]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__11_i_1__0
       (.I0(int_data_reg_reg[51]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[51]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__11_i_2__0
       (.I0(int_data_reg_reg[50]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[51]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__11_i_3__0
       (.I0(int_data_reg_reg[49]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[51]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__11_i_4__0
       (.I0(int_data_reg_reg[48]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[51]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__12_i_1__0
       (.I0(int_data_reg_reg[55]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[55]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__12_i_2__0
       (.I0(int_data_reg_reg[54]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[55]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__12_i_3__0
       (.I0(int_data_reg_reg[53]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[55]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__12_i_4__0
       (.I0(int_data_reg_reg[52]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[55]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__13_i_1__0
       (.I0(int_data_reg_reg[59]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[59]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__13_i_2__0
       (.I0(int_data_reg_reg[58]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[59]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__13_i_3__0
       (.I0(int_data_reg_reg[57]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[59]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__13_i_4__0
       (.I0(int_data_reg_reg[56]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[59]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__14_i_1__0
       (.I0(int_data_reg_reg[63]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[63]_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__14_i_2__0
       (.I0(int_data_reg_reg[62]),
        .I1(Q[46]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__14_i_3__0
       (.I0(int_data_reg_reg[61]),
        .I1(Q[46]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__14_i_4__0
       (.I0(int_data_reg_reg[60]),
        .I1(Q[46]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_1__2
       (.I0(int_data_reg_reg[11]),
        .I1(Q[11]),
        .O(\int_data_reg_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_2__0
       (.I0(int_data_reg_reg[10]),
        .I1(Q[10]),
        .O(\int_data_reg_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_3__2
       (.I0(int_data_reg_reg[9]),
        .I1(Q[9]),
        .O(\int_data_reg_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_4__2
       (.I0(int_data_reg_reg[8]),
        .I1(Q[8]),
        .O(\int_data_reg_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_1__0
       (.I0(int_data_reg_reg[15]),
        .I1(Q[15]),
        .O(\int_data_reg_reg[15]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_2__0
       (.I0(int_data_reg_reg[14]),
        .I1(Q[14]),
        .O(\int_data_reg_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_3__0
       (.I0(int_data_reg_reg[13]),
        .I1(Q[13]),
        .O(\int_data_reg_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_4__0
       (.I0(int_data_reg_reg[12]),
        .I1(Q[12]),
        .O(\int_data_reg_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_1__0
       (.I0(int_data_reg_reg[19]),
        .I1(Q[19]),
        .O(\int_data_reg_reg[19]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_2__0
       (.I0(int_data_reg_reg[18]),
        .I1(Q[18]),
        .O(\int_data_reg_reg[19]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_3__0
       (.I0(int_data_reg_reg[17]),
        .I1(Q[17]),
        .O(\int_data_reg_reg[19]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_4__0
       (.I0(int_data_reg_reg[16]),
        .I1(Q[16]),
        .O(\int_data_reg_reg[19]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_1__0
       (.I0(int_data_reg_reg[23]),
        .I1(Q[23]),
        .O(\int_data_reg_reg[23]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_2__0
       (.I0(int_data_reg_reg[22]),
        .I1(Q[22]),
        .O(\int_data_reg_reg[23]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_3__0
       (.I0(int_data_reg_reg[21]),
        .I1(Q[21]),
        .O(\int_data_reg_reg[23]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_4__0
       (.I0(int_data_reg_reg[20]),
        .I1(Q[20]),
        .O(\int_data_reg_reg[23]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_1__0
       (.I0(int_data_reg_reg[27]),
        .I1(Q[27]),
        .O(\int_data_reg_reg[27]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_2__0
       (.I0(int_data_reg_reg[26]),
        .I1(Q[26]),
        .O(\int_data_reg_reg[27]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_3__0
       (.I0(int_data_reg_reg[25]),
        .I1(Q[25]),
        .O(\int_data_reg_reg[27]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_4__0
       (.I0(int_data_reg_reg[24]),
        .I1(Q[24]),
        .O(\int_data_reg_reg[27]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_1__0
       (.I0(int_data_reg_reg[31]),
        .I1(Q[31]),
        .O(\int_data_reg_reg[31]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_2__0
       (.I0(int_data_reg_reg[30]),
        .I1(Q[30]),
        .O(\int_data_reg_reg[31]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_3__0
       (.I0(int_data_reg_reg[29]),
        .I1(Q[29]),
        .O(\int_data_reg_reg[31]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_4__0
       (.I0(int_data_reg_reg[28]),
        .I1(Q[28]),
        .O(\int_data_reg_reg[31]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__7_i_1__0
       (.I0(int_data_reg_reg[35]),
        .I1(Q[35]),
        .O(\int_data_reg_reg[35]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__7_i_2__0
       (.I0(int_data_reg_reg[34]),
        .I1(Q[34]),
        .O(\int_data_reg_reg[35]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__7_i_3__0
       (.I0(int_data_reg_reg[33]),
        .I1(Q[33]),
        .O(\int_data_reg_reg[35]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__7_i_4__0
       (.I0(int_data_reg_reg[32]),
        .I1(Q[32]),
        .O(\int_data_reg_reg[35]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__8_i_1__0
       (.I0(int_data_reg_reg[39]),
        .I1(Q[39]),
        .O(\int_data_reg_reg[39]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__8_i_2__0
       (.I0(int_data_reg_reg[38]),
        .I1(Q[38]),
        .O(\int_data_reg_reg[39]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__8_i_3__0
       (.I0(int_data_reg_reg[37]),
        .I1(Q[37]),
        .O(\int_data_reg_reg[39]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__8_i_4__0
       (.I0(int_data_reg_reg[36]),
        .I1(Q[36]),
        .O(\int_data_reg_reg[39]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__9_i_1__0
       (.I0(int_data_reg_reg[43]),
        .I1(Q[43]),
        .O(\int_data_reg_reg[43]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__9_i_2__0
       (.I0(int_data_reg_reg[42]),
        .I1(Q[42]),
        .O(\int_data_reg_reg[43]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__9_i_3__0
       (.I0(int_data_reg_reg[41]),
        .I1(Q[41]),
        .O(\int_data_reg_reg[43]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__9_i_4__0
       (.I0(int_data_reg_reg[40]),
        .I1(Q[40]),
        .O(\int_data_reg_reg[43]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_1__2
       (.I0(int_data_reg_reg[3]),
        .I1(Q[3]),
        .O(\int_data_reg_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_2__2
       (.I0(int_data_reg_reg[2]),
        .I1(Q[2]),
        .O(\int_data_reg_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_3__2
       (.I0(int_data_reg_reg[1]),
        .I1(Q[1]),
        .O(\int_data_reg_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_4__2
       (.I0(int_data_reg_reg[0]),
        .I1(Q[0]),
        .O(\int_data_reg_reg[3]_0 [0]));
endmodule

(* ORIG_REF_NAME = "gen_reg" *) 
module system_SPGD_SYS_0_gen_reg_7
   (int_data_reg_reg,
    S,
    \int_data_reg_reg[59]_0 ,
    \int_data_reg_reg[55]_0 ,
    \int_data_reg_reg[51]_0 ,
    \int_data_reg_reg[47]_0 ,
    \int_data_reg_reg[43]_0 ,
    \int_data_reg_reg[39]_0 ,
    \int_data_reg_reg[35]_0 ,
    \int_data_reg_reg[31]_0 ,
    \int_data_reg_reg[27]_0 ,
    \int_data_reg_reg[23]_0 ,
    \int_data_reg_reg[19]_0 ,
    \int_data_reg_reg[15]_0 ,
    \int_data_reg_reg[11]_0 ,
    \int_data_reg_reg[7]_0 ,
    \int_data_reg_reg[3]_0 ,
    \int_data_reg_reg[63]_0 ,
    \int_data_reg_reg[63]_1 ,
    \int_data_reg_reg[63]_2 ,
    int_U_WRT,
    \int_data_reg_reg[3]_1 ,
    ADC_CLK,
    \int_data_reg_reg[7]_1 ,
    \int_data_reg_reg[11]_1 ,
    \int_data_reg_reg[15]_1 ,
    \int_data_reg_reg[19]_1 ,
    \int_data_reg_reg[23]_1 ,
    \int_data_reg_reg[27]_1 ,
    \int_data_reg_reg[31]_1 ,
    \int_data_reg_reg[35]_1 ,
    \int_data_reg_reg[39]_1 ,
    \int_data_reg_reg[43]_1 ,
    \int_data_reg_reg[47]_1 ,
    \int_data_reg_reg[51]_1 ,
    \int_data_reg_reg[55]_1 ,
    \int_data_reg_reg[59]_1 ,
    \int_data_reg_reg[63]_3 ,
    Q,
    O);
  output [63:0]int_data_reg_reg;
  output [2:0]S;
  output [3:0]\int_data_reg_reg[59]_0 ;
  output [3:0]\int_data_reg_reg[55]_0 ;
  output [3:0]\int_data_reg_reg[51]_0 ;
  output [3:0]\int_data_reg_reg[47]_0 ;
  output [3:0]\int_data_reg_reg[43]_0 ;
  output [3:0]\int_data_reg_reg[39]_0 ;
  output [3:0]\int_data_reg_reg[35]_0 ;
  output [3:0]\int_data_reg_reg[31]_0 ;
  output [3:0]\int_data_reg_reg[27]_0 ;
  output [3:0]\int_data_reg_reg[23]_0 ;
  output [3:0]\int_data_reg_reg[19]_0 ;
  output [3:0]\int_data_reg_reg[15]_0 ;
  output [3:0]\int_data_reg_reg[11]_0 ;
  output [3:0]\int_data_reg_reg[7]_0 ;
  output [3:0]\int_data_reg_reg[3]_0 ;
  output [0:0]\int_data_reg_reg[63]_0 ;
  output [0:0]\int_data_reg_reg[63]_1 ;
  input \int_data_reg_reg[63]_2 ;
  input int_U_WRT;
  input [3:0]\int_data_reg_reg[3]_1 ;
  input ADC_CLK;
  input [3:0]\int_data_reg_reg[7]_1 ;
  input [3:0]\int_data_reg_reg[11]_1 ;
  input [3:0]\int_data_reg_reg[15]_1 ;
  input [3:0]\int_data_reg_reg[19]_1 ;
  input [3:0]\int_data_reg_reg[23]_1 ;
  input [3:0]\int_data_reg_reg[27]_1 ;
  input [3:0]\int_data_reg_reg[31]_1 ;
  input [3:0]\int_data_reg_reg[35]_1 ;
  input [3:0]\int_data_reg_reg[39]_1 ;
  input [3:0]\int_data_reg_reg[43]_1 ;
  input [3:0]\int_data_reg_reg[47]_1 ;
  input [3:0]\int_data_reg_reg[51]_1 ;
  input [3:0]\int_data_reg_reg[55]_1 ;
  input [3:0]\int_data_reg_reg[59]_1 ;
  input [3:0]\int_data_reg_reg[63]_3 ;
  input [46:0]Q;
  input [0:0]O;

  wire ADC_CLK;
  wire [0:0]O;
  wire [46:0]Q;
  wire [2:0]S;
  wire int_U_WRT;
  wire [63:0]int_data_reg_reg;
  wire [3:0]\int_data_reg_reg[11]_0 ;
  wire [3:0]\int_data_reg_reg[11]_1 ;
  wire [3:0]\int_data_reg_reg[15]_0 ;
  wire [3:0]\int_data_reg_reg[15]_1 ;
  wire [3:0]\int_data_reg_reg[19]_0 ;
  wire [3:0]\int_data_reg_reg[19]_1 ;
  wire [3:0]\int_data_reg_reg[23]_0 ;
  wire [3:0]\int_data_reg_reg[23]_1 ;
  wire [3:0]\int_data_reg_reg[27]_0 ;
  wire [3:0]\int_data_reg_reg[27]_1 ;
  wire [3:0]\int_data_reg_reg[31]_0 ;
  wire [3:0]\int_data_reg_reg[31]_1 ;
  wire [3:0]\int_data_reg_reg[35]_0 ;
  wire [3:0]\int_data_reg_reg[35]_1 ;
  wire [3:0]\int_data_reg_reg[39]_0 ;
  wire [3:0]\int_data_reg_reg[39]_1 ;
  wire [3:0]\int_data_reg_reg[3]_0 ;
  wire [3:0]\int_data_reg_reg[3]_1 ;
  wire [3:0]\int_data_reg_reg[43]_0 ;
  wire [3:0]\int_data_reg_reg[43]_1 ;
  wire [3:0]\int_data_reg_reg[47]_0 ;
  wire [3:0]\int_data_reg_reg[47]_1 ;
  wire [3:0]\int_data_reg_reg[51]_0 ;
  wire [3:0]\int_data_reg_reg[51]_1 ;
  wire [3:0]\int_data_reg_reg[55]_0 ;
  wire [3:0]\int_data_reg_reg[55]_1 ;
  wire [3:0]\int_data_reg_reg[59]_0 ;
  wire [3:0]\int_data_reg_reg[59]_1 ;
  wire [0:0]\int_data_reg_reg[63]_0 ;
  wire [0:0]\int_data_reg_reg[63]_1 ;
  wire \int_data_reg_reg[63]_2 ;
  wire [3:0]\int_data_reg_reg[63]_3 ;
  wire [3:0]\int_data_reg_reg[7]_0 ;
  wire [3:0]\int_data_reg_reg[7]_1 ;

  LUT2 #(
    .INIT(4'h6)) 
    \int_data_reg[60]_i_2__0 
       (.I0(int_data_reg_reg[63]),
        .I1(O),
        .O(\int_data_reg_reg[63]_0 ));
  FDRE \int_data_reg_reg[0] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[3]_1 [0]),
        .Q(int_data_reg_reg[0]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[10] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[11]_1 [2]),
        .Q(int_data_reg_reg[10]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[11] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[11]_1 [3]),
        .Q(int_data_reg_reg[11]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[12] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[15]_1 [0]),
        .Q(int_data_reg_reg[12]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[13] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[15]_1 [1]),
        .Q(int_data_reg_reg[13]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[14] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[15]_1 [2]),
        .Q(int_data_reg_reg[14]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[15] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[15]_1 [3]),
        .Q(int_data_reg_reg[15]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[16] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[19]_1 [0]),
        .Q(int_data_reg_reg[16]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[17] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[19]_1 [1]),
        .Q(int_data_reg_reg[17]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[18] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[19]_1 [2]),
        .Q(int_data_reg_reg[18]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[19] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[19]_1 [3]),
        .Q(int_data_reg_reg[19]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[1] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[3]_1 [1]),
        .Q(int_data_reg_reg[1]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[20] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[23]_1 [0]),
        .Q(int_data_reg_reg[20]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[21] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[23]_1 [1]),
        .Q(int_data_reg_reg[21]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[22] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[23]_1 [2]),
        .Q(int_data_reg_reg[22]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[23] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[23]_1 [3]),
        .Q(int_data_reg_reg[23]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[24] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[27]_1 [0]),
        .Q(int_data_reg_reg[24]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[25] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[27]_1 [1]),
        .Q(int_data_reg_reg[25]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[26] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[27]_1 [2]),
        .Q(int_data_reg_reg[26]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[27] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[27]_1 [3]),
        .Q(int_data_reg_reg[27]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[28] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[31]_1 [0]),
        .Q(int_data_reg_reg[28]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[29] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[31]_1 [1]),
        .Q(int_data_reg_reg[29]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[2] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[3]_1 [2]),
        .Q(int_data_reg_reg[2]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[30] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[31]_1 [2]),
        .Q(int_data_reg_reg[30]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[31] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[31]_1 [3]),
        .Q(int_data_reg_reg[31]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[32] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[35]_1 [0]),
        .Q(int_data_reg_reg[32]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[33] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[35]_1 [1]),
        .Q(int_data_reg_reg[33]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[34] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[35]_1 [2]),
        .Q(int_data_reg_reg[34]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[35] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[35]_1 [3]),
        .Q(int_data_reg_reg[35]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[36] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[39]_1 [0]),
        .Q(int_data_reg_reg[36]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[37] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[39]_1 [1]),
        .Q(int_data_reg_reg[37]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[38] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[39]_1 [2]),
        .Q(int_data_reg_reg[38]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[39] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[39]_1 [3]),
        .Q(int_data_reg_reg[39]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[3] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[3]_1 [3]),
        .Q(int_data_reg_reg[3]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[40] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[43]_1 [0]),
        .Q(int_data_reg_reg[40]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[41] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[43]_1 [1]),
        .Q(int_data_reg_reg[41]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[42] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[43]_1 [2]),
        .Q(int_data_reg_reg[42]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[43] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[43]_1 [3]),
        .Q(int_data_reg_reg[43]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[44] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[47]_1 [0]),
        .Q(int_data_reg_reg[44]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[45] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[47]_1 [1]),
        .Q(int_data_reg_reg[45]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[46] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[47]_1 [2]),
        .Q(int_data_reg_reg[46]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[47] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[47]_1 [3]),
        .Q(int_data_reg_reg[47]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[48] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[51]_1 [0]),
        .Q(int_data_reg_reg[48]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[49] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[51]_1 [1]),
        .Q(int_data_reg_reg[49]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[4] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[7]_1 [0]),
        .Q(int_data_reg_reg[4]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[50] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[51]_1 [2]),
        .Q(int_data_reg_reg[50]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[51] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[51]_1 [3]),
        .Q(int_data_reg_reg[51]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[52] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[55]_1 [0]),
        .Q(int_data_reg_reg[52]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[53] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[55]_1 [1]),
        .Q(int_data_reg_reg[53]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[54] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[55]_1 [2]),
        .Q(int_data_reg_reg[54]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[55] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[55]_1 [3]),
        .Q(int_data_reg_reg[55]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[56] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[59]_1 [0]),
        .Q(int_data_reg_reg[56]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[57] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[59]_1 [1]),
        .Q(int_data_reg_reg[57]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[58] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[59]_1 [2]),
        .Q(int_data_reg_reg[58]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[59] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[59]_1 [3]),
        .Q(int_data_reg_reg[59]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[5] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[7]_1 [1]),
        .Q(int_data_reg_reg[5]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[60] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[63]_3 [0]),
        .Q(int_data_reg_reg[60]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[61] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[63]_3 [1]),
        .Q(int_data_reg_reg[61]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[62] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[63]_3 [2]),
        .Q(int_data_reg_reg[62]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[63] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[63]_3 [3]),
        .Q(int_data_reg_reg[63]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[6] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[7]_1 [2]),
        .Q(int_data_reg_reg[6]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[7] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[7]_1 [3]),
        .Q(int_data_reg_reg[7]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[8] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[11]_1 [0]),
        .Q(int_data_reg_reg[8]),
        .R(\int_data_reg_reg[63]_2 ));
  FDRE \int_data_reg_reg[9] 
       (.C(ADC_CLK),
        .CE(int_U_WRT),
        .D(\int_data_reg_reg[11]_1 [1]),
        .Q(int_data_reg_reg[9]),
        .R(\int_data_reg_reg[63]_2 ));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_1__4
       (.I0(int_data_reg_reg[7]),
        .I1(Q[7]),
        .O(\int_data_reg_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_2__4
       (.I0(int_data_reg_reg[6]),
        .I1(Q[6]),
        .O(\int_data_reg_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_3__4
       (.I0(int_data_reg_reg[5]),
        .I1(Q[5]),
        .O(\int_data_reg_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_4__4
       (.I0(int_data_reg_reg[4]),
        .I1(Q[4]),
        .O(\int_data_reg_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__10_i_1__2
       (.I0(int_data_reg_reg[47]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[47]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__10_i_2__2
       (.I0(int_data_reg_reg[46]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[47]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__10_i_3__2
       (.I0(int_data_reg_reg[45]),
        .I1(Q[45]),
        .O(\int_data_reg_reg[47]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__10_i_4__2
       (.I0(int_data_reg_reg[44]),
        .I1(Q[44]),
        .O(\int_data_reg_reg[47]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__11_i_1__2
       (.I0(int_data_reg_reg[51]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[51]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__11_i_2__2
       (.I0(int_data_reg_reg[50]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[51]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__11_i_3__2
       (.I0(int_data_reg_reg[49]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[51]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__11_i_4__2
       (.I0(int_data_reg_reg[48]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[51]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__12_i_1__2
       (.I0(int_data_reg_reg[55]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[55]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__12_i_2__2
       (.I0(int_data_reg_reg[54]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[55]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__12_i_3__2
       (.I0(int_data_reg_reg[53]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[55]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__12_i_4__2
       (.I0(int_data_reg_reg[52]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[55]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__13_i_1__2
       (.I0(int_data_reg_reg[59]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[59]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__13_i_2__2
       (.I0(int_data_reg_reg[58]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[59]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__13_i_3__2
       (.I0(int_data_reg_reg[57]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[59]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__13_i_4__2
       (.I0(int_data_reg_reg[56]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[59]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    s0_carry__14_i_1__2
       (.I0(int_data_reg_reg[63]),
        .I1(Q[46]),
        .O(\int_data_reg_reg[63]_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__14_i_2__2
       (.I0(int_data_reg_reg[62]),
        .I1(Q[46]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__14_i_3__2
       (.I0(int_data_reg_reg[61]),
        .I1(Q[46]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__14_i_4__2
       (.I0(int_data_reg_reg[60]),
        .I1(Q[46]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_1__4
       (.I0(int_data_reg_reg[11]),
        .I1(Q[11]),
        .O(\int_data_reg_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_2__2
       (.I0(int_data_reg_reg[10]),
        .I1(Q[10]),
        .O(\int_data_reg_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_3__4
       (.I0(int_data_reg_reg[9]),
        .I1(Q[9]),
        .O(\int_data_reg_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_4__4
       (.I0(int_data_reg_reg[8]),
        .I1(Q[8]),
        .O(\int_data_reg_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_1__2
       (.I0(int_data_reg_reg[15]),
        .I1(Q[15]),
        .O(\int_data_reg_reg[15]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_2__2
       (.I0(int_data_reg_reg[14]),
        .I1(Q[14]),
        .O(\int_data_reg_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_3__2
       (.I0(int_data_reg_reg[13]),
        .I1(Q[13]),
        .O(\int_data_reg_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_4__2
       (.I0(int_data_reg_reg[12]),
        .I1(Q[12]),
        .O(\int_data_reg_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_1__2
       (.I0(int_data_reg_reg[19]),
        .I1(Q[19]),
        .O(\int_data_reg_reg[19]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_2__2
       (.I0(int_data_reg_reg[18]),
        .I1(Q[18]),
        .O(\int_data_reg_reg[19]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_3__2
       (.I0(int_data_reg_reg[17]),
        .I1(Q[17]),
        .O(\int_data_reg_reg[19]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_4__2
       (.I0(int_data_reg_reg[16]),
        .I1(Q[16]),
        .O(\int_data_reg_reg[19]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_1__2
       (.I0(int_data_reg_reg[23]),
        .I1(Q[23]),
        .O(\int_data_reg_reg[23]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_2__2
       (.I0(int_data_reg_reg[22]),
        .I1(Q[22]),
        .O(\int_data_reg_reg[23]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_3__2
       (.I0(int_data_reg_reg[21]),
        .I1(Q[21]),
        .O(\int_data_reg_reg[23]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_4__2
       (.I0(int_data_reg_reg[20]),
        .I1(Q[20]),
        .O(\int_data_reg_reg[23]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_1__2
       (.I0(int_data_reg_reg[27]),
        .I1(Q[27]),
        .O(\int_data_reg_reg[27]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_2__2
       (.I0(int_data_reg_reg[26]),
        .I1(Q[26]),
        .O(\int_data_reg_reg[27]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_3__2
       (.I0(int_data_reg_reg[25]),
        .I1(Q[25]),
        .O(\int_data_reg_reg[27]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_4__2
       (.I0(int_data_reg_reg[24]),
        .I1(Q[24]),
        .O(\int_data_reg_reg[27]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_1__2
       (.I0(int_data_reg_reg[31]),
        .I1(Q[31]),
        .O(\int_data_reg_reg[31]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_2__2
       (.I0(int_data_reg_reg[30]),
        .I1(Q[30]),
        .O(\int_data_reg_reg[31]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_3__2
       (.I0(int_data_reg_reg[29]),
        .I1(Q[29]),
        .O(\int_data_reg_reg[31]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_4__2
       (.I0(int_data_reg_reg[28]),
        .I1(Q[28]),
        .O(\int_data_reg_reg[31]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__7_i_1__2
       (.I0(int_data_reg_reg[35]),
        .I1(Q[35]),
        .O(\int_data_reg_reg[35]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__7_i_2__2
       (.I0(int_data_reg_reg[34]),
        .I1(Q[34]),
        .O(\int_data_reg_reg[35]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__7_i_3__2
       (.I0(int_data_reg_reg[33]),
        .I1(Q[33]),
        .O(\int_data_reg_reg[35]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__7_i_4__2
       (.I0(int_data_reg_reg[32]),
        .I1(Q[32]),
        .O(\int_data_reg_reg[35]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__8_i_1__2
       (.I0(int_data_reg_reg[39]),
        .I1(Q[39]),
        .O(\int_data_reg_reg[39]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__8_i_2__2
       (.I0(int_data_reg_reg[38]),
        .I1(Q[38]),
        .O(\int_data_reg_reg[39]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__8_i_3__2
       (.I0(int_data_reg_reg[37]),
        .I1(Q[37]),
        .O(\int_data_reg_reg[39]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__8_i_4__2
       (.I0(int_data_reg_reg[36]),
        .I1(Q[36]),
        .O(\int_data_reg_reg[39]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__9_i_1__2
       (.I0(int_data_reg_reg[43]),
        .I1(Q[43]),
        .O(\int_data_reg_reg[43]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__9_i_2__2
       (.I0(int_data_reg_reg[42]),
        .I1(Q[42]),
        .O(\int_data_reg_reg[43]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__9_i_3__2
       (.I0(int_data_reg_reg[41]),
        .I1(Q[41]),
        .O(\int_data_reg_reg[43]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__9_i_4__2
       (.I0(int_data_reg_reg[40]),
        .I1(Q[40]),
        .O(\int_data_reg_reg[43]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_1__4
       (.I0(int_data_reg_reg[3]),
        .I1(Q[3]),
        .O(\int_data_reg_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_2__4
       (.I0(int_data_reg_reg[2]),
        .I1(Q[2]),
        .O(\int_data_reg_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_3__4
       (.I0(int_data_reg_reg[1]),
        .I1(Q[1]),
        .O(\int_data_reg_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_4__4
       (.I0(int_data_reg_reg[0]),
        .I1(Q[0]),
        .O(\int_data_reg_reg[3]_0 [0]));
endmodule

(* ORIG_REF_NAME = "gen_subber" *) 
module system_SPGD_SYS_0_gen_subber
   (p0,
    I7,
    S,
    p0__9,
    p0__9_0,
    p0__5,
    p0__5_0,
    p0__5_1,
    p0__5_2,
    p0__5_3,
    p0__0__0,
    p0__0__0_0,
    p0__8,
    p0__8_0,
    p0__4,
    p0__4_0,
    p0__0,
    p0__0_0);
  output [61:0]p0;
  input [60:0]I7;
  input [3:0]S;
  input [3:0]p0__9;
  input [3:0]p0__9_0;
  input [3:0]p0__5;
  input [3:0]p0__5_0;
  input [3:0]p0__5_1;
  input [3:0]p0__5_2;
  input [3:0]p0__5_3;
  input [3:0]p0__0__0;
  input [3:0]p0__0__0_0;
  input [3:0]p0__8;
  input [3:0]p0__8_0;
  input [3:0]p0__4;
  input [3:0]p0__4_0;
  input [3:0]p0__0;
  input [1:0]p0__0_0;

  wire [60:0]I7;
  wire [3:0]S;
  wire [61:0]p0;
  wire [3:0]p0__0;
  wire [1:0]p0__0_0;
  wire [3:0]p0__0__0;
  wire [3:0]p0__0__0_0;
  wire [3:0]p0__4;
  wire [3:0]p0__4_0;
  wire [3:0]p0__5;
  wire [3:0]p0__5_0;
  wire [3:0]p0__5_1;
  wire [3:0]p0__5_2;
  wire [3:0]p0__5_3;
  wire [3:0]p0__8;
  wire [3:0]p0__8_0;
  wire [3:0]p0__9;
  wire [3:0]p0__9_0;
  wire s0_carry__0_n_0;
  wire s0_carry__0_n_1;
  wire s0_carry__0_n_2;
  wire s0_carry__0_n_3;
  wire s0_carry__10_n_0;
  wire s0_carry__10_n_1;
  wire s0_carry__10_n_2;
  wire s0_carry__10_n_3;
  wire s0_carry__11_n_0;
  wire s0_carry__11_n_1;
  wire s0_carry__11_n_2;
  wire s0_carry__11_n_3;
  wire s0_carry__12_n_0;
  wire s0_carry__12_n_1;
  wire s0_carry__12_n_2;
  wire s0_carry__12_n_3;
  wire s0_carry__13_n_0;
  wire s0_carry__13_n_1;
  wire s0_carry__13_n_2;
  wire s0_carry__13_n_3;
  wire s0_carry__14_n_3;
  wire s0_carry__1_n_0;
  wire s0_carry__1_n_1;
  wire s0_carry__1_n_2;
  wire s0_carry__1_n_3;
  wire s0_carry__2_n_0;
  wire s0_carry__2_n_1;
  wire s0_carry__2_n_2;
  wire s0_carry__2_n_3;
  wire s0_carry__3_n_0;
  wire s0_carry__3_n_1;
  wire s0_carry__3_n_2;
  wire s0_carry__3_n_3;
  wire s0_carry__4_n_0;
  wire s0_carry__4_n_1;
  wire s0_carry__4_n_2;
  wire s0_carry__4_n_3;
  wire s0_carry__5_n_0;
  wire s0_carry__5_n_1;
  wire s0_carry__5_n_2;
  wire s0_carry__5_n_3;
  wire s0_carry__6_n_0;
  wire s0_carry__6_n_1;
  wire s0_carry__6_n_2;
  wire s0_carry__6_n_3;
  wire s0_carry__7_n_0;
  wire s0_carry__7_n_1;
  wire s0_carry__7_n_2;
  wire s0_carry__7_n_3;
  wire s0_carry__8_n_0;
  wire s0_carry__8_n_1;
  wire s0_carry__8_n_2;
  wire s0_carry__8_n_3;
  wire s0_carry__9_n_0;
  wire s0_carry__9_n_1;
  wire s0_carry__9_n_2;
  wire s0_carry__9_n_3;
  wire s0_carry_n_0;
  wire s0_carry_n_1;
  wire s0_carry_n_2;
  wire s0_carry_n_3;
  wire [3:1]NLW_s0_carry__14_CO_UNCONNECTED;
  wire [3:2]NLW_s0_carry__14_O_UNCONNECTED;

  CARRY4 s0_carry
       (.CI(1'b0),
        .CO({s0_carry_n_0,s0_carry_n_1,s0_carry_n_2,s0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(I7[3:0]),
        .O(p0[3:0]),
        .S(S));
  CARRY4 s0_carry__0
       (.CI(s0_carry_n_0),
        .CO({s0_carry__0_n_0,s0_carry__0_n_1,s0_carry__0_n_2,s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(I7[7:4]),
        .O(p0[7:4]),
        .S(p0__9));
  CARRY4 s0_carry__1
       (.CI(s0_carry__0_n_0),
        .CO({s0_carry__1_n_0,s0_carry__1_n_1,s0_carry__1_n_2,s0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(I7[11:8]),
        .O(p0[11:8]),
        .S(p0__9_0));
  CARRY4 s0_carry__10
       (.CI(s0_carry__9_n_0),
        .CO({s0_carry__10_n_0,s0_carry__10_n_1,s0_carry__10_n_2,s0_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI(I7[47:44]),
        .O(p0[47:44]),
        .S(p0__8_0));
  CARRY4 s0_carry__11
       (.CI(s0_carry__10_n_0),
        .CO({s0_carry__11_n_0,s0_carry__11_n_1,s0_carry__11_n_2,s0_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI(I7[51:48]),
        .O(p0[51:48]),
        .S(p0__4));
  CARRY4 s0_carry__12
       (.CI(s0_carry__11_n_0),
        .CO({s0_carry__12_n_0,s0_carry__12_n_1,s0_carry__12_n_2,s0_carry__12_n_3}),
        .CYINIT(1'b0),
        .DI(I7[55:52]),
        .O(p0[55:52]),
        .S(p0__4_0));
  CARRY4 s0_carry__13
       (.CI(s0_carry__12_n_0),
        .CO({s0_carry__13_n_0,s0_carry__13_n_1,s0_carry__13_n_2,s0_carry__13_n_3}),
        .CYINIT(1'b0),
        .DI(I7[59:56]),
        .O(p0[59:56]),
        .S(p0__0));
  CARRY4 s0_carry__14
       (.CI(s0_carry__13_n_0),
        .CO({NLW_s0_carry__14_CO_UNCONNECTED[3:1],s0_carry__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,I7[60]}),
        .O({NLW_s0_carry__14_O_UNCONNECTED[3:2],p0[61:60]}),
        .S({1'b0,1'b0,p0__0_0}));
  CARRY4 s0_carry__2
       (.CI(s0_carry__1_n_0),
        .CO({s0_carry__2_n_0,s0_carry__2_n_1,s0_carry__2_n_2,s0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(I7[15:12]),
        .O(p0[15:12]),
        .S(p0__5));
  CARRY4 s0_carry__3
       (.CI(s0_carry__2_n_0),
        .CO({s0_carry__3_n_0,s0_carry__3_n_1,s0_carry__3_n_2,s0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(I7[19:16]),
        .O(p0[19:16]),
        .S(p0__5_0));
  CARRY4 s0_carry__4
       (.CI(s0_carry__3_n_0),
        .CO({s0_carry__4_n_0,s0_carry__4_n_1,s0_carry__4_n_2,s0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(I7[23:20]),
        .O(p0[23:20]),
        .S(p0__5_1));
  CARRY4 s0_carry__5
       (.CI(s0_carry__4_n_0),
        .CO({s0_carry__5_n_0,s0_carry__5_n_1,s0_carry__5_n_2,s0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(I7[27:24]),
        .O(p0[27:24]),
        .S(p0__5_2));
  CARRY4 s0_carry__6
       (.CI(s0_carry__5_n_0),
        .CO({s0_carry__6_n_0,s0_carry__6_n_1,s0_carry__6_n_2,s0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(I7[31:28]),
        .O(p0[31:28]),
        .S(p0__5_3));
  CARRY4 s0_carry__7
       (.CI(s0_carry__6_n_0),
        .CO({s0_carry__7_n_0,s0_carry__7_n_1,s0_carry__7_n_2,s0_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI(I7[35:32]),
        .O(p0[35:32]),
        .S(p0__0__0));
  CARRY4 s0_carry__8
       (.CI(s0_carry__7_n_0),
        .CO({s0_carry__8_n_0,s0_carry__8_n_1,s0_carry__8_n_2,s0_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI(I7[39:36]),
        .O(p0[39:36]),
        .S(p0__0__0_0));
  CARRY4 s0_carry__9
       (.CI(s0_carry__8_n_0),
        .CO({s0_carry__9_n_0,s0_carry__9_n_1,s0_carry__9_n_2,s0_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI(I7[43:40]),
        .O(p0[43:40]),
        .S(p0__8));
endmodule

(* ORIG_REF_NAME = "gen_subber" *) 
module system_SPGD_SYS_0_gen_subber_4
   (s0,
    int_data_reg_reg,
    \DAC_A_OUT[3] ,
    \DAC_A_OUT[7] ,
    \DAC_A_OUT[11] ,
    \DAC_A_OUT[15] ,
    \DAC_A_OUT[19] ,
    \DAC_A_OUT[23] ,
    \DAC_A_OUT[27] ,
    \DAC_A_OUT[31] ,
    \DAC_A_OUT[35] ,
    \DAC_A_OUT[39] ,
    \DAC_A_OUT[43] ,
    \DAC_A_OUT[47] ,
    \DAC_A_OUT[51] ,
    \DAC_A_OUT[55] ,
    \DAC_A_OUT[59] ,
    S);
  output [63:0]s0;
  input [62:0]int_data_reg_reg;
  input [3:0]\DAC_A_OUT[3] ;
  input [3:0]\DAC_A_OUT[7] ;
  input [3:0]\DAC_A_OUT[11] ;
  input [3:0]\DAC_A_OUT[15] ;
  input [3:0]\DAC_A_OUT[19] ;
  input [3:0]\DAC_A_OUT[23] ;
  input [3:0]\DAC_A_OUT[27] ;
  input [3:0]\DAC_A_OUT[31] ;
  input [3:0]\DAC_A_OUT[35] ;
  input [3:0]\DAC_A_OUT[39] ;
  input [3:0]\DAC_A_OUT[43] ;
  input [3:0]\DAC_A_OUT[47] ;
  input [3:0]\DAC_A_OUT[51] ;
  input [3:0]\DAC_A_OUT[55] ;
  input [3:0]\DAC_A_OUT[59] ;
  input [3:0]S;

  wire [3:0]\DAC_A_OUT[11] ;
  wire [3:0]\DAC_A_OUT[15] ;
  wire [3:0]\DAC_A_OUT[19] ;
  wire [3:0]\DAC_A_OUT[23] ;
  wire [3:0]\DAC_A_OUT[27] ;
  wire [3:0]\DAC_A_OUT[31] ;
  wire [3:0]\DAC_A_OUT[35] ;
  wire [3:0]\DAC_A_OUT[39] ;
  wire [3:0]\DAC_A_OUT[3] ;
  wire [3:0]\DAC_A_OUT[43] ;
  wire [3:0]\DAC_A_OUT[47] ;
  wire [3:0]\DAC_A_OUT[51] ;
  wire [3:0]\DAC_A_OUT[55] ;
  wire [3:0]\DAC_A_OUT[59] ;
  wire [3:0]\DAC_A_OUT[7] ;
  wire [3:0]S;
  wire [62:0]int_data_reg_reg;
  wire [63:0]s0;
  wire s0_carry__0_n_0;
  wire s0_carry__0_n_1;
  wire s0_carry__0_n_2;
  wire s0_carry__0_n_3;
  wire s0_carry__10_n_0;
  wire s0_carry__10_n_1;
  wire s0_carry__10_n_2;
  wire s0_carry__10_n_3;
  wire s0_carry__11_n_0;
  wire s0_carry__11_n_1;
  wire s0_carry__11_n_2;
  wire s0_carry__11_n_3;
  wire s0_carry__12_n_0;
  wire s0_carry__12_n_1;
  wire s0_carry__12_n_2;
  wire s0_carry__12_n_3;
  wire s0_carry__13_n_0;
  wire s0_carry__13_n_1;
  wire s0_carry__13_n_2;
  wire s0_carry__13_n_3;
  wire s0_carry__14_n_1;
  wire s0_carry__14_n_2;
  wire s0_carry__14_n_3;
  wire s0_carry__1_n_0;
  wire s0_carry__1_n_1;
  wire s0_carry__1_n_2;
  wire s0_carry__1_n_3;
  wire s0_carry__2_n_0;
  wire s0_carry__2_n_1;
  wire s0_carry__2_n_2;
  wire s0_carry__2_n_3;
  wire s0_carry__3_n_0;
  wire s0_carry__3_n_1;
  wire s0_carry__3_n_2;
  wire s0_carry__3_n_3;
  wire s0_carry__4_n_0;
  wire s0_carry__4_n_1;
  wire s0_carry__4_n_2;
  wire s0_carry__4_n_3;
  wire s0_carry__5_n_0;
  wire s0_carry__5_n_1;
  wire s0_carry__5_n_2;
  wire s0_carry__5_n_3;
  wire s0_carry__6_n_0;
  wire s0_carry__6_n_1;
  wire s0_carry__6_n_2;
  wire s0_carry__6_n_3;
  wire s0_carry__7_n_0;
  wire s0_carry__7_n_1;
  wire s0_carry__7_n_2;
  wire s0_carry__7_n_3;
  wire s0_carry__8_n_0;
  wire s0_carry__8_n_1;
  wire s0_carry__8_n_2;
  wire s0_carry__8_n_3;
  wire s0_carry__9_n_0;
  wire s0_carry__9_n_1;
  wire s0_carry__9_n_2;
  wire s0_carry__9_n_3;
  wire s0_carry_n_0;
  wire s0_carry_n_1;
  wire s0_carry_n_2;
  wire s0_carry_n_3;
  wire [3:3]NLW_s0_carry__14_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry
       (.CI(1'b0),
        .CO({s0_carry_n_0,s0_carry_n_1,s0_carry_n_2,s0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(int_data_reg_reg[3:0]),
        .O(s0[3:0]),
        .S(\DAC_A_OUT[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__0
       (.CI(s0_carry_n_0),
        .CO({s0_carry__0_n_0,s0_carry__0_n_1,s0_carry__0_n_2,s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[7:4]),
        .O(s0[7:4]),
        .S(\DAC_A_OUT[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__1
       (.CI(s0_carry__0_n_0),
        .CO({s0_carry__1_n_0,s0_carry__1_n_1,s0_carry__1_n_2,s0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[11:8]),
        .O(s0[11:8]),
        .S(\DAC_A_OUT[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__10
       (.CI(s0_carry__9_n_0),
        .CO({s0_carry__10_n_0,s0_carry__10_n_1,s0_carry__10_n_2,s0_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[47:44]),
        .O(s0[47:44]),
        .S(\DAC_A_OUT[47] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__11
       (.CI(s0_carry__10_n_0),
        .CO({s0_carry__11_n_0,s0_carry__11_n_1,s0_carry__11_n_2,s0_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[51:48]),
        .O(s0[51:48]),
        .S(\DAC_A_OUT[51] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__12
       (.CI(s0_carry__11_n_0),
        .CO({s0_carry__12_n_0,s0_carry__12_n_1,s0_carry__12_n_2,s0_carry__12_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[55:52]),
        .O(s0[55:52]),
        .S(\DAC_A_OUT[55] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__13
       (.CI(s0_carry__12_n_0),
        .CO({s0_carry__13_n_0,s0_carry__13_n_1,s0_carry__13_n_2,s0_carry__13_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[59:56]),
        .O(s0[59:56]),
        .S(\DAC_A_OUT[59] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__14
       (.CI(s0_carry__13_n_0),
        .CO({NLW_s0_carry__14_CO_UNCONNECTED[3],s0_carry__14_n_1,s0_carry__14_n_2,s0_carry__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,int_data_reg_reg[62:60]}),
        .O(s0[63:60]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__2
       (.CI(s0_carry__1_n_0),
        .CO({s0_carry__2_n_0,s0_carry__2_n_1,s0_carry__2_n_2,s0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[15:12]),
        .O(s0[15:12]),
        .S(\DAC_A_OUT[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__3
       (.CI(s0_carry__2_n_0),
        .CO({s0_carry__3_n_0,s0_carry__3_n_1,s0_carry__3_n_2,s0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[19:16]),
        .O(s0[19:16]),
        .S(\DAC_A_OUT[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__4
       (.CI(s0_carry__3_n_0),
        .CO({s0_carry__4_n_0,s0_carry__4_n_1,s0_carry__4_n_2,s0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[23:20]),
        .O(s0[23:20]),
        .S(\DAC_A_OUT[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__5
       (.CI(s0_carry__4_n_0),
        .CO({s0_carry__5_n_0,s0_carry__5_n_1,s0_carry__5_n_2,s0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[27:24]),
        .O(s0[27:24]),
        .S(\DAC_A_OUT[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__6
       (.CI(s0_carry__5_n_0),
        .CO({s0_carry__6_n_0,s0_carry__6_n_1,s0_carry__6_n_2,s0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[31:28]),
        .O(s0[31:28]),
        .S(\DAC_A_OUT[31] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__7
       (.CI(s0_carry__6_n_0),
        .CO({s0_carry__7_n_0,s0_carry__7_n_1,s0_carry__7_n_2,s0_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[35:32]),
        .O(s0[35:32]),
        .S(\DAC_A_OUT[35] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__8
       (.CI(s0_carry__7_n_0),
        .CO({s0_carry__8_n_0,s0_carry__8_n_1,s0_carry__8_n_2,s0_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[39:36]),
        .O(s0[39:36]),
        .S(\DAC_A_OUT[39] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__9
       (.CI(s0_carry__8_n_0),
        .CO({s0_carry__9_n_0,s0_carry__9_n_1,s0_carry__9_n_2,s0_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[43:40]),
        .O(s0[43:40]),
        .S(\DAC_A_OUT[43] ));
endmodule

(* ORIG_REF_NAME = "gen_subber" *) 
module system_SPGD_SYS_0_gen_subber_8
   (\int_data_reg_reg[3] ,
    \int_data_reg_reg[7] ,
    \int_data_reg_reg[11] ,
    \int_data_reg_reg[15] ,
    \int_data_reg_reg[19] ,
    \int_data_reg_reg[23] ,
    \int_data_reg_reg[27] ,
    \int_data_reg_reg[31] ,
    \int_data_reg_reg[35] ,
    \int_data_reg_reg[39] ,
    \int_data_reg_reg[43] ,
    \int_data_reg_reg[47] ,
    \int_data_reg_reg[51] ,
    \int_data_reg_reg[55] ,
    \int_data_reg_reg[59] ,
    \int_data_reg_reg[62] ,
    int_data_reg_reg,
    \DAC_B_OUT[3] ,
    \DAC_B_OUT[7] ,
    \DAC_B_OUT[11] ,
    \DAC_B_OUT[15] ,
    \DAC_B_OUT[19] ,
    \DAC_B_OUT[23] ,
    \DAC_B_OUT[27] ,
    \DAC_B_OUT[31] ,
    \DAC_B_OUT[35] ,
    \DAC_B_OUT[39] ,
    \DAC_B_OUT[43] ,
    \DAC_B_OUT[47] ,
    \DAC_B_OUT[51] ,
    \DAC_B_OUT[55] ,
    \DAC_B_OUT[59] ,
    S);
  output [3:0]\int_data_reg_reg[3] ;
  output [3:0]\int_data_reg_reg[7] ;
  output [3:0]\int_data_reg_reg[11] ;
  output [3:0]\int_data_reg_reg[15] ;
  output [3:0]\int_data_reg_reg[19] ;
  output [3:0]\int_data_reg_reg[23] ;
  output [3:0]\int_data_reg_reg[27] ;
  output [3:0]\int_data_reg_reg[31] ;
  output [3:0]\int_data_reg_reg[35] ;
  output [3:0]\int_data_reg_reg[39] ;
  output [3:0]\int_data_reg_reg[43] ;
  output [3:0]\int_data_reg_reg[47] ;
  output [3:0]\int_data_reg_reg[51] ;
  output [3:0]\int_data_reg_reg[55] ;
  output [3:0]\int_data_reg_reg[59] ;
  output [3:0]\int_data_reg_reg[62] ;
  input [62:0]int_data_reg_reg;
  input [3:0]\DAC_B_OUT[3] ;
  input [3:0]\DAC_B_OUT[7] ;
  input [3:0]\DAC_B_OUT[11] ;
  input [3:0]\DAC_B_OUT[15] ;
  input [3:0]\DAC_B_OUT[19] ;
  input [3:0]\DAC_B_OUT[23] ;
  input [3:0]\DAC_B_OUT[27] ;
  input [3:0]\DAC_B_OUT[31] ;
  input [3:0]\DAC_B_OUT[35] ;
  input [3:0]\DAC_B_OUT[39] ;
  input [3:0]\DAC_B_OUT[43] ;
  input [3:0]\DAC_B_OUT[47] ;
  input [3:0]\DAC_B_OUT[51] ;
  input [3:0]\DAC_B_OUT[55] ;
  input [3:0]\DAC_B_OUT[59] ;
  input [3:0]S;

  wire [3:0]\DAC_B_OUT[11] ;
  wire [3:0]\DAC_B_OUT[15] ;
  wire [3:0]\DAC_B_OUT[19] ;
  wire [3:0]\DAC_B_OUT[23] ;
  wire [3:0]\DAC_B_OUT[27] ;
  wire [3:0]\DAC_B_OUT[31] ;
  wire [3:0]\DAC_B_OUT[35] ;
  wire [3:0]\DAC_B_OUT[39] ;
  wire [3:0]\DAC_B_OUT[3] ;
  wire [3:0]\DAC_B_OUT[43] ;
  wire [3:0]\DAC_B_OUT[47] ;
  wire [3:0]\DAC_B_OUT[51] ;
  wire [3:0]\DAC_B_OUT[55] ;
  wire [3:0]\DAC_B_OUT[59] ;
  wire [3:0]\DAC_B_OUT[7] ;
  wire [3:0]S;
  wire [62:0]int_data_reg_reg;
  wire [3:0]\int_data_reg_reg[11] ;
  wire [3:0]\int_data_reg_reg[15] ;
  wire [3:0]\int_data_reg_reg[19] ;
  wire [3:0]\int_data_reg_reg[23] ;
  wire [3:0]\int_data_reg_reg[27] ;
  wire [3:0]\int_data_reg_reg[31] ;
  wire [3:0]\int_data_reg_reg[35] ;
  wire [3:0]\int_data_reg_reg[39] ;
  wire [3:0]\int_data_reg_reg[3] ;
  wire [3:0]\int_data_reg_reg[43] ;
  wire [3:0]\int_data_reg_reg[47] ;
  wire [3:0]\int_data_reg_reg[51] ;
  wire [3:0]\int_data_reg_reg[55] ;
  wire [3:0]\int_data_reg_reg[59] ;
  wire [3:0]\int_data_reg_reg[62] ;
  wire [3:0]\int_data_reg_reg[7] ;
  wire s0_carry__0_n_0;
  wire s0_carry__0_n_1;
  wire s0_carry__0_n_2;
  wire s0_carry__0_n_3;
  wire s0_carry__10_n_0;
  wire s0_carry__10_n_1;
  wire s0_carry__10_n_2;
  wire s0_carry__10_n_3;
  wire s0_carry__11_n_0;
  wire s0_carry__11_n_1;
  wire s0_carry__11_n_2;
  wire s0_carry__11_n_3;
  wire s0_carry__12_n_0;
  wire s0_carry__12_n_1;
  wire s0_carry__12_n_2;
  wire s0_carry__12_n_3;
  wire s0_carry__13_n_0;
  wire s0_carry__13_n_1;
  wire s0_carry__13_n_2;
  wire s0_carry__13_n_3;
  wire s0_carry__14_n_1;
  wire s0_carry__14_n_2;
  wire s0_carry__14_n_3;
  wire s0_carry__1_n_0;
  wire s0_carry__1_n_1;
  wire s0_carry__1_n_2;
  wire s0_carry__1_n_3;
  wire s0_carry__2_n_0;
  wire s0_carry__2_n_1;
  wire s0_carry__2_n_2;
  wire s0_carry__2_n_3;
  wire s0_carry__3_n_0;
  wire s0_carry__3_n_1;
  wire s0_carry__3_n_2;
  wire s0_carry__3_n_3;
  wire s0_carry__4_n_0;
  wire s0_carry__4_n_1;
  wire s0_carry__4_n_2;
  wire s0_carry__4_n_3;
  wire s0_carry__5_n_0;
  wire s0_carry__5_n_1;
  wire s0_carry__5_n_2;
  wire s0_carry__5_n_3;
  wire s0_carry__6_n_0;
  wire s0_carry__6_n_1;
  wire s0_carry__6_n_2;
  wire s0_carry__6_n_3;
  wire s0_carry__7_n_0;
  wire s0_carry__7_n_1;
  wire s0_carry__7_n_2;
  wire s0_carry__7_n_3;
  wire s0_carry__8_n_0;
  wire s0_carry__8_n_1;
  wire s0_carry__8_n_2;
  wire s0_carry__8_n_3;
  wire s0_carry__9_n_0;
  wire s0_carry__9_n_1;
  wire s0_carry__9_n_2;
  wire s0_carry__9_n_3;
  wire s0_carry_n_0;
  wire s0_carry_n_1;
  wire s0_carry_n_2;
  wire s0_carry_n_3;
  wire [3:3]NLW_s0_carry__14_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry
       (.CI(1'b0),
        .CO({s0_carry_n_0,s0_carry_n_1,s0_carry_n_2,s0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(int_data_reg_reg[3:0]),
        .O(\int_data_reg_reg[3] ),
        .S(\DAC_B_OUT[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__0
       (.CI(s0_carry_n_0),
        .CO({s0_carry__0_n_0,s0_carry__0_n_1,s0_carry__0_n_2,s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[7:4]),
        .O(\int_data_reg_reg[7] ),
        .S(\DAC_B_OUT[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__1
       (.CI(s0_carry__0_n_0),
        .CO({s0_carry__1_n_0,s0_carry__1_n_1,s0_carry__1_n_2,s0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[11:8]),
        .O(\int_data_reg_reg[11] ),
        .S(\DAC_B_OUT[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__10
       (.CI(s0_carry__9_n_0),
        .CO({s0_carry__10_n_0,s0_carry__10_n_1,s0_carry__10_n_2,s0_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[47:44]),
        .O(\int_data_reg_reg[47] ),
        .S(\DAC_B_OUT[47] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__11
       (.CI(s0_carry__10_n_0),
        .CO({s0_carry__11_n_0,s0_carry__11_n_1,s0_carry__11_n_2,s0_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[51:48]),
        .O(\int_data_reg_reg[51] ),
        .S(\DAC_B_OUT[51] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__12
       (.CI(s0_carry__11_n_0),
        .CO({s0_carry__12_n_0,s0_carry__12_n_1,s0_carry__12_n_2,s0_carry__12_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[55:52]),
        .O(\int_data_reg_reg[55] ),
        .S(\DAC_B_OUT[55] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__13
       (.CI(s0_carry__12_n_0),
        .CO({s0_carry__13_n_0,s0_carry__13_n_1,s0_carry__13_n_2,s0_carry__13_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[59:56]),
        .O(\int_data_reg_reg[59] ),
        .S(\DAC_B_OUT[59] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__14
       (.CI(s0_carry__13_n_0),
        .CO({NLW_s0_carry__14_CO_UNCONNECTED[3],s0_carry__14_n_1,s0_carry__14_n_2,s0_carry__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,int_data_reg_reg[62:60]}),
        .O(\int_data_reg_reg[62] ),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__2
       (.CI(s0_carry__1_n_0),
        .CO({s0_carry__2_n_0,s0_carry__2_n_1,s0_carry__2_n_2,s0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[15:12]),
        .O(\int_data_reg_reg[15] ),
        .S(\DAC_B_OUT[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__3
       (.CI(s0_carry__2_n_0),
        .CO({s0_carry__3_n_0,s0_carry__3_n_1,s0_carry__3_n_2,s0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[19:16]),
        .O(\int_data_reg_reg[19] ),
        .S(\DAC_B_OUT[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__4
       (.CI(s0_carry__3_n_0),
        .CO({s0_carry__4_n_0,s0_carry__4_n_1,s0_carry__4_n_2,s0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[23:20]),
        .O(\int_data_reg_reg[23] ),
        .S(\DAC_B_OUT[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__5
       (.CI(s0_carry__4_n_0),
        .CO({s0_carry__5_n_0,s0_carry__5_n_1,s0_carry__5_n_2,s0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[27:24]),
        .O(\int_data_reg_reg[27] ),
        .S(\DAC_B_OUT[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__6
       (.CI(s0_carry__5_n_0),
        .CO({s0_carry__6_n_0,s0_carry__6_n_1,s0_carry__6_n_2,s0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[31:28]),
        .O(\int_data_reg_reg[31] ),
        .S(\DAC_B_OUT[31] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__7
       (.CI(s0_carry__6_n_0),
        .CO({s0_carry__7_n_0,s0_carry__7_n_1,s0_carry__7_n_2,s0_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[35:32]),
        .O(\int_data_reg_reg[35] ),
        .S(\DAC_B_OUT[35] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__8
       (.CI(s0_carry__7_n_0),
        .CO({s0_carry__8_n_0,s0_carry__8_n_1,s0_carry__8_n_2,s0_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[39:36]),
        .O(\int_data_reg_reg[39] ),
        .S(\DAC_B_OUT[39] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__9
       (.CI(s0_carry__8_n_0),
        .CO({s0_carry__9_n_0,s0_carry__9_n_1,s0_carry__9_n_2,s0_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI(int_data_reg_reg[43:40]),
        .O(\int_data_reg_reg[43] ),
        .S(\DAC_B_OUT[43] ));
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
