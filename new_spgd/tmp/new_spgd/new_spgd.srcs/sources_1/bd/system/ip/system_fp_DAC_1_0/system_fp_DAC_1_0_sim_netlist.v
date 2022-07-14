// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Tue Jul  5 13:31:22 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/taylor/Documents/new_spgd/tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_fp_DAC_1_0/system_fp_DAC_1_0_sim_netlist.v
// Design      : system_fp_DAC_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_fp_DAC_1_0,fp_DAC,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fp_DAC,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module system_fp_DAC_1_0
   (fp_in,
    DAC_out);
  input [63:0]fp_in;
  output [13:0]DAC_out;

  wire [13:0]DAC_out;
  wire [63:0]fp_in;

  system_fp_DAC_1_0_fp_DAC inst
       (.DAC_out(DAC_out),
        .fp_in(fp_in));
endmodule

(* ORIG_REF_NAME = "DAC_OR_CHECK" *) 
module system_fp_DAC_1_0_DAC_OR_CHECK
   (DAC_out,
    O,
    DAC_in);
  output [12:0]DAC_out;
  input [0:0]O;
  input [12:0]DAC_in;

  wire [12:0]DAC_in;
  wire [12:0]DAC_out;
  wire [0:0]O;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DAC_out[0]_INST_0 
       (.I0(O),
        .I1(DAC_in[0]),
        .O(DAC_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DAC_out[10]_INST_0 
       (.I0(O),
        .I1(DAC_in[10]),
        .O(DAC_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DAC_out[11]_INST_0 
       (.I0(O),
        .I1(DAC_in[11]),
        .O(DAC_out[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \DAC_out[12]_INST_0 
       (.I0(O),
        .I1(DAC_in[12]),
        .O(DAC_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DAC_out[1]_INST_0 
       (.I0(O),
        .I1(DAC_in[1]),
        .O(DAC_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DAC_out[2]_INST_0 
       (.I0(O),
        .I1(DAC_in[2]),
        .O(DAC_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DAC_out[3]_INST_0 
       (.I0(O),
        .I1(DAC_in[3]),
        .O(DAC_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DAC_out[4]_INST_0 
       (.I0(O),
        .I1(DAC_in[4]),
        .O(DAC_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DAC_out[5]_INST_0 
       (.I0(O),
        .I1(DAC_in[5]),
        .O(DAC_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DAC_out[6]_INST_0 
       (.I0(O),
        .I1(DAC_in[6]),
        .O(DAC_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DAC_out[7]_INST_0 
       (.I0(O),
        .I1(DAC_in[7]),
        .O(DAC_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DAC_out[8]_INST_0 
       (.I0(O),
        .I1(DAC_in[8]),
        .O(DAC_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \DAC_out[9]_INST_0 
       (.I0(O),
        .I1(DAC_in[9]),
        .O(DAC_out[9]));
endmodule

(* ORIG_REF_NAME = "fp_DAC" *) 
module system_fp_DAC_1_0_fp_DAC
   (DAC_out,
    fp_in);
  output [13:0]DAC_out;
  input [63:0]fp_in;

  wire [12:0]DAC_in;
  wire [13:0]DAC_out;
  wire [63:0]fp_in;

  system_fp_DAC_1_0_gen_mult DAC_MULT
       (.DAC_in(DAC_in),
        .O(DAC_out[13]),
        .fp_in(fp_in));
  system_fp_DAC_1_0_DAC_OR_CHECK OR_CHECK
       (.DAC_in(DAC_in),
        .DAC_out(DAC_out[12:0]),
        .O(DAC_out[13]));
endmodule

(* ORIG_REF_NAME = "gen_mult" *) 
module system_fp_DAC_1_0_gen_mult
   (DAC_in,
    O,
    fp_in);
  output [12:0]DAC_in;
  output [0:0]O;
  input [63:0]fp_in;

  wire [12:0]DAC_in;
  wire [0:0]O;
  wire [63:0]fp_in;
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
  wire p0__1_n_100;
  wire p0__1_n_101;
  wire p0__1_n_102;
  wire p0__1_n_103;
  wire p0__1_n_104;
  wire p0__1_n_105;
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
  wire p0__2_carry__0_i_1_n_0;
  wire p0__2_carry__0_i_2_n_0;
  wire p0__2_carry__0_i_3_n_0;
  wire p0__2_carry__0_i_4_n_0;
  wire p0__2_carry__0_n_0;
  wire p0__2_carry__0_n_1;
  wire p0__2_carry__0_n_2;
  wire p0__2_carry__0_n_3;
  wire p0__2_carry__10_i_1_n_0;
  wire p0__2_carry__10_i_2_n_0;
  wire p0__2_carry__10_i_3_n_0;
  wire p0__2_carry__10_i_4_n_0;
  wire p0__2_carry__10_i_5_n_0;
  wire p0__2_carry__10_i_6_n_0;
  wire p0__2_carry__10_i_7_n_0;
  wire p0__2_carry__10_i_8_n_0;
  wire p0__2_carry__10_n_0;
  wire p0__2_carry__10_n_1;
  wire p0__2_carry__10_n_2;
  wire p0__2_carry__10_n_3;
  wire p0__2_carry__11_i_10_n_0;
  wire p0__2_carry__11_i_1_n_0;
  wire p0__2_carry__11_i_2_n_0;
  wire p0__2_carry__11_i_3_n_0;
  wire p0__2_carry__11_i_4_n_0;
  wire p0__2_carry__11_i_5_n_0;
  wire p0__2_carry__11_i_6_n_0;
  wire p0__2_carry__11_i_7_n_0;
  wire p0__2_carry__11_i_8_n_0;
  wire p0__2_carry__11_i_9_n_0;
  wire p0__2_carry__11_n_0;
  wire p0__2_carry__11_n_1;
  wire p0__2_carry__11_n_2;
  wire p0__2_carry__11_n_3;
  wire p0__2_carry__12_i_1_n_0;
  wire p0__2_carry__12_i_2_n_0;
  wire p0__2_carry__12_i_3_n_0;
  wire p0__2_carry__12_i_4_n_0;
  wire p0__2_carry__12_i_5_n_0;
  wire p0__2_carry__12_i_6_n_0;
  wire p0__2_carry__12_i_7_n_0;
  wire p0__2_carry__12_i_8_n_0;
  wire p0__2_carry__12_n_0;
  wire p0__2_carry__12_n_1;
  wire p0__2_carry__12_n_2;
  wire p0__2_carry__12_n_3;
  wire p0__2_carry__13_i_1_n_0;
  wire p0__2_carry__13_i_2_n_0;
  wire p0__2_carry__13_i_3_n_0;
  wire p0__2_carry__13_i_4_n_0;
  wire p0__2_carry__13_i_5_n_0;
  wire p0__2_carry__13_i_6_n_0;
  wire p0__2_carry__13_i_7_n_0;
  wire p0__2_carry__13_i_8_n_0;
  wire p0__2_carry__13_n_0;
  wire p0__2_carry__13_n_1;
  wire p0__2_carry__13_n_2;
  wire p0__2_carry__13_n_3;
  wire p0__2_carry__14_i_1_n_0;
  wire p0__2_carry__14_i_2_n_0;
  wire p0__2_carry__14_i_3_n_0;
  wire p0__2_carry__14_i_4_n_0;
  wire p0__2_carry__14_i_5_n_0;
  wire p0__2_carry__14_i_6_n_0;
  wire p0__2_carry__14_i_7_n_0;
  wire p0__2_carry__14_i_8_n_0;
  wire p0__2_carry__14_n_0;
  wire p0__2_carry__14_n_1;
  wire p0__2_carry__14_n_2;
  wire p0__2_carry__14_n_3;
  wire p0__2_carry__15_i_1_n_0;
  wire p0__2_carry__15_i_2_n_0;
  wire p0__2_carry__15_i_3_n_0;
  wire p0__2_carry__15_i_4_n_0;
  wire p0__2_carry__15_i_5_n_0;
  wire p0__2_carry__15_i_6_n_0;
  wire p0__2_carry__15_i_7_n_0;
  wire p0__2_carry__15_n_0;
  wire p0__2_carry__15_n_1;
  wire p0__2_carry__15_n_2;
  wire p0__2_carry__15_n_3;
  wire p0__2_carry__16_i_1_n_0;
  wire p0__2_carry__16_i_2_n_0;
  wire p0__2_carry__16_i_3_n_0;
  wire p0__2_carry__16_i_4_n_0;
  wire p0__2_carry__16_n_0;
  wire p0__2_carry__16_n_1;
  wire p0__2_carry__16_n_2;
  wire p0__2_carry__16_n_3;
  wire p0__2_carry__17_i_1_n_0;
  wire p0__2_carry__17_i_2_n_0;
  wire p0__2_carry__17_i_3_n_0;
  wire p0__2_carry__17_i_4_n_0;
  wire p0__2_carry__17_n_0;
  wire p0__2_carry__17_n_1;
  wire p0__2_carry__17_n_2;
  wire p0__2_carry__17_n_3;
  wire p0__2_carry__18_i_1_n_0;
  wire p0__2_carry__18_i_2_n_0;
  wire p0__2_carry__18_i_3_n_0;
  wire p0__2_carry__18_n_2;
  wire p0__2_carry__18_n_3;
  wire p0__2_carry__1_i_1_n_0;
  wire p0__2_carry__1_i_2_n_0;
  wire p0__2_carry__1_i_3_n_0;
  wire p0__2_carry__1_i_4_n_0;
  wire p0__2_carry__1_n_0;
  wire p0__2_carry__1_n_1;
  wire p0__2_carry__1_n_2;
  wire p0__2_carry__1_n_3;
  wire p0__2_carry__2_i_1_n_0;
  wire p0__2_carry__2_i_2_n_0;
  wire p0__2_carry__2_i_3_n_0;
  wire p0__2_carry__2_i_4_n_0;
  wire p0__2_carry__2_n_0;
  wire p0__2_carry__2_n_1;
  wire p0__2_carry__2_n_2;
  wire p0__2_carry__2_n_3;
  wire p0__2_carry__3_i_1_n_0;
  wire p0__2_carry__3_i_2_n_0;
  wire p0__2_carry__3_i_3_n_0;
  wire p0__2_carry__3_i_4_n_0;
  wire p0__2_carry__3_i_5_n_0;
  wire p0__2_carry__3_n_0;
  wire p0__2_carry__3_n_1;
  wire p0__2_carry__3_n_2;
  wire p0__2_carry__3_n_3;
  wire p0__2_carry__4_i_1_n_0;
  wire p0__2_carry__4_i_2_n_0;
  wire p0__2_carry__4_i_3_n_0;
  wire p0__2_carry__4_i_4_n_0;
  wire p0__2_carry__4_i_5_n_0;
  wire p0__2_carry__4_i_6_n_0;
  wire p0__2_carry__4_i_7_n_0;
  wire p0__2_carry__4_i_8_n_0;
  wire p0__2_carry__4_n_0;
  wire p0__2_carry__4_n_1;
  wire p0__2_carry__4_n_2;
  wire p0__2_carry__4_n_3;
  wire p0__2_carry__5_i_1_n_0;
  wire p0__2_carry__5_i_2_n_0;
  wire p0__2_carry__5_i_3_n_0;
  wire p0__2_carry__5_i_4_n_0;
  wire p0__2_carry__5_i_5_n_0;
  wire p0__2_carry__5_i_6_n_0;
  wire p0__2_carry__5_i_7_n_0;
  wire p0__2_carry__5_i_8_n_0;
  wire p0__2_carry__5_n_0;
  wire p0__2_carry__5_n_1;
  wire p0__2_carry__5_n_2;
  wire p0__2_carry__5_n_3;
  wire p0__2_carry__6_i_1_n_0;
  wire p0__2_carry__6_i_2_n_0;
  wire p0__2_carry__6_i_3_n_0;
  wire p0__2_carry__6_i_4_n_0;
  wire p0__2_carry__6_i_5_n_0;
  wire p0__2_carry__6_i_6_n_0;
  wire p0__2_carry__6_i_7_n_0;
  wire p0__2_carry__6_i_8_n_0;
  wire p0__2_carry__6_n_0;
  wire p0__2_carry__6_n_1;
  wire p0__2_carry__6_n_2;
  wire p0__2_carry__6_n_3;
  wire p0__2_carry__7_i_1_n_0;
  wire p0__2_carry__7_i_2_n_0;
  wire p0__2_carry__7_i_3_n_0;
  wire p0__2_carry__7_i_4_n_0;
  wire p0__2_carry__7_i_5_n_0;
  wire p0__2_carry__7_i_6_n_0;
  wire p0__2_carry__7_i_7_n_0;
  wire p0__2_carry__7_i_8_n_0;
  wire p0__2_carry__7_i_9_n_0;
  wire p0__2_carry__7_n_0;
  wire p0__2_carry__7_n_1;
  wire p0__2_carry__7_n_2;
  wire p0__2_carry__7_n_3;
  wire p0__2_carry__8_i_1_n_0;
  wire p0__2_carry__8_i_2_n_0;
  wire p0__2_carry__8_i_3_n_0;
  wire p0__2_carry__8_i_4_n_0;
  wire p0__2_carry__8_i_5_n_0;
  wire p0__2_carry__8_i_6_n_0;
  wire p0__2_carry__8_i_7_n_0;
  wire p0__2_carry__8_i_8_n_0;
  wire p0__2_carry__8_n_0;
  wire p0__2_carry__8_n_1;
  wire p0__2_carry__8_n_2;
  wire p0__2_carry__8_n_3;
  wire p0__2_carry__9_i_1_n_0;
  wire p0__2_carry__9_i_2_n_0;
  wire p0__2_carry__9_i_3_n_0;
  wire p0__2_carry__9_i_4_n_0;
  wire p0__2_carry__9_i_5_n_0;
  wire p0__2_carry__9_i_6_n_0;
  wire p0__2_carry__9_i_7_n_0;
  wire p0__2_carry__9_i_8_n_0;
  wire p0__2_carry__9_n_0;
  wire p0__2_carry__9_n_1;
  wire p0__2_carry__9_n_2;
  wire p0__2_carry__9_n_3;
  wire p0__2_carry_i_1_n_0;
  wire p0__2_carry_i_2_n_0;
  wire p0__2_carry_i_3_n_0;
  wire p0__2_carry_n_0;
  wire p0__2_carry_n_1;
  wire p0__2_carry_n_2;
  wire p0__2_carry_n_3;
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
  wire p0__6_n_106;
  wire p0__6_n_107;
  wire p0__6_n_108;
  wire p0__6_n_109;
  wire p0__6_n_110;
  wire p0__6_n_111;
  wire p0__6_n_112;
  wire p0__6_n_113;
  wire p0__6_n_114;
  wire p0__6_n_115;
  wire p0__6_n_116;
  wire p0__6_n_117;
  wire p0__6_n_118;
  wire p0__6_n_119;
  wire p0__6_n_120;
  wire p0__6_n_121;
  wire p0__6_n_122;
  wire p0__6_n_123;
  wire p0__6_n_124;
  wire p0__6_n_125;
  wire p0__6_n_126;
  wire p0__6_n_127;
  wire p0__6_n_128;
  wire p0__6_n_129;
  wire p0__6_n_130;
  wire p0__6_n_131;
  wire p0__6_n_132;
  wire p0__6_n_133;
  wire p0__6_n_134;
  wire p0__6_n_135;
  wire p0__6_n_136;
  wire p0__6_n_137;
  wire p0__6_n_138;
  wire p0__6_n_139;
  wire p0__6_n_140;
  wire p0__6_n_141;
  wire p0__6_n_142;
  wire p0__6_n_143;
  wire p0__6_n_144;
  wire p0__6_n_145;
  wire p0__6_n_146;
  wire p0__6_n_147;
  wire p0__6_n_148;
  wire p0__6_n_149;
  wire p0__6_n_150;
  wire p0__6_n_151;
  wire p0__6_n_152;
  wire p0__6_n_153;
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
  wire p0__7_n_100;
  wire p0__7_n_101;
  wire p0__7_n_102;
  wire p0__7_n_103;
  wire p0__7_n_104;
  wire p0__7_n_105;
  wire p0__7_n_58;
  wire p0__7_n_59;
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
  wire p0__9_n_58;
  wire p0__9_n_59;
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
  wire NLW_p0__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__1_OVERFLOW_UNCONNECTED;
  wire NLW_p0__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__1_PCOUT_UNCONNECTED;
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
  wire NLW_p0__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__2_OVERFLOW_UNCONNECTED;
  wire NLW_p0__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__2_CARRYOUT_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry_O_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry__10_O_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry__11_O_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry__12_O_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry__13_O_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry__14_O_UNCONNECTED;
  wire [0:0]NLW_p0__2_carry__15_O_UNCONNECTED;
  wire [3:2]NLW_p0__2_carry__18_CO_UNCONNECTED;
  wire [3:3]NLW_p0__2_carry__18_O_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry__3_O_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry__5_O_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry__7_O_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry__8_O_UNCONNECTED;
  wire [3:0]NLW_p0__2_carry__9_O_UNCONNECTED;
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
  wire NLW_p0__7_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p0__7_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p0__7_OVERFLOW_UNCONNECTED;
  wire NLW_p0__7_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p0__7_PATTERNDETECT_UNCONNECTED;
  wire NLW_p0__7_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p0__7_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p0__7_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p0__7_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_p0__7_PCOUT_UNCONNECTED;
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

  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x25 12}}" *) 
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
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,fp_in[50:34]}),
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
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 13x18 12}}" *) 
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({fp_in[63],fp_in[63],fp_in[63],fp_in[63],fp_in[63],fp_in[63:51]}),
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
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__0_OVERFLOW_UNCONNECTED),
        .P({p0__0_n_58,p0__0_n_59,p0__0_n_60,p0__0_n_61,p0__0_n_62,p0__0_n_63,p0__0_n_64,p0__0_n_65,p0__0_n_66,p0__0_n_67,p0__0_n_68,p0__0_n_69,p0__0_n_70,p0__0_n_71,p0__0_n_72,p0__0_n_73,p0__0_n_74,p0__0_n_75,p0__0_n_76,p0__0_n_77,p0__0_n_78,p0__0_n_79,p0__0_n_80,p0__0_n_81,p0__0_n_82,p0__0_n_83,p0__0_n_84,p0__0_n_85,p0__0_n_86,p0__0_n_87,p0__0_n_88,p0__0_n_89,p0__0_n_90,p0__0_n_91,p0__0_n_92,p0__0_n_93,p0__0_n_94,p0__0_n_95,p0__0_n_96,p0__0_n_97,p0__0_n_98,p0__0_n_99,p0__0_n_100,p0__0_n_101,p0__0_n_102,p0__0_n_103,p0__0_n_104,p0__0_n_105}),
        .PATTERNBDETECT(NLW_p0__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0_n_106,p0_n_107,p0_n_108,p0_n_109,p0_n_110,p0_n_111,p0_n_112,p0_n_113,p0_n_114,p0_n_115,p0_n_116,p0_n_117,p0_n_118,p0_n_119,p0_n_120,p0_n_121,p0_n_122,p0_n_123,p0_n_124,p0_n_125,p0_n_126,p0_n_127,p0_n_128,p0_n_129,p0_n_130,p0_n_131,p0_n_132,p0_n_133,p0_n_134,p0_n_135,p0_n_136,p0_n_137,p0_n_138,p0_n_139,p0_n_140,p0_n_141,p0_n_142,p0_n_143,p0_n_144,p0_n_145,p0_n_146,p0_n_147,p0_n_148,p0_n_149,p0_n_150,p0_n_151,p0_n_152,p0_n_153}),
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
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 13x25 12}}" *) 
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
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({fp_in[63],fp_in[63],fp_in[63],fp_in[63],fp_in[63],fp_in[63:51]}),
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
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__1_OVERFLOW_UNCONNECTED),
        .P({p0__1_n_58,p0__1_n_59,p0__1_n_60,p0__1_n_61,p0__1_n_62,p0__1_n_63,p0__1_n_64,p0__1_n_65,p0__1_n_66,p0__1_n_67,p0__1_n_68,p0__1_n_69,p0__1_n_70,p0__1_n_71,p0__1_n_72,p0__1_n_73,p0__1_n_74,p0__1_n_75,p0__1_n_76,p0__1_n_77,p0__1_n_78,p0__1_n_79,p0__1_n_80,p0__1_n_81,p0__1_n_82,p0__1_n_83,p0__1_n_84,p0__1_n_85,p0__1_n_86,p0__1_n_87,p0__1_n_88,p0__1_n_89,p0__1_n_90,p0__1_n_91,p0__1_n_92,p0__1_n_93,p0__1_n_94,p0__1_n_95,p0__1_n_96,p0__1_n_97,p0__1_n_98,p0__1_n_99,p0__1_n_100,p0__1_n_101,p0__1_n_102,p0__1_n_103,p0__1_n_104,p0__1_n_105}),
        .PATTERNBDETECT(NLW_p0__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__0_n_106,p0__0_n_107,p0__0_n_108,p0__0_n_109,p0__0_n_110,p0__0_n_111,p0__0_n_112,p0__0_n_113,p0__0_n_114,p0__0_n_115,p0__0_n_116,p0__0_n_117,p0__0_n_118,p0__0_n_119,p0__0_n_120,p0__0_n_121,p0__0_n_122,p0__0_n_123,p0__0_n_124,p0__0_n_125,p0__0_n_126,p0__0_n_127,p0__0_n_128,p0__0_n_129,p0__0_n_130,p0__0_n_131,p0__0_n_132,p0__0_n_133,p0__0_n_134,p0__0_n_135,p0__0_n_136,p0__0_n_137,p0__0_n_138,p0__0_n_139,p0__0_n_140,p0__0_n_141,p0__0_n_142,p0__0_n_143,p0__0_n_144,p0__0_n_145,p0__0_n_146,p0__0_n_147,p0__0_n_148,p0__0_n_149,p0__0_n_150,p0__0_n_151,p0__0_n_152,p0__0_n_153}),
        .PCOUT(NLW_p0__1_PCOUT_UNCONNECTED[47:0]),
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
    p0__10
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fp_in[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__10_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0}),
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
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p0__10_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x25 12}}" *) 
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
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,fp_in[33:17]}),
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
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__2_OVERFLOW_UNCONNECTED),
        .P({p0__2_n_58,p0__2_n_59,p0__2_n_60,p0__2_n_61,p0__2_n_62,p0__2_n_63,p0__2_n_64,p0__2_n_65,p0__2_n_66,p0__2_n_67,p0__2_n_68,p0__2_n_69,p0__2_n_70,p0__2_n_71,p0__2_n_72,p0__2_n_73,p0__2_n_74,p0__2_n_75,p0__2_n_76,p0__2_n_77,p0__2_n_78,p0__2_n_79,p0__2_n_80,p0__2_n_81,p0__2_n_82,p0__2_n_83,p0__2_n_84,p0__2_n_85,p0__2_n_86,p0__2_n_87,p0__2_n_88,p0__2_n_89,p0__2_n_90,p0__2_n_91,p0__2_n_92,p0__2_n_93,p0__2_n_94,p0__2_n_95,p0__2_n_96,p0__2_n_97,p0__2_n_98,p0__2_n_99,p0__2_n_100,p0__2_n_101,p0__2_n_102,p0__2_n_103,p0__2_n_104,p0__2_n_105}),
        .PATTERNBDETECT(NLW_p0__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry
       (.CI(1'b0),
        .CO({p0__2_carry_n_0,p0__2_carry_n_1,p0__2_carry_n_2,p0__2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({p0__10_n_86,p0__10_n_87,p0__10_n_88,1'b0}),
        .O(NLW_p0__2_carry_O_UNCONNECTED[3:0]),
        .S({p0__2_carry_i_1_n_0,p0__2_carry_i_2_n_0,p0__2_carry_i_3_n_0,p0__10_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__0
       (.CI(p0__2_carry_n_0),
        .CO({p0__2_carry__0_n_0,p0__2_carry__0_n_1,p0__2_carry__0_n_2,p0__2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({p0__10_n_82,p0__10_n_83,p0__10_n_84,p0__10_n_85}),
        .O(NLW_p0__2_carry__0_O_UNCONNECTED[3:0]),
        .S({p0__2_carry__0_i_1_n_0,p0__2_carry__0_i_2_n_0,p0__2_carry__0_i_3_n_0,p0__2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__0_i_1
       (.I0(p0__10_n_82),
        .I1(p0__7_n_99),
        .O(p0__2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__0_i_2
       (.I0(p0__10_n_83),
        .I1(p0__7_n_100),
        .O(p0__2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__0_i_3
       (.I0(p0__10_n_84),
        .I1(p0__7_n_101),
        .O(p0__2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__0_i_4
       (.I0(p0__10_n_85),
        .I1(p0__7_n_102),
        .O(p0__2_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__1
       (.CI(p0__2_carry__0_n_0),
        .CO({p0__2_carry__1_n_0,p0__2_carry__1_n_1,p0__2_carry__1_n_2,p0__2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({p0__10_n_78,p0__10_n_79,p0__10_n_80,p0__10_n_81}),
        .O(NLW_p0__2_carry__1_O_UNCONNECTED[3:0]),
        .S({p0__2_carry__1_i_1_n_0,p0__2_carry__1_i_2_n_0,p0__2_carry__1_i_3_n_0,p0__2_carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__10
       (.CI(p0__2_carry__9_n_0),
        .CO({p0__2_carry__10_n_0,p0__2_carry__10_n_1,p0__2_carry__10_n_2,p0__2_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_carry__10_i_1_n_0,p0__2_carry__10_i_2_n_0,p0__2_carry__10_i_3_n_0,p0__2_carry__10_i_4_n_0}),
        .O(NLW_p0__2_carry__10_O_UNCONNECTED[3:0]),
        .S({p0__2_carry__10_i_5_n_0,p0__2_carry__10_i_6_n_0,p0__2_carry__10_i_7_n_0,p0__2_carry__10_i_8_n_0}));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    p0__2_carry__10_i_1
       (.I0(p0__0_n_94),
        .I1(p0__4_n_77),
        .I2(p0__7_n_60),
        .I3(p0__0_n_95),
        .I4(p0__4_n_78),
        .O(p0__2_carry__10_i_1_n_0));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    p0__2_carry__10_i_2
       (.I0(p0__0_n_95),
        .I1(p0__4_n_78),
        .I2(p0__7_n_61),
        .I3(p0__0_n_96),
        .I4(p0__4_n_79),
        .O(p0__2_carry__10_i_2_n_0));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    p0__2_carry__10_i_3
       (.I0(p0__0_n_96),
        .I1(p0__4_n_79),
        .I2(p0__7_n_62),
        .I3(p0__0_n_97),
        .I4(p0__4_n_80),
        .O(p0__2_carry__10_i_3_n_0));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    p0__2_carry__10_i_4
       (.I0(p0__0_n_97),
        .I1(p0__4_n_80),
        .I2(p0__7_n_63),
        .I3(p0__0_n_98),
        .I4(p0__4_n_81),
        .O(p0__2_carry__10_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    p0__2_carry__10_i_5
       (.I0(p0__2_carry__10_i_1_n_0),
        .I1(p0__0_n_93),
        .I2(p0__4_n_76),
        .I3(p0__7_n_59),
        .I4(p0__4_n_77),
        .I5(p0__0_n_94),
        .O(p0__2_carry__10_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    p0__2_carry__10_i_6
       (.I0(p0__2_carry__10_i_2_n_0),
        .I1(p0__0_n_94),
        .I2(p0__4_n_77),
        .I3(p0__7_n_60),
        .I4(p0__4_n_78),
        .I5(p0__0_n_95),
        .O(p0__2_carry__10_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    p0__2_carry__10_i_7
       (.I0(p0__2_carry__10_i_3_n_0),
        .I1(p0__0_n_95),
        .I2(p0__4_n_78),
        .I3(p0__7_n_61),
        .I4(p0__4_n_79),
        .I5(p0__0_n_96),
        .O(p0__2_carry__10_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    p0__2_carry__10_i_8
       (.I0(p0__2_carry__10_i_4_n_0),
        .I1(p0__0_n_96),
        .I2(p0__4_n_79),
        .I3(p0__7_n_62),
        .I4(p0__4_n_80),
        .I5(p0__0_n_97),
        .O(p0__2_carry__10_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__11
       (.CI(p0__2_carry__10_n_0),
        .CO({p0__2_carry__11_n_0,p0__2_carry__11_n_1,p0__2_carry__11_n_2,p0__2_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_carry__11_i_1_n_0,p0__2_carry__11_i_2_n_0,p0__2_carry__11_i_3_n_0,p0__2_carry__11_i_4_n_0}),
        .O(NLW_p0__2_carry__11_O_UNCONNECTED[3:0]),
        .S({p0__2_carry__11_i_5_n_0,p0__2_carry__11_i_6_n_0,p0__2_carry__11_i_7_n_0,p0__2_carry__11_i_8_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__11_i_1
       (.I0(p0__0_n_91),
        .I1(p0__4_n_74),
        .I2(p0__0_n_90),
        .I3(p0__4_n_73),
        .O(p0__2_carry__11_i_1_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__2_carry__11_i_10
       (.I0(p0__7_n_58),
        .I1(p0__0_n_92),
        .I2(p0__4_n_75),
        .O(p0__2_carry__11_i_10_n_0));
  LUT5 #(
    .INIT(32'hD40000D4)) 
    p0__2_carry__11_i_2
       (.I0(p0__7_n_58),
        .I1(p0__4_n_75),
        .I2(p0__0_n_92),
        .I3(p0__0_n_91),
        .I4(p0__4_n_74),
        .O(p0__2_carry__11_i_2_n_0));
  LUT5 #(
    .INIT(32'h0EE0E00E)) 
    p0__2_carry__11_i_3
       (.I0(p0__0_n_93),
        .I1(p0__4_n_76),
        .I2(p0__4_n_75),
        .I3(p0__0_n_92),
        .I4(p0__7_n_58),
        .O(p0__2_carry__11_i_3_n_0));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    p0__2_carry__11_i_4
       (.I0(p0__0_n_93),
        .I1(p0__4_n_76),
        .I2(p0__7_n_59),
        .I3(p0__0_n_94),
        .I4(p0__4_n_77),
        .O(p0__2_carry__11_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__11_i_5
       (.I0(p0__4_n_74),
        .I1(p0__0_n_91),
        .I2(p0__4_n_72),
        .I3(p0__0_n_89),
        .I4(p0__4_n_73),
        .I5(p0__0_n_90),
        .O(p0__2_carry__11_i_5_n_0));
  LUT5 #(
    .INIT(32'h96969669)) 
    p0__2_carry__11_i_6
       (.I0(p0__2_carry__11_i_2_n_0),
        .I1(p0__4_n_73),
        .I2(p0__0_n_90),
        .I3(p0__4_n_74),
        .I4(p0__0_n_91),
        .O(p0__2_carry__11_i_6_n_0));
  LUT6 #(
    .INIT(64'hF0E1E10F1EF0F0E1)) 
    p0__2_carry__11_i_7
       (.I0(p0__4_n_76),
        .I1(p0__0_n_93),
        .I2(p0__2_carry__11_i_9_n_0),
        .I3(p0__0_n_92),
        .I4(p0__4_n_75),
        .I5(p0__7_n_58),
        .O(p0__2_carry__11_i_7_n_0));
  LUT6 #(
    .INIT(64'h01FE1FE01FE0FE01)) 
    p0__2_carry__11_i_8
       (.I0(p0__4_n_77),
        .I1(p0__0_n_94),
        .I2(p0__7_n_59),
        .I3(p0__2_carry__11_i_10_n_0),
        .I4(p0__4_n_76),
        .I5(p0__0_n_93),
        .O(p0__2_carry__11_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__11_i_9
       (.I0(p0__4_n_74),
        .I1(p0__0_n_91),
        .O(p0__2_carry__11_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__12
       (.CI(p0__2_carry__11_n_0),
        .CO({p0__2_carry__12_n_0,p0__2_carry__12_n_1,p0__2_carry__12_n_2,p0__2_carry__12_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_carry__12_i_1_n_0,p0__2_carry__12_i_2_n_0,p0__2_carry__12_i_3_n_0,p0__2_carry__12_i_4_n_0}),
        .O(NLW_p0__2_carry__12_O_UNCONNECTED[3:0]),
        .S({p0__2_carry__12_i_5_n_0,p0__2_carry__12_i_6_n_0,p0__2_carry__12_i_7_n_0,p0__2_carry__12_i_8_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__12_i_1
       (.I0(p0__1_n_104),
        .I1(p0__4_n_70),
        .I2(p0__1_n_103),
        .I3(p0__4_n_69),
        .O(p0__2_carry__12_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__12_i_2
       (.I0(p0__1_n_105),
        .I1(p0__4_n_71),
        .I2(p0__1_n_104),
        .I3(p0__4_n_70),
        .O(p0__2_carry__12_i_2_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__12_i_3
       (.I0(p0__0_n_89),
        .I1(p0__4_n_72),
        .I2(p0__1_n_105),
        .I3(p0__4_n_71),
        .O(p0__2_carry__12_i_3_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__12_i_4
       (.I0(p0__0_n_90),
        .I1(p0__4_n_73),
        .I2(p0__0_n_89),
        .I3(p0__4_n_72),
        .O(p0__2_carry__12_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__12_i_5
       (.I0(p0__4_n_70),
        .I1(p0__1_n_104),
        .I2(p0__4_n_68),
        .I3(p0__1_n_102),
        .I4(p0__4_n_69),
        .I5(p0__1_n_103),
        .O(p0__2_carry__12_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__12_i_6
       (.I0(p0__4_n_71),
        .I1(p0__1_n_105),
        .I2(p0__4_n_69),
        .I3(p0__1_n_103),
        .I4(p0__4_n_70),
        .I5(p0__1_n_104),
        .O(p0__2_carry__12_i_6_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__12_i_7
       (.I0(p0__4_n_72),
        .I1(p0__0_n_89),
        .I2(p0__4_n_70),
        .I3(p0__1_n_104),
        .I4(p0__4_n_71),
        .I5(p0__1_n_105),
        .O(p0__2_carry__12_i_7_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__12_i_8
       (.I0(p0__4_n_73),
        .I1(p0__0_n_90),
        .I2(p0__4_n_71),
        .I3(p0__1_n_105),
        .I4(p0__4_n_72),
        .I5(p0__0_n_89),
        .O(p0__2_carry__12_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__13
       (.CI(p0__2_carry__12_n_0),
        .CO({p0__2_carry__13_n_0,p0__2_carry__13_n_1,p0__2_carry__13_n_2,p0__2_carry__13_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_carry__13_i_1_n_0,p0__2_carry__13_i_2_n_0,p0__2_carry__13_i_3_n_0,p0__2_carry__13_i_4_n_0}),
        .O(NLW_p0__2_carry__13_O_UNCONNECTED[3:0]),
        .S({p0__2_carry__13_i_5_n_0,p0__2_carry__13_i_6_n_0,p0__2_carry__13_i_7_n_0,p0__2_carry__13_i_8_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__13_i_1
       (.I0(p0__1_n_100),
        .I1(p0__4_n_66),
        .I2(p0__1_n_99),
        .I3(p0__4_n_65),
        .O(p0__2_carry__13_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__13_i_2
       (.I0(p0__1_n_101),
        .I1(p0__4_n_67),
        .I2(p0__1_n_100),
        .I3(p0__4_n_66),
        .O(p0__2_carry__13_i_2_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__13_i_3
       (.I0(p0__1_n_102),
        .I1(p0__4_n_68),
        .I2(p0__1_n_101),
        .I3(p0__4_n_67),
        .O(p0__2_carry__13_i_3_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__13_i_4
       (.I0(p0__1_n_103),
        .I1(p0__4_n_69),
        .I2(p0__1_n_102),
        .I3(p0__4_n_68),
        .O(p0__2_carry__13_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__13_i_5
       (.I0(p0__4_n_66),
        .I1(p0__1_n_100),
        .I2(p0__4_n_64),
        .I3(p0__1_n_98),
        .I4(p0__4_n_65),
        .I5(p0__1_n_99),
        .O(p0__2_carry__13_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__13_i_6
       (.I0(p0__4_n_67),
        .I1(p0__1_n_101),
        .I2(p0__4_n_65),
        .I3(p0__1_n_99),
        .I4(p0__4_n_66),
        .I5(p0__1_n_100),
        .O(p0__2_carry__13_i_6_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__13_i_7
       (.I0(p0__4_n_68),
        .I1(p0__1_n_102),
        .I2(p0__4_n_66),
        .I3(p0__1_n_100),
        .I4(p0__4_n_67),
        .I5(p0__1_n_101),
        .O(p0__2_carry__13_i_7_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__13_i_8
       (.I0(p0__4_n_69),
        .I1(p0__1_n_103),
        .I2(p0__4_n_67),
        .I3(p0__1_n_101),
        .I4(p0__4_n_68),
        .I5(p0__1_n_102),
        .O(p0__2_carry__13_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__14
       (.CI(p0__2_carry__13_n_0),
        .CO({p0__2_carry__14_n_0,p0__2_carry__14_n_1,p0__2_carry__14_n_2,p0__2_carry__14_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_carry__14_i_1_n_0,p0__2_carry__14_i_2_n_0,p0__2_carry__14_i_3_n_0,p0__2_carry__14_i_4_n_0}),
        .O(NLW_p0__2_carry__14_O_UNCONNECTED[3:0]),
        .S({p0__2_carry__14_i_5_n_0,p0__2_carry__14_i_6_n_0,p0__2_carry__14_i_7_n_0,p0__2_carry__14_i_8_n_0}));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__14_i_1
       (.I0(p0__1_n_96),
        .I1(p0__4_n_62),
        .I2(p0__1_n_95),
        .I3(p0__4_n_61),
        .O(p0__2_carry__14_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__14_i_2
       (.I0(p0__1_n_97),
        .I1(p0__4_n_63),
        .I2(p0__1_n_96),
        .I3(p0__4_n_62),
        .O(p0__2_carry__14_i_2_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__14_i_3
       (.I0(p0__1_n_98),
        .I1(p0__4_n_64),
        .I2(p0__1_n_97),
        .I3(p0__4_n_63),
        .O(p0__2_carry__14_i_3_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__14_i_4
       (.I0(p0__1_n_99),
        .I1(p0__4_n_65),
        .I2(p0__1_n_98),
        .I3(p0__4_n_64),
        .O(p0__2_carry__14_i_4_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__14_i_5
       (.I0(p0__4_n_62),
        .I1(p0__1_n_96),
        .I2(p0__4_n_60),
        .I3(p0__1_n_94),
        .I4(p0__4_n_61),
        .I5(p0__1_n_95),
        .O(p0__2_carry__14_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__14_i_6
       (.I0(p0__4_n_63),
        .I1(p0__1_n_97),
        .I2(p0__4_n_61),
        .I3(p0__1_n_95),
        .I4(p0__4_n_62),
        .I5(p0__1_n_96),
        .O(p0__2_carry__14_i_6_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__14_i_7
       (.I0(p0__4_n_64),
        .I1(p0__1_n_98),
        .I2(p0__4_n_62),
        .I3(p0__1_n_96),
        .I4(p0__4_n_63),
        .I5(p0__1_n_97),
        .O(p0__2_carry__14_i_7_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__14_i_8
       (.I0(p0__4_n_65),
        .I1(p0__1_n_99),
        .I2(p0__4_n_63),
        .I3(p0__1_n_97),
        .I4(p0__4_n_64),
        .I5(p0__1_n_98),
        .O(p0__2_carry__14_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__15
       (.CI(p0__2_carry__14_n_0),
        .CO({p0__2_carry__15_n_0,p0__2_carry__15_n_1,p0__2_carry__15_n_2,p0__2_carry__15_n_3}),
        .CYINIT(1'b0),
        .DI({p0__1_n_91,p0__2_carry__15_i_1_n_0,p0__2_carry__15_i_2_n_0,p0__2_carry__15_i_3_n_0}),
        .O({DAC_in[2:0],NLW_p0__2_carry__15_O_UNCONNECTED[0]}),
        .S({p0__2_carry__15_i_4_n_0,p0__2_carry__15_i_5_n_0,p0__2_carry__15_i_6_n_0,p0__2_carry__15_i_7_n_0}));
  LUT4 #(
    .INIT(16'hDDD4)) 
    p0__2_carry__15_i_1
       (.I0(p0__4_n_58),
        .I1(p0__1_n_92),
        .I2(p0__1_n_93),
        .I3(p0__4_n_59),
        .O(p0__2_carry__15_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__15_i_2
       (.I0(p0__1_n_94),
        .I1(p0__4_n_60),
        .I2(p0__1_n_93),
        .I3(p0__4_n_59),
        .O(p0__2_carry__15_i_2_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__15_i_3
       (.I0(p0__1_n_95),
        .I1(p0__4_n_61),
        .I2(p0__1_n_94),
        .I3(p0__4_n_60),
        .O(p0__2_carry__15_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p0__2_carry__15_i_4
       (.I0(p0__1_n_91),
        .I1(p0__1_n_90),
        .O(p0__2_carry__15_i_4_n_0));
  LUT5 #(
    .INIT(32'hE0FE1F01)) 
    p0__2_carry__15_i_5
       (.I0(p0__4_n_59),
        .I1(p0__1_n_93),
        .I2(p0__1_n_92),
        .I3(p0__4_n_58),
        .I4(p0__1_n_91),
        .O(p0__2_carry__15_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__15_i_6
       (.I0(p0__4_n_60),
        .I1(p0__1_n_94),
        .I2(p0__4_n_58),
        .I3(p0__1_n_92),
        .I4(p0__4_n_59),
        .I5(p0__1_n_93),
        .O(p0__2_carry__15_i_6_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__15_i_7
       (.I0(p0__4_n_61),
        .I1(p0__1_n_95),
        .I2(p0__4_n_59),
        .I3(p0__1_n_93),
        .I4(p0__4_n_60),
        .I5(p0__1_n_94),
        .O(p0__2_carry__15_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__16
       (.CI(p0__2_carry__15_n_0),
        .CO({p0__2_carry__16_n_0,p0__2_carry__16_n_1,p0__2_carry__16_n_2,p0__2_carry__16_n_3}),
        .CYINIT(1'b0),
        .DI({p0__1_n_87,p0__1_n_88,p0__1_n_89,p0__1_n_90}),
        .O(DAC_in[6:3]),
        .S({p0__2_carry__16_i_1_n_0,p0__2_carry__16_i_2_n_0,p0__2_carry__16_i_3_n_0,p0__2_carry__16_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    p0__2_carry__16_i_1
       (.I0(p0__1_n_87),
        .I1(p0__1_n_86),
        .O(p0__2_carry__16_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p0__2_carry__16_i_2
       (.I0(p0__1_n_88),
        .I1(p0__1_n_87),
        .O(p0__2_carry__16_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p0__2_carry__16_i_3
       (.I0(p0__1_n_89),
        .I1(p0__1_n_88),
        .O(p0__2_carry__16_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p0__2_carry__16_i_4
       (.I0(p0__1_n_90),
        .I1(p0__1_n_89),
        .O(p0__2_carry__16_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__17
       (.CI(p0__2_carry__16_n_0),
        .CO({p0__2_carry__17_n_0,p0__2_carry__17_n_1,p0__2_carry__17_n_2,p0__2_carry__17_n_3}),
        .CYINIT(1'b0),
        .DI({p0__1_n_83,p0__1_n_84,p0__1_n_85,p0__1_n_86}),
        .O(DAC_in[10:7]),
        .S({p0__2_carry__17_i_1_n_0,p0__2_carry__17_i_2_n_0,p0__2_carry__17_i_3_n_0,p0__2_carry__17_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    p0__2_carry__17_i_1
       (.I0(p0__1_n_83),
        .I1(p0__1_n_82),
        .O(p0__2_carry__17_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p0__2_carry__17_i_2
       (.I0(p0__1_n_84),
        .I1(p0__1_n_83),
        .O(p0__2_carry__17_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p0__2_carry__17_i_3
       (.I0(p0__1_n_85),
        .I1(p0__1_n_84),
        .O(p0__2_carry__17_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p0__2_carry__17_i_4
       (.I0(p0__1_n_86),
        .I1(p0__1_n_85),
        .O(p0__2_carry__17_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__18
       (.CI(p0__2_carry__17_n_0),
        .CO({NLW_p0__2_carry__18_CO_UNCONNECTED[3:2],p0__2_carry__18_n_2,p0__2_carry__18_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p0__1_n_81,p0__1_n_82}),
        .O({NLW_p0__2_carry__18_O_UNCONNECTED[3],O,DAC_in[12:11]}),
        .S({1'b0,p0__2_carry__18_i_1_n_0,p0__2_carry__18_i_2_n_0,p0__2_carry__18_i_3_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    p0__2_carry__18_i_1
       (.I0(p0__1_n_80),
        .I1(p0__1_n_79),
        .O(p0__2_carry__18_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p0__2_carry__18_i_2
       (.I0(p0__1_n_81),
        .I1(p0__1_n_80),
        .O(p0__2_carry__18_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p0__2_carry__18_i_3
       (.I0(p0__1_n_82),
        .I1(p0__1_n_81),
        .O(p0__2_carry__18_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__1_i_1
       (.I0(p0__10_n_78),
        .I1(p0__7_n_95),
        .O(p0__2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__1_i_2
       (.I0(p0__10_n_79),
        .I1(p0__7_n_96),
        .O(p0__2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__1_i_3
       (.I0(p0__10_n_80),
        .I1(p0__7_n_97),
        .O(p0__2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__1_i_4
       (.I0(p0__10_n_81),
        .I1(p0__7_n_98),
        .O(p0__2_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__2
       (.CI(p0__2_carry__1_n_0),
        .CO({p0__2_carry__2_n_0,p0__2_carry__2_n_1,p0__2_carry__2_n_2,p0__2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({p0__10_n_74,p0__10_n_75,p0__10_n_76,p0__10_n_77}),
        .O(NLW_p0__2_carry__2_O_UNCONNECTED[3:0]),
        .S({p0__2_carry__2_i_1_n_0,p0__2_carry__2_i_2_n_0,p0__2_carry__2_i_3_n_0,p0__2_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__2_i_1
       (.I0(p0__10_n_74),
        .I1(p0__7_n_91),
        .O(p0__2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__2_i_2
       (.I0(p0__10_n_75),
        .I1(p0__7_n_92),
        .O(p0__2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__2_i_3
       (.I0(p0__10_n_76),
        .I1(p0__7_n_93),
        .O(p0__2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__2_i_4
       (.I0(p0__10_n_77),
        .I1(p0__7_n_94),
        .O(p0__2_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__3
       (.CI(p0__2_carry__2_n_0),
        .CO({p0__2_carry__3_n_0,p0__2_carry__3_n_1,p0__2_carry__3_n_2,p0__2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_carry__3_i_1_n_0,p0__10_n_71,p0__10_n_72,p0__10_n_73}),
        .O(NLW_p0__2_carry__3_O_UNCONNECTED[3:0]),
        .S({p0__2_carry__3_i_2_n_0,p0__2_carry__3_i_3_n_0,p0__2_carry__3_i_4_n_0,p0__2_carry__3_i_5_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    p0__2_carry__3_i_1
       (.I0(p0__10_n_70),
        .I1(p0__4_n_104),
        .I2(p0__7_n_87),
        .O(p0__2_carry__3_i_1_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    p0__2_carry__3_i_2
       (.I0(p0__4_n_104),
        .I1(p0__7_n_87),
        .I2(p0__10_n_70),
        .I3(p0__7_n_88),
        .I4(p0__4_n_105),
        .O(p0__2_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    p0__2_carry__3_i_3
       (.I0(p0__4_n_105),
        .I1(p0__7_n_88),
        .I2(p0__10_n_71),
        .O(p0__2_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__3_i_4
       (.I0(p0__10_n_72),
        .I1(p0__7_n_89),
        .O(p0__2_carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__3_i_5
       (.I0(p0__10_n_73),
        .I1(p0__7_n_90),
        .O(p0__2_carry__3_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__4
       (.CI(p0__2_carry__3_n_0),
        .CO({p0__2_carry__4_n_0,p0__2_carry__4_n_1,p0__2_carry__4_n_2,p0__2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_carry__4_i_1_n_0,p0__2_carry__4_i_2_n_0,p0__2_carry__4_i_3_n_0,p0__2_carry__4_i_4_n_0}),
        .O(NLW_p0__2_carry__4_O_UNCONNECTED[3:0]),
        .S({p0__2_carry__4_i_5_n_0,p0__2_carry__4_i_6_n_0,p0__2_carry__4_i_7_n_0,p0__2_carry__4_i_8_n_0}));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__2_carry__4_i_1
       (.I0(p0__4_n_101),
        .I1(p0__7_n_84),
        .I2(p0__10_n_67),
        .O(p0__2_carry__4_i_1_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__2_carry__4_i_2
       (.I0(p0__4_n_102),
        .I1(p0__7_n_85),
        .I2(p0__10_n_68),
        .O(p0__2_carry__4_i_2_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__2_carry__4_i_3
       (.I0(p0__4_n_103),
        .I1(p0__7_n_86),
        .I2(p0__10_n_69),
        .O(p0__2_carry__4_i_3_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__2_carry__4_i_4
       (.I0(p0__4_n_104),
        .I1(p0__7_n_87),
        .I2(p0__10_n_70),
        .O(p0__2_carry__4_i_4_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__2_carry__4_i_5
       (.I0(p0__4_n_100),
        .I1(p0__7_n_83),
        .I2(p0__10_n_66),
        .I3(p0__2_carry__4_i_1_n_0),
        .O(p0__2_carry__4_i_5_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__2_carry__4_i_6
       (.I0(p0__4_n_101),
        .I1(p0__7_n_84),
        .I2(p0__10_n_67),
        .I3(p0__2_carry__4_i_2_n_0),
        .O(p0__2_carry__4_i_6_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__2_carry__4_i_7
       (.I0(p0__4_n_102),
        .I1(p0__7_n_85),
        .I2(p0__10_n_68),
        .I3(p0__2_carry__4_i_3_n_0),
        .O(p0__2_carry__4_i_7_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__2_carry__4_i_8
       (.I0(p0__4_n_103),
        .I1(p0__7_n_86),
        .I2(p0__10_n_69),
        .I3(p0__2_carry__4_i_4_n_0),
        .O(p0__2_carry__4_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__5
       (.CI(p0__2_carry__4_n_0),
        .CO({p0__2_carry__5_n_0,p0__2_carry__5_n_1,p0__2_carry__5_n_2,p0__2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_carry__5_i_1_n_0,p0__2_carry__5_i_2_n_0,p0__2_carry__5_i_3_n_0,p0__2_carry__5_i_4_n_0}),
        .O(NLW_p0__2_carry__5_O_UNCONNECTED[3:0]),
        .S({p0__2_carry__5_i_5_n_0,p0__2_carry__5_i_6_n_0,p0__2_carry__5_i_7_n_0,p0__2_carry__5_i_8_n_0}));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__2_carry__5_i_1
       (.I0(p0__4_n_97),
        .I1(p0__7_n_80),
        .I2(p0__10_n_63),
        .O(p0__2_carry__5_i_1_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__2_carry__5_i_2
       (.I0(p0__4_n_98),
        .I1(p0__7_n_81),
        .I2(p0__10_n_64),
        .O(p0__2_carry__5_i_2_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__2_carry__5_i_3
       (.I0(p0__4_n_99),
        .I1(p0__7_n_82),
        .I2(p0__10_n_65),
        .O(p0__2_carry__5_i_3_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__2_carry__5_i_4
       (.I0(p0__4_n_100),
        .I1(p0__7_n_83),
        .I2(p0__10_n_66),
        .O(p0__2_carry__5_i_4_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__2_carry__5_i_5
       (.I0(p0__4_n_96),
        .I1(p0__7_n_79),
        .I2(p0__10_n_62),
        .I3(p0__2_carry__5_i_1_n_0),
        .O(p0__2_carry__5_i_5_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__2_carry__5_i_6
       (.I0(p0__4_n_97),
        .I1(p0__7_n_80),
        .I2(p0__10_n_63),
        .I3(p0__2_carry__5_i_2_n_0),
        .O(p0__2_carry__5_i_6_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__2_carry__5_i_7
       (.I0(p0__4_n_98),
        .I1(p0__7_n_81),
        .I2(p0__10_n_64),
        .I3(p0__2_carry__5_i_3_n_0),
        .O(p0__2_carry__5_i_7_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__2_carry__5_i_8
       (.I0(p0__4_n_99),
        .I1(p0__7_n_82),
        .I2(p0__10_n_65),
        .I3(p0__2_carry__5_i_4_n_0),
        .O(p0__2_carry__5_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__6
       (.CI(p0__2_carry__5_n_0),
        .CO({p0__2_carry__6_n_0,p0__2_carry__6_n_1,p0__2_carry__6_n_2,p0__2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_carry__6_i_1_n_0,p0__2_carry__6_i_2_n_0,p0__2_carry__6_i_3_n_0,p0__2_carry__6_i_4_n_0}),
        .O(NLW_p0__2_carry__6_O_UNCONNECTED[3:0]),
        .S({p0__2_carry__6_i_5_n_0,p0__2_carry__6_i_6_n_0,p0__2_carry__6_i_7_n_0,p0__2_carry__6_i_8_n_0}));
  LUT3 #(
    .INIT(8'h96)) 
    p0__2_carry__6_i_1
       (.I0(p0__10_n_58),
        .I1(p0__7_n_75),
        .I2(p0__4_n_92),
        .O(p0__2_carry__6_i_1_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__2_carry__6_i_2
       (.I0(p0__4_n_94),
        .I1(p0__7_n_77),
        .I2(p0__10_n_60),
        .O(p0__2_carry__6_i_2_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__2_carry__6_i_3
       (.I0(p0__4_n_95),
        .I1(p0__7_n_78),
        .I2(p0__10_n_61),
        .O(p0__2_carry__6_i_3_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    p0__2_carry__6_i_4
       (.I0(p0__4_n_96),
        .I1(p0__7_n_79),
        .I2(p0__10_n_62),
        .O(p0__2_carry__6_i_4_n_0));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    p0__2_carry__6_i_5
       (.I0(p0__10_n_58),
        .I1(p0__7_n_75),
        .I2(p0__4_n_92),
        .I3(p0__10_n_59),
        .I4(p0__7_n_76),
        .I5(p0__4_n_93),
        .O(p0__2_carry__6_i_5_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    p0__2_carry__6_i_6
       (.I0(p0__2_carry__6_i_2_n_0),
        .I1(p0__7_n_76),
        .I2(p0__4_n_93),
        .I3(p0__10_n_59),
        .O(p0__2_carry__6_i_6_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__2_carry__6_i_7
       (.I0(p0__4_n_94),
        .I1(p0__7_n_77),
        .I2(p0__10_n_60),
        .I3(p0__2_carry__6_i_3_n_0),
        .O(p0__2_carry__6_i_7_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    p0__2_carry__6_i_8
       (.I0(p0__4_n_95),
        .I1(p0__7_n_78),
        .I2(p0__10_n_61),
        .I3(p0__2_carry__6_i_4_n_0),
        .O(p0__2_carry__6_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__7
       (.CI(p0__2_carry__6_n_0),
        .CO({p0__2_carry__7_n_0,p0__2_carry__7_n_1,p0__2_carry__7_n_2,p0__2_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_carry__7_i_1_n_0,p0__2_carry__7_i_2_n_0,p0__2_carry__7_i_3_n_0,p0__2_carry__7_i_4_n_0}),
        .O(NLW_p0__2_carry__7_O_UNCONNECTED[3:0]),
        .S({p0__2_carry__7_i_5_n_0,p0__2_carry__7_i_6_n_0,p0__2_carry__7_i_7_n_0,p0__2_carry__7_i_8_n_0}));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    p0__2_carry__7_i_1
       (.I0(p0__4_n_89),
        .I1(p0__7_n_72),
        .I2(p0__7_n_71),
        .I3(p0__4_n_88),
        .I4(p0__0_n_105),
        .O(p0__2_carry__7_i_1_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__7_i_2
       (.I0(p0__4_n_91),
        .I1(p0__7_n_74),
        .I2(p0__4_n_90),
        .I3(p0__7_n_73),
        .O(p0__2_carry__7_i_2_n_0));
  LUT4 #(
    .INIT(16'hE00E)) 
    p0__2_carry__7_i_3
       (.I0(p0__4_n_92),
        .I1(p0__7_n_75),
        .I2(p0__4_n_91),
        .I3(p0__7_n_74),
        .O(p0__2_carry__7_i_3_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    p0__2_carry__7_i_4
       (.I0(p0__4_n_92),
        .I1(p0__7_n_75),
        .I2(p0__10_n_58),
        .O(p0__2_carry__7_i_4_n_0));
  LUT6 #(
    .INIT(64'h9666966696666669)) 
    p0__2_carry__7_i_5
       (.I0(p0__2_carry__7_i_9_n_0),
        .I1(p0__7_n_71),
        .I2(p0__7_n_72),
        .I3(p0__4_n_89),
        .I4(p0__7_n_73),
        .I5(p0__4_n_90),
        .O(p0__2_carry__7_i_5_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__7_i_6
       (.I0(p0__7_n_74),
        .I1(p0__4_n_91),
        .I2(p0__7_n_72),
        .I3(p0__4_n_89),
        .I4(p0__7_n_73),
        .I5(p0__4_n_90),
        .O(p0__2_carry__7_i_6_n_0));
  LUT6 #(
    .INIT(64'hE11E0FF00FF01EE1)) 
    p0__2_carry__7_i_7
       (.I0(p0__7_n_75),
        .I1(p0__4_n_92),
        .I2(p0__7_n_73),
        .I3(p0__4_n_90),
        .I4(p0__7_n_74),
        .I5(p0__4_n_91),
        .O(p0__2_carry__7_i_7_n_0));
  LUT5 #(
    .INIT(32'h693C3C96)) 
    p0__2_carry__7_i_8
       (.I0(p0__10_n_58),
        .I1(p0__7_n_74),
        .I2(p0__4_n_91),
        .I3(p0__7_n_75),
        .I4(p0__4_n_92),
        .O(p0__2_carry__7_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry__7_i_9
       (.I0(p0__4_n_88),
        .I1(p0__0_n_105),
        .O(p0__2_carry__7_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__8
       (.CI(p0__2_carry__7_n_0),
        .CO({p0__2_carry__8_n_0,p0__2_carry__8_n_1,p0__2_carry__8_n_2,p0__2_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_carry__8_i_1_n_0,p0__2_carry__8_i_2_n_0,p0__2_carry__8_i_3_n_0,p0__2_carry__8_i_4_n_0}),
        .O(NLW_p0__2_carry__8_O_UNCONNECTED[3:0]),
        .S({p0__2_carry__8_i_5_n_0,p0__2_carry__8_i_6_n_0,p0__2_carry__8_i_7_n_0,p0__2_carry__8_i_8_n_0}));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    p0__2_carry__8_i_1
       (.I0(p0__0_n_102),
        .I1(p0__4_n_85),
        .I2(p0__7_n_68),
        .I3(p0__0_n_103),
        .I4(p0__4_n_86),
        .O(p0__2_carry__8_i_1_n_0));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    p0__2_carry__8_i_2
       (.I0(p0__0_n_103),
        .I1(p0__4_n_86),
        .I2(p0__7_n_69),
        .I3(p0__0_n_104),
        .I4(p0__4_n_87),
        .O(p0__2_carry__8_i_2_n_0));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    p0__2_carry__8_i_3
       (.I0(p0__0_n_104),
        .I1(p0__4_n_87),
        .I2(p0__7_n_70),
        .I3(p0__0_n_105),
        .I4(p0__4_n_88),
        .O(p0__2_carry__8_i_3_n_0));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    p0__2_carry__8_i_4
       (.I0(p0__0_n_105),
        .I1(p0__4_n_88),
        .I2(p0__7_n_71),
        .I3(p0__4_n_89),
        .I4(p0__7_n_72),
        .O(p0__2_carry__8_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    p0__2_carry__8_i_5
       (.I0(p0__2_carry__8_i_1_n_0),
        .I1(p0__0_n_101),
        .I2(p0__4_n_84),
        .I3(p0__7_n_67),
        .I4(p0__4_n_85),
        .I5(p0__0_n_102),
        .O(p0__2_carry__8_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    p0__2_carry__8_i_6
       (.I0(p0__2_carry__8_i_2_n_0),
        .I1(p0__0_n_102),
        .I2(p0__4_n_85),
        .I3(p0__7_n_68),
        .I4(p0__4_n_86),
        .I5(p0__0_n_103),
        .O(p0__2_carry__8_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    p0__2_carry__8_i_7
       (.I0(p0__2_carry__8_i_3_n_0),
        .I1(p0__0_n_103),
        .I2(p0__4_n_86),
        .I3(p0__7_n_69),
        .I4(p0__4_n_87),
        .I5(p0__0_n_104),
        .O(p0__2_carry__8_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    p0__2_carry__8_i_8
       (.I0(p0__2_carry__8_i_4_n_0),
        .I1(p0__0_n_104),
        .I2(p0__4_n_87),
        .I3(p0__7_n_70),
        .I4(p0__4_n_88),
        .I5(p0__0_n_105),
        .O(p0__2_carry__8_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 p0__2_carry__9
       (.CI(p0__2_carry__8_n_0),
        .CO({p0__2_carry__9_n_0,p0__2_carry__9_n_1,p0__2_carry__9_n_2,p0__2_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI({p0__2_carry__9_i_1_n_0,p0__2_carry__9_i_2_n_0,p0__2_carry__9_i_3_n_0,p0__2_carry__9_i_4_n_0}),
        .O(NLW_p0__2_carry__9_O_UNCONNECTED[3:0]),
        .S({p0__2_carry__9_i_5_n_0,p0__2_carry__9_i_6_n_0,p0__2_carry__9_i_7_n_0,p0__2_carry__9_i_8_n_0}));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    p0__2_carry__9_i_1
       (.I0(p0__0_n_98),
        .I1(p0__4_n_81),
        .I2(p0__7_n_64),
        .I3(p0__0_n_99),
        .I4(p0__4_n_82),
        .O(p0__2_carry__9_i_1_n_0));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    p0__2_carry__9_i_2
       (.I0(p0__0_n_99),
        .I1(p0__4_n_82),
        .I2(p0__7_n_65),
        .I3(p0__0_n_100),
        .I4(p0__4_n_83),
        .O(p0__2_carry__9_i_2_n_0));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    p0__2_carry__9_i_3
       (.I0(p0__0_n_100),
        .I1(p0__4_n_83),
        .I2(p0__7_n_66),
        .I3(p0__0_n_101),
        .I4(p0__4_n_84),
        .O(p0__2_carry__9_i_3_n_0));
  LUT5 #(
    .INIT(32'hF9F9F990)) 
    p0__2_carry__9_i_4
       (.I0(p0__0_n_101),
        .I1(p0__4_n_84),
        .I2(p0__7_n_67),
        .I3(p0__0_n_102),
        .I4(p0__4_n_85),
        .O(p0__2_carry__9_i_4_n_0));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    p0__2_carry__9_i_5
       (.I0(p0__2_carry__9_i_1_n_0),
        .I1(p0__0_n_97),
        .I2(p0__4_n_80),
        .I3(p0__7_n_63),
        .I4(p0__4_n_81),
        .I5(p0__0_n_98),
        .O(p0__2_carry__9_i_5_n_0));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    p0__2_carry__9_i_6
       (.I0(p0__2_carry__9_i_2_n_0),
        .I1(p0__0_n_98),
        .I2(p0__4_n_81),
        .I3(p0__7_n_64),
        .I4(p0__4_n_82),
        .I5(p0__0_n_99),
        .O(p0__2_carry__9_i_6_n_0));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    p0__2_carry__9_i_7
       (.I0(p0__2_carry__9_i_3_n_0),
        .I1(p0__0_n_99),
        .I2(p0__4_n_82),
        .I3(p0__7_n_65),
        .I4(p0__4_n_83),
        .I5(p0__0_n_100),
        .O(p0__2_carry__9_i_7_n_0));
  LUT6 #(
    .INIT(64'h6996699669969669)) 
    p0__2_carry__9_i_8
       (.I0(p0__2_carry__9_i_4_n_0),
        .I1(p0__0_n_100),
        .I2(p0__4_n_83),
        .I3(p0__7_n_66),
        .I4(p0__4_n_84),
        .I5(p0__0_n_101),
        .O(p0__2_carry__9_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry_i_1
       (.I0(p0__10_n_86),
        .I1(p0__7_n_103),
        .O(p0__2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry_i_2
       (.I0(p0__10_n_87),
        .I1(p0__7_n_104),
        .O(p0__2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    p0__2_carry_i_3
       (.I0(p0__10_n_88),
        .I1(p0__7_n_105),
        .O(p0__2_carry_i_3_n_0));
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
    p0__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fp_in[50:34]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
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
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__3_OVERFLOW_UNCONNECTED),
        .P({p0__3_n_58,p0__3_n_59,p0__3_n_60,p0__3_n_61,p0__3_n_62,p0__3_n_63,p0__3_n_64,p0__3_n_65,p0__3_n_66,p0__3_n_67,p0__3_n_68,p0__3_n_69,p0__3_n_70,p0__3_n_71,p0__3_n_72,p0__3_n_73,p0__3_n_74,p0__3_n_75,p0__3_n_76,p0__3_n_77,p0__3_n_78,p0__3_n_79,p0__3_n_80,p0__3_n_81,p0__3_n_82,p0__3_n_83,p0__3_n_84,p0__3_n_85,p0__3_n_86,p0__3_n_87,p0__3_n_88,p0__3_n_89,p0__3_n_90,p0__3_n_91,p0__3_n_92,p0__3_n_93,p0__3_n_94,p0__3_n_95,p0__3_n_96,p0__3_n_97,p0__3_n_98,p0__3_n_99,p0__3_n_100,p0__3_n_101,p0__3_n_102,p0__3_n_103,p0__3_n_104,p0__3_n_105}),
        .PATTERNBDETECT(NLW_p0__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__2_n_106,p0__2_n_107,p0__2_n_108,p0__2_n_109,p0__2_n_110,p0__2_n_111,p0__2_n_112,p0__2_n_113,p0__2_n_114,p0__2_n_115,p0__2_n_116,p0__2_n_117,p0__2_n_118,p0__2_n_119,p0__2_n_120,p0__2_n_121,p0__2_n_122,p0__2_n_123,p0__2_n_124,p0__2_n_125,p0__2_n_126,p0__2_n_127,p0__2_n_128,p0__2_n_129,p0__2_n_130,p0__2_n_131,p0__2_n_132,p0__2_n_133,p0__2_n_134,p0__2_n_135,p0__2_n_136,p0__2_n_137,p0__2_n_138,p0__2_n_139,p0__2_n_140,p0__2_n_141,p0__2_n_142,p0__2_n_143,p0__2_n_144,p0__2_n_145,p0__2_n_146,p0__2_n_147,p0__2_n_148,p0__2_n_149,p0__2_n_150,p0__2_n_151,p0__2_n_152,p0__2_n_153}),
        .PCOUT({p0__3_n_106,p0__3_n_107,p0__3_n_108,p0__3_n_109,p0__3_n_110,p0__3_n_111,p0__3_n_112,p0__3_n_113,p0__3_n_114,p0__3_n_115,p0__3_n_116,p0__3_n_117,p0__3_n_118,p0__3_n_119,p0__3_n_120,p0__3_n_121,p0__3_n_122,p0__3_n_123,p0__3_n_124,p0__3_n_125,p0__3_n_126,p0__3_n_127,p0__3_n_128,p0__3_n_129,p0__3_n_130,p0__3_n_131,p0__3_n_132,p0__3_n_133,p0__3_n_134,p0__3_n_135,p0__3_n_136,p0__3_n_137,p0__3_n_138,p0__3_n_139,p0__3_n_140,p0__3_n_141,p0__3_n_142,p0__3_n_143,p0__3_n_144,p0__3_n_145,p0__3_n_146,p0__3_n_147,p0__3_n_148,p0__3_n_149,p0__3_n_150,p0__3_n_151,p0__3_n_152,p0__3_n_153}),
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
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 13x18 12}}" *) 
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__4_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({fp_in[63],fp_in[63],fp_in[63],fp_in[63],fp_in[63],fp_in[63:51]}),
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
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__4_OVERFLOW_UNCONNECTED),
        .P({p0__4_n_58,p0__4_n_59,p0__4_n_60,p0__4_n_61,p0__4_n_62,p0__4_n_63,p0__4_n_64,p0__4_n_65,p0__4_n_66,p0__4_n_67,p0__4_n_68,p0__4_n_69,p0__4_n_70,p0__4_n_71,p0__4_n_72,p0__4_n_73,p0__4_n_74,p0__4_n_75,p0__4_n_76,p0__4_n_77,p0__4_n_78,p0__4_n_79,p0__4_n_80,p0__4_n_81,p0__4_n_82,p0__4_n_83,p0__4_n_84,p0__4_n_85,p0__4_n_86,p0__4_n_87,p0__4_n_88,p0__4_n_89,p0__4_n_90,p0__4_n_91,p0__4_n_92,p0__4_n_93,p0__4_n_94,p0__4_n_95,p0__4_n_96,p0__4_n_97,p0__4_n_98,p0__4_n_99,p0__4_n_100,p0__4_n_101,p0__4_n_102,p0__4_n_103,p0__4_n_104,p0__4_n_105}),
        .PATTERNBDETECT(NLW_p0__4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__4_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__3_n_106,p0__3_n_107,p0__3_n_108,p0__3_n_109,p0__3_n_110,p0__3_n_111,p0__3_n_112,p0__3_n_113,p0__3_n_114,p0__3_n_115,p0__3_n_116,p0__3_n_117,p0__3_n_118,p0__3_n_119,p0__3_n_120,p0__3_n_121,p0__3_n_122,p0__3_n_123,p0__3_n_124,p0__3_n_125,p0__3_n_126,p0__3_n_127,p0__3_n_128,p0__3_n_129,p0__3_n_130,p0__3_n_131,p0__3_n_132,p0__3_n_133,p0__3_n_134,p0__3_n_135,p0__3_n_136,p0__3_n_137,p0__3_n_138,p0__3_n_139,p0__3_n_140,p0__3_n_141,p0__3_n_142,p0__3_n_143,p0__3_n_144,p0__3_n_145,p0__3_n_146,p0__3_n_147,p0__3_n_148,p0__3_n_149,p0__3_n_150,p0__3_n_151,p0__3_n_152,p0__3_n_153}),
        .PCOUT(NLW_p0__4_PCOUT_UNCONNECTED[47:0]),
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
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x25 12}}" *) 
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
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__5_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,fp_in[16:0]}),
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
    p0__6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fp_in[33:17]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
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
        .PCOUT({p0__6_n_106,p0__6_n_107,p0__6_n_108,p0__6_n_109,p0__6_n_110,p0__6_n_111,p0__6_n_112,p0__6_n_113,p0__6_n_114,p0__6_n_115,p0__6_n_116,p0__6_n_117,p0__6_n_118,p0__6_n_119,p0__6_n_120,p0__6_n_121,p0__6_n_122,p0__6_n_123,p0__6_n_124,p0__6_n_125,p0__6_n_126,p0__6_n_127,p0__6_n_128,p0__6_n_129,p0__6_n_130,p0__6_n_131,p0__6_n_132,p0__6_n_133,p0__6_n_134,p0__6_n_135,p0__6_n_136,p0__6_n_137,p0__6_n_138,p0__6_n_139,p0__6_n_140,p0__6_n_141,p0__6_n_142,p0__6_n_143,p0__6_n_144,p0__6_n_145,p0__6_n_146,p0__6_n_147,p0__6_n_148,p0__6_n_149,p0__6_n_150,p0__6_n_151,p0__6_n_152,p0__6_n_153}),
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
    p0__7
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fp_in[50:34]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__7_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0}),
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
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__7_OVERFLOW_UNCONNECTED),
        .P({p0__7_n_58,p0__7_n_59,p0__7_n_60,p0__7_n_61,p0__7_n_62,p0__7_n_63,p0__7_n_64,p0__7_n_65,p0__7_n_66,p0__7_n_67,p0__7_n_68,p0__7_n_69,p0__7_n_70,p0__7_n_71,p0__7_n_72,p0__7_n_73,p0__7_n_74,p0__7_n_75,p0__7_n_76,p0__7_n_77,p0__7_n_78,p0__7_n_79,p0__7_n_80,p0__7_n_81,p0__7_n_82,p0__7_n_83,p0__7_n_84,p0__7_n_85,p0__7_n_86,p0__7_n_87,p0__7_n_88,p0__7_n_89,p0__7_n_90,p0__7_n_91,p0__7_n_92,p0__7_n_93,p0__7_n_94,p0__7_n_95,p0__7_n_96,p0__7_n_97,p0__7_n_98,p0__7_n_99,p0__7_n_100,p0__7_n_101,p0__7_n_102,p0__7_n_103,p0__7_n_104,p0__7_n_105}),
        .PATTERNBDETECT(NLW_p0__7_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__7_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__6_n_106,p0__6_n_107,p0__6_n_108,p0__6_n_109,p0__6_n_110,p0__6_n_111,p0__6_n_112,p0__6_n_113,p0__6_n_114,p0__6_n_115,p0__6_n_116,p0__6_n_117,p0__6_n_118,p0__6_n_119,p0__6_n_120,p0__6_n_121,p0__6_n_122,p0__6_n_123,p0__6_n_124,p0__6_n_125,p0__6_n_126,p0__6_n_127,p0__6_n_128,p0__6_n_129,p0__6_n_130,p0__6_n_131,p0__6_n_132,p0__6_n_133,p0__6_n_134,p0__6_n_135,p0__6_n_136,p0__6_n_137,p0__6_n_138,p0__6_n_139,p0__6_n_140,p0__6_n_141,p0__6_n_142,p0__6_n_143,p0__6_n_144,p0__6_n_145,p0__6_n_146,p0__6_n_147,p0__6_n_148,p0__6_n_149,p0__6_n_150,p0__6_n_151,p0__6_n_152,p0__6_n_153}),
        .PCOUT(NLW_p0__7_PCOUT_UNCONNECTED[47:0]),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fp_in[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__8_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0}),
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
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__8_OVERFLOW_UNCONNECTED),
        .P({p0__8_n_58,p0__8_n_59,p0__8_n_60,p0__8_n_61,p0__8_n_62,p0__8_n_63,p0__8_n_64,p0__8_n_65,p0__8_n_66,p0__8_n_67,p0__8_n_68,p0__8_n_69,p0__8_n_70,p0__8_n_71,p0__8_n_72,p0__8_n_73,p0__8_n_74,p0__8_n_75,p0__8_n_76,p0__8_n_77,p0__8_n_78,p0__8_n_79,p0__8_n_80,p0__8_n_81,p0__8_n_82,p0__8_n_83,p0__8_n_84,p0__8_n_85,p0__8_n_86,p0__8_n_87,p0__8_n_88,p0__8_n_89,p0__8_n_90,p0__8_n_91,p0__8_n_92,p0__8_n_93,p0__8_n_94,p0__8_n_95,p0__8_n_96,p0__8_n_97,p0__8_n_98,p0__8_n_99,p0__8_n_100,p0__8_n_101,p0__8_n_102,p0__8_n_103,p0__8_n_104,p0__8_n_105}),
        .PATTERNBDETECT(NLW_p0__8_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__8_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({p0__8_n_106,p0__8_n_107,p0__8_n_108,p0__8_n_109,p0__8_n_110,p0__8_n_111,p0__8_n_112,p0__8_n_113,p0__8_n_114,p0__8_n_115,p0__8_n_116,p0__8_n_117,p0__8_n_118,p0__8_n_119,p0__8_n_120,p0__8_n_121,p0__8_n_122,p0__8_n_123,p0__8_n_124,p0__8_n_125,p0__8_n_126,p0__8_n_127,p0__8_n_128,p0__8_n_129,p0__8_n_130,p0__8_n_131,p0__8_n_132,p0__8_n_133,p0__8_n_134,p0__8_n_135,p0__8_n_136,p0__8_n_137,p0__8_n_138,p0__8_n_139,p0__8_n_140,p0__8_n_141,p0__8_n_142,p0__8_n_143,p0__8_n_144,p0__8_n_145,p0__8_n_146,p0__8_n_147,p0__8_n_148,p0__8_n_149,p0__8_n_150,p0__8_n_151,p0__8_n_152,p0__8_n_153}),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fp_in[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p0__9_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0}),
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
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p0__9_OVERFLOW_UNCONNECTED),
        .P({p0__9_n_58,p0__9_n_59,p0__9_n_60,p0__9_n_61,p0__9_n_62,p0__9_n_63,p0__9_n_64,p0__9_n_65,p0__9_n_66,p0__9_n_67,p0__9_n_68,p0__9_n_69,p0__9_n_70,p0__9_n_71,p0__9_n_72,p0__9_n_73,p0__9_n_74,p0__9_n_75,p0__9_n_76,p0__9_n_77,p0__9_n_78,p0__9_n_79,p0__9_n_80,p0__9_n_81,p0__9_n_82,p0__9_n_83,p0__9_n_84,p0__9_n_85,p0__9_n_86,p0__9_n_87,p0__9_n_88,p0__9_n_89,p0__9_n_90,p0__9_n_91,p0__9_n_92,p0__9_n_93,p0__9_n_94,p0__9_n_95,p0__9_n_96,p0__9_n_97,p0__9_n_98,p0__9_n_99,p0__9_n_100,p0__9_n_101,p0__9_n_102,p0__9_n_103,p0__9_n_104,p0__9_n_105}),
        .PATTERNBDETECT(NLW_p0__9_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p0__9_PATTERNDETECT_UNCONNECTED),
        .PCIN({p0__8_n_106,p0__8_n_107,p0__8_n_108,p0__8_n_109,p0__8_n_110,p0__8_n_111,p0__8_n_112,p0__8_n_113,p0__8_n_114,p0__8_n_115,p0__8_n_116,p0__8_n_117,p0__8_n_118,p0__8_n_119,p0__8_n_120,p0__8_n_121,p0__8_n_122,p0__8_n_123,p0__8_n_124,p0__8_n_125,p0__8_n_126,p0__8_n_127,p0__8_n_128,p0__8_n_129,p0__8_n_130,p0__8_n_131,p0__8_n_132,p0__8_n_133,p0__8_n_134,p0__8_n_135,p0__8_n_136,p0__8_n_137,p0__8_n_138,p0__8_n_139,p0__8_n_140,p0__8_n_141,p0__8_n_142,p0__8_n_143,p0__8_n_144,p0__8_n_145,p0__8_n_146,p0__8_n_147,p0__8_n_148,p0__8_n_149,p0__8_n_150,p0__8_n_151,p0__8_n_152,p0__8_n_153}),
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
