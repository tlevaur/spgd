// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Jun  9 10:27:41 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_my_timer_0_sim_netlist.v
// Design      : system_my_timer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter
   (timer_A_out,
    ADC_CLK,
    DAC_B_OUT,
    timer_A_wait);
  output timer_A_out;
  input ADC_CLK;
  input [0:0]DAC_B_OUT;
  input [29:0]timer_A_wait;

  wire ADC_CLK;
  wire [0:0]DAC_B_OUT;
  wire F_O_i_1__0_n_0;
  wire clear;
  wire count0_carry__0_i_1__0_n_0;
  wire count0_carry__0_i_2__0_n_0;
  wire count0_carry__0_i_3__0_n_0;
  wire count0_carry__0_i_4__0_n_0;
  wire count0_carry__0_i_5__0_n_0;
  wire count0_carry__0_i_6__0_n_0;
  wire count0_carry__0_i_7__0_n_0;
  wire count0_carry__0_i_8__0_n_0;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_i_1__0_n_0;
  wire count0_carry__1_i_2__0_n_0;
  wire count0_carry__1_i_3__0_n_0;
  wire count0_carry__1_i_4__0_n_0;
  wire count0_carry__1_i_5__0_n_0;
  wire count0_carry__1_i_6__0_n_0;
  wire count0_carry__1_i_7__0_n_0;
  wire count0_carry__1_i_8__0_n_0;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__2_i_1_n_0;
  wire count0_carry__2_i_2__0_n_0;
  wire count0_carry__2_i_3__0_n_0;
  wire count0_carry__2_i_4__0_n_0;
  wire count0_carry__2_i_5_n_0;
  wire count0_carry__2_i_6__0_n_0;
  wire count0_carry__2_i_7__0_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry_i_1__0_n_0;
  wire count0_carry_i_2__0_n_0;
  wire count0_carry_i_3__0_n_0;
  wire count0_carry_i_4__0_n_0;
  wire count0_carry_i_5__0_n_0;
  wire count0_carry_i_6__0_n_0;
  wire count0_carry_i_7__0_n_0;
  wire count0_carry_i_8__0_n_0;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_3_n_0 ;
  wire [31:0]count_reg;
  wire \count_reg[0]_i_2__0_n_0 ;
  wire \count_reg[0]_i_2__0_n_1 ;
  wire \count_reg[0]_i_2__0_n_2 ;
  wire \count_reg[0]_i_2__0_n_3 ;
  wire \count_reg[0]_i_2__0_n_4 ;
  wire \count_reg[0]_i_2__0_n_5 ;
  wire \count_reg[0]_i_2__0_n_6 ;
  wire \count_reg[0]_i_2__0_n_7 ;
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
  wire sel;
  wire timer_A_out;
  wire [29:0]timer_A_wait;
  wire [3:0]NLW_count0_carry_O_UNCONNECTED;
  wire [3:0]NLW_count0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_count0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_count0_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_count_reg[28]_i_1__0_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hD0)) 
    F_O_i_1__0
       (.I0(sel),
        .I1(timer_A_out),
        .I2(DAC_B_OUT),
        .O(F_O_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    F_O_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(F_O_i_1__0_n_0),
        .Q(timer_A_out),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({count0_carry_i_1__0_n_0,count0_carry_i_2__0_n_0,count0_carry_i_3__0_n_0,count0_carry_i_4__0_n_0}),
        .O(NLW_count0_carry_O_UNCONNECTED[3:0]),
        .S({count0_carry_i_5__0_n_0,count0_carry_i_6__0_n_0,count0_carry_i_7__0_n_0,count0_carry_i_8__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({count0_carry__0_i_1__0_n_0,count0_carry__0_i_2__0_n_0,count0_carry__0_i_3__0_n_0,count0_carry__0_i_4__0_n_0}),
        .O(NLW_count0_carry__0_O_UNCONNECTED[3:0]),
        .S({count0_carry__0_i_5__0_n_0,count0_carry__0_i_6__0_n_0,count0_carry__0_i_7__0_n_0,count0_carry__0_i_8__0_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__0_i_1__0
       (.I0(timer_A_wait[14]),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(timer_A_wait[15]),
        .O(count0_carry__0_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__0_i_2__0
       (.I0(timer_A_wait[12]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(timer_A_wait[13]),
        .O(count0_carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__0_i_3__0
       (.I0(timer_A_wait[10]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(timer_A_wait[11]),
        .O(count0_carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__0_i_4__0
       (.I0(timer_A_wait[8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(timer_A_wait[9]),
        .O(count0_carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__0_i_5__0
       (.I0(timer_A_wait[14]),
        .I1(count_reg[14]),
        .I2(timer_A_wait[15]),
        .I3(count_reg[15]),
        .O(count0_carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__0_i_6__0
       (.I0(timer_A_wait[12]),
        .I1(count_reg[12]),
        .I2(timer_A_wait[13]),
        .I3(count_reg[13]),
        .O(count0_carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__0_i_7__0
       (.I0(timer_A_wait[10]),
        .I1(count_reg[10]),
        .I2(timer_A_wait[11]),
        .I3(count_reg[11]),
        .O(count0_carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__0_i_8__0
       (.I0(timer_A_wait[8]),
        .I1(count_reg[8]),
        .I2(timer_A_wait[9]),
        .I3(count_reg[9]),
        .O(count0_carry__0_i_8__0_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({count0_carry__1_i_1__0_n_0,count0_carry__1_i_2__0_n_0,count0_carry__1_i_3__0_n_0,count0_carry__1_i_4__0_n_0}),
        .O(NLW_count0_carry__1_O_UNCONNECTED[3:0]),
        .S({count0_carry__1_i_5__0_n_0,count0_carry__1_i_6__0_n_0,count0_carry__1_i_7__0_n_0,count0_carry__1_i_8__0_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__1_i_1__0
       (.I0(timer_A_wait[22]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(timer_A_wait[23]),
        .O(count0_carry__1_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__1_i_2__0
       (.I0(timer_A_wait[20]),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(timer_A_wait[21]),
        .O(count0_carry__1_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__1_i_3__0
       (.I0(timer_A_wait[18]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(timer_A_wait[19]),
        .O(count0_carry__1_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__1_i_4__0
       (.I0(timer_A_wait[16]),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(timer_A_wait[17]),
        .O(count0_carry__1_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__1_i_5__0
       (.I0(timer_A_wait[22]),
        .I1(count_reg[22]),
        .I2(timer_A_wait[23]),
        .I3(count_reg[23]),
        .O(count0_carry__1_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__1_i_6__0
       (.I0(timer_A_wait[20]),
        .I1(count_reg[20]),
        .I2(timer_A_wait[21]),
        .I3(count_reg[21]),
        .O(count0_carry__1_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__1_i_7__0
       (.I0(timer_A_wait[18]),
        .I1(count_reg[18]),
        .I2(timer_A_wait[19]),
        .I3(count_reg[19]),
        .O(count0_carry__1_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__1_i_8__0
       (.I0(timer_A_wait[16]),
        .I1(count_reg[16]),
        .I2(timer_A_wait[17]),
        .I3(count_reg[17]),
        .O(count0_carry__1_i_8__0_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({sel,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count0_carry__2_i_1_n_0,count0_carry__2_i_2__0_n_0,count0_carry__2_i_3__0_n_0}),
        .O(NLW_count0_carry__2_O_UNCONNECTED[3:0]),
        .S({count0_carry__2_i_4__0_n_0,count0_carry__2_i_5_n_0,count0_carry__2_i_6__0_n_0,count0_carry__2_i_7__0_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__2_i_1
       (.I0(timer_A_wait[28]),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .I3(timer_A_wait[29]),
        .O(count0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__2_i_2__0
       (.I0(timer_A_wait[26]),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(timer_A_wait[27]),
        .O(count0_carry__2_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__2_i_3__0
       (.I0(timer_A_wait[24]),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(timer_A_wait[25]),
        .O(count0_carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry__2_i_4__0
       (.I0(count_reg[30]),
        .I1(count_reg[31]),
        .O(count0_carry__2_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__2_i_5
       (.I0(timer_A_wait[28]),
        .I1(count_reg[28]),
        .I2(timer_A_wait[29]),
        .I3(count_reg[29]),
        .O(count0_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__2_i_6__0
       (.I0(timer_A_wait[26]),
        .I1(count_reg[26]),
        .I2(timer_A_wait[27]),
        .I3(count_reg[27]),
        .O(count0_carry__2_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__2_i_7__0
       (.I0(timer_A_wait[24]),
        .I1(count_reg[24]),
        .I2(timer_A_wait[25]),
        .I3(count_reg[25]),
        .O(count0_carry__2_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry_i_1__0
       (.I0(timer_A_wait[6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(timer_A_wait[7]),
        .O(count0_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry_i_2__0
       (.I0(timer_A_wait[4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(timer_A_wait[5]),
        .O(count0_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry_i_3__0
       (.I0(timer_A_wait[2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(timer_A_wait[3]),
        .O(count0_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry_i_4__0
       (.I0(timer_A_wait[0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(timer_A_wait[1]),
        .O(count0_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry_i_5__0
       (.I0(timer_A_wait[6]),
        .I1(count_reg[6]),
        .I2(timer_A_wait[7]),
        .I3(count_reg[7]),
        .O(count0_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry_i_6__0
       (.I0(timer_A_wait[4]),
        .I1(count_reg[4]),
        .I2(timer_A_wait[5]),
        .I3(count_reg[5]),
        .O(count0_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry_i_7__0
       (.I0(timer_A_wait[2]),
        .I1(count_reg[2]),
        .I2(timer_A_wait[3]),
        .I3(count_reg[3]),
        .O(count0_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry_i_8__0
       (.I0(timer_A_wait[0]),
        .I1(count_reg[0]),
        .I2(timer_A_wait[1]),
        .I3(count_reg[1]),
        .O(count0_carry_i_8__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(DAC_B_OUT),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_3 
       (.I0(count_reg[0]),
        .O(\count[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[0]_i_2__0_n_7 ),
        .Q(count_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2__0_n_0 ,\count_reg[0]_i_2__0_n_1 ,\count_reg[0]_i_2__0_n_2 ,\count_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2__0_n_4 ,\count_reg[0]_i_2__0_n_5 ,\count_reg[0]_i_2__0_n_6 ,\count_reg[0]_i_2__0_n_7 }),
        .S({count_reg[3:1],\count[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[8]_i_1__0_n_5 ),
        .Q(count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[8]_i_1__0_n_4 ),
        .Q(count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(ADC_CLK),
        .CE(sel),
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
        .CE(sel),
        .D(\count_reg[12]_i_1__0_n_6 ),
        .Q(count_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[12]_i_1__0_n_5 ),
        .Q(count_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[12]_i_1__0_n_4 ),
        .Q(count_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(ADC_CLK),
        .CE(sel),
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
        .CE(sel),
        .D(\count_reg[16]_i_1__0_n_6 ),
        .Q(count_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[16]_i_1__0_n_5 ),
        .Q(count_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[16]_i_1__0_n_4 ),
        .Q(count_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[0]_i_2__0_n_6 ),
        .Q(count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(ADC_CLK),
        .CE(sel),
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
        .CE(sel),
        .D(\count_reg[20]_i_1__0_n_6 ),
        .Q(count_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[20]_i_1__0_n_5 ),
        .Q(count_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[20]_i_1__0_n_4 ),
        .Q(count_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(ADC_CLK),
        .CE(sel),
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
        .CE(sel),
        .D(\count_reg[24]_i_1__0_n_6 ),
        .Q(count_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[24]_i_1__0_n_5 ),
        .Q(count_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[24]_i_1__0_n_4 ),
        .Q(count_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(ADC_CLK),
        .CE(sel),
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
        .CE(sel),
        .D(\count_reg[28]_i_1__0_n_6 ),
        .Q(count_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[0]_i_2__0_n_5 ),
        .Q(count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[28]_i_1__0_n_5 ),
        .Q(count_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[28]_i_1__0_n_4 ),
        .Q(count_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[0]_i_2__0_n_4 ),
        .Q(count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1__0_n_7 ),
        .Q(count_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1__0 
       (.CI(\count_reg[0]_i_2__0_n_0 ),
        .CO({\count_reg[4]_i_1__0_n_0 ,\count_reg[4]_i_1__0_n_1 ,\count_reg[4]_i_1__0_n_2 ,\count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__0_n_4 ,\count_reg[4]_i_1__0_n_5 ,\count_reg[4]_i_1__0_n_6 ,\count_reg[4]_i_1__0_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1__0_n_6 ),
        .Q(count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1__0_n_5 ),
        .Q(count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(ADC_CLK),
        .CE(sel),
        .D(\count_reg[4]_i_1__0_n_4 ),
        .Q(count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(ADC_CLK),
        .CE(sel),
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
        .CE(sel),
        .D(\count_reg[8]_i_1__0_n_6 ),
        .Q(count_reg[9]),
        .R(clear));
endmodule

(* ORIG_REF_NAME = "gen_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter_0
   (timer_B_out,
    ADC_CLK,
    timer_A_wait,
    timer_b_en);
  output timer_B_out;
  input ADC_CLK;
  input [28:0]timer_A_wait;
  input timer_b_en;

  wire ADC_CLK;
  wire F_O_i_1__1_n_0;
  wire count0_carry__0_i_1__1_n_0;
  wire count0_carry__0_i_2__1_n_0;
  wire count0_carry__0_i_3__1_n_0;
  wire count0_carry__0_i_4__1_n_0;
  wire count0_carry__0_i_5__1_n_0;
  wire count0_carry__0_i_6__1_n_0;
  wire count0_carry__0_i_7__1_n_0;
  wire count0_carry__0_i_8__1_n_0;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_i_1__1_n_0;
  wire count0_carry__1_i_2__1_n_0;
  wire count0_carry__1_i_3__1_n_0;
  wire count0_carry__1_i_4__1_n_0;
  wire count0_carry__1_i_5__1_n_0;
  wire count0_carry__1_i_6__1_n_0;
  wire count0_carry__1_i_7__1_n_0;
  wire count0_carry__1_i_8__1_n_0;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__2_i_1__1_n_0;
  wire count0_carry__2_i_2__1_n_0;
  wire count0_carry__2_i_3__1_n_0;
  wire count0_carry__2_i_4__1_n_0;
  wire count0_carry__2_i_5__1_n_0;
  wire count0_carry__2_i_6__1_n_0;
  wire count0_carry__2_i_7__1_n_0;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry_i_1__1_n_0;
  wire count0_carry_i_2__1_n_0;
  wire count0_carry_i_3__1_n_0;
  wire count0_carry_i_4__1_n_0;
  wire count0_carry_i_5__1_n_0;
  wire count0_carry_i_6__1_n_0;
  wire count0_carry_i_7__1_n_0;
  wire count0_carry_i_8__1_n_0;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_1__1_n_0 ;
  wire \count[0]_i_3__1_n_0 ;
  wire [31:0]count_reg;
  wire \count_reg[0]_i_2__1_n_0 ;
  wire \count_reg[0]_i_2__1_n_1 ;
  wire \count_reg[0]_i_2__1_n_2 ;
  wire \count_reg[0]_i_2__1_n_3 ;
  wire \count_reg[0]_i_2__1_n_4 ;
  wire \count_reg[0]_i_2__1_n_5 ;
  wire \count_reg[0]_i_2__1_n_6 ;
  wire \count_reg[0]_i_2__1_n_7 ;
  wire \count_reg[12]_i_1__1_n_0 ;
  wire \count_reg[12]_i_1__1_n_1 ;
  wire \count_reg[12]_i_1__1_n_2 ;
  wire \count_reg[12]_i_1__1_n_3 ;
  wire \count_reg[12]_i_1__1_n_4 ;
  wire \count_reg[12]_i_1__1_n_5 ;
  wire \count_reg[12]_i_1__1_n_6 ;
  wire \count_reg[12]_i_1__1_n_7 ;
  wire \count_reg[16]_i_1__1_n_0 ;
  wire \count_reg[16]_i_1__1_n_1 ;
  wire \count_reg[16]_i_1__1_n_2 ;
  wire \count_reg[16]_i_1__1_n_3 ;
  wire \count_reg[16]_i_1__1_n_4 ;
  wire \count_reg[16]_i_1__1_n_5 ;
  wire \count_reg[16]_i_1__1_n_6 ;
  wire \count_reg[16]_i_1__1_n_7 ;
  wire \count_reg[20]_i_1__1_n_0 ;
  wire \count_reg[20]_i_1__1_n_1 ;
  wire \count_reg[20]_i_1__1_n_2 ;
  wire \count_reg[20]_i_1__1_n_3 ;
  wire \count_reg[20]_i_1__1_n_4 ;
  wire \count_reg[20]_i_1__1_n_5 ;
  wire \count_reg[20]_i_1__1_n_6 ;
  wire \count_reg[20]_i_1__1_n_7 ;
  wire \count_reg[24]_i_1__1_n_0 ;
  wire \count_reg[24]_i_1__1_n_1 ;
  wire \count_reg[24]_i_1__1_n_2 ;
  wire \count_reg[24]_i_1__1_n_3 ;
  wire \count_reg[24]_i_1__1_n_4 ;
  wire \count_reg[24]_i_1__1_n_5 ;
  wire \count_reg[24]_i_1__1_n_6 ;
  wire \count_reg[24]_i_1__1_n_7 ;
  wire \count_reg[28]_i_1__1_n_1 ;
  wire \count_reg[28]_i_1__1_n_2 ;
  wire \count_reg[28]_i_1__1_n_3 ;
  wire \count_reg[28]_i_1__1_n_4 ;
  wire \count_reg[28]_i_1__1_n_5 ;
  wire \count_reg[28]_i_1__1_n_6 ;
  wire \count_reg[28]_i_1__1_n_7 ;
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
  wire [28:0]timer_A_wait;
  wire timer_B_out;
  wire timer_b_en;
  wire [3:0]NLW_count0_carry_O_UNCONNECTED;
  wire [3:0]NLW_count0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_count0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_count0_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_count_reg[28]_i_1__1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hD0)) 
    F_O_i_1__1
       (.I0(count0_carry__2_n_0),
        .I1(timer_B_out),
        .I2(timer_b_en),
        .O(F_O_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    F_O_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(F_O_i_1__1_n_0),
        .Q(timer_B_out),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({count0_carry_i_1__1_n_0,count0_carry_i_2__1_n_0,count0_carry_i_3__1_n_0,count0_carry_i_4__1_n_0}),
        .O(NLW_count0_carry_O_UNCONNECTED[3:0]),
        .S({count0_carry_i_5__1_n_0,count0_carry_i_6__1_n_0,count0_carry_i_7__1_n_0,count0_carry_i_8__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({count0_carry__0_i_1__1_n_0,count0_carry__0_i_2__1_n_0,count0_carry__0_i_3__1_n_0,count0_carry__0_i_4__1_n_0}),
        .O(NLW_count0_carry__0_O_UNCONNECTED[3:0]),
        .S({count0_carry__0_i_5__1_n_0,count0_carry__0_i_6__1_n_0,count0_carry__0_i_7__1_n_0,count0_carry__0_i_8__1_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__0_i_1__1
       (.I0(timer_A_wait[14]),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(timer_A_wait[15]),
        .O(count0_carry__0_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__0_i_2__1
       (.I0(timer_A_wait[12]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(timer_A_wait[13]),
        .O(count0_carry__0_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__0_i_3__1
       (.I0(timer_A_wait[10]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(timer_A_wait[11]),
        .O(count0_carry__0_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__0_i_4__1
       (.I0(timer_A_wait[8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(timer_A_wait[9]),
        .O(count0_carry__0_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__0_i_5__1
       (.I0(timer_A_wait[14]),
        .I1(count_reg[14]),
        .I2(timer_A_wait[15]),
        .I3(count_reg[15]),
        .O(count0_carry__0_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__0_i_6__1
       (.I0(timer_A_wait[12]),
        .I1(count_reg[12]),
        .I2(timer_A_wait[13]),
        .I3(count_reg[13]),
        .O(count0_carry__0_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__0_i_7__1
       (.I0(timer_A_wait[10]),
        .I1(count_reg[10]),
        .I2(timer_A_wait[11]),
        .I3(count_reg[11]),
        .O(count0_carry__0_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__0_i_8__1
       (.I0(timer_A_wait[8]),
        .I1(count_reg[8]),
        .I2(timer_A_wait[9]),
        .I3(count_reg[9]),
        .O(count0_carry__0_i_8__1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({count0_carry__1_i_1__1_n_0,count0_carry__1_i_2__1_n_0,count0_carry__1_i_3__1_n_0,count0_carry__1_i_4__1_n_0}),
        .O(NLW_count0_carry__1_O_UNCONNECTED[3:0]),
        .S({count0_carry__1_i_5__1_n_0,count0_carry__1_i_6__1_n_0,count0_carry__1_i_7__1_n_0,count0_carry__1_i_8__1_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__1_i_1__1
       (.I0(timer_A_wait[22]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(timer_A_wait[23]),
        .O(count0_carry__1_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__1_i_2__1
       (.I0(timer_A_wait[20]),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(timer_A_wait[21]),
        .O(count0_carry__1_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__1_i_3__1
       (.I0(timer_A_wait[18]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(timer_A_wait[19]),
        .O(count0_carry__1_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__1_i_4__1
       (.I0(timer_A_wait[16]),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(timer_A_wait[17]),
        .O(count0_carry__1_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__1_i_5__1
       (.I0(timer_A_wait[22]),
        .I1(count_reg[22]),
        .I2(timer_A_wait[23]),
        .I3(count_reg[23]),
        .O(count0_carry__1_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__1_i_6__1
       (.I0(timer_A_wait[20]),
        .I1(count_reg[20]),
        .I2(timer_A_wait[21]),
        .I3(count_reg[21]),
        .O(count0_carry__1_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__1_i_7__1
       (.I0(timer_A_wait[18]),
        .I1(count_reg[18]),
        .I2(timer_A_wait[19]),
        .I3(count_reg[19]),
        .O(count0_carry__1_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__1_i_8__1
       (.I0(timer_A_wait[16]),
        .I1(count_reg[16]),
        .I2(timer_A_wait[17]),
        .I3(count_reg[17]),
        .O(count0_carry__1_i_8__1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count0_carry__2_i_1__1_n_0,count0_carry__2_i_2__1_n_0,count0_carry__2_i_3__1_n_0}),
        .O(NLW_count0_carry__2_O_UNCONNECTED[3:0]),
        .S({count0_carry__2_i_4__1_n_0,count0_carry__2_i_5__1_n_0,count0_carry__2_i_6__1_n_0,count0_carry__2_i_7__1_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    count0_carry__2_i_1__1
       (.I0(count_reg[28]),
        .I1(timer_A_wait[28]),
        .I2(count_reg[29]),
        .O(count0_carry__2_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__2_i_2__1
       (.I0(timer_A_wait[26]),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(timer_A_wait[27]),
        .O(count0_carry__2_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__2_i_3__1
       (.I0(timer_A_wait[24]),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(timer_A_wait[25]),
        .O(count0_carry__2_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry__2_i_4__1
       (.I0(count_reg[30]),
        .I1(count_reg[31]),
        .O(count0_carry__2_i_4__1_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    count0_carry__2_i_5__1
       (.I0(timer_A_wait[28]),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .O(count0_carry__2_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__2_i_6__1
       (.I0(timer_A_wait[26]),
        .I1(count_reg[26]),
        .I2(timer_A_wait[27]),
        .I3(count_reg[27]),
        .O(count0_carry__2_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__2_i_7__1
       (.I0(timer_A_wait[24]),
        .I1(count_reg[24]),
        .I2(timer_A_wait[25]),
        .I3(count_reg[25]),
        .O(count0_carry__2_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry_i_1__1
       (.I0(timer_A_wait[6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(timer_A_wait[7]),
        .O(count0_carry_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry_i_2__1
       (.I0(timer_A_wait[4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(timer_A_wait[5]),
        .O(count0_carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry_i_3__1
       (.I0(timer_A_wait[2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(timer_A_wait[3]),
        .O(count0_carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry_i_4__1
       (.I0(timer_A_wait[0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(timer_A_wait[1]),
        .O(count0_carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry_i_5__1
       (.I0(timer_A_wait[6]),
        .I1(count_reg[6]),
        .I2(timer_A_wait[7]),
        .I3(count_reg[7]),
        .O(count0_carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry_i_6__1
       (.I0(timer_A_wait[4]),
        .I1(count_reg[4]),
        .I2(timer_A_wait[5]),
        .I3(count_reg[5]),
        .O(count0_carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry_i_7__1
       (.I0(timer_A_wait[2]),
        .I1(count_reg[2]),
        .I2(timer_A_wait[3]),
        .I3(count_reg[3]),
        .O(count0_carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry_i_8__1
       (.I0(timer_A_wait[0]),
        .I1(count_reg[0]),
        .I2(timer_A_wait[1]),
        .I3(count_reg[1]),
        .O(count0_carry_i_8__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__1 
       (.I0(timer_b_en),
        .O(\count[0]_i_1__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_3__1 
       (.I0(count_reg[0]),
        .O(\count[0]_i_3__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[0]_i_2__1_n_7 ),
        .Q(count_reg[0]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2__1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2__1_n_0 ,\count_reg[0]_i_2__1_n_1 ,\count_reg[0]_i_2__1_n_2 ,\count_reg[0]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2__1_n_4 ,\count_reg[0]_i_2__1_n_5 ,\count_reg[0]_i_2__1_n_6 ,\count_reg[0]_i_2__1_n_7 }),
        .S({count_reg[3:1],\count[0]_i_3__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[8]_i_1__1_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[8]_i_1__1_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[12]_i_1__1_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1__1 
       (.CI(\count_reg[8]_i_1__1_n_0 ),
        .CO({\count_reg[12]_i_1__1_n_0 ,\count_reg[12]_i_1__1_n_1 ,\count_reg[12]_i_1__1_n_2 ,\count_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1__1_n_4 ,\count_reg[12]_i_1__1_n_5 ,\count_reg[12]_i_1__1_n_6 ,\count_reg[12]_i_1__1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[12]_i_1__1_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[12]_i_1__1_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[12]_i_1__1_n_4 ),
        .Q(count_reg[15]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[16]_i_1__1_n_7 ),
        .Q(count_reg[16]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1__1 
       (.CI(\count_reg[12]_i_1__1_n_0 ),
        .CO({\count_reg[16]_i_1__1_n_0 ,\count_reg[16]_i_1__1_n_1 ,\count_reg[16]_i_1__1_n_2 ,\count_reg[16]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1__1_n_4 ,\count_reg[16]_i_1__1_n_5 ,\count_reg[16]_i_1__1_n_6 ,\count_reg[16]_i_1__1_n_7 }),
        .S(count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[16]_i_1__1_n_6 ),
        .Q(count_reg[17]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[16]_i_1__1_n_5 ),
        .Q(count_reg[18]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[16]_i_1__1_n_4 ),
        .Q(count_reg[19]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[0]_i_2__1_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[20]_i_1__1_n_7 ),
        .Q(count_reg[20]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[20]_i_1__1 
       (.CI(\count_reg[16]_i_1__1_n_0 ),
        .CO({\count_reg[20]_i_1__1_n_0 ,\count_reg[20]_i_1__1_n_1 ,\count_reg[20]_i_1__1_n_2 ,\count_reg[20]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1__1_n_4 ,\count_reg[20]_i_1__1_n_5 ,\count_reg[20]_i_1__1_n_6 ,\count_reg[20]_i_1__1_n_7 }),
        .S(count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[20]_i_1__1_n_6 ),
        .Q(count_reg[21]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[20]_i_1__1_n_5 ),
        .Q(count_reg[22]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[20]_i_1__1_n_4 ),
        .Q(count_reg[23]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[24]_i_1__1_n_7 ),
        .Q(count_reg[24]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[24]_i_1__1 
       (.CI(\count_reg[20]_i_1__1_n_0 ),
        .CO({\count_reg[24]_i_1__1_n_0 ,\count_reg[24]_i_1__1_n_1 ,\count_reg[24]_i_1__1_n_2 ,\count_reg[24]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1__1_n_4 ,\count_reg[24]_i_1__1_n_5 ,\count_reg[24]_i_1__1_n_6 ,\count_reg[24]_i_1__1_n_7 }),
        .S(count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[24]_i_1__1_n_6 ),
        .Q(count_reg[25]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[24]_i_1__1_n_5 ),
        .Q(count_reg[26]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[24]_i_1__1_n_4 ),
        .Q(count_reg[27]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[28]_i_1__1_n_7 ),
        .Q(count_reg[28]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[28]_i_1__1 
       (.CI(\count_reg[24]_i_1__1_n_0 ),
        .CO({\NLW_count_reg[28]_i_1__1_CO_UNCONNECTED [3],\count_reg[28]_i_1__1_n_1 ,\count_reg[28]_i_1__1_n_2 ,\count_reg[28]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1__1_n_4 ,\count_reg[28]_i_1__1_n_5 ,\count_reg[28]_i_1__1_n_6 ,\count_reg[28]_i_1__1_n_7 }),
        .S(count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[28]_i_1__1_n_6 ),
        .Q(count_reg[29]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[0]_i_2__1_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[28]_i_1__1_n_5 ),
        .Q(count_reg[30]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[28]_i_1__1_n_4 ),
        .Q(count_reg[31]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[0]_i_2__1_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[4]_i_1__1_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1__1 
       (.CI(\count_reg[0]_i_2__1_n_0 ),
        .CO({\count_reg[4]_i_1__1_n_0 ,\count_reg[4]_i_1__1_n_1 ,\count_reg[4]_i_1__1_n_2 ,\count_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1__1_n_4 ,\count_reg[4]_i_1__1_n_5 ,\count_reg[4]_i_1__1_n_6 ,\count_reg[4]_i_1__1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[4]_i_1__1_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[4]_i_1__1_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[4]_i_1__1_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
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
        .CE(count0_carry__2_n_0),
        .D(\count_reg[8]_i_1__1_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1__1_n_0 ));
endmodule

(* ORIG_REF_NAME = "gen_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter_1
   (F_O_reg_0,
    ADC_CLK,
    timer_A_wait,
    DAC_B_OUT);
  output F_O_reg_0;
  input ADC_CLK;
  input [28:0]timer_A_wait;
  input [0:0]DAC_B_OUT;

  wire ADC_CLK;
  wire [0:0]DAC_B_OUT;
  wire F_O_i_1_n_0;
  wire F_O_reg_0;
  wire count0_carry__0_i_1_n_0;
  wire count0_carry__0_i_2_n_0;
  wire count0_carry__0_i_3_n_0;
  wire count0_carry__0_i_4_n_0;
  wire count0_carry__0_i_5_n_0;
  wire count0_carry__0_i_6_n_0;
  wire count0_carry__0_i_7_n_0;
  wire count0_carry__0_i_8_n_0;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_1;
  wire count0_carry__0_n_2;
  wire count0_carry__0_n_3;
  wire count0_carry__1_i_1_n_0;
  wire count0_carry__1_i_2_n_0;
  wire count0_carry__1_i_3_n_0;
  wire count0_carry__1_i_4_n_0;
  wire count0_carry__1_i_5_n_0;
  wire count0_carry__1_i_6_n_0;
  wire count0_carry__1_i_7_n_0;
  wire count0_carry__1_i_8_n_0;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_1;
  wire count0_carry__1_n_2;
  wire count0_carry__1_n_3;
  wire count0_carry__2_i_1__0_n_0;
  wire count0_carry__2_i_2_n_0;
  wire count0_carry__2_i_3_n_0;
  wire count0_carry__2_i_4_n_0;
  wire count0_carry__2_i_5__0_n_0;
  wire count0_carry__2_i_6_n_0;
  wire count0_carry__2_i_7_n_0;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_1;
  wire count0_carry__2_n_2;
  wire count0_carry__2_n_3;
  wire count0_carry_i_1_n_0;
  wire count0_carry_i_2_n_0;
  wire count0_carry_i_3_n_0;
  wire count0_carry_i_4_n_0;
  wire count0_carry_i_5_n_0;
  wire count0_carry_i_6_n_0;
  wire count0_carry_i_7_n_0;
  wire count0_carry_i_8_n_0;
  wire count0_carry_n_0;
  wire count0_carry_n_1;
  wire count0_carry_n_2;
  wire count0_carry_n_3;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_3__0_n_0 ;
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
  wire [28:0]timer_A_wait;
  wire [3:0]NLW_count0_carry_O_UNCONNECTED;
  wire [3:0]NLW_count0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_count0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_count0_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hD0)) 
    F_O_i_1
       (.I0(count0_carry__2_n_0),
        .I1(F_O_reg_0),
        .I2(DAC_B_OUT),
        .O(F_O_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    F_O_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(F_O_i_1_n_0),
        .Q(F_O_reg_0),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,count0_carry_n_1,count0_carry_n_2,count0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({count0_carry_i_1_n_0,count0_carry_i_2_n_0,count0_carry_i_3_n_0,count0_carry_i_4_n_0}),
        .O(NLW_count0_carry_O_UNCONNECTED[3:0]),
        .S({count0_carry_i_5_n_0,count0_carry_i_6_n_0,count0_carry_i_7_n_0,count0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,count0_carry__0_n_1,count0_carry__0_n_2,count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({count0_carry__0_i_1_n_0,count0_carry__0_i_2_n_0,count0_carry__0_i_3_n_0,count0_carry__0_i_4_n_0}),
        .O(NLW_count0_carry__0_O_UNCONNECTED[3:0]),
        .S({count0_carry__0_i_5_n_0,count0_carry__0_i_6_n_0,count0_carry__0_i_7_n_0,count0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__0_i_1
       (.I0(timer_A_wait[14]),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(timer_A_wait[15]),
        .O(count0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__0_i_2
       (.I0(timer_A_wait[12]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(timer_A_wait[13]),
        .O(count0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__0_i_3
       (.I0(timer_A_wait[10]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(timer_A_wait[11]),
        .O(count0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__0_i_4
       (.I0(timer_A_wait[8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(timer_A_wait[9]),
        .O(count0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__0_i_5
       (.I0(timer_A_wait[14]),
        .I1(count_reg[14]),
        .I2(timer_A_wait[15]),
        .I3(count_reg[15]),
        .O(count0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__0_i_6
       (.I0(timer_A_wait[12]),
        .I1(count_reg[12]),
        .I2(timer_A_wait[13]),
        .I3(count_reg[13]),
        .O(count0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__0_i_7
       (.I0(timer_A_wait[10]),
        .I1(count_reg[10]),
        .I2(timer_A_wait[11]),
        .I3(count_reg[11]),
        .O(count0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__0_i_8
       (.I0(timer_A_wait[8]),
        .I1(count_reg[8]),
        .I2(timer_A_wait[9]),
        .I3(count_reg[9]),
        .O(count0_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,count0_carry__1_n_1,count0_carry__1_n_2,count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({count0_carry__1_i_1_n_0,count0_carry__1_i_2_n_0,count0_carry__1_i_3_n_0,count0_carry__1_i_4_n_0}),
        .O(NLW_count0_carry__1_O_UNCONNECTED[3:0]),
        .S({count0_carry__1_i_5_n_0,count0_carry__1_i_6_n_0,count0_carry__1_i_7_n_0,count0_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__1_i_1
       (.I0(timer_A_wait[22]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(timer_A_wait[23]),
        .O(count0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__1_i_2
       (.I0(timer_A_wait[20]),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(timer_A_wait[21]),
        .O(count0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__1_i_3
       (.I0(timer_A_wait[18]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(timer_A_wait[19]),
        .O(count0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__1_i_4
       (.I0(timer_A_wait[16]),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(timer_A_wait[17]),
        .O(count0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__1_i_5
       (.I0(timer_A_wait[22]),
        .I1(count_reg[22]),
        .I2(timer_A_wait[23]),
        .I3(count_reg[23]),
        .O(count0_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__1_i_6
       (.I0(timer_A_wait[20]),
        .I1(count_reg[20]),
        .I2(timer_A_wait[21]),
        .I3(count_reg[21]),
        .O(count0_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__1_i_7
       (.I0(timer_A_wait[18]),
        .I1(count_reg[18]),
        .I2(timer_A_wait[19]),
        .I3(count_reg[19]),
        .O(count0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__1_i_8
       (.I0(timer_A_wait[16]),
        .I1(count_reg[16]),
        .I2(timer_A_wait[17]),
        .I3(count_reg[17]),
        .O(count0_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,count0_carry__2_n_1,count0_carry__2_n_2,count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,count0_carry__2_i_1__0_n_0,count0_carry__2_i_2_n_0,count0_carry__2_i_3_n_0}),
        .O(NLW_count0_carry__2_O_UNCONNECTED[3:0]),
        .S({count0_carry__2_i_4_n_0,count0_carry__2_i_5__0_n_0,count0_carry__2_i_6_n_0,count0_carry__2_i_7_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    count0_carry__2_i_1__0
       (.I0(count_reg[28]),
        .I1(timer_A_wait[28]),
        .I2(count_reg[29]),
        .O(count0_carry__2_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__2_i_2
       (.I0(timer_A_wait[26]),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(timer_A_wait[27]),
        .O(count0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry__2_i_3
       (.I0(timer_A_wait[24]),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(timer_A_wait[25]),
        .O(count0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count0_carry__2_i_4
       (.I0(count_reg[30]),
        .I1(count_reg[31]),
        .O(count0_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    count0_carry__2_i_5__0
       (.I0(timer_A_wait[28]),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .O(count0_carry__2_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__2_i_6
       (.I0(timer_A_wait[26]),
        .I1(count_reg[26]),
        .I2(timer_A_wait[27]),
        .I3(count_reg[27]),
        .O(count0_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry__2_i_7
       (.I0(timer_A_wait[24]),
        .I1(count_reg[24]),
        .I2(timer_A_wait[25]),
        .I3(count_reg[25]),
        .O(count0_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry_i_1
       (.I0(timer_A_wait[6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(timer_A_wait[7]),
        .O(count0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry_i_2
       (.I0(timer_A_wait[4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(timer_A_wait[5]),
        .O(count0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry_i_3
       (.I0(timer_A_wait[2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(timer_A_wait[3]),
        .O(count0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    count0_carry_i_4
       (.I0(timer_A_wait[0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(timer_A_wait[1]),
        .O(count0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry_i_5
       (.I0(timer_A_wait[6]),
        .I1(count_reg[6]),
        .I2(timer_A_wait[7]),
        .I3(count_reg[7]),
        .O(count0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry_i_6
       (.I0(timer_A_wait[4]),
        .I1(count_reg[4]),
        .I2(timer_A_wait[5]),
        .I3(count_reg[5]),
        .O(count0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry_i_7
       (.I0(timer_A_wait[2]),
        .I1(count_reg[2]),
        .I2(timer_A_wait[3]),
        .I3(count_reg[3]),
        .O(count0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    count0_carry_i_8
       (.I0(timer_A_wait[0]),
        .I1(count_reg[0]),
        .I2(timer_A_wait[1]),
        .I3(count_reg[1]),
        .O(count0_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(DAC_B_OUT),
        .O(\count[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_3__0 
       (.I0(count_reg[0]),
        .O(\count[0]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(count_reg[0]),
        .R(\count[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({count_reg[3:1],\count[0]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(\count[0]_i_1_n_0 ));
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
        .CE(count0_carry__2_n_0),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(\count[0]_i_1_n_0 ));
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
        .CE(count0_carry__2_n_0),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(count_reg[1]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(\count[0]_i_1_n_0 ));
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
        .CE(count0_carry__2_n_0),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(\count[0]_i_1_n_0 ));
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
        .CE(count0_carry__2_n_0),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]),
        .R(\count[0]_i_1_n_0 ));
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
        .CE(count0_carry__2_n_0),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(count_reg[2]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(count_reg[3]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(\count[0]_i_1_n_0 ));
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
        .CE(count0_carry__2_n_0),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(\count[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(ADC_CLK),
        .CE(count0_carry__2_n_0),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(\count[0]_i_1_n_0 ));
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
        .CE(count0_carry__2_n_0),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(\count[0]_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_timer
   (DAC_B_OUT,
    ADC_CLK,
    GP_IN);
  output [1:0]DAC_B_OUT;
  input ADC_CLK;
  input [30:0]GP_IN;

  wire ADC_CLK;
  wire [1:0]DAC_B_OUT;
  wire [30:0]GP_IN;
  wire [1:0]current_state;
  wire \current_state[0]_i_1_n_0 ;
  wire \current_state[1]_i_1_n_0 ;
  wire \int_DAC_A[12]_i_1_n_0 ;
  wire \int_DAC_A[13]_i_1_n_0 ;
  wire [1:0]next_state;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state[1]_i_1_n_0 ;
  wire timer_A_out;
  wire [29:0]timer_A_wait;
  wire timer_B_out;
  wire timer_b_en;
  wire timer_b_en_i_1_n_0;
  wire timer_c_n_0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_state[0]_i_1 
       (.I0(next_state[0]),
        .I1(GP_IN[30]),
        .O(\current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current_state[1]_i_1 
       (.I0(next_state[1]),
        .I1(GP_IN[30]),
        .O(\current_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\current_state[0]_i_1_n_0 ),
        .Q(current_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\current_state[1]_i_1_n_0 ),
        .Q(current_state[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \int_DAC_A[12]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(\int_DAC_A[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_DAC_A[13]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(\int_DAC_A[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_DAC_A_reg[12] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\int_DAC_A[12]_i_1_n_0 ),
        .Q(DAC_B_OUT[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \int_DAC_A_reg[13] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\int_DAC_A[13]_i_1_n_0 ),
        .Q(DAC_B_OUT[0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCB8FFB8)) 
    \next_state[0]_i_1 
       (.I0(timer_B_out),
        .I1(current_state[1]),
        .I2(GP_IN[30]),
        .I3(current_state[0]),
        .I4(timer_A_out),
        .O(\next_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7C4C)) 
    \next_state[1]_i_1 
       (.I0(timer_c_n_0),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(timer_A_out),
        .O(\next_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\next_state[0]_i_1_n_0 ),
        .Q(next_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(\next_state[1]_i_1_n_0 ),
        .Q(next_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[0] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[0]),
        .Q(timer_A_wait[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[10] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[10]),
        .Q(timer_A_wait[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[11] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[11]),
        .Q(timer_A_wait[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[12] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[12]),
        .Q(timer_A_wait[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[13] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[13]),
        .Q(timer_A_wait[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[14] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[14]),
        .Q(timer_A_wait[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[15] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[15]),
        .Q(timer_A_wait[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[16] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[16]),
        .Q(timer_A_wait[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[17] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[17]),
        .Q(timer_A_wait[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[18] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[18]),
        .Q(timer_A_wait[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[19] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[19]),
        .Q(timer_A_wait[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[1] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[1]),
        .Q(timer_A_wait[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[20] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[20]),
        .Q(timer_A_wait[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[21] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[21]),
        .Q(timer_A_wait[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[22] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[22]),
        .Q(timer_A_wait[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[23] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[23]),
        .Q(timer_A_wait[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[24] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[24]),
        .Q(timer_A_wait[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[25] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[25]),
        .Q(timer_A_wait[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[26] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[26]),
        .Q(timer_A_wait[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[27] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[27]),
        .Q(timer_A_wait[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[28] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[28]),
        .Q(timer_A_wait[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[29] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[29]),
        .Q(timer_A_wait[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[2] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[2]),
        .Q(timer_A_wait[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[3] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[3]),
        .Q(timer_A_wait[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[4] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[4]),
        .Q(timer_A_wait[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[5] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[5]),
        .Q(timer_A_wait[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[6] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[6]),
        .Q(timer_A_wait[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[7] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[7]),
        .Q(timer_A_wait[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[8] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[8]),
        .Q(timer_A_wait[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timer_A_wait_reg[9] 
       (.C(ADC_CLK),
        .CE(GP_IN[30]),
        .D(GP_IN[9]),
        .Q(timer_A_wait[9]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter timer_a
       (.ADC_CLK(ADC_CLK),
        .DAC_B_OUT(DAC_B_OUT[1]),
        .timer_A_out(timer_A_out),
        .timer_A_wait(timer_A_wait));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter_0 timer_b
       (.ADC_CLK(ADC_CLK),
        .timer_A_wait(timer_A_wait[29:1]),
        .timer_B_out(timer_B_out),
        .timer_b_en(timer_b_en));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    timer_b_en_i_1
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(timer_b_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    timer_b_en_reg
       (.C(ADC_CLK),
        .CE(1'b1),
        .D(timer_b_en_i_1_n_0),
        .Q(timer_b_en),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gen_counter_1 timer_c
       (.ADC_CLK(ADC_CLK),
        .DAC_B_OUT(DAC_B_OUT[0]),
        .F_O_reg_0(timer_c_n_0),
        .timer_A_wait(timer_A_wait[29:1]));
endmodule

(* CHECK_LICENSE_TYPE = "system_my_timer_0,my_timer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "my_timer,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (GP_IN,
    ADC_CLK,
    DAC_A_OUT,
    DAC_B_OUT,
    val_0,
    val_1);
  input [31:0]GP_IN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ADC_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ADC_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_ADC_REG_0_adc_clk, INSERT_VIP 0" *) input ADC_CLK;
  output [13:0]DAC_A_OUT;
  output [13:0]DAC_B_OUT;
  output val_0;
  output val_1;

  wire \<const0> ;
  wire \<const1> ;
  wire ADC_CLK;
  wire [12:12]\^DAC_A_OUT ;
  wire [12:12]\^DAC_B_OUT ;
  wire [31:0]GP_IN;

  assign DAC_A_OUT[13] = \^DAC_B_OUT [12];
  assign DAC_A_OUT[12] = \^DAC_A_OUT [12];
  assign DAC_A_OUT[11] = \^DAC_A_OUT [12];
  assign DAC_A_OUT[10] = \^DAC_A_OUT [12];
  assign DAC_A_OUT[9] = \^DAC_A_OUT [12];
  assign DAC_A_OUT[8] = \^DAC_A_OUT [12];
  assign DAC_A_OUT[7] = \^DAC_A_OUT [12];
  assign DAC_A_OUT[6] = \^DAC_A_OUT [12];
  assign DAC_A_OUT[5] = \^DAC_A_OUT [12];
  assign DAC_A_OUT[4] = \^DAC_A_OUT [12];
  assign DAC_A_OUT[3] = \^DAC_A_OUT [12];
  assign DAC_A_OUT[2] = \^DAC_A_OUT [12];
  assign DAC_A_OUT[1] = \^DAC_A_OUT [12];
  assign DAC_A_OUT[0] = \^DAC_A_OUT [12];
  assign DAC_B_OUT[13] = \^DAC_A_OUT [12];
  assign DAC_B_OUT[12] = \^DAC_B_OUT [12];
  assign DAC_B_OUT[11] = \^DAC_B_OUT [12];
  assign DAC_B_OUT[10] = \^DAC_B_OUT [12];
  assign DAC_B_OUT[9] = \^DAC_B_OUT [12];
  assign DAC_B_OUT[8] = \^DAC_B_OUT [12];
  assign DAC_B_OUT[7] = \^DAC_B_OUT [12];
  assign DAC_B_OUT[6] = \^DAC_B_OUT [12];
  assign DAC_B_OUT[5] = \^DAC_B_OUT [12];
  assign DAC_B_OUT[4] = \^DAC_B_OUT [12];
  assign DAC_B_OUT[3] = \^DAC_B_OUT [12];
  assign DAC_B_OUT[2] = \^DAC_B_OUT [12];
  assign DAC_B_OUT[1] = \^DAC_B_OUT [12];
  assign DAC_B_OUT[0] = \^DAC_B_OUT [12];
  assign val_0 = \<const0> ;
  assign val_1 = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_my_timer inst
       (.ADC_CLK(ADC_CLK),
        .DAC_B_OUT({\^DAC_A_OUT ,\^DAC_B_OUT }),
        .GP_IN(GP_IN[31:1]));
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
