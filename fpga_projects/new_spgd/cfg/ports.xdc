#adc_a pins match 25012 customer doc
#supposedly adc_pins fixed june 8,2022
#LED pins fixed june 15, 2022

set_property PACKAGE_PIN Y16 [get_ports {adc_dat_a_p_i[0]}]
set_property PACKAGE_PIN V12 [get_ports {adc_dat_a_p_i[1]}]
set_property PACKAGE_PIN T11 [get_ports {adc_dat_a_p_i[2]}]
set_property PACKAGE_PIN W14 [get_ports {adc_dat_a_p_i[3]}]
set_property PACKAGE_PIN V16 [get_ports {adc_dat_a_p_i[4]}]
set_property PACKAGE_PIN T20 [get_ports {adc_dat_a_p_i[5]}]

set_property PACKAGE_PIN Y17 [get_ports {adc_dat_a_n_i[0]}]
set_property PACKAGE_PIN W13 [get_ports {adc_dat_a_n_i[1]}]
set_property PACKAGE_PIN T10 [get_ports {adc_dat_a_n_i[2]}]
set_property PACKAGE_PIN Y14 [get_ports {adc_dat_a_n_i[3]}]
set_property PACKAGE_PIN W16 [get_ports {adc_dat_a_n_i[4]}] 
set_property PACKAGE_PIN U20 [get_ports {adc_dat_a_n_i[5]}]

#adc_b pins match 25012 customer doc and xdc
set_property PACKAGE_PIN T17 [get_ports {adc_dat_b_p_i[0]}]
set_property PACKAGE_PIN T16 [get_ports {adc_dat_b_p_i[1]}]
set_property PACKAGE_PIN V20 [get_ports {adc_dat_b_p_i[2]}]
set_property PACKAGE_PIN Y18 [get_ports {adc_dat_b_p_i[3]}]
set_property PACKAGE_PIN T14 [get_ports {adc_dat_b_p_i[4]}]
set_property PACKAGE_PIN V15 [get_ports {adc_dat_b_p_i[5]}]

set_property PACKAGE_PIN R18 [get_ports {adc_dat_b_n_i[0]}]
set_property PACKAGE_PIN U17 [get_ports {adc_dat_b_n_i[1]}]
set_property PACKAGE_PIN W20 [get_ports {adc_dat_b_n_i[2]}]
set_property PACKAGE_PIN Y19 [get_ports {adc_dat_b_n_i[3]}]
set_property PACKAGE_PIN T15 [get_ports {adc_dat_b_n_i[4]}]
set_property PACKAGE_PIN W15 [get_ports {adc_dat_b_n_i[5]}]


# set_property CFGBVS VCCO [current_design]
# set_property CONFIG_VOLTAGE 3.3 [current_design]

set_property IOSTANDARD LVCMOS18 [get_ports TRIG_IN]
set_property IOB TRUE [get_ports TRIG_IN]
set_property PACKAGE_PIN N20 [get_ports TRIG_IN]

### ADC

# data

# need to setup the DIFF_TERM for 100R differential termination

set_property IOSTANDARD DIFF_SSTL18_II [get_ports {adc_dat_a_?_i[*]}]
#set_property DIFF_TERM true [get_ports {adc_dat_a_?_i[*]}]
#set_property IOB TRUE [get_ports {adc_dat_a_i[*]}]

#set_property PACKAGE_PIN W18 [get_ports {adc_dat_a_p_i[0]}]
#set_property PACKAGE_PIN W19 [get_ports {adc_dat_a_n_i[0]}]

set_property IOSTANDARD DIFF_SSTL18_II [get_ports {adc_dat_b_?_i[*]}]
#set_property IOB TRUE [get_ports {adc_dat_b_i[*]}]

#set_property PACKAGE_PIN N17 [get_ports {adc_dat_b_p_i[0]}]
#set_property PACKAGE_PIN P18 [get_ports {adc_dat_b_n_i[0]}]

# clock input

set_property IOSTANDARD DIFF_SSTL18_II [get_ports adc_clk_?]
#set_property DIFF_TERM TRUE [get_ports {adc_clk_?}]
#set_property IOSTANDARD LVCMOS18 [get_ports adc_clk_?]
set_property PACKAGE_PIN U18 [get_ports adc_clk_p]
set_property PACKAGE_PIN U19 [get_ports adc_clk_n]

# ADC SPI
#set_property IOSTANDARD LVCMOS18 [get_ports adc_spi_*]
#set_property SLEW SLOW [get_ports adc_spi_*]
#set_property DRIVE 8 [get_ports adc_spi_*]
#set_property PACKAGE_PIN Y14 [get_ports adc_spi_csb_o]
#set_property PACKAGE_PIN V18 [get_ports adc_spi_sdio_o] ; # ADC_SDIO #Old:V18
#set_property PACKAGE_PIN W14 [get_ports adc_spi_clk_o]

# ADC SYNC
#set_property IOSTANDARD LVCMOS18 [get_ports adc_sync_o]
#set_property SLEW SLOW [get_ports adc_sync_o]
#set_property DRIVE 8 [get_ports adc_sync_o]
#set_property PACKAGE_PIN P15 [get_ports adc_sync_o]

### DAC

# data

set_property IOSTANDARD LVCMOS33 [get_ports {dac_dat_a_o[*]}]
set_property SLEW FAST [get_ports {dac_dat_a_o[*]}]
set_property DRIVE 8 [get_ports {dac_dat_a_o[*]}]
#set_property IOB TRUE [get_ports {dac_dat_a_o[*]}]
#dac_a_pins match 25012 red pitaya customer doc and xdc

set_property PACKAGE_PIN L19 [get_ports {dac_dat_a_o[0]}]
set_property PACKAGE_PIN L20 [get_ports {dac_dat_a_o[1]}]
set_property PACKAGE_PIN K19 [get_ports {dac_dat_a_o[2]}]
set_property PACKAGE_PIN J19 [get_ports {dac_dat_a_o[3]}]
set_property PACKAGE_PIN J20 [get_ports {dac_dat_a_o[4]}]
set_property PACKAGE_PIN J18 [get_ports {dac_dat_a_o[5]}]
set_property PACKAGE_PIN H20 [get_ports {dac_dat_a_o[6]}]
set_property PACKAGE_PIN G19 [get_ports {dac_dat_a_o[7]}]
set_property PACKAGE_PIN G20 [get_ports {dac_dat_a_o[8]}]
set_property PACKAGE_PIN F17 [get_ports {dac_dat_a_o[9]}]
set_property PACKAGE_PIN F20 [get_ports {dac_dat_a_o[10]}]
set_property PACKAGE_PIN F19 [get_ports {dac_dat_a_o[11]}]
set_property PACKAGE_PIN D20 [get_ports {dac_dat_a_o[12]}]
set_property PACKAGE_PIN D19 [get_ports {dac_dat_a_o[13]}]

set_property IOSTANDARD LVCMOS33 [get_ports {dac_dat_b_o[*]}]
set_property SLEW FAST [get_ports {dac_dat_b_o[*]}]
set_property DRIVE 8 [get_ports {dac_dat_b_o[*]}]
#set_property IOB TRUE [get_ports {dac_dat_b_o[*]}]
#dac_b_pins match 25012 red pitaya customer doc

set_property PACKAGE_PIN G18 [get_ports {dac_dat_b_o[0]}]
set_property PACKAGE_PIN G17 [get_ports {dac_dat_b_o[1]}]
set_property PACKAGE_PIN H17 [get_ports {dac_dat_b_o[2]}]
set_property PACKAGE_PIN H18 [get_ports {dac_dat_b_o[3]}]
set_property PACKAGE_PIN J16 [get_ports {dac_dat_b_o[4]}]
set_property PACKAGE_PIN K16 [get_ports {dac_dat_b_o[5]}]
set_property PACKAGE_PIN K17 [get_ports {dac_dat_b_o[6]}]
set_property PACKAGE_PIN L15 [get_ports {dac_dat_b_o[7]}]
set_property PACKAGE_PIN M20 [get_ports {dac_dat_b_o[8]}]
set_property PACKAGE_PIN M19 [get_ports {dac_dat_b_o[9]}]
set_property PACKAGE_PIN M17 [get_ports {dac_dat_b_o[10]}]
set_property PACKAGE_PIN M18 [get_ports {dac_dat_b_o[11]}]
set_property PACKAGE_PIN L17 [get_ports {dac_dat_b_o[12]}]
set_property PACKAGE_PIN K18 [get_ports {dac_dat_b_o[13]}]

set_property IOSTANDARD LVCMOS33 [get_ports dac_spi_*_o]
set_property SLEW FAST [get_ports dac_spi_*_o]
set_property DRIVE 8 [get_ports dac_spi_*_o]
# set_property IOB TRUE [get_ports {dac_spi_*_o}]


#set_property IOSTANDARD LVCMOS33 [get_ports dac_spi_dco_i]
#set_property PACKAGE_PIN L16 [get_ports dac_spi_dco_i]

### XADC

#set_property IOSTANDARD LVCMOS33 [get_ports Vp_Vn_v_p]
#set_property IOSTANDARD LVCMOS33 [get_ports Vp_Vn_v_n]
#set_property IOSTANDARD LVCMOS33 [get_ports Vaux0_v_p]
#set_property IOSTANDARD LVCMOS33 [get_ports Vaux0_v_n]
#set_property IOSTANDARD LVCMOS33 [get_ports Vaux1_v_p]
#set_property IOSTANDARD LVCMOS33 [get_ports Vaux1_v_n]
#set_property IOSTANDARD LVCMOS33 [get_ports Vaux8_v_p]
#set_property IOSTANDARD LVCMOS33 [get_ports Vaux8_v_n]
#set_property IOSTANDARD LVCMOS33 [get_ports Vaux9_v_p]
#set_property IOSTANDARD LVCMOS33 [get_ports Vaux9_v_n]

#set_property PACKAGE_PIN C20 [get_ports Vaux0_v_p] ; # AIFP1 #Old:C20
#set_property PACKAGE_PIN B20 [get_ports Vaux0_v_n] ; # AIFN1 #Old:B20
#set_property PACKAGE_PIN E17 [get_ports Vaux1_v_p] ; # AIFP2 #Old:E17
#set_property PACKAGE_PIN D18 [get_ports Vaux1_v_n] ; # AIFN2 #Old:D18
#set_property PACKAGE_PIN B19 [get_ports Vaux8_v_p] ; # AIFP0 #Old:B19
#set_property PACKAGE_PIN A20 [get_ports Vaux8_v_n] ; # AIFN0 #Old:A20
#set_property PACKAGE_PIN E18 [get_ports Vaux9_v_p] ; # AIFP3 #Old:E18
#set_property PACKAGE_PIN E19 [get_ports Vaux9_v_n] ; # AIFN3 #Old:E19
#set_property PACKAGE_PIN K9  [get_ports Vp_Vn_v_p] ; # AIFP4 #Old:K9
#set_property PACKAGE_PIN L10 [get_ports Vp_Vn_v_n] ; # AIFN4 #Old:L10

### Expansion connector

#set_property IOSTANDARD LVCMOS33 [get_ports {exp_p_tri_io[*]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {exp_n_tri_io[*]}]
#set_property SLEW FAST [get_ports {exp_p_tri_io[*]}]
#set_property SLEW FAST [get_ports {exp_n_tri_io[*]}]
#set_property DRIVE 8 [get_ports {exp_p_tri_io[*]}]
#set_property DRIVE 8 [get_ports {exp_n_tri_io[*]}]
#set_property PULLUP true [get_ports {exp_p_tri_io[7]}]
#set_property PULLUP true [get_ports {exp_p_tri_io[6]}]
#set_property PULLUP true [get_ports {exp_p_tri_io[5]}]
#set_property PULLUP true [get_ports {exp_p_tri_io[4]}]
#set_property PULLUP true [get_ports {exp_p_tri_io[3]}]
#set_property PULLUP true [get_ports {exp_p_tri_io[2]}]
#set_property PULLUP true [get_ports {exp_p_tri_io[1]}]
#set_property PULLUP true [get_ports {exp_p_tri_io[0]}]
#set_property PULLUP true [get_ports {exp_n_tri_io[7]}]
#set_property PULLUP true [get_ports {exp_n_tri_io[6]}]
#set_property PULLUP true [get_ports {exp_n_tri_io[5]}]
#set_property PULLUP true [get_ports {exp_n_tri_io[4]}]
#set_property PULLUP true [get_ports {exp_n_tri_io[3]}]
#set_property PULLUP true [get_ports {exp_n_tri_io[2]}]
#set_property PULLUP true [get_ports {exp_n_tri_io[1]}]
#set_property PULLUP true [get_ports {exp_n_tri_io[0]}]

#set_property PACKAGE_PIN W10 [get_ports {exp_p_tri_io[0]}]
#set_property PACKAGE_PIN W9 [get_ports {exp_n_tri_io[0]}]
#set_property PACKAGE_PIN T9 [get_ports {exp_p_tri_io[1]}]
#set_property PACKAGE_PIN U10 [get_ports {exp_n_tri_io[1]}]
#set_property PACKAGE_PIN Y9 [get_ports {exp_p_tri_io[2]}]
#set_property PACKAGE_PIN Y8 [get_ports {exp_n_tri_io[2]}]
#set_property PACKAGE_PIN U9 [get_ports {exp_p_tri_io[3]}]
#set_property PACKAGE_PIN U8 [get_ports {exp_n_tri_io[3]}]
#set_property PACKAGE_PIN V8 [get_ports {exp_p_tri_io[4]}]
#set_property PACKAGE_PIN W8 [get_ports {exp_n_tri_io[4]}]
#set_property PACKAGE_PIN V11 [get_ports {exp_p_tri_io[5]}]
#set_property PACKAGE_PIN V10 [get_ports {exp_n_tri_io[5]}]
#set_property PACKAGE_PIN W11 [get_ports {exp_p_tri_io[6]}]
#set_property PACKAGE_PIN Y11 [get_ports {exp_n_tri_io[6]}]
#set_property PACKAGE_PIN Y12 [get_ports {exp_p_tri_io[7]}]
#set_property PACKAGE_PIN Y13 [get_ports {exp_n_tri_io[7]}]

### SATA connector

#set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports {daisy_p_o[*]}]
#set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports {daisy_n_o[*]}]

#set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports {daisy_p_i[*]}]
#set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports {daisy_n_i[*]}]

#set_property PACKAGE_PIN T12 [get_ports {daisy_p_o[0]}]
#set_property PACKAGE_PIN U12 [get_ports {daisy_n_o[0]}]
#set_property PACKAGE_PIN U14 [get_ports {daisy_p_o[1]}]
#set_property PACKAGE_PIN U15 [get_ports {daisy_n_o[1]}]
#set_property PACKAGE_PIN P14 [get_ports {daisy_p_i[0]}]
#set_property PACKAGE_PIN R14 [get_ports {daisy_n_i[0]}]
#set_property PACKAGE_PIN N18 [get_ports {daisy_p_i[1]}]
#set_property PACKAGE_PIN P19 [get_ports {daisy_n_i[1]}]

### LED

set_property IOSTANDARD LVCMOS33 [get_ports {led_o[*]}]
set_property SLEW SLOW [get_ports {led_o[*]}]
set_property DRIVE 8 [get_ports {led_o[*]}]

set_property PACKAGE_PIN K14 [get_ports {led_o[0]}]
set_property PACKAGE_PIN J15 [get_ports {led_o[1]}]
set_property PACKAGE_PIN J14 [get_ports {led_o[2]}]
set_property PACKAGE_PIN H15 [get_ports {led_o[3]}]
set_property PACKAGE_PIN L14 [get_ports {led_o[4]}]
set_property PACKAGE_PIN M14 [get_ports {led_o[5]}]
set_property PACKAGE_PIN M15 [get_ports {led_o[6]}]
set_property PACKAGE_PIN N15 [get_ports {led_o[7]}]

create_clock -period 4.000 -name adc_clk [get_ports adc_clk_p]
#create_clock -period 4.000 -name dco_clk [get_ports dac_dco_i]
#create_clock -period 100.000 -name pll_ref_i -waveform {0.000 50.000} [get_ports pll_ref_i]
#create_clock -period 4.000 -name rx_clk [get_ports {daisy_p_i[1]}]

#create_generated_clock -name i_hk/dna_clk -source [get_pins pll/pll/CLKOUT1] -divide_by 8 [get_pins i_hk/dna_clk_reg/Q]


#set_false_path -from [get_clocks clk_fpga_0]    -to [get_clocks pll_adc_clk]
#set_false_path -from [get_clocks pll_adc_clk]   -to [get_clocks clk_fpga_0]

#set_false_path -from [get_clocks pll_adc_clk2d] -to [get_clocks pll_adc_clk]
#set_false_path -from [get_clocks pll_adc_clk]   -to [get_clocks pll_adc_clk2d]

#set_false_path -from [get_clocks pll_adc_clk2d] -to [get_clocks pll_pwm_clk]
#set_false_path -from [get_clocks pll_adc_10mhz] -to [get_clocks pll_adc_clk2d]








set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]




set_property PACKAGE_PIN G14 [get_ports dac_spi_csb_o]
set_property PACKAGE_PIN F16 [get_ports dac_spi_reset_o]
set_property PACKAGE_PIN H16 [get_ports dac_spi_sdio_o]
set_property PACKAGE_PIN G15 [get_ports dac_spi_clk_o]
