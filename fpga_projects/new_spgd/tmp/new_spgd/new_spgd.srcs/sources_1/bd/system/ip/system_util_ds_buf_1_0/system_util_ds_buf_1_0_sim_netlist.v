// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Jun  9 10:27:41 2022
// Host        : turing running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/taylor/Documents/new_spgd/tmp/new_spgd/new_spgd.srcs/sources_1/bd/system/ip/system_util_ds_buf_1_0/system_util_ds_buf_1_0_sim_netlist.v
// Design      : system_util_ds_buf_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_util_ds_buf_1_0,util_ds_buf,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "util_ds_buf,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module system_util_ds_buf_1_0
   (IBUF_DS_P,
    IBUF_DS_N,
    IBUF_OUT);
  (* x_interface_info = "xilinx.com:interface:diff_clock:1.0 CLK_IN_D CLK_P" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK_IN_D, BOARD.ASSOCIATED_PARAM DIFF_CLK_IN_BOARD_INTERFACE, CAN_DEBUG false, FREQ_HZ 100000000" *) input [5:0]IBUF_DS_P;
  (* x_interface_info = "xilinx.com:interface:diff_clock:1.0 CLK_IN_D CLK_N" *) input [5:0]IBUF_DS_N;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 IBUF_OUT CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME IBUF_OUT, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_util_ds_buf_1_0_IBUF_OUT, INSERT_VIP 0" *) output [5:0]IBUF_OUT;

  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire [5:0]IBUF_DS_N;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire [5:0]IBUF_DS_P;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) wire [5:0]IBUF_OUT;
  wire [5:0]NLW_U0_BUFGCE_O_UNCONNECTED;
  wire [5:0]NLW_U0_BUFG_FABRIC_O_UNCONNECTED;
  wire [5:0]NLW_U0_BUFG_GT_O_UNCONNECTED;
  wire [5:0]NLW_U0_BUFG_O_UNCONNECTED;
  wire [5:0]NLW_U0_BUFHCE_O_UNCONNECTED;
  wire [5:0]NLW_U0_BUFH_O_UNCONNECTED;
  wire [5:0]NLW_U0_IBUFDS_GTME5_O_UNCONNECTED;
  wire [5:0]NLW_U0_IBUFDS_GTME5_ODIV2_UNCONNECTED;
  wire [5:0]NLW_U0_IBUFDS_GTM_O_UNCONNECTED;
  wire [5:0]NLW_U0_IBUFDS_GTM_ODIV2_UNCONNECTED;
  wire [5:0]NLW_U0_IBUF_DS_ODIV2_UNCONNECTED;
  wire [5:0]NLW_U0_IOBUF_DS_N_UNCONNECTED;
  wire [5:0]NLW_U0_IOBUF_DS_P_UNCONNECTED;
  wire [5:0]NLW_U0_IOBUF_IO_IO_UNCONNECTED;
  wire [5:0]NLW_U0_IOBUF_IO_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE3_ADV_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE3_ADV_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE3_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE3_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE4_ADV_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE4_ADV_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE4_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE4_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE5_ADV_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE5_ADV_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE5_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTE5_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTME5_ADV_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTME5_ADV_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTME5_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTME5_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTM_ADV_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTM_ADV_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTM_O_UNCONNECTED;
  wire [5:0]NLW_U0_OBUFDS_GTM_OB_UNCONNECTED;
  wire [5:0]NLW_U0_OBUF_DS_N_UNCONNECTED;
  wire [5:0]NLW_U0_OBUF_DS_P_UNCONNECTED;

  (* C_BUFGCE_DIV = "1" *) 
  (* C_BUFG_GT_SYNC = "0" *) 
  (* C_BUF_TYPE = "IBUFDS" *) 
  (* C_OBUFDS_GTE5_ADV = "2'b00" *) 
  (* C_REFCLK_ICNTL_TX = "5'b00000" *) 
  (* C_SIM_DEVICE = "VERSAL_AI_CORE_ES1" *) 
  (* C_SIZE = "6" *) 
  system_util_ds_buf_1_0_util_ds_buf U0
       (.BUFGCE_CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFGCE_CLR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFGCE_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFGCE_O(NLW_U0_BUFGCE_O_UNCONNECTED[5:0]),
        .BUFG_FABRIC_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_FABRIC_O(NLW_U0_BUFG_FABRIC_O_UNCONNECTED[5:0]),
        .BUFG_GT_CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_CEMASK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_CLR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_CLRMASK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_DIV({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_GT_O(NLW_U0_BUFG_GT_O_UNCONNECTED[5:0]),
        .BUFG_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFG_O(NLW_U0_BUFG_O_UNCONNECTED[5:0]),
        .BUFHCE_CE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFHCE_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFHCE_O(NLW_U0_BUFHCE_O_UNCONNECTED[5:0]),
        .BUFH_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BUFH_O(NLW_U0_BUFH_O_UNCONNECTED[5:0]),
        .IBUFDS_GTME5_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUFDS_GTME5_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUFDS_GTME5_IB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUFDS_GTME5_O(NLW_U0_IBUFDS_GTME5_O_UNCONNECTED[5:0]),
        .IBUFDS_GTME5_ODIV2(NLW_U0_IBUFDS_GTME5_ODIV2_UNCONNECTED[5:0]),
        .IBUFDS_GTM_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUFDS_GTM_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUFDS_GTM_IB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUFDS_GTM_O(NLW_U0_IBUFDS_GTM_O_UNCONNECTED[5:0]),
        .IBUFDS_GTM_ODIV2(NLW_U0_IBUFDS_GTM_ODIV2_UNCONNECTED[5:0]),
        .IBUF_DS_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IBUF_DS_N(IBUF_DS_N),
        .IBUF_DS_ODIV2(NLW_U0_IBUF_DS_ODIV2_UNCONNECTED[5:0]),
        .IBUF_DS_P(IBUF_DS_P),
        .IBUF_OUT(IBUF_OUT),
        .IOBUF_DS_N(NLW_U0_IOBUF_DS_N_UNCONNECTED[5:0]),
        .IOBUF_DS_P(NLW_U0_IOBUF_DS_P_UNCONNECTED[5:0]),
        .IOBUF_IO_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IOBUF_IO_IO(NLW_U0_IOBUF_IO_IO_UNCONNECTED[5:0]),
        .IOBUF_IO_O(NLW_U0_IOBUF_IO_O_UNCONNECTED[5:0]),
        .IOBUF_IO_T({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE3_ADV_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE3_ADV_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE3_ADV_O(NLW_U0_OBUFDS_GTE3_ADV_O_UNCONNECTED[5:0]),
        .OBUFDS_GTE3_ADV_OB(NLW_U0_OBUFDS_GTE3_ADV_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTE3_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE3_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE3_O(NLW_U0_OBUFDS_GTE3_O_UNCONNECTED[5:0]),
        .OBUFDS_GTE3_OB(NLW_U0_OBUFDS_GTE3_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTE4_ADV_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE4_ADV_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE4_ADV_O(NLW_U0_OBUFDS_GTE4_ADV_O_UNCONNECTED[5:0]),
        .OBUFDS_GTE4_ADV_OB(NLW_U0_OBUFDS_GTE4_ADV_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTE4_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE4_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE4_O(NLW_U0_OBUFDS_GTE4_O_UNCONNECTED[5:0]),
        .OBUFDS_GTE4_OB(NLW_U0_OBUFDS_GTE4_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTE5_ADV_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE5_ADV_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE5_ADV_O(NLW_U0_OBUFDS_GTE5_ADV_O_UNCONNECTED[5:0]),
        .OBUFDS_GTE5_ADV_OB(NLW_U0_OBUFDS_GTE5_ADV_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTE5_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE5_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTE5_O(NLW_U0_OBUFDS_GTE5_O_UNCONNECTED[5:0]),
        .OBUFDS_GTE5_OB(NLW_U0_OBUFDS_GTE5_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTME5_ADV_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTME5_ADV_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTME5_ADV_O(NLW_U0_OBUFDS_GTME5_ADV_O_UNCONNECTED[5:0]),
        .OBUFDS_GTME5_ADV_OB(NLW_U0_OBUFDS_GTME5_ADV_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTME5_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTME5_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTME5_O(NLW_U0_OBUFDS_GTME5_O_UNCONNECTED[5:0]),
        .OBUFDS_GTME5_OB(NLW_U0_OBUFDS_GTME5_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTM_ADV_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTM_ADV_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTM_ADV_O(NLW_U0_OBUFDS_GTM_ADV_O_UNCONNECTED[5:0]),
        .OBUFDS_GTM_ADV_OB(NLW_U0_OBUFDS_GTM_ADV_OB_UNCONNECTED[5:0]),
        .OBUFDS_GTM_CEB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTM_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OBUFDS_GTM_O(NLW_U0_OBUFDS_GTM_O_UNCONNECTED[5:0]),
        .OBUFDS_GTM_OB(NLW_U0_OBUFDS_GTM_OB_UNCONNECTED[5:0]),
        .OBUF_DS_N(NLW_U0_OBUF_DS_N_UNCONNECTED[5:0]),
        .OBUF_DS_P(NLW_U0_OBUF_DS_P_UNCONNECTED[5:0]),
        .OBUF_IN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXRECCLK_SEL_GTE3_ADV({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXRECCLK_SEL_GTE4_ADV({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* C_BUFGCE_DIV = "1" *) (* C_BUFG_GT_SYNC = "0" *) (* C_BUF_TYPE = "IBUFDS" *) 
(* C_OBUFDS_GTE5_ADV = "2'b00" *) (* C_REFCLK_ICNTL_TX = "5'b00000" *) (* C_SIM_DEVICE = "VERSAL_AI_CORE_ES1" *) 
(* C_SIZE = "6" *) (* ORIG_REF_NAME = "util_ds_buf" *) 
module system_util_ds_buf_1_0_util_ds_buf
   (IBUF_DS_P,
    IBUF_DS_N,
    IBUF_OUT,
    IBUF_DS_ODIV2,
    IBUF_DS_CEB,
    OBUF_IN,
    OBUF_DS_P,
    OBUF_DS_N,
    IOBUF_DS_P,
    IOBUF_DS_N,
    IOBUF_IO_T,
    IOBUF_IO_I,
    IOBUF_IO_O,
    IOBUF_IO_IO,
    BUFG_I,
    BUFG_O,
    BUFGCE_I,
    BUFGCE_CE,
    BUFGCE_O,
    BUFGCE_CLR,
    BUFH_I,
    BUFH_O,
    BUFHCE_I,
    BUFHCE_CE,
    BUFHCE_O,
    BUFG_FABRIC_I,
    BUFG_FABRIC_O,
    OBUFDS_GTE5_CEB,
    OBUFDS_GTE5_I,
    OBUFDS_GTE5_O,
    OBUFDS_GTE5_OB,
    OBUFDS_GTE5_ADV_CEB,
    OBUFDS_GTE5_ADV_I,
    OBUFDS_GTE5_ADV_O,
    OBUFDS_GTE5_ADV_OB,
    OBUFDS_GTE3_CEB,
    OBUFDS_GTE3_I,
    OBUFDS_GTE3_O,
    OBUFDS_GTE3_OB,
    OBUFDS_GTE3_ADV_CEB,
    OBUFDS_GTE3_ADV_I,
    OBUFDS_GTE3_ADV_O,
    OBUFDS_GTE3_ADV_OB,
    RXRECCLK_SEL_GTE3_ADV,
    OBUFDS_GTE4_CEB,
    OBUFDS_GTE4_I,
    OBUFDS_GTE4_O,
    OBUFDS_GTE4_OB,
    OBUFDS_GTE4_ADV_CEB,
    OBUFDS_GTE4_ADV_I,
    OBUFDS_GTE4_ADV_O,
    OBUFDS_GTE4_ADV_OB,
    RXRECCLK_SEL_GTE4_ADV,
    IBUFDS_GTM_O,
    IBUFDS_GTM_ODIV2,
    IBUFDS_GTM_CEB,
    IBUFDS_GTM_I,
    IBUFDS_GTM_IB,
    OBUFDS_GTM_O,
    OBUFDS_GTM_OB,
    OBUFDS_GTM_CEB,
    OBUFDS_GTM_I,
    OBUFDS_GTM_ADV_CEB,
    OBUFDS_GTM_ADV_I,
    OBUFDS_GTM_ADV_O,
    OBUFDS_GTM_ADV_OB,
    IBUFDS_GTME5_O,
    IBUFDS_GTME5_ODIV2,
    IBUFDS_GTME5_CEB,
    IBUFDS_GTME5_I,
    IBUFDS_GTME5_IB,
    OBUFDS_GTME5_CEB,
    OBUFDS_GTME5_I,
    OBUFDS_GTME5_O,
    OBUFDS_GTME5_OB,
    OBUFDS_GTME5_ADV_CEB,
    OBUFDS_GTME5_ADV_I,
    OBUFDS_GTME5_ADV_O,
    OBUFDS_GTME5_ADV_OB,
    BUFG_GT_I,
    BUFG_GT_CE,
    BUFG_GT_CEMASK,
    BUFG_GT_CLR,
    BUFG_GT_CLRMASK,
    BUFG_GT_DIV,
    BUFG_GT_O);
  input [5:0]IBUF_DS_P;
  input [5:0]IBUF_DS_N;
  output [5:0]IBUF_OUT;
  output [5:0]IBUF_DS_ODIV2;
  input [5:0]IBUF_DS_CEB;
  input [5:0]OBUF_IN;
  output [5:0]OBUF_DS_P;
  output [5:0]OBUF_DS_N;
  inout [5:0]IOBUF_DS_P;
  inout [5:0]IOBUF_DS_N;
  input [5:0]IOBUF_IO_T;
  input [5:0]IOBUF_IO_I;
  output [5:0]IOBUF_IO_O;
  inout [5:0]IOBUF_IO_IO;
  input [5:0]BUFG_I;
  output [5:0]BUFG_O;
  input [5:0]BUFGCE_I;
  input [5:0]BUFGCE_CE;
  output [5:0]BUFGCE_O;
  input [5:0]BUFGCE_CLR;
  input [5:0]BUFH_I;
  output [5:0]BUFH_O;
  input [5:0]BUFHCE_I;
  input [5:0]BUFHCE_CE;
  output [5:0]BUFHCE_O;
  input [5:0]BUFG_FABRIC_I;
  output [5:0]BUFG_FABRIC_O;
  input [5:0]OBUFDS_GTE5_CEB;
  input [5:0]OBUFDS_GTE5_I;
  output [5:0]OBUFDS_GTE5_O;
  output [5:0]OBUFDS_GTE5_OB;
  input [5:0]OBUFDS_GTE5_ADV_CEB;
  input [23:0]OBUFDS_GTE5_ADV_I;
  output [5:0]OBUFDS_GTE5_ADV_O;
  output [5:0]OBUFDS_GTE5_ADV_OB;
  input [5:0]OBUFDS_GTE3_CEB;
  input [5:0]OBUFDS_GTE3_I;
  output [5:0]OBUFDS_GTE3_O;
  output [5:0]OBUFDS_GTE3_OB;
  input [5:0]OBUFDS_GTE3_ADV_CEB;
  input [23:0]OBUFDS_GTE3_ADV_I;
  output [5:0]OBUFDS_GTE3_ADV_O;
  output [5:0]OBUFDS_GTE3_ADV_OB;
  input [11:0]RXRECCLK_SEL_GTE3_ADV;
  input [5:0]OBUFDS_GTE4_CEB;
  input [5:0]OBUFDS_GTE4_I;
  output [5:0]OBUFDS_GTE4_O;
  output [5:0]OBUFDS_GTE4_OB;
  input [5:0]OBUFDS_GTE4_ADV_CEB;
  input [23:0]OBUFDS_GTE4_ADV_I;
  output [5:0]OBUFDS_GTE4_ADV_O;
  output [5:0]OBUFDS_GTE4_ADV_OB;
  input [11:0]RXRECCLK_SEL_GTE4_ADV;
  output [5:0]IBUFDS_GTM_O;
  output [5:0]IBUFDS_GTM_ODIV2;
  input [5:0]IBUFDS_GTM_CEB;
  input [5:0]IBUFDS_GTM_I;
  input [5:0]IBUFDS_GTM_IB;
  output [5:0]OBUFDS_GTM_O;
  output [5:0]OBUFDS_GTM_OB;
  input [5:0]OBUFDS_GTM_CEB;
  input [5:0]OBUFDS_GTM_I;
  input [5:0]OBUFDS_GTM_ADV_CEB;
  input [23:0]OBUFDS_GTM_ADV_I;
  output [5:0]OBUFDS_GTM_ADV_O;
  output [5:0]OBUFDS_GTM_ADV_OB;
  output [5:0]IBUFDS_GTME5_O;
  output [5:0]IBUFDS_GTME5_ODIV2;
  input [5:0]IBUFDS_GTME5_CEB;
  input [5:0]IBUFDS_GTME5_I;
  input [5:0]IBUFDS_GTME5_IB;
  input [5:0]OBUFDS_GTME5_CEB;
  input [5:0]OBUFDS_GTME5_I;
  output [5:0]OBUFDS_GTME5_O;
  output [5:0]OBUFDS_GTME5_OB;
  input [5:0]OBUFDS_GTME5_ADV_CEB;
  input [23:0]OBUFDS_GTME5_ADV_I;
  output [5:0]OBUFDS_GTME5_ADV_O;
  output [5:0]OBUFDS_GTME5_ADV_OB;
  input [5:0]BUFG_GT_I;
  input [5:0]BUFG_GT_CE;
  input [5:0]BUFG_GT_CEMASK;
  input [5:0]BUFG_GT_CLR;
  input [5:0]BUFG_GT_CLRMASK;
  input [17:0]BUFG_GT_DIV;
  output [5:0]BUFG_GT_O;

  wire \<const0> ;
  wire [5:0]IBUF_DS_N;
  wire [5:0]IBUF_DS_P;
  wire [5:0]IBUF_OUT;

  assign BUFGCE_O[5] = IOBUF_DS_P[5];
  assign BUFGCE_O[4] = IOBUF_DS_P[5];
  assign BUFGCE_O[3] = IOBUF_DS_P[5];
  assign BUFGCE_O[2] = IOBUF_DS_P[5];
  assign BUFGCE_O[1] = IOBUF_DS_P[5];
  assign BUFGCE_O[0] = IOBUF_DS_P[5];
  assign BUFG_FABRIC_O[5] = IOBUF_DS_P[5];
  assign BUFG_FABRIC_O[4] = IOBUF_DS_P[5];
  assign BUFG_FABRIC_O[3] = IOBUF_DS_P[5];
  assign BUFG_FABRIC_O[2] = IOBUF_DS_P[5];
  assign BUFG_FABRIC_O[1] = IOBUF_DS_P[5];
  assign BUFG_FABRIC_O[0] = IOBUF_DS_P[5];
  assign BUFG_GT_O[5] = IOBUF_DS_P[5];
  assign BUFG_GT_O[4] = IOBUF_DS_P[5];
  assign BUFG_GT_O[3] = IOBUF_DS_P[5];
  assign BUFG_GT_O[2] = IOBUF_DS_P[5];
  assign BUFG_GT_O[1] = IOBUF_DS_P[5];
  assign BUFG_GT_O[0] = IOBUF_DS_P[5];
  assign BUFG_O[5] = IOBUF_DS_P[5];
  assign BUFG_O[4] = IOBUF_DS_P[5];
  assign BUFG_O[3] = IOBUF_DS_P[5];
  assign BUFG_O[2] = IOBUF_DS_P[5];
  assign BUFG_O[1] = IOBUF_DS_P[5];
  assign BUFG_O[0] = IOBUF_DS_P[5];
  assign BUFHCE_O[5] = IOBUF_DS_P[5];
  assign BUFHCE_O[4] = IOBUF_DS_P[5];
  assign BUFHCE_O[3] = IOBUF_DS_P[5];
  assign BUFHCE_O[2] = IOBUF_DS_P[5];
  assign BUFHCE_O[1] = IOBUF_DS_P[5];
  assign BUFHCE_O[0] = IOBUF_DS_P[5];
  assign BUFH_O[5] = IOBUF_DS_P[5];
  assign BUFH_O[4] = IOBUF_DS_P[5];
  assign BUFH_O[3] = IOBUF_DS_P[5];
  assign BUFH_O[2] = IOBUF_DS_P[5];
  assign BUFH_O[1] = IOBUF_DS_P[5];
  assign BUFH_O[0] = IOBUF_DS_P[5];
  assign IBUFDS_GTME5_O[5] = IOBUF_DS_P[5];
  assign IBUFDS_GTME5_O[4] = IOBUF_DS_P[5];
  assign IBUFDS_GTME5_O[3] = IOBUF_DS_P[5];
  assign IBUFDS_GTME5_O[2] = IOBUF_DS_P[5];
  assign IBUFDS_GTME5_O[1] = IOBUF_DS_P[5];
  assign IBUFDS_GTME5_O[0] = IOBUF_DS_P[5];
  assign IBUFDS_GTME5_ODIV2[5] = IOBUF_DS_P[5];
  assign IBUFDS_GTME5_ODIV2[4] = IOBUF_DS_P[5];
  assign IBUFDS_GTME5_ODIV2[3] = IOBUF_DS_P[5];
  assign IBUFDS_GTME5_ODIV2[2] = IOBUF_DS_P[5];
  assign IBUFDS_GTME5_ODIV2[1] = IOBUF_DS_P[5];
  assign IBUFDS_GTME5_ODIV2[0] = IOBUF_DS_P[5];
  assign IBUFDS_GTM_O[5] = IOBUF_DS_P[5];
  assign IBUFDS_GTM_O[4] = IOBUF_DS_P[5];
  assign IBUFDS_GTM_O[3] = IOBUF_DS_P[5];
  assign IBUFDS_GTM_O[2] = IOBUF_DS_P[5];
  assign IBUFDS_GTM_O[1] = IOBUF_DS_P[5];
  assign IBUFDS_GTM_O[0] = IOBUF_DS_P[5];
  assign IBUFDS_GTM_ODIV2[5] = IOBUF_DS_P[5];
  assign IBUFDS_GTM_ODIV2[4] = IOBUF_DS_P[5];
  assign IBUFDS_GTM_ODIV2[3] = IOBUF_DS_P[5];
  assign IBUFDS_GTM_ODIV2[2] = IOBUF_DS_P[5];
  assign IBUFDS_GTM_ODIV2[1] = IOBUF_DS_P[5];
  assign IBUFDS_GTM_ODIV2[0] = IOBUF_DS_P[5];
  assign IBUF_DS_ODIV2[5] = IOBUF_DS_P[5];
  assign IBUF_DS_ODIV2[4] = IOBUF_DS_P[5];
  assign IBUF_DS_ODIV2[3] = IOBUF_DS_P[5];
  assign IBUF_DS_ODIV2[2] = IOBUF_DS_P[5];
  assign IBUF_DS_ODIV2[1] = IOBUF_DS_P[5];
  assign IBUF_DS_ODIV2[0] = IOBUF_DS_P[5];
  assign IOBUF_IO_O[5] = IOBUF_DS_P[5];
  assign IOBUF_IO_O[4] = IOBUF_DS_P[5];
  assign IOBUF_IO_O[3] = IOBUF_DS_P[5];
  assign IOBUF_IO_O[2] = IOBUF_DS_P[5];
  assign IOBUF_IO_O[1] = IOBUF_DS_P[5];
  assign IOBUF_IO_O[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_ADV_O[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_ADV_O[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_ADV_O[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_ADV_O[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_ADV_O[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_ADV_O[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_ADV_OB[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_ADV_OB[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_ADV_OB[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_ADV_OB[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_ADV_OB[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_ADV_OB[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_O[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_O[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_O[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_O[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_O[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_O[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_OB[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_OB[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_OB[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_OB[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_OB[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTE3_OB[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_ADV_O[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_ADV_O[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_ADV_O[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_ADV_O[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_ADV_O[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_ADV_O[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_ADV_OB[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_ADV_OB[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_ADV_OB[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_ADV_OB[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_ADV_OB[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_ADV_OB[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_O[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_O[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_O[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_O[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_O[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_O[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_OB[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_OB[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_OB[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_OB[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_OB[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTE4_OB[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_ADV_O[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_ADV_O[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_ADV_O[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_ADV_O[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_ADV_O[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_ADV_O[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_ADV_OB[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_ADV_OB[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_ADV_OB[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_ADV_OB[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_ADV_OB[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_ADV_OB[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_O[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_O[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_O[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_O[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_O[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_O[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_OB[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_OB[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_OB[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_OB[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_OB[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTE5_OB[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_ADV_O[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_ADV_O[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_ADV_O[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_ADV_O[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_ADV_O[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_ADV_O[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_ADV_OB[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_ADV_OB[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_ADV_OB[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_ADV_OB[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_ADV_OB[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_ADV_OB[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_O[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_O[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_O[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_O[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_O[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_O[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_OB[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_OB[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_OB[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_OB[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_OB[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTME5_OB[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_ADV_O[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_ADV_O[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_ADV_O[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_ADV_O[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_ADV_O[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_ADV_O[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_ADV_OB[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_ADV_OB[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_ADV_OB[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_ADV_OB[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_ADV_OB[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_ADV_OB[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_O[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_O[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_O[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_O[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_O[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_O[0] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_OB[5] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_OB[4] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_OB[3] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_OB[2] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_OB[1] = IOBUF_DS_P[5];
  assign OBUFDS_GTM_OB[0] = IOBUF_DS_P[5];
  assign OBUF_DS_N[5] = IOBUF_DS_P[5];
  assign OBUF_DS_N[4] = IOBUF_DS_P[5];
  assign OBUF_DS_N[3] = IOBUF_DS_P[5];
  assign OBUF_DS_N[2] = IOBUF_DS_P[5];
  assign OBUF_DS_N[1] = IOBUF_DS_P[5];
  assign OBUF_DS_N[0] = IOBUF_DS_P[5];
  assign OBUF_DS_P[5] = IOBUF_DS_P[5];
  assign OBUF_DS_P[4] = IOBUF_DS_P[5];
  assign OBUF_DS_P[3] = IOBUF_DS_P[5];
  assign OBUF_DS_P[2] = IOBUF_DS_P[5];
  assign OBUF_DS_P[1] = IOBUF_DS_P[5];
  assign OBUF_DS_P[0] = IOBUF_DS_P[5];
  xVIA IOBUF_DS_N_0via (IOBUF_DS_N[0], IOBUF_DS_P[5]);
  xVIA IOBUF_DS_N_1via (IOBUF_DS_N[1], IOBUF_DS_P[5]);
  xVIA IOBUF_DS_N_2via (IOBUF_DS_N[2], IOBUF_DS_P[5]);
  xVIA IOBUF_DS_N_3via (IOBUF_DS_N[3], IOBUF_DS_P[5]);
  xVIA IOBUF_DS_N_4via (IOBUF_DS_N[4], IOBUF_DS_P[5]);
  xVIA IOBUF_DS_N_5via (IOBUF_DS_N[5], IOBUF_DS_P[5]);
  xVIA IOBUF_DS_P_0via (IOBUF_DS_P[0], IOBUF_DS_P[5]);
  xVIA IOBUF_DS_P_1via (IOBUF_DS_P[1], IOBUF_DS_P[5]);
  xVIA IOBUF_DS_P_2via (IOBUF_DS_P[2], IOBUF_DS_P[5]);
  xVIA IOBUF_DS_P_3via (IOBUF_DS_P[3], IOBUF_DS_P[5]);
  xVIA IOBUF_DS_P_4via (IOBUF_DS_P[4], IOBUF_DS_P[5]);
  GND GND
       (.G(IOBUF_DS_P[5]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I 
       (.I(IBUF_DS_P[0]),
        .IB(IBUF_DS_N[0]),
        .O(IBUF_OUT[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_IBUFDS.GEN_IBUFDS[1].IBUFDS_I 
       (.I(IBUF_DS_P[1]),
        .IB(IBUF_DS_N[1]),
        .O(IBUF_OUT[1]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_IBUFDS.GEN_IBUFDS[2].IBUFDS_I 
       (.I(IBUF_DS_P[2]),
        .IB(IBUF_DS_N[2]),
        .O(IBUF_OUT[2]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_IBUFDS.GEN_IBUFDS[3].IBUFDS_I 
       (.I(IBUF_DS_P[3]),
        .IB(IBUF_DS_N[3]),
        .O(IBUF_OUT[3]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_IBUFDS.GEN_IBUFDS[4].IBUFDS_I 
       (.I(IBUF_DS_P[4]),
        .IB(IBUF_DS_N[4]),
        .O(IBUF_OUT[4]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  (* box_type = "PRIMITIVE" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    \USE_IBUFDS.GEN_IBUFDS[5].IBUFDS_I 
       (.I(IBUF_DS_P[5]),
        .IB(IBUF_DS_N[5]),
        .O(IBUF_OUT[5]));
endmodule
module xVIA(.a(w),.b(w));
inout w;
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
