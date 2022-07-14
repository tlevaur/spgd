// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Jul  5 11:37:08 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/taylor/Documents/new_spgd/tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_ADC_fp_0/system_ADC_fp_0_sim_netlist.v
// Design      : system_ADC_fp_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_ADC_fp_0,ADC_fp,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ADC_fp,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module system_ADC_fp_0
   (ADC_CLK,
    ADC_SEL,
    ADC_EN,
    REG_RST,
    ADC_A,
    ADC_B,
    ADC_DONE,
    ADC_16Q48_OUT);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ADC_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ADC_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_ADC_REG_0_adc_clk, INSERT_VIP 0" *) input ADC_CLK;
  input ADC_SEL;
  input ADC_EN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 REG_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME REG_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input REG_RST;
  input [11:0]ADC_A;
  input [11:0]ADC_B;
  output ADC_DONE;
  output [63:0]ADC_16Q48_OUT;

  wire [63:0]\^ADC_16Q48_OUT ;
  wire [11:0]ADC_A;
  wire [11:0]ADC_B;
  wire ADC_CLK;
  wire ADC_DONE;
  wire ADC_EN;
  wire ADC_SEL;
  wire REG_RST;

  assign ADC_16Q48_OUT[63] = \^ADC_16Q48_OUT [63];
  assign ADC_16Q48_OUT[62] = \^ADC_16Q48_OUT [63];
  assign ADC_16Q48_OUT[61] = \^ADC_16Q48_OUT [63];
  assign ADC_16Q48_OUT[60] = \^ADC_16Q48_OUT [63];
  assign ADC_16Q48_OUT[59] = \^ADC_16Q48_OUT [63];
  assign ADC_16Q48_OUT[58] = \^ADC_16Q48_OUT [63];
  assign ADC_16Q48_OUT[57] = \^ADC_16Q48_OUT [63];
  assign ADC_16Q48_OUT[56] = \^ADC_16Q48_OUT [63];
  assign ADC_16Q48_OUT[55] = \^ADC_16Q48_OUT [63];
  assign ADC_16Q48_OUT[54] = \^ADC_16Q48_OUT [63];
  assign ADC_16Q48_OUT[53:0] = \^ADC_16Q48_OUT [53:0];
  system_ADC_fp_0_ADC_fp inst
       (.ADC_16Q48_OUT({\^ADC_16Q48_OUT [63],\^ADC_16Q48_OUT [53:0]}),
        .ADC_A(ADC_A),
        .ADC_B(ADC_B),
        .ADC_CLK(ADC_CLK),
        .ADC_EN(ADC_EN),
        .ADC_SEL(ADC_SEL),
        .F_O_reg(ADC_DONE),
        .REG_RST(REG_RST));
endmodule

(* ORIG_REF_NAME = "ADC_AVERAGE" *) 
module system_ADC_fp_0_ADC_AVERAGE
   (F_O_reg,
    out,
    E,
    ADC_CLK,
    ADC_EN,
    ADC_A,
    ADC_SEL,
    ADC_B);
  output F_O_reg;
  output [11:0]out;
  output [0:0]E;
  input ADC_CLK;
  input ADC_EN;
  input [11:0]ADC_A;
  input ADC_SEL;
  input [11:0]ADC_B;

  wire [11:0]ADC_A;
  wire [11:0]ADC_B;
  wire ADC_CLK;
  wire ADC_EN;
  wire ADC_SEL;
  wire COUNT0_n_0;
  wire [0:0]E;
  wire F_O_reg;
  wire \SUM[0]_i_2_n_0 ;
  wire \SUM[0]_i_3_n_0 ;
  wire \SUM[0]_i_4_n_0 ;
  wire \SUM[0]_i_5_n_0 ;
  wire \SUM[12]_i_2_n_0 ;
  wire \SUM[12]_i_3_n_0 ;
  wire \SUM[12]_i_4_n_0 ;
  wire \SUM[12]_i_5_n_0 ;
  wire \SUM[12]_i_6_n_0 ;
  wire \SUM[12]_i_7_n_0 ;
  wire \SUM[12]_i_8_n_0 ;
  wire \SUM[12]_i_9_n_0 ;
  wire \SUM[16]_i_2_n_0 ;
  wire \SUM[16]_i_3_n_0 ;
  wire \SUM[16]_i_4_n_0 ;
  wire \SUM[16]_i_5_n_0 ;
  wire \SUM[16]_i_6_n_0 ;
  wire \SUM[16]_i_7_n_0 ;
  wire \SUM[16]_i_8_n_0 ;
  wire \SUM[16]_i_9_n_0 ;
  wire \SUM[20]_i_3_n_0 ;
  wire \SUM[20]_i_4_n_0 ;
  wire \SUM[4]_i_2_n_0 ;
  wire \SUM[4]_i_3_n_0 ;
  wire \SUM[4]_i_4_n_0 ;
  wire \SUM[4]_i_5_n_0 ;
  wire \SUM[8]_i_2_n_0 ;
  wire \SUM[8]_i_3_n_0 ;
  wire \SUM[8]_i_4_n_0 ;
  wire \SUM[8]_i_5_n_0 ;
  wire \SUM[8]_i_6_n_0 ;
  wire \SUM_reg[0]_i_1_n_0 ;
  wire \SUM_reg[0]_i_1_n_1 ;
  wire \SUM_reg[0]_i_1_n_2 ;
  wire \SUM_reg[0]_i_1_n_3 ;
  wire \SUM_reg[0]_i_1_n_4 ;
  wire \SUM_reg[0]_i_1_n_5 ;
  wire \SUM_reg[0]_i_1_n_6 ;
  wire \SUM_reg[0]_i_1_n_7 ;
  wire \SUM_reg[12]_i_1_n_0 ;
  wire \SUM_reg[12]_i_1_n_1 ;
  wire \SUM_reg[12]_i_1_n_2 ;
  wire \SUM_reg[12]_i_1_n_3 ;
  wire \SUM_reg[12]_i_1_n_4 ;
  wire \SUM_reg[12]_i_1_n_5 ;
  wire \SUM_reg[12]_i_1_n_6 ;
  wire \SUM_reg[12]_i_1_n_7 ;
  wire \SUM_reg[16]_i_1_n_0 ;
  wire \SUM_reg[16]_i_1_n_1 ;
  wire \SUM_reg[16]_i_1_n_2 ;
  wire \SUM_reg[16]_i_1_n_3 ;
  wire \SUM_reg[16]_i_1_n_4 ;
  wire \SUM_reg[16]_i_1_n_5 ;
  wire \SUM_reg[16]_i_1_n_6 ;
  wire \SUM_reg[16]_i_1_n_7 ;
  wire \SUM_reg[20]_i_1_n_3 ;
  wire \SUM_reg[20]_i_1_n_6 ;
  wire \SUM_reg[20]_i_1_n_7 ;
  wire \SUM_reg[4]_i_1_n_0 ;
  wire \SUM_reg[4]_i_1_n_1 ;
  wire \SUM_reg[4]_i_1_n_2 ;
  wire \SUM_reg[4]_i_1_n_3 ;
  wire \SUM_reg[4]_i_1_n_4 ;
  wire \SUM_reg[4]_i_1_n_5 ;
  wire \SUM_reg[4]_i_1_n_6 ;
  wire \SUM_reg[4]_i_1_n_7 ;
  wire \SUM_reg[8]_i_1_n_0 ;
  wire \SUM_reg[8]_i_1_n_1 ;
  wire \SUM_reg[8]_i_1_n_2 ;
  wire \SUM_reg[8]_i_1_n_3 ;
  wire \SUM_reg[8]_i_1_n_4 ;
  wire \SUM_reg[8]_i_1_n_5 ;
  wire \SUM_reg[8]_i_1_n_6 ;
  wire \SUM_reg[8]_i_1_n_7 ;
  wire \SUM_reg_n_0_[0] ;
  wire \SUM_reg_n_0_[1] ;
  wire \SUM_reg_n_0_[2] ;
  wire \SUM_reg_n_0_[3] ;
  wire \SUM_reg_n_0_[4] ;
  wire \SUM_reg_n_0_[5] ;
  wire \SUM_reg_n_0_[6] ;
  wire \SUM_reg_n_0_[7] ;
  wire \SUM_reg_n_0_[8] ;
  wire \SUM_reg_n_0_[9] ;
  wire clear;
  wire [11:11]in;
  wire [11:0]out;
  wire [3:1]\NLW_SUM_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_SUM_reg[20]_i_1_O_UNCONNECTED ;

  system_ADC_fp_0_gen_counter COUNT0
       (.ADC_CLK(ADC_CLK),
        .ADC_EN(ADC_EN),
        .E(E),
        .F_O_reg_inv_0(COUNT0_n_0),
        .clear(clear));
  system_ADC_fp_0_gen_counter_0 COUNT1
       (.ADC_CLK(ADC_CLK),
        .ADC_EN(ADC_EN),
        .F_O_reg_0(F_O_reg),
        .clear(clear));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[0]_i_2 
       (.I0(ADC_A[3]),
        .I1(ADC_SEL),
        .I2(ADC_B[3]),
        .I3(\SUM_reg_n_0_[3] ),
        .O(\SUM[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[0]_i_3 
       (.I0(ADC_A[2]),
        .I1(ADC_SEL),
        .I2(ADC_B[2]),
        .I3(\SUM_reg_n_0_[2] ),
        .O(\SUM[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[0]_i_4 
       (.I0(ADC_A[1]),
        .I1(ADC_SEL),
        .I2(ADC_B[1]),
        .I3(\SUM_reg_n_0_[1] ),
        .O(\SUM[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[0]_i_5 
       (.I0(ADC_A[0]),
        .I1(ADC_SEL),
        .I2(ADC_B[0]),
        .I3(\SUM_reg_n_0_[0] ),
        .O(\SUM[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SUM[12]_i_2 
       (.I0(ADC_B[11]),
        .I1(ADC_SEL),
        .I2(ADC_A[11]),
        .O(\SUM[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SUM[12]_i_3 
       (.I0(ADC_B[11]),
        .I1(ADC_SEL),
        .I2(ADC_A[11]),
        .O(\SUM[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SUM[12]_i_4 
       (.I0(ADC_B[11]),
        .I1(ADC_SEL),
        .I2(ADC_A[11]),
        .O(\SUM[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SUM[12]_i_5 
       (.I0(ADC_B[11]),
        .I1(ADC_SEL),
        .I2(ADC_A[11]),
        .O(\SUM[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[12]_i_6 
       (.I0(ADC_A[11]),
        .I1(ADC_SEL),
        .I2(ADC_B[11]),
        .I3(out[5]),
        .O(\SUM[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[12]_i_7 
       (.I0(ADC_A[11]),
        .I1(ADC_SEL),
        .I2(ADC_B[11]),
        .I3(out[4]),
        .O(\SUM[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[12]_i_8 
       (.I0(ADC_A[11]),
        .I1(ADC_SEL),
        .I2(ADC_B[11]),
        .I3(out[3]),
        .O(\SUM[12]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[12]_i_9 
       (.I0(ADC_A[11]),
        .I1(ADC_SEL),
        .I2(ADC_B[11]),
        .I3(out[2]),
        .O(\SUM[12]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SUM[16]_i_2 
       (.I0(ADC_B[11]),
        .I1(ADC_SEL),
        .I2(ADC_A[11]),
        .O(\SUM[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SUM[16]_i_3 
       (.I0(ADC_B[11]),
        .I1(ADC_SEL),
        .I2(ADC_A[11]),
        .O(\SUM[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SUM[16]_i_4 
       (.I0(ADC_B[11]),
        .I1(ADC_SEL),
        .I2(ADC_A[11]),
        .O(\SUM[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SUM[16]_i_5 
       (.I0(ADC_B[11]),
        .I1(ADC_SEL),
        .I2(ADC_A[11]),
        .O(\SUM[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[16]_i_6 
       (.I0(ADC_A[11]),
        .I1(ADC_SEL),
        .I2(ADC_B[11]),
        .I3(out[9]),
        .O(\SUM[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[16]_i_7 
       (.I0(ADC_A[11]),
        .I1(ADC_SEL),
        .I2(ADC_B[11]),
        .I3(out[8]),
        .O(\SUM[16]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[16]_i_8 
       (.I0(ADC_A[11]),
        .I1(ADC_SEL),
        .I2(ADC_B[11]),
        .I3(out[7]),
        .O(\SUM[16]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[16]_i_9 
       (.I0(ADC_A[11]),
        .I1(ADC_SEL),
        .I2(ADC_B[11]),
        .I3(out[6]),
        .O(\SUM[16]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SUM[20]_i_2 
       (.I0(ADC_B[11]),
        .I1(ADC_SEL),
        .I2(ADC_A[11]),
        .O(in));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[20]_i_3 
       (.I0(ADC_A[11]),
        .I1(ADC_SEL),
        .I2(ADC_B[11]),
        .I3(out[11]),
        .O(\SUM[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[20]_i_4 
       (.I0(ADC_A[11]),
        .I1(ADC_SEL),
        .I2(ADC_B[11]),
        .I3(out[10]),
        .O(\SUM[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[4]_i_2 
       (.I0(ADC_A[7]),
        .I1(ADC_SEL),
        .I2(ADC_B[7]),
        .I3(\SUM_reg_n_0_[7] ),
        .O(\SUM[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[4]_i_3 
       (.I0(ADC_A[6]),
        .I1(ADC_SEL),
        .I2(ADC_B[6]),
        .I3(\SUM_reg_n_0_[6] ),
        .O(\SUM[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[4]_i_4 
       (.I0(ADC_A[5]),
        .I1(ADC_SEL),
        .I2(ADC_B[5]),
        .I3(\SUM_reg_n_0_[5] ),
        .O(\SUM[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[4]_i_5 
       (.I0(ADC_A[4]),
        .I1(ADC_SEL),
        .I2(ADC_B[4]),
        .I3(\SUM_reg_n_0_[4] ),
        .O(\SUM[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \SUM[8]_i_2 
       (.I0(ADC_B[11]),
        .I1(ADC_SEL),
        .I2(ADC_A[11]),
        .O(\SUM[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[8]_i_3 
       (.I0(ADC_A[11]),
        .I1(ADC_SEL),
        .I2(ADC_B[11]),
        .I3(out[1]),
        .O(\SUM[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[8]_i_4 
       (.I0(ADC_A[10]),
        .I1(ADC_SEL),
        .I2(ADC_B[10]),
        .I3(out[0]),
        .O(\SUM[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[8]_i_5 
       (.I0(ADC_A[9]),
        .I1(ADC_SEL),
        .I2(ADC_B[9]),
        .I3(\SUM_reg_n_0_[9] ),
        .O(\SUM[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \SUM[8]_i_6 
       (.I0(ADC_A[8]),
        .I1(ADC_SEL),
        .I2(ADC_B[8]),
        .I3(\SUM_reg_n_0_[8] ),
        .O(\SUM[8]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[0] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[0]_i_1_n_7 ),
        .Q(\SUM_reg_n_0_[0] ),
        .R(clear));
  CARRY4 \SUM_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\SUM_reg[0]_i_1_n_0 ,\SUM_reg[0]_i_1_n_1 ,\SUM_reg[0]_i_1_n_2 ,\SUM_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\SUM_reg_n_0_[3] ,\SUM_reg_n_0_[2] ,\SUM_reg_n_0_[1] ,\SUM_reg_n_0_[0] }),
        .O({\SUM_reg[0]_i_1_n_4 ,\SUM_reg[0]_i_1_n_5 ,\SUM_reg[0]_i_1_n_6 ,\SUM_reg[0]_i_1_n_7 }),
        .S({\SUM[0]_i_2_n_0 ,\SUM[0]_i_3_n_0 ,\SUM[0]_i_4_n_0 ,\SUM[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[10] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[8]_i_1_n_5 ),
        .Q(out[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[11] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[8]_i_1_n_4 ),
        .Q(out[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[12] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[12]_i_1_n_7 ),
        .Q(out[2]),
        .R(clear));
  CARRY4 \SUM_reg[12]_i_1 
       (.CI(\SUM_reg[8]_i_1_n_0 ),
        .CO({\SUM_reg[12]_i_1_n_0 ,\SUM_reg[12]_i_1_n_1 ,\SUM_reg[12]_i_1_n_2 ,\SUM_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\SUM[12]_i_2_n_0 ,\SUM[12]_i_3_n_0 ,\SUM[12]_i_4_n_0 ,\SUM[12]_i_5_n_0 }),
        .O({\SUM_reg[12]_i_1_n_4 ,\SUM_reg[12]_i_1_n_5 ,\SUM_reg[12]_i_1_n_6 ,\SUM_reg[12]_i_1_n_7 }),
        .S({\SUM[12]_i_6_n_0 ,\SUM[12]_i_7_n_0 ,\SUM[12]_i_8_n_0 ,\SUM[12]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[13] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[12]_i_1_n_6 ),
        .Q(out[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[14] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[12]_i_1_n_5 ),
        .Q(out[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[15] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[12]_i_1_n_4 ),
        .Q(out[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[16] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[16]_i_1_n_7 ),
        .Q(out[6]),
        .R(clear));
  CARRY4 \SUM_reg[16]_i_1 
       (.CI(\SUM_reg[12]_i_1_n_0 ),
        .CO({\SUM_reg[16]_i_1_n_0 ,\SUM_reg[16]_i_1_n_1 ,\SUM_reg[16]_i_1_n_2 ,\SUM_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\SUM[16]_i_2_n_0 ,\SUM[16]_i_3_n_0 ,\SUM[16]_i_4_n_0 ,\SUM[16]_i_5_n_0 }),
        .O({\SUM_reg[16]_i_1_n_4 ,\SUM_reg[16]_i_1_n_5 ,\SUM_reg[16]_i_1_n_6 ,\SUM_reg[16]_i_1_n_7 }),
        .S({\SUM[16]_i_6_n_0 ,\SUM[16]_i_7_n_0 ,\SUM[16]_i_8_n_0 ,\SUM[16]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[17] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[16]_i_1_n_6 ),
        .Q(out[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[18] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[16]_i_1_n_5 ),
        .Q(out[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[19] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[16]_i_1_n_4 ),
        .Q(out[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[1] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[0]_i_1_n_6 ),
        .Q(\SUM_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[20] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[20]_i_1_n_7 ),
        .Q(out[10]),
        .R(clear));
  CARRY4 \SUM_reg[20]_i_1 
       (.CI(\SUM_reg[16]_i_1_n_0 ),
        .CO({\NLW_SUM_reg[20]_i_1_CO_UNCONNECTED [3:1],\SUM_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,in}),
        .O({\NLW_SUM_reg[20]_i_1_O_UNCONNECTED [3:2],\SUM_reg[20]_i_1_n_6 ,\SUM_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,\SUM[20]_i_3_n_0 ,\SUM[20]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[21] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[20]_i_1_n_6 ),
        .Q(out[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[2] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[0]_i_1_n_5 ),
        .Q(\SUM_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[3] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[0]_i_1_n_4 ),
        .Q(\SUM_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[4] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[4]_i_1_n_7 ),
        .Q(\SUM_reg_n_0_[4] ),
        .R(clear));
  CARRY4 \SUM_reg[4]_i_1 
       (.CI(\SUM_reg[0]_i_1_n_0 ),
        .CO({\SUM_reg[4]_i_1_n_0 ,\SUM_reg[4]_i_1_n_1 ,\SUM_reg[4]_i_1_n_2 ,\SUM_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\SUM_reg_n_0_[7] ,\SUM_reg_n_0_[6] ,\SUM_reg_n_0_[5] ,\SUM_reg_n_0_[4] }),
        .O({\SUM_reg[4]_i_1_n_4 ,\SUM_reg[4]_i_1_n_5 ,\SUM_reg[4]_i_1_n_6 ,\SUM_reg[4]_i_1_n_7 }),
        .S({\SUM[4]_i_2_n_0 ,\SUM[4]_i_3_n_0 ,\SUM[4]_i_4_n_0 ,\SUM[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[5] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[4]_i_1_n_6 ),
        .Q(\SUM_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[6] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[4]_i_1_n_5 ),
        .Q(\SUM_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[7] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[4]_i_1_n_4 ),
        .Q(\SUM_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[8] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[8]_i_1_n_7 ),
        .Q(\SUM_reg_n_0_[8] ),
        .R(clear));
  CARRY4 \SUM_reg[8]_i_1 
       (.CI(\SUM_reg[4]_i_1_n_0 ),
        .CO({\SUM_reg[8]_i_1_n_0 ,\SUM_reg[8]_i_1_n_1 ,\SUM_reg[8]_i_1_n_2 ,\SUM_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\SUM[8]_i_2_n_0 ,out[0],\SUM_reg_n_0_[9] ,\SUM_reg_n_0_[8] }),
        .O({\SUM_reg[8]_i_1_n_4 ,\SUM_reg[8]_i_1_n_5 ,\SUM_reg[8]_i_1_n_6 ,\SUM_reg[8]_i_1_n_7 }),
        .S({\SUM[8]_i_3_n_0 ,\SUM[8]_i_4_n_0 ,\SUM[8]_i_5_n_0 ,\SUM[8]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[9] 
       (.C(ADC_CLK),
        .CE(COUNT0_n_0),
        .D(\SUM_reg[8]_i_1_n_6 ),
        .Q(\SUM_reg_n_0_[9] ),
        .R(clear));
endmodule

(* ORIG_REF_NAME = "ADC_fp" *) 
module system_ADC_fp_0_ADC_fp
   (F_O_reg,
    ADC_16Q48_OUT,
    ADC_EN,
    ADC_CLK,
    REG_RST,
    ADC_A,
    ADC_SEL,
    ADC_B);
  output F_O_reg;
  output [54:0]ADC_16Q48_OUT;
  input ADC_EN;
  input ADC_CLK;
  input REG_RST;
  input [11:0]ADC_A;
  input ADC_SEL;
  input [11:0]ADC_B;

  wire [54:0]ADC_16Q48_OUT;
  wire [11:0]ADC_A;
  wire [11:0]ADC_B;
  wire ADC_CLK;
  wire ADC_EN;
  wire ADC_SEL;
  wire F_O_reg;
  wire REG_RST;
  wire VALID_SUM;
  wire [11:0]p_0_in;

  system_ADC_fp_0_ADC_AVERAGE ADC_AVERAGE0
       (.ADC_A(ADC_A),
        .ADC_B(ADC_B),
        .ADC_CLK(ADC_CLK),
        .ADC_EN(ADC_EN),
        .ADC_SEL(ADC_SEL),
        .E(VALID_SUM),
        .F_O_reg(F_O_reg),
        .out(p_0_in));
  system_ADC_fp_0_gen_mult MULT1
       (.ADC_16Q48_OUT(ADC_16Q48_OUT),
        .ADC_CLK(ADC_CLK),
        .E(VALID_SUM),
        .REG_RST(REG_RST),
        .out(p_0_in),
        .p0__4_0(F_O_reg));
endmodule

(* ORIG_REF_NAME = "gen_counter" *) 
module system_ADC_fp_0_gen_counter
   (F_O_reg_inv_0,
    E,
    ADC_CLK,
    clear,
    ADC_EN);
  output F_O_reg_inv_0;
  output [0:0]E;
  input ADC_CLK;
  input clear;
  input ADC_EN;

  wire ADC_CLK;
  wire ADC_EN;
  wire [0:0]E;
  wire F_O_inv_i_1_n_0;
  wire F_O_reg_inv_0;
  wire clear;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire \count[0]_i_8_n_0 ;
  wire [31:10]count_reg;
  wire \count_reg[0]_i_3_n_0 ;
  wire \count_reg[0]_i_3_n_1 ;
  wire \count_reg[0]_i_3_n_2 ;
  wire \count_reg[0]_i_3_n_3 ;
  wire \count_reg[0]_i_3_n_4 ;
  wire \count_reg[0]_i_3_n_5 ;
  wire \count_reg[0]_i_3_n_6 ;
  wire \count_reg[0]_i_3_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
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
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire sel;
  wire [3:3]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    F_O_inv_i_1
       (.I0(sel),
        .I1(F_O_reg_inv_0),
        .I2(ADC_EN),
        .O(F_O_inv_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    F_O_reg_inv
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(F_O_inv_i_1_n_0),
        .Q(F_O_reg_inv_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \count[0]_i_2 
       (.I0(\count[0]_i_4_n_0 ),
        .I1(count_reg[17]),
        .I2(count_reg[16]),
        .I3(count_reg[10]),
        .I4(\count[0]_i_5_n_0 ),
        .O(sel));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \count[0]_i_4 
       (.I0(\count[0]_i_7_n_0 ),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(count_reg[13]),
        .I4(count_reg[12]),
        .I5(count_reg[11]),
        .O(\count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \count[0]_i_5 
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .I2(count_reg[20]),
        .I3(count_reg[21]),
        .I4(\count[0]_i_8_n_0 ),
        .O(\count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_6 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count[0]_i_7 
       (.I0(count_reg[26]),
        .I1(count_reg[27]),
        .I2(count_reg[28]),
        .I3(count_reg[29]),
        .I4(count_reg[31]),
        .I5(count_reg[30]),
        .O(\count[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \count[0]_i_8 
       (.I0(count_reg[25]),
        .I1(count_reg[24]),
        .I2(count_reg[23]),
        .I3(count_reg[22]),
        .O(\count[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(ADC_CLK),
        .CE(sel),
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
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S(count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S(count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3],\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S(count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[0]_i_3_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[4] ),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_3_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] ,\count_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\count_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(\count_reg_n_0_[8] ),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({count_reg[11:10],\count_reg_n_0_[9] ,\count_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(\count_reg_n_0_[9] ),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    p0__0_i_1
       (.I0(ADC_EN),
        .I1(F_O_reg_inv_0),
        .O(E));
endmodule

(* ORIG_REF_NAME = "gen_counter" *) 
module system_ADC_fp_0_gen_counter_0
   (F_O_reg_0,
    clear,
    ADC_CLK,
    ADC_EN);
  output F_O_reg_0;
  output clear;
  input ADC_CLK;
  input ADC_EN;

  wire ADC_CLK;
  wire ADC_EN;
  wire F_O_i_1_n_0;
  wire F_O_i_2_n_0;
  wire F_O_i_3_n_0;
  wire F_O_i_4_n_0;
  wire F_O_i_5_n_0;
  wire F_O_i_6_n_0;
  wire F_O_i_7_n_0;
  wire F_O_i_8_n_0;
  wire F_O_reg_0;
  wire clear;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire [31:0]count_reg;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_1 ;
  wire \count_reg[0]_i_2_n_2 ;
  wire \count_reg[0]_i_2_n_3 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[12]_i_1__0_n_0 ;
  wire \count_reg[12]_i_1__0_n_1 ;
  wire \count_reg[12]_i_1__0_n_2 ;
  wire \count_reg[12]_i_1__0_n_3 ;
  wire \count_reg[12]_i_1__0_n_4 ;
  wire \count_reg[12]_i_1__0_n_5 ;
  wire \count_reg[12]_i_1__0_n_6 ;
  wire \count_reg[12]_i_1__0_n_7 ;
  wire \count_reg[16]_i_1__0_n_0 ;
  wire \count_reg[16]_i_1__0_n_1 ;
  wire \count_reg[16]_i_1__0_n_2 ;
  wire \count_reg[16]_i_1__0_n_3 ;
  wire \count_reg[16]_i_1__0_n_4 ;
  wire \count_reg[16]_i_1__0_n_5 ;
  wire \count_reg[16]_i_1__0_n_6 ;
  wire \count_reg[16]_i_1__0_n_7 ;
  wire \count_reg[20]_i_1__0_n_0 ;
  wire \count_reg[20]_i_1__0_n_1 ;
  wire \count_reg[20]_i_1__0_n_2 ;
  wire \count_reg[20]_i_1__0_n_3 ;
  wire \count_reg[20]_i_1__0_n_4 ;
  wire \count_reg[20]_i_1__0_n_5 ;
  wire \count_reg[20]_i_1__0_n_6 ;
  wire \count_reg[20]_i_1__0_n_7 ;
  wire \count_reg[24]_i_1__0_n_0 ;
  wire \count_reg[24]_i_1__0_n_1 ;
  wire \count_reg[24]_i_1__0_n_2 ;
  wire \count_reg[24]_i_1__0_n_3 ;
  wire \count_reg[24]_i_1__0_n_4 ;
  wire \count_reg[24]_i_1__0_n_5 ;
  wire \count_reg[24]_i_1__0_n_6 ;
  wire \count_reg[24]_i_1__0_n_7 ;
  wire \count_reg[28]_i_1__0_n_1 ;
  wire \count_reg[28]_i_1__0_n_2 ;
  wire \count_reg[28]_i_1__0_n_3 ;
  wire \count_reg[28]_i_1__0_n_4 ;
  wire \count_reg[28]_i_1__0_n_5 ;
  wire \count_reg[28]_i_1__0_n_6 ;
  wire \count_reg[28]_i_1__0_n_7 ;
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
  wire [3:3]\NLW_count_reg[28]_i_1__0_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFF40000)) 
    F_O_i_1
       (.I0(F_O_i_2_n_0),
        .I1(count_reg[10]),
        .I2(F_O_i_3_n_0),
        .I3(F_O_reg_0),
        .I4(ADC_EN),
        .O(F_O_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    F_O_i_2
       (.I0(F_O_i_4_n_0),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(count_reg[0]),
        .I4(count_reg[1]),
        .O(F_O_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    F_O_i_3
       (.I0(F_O_i_5_n_0),
        .I1(F_O_i_6_n_0),
        .I2(count_reg[17]),
        .I3(count_reg[16]),
        .I4(F_O_i_7_n_0),
        .I5(F_O_i_8_n_0),
        .O(F_O_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    F_O_i_4
       (.I0(count_reg[4]),
        .I1(count_reg[5]),
        .I2(count_reg[6]),
        .I3(count_reg[7]),
        .I4(count_reg[9]),
        .I5(count_reg[8]),
        .O(F_O_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    F_O_i_5
       (.I0(count_reg[29]),
        .I1(count_reg[28]),
        .I2(count_reg[27]),
        .I3(count_reg[26]),
        .O(F_O_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    F_O_i_6
       (.I0(count_reg[18]),
        .I1(count_reg[19]),
        .I2(count_reg[20]),
        .I3(count_reg[21]),
        .I4(count_reg[31]),
        .I5(count_reg[30]),
        .O(F_O_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    F_O_i_7
       (.I0(count_reg[11]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(count_reg[15]),
        .I4(count_reg[14]),
        .O(F_O_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    F_O_i_8
       (.I0(count_reg[25]),
        .I1(count_reg[24]),
        .I2(count_reg[23]),
        .I3(count_reg[22]),
        .O(F_O_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    F_O_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(F_O_i_1_n_0),
        .Q(F_O_reg_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(ADC_EN),
        .O(clear));
  LUT3 #(
    .INIT(8'h0B)) 
    \count[0]_i_1__0 
       (.I0(F_O_i_2_n_0),
        .I1(count_reg[10]),
        .I2(F_O_i_3_n_0),
        .O(\count[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_3 
       (.I0(count_reg[0]),
        .O(\count[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({count_reg[3:1],\count[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[8]_i_1__0_n_5 ),
        .Q(count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[8]_i_1__0_n_4 ),
        .Q(count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[12]_i_1__0_n_7 ),
        .Q(count_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1__0 
       (.CI(\count_reg[8]_i_1__0_n_0 ),
        .CO({\count_reg[12]_i_1__0_n_0 ,\count_reg[12]_i_1__0_n_1 ,\count_reg[12]_i_1__0_n_2 ,\count_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1__0_n_4 ,\count_reg[12]_i_1__0_n_5 ,\count_reg[12]_i_1__0_n_6 ,\count_reg[12]_i_1__0_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[12]_i_1__0_n_6 ),
        .Q(count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[12]_i_1__0_n_5 ),
        .Q(count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[12]_i_1__0_n_4 ),
        .Q(count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[16]_i_1__0_n_7 ),
        .Q(count_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1__0 
       (.CI(\count_reg[12]_i_1__0_n_0 ),
        .CO({\count_reg[16]_i_1__0_n_0 ,\count_reg[16]_i_1__0_n_1 ,\count_reg[16]_i_1__0_n_2 ,\count_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1__0_n_4 ,\count_reg[16]_i_1__0_n_5 ,\count_reg[16]_i_1__0_n_6 ,\count_reg[16]_i_1__0_n_7 }),
        .S(count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[16]_i_1__0_n_6 ),
        .Q(count_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[16]_i_1__0_n_5 ),
        .Q(count_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[16]_i_1__0_n_4 ),
        .Q(count_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[20]_i_1__0_n_7 ),
        .Q(count_reg[20]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1__0 
       (.CI(\count_reg[16]_i_1__0_n_0 ),
        .CO({\count_reg[20]_i_1__0_n_0 ,\count_reg[20]_i_1__0_n_1 ,\count_reg[20]_i_1__0_n_2 ,\count_reg[20]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1__0_n_4 ,\count_reg[20]_i_1__0_n_5 ,\count_reg[20]_i_1__0_n_6 ,\count_reg[20]_i_1__0_n_7 }),
        .S(count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[20]_i_1__0_n_6 ),
        .Q(count_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[20]_i_1__0_n_5 ),
        .Q(count_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[20]_i_1__0_n_4 ),
        .Q(count_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[24]_i_1__0_n_7 ),
        .Q(count_reg[24]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[24]_i_1__0 
       (.CI(\count_reg[20]_i_1__0_n_0 ),
        .CO({\count_reg[24]_i_1__0_n_0 ,\count_reg[24]_i_1__0_n_1 ,\count_reg[24]_i_1__0_n_2 ,\count_reg[24]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1__0_n_4 ,\count_reg[24]_i_1__0_n_5 ,\count_reg[24]_i_1__0_n_6 ,\count_reg[24]_i_1__0_n_7 }),
        .S(count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[24]_i_1__0_n_6 ),
        .Q(count_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[24]_i_1__0_n_5 ),
        .Q(count_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[24]_i_1__0_n_4 ),
        .Q(count_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[28]_i_1__0_n_7 ),
        .Q(count_reg[28]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[28]_i_1__0 
       (.CI(\count_reg[24]_i_1__0_n_0 ),
        .CO({\NLW_count_reg[28]_i_1__0_CO_UNCONNECTED [3],\count_reg[28]_i_1__0_n_1 ,\count_reg[28]_i_1__0_n_2 ,\count_reg[28]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1__0_n_4 ,\count_reg[28]_i_1__0_n_5 ,\count_reg[28]_i_1__0_n_6 ,\count_reg[28]_i_1__0_n_7 }),
        .S(count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[28]_i_1__0_n_6 ),
        .Q(count_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[28]_i_1__0_n_5 ),
        .Q(count_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[28]_i_1__0_n_4 ),
        .Q(count_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[4]_i_1__0_n_7 ),
        .Q(count_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1__0 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1__0_n_0 ,\count_reg[4]_i_1__0_n_1 ,\count_reg[4]_i_1__0_n_2 ,\count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__0_n_4 ,\count_reg[4]_i_1__0_n_5 ,\count_reg[4]_i_1__0_n_6 ,\count_reg[4]_i_1__0_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[4]_i_1__0_n_6 ),
        .Q(count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[4]_i_1__0_n_5 ),
        .Q(count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[4]_i_1__0_n_4 ),
        .Q(count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(ADC_CLK),
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[8]_i_1__0_n_7 ),
        .Q(count_reg[8]),
        .R(clear));
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
        .CE(\count[0]_i_1__0_n_0 ),
        .D(\count_reg[8]_i_1__0_n_6 ),
        .Q(count_reg[9]),
        .R(clear));
endmodule

(* ORIG_REF_NAME = "gen_mult" *) 
module system_ADC_fp_0_gen_mult
   (ADC_16Q48_OUT,
    p0__4_0,
    ADC_CLK,
    REG_RST,
    E,
    out);
  output [54:0]ADC_16Q48_OUT;
  input p0__4_0;
  input ADC_CLK;
  input REG_RST;
  input [0:0]E;
  input [11:0]out;

  wire [54:0]ADC_16Q48_OUT;
  wire \ADC_16Q48_OUT[0]_INST_0_i_10_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_10_n_1 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_10_n_2 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_10_n_3 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_11_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_12_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_13_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_14_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_15_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_16_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_17_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_18_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_19_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_19_n_1 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_19_n_2 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_19_n_3 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_1_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_1_n_1 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_1_n_2 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_1_n_3 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_20_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_21_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_22_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_23_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_24_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_25_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_25_n_1 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_25_n_2 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_25_n_3 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_26_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_27_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_28_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_29_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_2_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_30_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_30_n_1 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_30_n_2 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_30_n_3 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_31_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_32_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_33_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_34_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_35_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_35_n_1 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_35_n_2 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_35_n_3 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_36_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_37_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_38_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_39_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_3_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_40_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_41_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_42_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_4_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_5_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_6_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_7_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_8_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_i_9_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_n_0 ;
  wire \ADC_16Q48_OUT[0]_INST_0_n_1 ;
  wire \ADC_16Q48_OUT[0]_INST_0_n_2 ;
  wire \ADC_16Q48_OUT[0]_INST_0_n_3 ;
  wire \ADC_16Q48_OUT[10]_INST_0_i_1_n_0 ;
  wire \ADC_16Q48_OUT[10]_INST_0_i_2_n_0 ;
  wire \ADC_16Q48_OUT[10]_INST_0_i_3_n_0 ;
  wire \ADC_16Q48_OUT[10]_INST_0_i_4_n_0 ;
  wire \ADC_16Q48_OUT[10]_INST_0_i_5_n_0 ;
  wire \ADC_16Q48_OUT[10]_INST_0_i_6_n_0 ;
  wire \ADC_16Q48_OUT[10]_INST_0_i_7_n_0 ;
  wire \ADC_16Q48_OUT[10]_INST_0_i_8_n_0 ;
  wire \ADC_16Q48_OUT[10]_INST_0_n_0 ;
  wire \ADC_16Q48_OUT[10]_INST_0_n_1 ;
  wire \ADC_16Q48_OUT[10]_INST_0_n_2 ;
  wire \ADC_16Q48_OUT[10]_INST_0_n_3 ;
  wire \ADC_16Q48_OUT[14]_INST_0_i_1_n_0 ;
  wire \ADC_16Q48_OUT[14]_INST_0_i_2_n_0 ;
  wire \ADC_16Q48_OUT[14]_INST_0_i_3_n_0 ;
  wire \ADC_16Q48_OUT[14]_INST_0_i_4_n_0 ;
  wire \ADC_16Q48_OUT[14]_INST_0_i_5_n_0 ;
  wire \ADC_16Q48_OUT[14]_INST_0_i_6_n_0 ;
  wire \ADC_16Q48_OUT[14]_INST_0_i_7_n_0 ;
  wire \ADC_16Q48_OUT[14]_INST_0_i_8_n_0 ;
  wire \ADC_16Q48_OUT[14]_INST_0_n_0 ;
  wire \ADC_16Q48_OUT[14]_INST_0_n_1 ;
  wire \ADC_16Q48_OUT[14]_INST_0_n_2 ;
  wire \ADC_16Q48_OUT[14]_INST_0_n_3 ;
  wire \ADC_16Q48_OUT[18]_INST_0_i_1_n_0 ;
  wire \ADC_16Q48_OUT[18]_INST_0_i_2_n_0 ;
  wire \ADC_16Q48_OUT[18]_INST_0_i_3_n_0 ;
  wire \ADC_16Q48_OUT[18]_INST_0_i_4_n_0 ;
  wire \ADC_16Q48_OUT[18]_INST_0_i_5_n_0 ;
  wire \ADC_16Q48_OUT[18]_INST_0_i_6_n_0 ;
  wire \ADC_16Q48_OUT[18]_INST_0_i_7_n_0 ;
  wire \ADC_16Q48_OUT[18]_INST_0_i_8_n_0 ;
  wire \ADC_16Q48_OUT[18]_INST_0_n_0 ;
  wire \ADC_16Q48_OUT[18]_INST_0_n_1 ;
  wire \ADC_16Q48_OUT[18]_INST_0_n_2 ;
  wire \ADC_16Q48_OUT[18]_INST_0_n_3 ;
  wire \ADC_16Q48_OUT[22]_INST_0_i_10_n_0 ;
  wire \ADC_16Q48_OUT[22]_INST_0_i_1_n_0 ;
  wire \ADC_16Q48_OUT[22]_INST_0_i_2_n_0 ;
  wire \ADC_16Q48_OUT[22]_INST_0_i_3_n_0 ;
  wire \ADC_16Q48_OUT[22]_INST_0_i_4_n_0 ;
  wire \ADC_16Q48_OUT[22]_INST_0_i_5_n_0 ;
  wire \ADC_16Q48_OUT[22]_INST_0_i_6_n_0 ;
  wire \ADC_16Q48_OUT[22]_INST_0_i_7_n_0 ;
  wire \ADC_16Q48_OUT[22]_INST_0_i_8_n_0 ;
  wire \ADC_16Q48_OUT[22]_INST_0_i_9_n_0 ;
  wire \ADC_16Q48_OUT[22]_INST_0_n_0 ;
  wire \ADC_16Q48_OUT[22]_INST_0_n_1 ;
  wire \ADC_16Q48_OUT[22]_INST_0_n_2 ;
  wire \ADC_16Q48_OUT[22]_INST_0_n_3 ;
  wire \ADC_16Q48_OUT[26]_INST_0_i_1_n_0 ;
  wire \ADC_16Q48_OUT[26]_INST_0_i_2_n_0 ;
  wire \ADC_16Q48_OUT[26]_INST_0_i_3_n_0 ;
  wire \ADC_16Q48_OUT[26]_INST_0_i_4_n_0 ;
  wire \ADC_16Q48_OUT[26]_INST_0_i_5_n_0 ;
  wire \ADC_16Q48_OUT[26]_INST_0_i_6_n_0 ;
  wire \ADC_16Q48_OUT[26]_INST_0_i_7_n_0 ;
  wire \ADC_16Q48_OUT[26]_INST_0_i_8_n_0 ;
  wire \ADC_16Q48_OUT[26]_INST_0_n_0 ;
  wire \ADC_16Q48_OUT[26]_INST_0_n_1 ;
  wire \ADC_16Q48_OUT[26]_INST_0_n_2 ;
  wire \ADC_16Q48_OUT[26]_INST_0_n_3 ;
  wire \ADC_16Q48_OUT[2]_INST_0_i_1_n_0 ;
  wire \ADC_16Q48_OUT[2]_INST_0_i_2_n_0 ;
  wire \ADC_16Q48_OUT[2]_INST_0_i_3_n_0 ;
  wire \ADC_16Q48_OUT[2]_INST_0_i_4_n_0 ;
  wire \ADC_16Q48_OUT[2]_INST_0_i_5_n_0 ;
  wire \ADC_16Q48_OUT[2]_INST_0_i_6_n_0 ;
  wire \ADC_16Q48_OUT[2]_INST_0_i_7_n_0 ;
  wire \ADC_16Q48_OUT[2]_INST_0_i_8_n_0 ;
  wire \ADC_16Q48_OUT[2]_INST_0_n_0 ;
  wire \ADC_16Q48_OUT[2]_INST_0_n_1 ;
  wire \ADC_16Q48_OUT[2]_INST_0_n_2 ;
  wire \ADC_16Q48_OUT[2]_INST_0_n_3 ;
  wire \ADC_16Q48_OUT[30]_INST_0_i_1_n_0 ;
  wire \ADC_16Q48_OUT[30]_INST_0_i_2_n_0 ;
  wire \ADC_16Q48_OUT[30]_INST_0_i_3_n_0 ;
  wire \ADC_16Q48_OUT[30]_INST_0_i_4_n_0 ;
  wire \ADC_16Q48_OUT[30]_INST_0_i_5_n_0 ;
  wire \ADC_16Q48_OUT[30]_INST_0_i_6_n_0 ;
  wire \ADC_16Q48_OUT[30]_INST_0_i_7_n_0 ;
  wire \ADC_16Q48_OUT[30]_INST_0_i_8_n_0 ;
  wire \ADC_16Q48_OUT[30]_INST_0_n_0 ;
  wire \ADC_16Q48_OUT[30]_INST_0_n_1 ;
  wire \ADC_16Q48_OUT[30]_INST_0_n_2 ;
  wire \ADC_16Q48_OUT[30]_INST_0_n_3 ;
  wire \ADC_16Q48_OUT[34]_INST_0_i_1_n_0 ;
  wire \ADC_16Q48_OUT[34]_INST_0_i_2_n_0 ;
  wire \ADC_16Q48_OUT[34]_INST_0_i_3_n_0 ;
  wire \ADC_16Q48_OUT[34]_INST_0_i_4_n_0 ;
  wire \ADC_16Q48_OUT[34]_INST_0_i_5_n_0 ;
  wire \ADC_16Q48_OUT[34]_INST_0_i_6_n_0 ;
  wire \ADC_16Q48_OUT[34]_INST_0_i_7_n_0 ;
  wire \ADC_16Q48_OUT[34]_INST_0_i_8_n_0 ;
  wire \ADC_16Q48_OUT[34]_INST_0_n_0 ;
  wire \ADC_16Q48_OUT[34]_INST_0_n_1 ;
  wire \ADC_16Q48_OUT[34]_INST_0_n_2 ;
  wire \ADC_16Q48_OUT[34]_INST_0_n_3 ;
  wire \ADC_16Q48_OUT[38]_INST_0_i_1_n_0 ;
  wire \ADC_16Q48_OUT[38]_INST_0_i_2_n_0 ;
  wire \ADC_16Q48_OUT[38]_INST_0_i_3_n_0 ;
  wire \ADC_16Q48_OUT[38]_INST_0_i_4_n_0 ;
  wire \ADC_16Q48_OUT[38]_INST_0_i_5_n_0 ;
  wire \ADC_16Q48_OUT[38]_INST_0_i_6_n_0 ;
  wire \ADC_16Q48_OUT[38]_INST_0_i_7_n_0 ;
  wire \ADC_16Q48_OUT[38]_INST_0_n_0 ;
  wire \ADC_16Q48_OUT[38]_INST_0_n_1 ;
  wire \ADC_16Q48_OUT[38]_INST_0_n_2 ;
  wire \ADC_16Q48_OUT[38]_INST_0_n_3 ;
  wire \ADC_16Q48_OUT[42]_INST_0_i_1_n_0 ;
  wire \ADC_16Q48_OUT[42]_INST_0_i_2_n_0 ;
  wire \ADC_16Q48_OUT[42]_INST_0_i_3_n_0 ;
  wire \ADC_16Q48_OUT[42]_INST_0_i_4_n_0 ;
  wire \ADC_16Q48_OUT[42]_INST_0_n_0 ;
  wire \ADC_16Q48_OUT[42]_INST_0_n_1 ;
  wire \ADC_16Q48_OUT[42]_INST_0_n_2 ;
  wire \ADC_16Q48_OUT[42]_INST_0_n_3 ;
  wire \ADC_16Q48_OUT[46]_INST_0_i_1_n_0 ;
  wire \ADC_16Q48_OUT[46]_INST_0_i_2_n_0 ;
  wire \ADC_16Q48_OUT[46]_INST_0_i_3_n_0 ;
  wire \ADC_16Q48_OUT[46]_INST_0_i_4_n_0 ;
  wire \ADC_16Q48_OUT[46]_INST_0_n_0 ;
  wire \ADC_16Q48_OUT[46]_INST_0_n_1 ;
  wire \ADC_16Q48_OUT[46]_INST_0_n_2 ;
  wire \ADC_16Q48_OUT[46]_INST_0_n_3 ;
  wire \ADC_16Q48_OUT[50]_INST_0_i_1_n_0 ;
  wire \ADC_16Q48_OUT[50]_INST_0_i_2_n_0 ;
  wire \ADC_16Q48_OUT[50]_INST_0_i_3_n_0 ;
  wire \ADC_16Q48_OUT[50]_INST_0_i_4_n_0 ;
  wire \ADC_16Q48_OUT[50]_INST_0_n_0 ;
  wire \ADC_16Q48_OUT[50]_INST_0_n_1 ;
  wire \ADC_16Q48_OUT[50]_INST_0_n_2 ;
  wire \ADC_16Q48_OUT[50]_INST_0_n_3 ;
  wire \ADC_16Q48_OUT[54]_INST_0_i_1_n_0 ;
  wire \ADC_16Q48_OUT[6]_INST_0_i_1_n_0 ;
  wire \ADC_16Q48_OUT[6]_INST_0_i_2_n_0 ;
  wire \ADC_16Q48_OUT[6]_INST_0_i_3_n_0 ;
  wire \ADC_16Q48_OUT[6]_INST_0_i_4_n_0 ;
  wire \ADC_16Q48_OUT[6]_INST_0_i_5_n_0 ;
  wire \ADC_16Q48_OUT[6]_INST_0_i_6_n_0 ;
  wire \ADC_16Q48_OUT[6]_INST_0_i_7_n_0 ;
  wire \ADC_16Q48_OUT[6]_INST_0_i_8_n_0 ;
  wire \ADC_16Q48_OUT[6]_INST_0_i_9_n_0 ;
  wire \ADC_16Q48_OUT[6]_INST_0_n_0 ;
  wire \ADC_16Q48_OUT[6]_INST_0_n_1 ;
  wire \ADC_16Q48_OUT[6]_INST_0_n_2 ;
  wire \ADC_16Q48_OUT[6]_INST_0_n_3 ;
  wire ADC_CLK;
  wire [0:0]E;
  wire REG_RST;
  wire [11:0]out;
  wire p0__0_n_0;
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
  wire p0__18_n_0;
  wire p0__19_n_0;
  wire p0__1_n_0;
  wire p0__20_n_0;
  wire p0__21_n_0;
  wire p0__22_n_0;
  wire p0__23_n_0;
  wire p0__24_n_0;
  wire p0__25_n_0;
  wire p0__26_n_0;
  wire p0__2_n_0;
  wire p0__3_n_100;
  wire p0__3_n_101;
  wire p0__3_n_102;
  wire p0__3_n_103;
  wire p0__3_n_104;
  wire p0__3_n_105;
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
  wire p0__4_0;
  wire p0__4_n_100;
  wire p0__4_n_101;
  wire p0__4_n_102;
  wire p0__4_n_103;
  wire p0__4_n_104;
  wire p0__4_n_105;
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
  wire p0__5_n_10;
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
  wire p0__5_n_11;
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
  wire p0__5_n_12;
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
  wire p0__5_n_13;
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
  wire p0__5_n_14;
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
  wire p0__5_n_15;
  wire p0__5_n_150;
  wire p0__5_n_151;
  wire p0__5_n_152;
  wire p0__5_n_153;
  wire p0__5_n_16;
  wire p0__5_n_17;
  wire p0__5_n_18;
  wire p0__5_n_19;
  wire p0__5_n_20;
  wire p0__5_n_21;
  wire p0__5_n_22;
  wire p0__5_n_23;
  wire p0__5_n_58;
  wire p0__5_n_59;
  wire p0__5_n_6;
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
  wire p0__5_n_7;
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
  wire p0__5_n_8;
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
  wire p0__5_n_9;
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
  wire p0__7_n_10;
  wire p0__7_n_100;
  wire p0__7_n_101;
  wire p0__7_n_102;
  wire p0__7_n_103;
  wire p0__7_n_104;
  wire p0__7_n_105;
  wire p0__7_n_106;
  wire p0__7_n_107;
  wire p0__7_n_108;
  wire p0__7_n_109;
  wire p0__7_n_11;
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
  wire p0__7_n_12;
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
  wire p0__7_n_13;
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
  wire p0__7_n_14;
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
  wire p0__7_n_15;
  wire p0__7_n_150;
  wire p0__7_n_151;
  wire p0__7_n_152;
  wire p0__7_n_153;
  wire p0__7_n_16;
  wire p0__7_n_17;
  wire p0__7_n_18;
  wire p0__7_n_19;
  wire p0__7_n_20;
  wire p0__7_n_21;
  wire p0__7_n_22;
  wire p0__7_n_23;
  wire p0__7_n_58;
  wire p0__7_n_59;
  wire p0__7_n_6;
  wire p0__7_n_60;
  wire p0__7_n_61;
  wire p0__7_n_62;
  wire p0__7_n_63;
  wire p0__7_n_64;
  wire p0__7_n_65;
  wire p0__7_n_66;
  wire p0__7_n_67;
  wire p0__7_n_68;
  wire p0__7_n_69;
  wire p0__7_n_7;
  wire p0__7_n_70;
  wire p0__7_n_71;
  wire p0__7_n_72;
  wire p0__7_n_73;
  wire p0__7_n_74;
  wire p0__7_n_75;
  wire p0__7_n_76;
  wire p0__7_n_77;
  wire p0__7_n_78;
  wire p0__7_n_79;
  wire p0__7_n_8;
  wire p0__7_n_80;
  wire p0__7_n_81;
  wire p0__7_n_82;
  wire p0__7_n_83;
  wire p0__7_n_84;
  wire p0__7_n_85;
  wire p0__7_n_86;
  wire p0__7_n_87;
  wire p0__7_n_88;
  wire p0__7_n_89;
  wire p0__7_n_9;
  wire p0__7_n_90;
  wire p0__7_n_91;
  wire p0__7_n_92;
  wire p0__7_n_93;
  wire p0__7_n_94;
  wire p0__7_n_95;
  wire p0__7_n_96;
  wire p0__7_n_97;
  wire p0__7_n_98;
  wire p0__7_n_99;
  wire p0__8_n_100;
  wire p0__8_n_101;
  wire p0__8_n_102;
  wire p0__8_n_103;
  wire p0__8_n_104;
  wire p0__8_n_105;
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
  wire p0__9_n_10;
  wire p0__9_n_100;
  wire p0__9_n_101;
  wire p0__9_n_102;
  wire p0__9_n_103;
  wire p0__9_n_104;
  wire p0__9_n_105;
  wire p0__9_n_106;
  wire p0__9_n_107;
  wire p0__9_n_108;
  wire p0__9_n_109;
  wire p0__9_n_11;
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
  wire p0__9_n_12;
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
  wire p0__9_n_13;
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
  wire p0__9_n_14;
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
  wire p0__9_n_15;
  wire p0__9_n_150;
  wire p0__9_n_151;
  wire p0__9_n_152;
  wire p0__9_n_153;
  wire p0__9_n_16;
  wire p0__9_n_17;
  wire p0__9_n_18;
  wire p0__9_n_19;
  wire p0__9_n_20;
  wire p0__9_n_21;
  wire p0__9_n_22;
  wire p0__9_n_23;
  wire p0__9_n_24;
  wire p0__9_n_25;
  wire p0__9_n_26;
  wire p0__9_n_27;
  wire p0__9_n_28;
  wire p0__9_n_29;
  wire p0__9_n_30;
  wire p0__9_n_31;
  wire p0__9_n_32;
  wire p0__9_n_33;
  wire p0__9_n_34;
  wire p0__9_n_35;
  wire p0__9_n_36;
  wire p0__9_n_37;
  wire p0__9_n_38;
  wire p0__9_n_39;
  wire p0__9_n_40;
  wire p0__9_n_41;
  wire p0__9_n_42;
  wire p0__9_n_43;
  wire p0__9_n_44;
  wire p0__9_n_45;
  wire p0__9_n_46;
  wire p0__9_n_47;
  wire p0__9_n_48;
  wire p0__9_n_49;
  wire p0__9_n_50;
  wire p0__9_n_51;
  wire p0__9_n_52;
  wire p0__9_n_53;
  wire p0__9_n_58;
  wire p0__9_n_59;
  wire p0__9_n_6;
  wire p0__9_n_60;
  wire p0__9_n_61;
  wire p0__9_n_62;
  wire p0__9_n_63;
  wire p0__9_n_64;
  wire p0__9_n_65;
  wire p0__9_n_66;
  wire p0__9_n_67;
  wire p0__9_n_68;
  wire p0__9_n_69;
  wire p0__9_n_7;
  wire p0__9_n_70;
  wire p0__9_n_71;
  wire p0__9_n_72;
  wire p0__9_n_73;
  wire p0__9_n_74;
  wire p0__9_n_75;
  wire p0__9_n_76;
  wire p0__9_n_77;
  wire p0__9_n_78;
  wire p0__9_n_79;
  wire p0__9_n_8;
  wire p0__9_n_80;
  wire p0__9_n_81;
  wire p0__9_n_82;
  wire p0__9_n_83;
  wire p0__9_n_84;
  wire p0__9_n_85;
  wire p0__9_n_86;
  wire p0__9_n_87;
  wire p0__9_n_88;
  wire p0__9_n_89;
  wire p0__9_n_9;
  wire p0__9_n_90;
  wire p0__9_n_91;
  wire p0__9_n_92;
  wire p0__9_n_93;
  wire p0__9_n_94;
  wire p0__9_n_95;
  wire p0__9_n_96;
  wire p0__9_n_97;
  wire p0__9_n_98;
  wire p0__9_n_99;
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
  wire [1:0]\NLW_ADC_16Q48_OUT[0]_INST_0_O_UNCONNECTED ;
  wire [3:0]\NLW_ADC_16Q48_OUT[0]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_ADC_16Q48_OUT[0]_INST_0_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_ADC_16Q48_OUT[0]_INST_0_i_19_O_UNCONNECTED ;
  wire [3:0]\NLW_ADC_16Q48_OUT[0]_INST_0_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_ADC_16Q48_OUT[0]_INST_0_i_30_O_UNCONNECTED ;
  wire [3:0]\NLW_ADC_16Q48_OUT[0]_INST_0_i_35_O_UNCONNECTED ;
  wire [3:0]\NLW_ADC_16Q48_OUT[54]_INST_0_CO_UNCONNECTED ;
  wire [3:1]\NLW_ADC_16Q48_OUT[54]_INST_0_O_UNCONNECTED ;
  wire NLW_p0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0_OVERFLOW_UNCONNECTED;
  wire NLW_p0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0_P_UNCONNECTED;
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
  wire NLW_p0__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__3_OVERFLOW_UNCONNECTED;
  wire NLW_p0__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__3_CARRYOUT_UNCONNECTED;
  wire NLW_p0__4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__4_OVERFLOW_UNCONNECTED;
  wire NLW_p0__4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__4_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__4_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__4_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__4_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__4_PCOUT_UNCONNECTED;
  wire NLW_p0__5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__5_OVERFLOW_UNCONNECTED;
  wire NLW_p0__5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__5_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__5_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__5_ACOUT_UNCONNECTED;
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
  wire NLW_p0__7_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__7_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__7_OVERFLOW_UNCONNECTED;
  wire NLW_p0__7_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__7_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__7_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__7_ACOUT_UNCONNECTED;
  wire [3:0]NLW_p0__7_CARRYOUT_UNCONNECTED;
  wire NLW_p0__8_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__8_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__8_OVERFLOW_UNCONNECTED;
  wire NLW_p0__8_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__8_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__8_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__8_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__8_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__8_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__8_PCOUT_UNCONNECTED;
  wire NLW_p0__9_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__9_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__9_OVERFLOW_UNCONNECTED;
  wire NLW_p0__9_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__9_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__9_UNDERFLOW_UNCONNECTED;
  wire [3:0]NLW_p0__9_CARRYOUT_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[0]_INST_0 
       (.CI(\ADC_16Q48_OUT[0]_INST_0_i_1_n_0 ),
        .CO({\ADC_16Q48_OUT[0]_INST_0_n_0 ,\ADC_16Q48_OUT[0]_INST_0_n_1 ,\ADC_16Q48_OUT[0]_INST_0_n_2 ,\ADC_16Q48_OUT[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({\ADC_16Q48_OUT[0]_INST_0_i_2_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_3_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_4_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_5_n_0 }),
        .O({ADC_16Q48_OUT[1:0],\NLW_ADC_16Q48_OUT[0]_INST_0_O_UNCONNECTED [1:0]}),
        .S({\ADC_16Q48_OUT[0]_INST_0_i_6_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_7_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_8_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[0]_INST_0_i_1 
       (.CI(\ADC_16Q48_OUT[0]_INST_0_i_10_n_0 ),
        .CO({\ADC_16Q48_OUT[0]_INST_0_i_1_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_1_n_1 ,\ADC_16Q48_OUT[0]_INST_0_i_1_n_2 ,\ADC_16Q48_OUT[0]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\ADC_16Q48_OUT[0]_INST_0_i_11_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_12_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_13_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_14_n_0 }),
        .O(\NLW_ADC_16Q48_OUT[0]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\ADC_16Q48_OUT[0]_INST_0_i_15_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_16_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_17_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_18_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[0]_INST_0_i_10 
       (.CI(\ADC_16Q48_OUT[0]_INST_0_i_19_n_0 ),
        .CO({\ADC_16Q48_OUT[0]_INST_0_i_10_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_10_n_1 ,\ADC_16Q48_OUT[0]_INST_0_i_10_n_2 ,\ADC_16Q48_OUT[0]_INST_0_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({\ADC_16Q48_OUT[0]_INST_0_i_20_n_0 ,p0__10_n_71,p0__10_n_72,p0__10_n_73}),
        .O(\NLW_ADC_16Q48_OUT[0]_INST_0_i_10_O_UNCONNECTED [3:0]),
        .S({\ADC_16Q48_OUT[0]_INST_0_i_21_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_22_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_23_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_24_n_0 }));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ADC_16Q48_OUT[0]_INST_0_i_11 
       (.I0(p0__6_n_101),
        .I1(p0__8_n_84),
        .I2(p0__10_n_67),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_11_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ADC_16Q48_OUT[0]_INST_0_i_12 
       (.I0(p0__6_n_102),
        .I1(p0__8_n_85),
        .I2(p0__10_n_68),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_12_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ADC_16Q48_OUT[0]_INST_0_i_13 
       (.I0(p0__6_n_103),
        .I1(p0__8_n_86),
        .I2(p0__10_n_69),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_13_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ADC_16Q48_OUT[0]_INST_0_i_14 
       (.I0(p0__6_n_104),
        .I1(p0__8_n_87),
        .I2(p0__10_n_70),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_14_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ADC_16Q48_OUT[0]_INST_0_i_15 
       (.I0(p0__6_n_100),
        .I1(p0__8_n_83),
        .I2(p0__10_n_66),
        .I3(\ADC_16Q48_OUT[0]_INST_0_i_11_n_0 ),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_15_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ADC_16Q48_OUT[0]_INST_0_i_16 
       (.I0(p0__6_n_101),
        .I1(p0__8_n_84),
        .I2(p0__10_n_67),
        .I3(\ADC_16Q48_OUT[0]_INST_0_i_12_n_0 ),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_16_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ADC_16Q48_OUT[0]_INST_0_i_17 
       (.I0(p0__6_n_102),
        .I1(p0__8_n_85),
        .I2(p0__10_n_68),
        .I3(\ADC_16Q48_OUT[0]_INST_0_i_13_n_0 ),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_17_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ADC_16Q48_OUT[0]_INST_0_i_18 
       (.I0(p0__6_n_103),
        .I1(p0__8_n_86),
        .I2(p0__10_n_69),
        .I3(\ADC_16Q48_OUT[0]_INST_0_i_14_n_0 ),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_18_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[0]_INST_0_i_19 
       (.CI(\ADC_16Q48_OUT[0]_INST_0_i_25_n_0 ),
        .CO({\ADC_16Q48_OUT[0]_INST_0_i_19_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_19_n_1 ,\ADC_16Q48_OUT[0]_INST_0_i_19_n_2 ,\ADC_16Q48_OUT[0]_INST_0_i_19_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__10_n_74,p0__10_n_75,p0__10_n_76,p0__10_n_77}),
        .O(\NLW_ADC_16Q48_OUT[0]_INST_0_i_19_O_UNCONNECTED [3:0]),
        .S({\ADC_16Q48_OUT[0]_INST_0_i_26_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_27_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_28_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_29_n_0 }));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ADC_16Q48_OUT[0]_INST_0_i_2 
       (.I0(p0__6_n_97),
        .I1(p0__8_n_80),
        .I2(p0__10_n_63),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \ADC_16Q48_OUT[0]_INST_0_i_20 
       (.I0(p0__10_n_70),
        .I1(p0__6_n_104),
        .I2(p0__8_n_87),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_20_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \ADC_16Q48_OUT[0]_INST_0_i_21 
       (.I0(p0__6_n_104),
        .I1(p0__8_n_87),
        .I2(p0__10_n_70),
        .I3(p0__8_n_88),
        .I4(p0__6_n_105),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \ADC_16Q48_OUT[0]_INST_0_i_22 
       (.I0(p0__6_n_105),
        .I1(p0__8_n_88),
        .I2(p0__10_n_71),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_23 
       (.I0(p0__10_n_72),
        .I1(p0__8_n_89),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_24 
       (.I0(p0__10_n_73),
        .I1(p0__8_n_90),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_24_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[0]_INST_0_i_25 
       (.CI(\ADC_16Q48_OUT[0]_INST_0_i_30_n_0 ),
        .CO({\ADC_16Q48_OUT[0]_INST_0_i_25_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_25_n_1 ,\ADC_16Q48_OUT[0]_INST_0_i_25_n_2 ,\ADC_16Q48_OUT[0]_INST_0_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__10_n_78,p0__10_n_79,p0__10_n_80,p0__10_n_81}),
        .O(\NLW_ADC_16Q48_OUT[0]_INST_0_i_25_O_UNCONNECTED [3:0]),
        .S({\ADC_16Q48_OUT[0]_INST_0_i_31_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_32_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_33_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_34_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_26 
       (.I0(p0__10_n_74),
        .I1(p0__8_n_91),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_27 
       (.I0(p0__10_n_75),
        .I1(p0__8_n_92),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_28 
       (.I0(p0__10_n_76),
        .I1(p0__8_n_93),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_29 
       (.I0(p0__10_n_77),
        .I1(p0__8_n_94),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_29_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ADC_16Q48_OUT[0]_INST_0_i_3 
       (.I0(p0__6_n_98),
        .I1(p0__8_n_81),
        .I2(p0__10_n_64),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[0]_INST_0_i_30 
       (.CI(\ADC_16Q48_OUT[0]_INST_0_i_35_n_0 ),
        .CO({\ADC_16Q48_OUT[0]_INST_0_i_30_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_30_n_1 ,\ADC_16Q48_OUT[0]_INST_0_i_30_n_2 ,\ADC_16Q48_OUT[0]_INST_0_i_30_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__10_n_82,p0__10_n_83,p0__10_n_84,p0__10_n_85}),
        .O(\NLW_ADC_16Q48_OUT[0]_INST_0_i_30_O_UNCONNECTED [3:0]),
        .S({\ADC_16Q48_OUT[0]_INST_0_i_36_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_37_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_38_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_39_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_31 
       (.I0(p0__10_n_78),
        .I1(p0__8_n_95),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_32 
       (.I0(p0__10_n_79),
        .I1(p0__8_n_96),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_33 
       (.I0(p0__10_n_80),
        .I1(p0__8_n_97),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_34 
       (.I0(p0__10_n_81),
        .I1(p0__8_n_98),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_34_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[0]_INST_0_i_35 
       (.CI(1'b0),
        .CO({\ADC_16Q48_OUT[0]_INST_0_i_35_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_35_n_1 ,\ADC_16Q48_OUT[0]_INST_0_i_35_n_2 ,\ADC_16Q48_OUT[0]_INST_0_i_35_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__10_n_86,p0__10_n_87,p0__10_n_88,1'b0}),
        .O(\NLW_ADC_16Q48_OUT[0]_INST_0_i_35_O_UNCONNECTED [3:0]),
        .S({\ADC_16Q48_OUT[0]_INST_0_i_40_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_41_n_0 ,\ADC_16Q48_OUT[0]_INST_0_i_42_n_0 ,p0__10_n_89}));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_36 
       (.I0(p0__10_n_82),
        .I1(p0__8_n_99),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_37 
       (.I0(p0__10_n_83),
        .I1(p0__8_n_100),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_38 
       (.I0(p0__10_n_84),
        .I1(p0__8_n_101),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_39 
       (.I0(p0__10_n_85),
        .I1(p0__8_n_102),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_39_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ADC_16Q48_OUT[0]_INST_0_i_4 
       (.I0(p0__6_n_99),
        .I1(p0__8_n_82),
        .I2(p0__10_n_65),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_40 
       (.I0(p0__10_n_86),
        .I1(p0__8_n_103),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_41 
       (.I0(p0__10_n_87),
        .I1(p0__8_n_104),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[0]_INST_0_i_42 
       (.I0(p0__10_n_88),
        .I1(p0__8_n_105),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_42_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ADC_16Q48_OUT[0]_INST_0_i_5 
       (.I0(p0__6_n_100),
        .I1(p0__8_n_83),
        .I2(p0__10_n_66),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_5_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ADC_16Q48_OUT[0]_INST_0_i_6 
       (.I0(p0__6_n_96),
        .I1(p0__8_n_79),
        .I2(p0__10_n_62),
        .I3(\ADC_16Q48_OUT[0]_INST_0_i_2_n_0 ),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_6_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ADC_16Q48_OUT[0]_INST_0_i_7 
       (.I0(p0__6_n_97),
        .I1(p0__8_n_80),
        .I2(p0__10_n_63),
        .I3(\ADC_16Q48_OUT[0]_INST_0_i_3_n_0 ),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_7_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ADC_16Q48_OUT[0]_INST_0_i_8 
       (.I0(p0__6_n_98),
        .I1(p0__8_n_81),
        .I2(p0__10_n_64),
        .I3(\ADC_16Q48_OUT[0]_INST_0_i_4_n_0 ),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_8_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ADC_16Q48_OUT[0]_INST_0_i_9 
       (.I0(p0__6_n_99),
        .I1(p0__8_n_82),
        .I2(p0__10_n_65),
        .I3(\ADC_16Q48_OUT[0]_INST_0_i_5_n_0 ),
        .O(\ADC_16Q48_OUT[0]_INST_0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[10]_INST_0 
       (.CI(\ADC_16Q48_OUT[6]_INST_0_n_0 ),
        .CO({\ADC_16Q48_OUT[10]_INST_0_n_0 ,\ADC_16Q48_OUT[10]_INST_0_n_1 ,\ADC_16Q48_OUT[10]_INST_0_n_2 ,\ADC_16Q48_OUT[10]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({\ADC_16Q48_OUT[10]_INST_0_i_1_n_0 ,\ADC_16Q48_OUT[10]_INST_0_i_2_n_0 ,\ADC_16Q48_OUT[10]_INST_0_i_3_n_0 ,\ADC_16Q48_OUT[10]_INST_0_i_4_n_0 }),
        .O(ADC_16Q48_OUT[13:10]),
        .S({\ADC_16Q48_OUT[10]_INST_0_i_5_n_0 ,\ADC_16Q48_OUT[10]_INST_0_i_6_n_0 ,\ADC_16Q48_OUT[10]_INST_0_i_7_n_0 ,\ADC_16Q48_OUT[10]_INST_0_i_8_n_0 }));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    \ADC_16Q48_OUT[10]_INST_0_i_1 
       (.I0(p0__3_n_102),
        .I1(p0__6_n_85),
        .I2(p0__8_n_68),
        .I3(p0__3_n_103),
        .I4(p0__6_n_86),
        .O(\ADC_16Q48_OUT[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    \ADC_16Q48_OUT[10]_INST_0_i_2 
       (.I0(p0__3_n_103),
        .I1(p0__6_n_86),
        .I2(p0__8_n_69),
        .I3(p0__3_n_104),
        .I4(p0__6_n_87),
        .O(\ADC_16Q48_OUT[10]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    \ADC_16Q48_OUT[10]_INST_0_i_3 
       (.I0(p0__3_n_104),
        .I1(p0__6_n_87),
        .I2(p0__8_n_70),
        .I3(p0__3_n_105),
        .I4(p0__6_n_88),
        .O(\ADC_16Q48_OUT[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    \ADC_16Q48_OUT[10]_INST_0_i_4 
       (.I0(p0__3_n_105),
        .I1(p0__6_n_88),
        .I2(p0__8_n_71),
        .I3(p0__6_n_89),
        .I4(p0__8_n_72),
        .O(\ADC_16Q48_OUT[10]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    \ADC_16Q48_OUT[10]_INST_0_i_5 
       (.I0(\ADC_16Q48_OUT[10]_INST_0_i_1_n_0 ),
        .I1(p0__3_n_101),
        .I2(p0__6_n_84),
        .I3(p0__8_n_67),
        .I4(p0__6_n_85),
        .I5(p0__3_n_102),
        .O(\ADC_16Q48_OUT[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    \ADC_16Q48_OUT[10]_INST_0_i_6 
       (.I0(\ADC_16Q48_OUT[10]_INST_0_i_2_n_0 ),
        .I1(p0__3_n_102),
        .I2(p0__6_n_85),
        .I3(p0__8_n_68),
        .I4(p0__6_n_86),
        .I5(p0__3_n_103),
        .O(\ADC_16Q48_OUT[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    \ADC_16Q48_OUT[10]_INST_0_i_7 
       (.I0(\ADC_16Q48_OUT[10]_INST_0_i_3_n_0 ),
        .I1(p0__3_n_103),
        .I2(p0__6_n_86),
        .I3(p0__8_n_69),
        .I4(p0__6_n_87),
        .I5(p0__3_n_104),
        .O(\ADC_16Q48_OUT[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    \ADC_16Q48_OUT[10]_INST_0_i_8 
       (.I0(\ADC_16Q48_OUT[10]_INST_0_i_4_n_0 ),
        .I1(p0__3_n_104),
        .I2(p0__6_n_87),
        .I3(p0__8_n_70),
        .I4(p0__6_n_88),
        .I5(p0__3_n_105),
        .O(\ADC_16Q48_OUT[10]_INST_0_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[14]_INST_0 
       (.CI(\ADC_16Q48_OUT[10]_INST_0_n_0 ),
        .CO({\ADC_16Q48_OUT[14]_INST_0_n_0 ,\ADC_16Q48_OUT[14]_INST_0_n_1 ,\ADC_16Q48_OUT[14]_INST_0_n_2 ,\ADC_16Q48_OUT[14]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({\ADC_16Q48_OUT[14]_INST_0_i_1_n_0 ,\ADC_16Q48_OUT[14]_INST_0_i_2_n_0 ,\ADC_16Q48_OUT[14]_INST_0_i_3_n_0 ,\ADC_16Q48_OUT[14]_INST_0_i_4_n_0 }),
        .O(ADC_16Q48_OUT[17:14]),
        .S({\ADC_16Q48_OUT[14]_INST_0_i_5_n_0 ,\ADC_16Q48_OUT[14]_INST_0_i_6_n_0 ,\ADC_16Q48_OUT[14]_INST_0_i_7_n_0 ,\ADC_16Q48_OUT[14]_INST_0_i_8_n_0 }));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    \ADC_16Q48_OUT[14]_INST_0_i_1 
       (.I0(p0__3_n_98),
        .I1(p0__6_n_81),
        .I2(p0__8_n_64),
        .I3(p0__3_n_99),
        .I4(p0__6_n_82),
        .O(\ADC_16Q48_OUT[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    \ADC_16Q48_OUT[14]_INST_0_i_2 
       (.I0(p0__3_n_99),
        .I1(p0__6_n_82),
        .I2(p0__8_n_65),
        .I3(p0__3_n_100),
        .I4(p0__6_n_83),
        .O(\ADC_16Q48_OUT[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    \ADC_16Q48_OUT[14]_INST_0_i_3 
       (.I0(p0__3_n_100),
        .I1(p0__6_n_83),
        .I2(p0__8_n_66),
        .I3(p0__3_n_101),
        .I4(p0__6_n_84),
        .O(\ADC_16Q48_OUT[14]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    \ADC_16Q48_OUT[14]_INST_0_i_4 
       (.I0(p0__3_n_101),
        .I1(p0__6_n_84),
        .I2(p0__8_n_67),
        .I3(p0__3_n_102),
        .I4(p0__6_n_85),
        .O(\ADC_16Q48_OUT[14]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    \ADC_16Q48_OUT[14]_INST_0_i_5 
       (.I0(\ADC_16Q48_OUT[14]_INST_0_i_1_n_0 ),
        .I1(p0__3_n_97),
        .I2(p0__6_n_80),
        .I3(p0__8_n_63),
        .I4(p0__6_n_81),
        .I5(p0__3_n_98),
        .O(\ADC_16Q48_OUT[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    \ADC_16Q48_OUT[14]_INST_0_i_6 
       (.I0(\ADC_16Q48_OUT[14]_INST_0_i_2_n_0 ),
        .I1(p0__3_n_98),
        .I2(p0__6_n_81),
        .I3(p0__8_n_64),
        .I4(p0__6_n_82),
        .I5(p0__3_n_99),
        .O(\ADC_16Q48_OUT[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    \ADC_16Q48_OUT[14]_INST_0_i_7 
       (.I0(\ADC_16Q48_OUT[14]_INST_0_i_3_n_0 ),
        .I1(p0__3_n_99),
        .I2(p0__6_n_82),
        .I3(p0__8_n_65),
        .I4(p0__6_n_83),
        .I5(p0__3_n_100),
        .O(\ADC_16Q48_OUT[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    \ADC_16Q48_OUT[14]_INST_0_i_8 
       (.I0(\ADC_16Q48_OUT[14]_INST_0_i_4_n_0 ),
        .I1(p0__3_n_100),
        .I2(p0__6_n_83),
        .I3(p0__8_n_66),
        .I4(p0__6_n_84),
        .I5(p0__3_n_101),
        .O(\ADC_16Q48_OUT[14]_INST_0_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[18]_INST_0 
       (.CI(\ADC_16Q48_OUT[14]_INST_0_n_0 ),
        .CO({\ADC_16Q48_OUT[18]_INST_0_n_0 ,\ADC_16Q48_OUT[18]_INST_0_n_1 ,\ADC_16Q48_OUT[18]_INST_0_n_2 ,\ADC_16Q48_OUT[18]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({\ADC_16Q48_OUT[18]_INST_0_i_1_n_0 ,\ADC_16Q48_OUT[18]_INST_0_i_2_n_0 ,\ADC_16Q48_OUT[18]_INST_0_i_3_n_0 ,\ADC_16Q48_OUT[18]_INST_0_i_4_n_0 }),
        .O(ADC_16Q48_OUT[21:18]),
        .S({\ADC_16Q48_OUT[18]_INST_0_i_5_n_0 ,\ADC_16Q48_OUT[18]_INST_0_i_6_n_0 ,\ADC_16Q48_OUT[18]_INST_0_i_7_n_0 ,\ADC_16Q48_OUT[18]_INST_0_i_8_n_0 }));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    \ADC_16Q48_OUT[18]_INST_0_i_1 
       (.I0(p0__3_n_94),
        .I1(p0__6_n_77),
        .I2(p0__8_n_60),
        .I3(p0__3_n_95),
        .I4(p0__6_n_78),
        .O(\ADC_16Q48_OUT[18]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    \ADC_16Q48_OUT[18]_INST_0_i_2 
       (.I0(p0__3_n_95),
        .I1(p0__6_n_78),
        .I2(p0__8_n_61),
        .I3(p0__3_n_96),
        .I4(p0__6_n_79),
        .O(\ADC_16Q48_OUT[18]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    \ADC_16Q48_OUT[18]_INST_0_i_3 
       (.I0(p0__3_n_96),
        .I1(p0__6_n_79),
        .I2(p0__8_n_62),
        .I3(p0__3_n_97),
        .I4(p0__6_n_80),
        .O(\ADC_16Q48_OUT[18]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    \ADC_16Q48_OUT[18]_INST_0_i_4 
       (.I0(p0__3_n_97),
        .I1(p0__6_n_80),
        .I2(p0__8_n_63),
        .I3(p0__3_n_98),
        .I4(p0__6_n_81),
        .O(\ADC_16Q48_OUT[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    \ADC_16Q48_OUT[18]_INST_0_i_5 
       (.I0(\ADC_16Q48_OUT[18]_INST_0_i_1_n_0 ),
        .I1(p0__3_n_93),
        .I2(p0__6_n_76),
        .I3(p0__8_n_59),
        .I4(p0__6_n_77),
        .I5(p0__3_n_94),
        .O(\ADC_16Q48_OUT[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    \ADC_16Q48_OUT[18]_INST_0_i_6 
       (.I0(\ADC_16Q48_OUT[18]_INST_0_i_2_n_0 ),
        .I1(p0__3_n_94),
        .I2(p0__6_n_77),
        .I3(p0__8_n_60),
        .I4(p0__6_n_78),
        .I5(p0__3_n_95),
        .O(\ADC_16Q48_OUT[18]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    \ADC_16Q48_OUT[18]_INST_0_i_7 
       (.I0(\ADC_16Q48_OUT[18]_INST_0_i_3_n_0 ),
        .I1(p0__3_n_95),
        .I2(p0__6_n_78),
        .I3(p0__8_n_61),
        .I4(p0__6_n_79),
        .I5(p0__3_n_96),
        .O(\ADC_16Q48_OUT[18]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    \ADC_16Q48_OUT[18]_INST_0_i_8 
       (.I0(\ADC_16Q48_OUT[18]_INST_0_i_4_n_0 ),
        .I1(p0__3_n_96),
        .I2(p0__6_n_79),
        .I3(p0__8_n_62),
        .I4(p0__6_n_80),
        .I5(p0__3_n_97),
        .O(\ADC_16Q48_OUT[18]_INST_0_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[22]_INST_0 
       (.CI(\ADC_16Q48_OUT[18]_INST_0_n_0 ),
        .CO({\ADC_16Q48_OUT[22]_INST_0_n_0 ,\ADC_16Q48_OUT[22]_INST_0_n_1 ,\ADC_16Q48_OUT[22]_INST_0_n_2 ,\ADC_16Q48_OUT[22]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({\ADC_16Q48_OUT[22]_INST_0_i_1_n_0 ,\ADC_16Q48_OUT[22]_INST_0_i_2_n_0 ,\ADC_16Q48_OUT[22]_INST_0_i_3_n_0 ,\ADC_16Q48_OUT[22]_INST_0_i_4_n_0 }),
        .O(ADC_16Q48_OUT[25:22]),
        .S({\ADC_16Q48_OUT[22]_INST_0_i_5_n_0 ,\ADC_16Q48_OUT[22]_INST_0_i_6_n_0 ,\ADC_16Q48_OUT[22]_INST_0_i_7_n_0 ,\ADC_16Q48_OUT[22]_INST_0_i_8_n_0 }));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[22]_INST_0_i_1 
       (.I0(p0__3_n_91),
        .I1(p0__6_n_74),
        .I2(p0__3_n_90),
        .I3(p0__6_n_73),
        .O(\ADC_16Q48_OUT[22]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \ADC_16Q48_OUT[22]_INST_0_i_10 
       (.I0(p0__8_n_58),
        .I1(p0__3_n_92),
        .I2(p0__6_n_75),
        .O(\ADC_16Q48_OUT[22]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hD40000D4)) 
    \ADC_16Q48_OUT[22]_INST_0_i_2 
       (.I0(p0__8_n_58),
        .I1(p0__6_n_75),
        .I2(p0__3_n_92),
        .I3(p0__3_n_91),
        .I4(p0__6_n_74),
        .O(\ADC_16Q48_OUT[22]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0EE0E00E)) 
    \ADC_16Q48_OUT[22]_INST_0_i_3 
       (.I0(p0__3_n_93),
        .I1(p0__6_n_76),
        .I2(p0__6_n_75),
        .I3(p0__3_n_92),
        .I4(p0__8_n_58),
        .O(\ADC_16Q48_OUT[22]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    \ADC_16Q48_OUT[22]_INST_0_i_4 
       (.I0(p0__3_n_93),
        .I1(p0__6_n_76),
        .I2(p0__8_n_59),
        .I3(p0__3_n_94),
        .I4(p0__6_n_77),
        .O(\ADC_16Q48_OUT[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[22]_INST_0_i_5 
       (.I0(p0__6_n_74),
        .I1(p0__3_n_91),
        .I2(p0__6_n_72),
        .I3(p0__3_n_89),
        .I4(p0__6_n_73),
        .I5(p0__3_n_90),
        .O(\ADC_16Q48_OUT[22]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h96969669)) 
    \ADC_16Q48_OUT[22]_INST_0_i_6 
       (.I0(\ADC_16Q48_OUT[22]_INST_0_i_2_n_0 ),
        .I1(p0__6_n_73),
        .I2(p0__3_n_90),
        .I3(p0__6_n_74),
        .I4(p0__3_n_91),
        .O(\ADC_16Q48_OUT[22]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0E1E10F1EF0F0E1)) 
    \ADC_16Q48_OUT[22]_INST_0_i_7 
       (.I0(p0__6_n_76),
        .I1(p0__3_n_93),
        .I2(\ADC_16Q48_OUT[22]_INST_0_i_9_n_0 ),
        .I3(p0__3_n_92),
        .I4(p0__6_n_75),
        .I5(p0__8_n_58),
        .O(\ADC_16Q48_OUT[22]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h01FE1FE01FE0FE01)) 
    \ADC_16Q48_OUT[22]_INST_0_i_8 
       (.I0(p0__6_n_77),
        .I1(p0__3_n_94),
        .I2(p0__8_n_59),
        .I3(\ADC_16Q48_OUT[22]_INST_0_i_10_n_0 ),
        .I4(p0__6_n_76),
        .I5(p0__3_n_93),
        .O(\ADC_16Q48_OUT[22]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[22]_INST_0_i_9 
       (.I0(p0__6_n_74),
        .I1(p0__3_n_91),
        .O(\ADC_16Q48_OUT[22]_INST_0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[26]_INST_0 
       (.CI(\ADC_16Q48_OUT[22]_INST_0_n_0 ),
        .CO({\ADC_16Q48_OUT[26]_INST_0_n_0 ,\ADC_16Q48_OUT[26]_INST_0_n_1 ,\ADC_16Q48_OUT[26]_INST_0_n_2 ,\ADC_16Q48_OUT[26]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({\ADC_16Q48_OUT[26]_INST_0_i_1_n_0 ,\ADC_16Q48_OUT[26]_INST_0_i_2_n_0 ,\ADC_16Q48_OUT[26]_INST_0_i_3_n_0 ,\ADC_16Q48_OUT[26]_INST_0_i_4_n_0 }),
        .O(ADC_16Q48_OUT[29:26]),
        .S({\ADC_16Q48_OUT[26]_INST_0_i_5_n_0 ,\ADC_16Q48_OUT[26]_INST_0_i_6_n_0 ,\ADC_16Q48_OUT[26]_INST_0_i_7_n_0 ,\ADC_16Q48_OUT[26]_INST_0_i_8_n_0 }));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[26]_INST_0_i_1 
       (.I0(p0__4_n_104),
        .I1(p0__6_n_70),
        .I2(p0__4_n_103),
        .I3(p0__6_n_69),
        .O(\ADC_16Q48_OUT[26]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[26]_INST_0_i_2 
       (.I0(p0__4_n_105),
        .I1(p0__6_n_71),
        .I2(p0__4_n_104),
        .I3(p0__6_n_70),
        .O(\ADC_16Q48_OUT[26]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[26]_INST_0_i_3 
       (.I0(p0__3_n_89),
        .I1(p0__6_n_72),
        .I2(p0__4_n_105),
        .I3(p0__6_n_71),
        .O(\ADC_16Q48_OUT[26]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[26]_INST_0_i_4 
       (.I0(p0__3_n_90),
        .I1(p0__6_n_73),
        .I2(p0__3_n_89),
        .I3(p0__6_n_72),
        .O(\ADC_16Q48_OUT[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[26]_INST_0_i_5 
       (.I0(p0__6_n_70),
        .I1(p0__4_n_104),
        .I2(p0__6_n_68),
        .I3(p0__4_n_102),
        .I4(p0__6_n_69),
        .I5(p0__4_n_103),
        .O(\ADC_16Q48_OUT[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[26]_INST_0_i_6 
       (.I0(p0__6_n_71),
        .I1(p0__4_n_105),
        .I2(p0__6_n_69),
        .I3(p0__4_n_103),
        .I4(p0__6_n_70),
        .I5(p0__4_n_104),
        .O(\ADC_16Q48_OUT[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[26]_INST_0_i_7 
       (.I0(p0__6_n_72),
        .I1(p0__3_n_89),
        .I2(p0__6_n_70),
        .I3(p0__4_n_104),
        .I4(p0__6_n_71),
        .I5(p0__4_n_105),
        .O(\ADC_16Q48_OUT[26]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[26]_INST_0_i_8 
       (.I0(p0__6_n_73),
        .I1(p0__3_n_90),
        .I2(p0__6_n_71),
        .I3(p0__4_n_105),
        .I4(p0__6_n_72),
        .I5(p0__3_n_89),
        .O(\ADC_16Q48_OUT[26]_INST_0_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[2]_INST_0 
       (.CI(\ADC_16Q48_OUT[0]_INST_0_n_0 ),
        .CO({\ADC_16Q48_OUT[2]_INST_0_n_0 ,\ADC_16Q48_OUT[2]_INST_0_n_1 ,\ADC_16Q48_OUT[2]_INST_0_n_2 ,\ADC_16Q48_OUT[2]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({\ADC_16Q48_OUT[2]_INST_0_i_1_n_0 ,\ADC_16Q48_OUT[2]_INST_0_i_2_n_0 ,\ADC_16Q48_OUT[2]_INST_0_i_3_n_0 ,\ADC_16Q48_OUT[2]_INST_0_i_4_n_0 }),
        .O(ADC_16Q48_OUT[5:2]),
        .S({\ADC_16Q48_OUT[2]_INST_0_i_5_n_0 ,\ADC_16Q48_OUT[2]_INST_0_i_6_n_0 ,\ADC_16Q48_OUT[2]_INST_0_i_7_n_0 ,\ADC_16Q48_OUT[2]_INST_0_i_8_n_0 }));
  LUT3 #(
    .INIT(8'h96)) 
    \ADC_16Q48_OUT[2]_INST_0_i_1 
       (.I0(p0__10_n_58),
        .I1(p0__8_n_75),
        .I2(p0__6_n_92),
        .O(\ADC_16Q48_OUT[2]_INST_0_i_1_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ADC_16Q48_OUT[2]_INST_0_i_2 
       (.I0(p0__6_n_94),
        .I1(p0__8_n_77),
        .I2(p0__10_n_60),
        .O(\ADC_16Q48_OUT[2]_INST_0_i_2_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ADC_16Q48_OUT[2]_INST_0_i_3 
       (.I0(p0__6_n_95),
        .I1(p0__8_n_78),
        .I2(p0__10_n_61),
        .O(\ADC_16Q48_OUT[2]_INST_0_i_3_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ADC_16Q48_OUT[2]_INST_0_i_4 
       (.I0(p0__6_n_96),
        .I1(p0__8_n_79),
        .I2(p0__10_n_62),
        .O(\ADC_16Q48_OUT[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \ADC_16Q48_OUT[2]_INST_0_i_5 
       (.I0(p0__10_n_58),
        .I1(p0__8_n_75),
        .I2(p0__6_n_92),
        .I3(p0__10_n_59),
        .I4(p0__8_n_76),
        .I5(p0__6_n_93),
        .O(\ADC_16Q48_OUT[2]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \ADC_16Q48_OUT[2]_INST_0_i_6 
       (.I0(\ADC_16Q48_OUT[2]_INST_0_i_2_n_0 ),
        .I1(p0__8_n_76),
        .I2(p0__6_n_93),
        .I3(p0__10_n_59),
        .O(\ADC_16Q48_OUT[2]_INST_0_i_6_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ADC_16Q48_OUT[2]_INST_0_i_7 
       (.I0(p0__6_n_94),
        .I1(p0__8_n_77),
        .I2(p0__10_n_60),
        .I3(\ADC_16Q48_OUT[2]_INST_0_i_3_n_0 ),
        .O(\ADC_16Q48_OUT[2]_INST_0_i_7_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ADC_16Q48_OUT[2]_INST_0_i_8 
       (.I0(p0__6_n_95),
        .I1(p0__8_n_78),
        .I2(p0__10_n_61),
        .I3(\ADC_16Q48_OUT[2]_INST_0_i_4_n_0 ),
        .O(\ADC_16Q48_OUT[2]_INST_0_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[30]_INST_0 
       (.CI(\ADC_16Q48_OUT[26]_INST_0_n_0 ),
        .CO({\ADC_16Q48_OUT[30]_INST_0_n_0 ,\ADC_16Q48_OUT[30]_INST_0_n_1 ,\ADC_16Q48_OUT[30]_INST_0_n_2 ,\ADC_16Q48_OUT[30]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({\ADC_16Q48_OUT[30]_INST_0_i_1_n_0 ,\ADC_16Q48_OUT[30]_INST_0_i_2_n_0 ,\ADC_16Q48_OUT[30]_INST_0_i_3_n_0 ,\ADC_16Q48_OUT[30]_INST_0_i_4_n_0 }),
        .O(ADC_16Q48_OUT[33:30]),
        .S({\ADC_16Q48_OUT[30]_INST_0_i_5_n_0 ,\ADC_16Q48_OUT[30]_INST_0_i_6_n_0 ,\ADC_16Q48_OUT[30]_INST_0_i_7_n_0 ,\ADC_16Q48_OUT[30]_INST_0_i_8_n_0 }));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[30]_INST_0_i_1 
       (.I0(p0__4_n_100),
        .I1(p0__6_n_66),
        .I2(p0__4_n_99),
        .I3(p0__6_n_65),
        .O(\ADC_16Q48_OUT[30]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[30]_INST_0_i_2 
       (.I0(p0__4_n_101),
        .I1(p0__6_n_67),
        .I2(p0__4_n_100),
        .I3(p0__6_n_66),
        .O(\ADC_16Q48_OUT[30]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[30]_INST_0_i_3 
       (.I0(p0__4_n_102),
        .I1(p0__6_n_68),
        .I2(p0__4_n_101),
        .I3(p0__6_n_67),
        .O(\ADC_16Q48_OUT[30]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[30]_INST_0_i_4 
       (.I0(p0__4_n_103),
        .I1(p0__6_n_69),
        .I2(p0__4_n_102),
        .I3(p0__6_n_68),
        .O(\ADC_16Q48_OUT[30]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[30]_INST_0_i_5 
       (.I0(p0__6_n_66),
        .I1(p0__4_n_100),
        .I2(p0__6_n_64),
        .I3(p0__4_n_98),
        .I4(p0__6_n_65),
        .I5(p0__4_n_99),
        .O(\ADC_16Q48_OUT[30]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[30]_INST_0_i_6 
       (.I0(p0__6_n_67),
        .I1(p0__4_n_101),
        .I2(p0__6_n_65),
        .I3(p0__4_n_99),
        .I4(p0__6_n_66),
        .I5(p0__4_n_100),
        .O(\ADC_16Q48_OUT[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[30]_INST_0_i_7 
       (.I0(p0__6_n_68),
        .I1(p0__4_n_102),
        .I2(p0__6_n_66),
        .I3(p0__4_n_100),
        .I4(p0__6_n_67),
        .I5(p0__4_n_101),
        .O(\ADC_16Q48_OUT[30]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[30]_INST_0_i_8 
       (.I0(p0__6_n_69),
        .I1(p0__4_n_103),
        .I2(p0__6_n_67),
        .I3(p0__4_n_101),
        .I4(p0__6_n_68),
        .I5(p0__4_n_102),
        .O(\ADC_16Q48_OUT[30]_INST_0_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[34]_INST_0 
       (.CI(\ADC_16Q48_OUT[30]_INST_0_n_0 ),
        .CO({\ADC_16Q48_OUT[34]_INST_0_n_0 ,\ADC_16Q48_OUT[34]_INST_0_n_1 ,\ADC_16Q48_OUT[34]_INST_0_n_2 ,\ADC_16Q48_OUT[34]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({\ADC_16Q48_OUT[34]_INST_0_i_1_n_0 ,\ADC_16Q48_OUT[34]_INST_0_i_2_n_0 ,\ADC_16Q48_OUT[34]_INST_0_i_3_n_0 ,\ADC_16Q48_OUT[34]_INST_0_i_4_n_0 }),
        .O(ADC_16Q48_OUT[37:34]),
        .S({\ADC_16Q48_OUT[34]_INST_0_i_5_n_0 ,\ADC_16Q48_OUT[34]_INST_0_i_6_n_0 ,\ADC_16Q48_OUT[34]_INST_0_i_7_n_0 ,\ADC_16Q48_OUT[34]_INST_0_i_8_n_0 }));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[34]_INST_0_i_1 
       (.I0(p0__4_n_96),
        .I1(p0__6_n_62),
        .I2(p0__4_n_95),
        .I3(p0__6_n_61),
        .O(\ADC_16Q48_OUT[34]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[34]_INST_0_i_2 
       (.I0(p0__4_n_97),
        .I1(p0__6_n_63),
        .I2(p0__4_n_96),
        .I3(p0__6_n_62),
        .O(\ADC_16Q48_OUT[34]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[34]_INST_0_i_3 
       (.I0(p0__4_n_98),
        .I1(p0__6_n_64),
        .I2(p0__4_n_97),
        .I3(p0__6_n_63),
        .O(\ADC_16Q48_OUT[34]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[34]_INST_0_i_4 
       (.I0(p0__4_n_99),
        .I1(p0__6_n_65),
        .I2(p0__4_n_98),
        .I3(p0__6_n_64),
        .O(\ADC_16Q48_OUT[34]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[34]_INST_0_i_5 
       (.I0(p0__6_n_62),
        .I1(p0__4_n_96),
        .I2(p0__6_n_60),
        .I3(p0__4_n_94),
        .I4(p0__6_n_61),
        .I5(p0__4_n_95),
        .O(\ADC_16Q48_OUT[34]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[34]_INST_0_i_6 
       (.I0(p0__6_n_63),
        .I1(p0__4_n_97),
        .I2(p0__6_n_61),
        .I3(p0__4_n_95),
        .I4(p0__6_n_62),
        .I5(p0__4_n_96),
        .O(\ADC_16Q48_OUT[34]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[34]_INST_0_i_7 
       (.I0(p0__6_n_64),
        .I1(p0__4_n_98),
        .I2(p0__6_n_62),
        .I3(p0__4_n_96),
        .I4(p0__6_n_63),
        .I5(p0__4_n_97),
        .O(\ADC_16Q48_OUT[34]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[34]_INST_0_i_8 
       (.I0(p0__6_n_65),
        .I1(p0__4_n_99),
        .I2(p0__6_n_63),
        .I3(p0__4_n_97),
        .I4(p0__6_n_64),
        .I5(p0__4_n_98),
        .O(\ADC_16Q48_OUT[34]_INST_0_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[38]_INST_0 
       (.CI(\ADC_16Q48_OUT[34]_INST_0_n_0 ),
        .CO({\ADC_16Q48_OUT[38]_INST_0_n_0 ,\ADC_16Q48_OUT[38]_INST_0_n_1 ,\ADC_16Q48_OUT[38]_INST_0_n_2 ,\ADC_16Q48_OUT[38]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__4_n_91,\ADC_16Q48_OUT[38]_INST_0_i_1_n_0 ,\ADC_16Q48_OUT[38]_INST_0_i_2_n_0 ,\ADC_16Q48_OUT[38]_INST_0_i_3_n_0 }),
        .O(ADC_16Q48_OUT[41:38]),
        .S({\ADC_16Q48_OUT[38]_INST_0_i_4_n_0 ,\ADC_16Q48_OUT[38]_INST_0_i_5_n_0 ,\ADC_16Q48_OUT[38]_INST_0_i_6_n_0 ,\ADC_16Q48_OUT[38]_INST_0_i_7_n_0 }));
  LUT4 #(
    .INIT(16'hDDD4)) 
    \ADC_16Q48_OUT[38]_INST_0_i_1 
       (.I0(p0__6_n_58),
        .I1(p0__4_n_92),
        .I2(p0__4_n_93),
        .I3(p0__6_n_59),
        .O(\ADC_16Q48_OUT[38]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[38]_INST_0_i_2 
       (.I0(p0__4_n_94),
        .I1(p0__6_n_60),
        .I2(p0__4_n_93),
        .I3(p0__6_n_59),
        .O(\ADC_16Q48_OUT[38]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[38]_INST_0_i_3 
       (.I0(p0__4_n_95),
        .I1(p0__6_n_61),
        .I2(p0__4_n_94),
        .I3(p0__6_n_60),
        .O(\ADC_16Q48_OUT[38]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ADC_16Q48_OUT[38]_INST_0_i_4 
       (.I0(p0__4_n_91),
        .I1(p0__4_n_90),
        .O(\ADC_16Q48_OUT[38]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hE0FE1F01)) 
    \ADC_16Q48_OUT[38]_INST_0_i_5 
       (.I0(p0__6_n_59),
        .I1(p0__4_n_93),
        .I2(p0__4_n_92),
        .I3(p0__6_n_58),
        .I4(p0__4_n_91),
        .O(\ADC_16Q48_OUT[38]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[38]_INST_0_i_6 
       (.I0(p0__6_n_60),
        .I1(p0__4_n_94),
        .I2(p0__6_n_58),
        .I3(p0__4_n_92),
        .I4(p0__6_n_59),
        .I5(p0__4_n_93),
        .O(\ADC_16Q48_OUT[38]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[38]_INST_0_i_7 
       (.I0(p0__6_n_61),
        .I1(p0__4_n_95),
        .I2(p0__6_n_59),
        .I3(p0__4_n_93),
        .I4(p0__6_n_60),
        .I5(p0__4_n_94),
        .O(\ADC_16Q48_OUT[38]_INST_0_i_7_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[42]_INST_0 
       (.CI(\ADC_16Q48_OUT[38]_INST_0_n_0 ),
        .CO({\ADC_16Q48_OUT[42]_INST_0_n_0 ,\ADC_16Q48_OUT[42]_INST_0_n_1 ,\ADC_16Q48_OUT[42]_INST_0_n_2 ,\ADC_16Q48_OUT[42]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__4_n_87,p0__4_n_88,p0__4_n_89,p0__4_n_90}),
        .O(ADC_16Q48_OUT[45:42]),
        .S({\ADC_16Q48_OUT[42]_INST_0_i_1_n_0 ,\ADC_16Q48_OUT[42]_INST_0_i_2_n_0 ,\ADC_16Q48_OUT[42]_INST_0_i_3_n_0 ,\ADC_16Q48_OUT[42]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \ADC_16Q48_OUT[42]_INST_0_i_1 
       (.I0(p0__4_n_87),
        .I1(p0__4_n_86),
        .O(\ADC_16Q48_OUT[42]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ADC_16Q48_OUT[42]_INST_0_i_2 
       (.I0(p0__4_n_88),
        .I1(p0__4_n_87),
        .O(\ADC_16Q48_OUT[42]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ADC_16Q48_OUT[42]_INST_0_i_3 
       (.I0(p0__4_n_89),
        .I1(p0__4_n_88),
        .O(\ADC_16Q48_OUT[42]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ADC_16Q48_OUT[42]_INST_0_i_4 
       (.I0(p0__4_n_90),
        .I1(p0__4_n_89),
        .O(\ADC_16Q48_OUT[42]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[46]_INST_0 
       (.CI(\ADC_16Q48_OUT[42]_INST_0_n_0 ),
        .CO({\ADC_16Q48_OUT[46]_INST_0_n_0 ,\ADC_16Q48_OUT[46]_INST_0_n_1 ,\ADC_16Q48_OUT[46]_INST_0_n_2 ,\ADC_16Q48_OUT[46]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__4_n_83,p0__4_n_84,p0__4_n_85,p0__4_n_86}),
        .O(ADC_16Q48_OUT[49:46]),
        .S({\ADC_16Q48_OUT[46]_INST_0_i_1_n_0 ,\ADC_16Q48_OUT[46]_INST_0_i_2_n_0 ,\ADC_16Q48_OUT[46]_INST_0_i_3_n_0 ,\ADC_16Q48_OUT[46]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \ADC_16Q48_OUT[46]_INST_0_i_1 
       (.I0(p0__4_n_83),
        .I1(p0__4_n_82),
        .O(\ADC_16Q48_OUT[46]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ADC_16Q48_OUT[46]_INST_0_i_2 
       (.I0(p0__4_n_84),
        .I1(p0__4_n_83),
        .O(\ADC_16Q48_OUT[46]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ADC_16Q48_OUT[46]_INST_0_i_3 
       (.I0(p0__4_n_85),
        .I1(p0__4_n_84),
        .O(\ADC_16Q48_OUT[46]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ADC_16Q48_OUT[46]_INST_0_i_4 
       (.I0(p0__4_n_86),
        .I1(p0__4_n_85),
        .O(\ADC_16Q48_OUT[46]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[50]_INST_0 
       (.CI(\ADC_16Q48_OUT[46]_INST_0_n_0 ),
        .CO({\ADC_16Q48_OUT[50]_INST_0_n_0 ,\ADC_16Q48_OUT[50]_INST_0_n_1 ,\ADC_16Q48_OUT[50]_INST_0_n_2 ,\ADC_16Q48_OUT[50]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__4_n_79,p0__4_n_80,p0__4_n_81,p0__4_n_82}),
        .O(ADC_16Q48_OUT[53:50]),
        .S({\ADC_16Q48_OUT[50]_INST_0_i_1_n_0 ,\ADC_16Q48_OUT[50]_INST_0_i_2_n_0 ,\ADC_16Q48_OUT[50]_INST_0_i_3_n_0 ,\ADC_16Q48_OUT[50]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \ADC_16Q48_OUT[50]_INST_0_i_1 
       (.I0(p0__4_n_79),
        .I1(p0__4_n_78),
        .O(\ADC_16Q48_OUT[50]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ADC_16Q48_OUT[50]_INST_0_i_2 
       (.I0(p0__4_n_80),
        .I1(p0__4_n_79),
        .O(\ADC_16Q48_OUT[50]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ADC_16Q48_OUT[50]_INST_0_i_3 
       (.I0(p0__4_n_81),
        .I1(p0__4_n_80),
        .O(\ADC_16Q48_OUT[50]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ADC_16Q48_OUT[50]_INST_0_i_4 
       (.I0(p0__4_n_82),
        .I1(p0__4_n_81),
        .O(\ADC_16Q48_OUT[50]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[54]_INST_0 
       (.CI(\ADC_16Q48_OUT[50]_INST_0_n_0 ),
        .CO(\NLW_ADC_16Q48_OUT[54]_INST_0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ADC_16Q48_OUT[54]_INST_0_O_UNCONNECTED [3:1],ADC_16Q48_OUT[54]}),
        .S({1'b0,1'b0,1'b0,\ADC_16Q48_OUT[54]_INST_0_i_1_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \ADC_16Q48_OUT[54]_INST_0_i_1 
       (.I0(p0__4_n_78),
        .I1(p0__4_n_77),
        .O(\ADC_16Q48_OUT[54]_INST_0_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ADC_16Q48_OUT[6]_INST_0 
       (.CI(\ADC_16Q48_OUT[2]_INST_0_n_0 ),
        .CO({\ADC_16Q48_OUT[6]_INST_0_n_0 ,\ADC_16Q48_OUT[6]_INST_0_n_1 ,\ADC_16Q48_OUT[6]_INST_0_n_2 ,\ADC_16Q48_OUT[6]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({\ADC_16Q48_OUT[6]_INST_0_i_1_n_0 ,\ADC_16Q48_OUT[6]_INST_0_i_2_n_0 ,\ADC_16Q48_OUT[6]_INST_0_i_3_n_0 ,\ADC_16Q48_OUT[6]_INST_0_i_4_n_0 }),
        .O(ADC_16Q48_OUT[9:6]),
        .S({\ADC_16Q48_OUT[6]_INST_0_i_5_n_0 ,\ADC_16Q48_OUT[6]_INST_0_i_6_n_0 ,\ADC_16Q48_OUT[6]_INST_0_i_7_n_0 ,\ADC_16Q48_OUT[6]_INST_0_i_8_n_0 }));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    \ADC_16Q48_OUT[6]_INST_0_i_1 
       (.I0(p0__6_n_89),
        .I1(p0__8_n_72),
        .I2(p0__8_n_71),
        .I3(p0__6_n_88),
        .I4(p0__3_n_105),
        .O(\ADC_16Q48_OUT[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[6]_INST_0_i_2 
       (.I0(p0__6_n_91),
        .I1(p0__8_n_74),
        .I2(p0__6_n_90),
        .I3(p0__8_n_73),
        .O(\ADC_16Q48_OUT[6]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hE00E)) 
    \ADC_16Q48_OUT[6]_INST_0_i_3 
       (.I0(p0__6_n_92),
        .I1(p0__8_n_75),
        .I2(p0__6_n_91),
        .I3(p0__8_n_74),
        .O(\ADC_16Q48_OUT[6]_INST_0_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \ADC_16Q48_OUT[6]_INST_0_i_4 
       (.I0(p0__6_n_92),
        .I1(p0__8_n_75),
        .I2(p0__10_n_58),
        .O(\ADC_16Q48_OUT[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9666966696666669)) 
    \ADC_16Q48_OUT[6]_INST_0_i_5 
       (.I0(\ADC_16Q48_OUT[6]_INST_0_i_9_n_0 ),
        .I1(p0__8_n_71),
        .I2(p0__8_n_72),
        .I3(p0__6_n_89),
        .I4(p0__8_n_73),
        .I5(p0__6_n_90),
        .O(\ADC_16Q48_OUT[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[6]_INST_0_i_6 
       (.I0(p0__8_n_74),
        .I1(p0__6_n_91),
        .I2(p0__8_n_72),
        .I3(p0__6_n_89),
        .I4(p0__8_n_73),
        .I5(p0__6_n_90),
        .O(\ADC_16Q48_OUT[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    \ADC_16Q48_OUT[6]_INST_0_i_7 
       (.I0(p0__8_n_75),
        .I1(p0__6_n_92),
        .I2(p0__8_n_73),
        .I3(p0__6_n_90),
        .I4(p0__8_n_74),
        .I5(p0__6_n_91),
        .O(\ADC_16Q48_OUT[6]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h693C3C96)) 
    \ADC_16Q48_OUT[6]_INST_0_i_8 
       (.I0(p0__10_n_58),
        .I1(p0__8_n_74),
        .I2(p0__6_n_91),
        .I3(p0__8_n_75),
        .I4(p0__6_n_92),
        .O(\ADC_16Q48_OUT[6]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ADC_16Q48_OUT[6]_INST_0_i_9 
       (.I0(p0__6_n_88),
        .I1(p0__3_n_105),
        .O(\ADC_16Q48_OUT[6]_INST_0_i_9_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x20 12}}" *) 
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
    p0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,p0__0_n_0,p0__1_n_0,p0__2_n_0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .CEB2(p0__4_0),
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
        .MULTSIGNOUT(NLW_p0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0_OVERFLOW_UNCONNECTED),
        .P(NLW_p0_P_UNCONNECTED[47:0]),
        .PATTERNBDETECT(NLW_p0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0_n_106,p0_n_107,p0_n_108,p0_n_109,p0_n_110,p0_n_111,p0_n_112,p0_n_113,p0_n_114,p0_n_115,p0_n_116,p0_n_117,p0_n_118,p0_n_119,p0_n_120,p0_n_121,p0_n_122,p0_n_123,p0_n_124,p0_n_125,p0_n_126,p0_n_127,p0_n_128,p0_n_129,p0_n_130,p0_n_131,p0_n_132,p0_n_133,p0_n_134,p0_n_135,p0_n_136,p0_n_137,p0_n_138,p0_n_139,p0_n_140,p0_n_141,p0_n_142,p0_n_143,p0_n_144,p0_n_145,p0_n_146,p0_n_147,p0_n_148,p0_n_149,p0_n_150,p0_n_151,p0_n_152,p0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(REG_RST),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0_UNDERFLOW_UNCONNECTED));
  FDRE p0__0
       (.C(ADC_CLK),
        .CE(E),
        .D(out[2]),
        .Q(p0__0_n_0),
        .R(1'b0));
  FDRE p0__1
       (.C(ADC_CLK),
        .CE(E),
        .D(out[1]),
        .Q(p0__1_n_0),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 12}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("CASCADE"),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({p0__9_n_24,p0__9_n_25,p0__9_n_26,p0__9_n_27,p0__9_n_28,p0__9_n_29,p0__9_n_30,p0__9_n_31,p0__9_n_32,p0__9_n_33,p0__9_n_34,p0__9_n_35,p0__9_n_36,p0__9_n_37,p0__9_n_38,p0__9_n_39,p0__9_n_40,p0__9_n_41,p0__9_n_42,p0__9_n_43,p0__9_n_44,p0__9_n_45,p0__9_n_46,p0__9_n_47,p0__9_n_48,p0__9_n_49,p0__9_n_50,p0__9_n_51,p0__9_n_52,p0__9_n_53}),
        .ACOUT(NLW_p0__10_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({p0__9_n_6,p0__9_n_7,p0__9_n_8,p0__9_n_9,p0__9_n_10,p0__9_n_11,p0__9_n_12,p0__9_n_13,p0__9_n_14,p0__9_n_15,p0__9_n_16,p0__9_n_17,p0__9_n_18,p0__9_n_19,p0__9_n_20,p0__9_n_21,p0__9_n_22,p0__9_n_23}),
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
        .MULTSIGNOUT(NLW_p0__10_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__10_OVERFLOW_UNCONNECTED),
        .P({p0__10_n_58,p0__10_n_59,p0__10_n_60,p0__10_n_61,p0__10_n_62,p0__10_n_63,p0__10_n_64,p0__10_n_65,p0__10_n_66,p0__10_n_67,p0__10_n_68,p0__10_n_69,p0__10_n_70,p0__10_n_71,p0__10_n_72,p0__10_n_73,p0__10_n_74,p0__10_n_75,p0__10_n_76,p0__10_n_77,p0__10_n_78,p0__10_n_79,p0__10_n_80,p0__10_n_81,p0__10_n_82,p0__10_n_83,p0__10_n_84,p0__10_n_85,p0__10_n_86,p0__10_n_87,p0__10_n_88,p0__10_n_89,p0__10_n_90,p0__10_n_91,p0__10_n_92,p0__10_n_93,p0__10_n_94,p0__10_n_95,p0__10_n_96,p0__10_n_97,p0__10_n_98,p0__10_n_99,p0__10_n_100,p0__10_n_101,p0__10_n_102,p0__10_n_103,p0__10_n_104,p0__10_n_105}),
        .PATTERNBDETECT(NLW_p0__10_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__10_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__9_n_106,p0__9_n_107,p0__9_n_108,p0__9_n_109,p0__9_n_110,p0__9_n_111,p0__9_n_112,p0__9_n_113,p0__9_n_114,p0__9_n_115,p0__9_n_116,p0__9_n_117,p0__9_n_118,p0__9_n_119,p0__9_n_120,p0__9_n_121,p0__9_n_122,p0__9_n_123,p0__9_n_124,p0__9_n_125,p0__9_n_126,p0__9_n_127,p0__9_n_128,p0__9_n_129,p0__9_n_130,p0__9_n_131,p0__9_n_132,p0__9_n_133,p0__9_n_134,p0__9_n_135,p0__9_n_136,p0__9_n_137,p0__9_n_138,p0__9_n_139,p0__9_n_140,p0__9_n_141,p0__9_n_142,p0__9_n_143,p0__9_n_144,p0__9_n_145,p0__9_n_146,p0__9_n_147,p0__9_n_148,p0__9_n_149,p0__9_n_150,p0__9_n_151,p0__9_n_152,p0__9_n_153}),
        .PCOUT(NLW_p0__10_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_p0__10_UNDERFLOW_UNCONNECTED));
  FDRE p0__18
       (.C(ADC_CLK),
        .CE(E),
        .D(out[11]),
        .Q(p0__18_n_0),
        .R(1'b0));
  FDRE p0__19
       (.C(ADC_CLK),
        .CE(E),
        .D(out[10]),
        .Q(p0__19_n_0),
        .R(1'b0));
  FDRE p0__2
       (.C(ADC_CLK),
        .CE(E),
        .D(out[0]),
        .Q(p0__2_n_0),
        .R(1'b0));
  FDRE p0__20
       (.C(ADC_CLK),
        .CE(E),
        .D(out[9]),
        .Q(p0__20_n_0),
        .R(1'b0));
  FDRE p0__21
       (.C(ADC_CLK),
        .CE(E),
        .D(out[8]),
        .Q(p0__21_n_0),
        .R(1'b0));
  FDRE p0__22
       (.C(ADC_CLK),
        .CE(E),
        .D(out[7]),
        .Q(p0__22_n_0),
        .R(1'b0));
  FDRE p0__23
       (.C(ADC_CLK),
        .CE(E),
        .D(out[6]),
        .Q(p0__23_n_0),
        .R(1'b0));
  FDRE p0__24
       (.C(ADC_CLK),
        .CE(E),
        .D(out[5]),
        .Q(p0__24_n_0),
        .R(1'b0));
  FDRE p0__25
       (.C(ADC_CLK),
        .CE(E),
        .D(out[4]),
        .Q(p0__25_n_0),
        .R(1'b0));
  FDRE p0__26
       (.C(ADC_CLK),
        .CE(E),
        .D(out[3]),
        .Q(p0__26_n_0),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 9x18 12}}" *) 
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__19_n_0,p0__20_n_0,p0__21_n_0,p0__22_n_0,p0__23_n_0,p0__24_n_0,p0__25_n_0,p0__26_n_0}),
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
        .CEB2(p0__4_0),
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
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__3_OVERFLOW_UNCONNECTED),
        .P({p0__3_n_58,p0__3_n_59,p0__3_n_60,p0__3_n_61,p0__3_n_62,p0__3_n_63,p0__3_n_64,p0__3_n_65,p0__3_n_66,p0__3_n_67,p0__3_n_68,p0__3_n_69,p0__3_n_70,p0__3_n_71,p0__3_n_72,p0__3_n_73,p0__3_n_74,p0__3_n_75,p0__3_n_76,p0__3_n_77,p0__3_n_78,p0__3_n_79,p0__3_n_80,p0__3_n_81,p0__3_n_82,p0__3_n_83,p0__3_n_84,p0__3_n_85,p0__3_n_86,p0__3_n_87,p0__3_n_88,p0__3_n_89,p0__3_n_90,p0__3_n_91,p0__3_n_92,p0__3_n_93,p0__3_n_94,p0__3_n_95,p0__3_n_96,p0__3_n_97,p0__3_n_98,p0__3_n_99,p0__3_n_100,p0__3_n_101,p0__3_n_102,p0__3_n_103,p0__3_n_104,p0__3_n_105}),
        .PATTERNBDETECT(NLW_p0__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0_n_106,p0_n_107,p0_n_108,p0_n_109,p0_n_110,p0_n_111,p0_n_112,p0_n_113,p0_n_114,p0_n_115,p0_n_116,p0_n_117,p0_n_118,p0_n_119,p0_n_120,p0_n_121,p0_n_122,p0_n_123,p0_n_124,p0_n_125,p0_n_126,p0_n_127,p0_n_128,p0_n_129,p0_n_130,p0_n_131,p0_n_132,p0_n_133,p0_n_134,p0_n_135,p0_n_136,p0_n_137,p0_n_138,p0_n_139,p0_n_140,p0_n_141,p0_n_142,p0_n_143,p0_n_144,p0_n_145,p0_n_146,p0_n_147,p0_n_148,p0_n_149,p0_n_150,p0_n_151,p0_n_152,p0_n_153}),
        .PCOUT({p0__3_n_106,p0__3_n_107,p0__3_n_108,p0__3_n_109,p0__3_n_110,p0__3_n_111,p0__3_n_112,p0__3_n_113,p0__3_n_114,p0__3_n_115,p0__3_n_116,p0__3_n_117,p0__3_n_118,p0__3_n_119,p0__3_n_120,p0__3_n_121,p0__3_n_122,p0__3_n_123,p0__3_n_124,p0__3_n_125,p0__3_n_126,p0__3_n_127,p0__3_n_128,p0__3_n_129,p0__3_n_130,p0__3_n_131,p0__3_n_132,p0__3_n_133,p0__3_n_134,p0__3_n_135,p0__3_n_136,p0__3_n_137,p0__3_n_138,p0__3_n_139,p0__3_n_140,p0__3_n_141,p0__3_n_142,p0__3_n_143,p0__3_n_144,p0__3_n_145,p0__3_n_146,p0__3_n_147,p0__3_n_148,p0__3_n_149,p0__3_n_150,p0__3_n_151,p0__3_n_152,p0__3_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(REG_RST),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__3_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 9x20 12}}" *) 
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
    p0__4
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__4_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__18_n_0,p0__19_n_0,p0__20_n_0,p0__21_n_0,p0__22_n_0,p0__23_n_0,p0__24_n_0,p0__25_n_0,p0__26_n_0}),
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
        .CEB2(p0__4_0),
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
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__4_OVERFLOW_UNCONNECTED),
        .P({p0__4_n_58,p0__4_n_59,p0__4_n_60,p0__4_n_61,p0__4_n_62,p0__4_n_63,p0__4_n_64,p0__4_n_65,p0__4_n_66,p0__4_n_67,p0__4_n_68,p0__4_n_69,p0__4_n_70,p0__4_n_71,p0__4_n_72,p0__4_n_73,p0__4_n_74,p0__4_n_75,p0__4_n_76,p0__4_n_77,p0__4_n_78,p0__4_n_79,p0__4_n_80,p0__4_n_81,p0__4_n_82,p0__4_n_83,p0__4_n_84,p0__4_n_85,p0__4_n_86,p0__4_n_87,p0__4_n_88,p0__4_n_89,p0__4_n_90,p0__4_n_91,p0__4_n_92,p0__4_n_93,p0__4_n_94,p0__4_n_95,p0__4_n_96,p0__4_n_97,p0__4_n_98,p0__4_n_99,p0__4_n_100,p0__4_n_101,p0__4_n_102,p0__4_n_103,p0__4_n_104,p0__4_n_105}),
        .PATTERNBDETECT(NLW_p0__4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__4_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__3_n_106,p0__3_n_107,p0__3_n_108,p0__3_n_109,p0__3_n_110,p0__3_n_111,p0__3_n_112,p0__3_n_113,p0__3_n_114,p0__3_n_115,p0__3_n_116,p0__3_n_117,p0__3_n_118,p0__3_n_119,p0__3_n_120,p0__3_n_121,p0__3_n_122,p0__3_n_123,p0__3_n_124,p0__3_n_125,p0__3_n_126,p0__3_n_127,p0__3_n_128,p0__3_n_129,p0__3_n_130,p0__3_n_131,p0__3_n_132,p0__3_n_133,p0__3_n_134,p0__3_n_135,p0__3_n_136,p0__3_n_137,p0__3_n_138,p0__3_n_139,p0__3_n_140,p0__3_n_141,p0__3_n_142,p0__3_n_143,p0__3_n_144,p0__3_n_145,p0__3_n_146,p0__3_n_147,p0__3_n_148,p0__3_n_149,p0__3_n_150,p0__3_n_151,p0__3_n_152,p0__3_n_153}),
        .PCOUT(NLW_p0__4_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(REG_RST),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__4_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x20 12}}" *) 
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
    p0__5
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__5_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT({p0__5_n_6,p0__5_n_7,p0__5_n_8,p0__5_n_9,p0__5_n_10,p0__5_n_11,p0__5_n_12,p0__5_n_13,p0__5_n_14,p0__5_n_15,p0__5_n_16,p0__5_n_17,p0__5_n_18,p0__5_n_19,p0__5_n_20,p0__5_n_21,p0__5_n_22,p0__5_n_23}),
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
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__5_OVERFLOW_UNCONNECTED),
        .P({p0__5_n_58,p0__5_n_59,p0__5_n_60,p0__5_n_61,p0__5_n_62,p0__5_n_63,p0__5_n_64,p0__5_n_65,p0__5_n_66,p0__5_n_67,p0__5_n_68,p0__5_n_69,p0__5_n_70,p0__5_n_71,p0__5_n_72,p0__5_n_73,p0__5_n_74,p0__5_n_75,p0__5_n_76,p0__5_n_77,p0__5_n_78,p0__5_n_79,p0__5_n_80,p0__5_n_81,p0__5_n_82,p0__5_n_83,p0__5_n_84,p0__5_n_85,p0__5_n_86,p0__5_n_87,p0__5_n_88,p0__5_n_89,p0__5_n_90,p0__5_n_91,p0__5_n_92,p0__5_n_93,p0__5_n_94,p0__5_n_95,p0__5_n_96,p0__5_n_97,p0__5_n_98,p0__5_n_99,p0__5_n_100,p0__5_n_101,p0__5_n_102,p0__5_n_103,p0__5_n_104,p0__5_n_105}),
        .PATTERNBDETECT(NLW_p0__5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__5_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 12}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("CASCADE"),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p0__0_n_0,p0__1_n_0,p0__2_n_0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({p0__5_n_6,p0__5_n_7,p0__5_n_8,p0__5_n_9,p0__5_n_10,p0__5_n_11,p0__5_n_12,p0__5_n_13,p0__5_n_14,p0__5_n_15,p0__5_n_16,p0__5_n_17,p0__5_n_18,p0__5_n_19,p0__5_n_20,p0__5_n_21,p0__5_n_22,p0__5_n_23}),
        .BCOUT(NLW_p0__6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(p0__4_0),
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
        .MULTSIGNOUT(NLW_p0__6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__6_OVERFLOW_UNCONNECTED),
        .P({p0__6_n_58,p0__6_n_59,p0__6_n_60,p0__6_n_61,p0__6_n_62,p0__6_n_63,p0__6_n_64,p0__6_n_65,p0__6_n_66,p0__6_n_67,p0__6_n_68,p0__6_n_69,p0__6_n_70,p0__6_n_71,p0__6_n_72,p0__6_n_73,p0__6_n_74,p0__6_n_75,p0__6_n_76,p0__6_n_77,p0__6_n_78,p0__6_n_79,p0__6_n_80,p0__6_n_81,p0__6_n_82,p0__6_n_83,p0__6_n_84,p0__6_n_85,p0__6_n_86,p0__6_n_87,p0__6_n_88,p0__6_n_89,p0__6_n_90,p0__6_n_91,p0__6_n_92,p0__6_n_93,p0__6_n_94,p0__6_n_95,p0__6_n_96,p0__6_n_97,p0__6_n_98,p0__6_n_99,p0__6_n_100,p0__6_n_101,p0__6_n_102,p0__6_n_103,p0__6_n_104,p0__6_n_105}),
        .PATTERNBDETECT(NLW_p0__6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__6_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__5_n_106,p0__5_n_107,p0__5_n_108,p0__5_n_109,p0__5_n_110,p0__5_n_111,p0__5_n_112,p0__5_n_113,p0__5_n_114,p0__5_n_115,p0__5_n_116,p0__5_n_117,p0__5_n_118,p0__5_n_119,p0__5_n_120,p0__5_n_121,p0__5_n_122,p0__5_n_123,p0__5_n_124,p0__5_n_125,p0__5_n_126,p0__5_n_127,p0__5_n_128,p0__5_n_129,p0__5_n_130,p0__5_n_131,p0__5_n_132,p0__5_n_133,p0__5_n_134,p0__5_n_135,p0__5_n_136,p0__5_n_137,p0__5_n_138,p0__5_n_139,p0__5_n_140,p0__5_n_141,p0__5_n_142,p0__5_n_143,p0__5_n_144,p0__5_n_145,p0__5_n_146,p0__5_n_147,p0__5_n_148,p0__5_n_149,p0__5_n_150,p0__5_n_151,p0__5_n_152,p0__5_n_153}),
        .PCOUT(NLW_p0__6_PCOUT_UNCONNECTED[47:0]),
        .RSTA(REG_RST),
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
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x20 12}}" *) 
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
    p0__7
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__7_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT({p0__7_n_6,p0__7_n_7,p0__7_n_8,p0__7_n_9,p0__7_n_10,p0__7_n_11,p0__7_n_12,p0__7_n_13,p0__7_n_14,p0__7_n_15,p0__7_n_16,p0__7_n_17,p0__7_n_18,p0__7_n_19,p0__7_n_20,p0__7_n_21,p0__7_n_22,p0__7_n_23}),
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
        .MULTSIGNOUT(NLW_p0__7_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__7_OVERFLOW_UNCONNECTED),
        .P({p0__7_n_58,p0__7_n_59,p0__7_n_60,p0__7_n_61,p0__7_n_62,p0__7_n_63,p0__7_n_64,p0__7_n_65,p0__7_n_66,p0__7_n_67,p0__7_n_68,p0__7_n_69,p0__7_n_70,p0__7_n_71,p0__7_n_72,p0__7_n_73,p0__7_n_74,p0__7_n_75,p0__7_n_76,p0__7_n_77,p0__7_n_78,p0__7_n_79,p0__7_n_80,p0__7_n_81,p0__7_n_82,p0__7_n_83,p0__7_n_84,p0__7_n_85,p0__7_n_86,p0__7_n_87,p0__7_n_88,p0__7_n_89,p0__7_n_90,p0__7_n_91,p0__7_n_92,p0__7_n_93,p0__7_n_94,p0__7_n_95,p0__7_n_96,p0__7_n_97,p0__7_n_98,p0__7_n_99,p0__7_n_100,p0__7_n_101,p0__7_n_102,p0__7_n_103,p0__7_n_104,p0__7_n_105}),
        .PATTERNBDETECT(NLW_p0__7_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__7_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__7_n_106,p0__7_n_107,p0__7_n_108,p0__7_n_109,p0__7_n_110,p0__7_n_111,p0__7_n_112,p0__7_n_113,p0__7_n_114,p0__7_n_115,p0__7_n_116,p0__7_n_117,p0__7_n_118,p0__7_n_119,p0__7_n_120,p0__7_n_121,p0__7_n_122,p0__7_n_123,p0__7_n_124,p0__7_n_125,p0__7_n_126,p0__7_n_127,p0__7_n_128,p0__7_n_129,p0__7_n_130,p0__7_n_131,p0__7_n_132,p0__7_n_133,p0__7_n_134,p0__7_n_135,p0__7_n_136,p0__7_n_137,p0__7_n_138,p0__7_n_139,p0__7_n_140,p0__7_n_141,p0__7_n_142,p0__7_n_143,p0__7_n_144,p0__7_n_145,p0__7_n_146,p0__7_n_147,p0__7_n_148,p0__7_n_149,p0__7_n_150,p0__7_n_151,p0__7_n_152,p0__7_n_153}),
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
        .UNDERFLOW(NLW_p0__7_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 12}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("CASCADE"),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__8_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({p0__7_n_6,p0__7_n_7,p0__7_n_8,p0__7_n_9,p0__7_n_10,p0__7_n_11,p0__7_n_12,p0__7_n_13,p0__7_n_14,p0__7_n_15,p0__7_n_16,p0__7_n_17,p0__7_n_18,p0__7_n_19,p0__7_n_20,p0__7_n_21,p0__7_n_22,p0__7_n_23}),
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
        .MULTSIGNOUT(NLW_p0__8_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__8_OVERFLOW_UNCONNECTED),
        .P({p0__8_n_58,p0__8_n_59,p0__8_n_60,p0__8_n_61,p0__8_n_62,p0__8_n_63,p0__8_n_64,p0__8_n_65,p0__8_n_66,p0__8_n_67,p0__8_n_68,p0__8_n_69,p0__8_n_70,p0__8_n_71,p0__8_n_72,p0__8_n_73,p0__8_n_74,p0__8_n_75,p0__8_n_76,p0__8_n_77,p0__8_n_78,p0__8_n_79,p0__8_n_80,p0__8_n_81,p0__8_n_82,p0__8_n_83,p0__8_n_84,p0__8_n_85,p0__8_n_86,p0__8_n_87,p0__8_n_88,p0__8_n_89,p0__8_n_90,p0__8_n_91,p0__8_n_92,p0__8_n_93,p0__8_n_94,p0__8_n_95,p0__8_n_96,p0__8_n_97,p0__8_n_98,p0__8_n_99,p0__8_n_100,p0__8_n_101,p0__8_n_102,p0__8_n_103,p0__8_n_104,p0__8_n_105}),
        .PATTERNBDETECT(NLW_p0__8_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__8_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__7_n_106,p0__7_n_107,p0__7_n_108,p0__7_n_109,p0__7_n_110,p0__7_n_111,p0__7_n_112,p0__7_n_113,p0__7_n_114,p0__7_n_115,p0__7_n_116,p0__7_n_117,p0__7_n_118,p0__7_n_119,p0__7_n_120,p0__7_n_121,p0__7_n_122,p0__7_n_123,p0__7_n_124,p0__7_n_125,p0__7_n_126,p0__7_n_127,p0__7_n_128,p0__7_n_129,p0__7_n_130,p0__7_n_131,p0__7_n_132,p0__7_n_133,p0__7_n_134,p0__7_n_135,p0__7_n_136,p0__7_n_137,p0__7_n_138,p0__7_n_139,p0__7_n_140,p0__7_n_141,p0__7_n_142,p0__7_n_143,p0__7_n_144,p0__7_n_145,p0__7_n_146,p0__7_n_147,p0__7_n_148,p0__7_n_149,p0__7_n_150,p0__7_n_151,p0__7_n_152,p0__7_n_153}),
        .PCOUT(NLW_p0__8_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_p0__8_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 12}}" *) 
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
    p0__9
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({p0__9_n_24,p0__9_n_25,p0__9_n_26,p0__9_n_27,p0__9_n_28,p0__9_n_29,p0__9_n_30,p0__9_n_31,p0__9_n_32,p0__9_n_33,p0__9_n_34,p0__9_n_35,p0__9_n_36,p0__9_n_37,p0__9_n_38,p0__9_n_39,p0__9_n_40,p0__9_n_41,p0__9_n_42,p0__9_n_43,p0__9_n_44,p0__9_n_45,p0__9_n_46,p0__9_n_47,p0__9_n_48,p0__9_n_49,p0__9_n_50,p0__9_n_51,p0__9_n_52,p0__9_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT({p0__9_n_6,p0__9_n_7,p0__9_n_8,p0__9_n_9,p0__9_n_10,p0__9_n_11,p0__9_n_12,p0__9_n_13,p0__9_n_14,p0__9_n_15,p0__9_n_16,p0__9_n_17,p0__9_n_18,p0__9_n_19,p0__9_n_20,p0__9_n_21,p0__9_n_22,p0__9_n_23}),
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
        .MULTSIGNOUT(NLW_p0__9_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__9_OVERFLOW_UNCONNECTED),
        .P({p0__9_n_58,p0__9_n_59,p0__9_n_60,p0__9_n_61,p0__9_n_62,p0__9_n_63,p0__9_n_64,p0__9_n_65,p0__9_n_66,p0__9_n_67,p0__9_n_68,p0__9_n_69,p0__9_n_70,p0__9_n_71,p0__9_n_72,p0__9_n_73,p0__9_n_74,p0__9_n_75,p0__9_n_76,p0__9_n_77,p0__9_n_78,p0__9_n_79,p0__9_n_80,p0__9_n_81,p0__9_n_82,p0__9_n_83,p0__9_n_84,p0__9_n_85,p0__9_n_86,p0__9_n_87,p0__9_n_88,p0__9_n_89,p0__9_n_90,p0__9_n_91,p0__9_n_92,p0__9_n_93,p0__9_n_94,p0__9_n_95,p0__9_n_96,p0__9_n_97,p0__9_n_98,p0__9_n_99,p0__9_n_100,p0__9_n_101,p0__9_n_102,p0__9_n_103,p0__9_n_104,p0__9_n_105}),
        .PATTERNBDETECT(NLW_p0__9_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__9_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__9_n_106,p0__9_n_107,p0__9_n_108,p0__9_n_109,p0__9_n_110,p0__9_n_111,p0__9_n_112,p0__9_n_113,p0__9_n_114,p0__9_n_115,p0__9_n_116,p0__9_n_117,p0__9_n_118,p0__9_n_119,p0__9_n_120,p0__9_n_121,p0__9_n_122,p0__9_n_123,p0__9_n_124,p0__9_n_125,p0__9_n_126,p0__9_n_127,p0__9_n_128,p0__9_n_129,p0__9_n_130,p0__9_n_131,p0__9_n_132,p0__9_n_133,p0__9_n_134,p0__9_n_135,p0__9_n_136,p0__9_n_137,p0__9_n_138,p0__9_n_139,p0__9_n_140,p0__9_n_141,p0__9_n_142,p0__9_n_143,p0__9_n_144,p0__9_n_145,p0__9_n_146,p0__9_n_147,p0__9_n_148,p0__9_n_149,p0__9_n_150,p0__9_n_151,p0__9_n_152,p0__9_n_153}),
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
        .UNDERFLOW(NLW_p0__9_UNDERFLOW_UNCONNECTED));
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
