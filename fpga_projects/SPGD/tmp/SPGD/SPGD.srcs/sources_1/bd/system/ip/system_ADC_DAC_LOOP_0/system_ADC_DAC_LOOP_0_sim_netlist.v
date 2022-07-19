// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Jul 14 17:38:34 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/taylor/Documents/GH/SPGD/fpga_projects/SPGD/tmp/SPGD/SPGD.srcs/sources_1/bd/system/ip/system_ADC_DAC_LOOP_0/system_ADC_DAC_LOOP_0_sim_netlist.v
// Design      : system_ADC_DAC_LOOP_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_ADC_DAC_LOOP_0,ADC_DAC_LOOP,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ADC_DAC_LOOP,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module system_ADC_DAC_LOOP_0
   (ADC_CLK,
    ADC_DATA_IN,
    GP_IN,
    GP_OUT,
    DONE,
    val_0,
    val_1,
    DACA_CODE_OUT,
    DACB_CODE_OUT,
    CFG_IN);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ADC_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ADC_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_ADC_REG_0_adc_clk, INSERT_VIP 0" *) input ADC_CLK;
  input [11:0]ADC_DATA_IN;
  input [31:0]GP_IN;
  output [31:0]GP_OUT;
  output DONE;
  output val_0;
  output val_1;
  output [13:0]DACA_CODE_OUT;
  output [13:0]DACB_CODE_OUT;
  input [1023:0]CFG_IN;

  wire \<const0> ;
  wire \<const1> ;
  wire ADC_CLK;
  wire [11:0]ADC_DATA_IN;
  wire [1023:0]CFG_IN;
  wire [13:0]DACB_CODE_OUT;
  wire DONE;
  wire [31:0]GP_IN;
  wire [31:0]GP_OUT;

  assign DACA_CODE_OUT[13:0] = GP_IN[13:0];
  assign val_0 = \<const0> ;
  assign val_1 = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  system_ADC_DAC_LOOP_0_ADC_DAC_LOOP inst
       (.ADC_CLK(ADC_CLK),
        .ADC_DATA_IN(ADC_DATA_IN),
        .CFG_IN(CFG_IN[127:0]),
        .DACB_CODE_OUT(DACB_CODE_OUT),
        .F_O_reg(DONE),
        .GP_IN(GP_IN[31]),
        .GP_OUT(GP_OUT),
        .p0__2(ADC_CLK));
endmodule

(* ORIG_REF_NAME = "ADC_AVERAGE" *) 
module system_ADC_DAC_LOOP_0_ADC_AVERAGE
   (F_O_reg,
    Q,
    ADC_CLK,
    RST,
    ADC_DATA_IN);
  output F_O_reg;
  output [11:0]Q;
  input ADC_CLK;
  input RST;
  input [11:0]ADC_DATA_IN;

  wire ADC_CLK;
  wire [11:0]ADC_DATA_IN;
  wire F_O_reg;
  wire [11:0]Q;
  wire RST;
  wire \SUM[11]_i_2_n_0 ;
  wire \SUM[11]_i_3_n_0 ;
  wire \SUM[11]_i_4_n_0 ;
  wire \SUM[11]_i_5_n_0 ;
  wire \SUM[15]_i_2_n_0 ;
  wire \SUM[15]_i_3_n_0 ;
  wire \SUM[15]_i_4_n_0 ;
  wire \SUM[15]_i_5_n_0 ;
  wire \SUM[15]_i_6_n_0 ;
  wire \SUM[19]_i_2_n_0 ;
  wire \SUM[19]_i_3_n_0 ;
  wire \SUM[19]_i_4_n_0 ;
  wire \SUM[19]_i_5_n_0 ;
  wire \SUM[21]_i_4_n_0 ;
  wire \SUM[21]_i_5_n_0 ;
  wire \SUM[3]_i_2_n_0 ;
  wire \SUM[3]_i_3_n_0 ;
  wire \SUM[3]_i_4_n_0 ;
  wire \SUM[3]_i_5_n_0 ;
  wire \SUM[7]_i_2_n_0 ;
  wire \SUM[7]_i_3_n_0 ;
  wire \SUM[7]_i_4_n_0 ;
  wire \SUM[7]_i_5_n_0 ;
  wire \SUM_reg[11]_i_1_n_0 ;
  wire \SUM_reg[11]_i_1_n_1 ;
  wire \SUM_reg[11]_i_1_n_2 ;
  wire \SUM_reg[11]_i_1_n_3 ;
  wire \SUM_reg[15]_i_1_n_0 ;
  wire \SUM_reg[15]_i_1_n_1 ;
  wire \SUM_reg[15]_i_1_n_2 ;
  wire \SUM_reg[15]_i_1_n_3 ;
  wire \SUM_reg[19]_i_1_n_0 ;
  wire \SUM_reg[19]_i_1_n_1 ;
  wire \SUM_reg[19]_i_1_n_2 ;
  wire \SUM_reg[19]_i_1_n_3 ;
  wire \SUM_reg[21]_i_3_n_3 ;
  wire \SUM_reg[3]_i_1_n_0 ;
  wire \SUM_reg[3]_i_1_n_1 ;
  wire \SUM_reg[3]_i_1_n_2 ;
  wire \SUM_reg[3]_i_1_n_3 ;
  wire \SUM_reg[7]_i_1_n_0 ;
  wire \SUM_reg[7]_i_1_n_1 ;
  wire \SUM_reg[7]_i_1_n_2 ;
  wire \SUM_reg[7]_i_1_n_3 ;
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
  wire p_1_in;
  wire [21:0]p_2_in;
  wire [3:1]\NLW_SUM_reg[21]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_SUM_reg[21]_i_3_O_UNCONNECTED ;

  system_ADC_DAC_LOOP_0_gen_counter COUNT0
       (.ADC_CLK(ADC_CLK),
        .E(p_1_in),
        .F_O_reg_0(F_O_reg),
        .RST(RST));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM[11]_i_2 
       (.I0(ADC_DATA_IN[11]),
        .I1(Q[1]),
        .O(\SUM[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM[11]_i_3 
       (.I0(Q[0]),
        .I1(ADC_DATA_IN[10]),
        .O(\SUM[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM[11]_i_4 
       (.I0(\SUM_reg_n_0_[9] ),
        .I1(ADC_DATA_IN[9]),
        .O(\SUM[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM[11]_i_5 
       (.I0(\SUM_reg_n_0_[8] ),
        .I1(ADC_DATA_IN[8]),
        .O(\SUM[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \SUM[15]_i_2 
       (.I0(ADC_DATA_IN[11]),
        .O(\SUM[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SUM[15]_i_3 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\SUM[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SUM[15]_i_4 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\SUM[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SUM[15]_i_5 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\SUM[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM[15]_i_6 
       (.I0(ADC_DATA_IN[11]),
        .I1(Q[2]),
        .O(\SUM[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SUM[19]_i_2 
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\SUM[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SUM[19]_i_3 
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\SUM[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SUM[19]_i_4 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\SUM[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SUM[19]_i_5 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\SUM[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SUM[21]_i_4 
       (.I0(Q[10]),
        .I1(Q[11]),
        .O(\SUM[21]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \SUM[21]_i_5 
       (.I0(Q[9]),
        .I1(Q[10]),
        .O(\SUM[21]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM[3]_i_2 
       (.I0(\SUM_reg_n_0_[3] ),
        .I1(ADC_DATA_IN[3]),
        .O(\SUM[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM[3]_i_3 
       (.I0(\SUM_reg_n_0_[2] ),
        .I1(ADC_DATA_IN[2]),
        .O(\SUM[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM[3]_i_4 
       (.I0(\SUM_reg_n_0_[1] ),
        .I1(ADC_DATA_IN[1]),
        .O(\SUM[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM[3]_i_5 
       (.I0(\SUM_reg_n_0_[0] ),
        .I1(ADC_DATA_IN[0]),
        .O(\SUM[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM[7]_i_2 
       (.I0(\SUM_reg_n_0_[7] ),
        .I1(ADC_DATA_IN[7]),
        .O(\SUM[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM[7]_i_3 
       (.I0(\SUM_reg_n_0_[6] ),
        .I1(ADC_DATA_IN[6]),
        .O(\SUM[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM[7]_i_4 
       (.I0(\SUM_reg_n_0_[5] ),
        .I1(ADC_DATA_IN[5]),
        .O(\SUM[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM[7]_i_5 
       (.I0(\SUM_reg_n_0_[4] ),
        .I1(ADC_DATA_IN[4]),
        .O(\SUM[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[0] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[0]),
        .Q(\SUM_reg_n_0_[0] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[10] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[10]),
        .Q(Q[0]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[11] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[11]),
        .Q(Q[1]),
        .R(RST));
  CARRY4 \SUM_reg[11]_i_1 
       (.CI(\SUM_reg[7]_i_1_n_0 ),
        .CO({\SUM_reg[11]_i_1_n_0 ,\SUM_reg[11]_i_1_n_1 ,\SUM_reg[11]_i_1_n_2 ,\SUM_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({ADC_DATA_IN[11],Q[0],\SUM_reg_n_0_[9] ,\SUM_reg_n_0_[8] }),
        .O(p_2_in[11:8]),
        .S({\SUM[11]_i_2_n_0 ,\SUM[11]_i_3_n_0 ,\SUM[11]_i_4_n_0 ,\SUM[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[12] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[12]),
        .Q(Q[2]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[13] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[13]),
        .Q(Q[3]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[14] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[14]),
        .Q(Q[4]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[15] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[15]),
        .Q(Q[5]),
        .R(RST));
  CARRY4 \SUM_reg[15]_i_1 
       (.CI(\SUM_reg[11]_i_1_n_0 ),
        .CO({\SUM_reg[15]_i_1_n_0 ,\SUM_reg[15]_i_1_n_1 ,\SUM_reg[15]_i_1_n_2 ,\SUM_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({Q[4:2],\SUM[15]_i_2_n_0 }),
        .O(p_2_in[15:12]),
        .S({\SUM[15]_i_3_n_0 ,\SUM[15]_i_4_n_0 ,\SUM[15]_i_5_n_0 ,\SUM[15]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[16] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[16]),
        .Q(Q[6]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[17] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[17]),
        .Q(Q[7]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[18] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[18]),
        .Q(Q[8]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[19] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[19]),
        .Q(Q[9]),
        .R(RST));
  CARRY4 \SUM_reg[19]_i_1 
       (.CI(\SUM_reg[15]_i_1_n_0 ),
        .CO({\SUM_reg[19]_i_1_n_0 ,\SUM_reg[19]_i_1_n_1 ,\SUM_reg[19]_i_1_n_2 ,\SUM_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(p_2_in[19:16]),
        .S({\SUM[19]_i_2_n_0 ,\SUM[19]_i_3_n_0 ,\SUM[19]_i_4_n_0 ,\SUM[19]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[1] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[1]),
        .Q(\SUM_reg_n_0_[1] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[20] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[20]),
        .Q(Q[10]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[21] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[21]),
        .Q(Q[11]),
        .R(RST));
  CARRY4 \SUM_reg[21]_i_3 
       (.CI(\SUM_reg[19]_i_1_n_0 ),
        .CO({\NLW_SUM_reg[21]_i_3_CO_UNCONNECTED [3:1],\SUM_reg[21]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[9]}),
        .O({\NLW_SUM_reg[21]_i_3_O_UNCONNECTED [3:2],p_2_in[21:20]}),
        .S({1'b0,1'b0,\SUM[21]_i_4_n_0 ,\SUM[21]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[2] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[2]),
        .Q(\SUM_reg_n_0_[2] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[3] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[3]),
        .Q(\SUM_reg_n_0_[3] ),
        .R(RST));
  CARRY4 \SUM_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\SUM_reg[3]_i_1_n_0 ,\SUM_reg[3]_i_1_n_1 ,\SUM_reg[3]_i_1_n_2 ,\SUM_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI({\SUM_reg_n_0_[3] ,\SUM_reg_n_0_[2] ,\SUM_reg_n_0_[1] ,\SUM_reg_n_0_[0] }),
        .O(p_2_in[3:0]),
        .S({\SUM[3]_i_2_n_0 ,\SUM[3]_i_3_n_0 ,\SUM[3]_i_4_n_0 ,\SUM[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[4] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[4]),
        .Q(\SUM_reg_n_0_[4] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[5] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[5]),
        .Q(\SUM_reg_n_0_[5] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[6] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[6]),
        .Q(\SUM_reg_n_0_[6] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[7] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[7]),
        .Q(\SUM_reg_n_0_[7] ),
        .R(RST));
  CARRY4 \SUM_reg[7]_i_1 
       (.CI(\SUM_reg[3]_i_1_n_0 ),
        .CO({\SUM_reg[7]_i_1_n_0 ,\SUM_reg[7]_i_1_n_1 ,\SUM_reg[7]_i_1_n_2 ,\SUM_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\SUM_reg_n_0_[7] ,\SUM_reg_n_0_[6] ,\SUM_reg_n_0_[5] ,\SUM_reg_n_0_[4] }),
        .O(p_2_in[7:4]),
        .S({\SUM[7]_i_2_n_0 ,\SUM[7]_i_3_n_0 ,\SUM[7]_i_4_n_0 ,\SUM[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[8] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[8]),
        .Q(\SUM_reg_n_0_[8] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \SUM_reg[9] 
       (.C(ADC_CLK),
        .CE(p_1_in),
        .D(p_2_in[9]),
        .Q(\SUM_reg_n_0_[9] ),
        .R(RST));
endmodule

(* ORIG_REF_NAME = "ADC_DAC_LOOP" *) 
module system_ADC_DAC_LOOP_0_ADC_DAC_LOOP
   (F_O_reg,
    GP_OUT,
    DACB_CODE_OUT,
    ADC_CLK,
    CFG_IN,
    p0__2,
    GP_IN,
    ADC_DATA_IN);
  output F_O_reg;
  output [31:0]GP_OUT;
  output [13:0]DACB_CODE_OUT;
  input ADC_CLK;
  input [127:0]CFG_IN;
  input p0__2;
  input [0:0]GP_IN;
  input [11:0]ADC_DATA_IN;

  wire ADC0_n_0;
  wire ADC0_n_1;
  wire ADC0_n_10;
  wire ADC0_n_11;
  wire ADC0_n_12;
  wire ADC0_n_13;
  wire ADC0_n_14;
  wire ADC0_n_15;
  wire ADC0_n_16;
  wire ADC0_n_17;
  wire ADC0_n_18;
  wire ADC0_n_19;
  wire ADC0_n_2;
  wire ADC0_n_20;
  wire ADC0_n_21;
  wire ADC0_n_22;
  wire ADC0_n_23;
  wire ADC0_n_24;
  wire ADC0_n_25;
  wire ADC0_n_26;
  wire ADC0_n_3;
  wire ADC0_n_4;
  wire ADC0_n_5;
  wire ADC0_n_6;
  wire ADC0_n_7;
  wire ADC0_n_8;
  wire ADC0_n_9;
  wire ADC_CLK;
  wire [11:0]ADC_DATA_IN;
  wire [127:0]CFG_IN;
  wire [13:0]DACB_CODE_OUT;
  wire F_O_reg;
  wire [0:0]GP_IN;
  wire [31:0]GP_OUT;
  wire MULT1_n_31;
  wire MULT1_n_32;
  wire MULT1_n_33;
  wire MULT1_n_34;
  wire MULT1_n_35;
  wire MULT1_n_36;
  wire MULT1_n_37;
  wire MULT1_n_38;
  wire MULT1_n_39;
  wire MULT1_n_40;
  wire MULT1_n_41;
  wire MULT1_n_42;
  wire MULT1_n_43;
  wire MULT1_n_44;
  wire MULT1_n_45;
  wire MULT1_n_46;
  wire MULT1_n_47;
  wire MULT1_n_48;
  wire MULT1_n_49;
  wire MULT1_n_50;
  wire MULT1_n_51;
  wire MULT1_n_52;
  wire MULT1_n_53;
  wire MULT1_n_54;
  wire MULT1_n_55;
  wire MULT1_n_56;
  wire MULT1_n_57;
  wire MULT1_n_58;
  wire MULT1_n_59;
  wire MULT1_n_60;
  wire MULT1_n_61;
  wire MULT1_n_62;
  wire REG_RST;
  wire REG_WRITE;
  wire [30:0]a;
  wire [31:0]data_in;
  wire p0__2;

  system_ADC_DAC_LOOP_0_ADC_IN ADC0
       (.ADC_CLK(ADC_CLK),
        .ADC_DATA_IN(ADC_DATA_IN),
        .F_O_reg(F_O_reg),
        .GP_IN(GP_IN),
        .P({ADC0_n_0,ADC0_n_1,ADC0_n_2,ADC0_n_3,ADC0_n_4,ADC0_n_5,ADC0_n_6,ADC0_n_7,ADC0_n_8,ADC0_n_9,ADC0_n_10,ADC0_n_11,ADC0_n_12,ADC0_n_13,ADC0_n_14,ADC0_n_15,ADC0_n_16,ADC0_n_17,ADC0_n_18,ADC0_n_19,ADC0_n_20,ADC0_n_21,ADC0_n_22,ADC0_n_23,ADC0_n_24,ADC0_n_25,ADC0_n_26}),
        .Q({REG_WRITE,REG_RST}));
  system_ADC_DAC_LOOP_0_gen_subber ADD0
       (.D(data_in),
        .S({MULT1_n_31,MULT1_n_32,MULT1_n_33,MULT1_n_34}),
        .a(a),
        .\int_data_reg_reg[11] ({MULT1_n_39,MULT1_n_40,MULT1_n_41,MULT1_n_42}),
        .\int_data_reg_reg[15] ({MULT1_n_43,MULT1_n_44,MULT1_n_45,MULT1_n_46}),
        .\int_data_reg_reg[19] ({MULT1_n_47,MULT1_n_48,MULT1_n_49,MULT1_n_50}),
        .\int_data_reg_reg[23] ({MULT1_n_51,MULT1_n_52,MULT1_n_53,MULT1_n_54}),
        .\int_data_reg_reg[27] ({MULT1_n_55,MULT1_n_56,MULT1_n_57,MULT1_n_58}),
        .\int_data_reg_reg[31] ({MULT1_n_59,MULT1_n_60,MULT1_n_61,MULT1_n_62}),
        .\int_data_reg_reg[7] ({MULT1_n_35,MULT1_n_36,MULT1_n_37,MULT1_n_38}));
  system_ADC_DAC_LOOP_0_DAC_OUT DAC0
       (.CFG_IN(CFG_IN[127:64]),
        .D(data_in),
        .DACB_CODE_OUT(DACB_CODE_OUT),
        .Q({REG_WRITE,REG_RST}),
        .p0__2(p0__2));
  system_ADC_DAC_LOOP_0_my_mult__parameterized0 MULT1
       (.CFG_IN(CFG_IN[63:0]),
        .\CFG_IN[39] ({MULT1_n_35,MULT1_n_36,MULT1_n_37,MULT1_n_38}),
        .\CFG_IN[43] ({MULT1_n_39,MULT1_n_40,MULT1_n_41,MULT1_n_42}),
        .\CFG_IN[47] ({MULT1_n_43,MULT1_n_44,MULT1_n_45,MULT1_n_46}),
        .\CFG_IN[51] ({MULT1_n_47,MULT1_n_48,MULT1_n_49,MULT1_n_50}),
        .\CFG_IN[55] ({MULT1_n_51,MULT1_n_52,MULT1_n_53,MULT1_n_54}),
        .\CFG_IN[59] ({MULT1_n_55,MULT1_n_56,MULT1_n_57,MULT1_n_58}),
        .\CFG_IN[63] ({MULT1_n_59,MULT1_n_60,MULT1_n_61,MULT1_n_62}),
        .P({ADC0_n_0,ADC0_n_1,ADC0_n_2,ADC0_n_3,ADC0_n_4,ADC0_n_5,ADC0_n_6,ADC0_n_7,ADC0_n_8,ADC0_n_9,ADC0_n_10,ADC0_n_11,ADC0_n_12,ADC0_n_13,ADC0_n_14,ADC0_n_15,ADC0_n_16,ADC0_n_17,ADC0_n_18,ADC0_n_19,ADC0_n_20,ADC0_n_21,ADC0_n_22,ADC0_n_23,ADC0_n_24,ADC0_n_25,ADC0_n_26}),
        .S({MULT1_n_31,MULT1_n_32,MULT1_n_33,MULT1_n_34}),
        .p0__2(a));
  system_ADC_DAC_LOOP_0_gen_reg REG0
       (.ADC_CLK(ADC_CLK),
        .D(data_in),
        .GP_OUT(GP_OUT),
        .Q({REG_WRITE,REG_RST}));
endmodule

(* ORIG_REF_NAME = "ADC_IN" *) 
module system_ADC_DAC_LOOP_0_ADC_IN
   (P,
    F_O_reg,
    Q,
    ADC_CLK,
    GP_IN,
    ADC_DATA_IN);
  output [26:0]P;
  output F_O_reg;
  output [1:0]Q;
  input ADC_CLK;
  input [0:0]GP_IN;
  input [11:0]ADC_DATA_IN;

  wire ADC_CLK;
  wire [11:0]ADC_DATA_IN;
  wire F_O_reg;
  wire [0:0]GP_IN;
  wire [26:0]P;
  wire [1:0]Q;
  wire RST;
  wire VALID_SUM;
  wire [11:0]p_0_in;

  system_ADC_DAC_LOOP_0_ADC_AVERAGE ADC_AVERAGE0
       (.ADC_CLK(ADC_CLK),
        .ADC_DATA_IN(ADC_DATA_IN),
        .F_O_reg(F_O_reg),
        .Q(p_0_in),
        .RST(RST));
  system_ADC_DAC_LOOP_0_FSM FSM0
       (.ADC_CLK(ADC_CLK),
        .GP_IN(GP_IN),
        .Q(Q),
        .RST(RST),
        .VALID_SUM(VALID_SUM),
        .p0__0(F_O_reg));
  system_ADC_DAC_LOOP_0_my_mult MULT1
       (.ADC_CLK(ADC_CLK),
        .P(P),
        .Q(p_0_in),
        .VALID_SUM(VALID_SUM));
endmodule

(* ORIG_REF_NAME = "DAC_OUT" *) 
module system_ADC_DAC_LOOP_0_DAC_OUT
   (DACB_CODE_OUT,
    Q,
    p0__2,
    D,
    CFG_IN);
  output [13:0]DACB_CODE_OUT;
  input [1:0]Q;
  input p0__2;
  input [31:0]D;
  input [63:0]CFG_IN;

  wire [63:0]CFG_IN;
  wire [31:0]D;
  wire [13:0]DACB_CODE_OUT;
  wire [1:0]Q;
  wire cal_mult_n_0;
  wire cal_mult_n_1;
  wire cal_mult_n_10;
  wire cal_mult_n_11;
  wire cal_mult_n_12;
  wire cal_mult_n_13;
  wire cal_mult_n_14;
  wire cal_mult_n_15;
  wire cal_mult_n_16;
  wire cal_mult_n_17;
  wire cal_mult_n_18;
  wire cal_mult_n_19;
  wire cal_mult_n_2;
  wire cal_mult_n_20;
  wire cal_mult_n_21;
  wire cal_mult_n_22;
  wire cal_mult_n_23;
  wire cal_mult_n_24;
  wire cal_mult_n_25;
  wire cal_mult_n_26;
  wire cal_mult_n_27;
  wire cal_mult_n_28;
  wire cal_mult_n_29;
  wire cal_mult_n_3;
  wire cal_mult_n_30;
  wire cal_mult_n_31;
  wire cal_mult_n_32;
  wire cal_mult_n_33;
  wire cal_mult_n_34;
  wire cal_mult_n_35;
  wire cal_mult_n_36;
  wire cal_mult_n_37;
  wire cal_mult_n_38;
  wire cal_mult_n_39;
  wire cal_mult_n_4;
  wire cal_mult_n_40;
  wire cal_mult_n_41;
  wire cal_mult_n_42;
  wire cal_mult_n_43;
  wire cal_mult_n_44;
  wire cal_mult_n_45;
  wire cal_mult_n_46;
  wire cal_mult_n_47;
  wire cal_mult_n_48;
  wire cal_mult_n_49;
  wire cal_mult_n_5;
  wire cal_mult_n_50;
  wire cal_mult_n_51;
  wire cal_mult_n_52;
  wire cal_mult_n_53;
  wire cal_mult_n_54;
  wire cal_mult_n_55;
  wire cal_mult_n_56;
  wire cal_mult_n_57;
  wire cal_mult_n_58;
  wire cal_mult_n_59;
  wire cal_mult_n_6;
  wire cal_mult_n_60;
  wire cal_mult_n_61;
  wire cal_mult_n_62;
  wire cal_mult_n_7;
  wire cal_mult_n_8;
  wire cal_mult_n_9;
  wire cal_sub_n_0;
  wire cal_sub_n_1;
  wire cal_sub_n_10;
  wire cal_sub_n_11;
  wire cal_sub_n_12;
  wire cal_sub_n_13;
  wire cal_sub_n_14;
  wire cal_sub_n_15;
  wire cal_sub_n_16;
  wire cal_sub_n_17;
  wire cal_sub_n_18;
  wire cal_sub_n_19;
  wire cal_sub_n_2;
  wire cal_sub_n_20;
  wire cal_sub_n_21;
  wire cal_sub_n_22;
  wire cal_sub_n_23;
  wire cal_sub_n_24;
  wire cal_sub_n_25;
  wire cal_sub_n_26;
  wire cal_sub_n_27;
  wire cal_sub_n_28;
  wire cal_sub_n_29;
  wire cal_sub_n_3;
  wire cal_sub_n_30;
  wire cal_sub_n_31;
  wire cal_sub_n_4;
  wire cal_sub_n_5;
  wire cal_sub_n_6;
  wire cal_sub_n_7;
  wire cal_sub_n_8;
  wire cal_sub_n_9;
  wire p0__2;

  system_ADC_DAC_LOOP_0_my_mult__parameterized1 MULT0
       (.DACB_CODE_OUT(DACB_CODE_OUT),
        .a0_out({cal_sub_n_0,cal_sub_n_1,cal_sub_n_2,cal_sub_n_3,cal_sub_n_4,cal_sub_n_5,cal_sub_n_6,cal_sub_n_7,cal_sub_n_8,cal_sub_n_9,cal_sub_n_10,cal_sub_n_11,cal_sub_n_12,cal_sub_n_13,cal_sub_n_14,cal_sub_n_15,cal_sub_n_16,cal_sub_n_17,cal_sub_n_18,cal_sub_n_19,cal_sub_n_20,cal_sub_n_21,cal_sub_n_22,cal_sub_n_23,cal_sub_n_24,cal_sub_n_25,cal_sub_n_26,cal_sub_n_27,cal_sub_n_28,cal_sub_n_29,cal_sub_n_30,cal_sub_n_31}));
  system_ADC_DAC_LOOP_0_gen_mult_0 cal_mult
       (.CFG_IN(CFG_IN),
        .\CFG_IN[103] ({cal_mult_n_35,cal_mult_n_36,cal_mult_n_37,cal_mult_n_38}),
        .\CFG_IN[107] ({cal_mult_n_39,cal_mult_n_40,cal_mult_n_41,cal_mult_n_42}),
        .\CFG_IN[111] ({cal_mult_n_43,cal_mult_n_44,cal_mult_n_45,cal_mult_n_46}),
        .\CFG_IN[115] ({cal_mult_n_47,cal_mult_n_48,cal_mult_n_49,cal_mult_n_50}),
        .\CFG_IN[119] ({cal_mult_n_51,cal_mult_n_52,cal_mult_n_53,cal_mult_n_54}),
        .\CFG_IN[123] ({cal_mult_n_55,cal_mult_n_56,cal_mult_n_57,cal_mult_n_58}),
        .\CFG_IN[127] ({cal_mult_n_59,cal_mult_n_60,cal_mult_n_61,cal_mult_n_62}),
        .D(D),
        .O({cal_mult_n_0,cal_mult_n_1,cal_mult_n_2,cal_mult_n_3}),
        .Q(Q),
        .S({cal_mult_n_31,cal_mult_n_32,cal_mult_n_33,cal_mult_n_34}),
        .p0__2_0({cal_mult_n_4,cal_mult_n_5,cal_mult_n_6,cal_mult_n_7}),
        .p0__2_1({cal_mult_n_8,cal_mult_n_9,cal_mult_n_10,cal_mult_n_11}),
        .p0__2_2({cal_mult_n_12,cal_mult_n_13,cal_mult_n_14,cal_mult_n_15}),
        .p0__2_3({cal_mult_n_16,cal_mult_n_17,cal_mult_n_18,cal_mult_n_19}),
        .p0__2_4({cal_mult_n_20,cal_mult_n_21,cal_mult_n_22,cal_mult_n_23}),
        .p0__2_5({cal_mult_n_24,cal_mult_n_25,cal_mult_n_26,cal_mult_n_27}),
        .p0__2_6({cal_mult_n_28,cal_mult_n_29,cal_mult_n_30}),
        .p0__2_7(p0__2));
  system_ADC_DAC_LOOP_0_gen_subber_1 cal_sub
       (.O({cal_mult_n_0,cal_mult_n_1,cal_mult_n_2,cal_mult_n_3}),
        .S({cal_mult_n_31,cal_mult_n_32,cal_mult_n_33,cal_mult_n_34}),
        .a0_out({cal_sub_n_0,cal_sub_n_1,cal_sub_n_2,cal_sub_n_3,cal_sub_n_4,cal_sub_n_5,cal_sub_n_6,cal_sub_n_7,cal_sub_n_8,cal_sub_n_9,cal_sub_n_10,cal_sub_n_11,cal_sub_n_12,cal_sub_n_13,cal_sub_n_14,cal_sub_n_15,cal_sub_n_16,cal_sub_n_17,cal_sub_n_18,cal_sub_n_19,cal_sub_n_20,cal_sub_n_21,cal_sub_n_22,cal_sub_n_23,cal_sub_n_24,cal_sub_n_25,cal_sub_n_26,cal_sub_n_27,cal_sub_n_28,cal_sub_n_29,cal_sub_n_30,cal_sub_n_31}),
        .p0__0({cal_mult_n_16,cal_mult_n_17,cal_mult_n_18,cal_mult_n_19}),
        .p0__0_0({cal_mult_n_47,cal_mult_n_48,cal_mult_n_49,cal_mult_n_50}),
        .p0__0_1({cal_mult_n_20,cal_mult_n_21,cal_mult_n_22,cal_mult_n_23}),
        .p0__0_2({cal_mult_n_51,cal_mult_n_52,cal_mult_n_53,cal_mult_n_54}),
        .p0__0_3({cal_mult_n_24,cal_mult_n_25,cal_mult_n_26,cal_mult_n_27}),
        .p0__0_4({cal_mult_n_55,cal_mult_n_56,cal_mult_n_57,cal_mult_n_58}),
        .p0__0_5({cal_mult_n_28,cal_mult_n_29,cal_mult_n_30}),
        .p0__0_6({cal_mult_n_59,cal_mult_n_60,cal_mult_n_61,cal_mult_n_62}),
        .p0__1({cal_mult_n_4,cal_mult_n_5,cal_mult_n_6,cal_mult_n_7}),
        .p0__1_0({cal_mult_n_35,cal_mult_n_36,cal_mult_n_37,cal_mult_n_38}),
        .p0__1_1({cal_mult_n_8,cal_mult_n_9,cal_mult_n_10,cal_mult_n_11}),
        .p0__1_2({cal_mult_n_39,cal_mult_n_40,cal_mult_n_41,cal_mult_n_42}),
        .p0__1_3({cal_mult_n_12,cal_mult_n_13,cal_mult_n_14,cal_mult_n_15}),
        .p0__1_4({cal_mult_n_43,cal_mult_n_44,cal_mult_n_45,cal_mult_n_46}));
endmodule

(* ORIG_REF_NAME = "FSM" *) 
module system_ADC_DAC_LOOP_0_FSM
   (VALID_SUM,
    Q,
    RST,
    GP_IN,
    p0__0,
    ADC_CLK);
  output VALID_SUM;
  output [1:0]Q;
  output RST;
  input [0:0]GP_IN;
  input p0__0;
  input ADC_CLK;

  wire ADC_CLK;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [0:0]GP_IN;
  wire [1:0]Q;
  wire RST;
  wire VALID_SUM;
  wire p0__0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(p0__0),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(Q[0]),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(p0__0),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(GP_IN),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "stopped:0001,sADC_RST:1000,waiting:0010,reg_write:0100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(Q[0]),
        .S(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "stopped:0001,sADC_RST:1000,waiting:0010,reg_write:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "stopped:0001,sADC_RST:1000,waiting:0010,reg_write:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "stopped:0001,sADC_RST:1000,waiting:0010,reg_write:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \SUM[21]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(RST));
  LUT3 #(
    .INIT(8'h02)) 
    p0_i_1
       (.I0(p0__0),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(Q[0]),
        .O(VALID_SUM));
endmodule

(* ORIG_REF_NAME = "gen_counter" *) 
module system_ADC_DAC_LOOP_0_gen_counter
   (F_O_reg_0,
    E,
    ADC_CLK,
    RST);
  output F_O_reg_0;
  output [0:0]E;
  input ADC_CLK;
  input RST;

  wire ADC_CLK;
  wire [0:0]E;
  wire F_O_i_1_n_0;
  wire F_O_i_2_n_0;
  wire F_O_i_3_n_0;
  wire F_O_i_4_n_0;
  wire F_O_i_5_n_0;
  wire F_O_i_6_n_0;
  wire F_O_i_7_n_0;
  wire F_O_i_8_n_0;
  wire F_O_reg_0;
  wire RST;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire [31:0]count_reg;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_1 ;
  wire \count_reg[0]_i_2_n_2 ;
  wire \count_reg[0]_i_2_n_3 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
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
  wire sel;
  wire [3:3]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00000000FFFFFEFF)) 
    F_O_i_1
       (.I0(F_O_reg_0),
        .I1(F_O_i_2_n_0),
        .I2(F_O_i_3_n_0),
        .I3(F_O_i_4_n_0),
        .I4(F_O_i_5_n_0),
        .I5(RST),
        .O(F_O_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    F_O_i_2
       (.I0(F_O_i_6_n_0),
        .I1(count_reg[17]),
        .I2(count_reg[16]),
        .I3(count_reg[19]),
        .I4(count_reg[18]),
        .I5(F_O_i_7_n_0),
        .O(F_O_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    F_O_i_3
       (.I0(count_reg[30]),
        .I1(count_reg[31]),
        .I2(count_reg[28]),
        .I3(count_reg[29]),
        .I4(count_reg[27]),
        .I5(count_reg[26]),
        .O(F_O_i_3_n_0));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    F_O_i_4
       (.I0(F_O_i_8_n_0),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(count_reg[2]),
        .I4(count_reg[3]),
        .O(F_O_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    F_O_i_5
       (.I0(count_reg[11]),
        .I1(count_reg[10]),
        .I2(count_reg[13]),
        .I3(count_reg[12]),
        .O(F_O_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    F_O_i_6
       (.I0(count_reg[14]),
        .I1(count_reg[15]),
        .O(F_O_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    F_O_i_7
       (.I0(count_reg[24]),
        .I1(count_reg[25]),
        .I2(count_reg[22]),
        .I3(count_reg[23]),
        .I4(count_reg[21]),
        .I5(count_reg[20]),
        .O(F_O_i_7_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    F_O_i_8
       (.I0(count_reg[8]),
        .I1(count_reg[9]),
        .I2(count_reg[6]),
        .I3(count_reg[7]),
        .I4(count_reg[1]),
        .I5(count_reg[0]),
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
    \SUM[21]_i_2 
       (.I0(F_O_reg_0),
        .O(E));
  LUT5 #(
    .INIT(32'h00800000)) 
    \count[0]_i_1 
       (.I0(\count[0]_i_3_n_0 ),
        .I1(\count[0]_i_4_n_0 ),
        .I2(F_O_i_4_n_0),
        .I3(F_O_i_5_n_0),
        .I4(\count[0]_i_5_n_0 ),
        .O(sel));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count[0]_i_3 
       (.I0(count_reg[22]),
        .I1(count_reg[23]),
        .I2(count_reg[20]),
        .I3(count_reg[21]),
        .I4(count_reg[25]),
        .I5(count_reg[24]),
        .O(\count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count[0]_i_4 
       (.I0(count_reg[28]),
        .I1(count_reg[29]),
        .I2(count_reg[26]),
        .I3(count_reg[27]),
        .I4(count_reg[31]),
        .I5(count_reg[30]),
        .O(\count[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count[0]_i_5 
       (.I0(count_reg[16]),
        .I1(count_reg[17]),
        .I2(count_reg[14]),
        .I3(count_reg[15]),
        .I4(count_reg[19]),
        .I5(count_reg[18]),
        .O(\count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_6 
       (.I0(count_reg[0]),
        .O(\count[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count_reg[0]),
        .R(RST));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({count_reg[3:1],\count[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(RST));
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
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(RST));
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
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count_reg[1]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(RST));
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
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(RST));
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
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]),
        .R(RST));
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
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count_reg[2]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count_reg[3]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(RST));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(RST));
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
        .CE(sel),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(RST));
endmodule

(* ORIG_REF_NAME = "gen_mult" *) 
module system_ADC_DAC_LOOP_0_gen_mult
   (p0__2_0,
    S,
    \CFG_IN[39] ,
    \CFG_IN[43] ,
    \CFG_IN[47] ,
    \CFG_IN[51] ,
    \CFG_IN[55] ,
    \CFG_IN[59] ,
    \CFG_IN[63] ,
    P,
    CFG_IN);
  output [30:0]p0__2_0;
  output [3:0]S;
  output [3:0]\CFG_IN[39] ;
  output [3:0]\CFG_IN[43] ;
  output [3:0]\CFG_IN[47] ;
  output [3:0]\CFG_IN[51] ;
  output [3:0]\CFG_IN[55] ;
  output [3:0]\CFG_IN[59] ;
  output [3:0]\CFG_IN[63] ;
  input [26:0]P;
  input [63:0]CFG_IN;

  wire [63:0]CFG_IN;
  wire [3:0]\CFG_IN[39] ;
  wire [3:0]\CFG_IN[43] ;
  wire [3:0]\CFG_IN[47] ;
  wire [3:0]\CFG_IN[51] ;
  wire [3:0]\CFG_IN[55] ;
  wire [3:0]\CFG_IN[59] ;
  wire [3:0]\CFG_IN[63] ;
  wire [26:0]P;
  wire [3:0]S;
  wire [31:31]a;
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
  wire p0__1_n_24;
  wire p0__1_n_25;
  wire p0__1_n_26;
  wire p0__1_n_27;
  wire p0__1_n_28;
  wire p0__1_n_29;
  wire p0__1_n_30;
  wire p0__1_n_31;
  wire p0__1_n_32;
  wire p0__1_n_33;
  wire p0__1_n_34;
  wire p0__1_n_35;
  wire p0__1_n_36;
  wire p0__1_n_37;
  wire p0__1_n_38;
  wire p0__1_n_39;
  wire p0__1_n_40;
  wire p0__1_n_41;
  wire p0__1_n_42;
  wire p0__1_n_43;
  wire p0__1_n_44;
  wire p0__1_n_45;
  wire p0__1_n_46;
  wire p0__1_n_47;
  wire p0__1_n_48;
  wire p0__1_n_49;
  wire p0__1_n_50;
  wire p0__1_n_51;
  wire p0__1_n_52;
  wire p0__1_n_53;
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
  wire [30:0]p0__2_0;
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
  wire p0_carry__0_i_1_n_0;
  wire p0_carry__0_i_2_n_0;
  wire p0_carry__0_i_3_n_0;
  wire p0_carry__0_i_4_n_0;
  wire p0_carry__0_n_0;
  wire p0_carry__0_n_1;
  wire p0_carry__0_n_2;
  wire p0_carry__0_n_3;
  wire p0_carry__1_i_1_n_0;
  wire p0_carry__1_i_2_n_0;
  wire p0_carry__1_i_3_n_0;
  wire p0_carry__1_i_4_n_0;
  wire p0_carry__1_n_0;
  wire p0_carry__1_n_1;
  wire p0_carry__1_n_2;
  wire p0_carry__1_n_3;
  wire p0_carry__2_i_1_n_0;
  wire p0_carry__2_i_2_n_0;
  wire p0_carry__2_i_3_n_0;
  wire p0_carry__2_i_4_n_0;
  wire p0_carry__2_n_0;
  wire p0_carry__2_n_1;
  wire p0_carry__2_n_2;
  wire p0_carry__2_n_3;
  wire p0_carry__3_i_1_n_0;
  wire p0_carry__3_i_2_n_0;
  wire p0_carry__3_i_3_n_0;
  wire p0_carry__3_i_4_n_0;
  wire p0_carry__3_n_0;
  wire p0_carry__3_n_1;
  wire p0_carry__3_n_2;
  wire p0_carry__3_n_3;
  wire p0_carry__4_i_1_n_0;
  wire p0_carry__4_i_2_n_0;
  wire p0_carry__4_i_3_n_0;
  wire p0_carry__4_i_4_n_0;
  wire p0_carry__4_n_0;
  wire p0_carry__4_n_1;
  wire p0_carry__4_n_2;
  wire p0_carry__4_n_3;
  wire p0_carry__5_i_1_n_0;
  wire p0_carry__5_i_2_n_0;
  wire p0_carry__5_i_3_n_0;
  wire p0_carry__5_i_4_n_0;
  wire p0_carry__5_n_0;
  wire p0_carry__5_n_1;
  wire p0_carry__5_n_2;
  wire p0_carry__5_n_3;
  wire p0_carry__6_i_1_n_0;
  wire p0_carry__6_i_2_n_0;
  wire p0_carry__6_i_3_n_0;
  wire p0_carry__6_i_4_n_0;
  wire p0_carry__6_n_1;
  wire p0_carry__6_n_2;
  wire p0_carry__6_n_3;
  wire p0_carry_i_1_n_0;
  wire p0_carry_i_2_n_0;
  wire p0_carry_i_3_n_0;
  wire p0_carry_n_0;
  wire p0_carry_n_1;
  wire p0_carry_n_2;
  wire p0_carry_n_3;
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
  wire [17:0]NLW_p0__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__1_CARRYOUT_UNCONNECTED;
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
  wire [3:3]NLW_p0_carry__6_CO_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 10x18 4}}" *) 
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,CFG_IN[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({P[26],P[26],P[26],P[26],P[26],P[26],P[26],P[26],P[26:17]}),
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
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 10x15 4}}" *) 
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
       (.A({CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({P[26],P[26],P[26],P[26],P[26],P[26],P[26],P[26],P[26:17]}),
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
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,P[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({p0__1_n_24,p0__1_n_25,p0__1_n_26,p0__1_n_27,p0__1_n_28,p0__1_n_29,p0__1_n_30,p0__1_n_31,p0__1_n_32,p0__1_n_33,p0__1_n_34,p0__1_n_35,p0__1_n_36,p0__1_n_37,p0__1_n_38,p0__1_n_39,p0__1_n_40,p0__1_n_41,p0__1_n_42,p0__1_n_43,p0__1_n_44,p0__1_n_45,p0__1_n_46,p0__1_n_47,p0__1_n_48,p0__1_n_49,p0__1_n_50,p0__1_n_51,p0__1_n_52,p0__1_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,CFG_IN[16:0]}),
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
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
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
    p0__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({p0__1_n_24,p0__1_n_25,p0__1_n_26,p0__1_n_27,p0__1_n_28,p0__1_n_29,p0__1_n_30,p0__1_n_31,p0__1_n_32,p0__1_n_33,p0__1_n_34,p0__1_n_35,p0__1_n_36,p0__1_n_37,p0__1_n_38,p0__1_n_39,p0__1_n_40,p0__1_n_41,p0__1_n_42,p0__1_n_43,p0__1_n_44,p0__1_n_45,p0__1_n_46,p0__1_n_47,p0__1_n_48,p0__1_n_49,p0__1_n_50,p0__1_n_51,p0__1_n_52,p0__1_n_53}),
        .ACOUT(NLW_p0__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31:17]}),
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
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__2_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry
       (.CI(1'b0),
        .CO({p0_carry_n_0,p0_carry_n_1,p0_carry_n_2,p0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_n_103,p0__2_n_104,p0__2_n_105,1'b0}),
        .O(p0__2_0[3:0]),
        .S({p0_carry_i_1_n_0,p0_carry_i_2_n_0,p0_carry_i_3_n_0,p0__1_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry__0
       (.CI(p0_carry_n_0),
        .CO({p0_carry__0_n_0,p0_carry__0_n_1,p0_carry__0_n_2,p0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_n_99,p0__2_n_100,p0__2_n_101,p0__2_n_102}),
        .O(p0__2_0[7:4]),
        .S({p0_carry__0_i_1_n_0,p0_carry__0_i_2_n_0,p0_carry__0_i_3_n_0,p0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__0_i_1
       (.I0(p0__2_n_99),
        .I1(p0_n_99),
        .O(p0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__0_i_2
       (.I0(p0__2_n_100),
        .I1(p0_n_100),
        .O(p0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__0_i_3
       (.I0(p0__2_n_101),
        .I1(p0_n_101),
        .O(p0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__0_i_4
       (.I0(p0__2_n_102),
        .I1(p0_n_102),
        .O(p0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry__1
       (.CI(p0_carry__0_n_0),
        .CO({p0_carry__1_n_0,p0_carry__1_n_1,p0_carry__1_n_2,p0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_n_95,p0__2_n_96,p0__2_n_97,p0__2_n_98}),
        .O(p0__2_0[11:8]),
        .S({p0_carry__1_i_1_n_0,p0_carry__1_i_2_n_0,p0_carry__1_i_3_n_0,p0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__1_i_1
       (.I0(p0__2_n_95),
        .I1(p0_n_95),
        .O(p0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__1_i_2
       (.I0(p0__2_n_96),
        .I1(p0_n_96),
        .O(p0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__1_i_3
       (.I0(p0__2_n_97),
        .I1(p0_n_97),
        .O(p0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__1_i_4
       (.I0(p0__2_n_98),
        .I1(p0_n_98),
        .O(p0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry__2
       (.CI(p0_carry__1_n_0),
        .CO({p0_carry__2_n_0,p0_carry__2_n_1,p0_carry__2_n_2,p0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_n_91,p0__2_n_92,p0__2_n_93,p0__2_n_94}),
        .O(p0__2_0[15:12]),
        .S({p0_carry__2_i_1_n_0,p0_carry__2_i_2_n_0,p0_carry__2_i_3_n_0,p0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__2_i_1
       (.I0(p0__2_n_91),
        .I1(p0_n_91),
        .O(p0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__2_i_2
       (.I0(p0__2_n_92),
        .I1(p0_n_92),
        .O(p0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__2_i_3
       (.I0(p0__2_n_93),
        .I1(p0_n_93),
        .O(p0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__2_i_4
       (.I0(p0__2_n_94),
        .I1(p0_n_94),
        .O(p0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry__3
       (.CI(p0_carry__2_n_0),
        .CO({p0_carry__3_n_0,p0_carry__3_n_1,p0_carry__3_n_2,p0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_n_87,p0__2_n_88,p0__2_n_89,p0__2_n_90}),
        .O(p0__2_0[19:16]),
        .S({p0_carry__3_i_1_n_0,p0_carry__3_i_2_n_0,p0_carry__3_i_3_n_0,p0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__3_i_1
       (.I0(p0__2_n_87),
        .I1(p0__0_n_104),
        .O(p0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__3_i_2
       (.I0(p0__2_n_88),
        .I1(p0__0_n_105),
        .O(p0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__3_i_3
       (.I0(p0__2_n_89),
        .I1(p0_n_89),
        .O(p0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__3_i_4
       (.I0(p0__2_n_90),
        .I1(p0_n_90),
        .O(p0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry__4
       (.CI(p0_carry__3_n_0),
        .CO({p0_carry__4_n_0,p0_carry__4_n_1,p0_carry__4_n_2,p0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_n_83,p0__2_n_84,p0__2_n_85,p0__2_n_86}),
        .O(p0__2_0[23:20]),
        .S({p0_carry__4_i_1_n_0,p0_carry__4_i_2_n_0,p0_carry__4_i_3_n_0,p0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__4_i_1
       (.I0(p0__2_n_83),
        .I1(p0__0_n_100),
        .O(p0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__4_i_2
       (.I0(p0__2_n_84),
        .I1(p0__0_n_101),
        .O(p0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__4_i_3
       (.I0(p0__2_n_85),
        .I1(p0__0_n_102),
        .O(p0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__4_i_4
       (.I0(p0__2_n_86),
        .I1(p0__0_n_103),
        .O(p0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry__5
       (.CI(p0_carry__4_n_0),
        .CO({p0_carry__5_n_0,p0_carry__5_n_1,p0_carry__5_n_2,p0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_n_79,p0__2_n_80,p0__2_n_81,p0__2_n_82}),
        .O(p0__2_0[27:24]),
        .S({p0_carry__5_i_1_n_0,p0_carry__5_i_2_n_0,p0_carry__5_i_3_n_0,p0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__5_i_1
       (.I0(p0__2_n_79),
        .I1(p0__0_n_96),
        .O(p0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__5_i_2
       (.I0(p0__2_n_80),
        .I1(p0__0_n_97),
        .O(p0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__5_i_3
       (.I0(p0__2_n_81),
        .I1(p0__0_n_98),
        .O(p0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__5_i_4
       (.I0(p0__2_n_82),
        .I1(p0__0_n_99),
        .O(p0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry__6
       (.CI(p0_carry__5_n_0),
        .CO({NLW_p0_carry__6_CO_UNCONNECTED[3],p0_carry__6_n_1,p0_carry__6_n_2,p0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,p0__2_n_76,p0__2_n_77,p0__2_n_78}),
        .O({a,p0__2_0[30:28]}),
        .S({p0_carry__6_i_1_n_0,p0_carry__6_i_2_n_0,p0_carry__6_i_3_n_0,p0_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__6_i_1
       (.I0(p0__2_n_75),
        .I1(p0__0_n_92),
        .O(p0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__6_i_2
       (.I0(p0__2_n_76),
        .I1(p0__0_n_93),
        .O(p0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__6_i_3
       (.I0(p0__2_n_77),
        .I1(p0__0_n_94),
        .O(p0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__6_i_4
       (.I0(p0__2_n_78),
        .I1(p0__0_n_95),
        .O(p0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry_i_1
       (.I0(p0__2_n_103),
        .I1(p0_n_103),
        .O(p0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry_i_2
       (.I0(p0__2_n_104),
        .I1(p0_n_104),
        .O(p0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry_i_3
       (.I0(p0__2_n_105),
        .I1(p0_n_105),
        .O(p0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_1
       (.I0(p0__2_0[7]),
        .I1(CFG_IN[39]),
        .O(\CFG_IN[39] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_2
       (.I0(p0__2_0[6]),
        .I1(CFG_IN[38]),
        .O(\CFG_IN[39] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_3
       (.I0(p0__2_0[5]),
        .I1(CFG_IN[37]),
        .O(\CFG_IN[39] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_4
       (.I0(p0__2_0[4]),
        .I1(CFG_IN[36]),
        .O(\CFG_IN[39] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_1
       (.I0(p0__2_0[11]),
        .I1(CFG_IN[43]),
        .O(\CFG_IN[43] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_2
       (.I0(p0__2_0[10]),
        .I1(CFG_IN[42]),
        .O(\CFG_IN[43] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_3
       (.I0(p0__2_0[9]),
        .I1(CFG_IN[41]),
        .O(\CFG_IN[43] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_4
       (.I0(p0__2_0[8]),
        .I1(CFG_IN[40]),
        .O(\CFG_IN[43] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_1
       (.I0(p0__2_0[15]),
        .I1(CFG_IN[47]),
        .O(\CFG_IN[47] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_2
       (.I0(p0__2_0[14]),
        .I1(CFG_IN[46]),
        .O(\CFG_IN[47] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_3
       (.I0(p0__2_0[13]),
        .I1(CFG_IN[45]),
        .O(\CFG_IN[47] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_4
       (.I0(p0__2_0[12]),
        .I1(CFG_IN[44]),
        .O(\CFG_IN[47] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_1
       (.I0(p0__2_0[19]),
        .I1(CFG_IN[51]),
        .O(\CFG_IN[51] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_2
       (.I0(p0__2_0[18]),
        .I1(CFG_IN[50]),
        .O(\CFG_IN[51] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_3
       (.I0(p0__2_0[17]),
        .I1(CFG_IN[49]),
        .O(\CFG_IN[51] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_4
       (.I0(p0__2_0[16]),
        .I1(CFG_IN[48]),
        .O(\CFG_IN[51] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_1
       (.I0(p0__2_0[23]),
        .I1(CFG_IN[55]),
        .O(\CFG_IN[55] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_2
       (.I0(p0__2_0[22]),
        .I1(CFG_IN[54]),
        .O(\CFG_IN[55] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_3
       (.I0(p0__2_0[21]),
        .I1(CFG_IN[53]),
        .O(\CFG_IN[55] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_4
       (.I0(p0__2_0[20]),
        .I1(CFG_IN[52]),
        .O(\CFG_IN[55] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_1
       (.I0(p0__2_0[27]),
        .I1(CFG_IN[59]),
        .O(\CFG_IN[59] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_2
       (.I0(p0__2_0[26]),
        .I1(CFG_IN[58]),
        .O(\CFG_IN[59] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_3
       (.I0(p0__2_0[25]),
        .I1(CFG_IN[57]),
        .O(\CFG_IN[59] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_4
       (.I0(p0__2_0[24]),
        .I1(CFG_IN[56]),
        .O(\CFG_IN[59] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_1
       (.I0(a),
        .I1(CFG_IN[63]),
        .O(\CFG_IN[63] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_2
       (.I0(p0__2_0[30]),
        .I1(CFG_IN[62]),
        .O(\CFG_IN[63] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_3
       (.I0(p0__2_0[29]),
        .I1(CFG_IN[61]),
        .O(\CFG_IN[63] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_4
       (.I0(p0__2_0[28]),
        .I1(CFG_IN[60]),
        .O(\CFG_IN[63] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_1
       (.I0(p0__2_0[3]),
        .I1(CFG_IN[35]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_2
       (.I0(p0__2_0[2]),
        .I1(CFG_IN[34]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_3
       (.I0(p0__2_0[1]),
        .I1(CFG_IN[33]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_4
       (.I0(p0__2_0[0]),
        .I1(CFG_IN[32]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "gen_mult" *) 
module system_ADC_DAC_LOOP_0_gen_mult_0
   (O,
    p0__2_0,
    p0__2_1,
    p0__2_2,
    p0__2_3,
    p0__2_4,
    p0__2_5,
    p0__2_6,
    S,
    \CFG_IN[103] ,
    \CFG_IN[107] ,
    \CFG_IN[111] ,
    \CFG_IN[115] ,
    \CFG_IN[119] ,
    \CFG_IN[123] ,
    \CFG_IN[127] ,
    Q,
    p0__2_7,
    D,
    CFG_IN);
  output [3:0]O;
  output [3:0]p0__2_0;
  output [3:0]p0__2_1;
  output [3:0]p0__2_2;
  output [3:0]p0__2_3;
  output [3:0]p0__2_4;
  output [3:0]p0__2_5;
  output [2:0]p0__2_6;
  output [3:0]S;
  output [3:0]\CFG_IN[103] ;
  output [3:0]\CFG_IN[107] ;
  output [3:0]\CFG_IN[111] ;
  output [3:0]\CFG_IN[115] ;
  output [3:0]\CFG_IN[119] ;
  output [3:0]\CFG_IN[123] ;
  output [3:0]\CFG_IN[127] ;
  input [1:0]Q;
  input p0__2_7;
  input [31:0]D;
  input [63:0]CFG_IN;

  wire [63:0]CFG_IN;
  wire [3:0]\CFG_IN[103] ;
  wire [3:0]\CFG_IN[107] ;
  wire [3:0]\CFG_IN[111] ;
  wire [3:0]\CFG_IN[115] ;
  wire [3:0]\CFG_IN[119] ;
  wire [3:0]\CFG_IN[123] ;
  wire [3:0]\CFG_IN[127] ;
  wire [31:0]D;
  wire [3:0]O;
  wire [1:0]Q;
  wire [3:0]S;
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
  wire [3:0]p0__2_0;
  wire [3:0]p0__2_1;
  wire [3:0]p0__2_2;
  wire [3:0]p0__2_3;
  wire [3:0]p0__2_4;
  wire [3:0]p0__2_5;
  wire [2:0]p0__2_6;
  wire p0__2_7;
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
  wire p0_carry__0_i_1__0_n_0;
  wire p0_carry__0_i_2__0_n_0;
  wire p0_carry__0_i_3__0_n_0;
  wire p0_carry__0_i_4__0_n_0;
  wire p0_carry__0_n_0;
  wire p0_carry__0_n_1;
  wire p0_carry__0_n_2;
  wire p0_carry__0_n_3;
  wire p0_carry__1_i_1__0_n_0;
  wire p0_carry__1_i_2__0_n_0;
  wire p0_carry__1_i_3__0_n_0;
  wire p0_carry__1_i_4__0_n_0;
  wire p0_carry__1_n_0;
  wire p0_carry__1_n_1;
  wire p0_carry__1_n_2;
  wire p0_carry__1_n_3;
  wire p0_carry__2_i_1__0_n_0;
  wire p0_carry__2_i_2__0_n_0;
  wire p0_carry__2_i_3__0_n_0;
  wire p0_carry__2_i_4__0_n_0;
  wire p0_carry__2_n_0;
  wire p0_carry__2_n_1;
  wire p0_carry__2_n_2;
  wire p0_carry__2_n_3;
  wire p0_carry__3_i_1__0_n_0;
  wire p0_carry__3_i_2__0_n_0;
  wire p0_carry__3_i_3__0_n_0;
  wire p0_carry__3_i_4__0_n_0;
  wire p0_carry__3_n_0;
  wire p0_carry__3_n_1;
  wire p0_carry__3_n_2;
  wire p0_carry__3_n_3;
  wire p0_carry__4_i_1__0_n_0;
  wire p0_carry__4_i_2__0_n_0;
  wire p0_carry__4_i_3__0_n_0;
  wire p0_carry__4_i_4__0_n_0;
  wire p0_carry__4_n_0;
  wire p0_carry__4_n_1;
  wire p0_carry__4_n_2;
  wire p0_carry__4_n_3;
  wire p0_carry__5_i_1__0_n_0;
  wire p0_carry__5_i_2__0_n_0;
  wire p0_carry__5_i_3__0_n_0;
  wire p0_carry__5_i_4__0_n_0;
  wire p0_carry__5_n_0;
  wire p0_carry__5_n_1;
  wire p0_carry__5_n_2;
  wire p0_carry__5_n_3;
  wire p0_carry__6_i_1__0_n_0;
  wire p0_carry__6_i_2__0_n_0;
  wire p0_carry__6_i_3__0_n_0;
  wire p0_carry__6_i_4__0_n_0;
  wire p0_carry__6_n_1;
  wire p0_carry__6_n_2;
  wire p0_carry__6_n_3;
  wire p0_carry__6_n_4;
  wire p0_carry_i_1__0_n_0;
  wire p0_carry_i_2__0_n_0;
  wire p0_carry_i_3__0_n_0;
  wire p0_carry_n_0;
  wire p0_carry_n_1;
  wire p0_carry_n_2;
  wire p0_carry_n_3;
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
  wire [29:0]NLW_p0__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__2_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__2_PCOUT_UNCONNECTED;
  wire [3:3]NLW_p0_carry__6_CO_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
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
    .IS_CLK_INVERTED(1'b1),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,CFG_IN[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({D[31],D[31],D[31],D[31:17]}),
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
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(p0__2_7),
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
        .RSTB(Q[0]),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x15 4}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
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
    .IS_CLK_INVERTED(1'b1),
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
       (.A({D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31],D[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[1]),
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
        .CLK(p0__2_7),
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
        .RSTA(Q[0]),
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
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
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
    .IS_CLK_INVERTED(1'b1),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,CFG_IN[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[1]),
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
        .CLK(p0__2_7),
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
        .RSTA(Q[0]),
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
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  (* OPT_MODIFIED = "MLO" *) 
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
    .IS_CLK_INVERTED(1'b1),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,D[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({CFG_IN[31],CFG_IN[31],CFG_IN[31],CFG_IN[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p0__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p0__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p0__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q[1]),
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
        .CLK(p0__2_7),
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
        .RSTA(Q[0]),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry
       (.CI(1'b0),
        .CO({p0_carry_n_0,p0_carry_n_1,p0_carry_n_2,p0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_n_103,p0__2_n_104,p0__2_n_105,1'b0}),
        .O(O),
        .S({p0_carry_i_1__0_n_0,p0_carry_i_2__0_n_0,p0_carry_i_3__0_n_0,p0__1_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry__0
       (.CI(p0_carry_n_0),
        .CO({p0_carry__0_n_0,p0_carry__0_n_1,p0_carry__0_n_2,p0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_n_99,p0__2_n_100,p0__2_n_101,p0__2_n_102}),
        .O(p0__2_0),
        .S({p0_carry__0_i_1__0_n_0,p0_carry__0_i_2__0_n_0,p0_carry__0_i_3__0_n_0,p0_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__0_i_1__0
       (.I0(p0__2_n_99),
        .I1(p0_n_99),
        .O(p0_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__0_i_2__0
       (.I0(p0__2_n_100),
        .I1(p0_n_100),
        .O(p0_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__0_i_3__0
       (.I0(p0__2_n_101),
        .I1(p0_n_101),
        .O(p0_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__0_i_4__0
       (.I0(p0__2_n_102),
        .I1(p0_n_102),
        .O(p0_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry__1
       (.CI(p0_carry__0_n_0),
        .CO({p0_carry__1_n_0,p0_carry__1_n_1,p0_carry__1_n_2,p0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_n_95,p0__2_n_96,p0__2_n_97,p0__2_n_98}),
        .O(p0__2_1),
        .S({p0_carry__1_i_1__0_n_0,p0_carry__1_i_2__0_n_0,p0_carry__1_i_3__0_n_0,p0_carry__1_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__1_i_1__0
       (.I0(p0__2_n_95),
        .I1(p0_n_95),
        .O(p0_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__1_i_2__0
       (.I0(p0__2_n_96),
        .I1(p0_n_96),
        .O(p0_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__1_i_3__0
       (.I0(p0__2_n_97),
        .I1(p0_n_97),
        .O(p0_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__1_i_4__0
       (.I0(p0__2_n_98),
        .I1(p0_n_98),
        .O(p0_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry__2
       (.CI(p0_carry__1_n_0),
        .CO({p0_carry__2_n_0,p0_carry__2_n_1,p0_carry__2_n_2,p0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_n_91,p0__2_n_92,p0__2_n_93,p0__2_n_94}),
        .O(p0__2_2),
        .S({p0_carry__2_i_1__0_n_0,p0_carry__2_i_2__0_n_0,p0_carry__2_i_3__0_n_0,p0_carry__2_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__2_i_1__0
       (.I0(p0__2_n_91),
        .I1(p0_n_91),
        .O(p0_carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__2_i_2__0
       (.I0(p0__2_n_92),
        .I1(p0_n_92),
        .O(p0_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__2_i_3__0
       (.I0(p0__2_n_93),
        .I1(p0_n_93),
        .O(p0_carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__2_i_4__0
       (.I0(p0__2_n_94),
        .I1(p0_n_94),
        .O(p0_carry__2_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry__3
       (.CI(p0_carry__2_n_0),
        .CO({p0_carry__3_n_0,p0_carry__3_n_1,p0_carry__3_n_2,p0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_n_87,p0__2_n_88,p0__2_n_89,p0__2_n_90}),
        .O(p0__2_3),
        .S({p0_carry__3_i_1__0_n_0,p0_carry__3_i_2__0_n_0,p0_carry__3_i_3__0_n_0,p0_carry__3_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__3_i_1__0
       (.I0(p0__2_n_87),
        .I1(p0__0_n_104),
        .O(p0_carry__3_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__3_i_2__0
       (.I0(p0__2_n_88),
        .I1(p0__0_n_105),
        .O(p0_carry__3_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__3_i_3__0
       (.I0(p0__2_n_89),
        .I1(p0_n_89),
        .O(p0_carry__3_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__3_i_4__0
       (.I0(p0__2_n_90),
        .I1(p0_n_90),
        .O(p0_carry__3_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry__4
       (.CI(p0_carry__3_n_0),
        .CO({p0_carry__4_n_0,p0_carry__4_n_1,p0_carry__4_n_2,p0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_n_83,p0__2_n_84,p0__2_n_85,p0__2_n_86}),
        .O(p0__2_4),
        .S({p0_carry__4_i_1__0_n_0,p0_carry__4_i_2__0_n_0,p0_carry__4_i_3__0_n_0,p0_carry__4_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__4_i_1__0
       (.I0(p0__2_n_83),
        .I1(p0__0_n_100),
        .O(p0_carry__4_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__4_i_2__0
       (.I0(p0__2_n_84),
        .I1(p0__0_n_101),
        .O(p0_carry__4_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__4_i_3__0
       (.I0(p0__2_n_85),
        .I1(p0__0_n_102),
        .O(p0_carry__4_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__4_i_4__0
       (.I0(p0__2_n_86),
        .I1(p0__0_n_103),
        .O(p0_carry__4_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry__5
       (.CI(p0_carry__4_n_0),
        .CO({p0_carry__5_n_0,p0_carry__5_n_1,p0_carry__5_n_2,p0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_n_79,p0__2_n_80,p0__2_n_81,p0__2_n_82}),
        .O(p0__2_5),
        .S({p0_carry__5_i_1__0_n_0,p0_carry__5_i_2__0_n_0,p0_carry__5_i_3__0_n_0,p0_carry__5_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__5_i_1__0
       (.I0(p0__2_n_79),
        .I1(p0__0_n_96),
        .O(p0_carry__5_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__5_i_2__0
       (.I0(p0__2_n_80),
        .I1(p0__0_n_97),
        .O(p0_carry__5_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__5_i_3__0
       (.I0(p0__2_n_81),
        .I1(p0__0_n_98),
        .O(p0_carry__5_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__5_i_4__0
       (.I0(p0__2_n_82),
        .I1(p0__0_n_99),
        .O(p0_carry__5_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0_carry__6
       (.CI(p0_carry__5_n_0),
        .CO({NLW_p0_carry__6_CO_UNCONNECTED[3],p0_carry__6_n_1,p0_carry__6_n_2,p0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,p0__2_n_76,p0__2_n_77,p0__2_n_78}),
        .O({p0_carry__6_n_4,p0__2_6}),
        .S({p0_carry__6_i_1__0_n_0,p0_carry__6_i_2__0_n_0,p0_carry__6_i_3__0_n_0,p0_carry__6_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__6_i_1__0
       (.I0(p0__2_n_75),
        .I1(p0__0_n_92),
        .O(p0_carry__6_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__6_i_2__0
       (.I0(p0__2_n_76),
        .I1(p0__0_n_93),
        .O(p0_carry__6_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__6_i_3__0
       (.I0(p0__2_n_77),
        .I1(p0__0_n_94),
        .O(p0_carry__6_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry__6_i_4__0
       (.I0(p0__2_n_78),
        .I1(p0__0_n_95),
        .O(p0_carry__6_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry_i_1__0
       (.I0(p0__2_n_103),
        .I1(p0_n_103),
        .O(p0_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry_i_2__0
       (.I0(p0__2_n_104),
        .I1(p0_n_104),
        .O(p0_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0_carry_i_3__0
       (.I0(p0__2_n_105),
        .I1(p0_n_105),
        .O(p0_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_1__0
       (.I0(p0__2_0[3]),
        .I1(CFG_IN[39]),
        .O(\CFG_IN[103] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_2__0
       (.I0(p0__2_0[2]),
        .I1(CFG_IN[38]),
        .O(\CFG_IN[103] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_3__0
       (.I0(p0__2_0[1]),
        .I1(CFG_IN[37]),
        .O(\CFG_IN[103] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__0_i_4__0
       (.I0(p0__2_0[0]),
        .I1(CFG_IN[36]),
        .O(\CFG_IN[103] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_1__0
       (.I0(p0__2_1[3]),
        .I1(CFG_IN[43]),
        .O(\CFG_IN[107] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_2__0
       (.I0(p0__2_1[2]),
        .I1(CFG_IN[42]),
        .O(\CFG_IN[107] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_3__0
       (.I0(p0__2_1[1]),
        .I1(CFG_IN[41]),
        .O(\CFG_IN[107] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__1_i_4__0
       (.I0(p0__2_1[0]),
        .I1(CFG_IN[40]),
        .O(\CFG_IN[107] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_1__0
       (.I0(p0__2_2[3]),
        .I1(CFG_IN[47]),
        .O(\CFG_IN[111] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_2__0
       (.I0(p0__2_2[2]),
        .I1(CFG_IN[46]),
        .O(\CFG_IN[111] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_3__0
       (.I0(p0__2_2[1]),
        .I1(CFG_IN[45]),
        .O(\CFG_IN[111] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__2_i_4__0
       (.I0(p0__2_2[0]),
        .I1(CFG_IN[44]),
        .O(\CFG_IN[111] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_1__0
       (.I0(p0__2_3[3]),
        .I1(CFG_IN[51]),
        .O(\CFG_IN[115] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_2__0
       (.I0(p0__2_3[2]),
        .I1(CFG_IN[50]),
        .O(\CFG_IN[115] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_3__0
       (.I0(p0__2_3[1]),
        .I1(CFG_IN[49]),
        .O(\CFG_IN[115] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__3_i_4__0
       (.I0(p0__2_3[0]),
        .I1(CFG_IN[48]),
        .O(\CFG_IN[115] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_1__0
       (.I0(p0__2_4[3]),
        .I1(CFG_IN[55]),
        .O(\CFG_IN[119] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_2__0
       (.I0(p0__2_4[2]),
        .I1(CFG_IN[54]),
        .O(\CFG_IN[119] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_3__0
       (.I0(p0__2_4[1]),
        .I1(CFG_IN[53]),
        .O(\CFG_IN[119] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__4_i_4__0
       (.I0(p0__2_4[0]),
        .I1(CFG_IN[52]),
        .O(\CFG_IN[119] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_1__0
       (.I0(p0__2_5[3]),
        .I1(CFG_IN[59]),
        .O(\CFG_IN[123] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_2__0
       (.I0(p0__2_5[2]),
        .I1(CFG_IN[58]),
        .O(\CFG_IN[123] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_3__0
       (.I0(p0__2_5[1]),
        .I1(CFG_IN[57]),
        .O(\CFG_IN[123] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__5_i_4__0
       (.I0(p0__2_5[0]),
        .I1(CFG_IN[56]),
        .O(\CFG_IN[123] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_1__0
       (.I0(p0_carry__6_n_4),
        .I1(CFG_IN[63]),
        .O(\CFG_IN[127] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_2__0
       (.I0(p0__2_6[2]),
        .I1(CFG_IN[62]),
        .O(\CFG_IN[127] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_3__0
       (.I0(p0__2_6[1]),
        .I1(CFG_IN[61]),
        .O(\CFG_IN[127] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry__6_i_4__0
       (.I0(p0__2_6[0]),
        .I1(CFG_IN[60]),
        .O(\CFG_IN[127] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_1__0
       (.I0(O[3]),
        .I1(CFG_IN[35]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_2__0
       (.I0(O[2]),
        .I1(CFG_IN[34]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_3__0
       (.I0(O[1]),
        .I1(CFG_IN[33]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    s0_carry_i_4__0
       (.I0(O[0]),
        .I1(CFG_IN[32]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "gen_mult" *) 
module system_ADC_DAC_LOOP_0_gen_mult_2
   (DACB_CODE_OUT,
    a0_out);
  output [13:0]DACB_CODE_OUT;
  input [31:0]a0_out;

  wire [13:0]DACB_CODE_OUT;
  wire \DACB_CODE_OUT[0]_INST_0_i_10_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_11_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_11_n_1 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_11_n_2 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_11_n_3 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_12_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_13_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_14_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_15_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_16_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_16_n_1 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_16_n_2 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_16_n_3 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_17_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_18_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_19_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_1_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_1_n_1 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_1_n_2 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_1_n_3 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_20_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_21_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_22_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_23_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_2_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_3_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_4_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_5_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_6_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_6_n_1 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_6_n_2 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_6_n_3 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_7_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_8_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_i_9_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_n_0 ;
  wire \DACB_CODE_OUT[0]_INST_0_n_1 ;
  wire \DACB_CODE_OUT[0]_INST_0_n_2 ;
  wire \DACB_CODE_OUT[0]_INST_0_n_3 ;
  wire \DACB_CODE_OUT[12]_INST_0_i_1_n_0 ;
  wire \DACB_CODE_OUT[12]_INST_0_i_2_n_0 ;
  wire \DACB_CODE_OUT[12]_INST_0_n_3 ;
  wire \DACB_CODE_OUT[4]_INST_0_i_1_n_0 ;
  wire \DACB_CODE_OUT[4]_INST_0_i_2_n_0 ;
  wire \DACB_CODE_OUT[4]_INST_0_i_3_n_0 ;
  wire \DACB_CODE_OUT[4]_INST_0_i_4_n_0 ;
  wire \DACB_CODE_OUT[4]_INST_0_n_0 ;
  wire \DACB_CODE_OUT[4]_INST_0_n_1 ;
  wire \DACB_CODE_OUT[4]_INST_0_n_2 ;
  wire \DACB_CODE_OUT[4]_INST_0_n_3 ;
  wire \DACB_CODE_OUT[8]_INST_0_i_1_n_0 ;
  wire \DACB_CODE_OUT[8]_INST_0_i_2_n_0 ;
  wire \DACB_CODE_OUT[8]_INST_0_i_3_n_0 ;
  wire \DACB_CODE_OUT[8]_INST_0_i_4_n_0 ;
  wire \DACB_CODE_OUT[8]_INST_0_n_0 ;
  wire \DACB_CODE_OUT[8]_INST_0_n_1 ;
  wire \DACB_CODE_OUT[8]_INST_0_n_2 ;
  wire \DACB_CODE_OUT[8]_INST_0_n_3 ;
  wire [31:0]a0_out;
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
  wire p0__1_n_24;
  wire p0__1_n_25;
  wire p0__1_n_26;
  wire p0__1_n_27;
  wire p0__1_n_28;
  wire p0__1_n_29;
  wire p0__1_n_30;
  wire p0__1_n_31;
  wire p0__1_n_32;
  wire p0__1_n_33;
  wire p0__1_n_34;
  wire p0__1_n_35;
  wire p0__1_n_36;
  wire p0__1_n_37;
  wire p0__1_n_38;
  wire p0__1_n_39;
  wire p0__1_n_40;
  wire p0__1_n_41;
  wire p0__1_n_42;
  wire p0__1_n_43;
  wire p0__1_n_44;
  wire p0__1_n_45;
  wire p0__1_n_46;
  wire p0__1_n_47;
  wire p0__1_n_48;
  wire p0__1_n_49;
  wire p0__1_n_50;
  wire p0__1_n_51;
  wire p0__1_n_52;
  wire p0__1_n_53;
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
  wire [3:0]\NLW_DACB_CODE_OUT[0]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_DACB_CODE_OUT[0]_INST_0_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_DACB_CODE_OUT[0]_INST_0_i_16_O_UNCONNECTED ;
  wire [3:0]\NLW_DACB_CODE_OUT[0]_INST_0_i_6_O_UNCONNECTED ;
  wire [3:1]\NLW_DACB_CODE_OUT[12]_INST_0_CO_UNCONNECTED ;
  wire [3:2]\NLW_DACB_CODE_OUT[12]_INST_0_O_UNCONNECTED ;
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
  wire [17:0]NLW_p0__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__1_CARRYOUT_UNCONNECTED;
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

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \DACB_CODE_OUT[0]_INST_0 
       (.CI(\DACB_CODE_OUT[0]_INST_0_i_1_n_0 ),
        .CO({\DACB_CODE_OUT[0]_INST_0_n_0 ,\DACB_CODE_OUT[0]_INST_0_n_1 ,\DACB_CODE_OUT[0]_INST_0_n_2 ,\DACB_CODE_OUT[0]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__2_n_87,p0__2_n_88,p0__2_n_89,p0__2_n_90}),
        .O(DACB_CODE_OUT[3:0]),
        .S({\DACB_CODE_OUT[0]_INST_0_i_2_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_3_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_4_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \DACB_CODE_OUT[0]_INST_0_i_1 
       (.CI(\DACB_CODE_OUT[0]_INST_0_i_6_n_0 ),
        .CO({\DACB_CODE_OUT[0]_INST_0_i_1_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_1_n_1 ,\DACB_CODE_OUT[0]_INST_0_i_1_n_2 ,\DACB_CODE_OUT[0]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__2_n_91,p0__2_n_92,p0__2_n_93,p0__2_n_94}),
        .O(\NLW_DACB_CODE_OUT[0]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\DACB_CODE_OUT[0]_INST_0_i_7_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_8_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_9_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_10_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_10 
       (.I0(p0__2_n_94),
        .I1(p0_n_94),
        .O(\DACB_CODE_OUT[0]_INST_0_i_10_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \DACB_CODE_OUT[0]_INST_0_i_11 
       (.CI(\DACB_CODE_OUT[0]_INST_0_i_16_n_0 ),
        .CO({\DACB_CODE_OUT[0]_INST_0_i_11_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_11_n_1 ,\DACB_CODE_OUT[0]_INST_0_i_11_n_2 ,\DACB_CODE_OUT[0]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__2_n_99,p0__2_n_100,p0__2_n_101,p0__2_n_102}),
        .O(\NLW_DACB_CODE_OUT[0]_INST_0_i_11_O_UNCONNECTED [3:0]),
        .S({\DACB_CODE_OUT[0]_INST_0_i_17_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_18_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_19_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_20_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_12 
       (.I0(p0__2_n_95),
        .I1(p0_n_95),
        .O(\DACB_CODE_OUT[0]_INST_0_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_13 
       (.I0(p0__2_n_96),
        .I1(p0_n_96),
        .O(\DACB_CODE_OUT[0]_INST_0_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_14 
       (.I0(p0__2_n_97),
        .I1(p0_n_97),
        .O(\DACB_CODE_OUT[0]_INST_0_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_15 
       (.I0(p0__2_n_98),
        .I1(p0_n_98),
        .O(\DACB_CODE_OUT[0]_INST_0_i_15_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \DACB_CODE_OUT[0]_INST_0_i_16 
       (.CI(1'b0),
        .CO({\DACB_CODE_OUT[0]_INST_0_i_16_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_16_n_1 ,\DACB_CODE_OUT[0]_INST_0_i_16_n_2 ,\DACB_CODE_OUT[0]_INST_0_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__2_n_103,p0__2_n_104,p0__2_n_105,1'b0}),
        .O(\NLW_DACB_CODE_OUT[0]_INST_0_i_16_O_UNCONNECTED [3:0]),
        .S({\DACB_CODE_OUT[0]_INST_0_i_21_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_22_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_23_n_0 ,p0__1_n_89}));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_17 
       (.I0(p0__2_n_99),
        .I1(p0_n_99),
        .O(\DACB_CODE_OUT[0]_INST_0_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_18 
       (.I0(p0__2_n_100),
        .I1(p0_n_100),
        .O(\DACB_CODE_OUT[0]_INST_0_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_19 
       (.I0(p0__2_n_101),
        .I1(p0_n_101),
        .O(\DACB_CODE_OUT[0]_INST_0_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_2 
       (.I0(p0__2_n_87),
        .I1(p0__0_n_104),
        .O(\DACB_CODE_OUT[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_20 
       (.I0(p0__2_n_102),
        .I1(p0_n_102),
        .O(\DACB_CODE_OUT[0]_INST_0_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_21 
       (.I0(p0__2_n_103),
        .I1(p0_n_103),
        .O(\DACB_CODE_OUT[0]_INST_0_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_22 
       (.I0(p0__2_n_104),
        .I1(p0_n_104),
        .O(\DACB_CODE_OUT[0]_INST_0_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_23 
       (.I0(p0__2_n_105),
        .I1(p0_n_105),
        .O(\DACB_CODE_OUT[0]_INST_0_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_3 
       (.I0(p0__2_n_88),
        .I1(p0__0_n_105),
        .O(\DACB_CODE_OUT[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_4 
       (.I0(p0__2_n_89),
        .I1(p0_n_89),
        .O(\DACB_CODE_OUT[0]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_5 
       (.I0(p0__2_n_90),
        .I1(p0_n_90),
        .O(\DACB_CODE_OUT[0]_INST_0_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \DACB_CODE_OUT[0]_INST_0_i_6 
       (.CI(\DACB_CODE_OUT[0]_INST_0_i_11_n_0 ),
        .CO({\DACB_CODE_OUT[0]_INST_0_i_6_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_6_n_1 ,\DACB_CODE_OUT[0]_INST_0_i_6_n_2 ,\DACB_CODE_OUT[0]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__2_n_95,p0__2_n_96,p0__2_n_97,p0__2_n_98}),
        .O(\NLW_DACB_CODE_OUT[0]_INST_0_i_6_O_UNCONNECTED [3:0]),
        .S({\DACB_CODE_OUT[0]_INST_0_i_12_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_13_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_14_n_0 ,\DACB_CODE_OUT[0]_INST_0_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_7 
       (.I0(p0__2_n_91),
        .I1(p0_n_91),
        .O(\DACB_CODE_OUT[0]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_8 
       (.I0(p0__2_n_92),
        .I1(p0_n_92),
        .O(\DACB_CODE_OUT[0]_INST_0_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[0]_INST_0_i_9 
       (.I0(p0__2_n_93),
        .I1(p0_n_93),
        .O(\DACB_CODE_OUT[0]_INST_0_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \DACB_CODE_OUT[12]_INST_0 
       (.CI(\DACB_CODE_OUT[8]_INST_0_n_0 ),
        .CO({\NLW_DACB_CODE_OUT[12]_INST_0_CO_UNCONNECTED [3:1],\DACB_CODE_OUT[12]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p0__2_n_78}),
        .O({\NLW_DACB_CODE_OUT[12]_INST_0_O_UNCONNECTED [3:2],DACB_CODE_OUT[13:12]}),
        .S({1'b0,1'b0,\DACB_CODE_OUT[12]_INST_0_i_1_n_0 ,\DACB_CODE_OUT[12]_INST_0_i_2_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[12]_INST_0_i_1 
       (.I0(p0__2_n_77),
        .I1(p0__0_n_94),
        .O(\DACB_CODE_OUT[12]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[12]_INST_0_i_2 
       (.I0(p0__2_n_78),
        .I1(p0__0_n_95),
        .O(\DACB_CODE_OUT[12]_INST_0_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \DACB_CODE_OUT[4]_INST_0 
       (.CI(\DACB_CODE_OUT[0]_INST_0_n_0 ),
        .CO({\DACB_CODE_OUT[4]_INST_0_n_0 ,\DACB_CODE_OUT[4]_INST_0_n_1 ,\DACB_CODE_OUT[4]_INST_0_n_2 ,\DACB_CODE_OUT[4]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__2_n_83,p0__2_n_84,p0__2_n_85,p0__2_n_86}),
        .O(DACB_CODE_OUT[7:4]),
        .S({\DACB_CODE_OUT[4]_INST_0_i_1_n_0 ,\DACB_CODE_OUT[4]_INST_0_i_2_n_0 ,\DACB_CODE_OUT[4]_INST_0_i_3_n_0 ,\DACB_CODE_OUT[4]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[4]_INST_0_i_1 
       (.I0(p0__2_n_83),
        .I1(p0__0_n_100),
        .O(\DACB_CODE_OUT[4]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[4]_INST_0_i_2 
       (.I0(p0__2_n_84),
        .I1(p0__0_n_101),
        .O(\DACB_CODE_OUT[4]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[4]_INST_0_i_3 
       (.I0(p0__2_n_85),
        .I1(p0__0_n_102),
        .O(\DACB_CODE_OUT[4]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[4]_INST_0_i_4 
       (.I0(p0__2_n_86),
        .I1(p0__0_n_103),
        .O(\DACB_CODE_OUT[4]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \DACB_CODE_OUT[8]_INST_0 
       (.CI(\DACB_CODE_OUT[4]_INST_0_n_0 ),
        .CO({\DACB_CODE_OUT[8]_INST_0_n_0 ,\DACB_CODE_OUT[8]_INST_0_n_1 ,\DACB_CODE_OUT[8]_INST_0_n_2 ,\DACB_CODE_OUT[8]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({p0__2_n_79,p0__2_n_80,p0__2_n_81,p0__2_n_82}),
        .O(DACB_CODE_OUT[11:8]),
        .S({\DACB_CODE_OUT[8]_INST_0_i_1_n_0 ,\DACB_CODE_OUT[8]_INST_0_i_2_n_0 ,\DACB_CODE_OUT[8]_INST_0_i_3_n_0 ,\DACB_CODE_OUT[8]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[8]_INST_0_i_1 
       (.I0(p0__2_n_79),
        .I1(p0__0_n_96),
        .O(\DACB_CODE_OUT[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[8]_INST_0_i_2 
       (.I0(p0__2_n_80),
        .I1(p0__0_n_97),
        .O(\DACB_CODE_OUT[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[8]_INST_0_i_3 
       (.I0(p0__2_n_81),
        .I1(p0__0_n_98),
        .O(\DACB_CODE_OUT[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \DACB_CODE_OUT[8]_INST_0_i_4 
       (.I0(p0__2_n_82),
        .I1(p0__0_n_99),
        .O(\DACB_CODE_OUT[8]_INST_0_i_4_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
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
       (.A({a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0}),
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
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x10 4}}" *) 
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
       (.A({a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31],a0_out[31:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
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
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a0_out[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({p0__1_n_24,p0__1_n_25,p0__1_n_26,p0__1_n_27,p0__1_n_28,p0__1_n_29,p0__1_n_30,p0__1_n_31,p0__1_n_32,p0__1_n_33,p0__1_n_34,p0__1_n_35,p0__1_n_36,p0__1_n_37,p0__1_n_38,p0__1_n_39,p0__1_n_40,p0__1_n_41,p0__1_n_42,p0__1_n_43,p0__1_n_44,p0__1_n_45,p0__1_n_46,p0__1_n_47,p0__1_n_48,p0__1_n_49,p0__1_n_50,p0__1_n_51,p0__1_n_52,p0__1_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0}),
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
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x10 4}}" *) 
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
    p0__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({p0__1_n_24,p0__1_n_25,p0__1_n_26,p0__1_n_27,p0__1_n_28,p0__1_n_29,p0__1_n_30,p0__1_n_31,p0__1_n_32,p0__1_n_33,p0__1_n_34,p0__1_n_35,p0__1_n_36,p0__1_n_37,p0__1_n_38,p0__1_n_39,p0__1_n_40,p0__1_n_41,p0__1_n_42,p0__1_n_43,p0__1_n_44,p0__1_n_45,p0__1_n_46,p0__1_n_47,p0__1_n_48,p0__1_n_49,p0__1_n_50,p0__1_n_51,p0__1_n_52,p0__1_n_53}),
        .ACOUT(NLW_p0__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
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
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__2_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "gen_mult" *) 
module system_ADC_DAC_LOOP_0_gen_mult_3
   (P,
    VALID_SUM,
    ADC_CLK,
    Q);
  output [26:0]P;
  input VALID_SUM;
  input ADC_CLK;
  input [11:0]Q;

  wire ADC_CLK;
  wire [26:0]P;
  wire [11:0]Q;
  wire VALID_SUM;
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
  wire p0__0_n_96;
  wire p0__0_n_97;
  wire p0__0_n_98;
  wire p0__0_n_99;
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
  wire p0_n_24;
  wire p0_n_25;
  wire p0_n_26;
  wire p0_n_27;
  wire p0_n_28;
  wire p0_n_29;
  wire p0_n_30;
  wire p0_n_31;
  wire p0_n_32;
  wire p0_n_33;
  wire p0_n_34;
  wire p0_n_35;
  wire p0_n_36;
  wire p0_n_37;
  wire p0_n_38;
  wire p0_n_39;
  wire p0_n_40;
  wire p0_n_41;
  wire p0_n_42;
  wire p0_n_43;
  wire p0_n_44;
  wire p0_n_45;
  wire p0_n_46;
  wire p0_n_47;
  wire p0_n_48;
  wire p0_n_49;
  wire p0_n_50;
  wire p0_n_51;
  wire p0_n_52;
  wire p0_n_53;
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
  wire NLW_p0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0_OVERFLOW_UNCONNECTED;
  wire NLW_p0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0_UNDERFLOW_UNCONNECTED;
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

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({p0_n_24,p0_n_25,p0_n_26,p0_n_27,p0_n_28,p0_n_29,p0_n_30,p0_n_31,p0_n_32,p0_n_33,p0_n_34,p0_n_35,p0_n_36,p0_n_37,p0_n_38,p0_n_39,p0_n_40,p0_n_41,p0_n_42,p0_n_43,p0_n_44,p0_n_45,p0_n_46,p0_n_47,p0_n_48,p0_n_49,p0_n_50,p0_n_51,p0_n_52,p0_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,Q[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .CEB2(VALID_SUM),
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
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
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
    p0__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({p0_n_24,p0_n_25,p0_n_26,p0_n_27,p0_n_28,p0_n_29,p0_n_30,p0_n_31,p0_n_32,p0_n_33,p0_n_34,p0_n_35,p0_n_36,p0_n_37,p0_n_38,p0_n_39,p0_n_40,p0_n_41,p0_n_42,p0_n_43,p0_n_44,p0_n_45,p0_n_46,p0_n_47,p0_n_48,p0_n_49,p0_n_50,p0_n_51,p0_n_52,p0_n_53}),
        .ACOUT(NLW_p0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({Q[11],Q[11],Q[11],Q[11],Q[11],Q[11],Q[11],Q[11:1]}),
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
        .CEB2(VALID_SUM),
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
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__0_OVERFLOW_UNCONNECTED),
        .P({p0__0_n_58,p0__0_n_59,p0__0_n_60,p0__0_n_61,p0__0_n_62,p0__0_n_63,p0__0_n_64,p0__0_n_65,p0__0_n_66,p0__0_n_67,p0__0_n_68,P,p0__0_n_96,p0__0_n_97,p0__0_n_98,p0__0_n_99,p0__0_n_100,p0__0_n_101,p0__0_n_102,p0__0_n_103,p0__0_n_104,p0__0_n_105}),
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
endmodule

(* ORIG_REF_NAME = "gen_reg" *) 
module system_ADC_DAC_LOOP_0_gen_reg
   (GP_OUT,
    Q,
    D,
    ADC_CLK);
  output [31:0]GP_OUT;
  input [1:0]Q;
  input [31:0]D;
  input ADC_CLK;

  wire ADC_CLK;
  wire [31:0]D;
  wire [31:0]GP_OUT;
  wire [1:0]Q;

  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[0] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[0]),
        .Q(GP_OUT[0]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[10] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[10]),
        .Q(GP_OUT[10]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[11] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[11]),
        .Q(GP_OUT[11]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[12] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[12]),
        .Q(GP_OUT[12]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[13] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[13]),
        .Q(GP_OUT[13]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[14] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[14]),
        .Q(GP_OUT[14]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[15] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[15]),
        .Q(GP_OUT[15]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[16] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[16]),
        .Q(GP_OUT[16]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[17] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[17]),
        .Q(GP_OUT[17]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[18] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[18]),
        .Q(GP_OUT[18]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[19] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[19]),
        .Q(GP_OUT[19]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[1] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[1]),
        .Q(GP_OUT[1]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[20] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[20]),
        .Q(GP_OUT[20]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[21] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[21]),
        .Q(GP_OUT[21]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[22] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[22]),
        .Q(GP_OUT[22]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[23] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[23]),
        .Q(GP_OUT[23]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[24] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[24]),
        .Q(GP_OUT[24]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[25] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[25]),
        .Q(GP_OUT[25]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[26] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[26]),
        .Q(GP_OUT[26]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[27] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[27]),
        .Q(GP_OUT[27]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[28] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[28]),
        .Q(GP_OUT[28]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[29] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[29]),
        .Q(GP_OUT[29]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[2] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[2]),
        .Q(GP_OUT[2]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[30] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[30]),
        .Q(GP_OUT[30]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[31] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[31]),
        .Q(GP_OUT[31]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[3] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[3]),
        .Q(GP_OUT[3]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[4] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[4]),
        .Q(GP_OUT[4]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[5] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[5]),
        .Q(GP_OUT[5]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[6] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[6]),
        .Q(GP_OUT[6]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[7] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[7]),
        .Q(GP_OUT[7]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[8] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[8]),
        .Q(GP_OUT[8]),
        .R(Q[0]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \int_data_reg_reg[9] 
       (.C(ADC_CLK),
        .CE(Q[1]),
        .D(D[9]),
        .Q(GP_OUT[9]),
        .R(Q[0]));
endmodule

(* ORIG_REF_NAME = "gen_subber" *) 
module system_ADC_DAC_LOOP_0_gen_subber
   (D,
    a,
    S,
    \int_data_reg_reg[7] ,
    \int_data_reg_reg[11] ,
    \int_data_reg_reg[15] ,
    \int_data_reg_reg[19] ,
    \int_data_reg_reg[23] ,
    \int_data_reg_reg[27] ,
    \int_data_reg_reg[31] );
  output [31:0]D;
  input [30:0]a;
  input [3:0]S;
  input [3:0]\int_data_reg_reg[7] ;
  input [3:0]\int_data_reg_reg[11] ;
  input [3:0]\int_data_reg_reg[15] ;
  input [3:0]\int_data_reg_reg[19] ;
  input [3:0]\int_data_reg_reg[23] ;
  input [3:0]\int_data_reg_reg[27] ;
  input [3:0]\int_data_reg_reg[31] ;

  wire [31:0]D;
  wire [3:0]S;
  wire [30:0]a;
  wire [3:0]\int_data_reg_reg[11] ;
  wire [3:0]\int_data_reg_reg[15] ;
  wire [3:0]\int_data_reg_reg[19] ;
  wire [3:0]\int_data_reg_reg[23] ;
  wire [3:0]\int_data_reg_reg[27] ;
  wire [3:0]\int_data_reg_reg[31] ;
  wire [3:0]\int_data_reg_reg[7] ;
  wire s0_carry__0_n_0;
  wire s0_carry__0_n_1;
  wire s0_carry__0_n_2;
  wire s0_carry__0_n_3;
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
  wire s0_carry__6_n_1;
  wire s0_carry__6_n_2;
  wire s0_carry__6_n_3;
  wire s0_carry_n_0;
  wire s0_carry_n_1;
  wire s0_carry_n_2;
  wire s0_carry_n_3;
  wire [3:3]NLW_s0_carry__6_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry
       (.CI(1'b0),
        .CO({s0_carry_n_0,s0_carry_n_1,s0_carry_n_2,s0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(a[3:0]),
        .O(D[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__0
       (.CI(s0_carry_n_0),
        .CO({s0_carry__0_n_0,s0_carry__0_n_1,s0_carry__0_n_2,s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(a[7:4]),
        .O(D[7:4]),
        .S(\int_data_reg_reg[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__1
       (.CI(s0_carry__0_n_0),
        .CO({s0_carry__1_n_0,s0_carry__1_n_1,s0_carry__1_n_2,s0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(a[11:8]),
        .O(D[11:8]),
        .S(\int_data_reg_reg[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__2
       (.CI(s0_carry__1_n_0),
        .CO({s0_carry__2_n_0,s0_carry__2_n_1,s0_carry__2_n_2,s0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(a[15:12]),
        .O(D[15:12]),
        .S(\int_data_reg_reg[15] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__3
       (.CI(s0_carry__2_n_0),
        .CO({s0_carry__3_n_0,s0_carry__3_n_1,s0_carry__3_n_2,s0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(a[19:16]),
        .O(D[19:16]),
        .S(\int_data_reg_reg[19] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__4
       (.CI(s0_carry__3_n_0),
        .CO({s0_carry__4_n_0,s0_carry__4_n_1,s0_carry__4_n_2,s0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(a[23:20]),
        .O(D[23:20]),
        .S(\int_data_reg_reg[23] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__5
       (.CI(s0_carry__4_n_0),
        .CO({s0_carry__5_n_0,s0_carry__5_n_1,s0_carry__5_n_2,s0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(a[27:24]),
        .O(D[27:24]),
        .S(\int_data_reg_reg[27] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__6
       (.CI(s0_carry__5_n_0),
        .CO({NLW_s0_carry__6_CO_UNCONNECTED[3],s0_carry__6_n_1,s0_carry__6_n_2,s0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,a[30:28]}),
        .O(D[31:28]),
        .S(\int_data_reg_reg[31] ));
endmodule

(* ORIG_REF_NAME = "gen_subber" *) 
module system_ADC_DAC_LOOP_0_gen_subber_1
   (a0_out,
    O,
    S,
    p0__1,
    p0__1_0,
    p0__1_1,
    p0__1_2,
    p0__1_3,
    p0__1_4,
    p0__0,
    p0__0_0,
    p0__0_1,
    p0__0_2,
    p0__0_3,
    p0__0_4,
    p0__0_5,
    p0__0_6);
  output [31:0]a0_out;
  input [3:0]O;
  input [3:0]S;
  input [3:0]p0__1;
  input [3:0]p0__1_0;
  input [3:0]p0__1_1;
  input [3:0]p0__1_2;
  input [3:0]p0__1_3;
  input [3:0]p0__1_4;
  input [3:0]p0__0;
  input [3:0]p0__0_0;
  input [3:0]p0__0_1;
  input [3:0]p0__0_2;
  input [3:0]p0__0_3;
  input [3:0]p0__0_4;
  input [2:0]p0__0_5;
  input [3:0]p0__0_6;

  wire [3:0]O;
  wire [3:0]S;
  wire [31:0]a0_out;
  wire [3:0]p0__0;
  wire [3:0]p0__0_0;
  wire [3:0]p0__0_1;
  wire [3:0]p0__0_2;
  wire [3:0]p0__0_3;
  wire [3:0]p0__0_4;
  wire [2:0]p0__0_5;
  wire [3:0]p0__0_6;
  wire [3:0]p0__1;
  wire [3:0]p0__1_0;
  wire [3:0]p0__1_1;
  wire [3:0]p0__1_2;
  wire [3:0]p0__1_3;
  wire [3:0]p0__1_4;
  wire s0_carry__0_n_0;
  wire s0_carry__0_n_1;
  wire s0_carry__0_n_2;
  wire s0_carry__0_n_3;
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
  wire s0_carry__6_n_1;
  wire s0_carry__6_n_2;
  wire s0_carry__6_n_3;
  wire s0_carry_n_0;
  wire s0_carry_n_1;
  wire s0_carry_n_2;
  wire s0_carry_n_3;
  wire [3:3]NLW_s0_carry__6_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry
       (.CI(1'b0),
        .CO({s0_carry_n_0,s0_carry_n_1,s0_carry_n_2,s0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(O),
        .O(a0_out[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__0
       (.CI(s0_carry_n_0),
        .CO({s0_carry__0_n_0,s0_carry__0_n_1,s0_carry__0_n_2,s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(p0__1),
        .O(a0_out[7:4]),
        .S(p0__1_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__1
       (.CI(s0_carry__0_n_0),
        .CO({s0_carry__1_n_0,s0_carry__1_n_1,s0_carry__1_n_2,s0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(p0__1_1),
        .O(a0_out[11:8]),
        .S(p0__1_2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__2
       (.CI(s0_carry__1_n_0),
        .CO({s0_carry__2_n_0,s0_carry__2_n_1,s0_carry__2_n_2,s0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(p0__1_3),
        .O(a0_out[15:12]),
        .S(p0__1_4));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__3
       (.CI(s0_carry__2_n_0),
        .CO({s0_carry__3_n_0,s0_carry__3_n_1,s0_carry__3_n_2,s0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(p0__0),
        .O(a0_out[19:16]),
        .S(p0__0_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__4
       (.CI(s0_carry__3_n_0),
        .CO({s0_carry__4_n_0,s0_carry__4_n_1,s0_carry__4_n_2,s0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(p0__0_1),
        .O(a0_out[23:20]),
        .S(p0__0_2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__5
       (.CI(s0_carry__4_n_0),
        .CO({s0_carry__5_n_0,s0_carry__5_n_1,s0_carry__5_n_2,s0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(p0__0_3),
        .O(a0_out[27:24]),
        .S(p0__0_4));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 s0_carry__6
       (.CI(s0_carry__5_n_0),
        .CO({NLW_s0_carry__6_CO_UNCONNECTED[3],s0_carry__6_n_1,s0_carry__6_n_2,s0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,p0__0_5}),
        .O(a0_out[31:28]),
        .S(p0__0_6));
endmodule

(* ORIG_REF_NAME = "my_mult" *) 
module system_ADC_DAC_LOOP_0_my_mult
   (P,
    VALID_SUM,
    ADC_CLK,
    Q);
  output [26:0]P;
  input VALID_SUM;
  input ADC_CLK;
  input [11:0]Q;

  wire ADC_CLK;
  wire [26:0]P;
  wire [11:0]Q;
  wire VALID_SUM;

  system_ADC_DAC_LOOP_0_gen_mult_3 MULT1
       (.ADC_CLK(ADC_CLK),
        .P(P),
        .Q(Q),
        .VALID_SUM(VALID_SUM));
endmodule

(* ORIG_REF_NAME = "my_mult" *) 
module system_ADC_DAC_LOOP_0_my_mult__parameterized0
   (p0__2,
    S,
    \CFG_IN[39] ,
    \CFG_IN[43] ,
    \CFG_IN[47] ,
    \CFG_IN[51] ,
    \CFG_IN[55] ,
    \CFG_IN[59] ,
    \CFG_IN[63] ,
    P,
    CFG_IN);
  output [30:0]p0__2;
  output [3:0]S;
  output [3:0]\CFG_IN[39] ;
  output [3:0]\CFG_IN[43] ;
  output [3:0]\CFG_IN[47] ;
  output [3:0]\CFG_IN[51] ;
  output [3:0]\CFG_IN[55] ;
  output [3:0]\CFG_IN[59] ;
  output [3:0]\CFG_IN[63] ;
  input [26:0]P;
  input [63:0]CFG_IN;

  wire [63:0]CFG_IN;
  wire [3:0]\CFG_IN[39] ;
  wire [3:0]\CFG_IN[43] ;
  wire [3:0]\CFG_IN[47] ;
  wire [3:0]\CFG_IN[51] ;
  wire [3:0]\CFG_IN[55] ;
  wire [3:0]\CFG_IN[59] ;
  wire [3:0]\CFG_IN[63] ;
  wire [26:0]P;
  wire [3:0]S;
  wire [30:0]p0__2;

  system_ADC_DAC_LOOP_0_gen_mult MULT1
       (.CFG_IN(CFG_IN),
        .\CFG_IN[39] (\CFG_IN[39] ),
        .\CFG_IN[43] (\CFG_IN[43] ),
        .\CFG_IN[47] (\CFG_IN[47] ),
        .\CFG_IN[51] (\CFG_IN[51] ),
        .\CFG_IN[55] (\CFG_IN[55] ),
        .\CFG_IN[59] (\CFG_IN[59] ),
        .\CFG_IN[63] (\CFG_IN[63] ),
        .P(P),
        .S(S),
        .p0__2_0(p0__2));
endmodule

(* ORIG_REF_NAME = "my_mult" *) 
module system_ADC_DAC_LOOP_0_my_mult__parameterized1
   (DACB_CODE_OUT,
    a0_out);
  output [13:0]DACB_CODE_OUT;
  input [31:0]a0_out;

  wire [13:0]DACB_CODE_OUT;
  wire [31:0]a0_out;

  system_ADC_DAC_LOOP_0_gen_mult_2 MULT1
       (.DACB_CODE_OUT(DACB_CODE_OUT),
        .a0_out(a0_out));
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
