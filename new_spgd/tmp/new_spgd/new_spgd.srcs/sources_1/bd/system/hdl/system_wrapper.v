//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Tue Jul  5 14:27:38 2022
//Host        : turing running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    TRIG_IN,
    adc_clk_n,
    adc_clk_p,
    adc_dat_a_n_i,
    adc_dat_a_p_i,
    adc_dat_b_n_i,
    adc_dat_b_p_i,
    dac_dat_a_o,
    dac_dat_b_o,
    dac_spi_clk_o,
    dac_spi_csb_o,
    dac_spi_reset_o,
    dac_spi_sdio_o,
    led_o);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input TRIG_IN;
  input adc_clk_n;
  input adc_clk_p;
  input [5:0]adc_dat_a_n_i;
  input [5:0]adc_dat_a_p_i;
  input [5:0]adc_dat_b_n_i;
  input [5:0]adc_dat_b_p_i;
  output [13:0]dac_dat_a_o;
  output [13:0]dac_dat_b_o;
  output dac_spi_clk_o;
  output dac_spi_csb_o;
  output dac_spi_reset_o;
  inout dac_spi_sdio_o;
  output [7:0]led_o;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire TRIG_IN;
  wire adc_clk_n;
  wire adc_clk_p;
  wire [5:0]adc_dat_a_n_i;
  wire [5:0]adc_dat_a_p_i;
  wire [5:0]adc_dat_b_n_i;
  wire [5:0]adc_dat_b_p_i;
  wire [13:0]dac_dat_a_o;
  wire [13:0]dac_dat_b_o;
  wire dac_spi_clk_o;
  wire dac_spi_csb_o;
  wire dac_spi_reset_o;
  wire dac_spi_sdio_o;
  wire [7:0]led_o;

  system system_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .TRIG_IN(TRIG_IN),
        .adc_clk_n(adc_clk_n),
        .adc_clk_p(adc_clk_p),
        .adc_dat_a_n_i(adc_dat_a_n_i),
        .adc_dat_a_p_i(adc_dat_a_p_i),
        .adc_dat_b_n_i(adc_dat_b_n_i),
        .adc_dat_b_p_i(adc_dat_b_p_i),
        .dac_dat_a_o(dac_dat_a_o),
        .dac_dat_b_o(dac_dat_b_o),
        .dac_spi_clk_o(dac_spi_clk_o),
        .dac_spi_csb_o(dac_spi_csb_o),
        .dac_spi_reset_o(dac_spi_reset_o),
        .dac_spi_sdio_o(dac_spi_sdio_o),
        .led_o(led_o));
endmodule
