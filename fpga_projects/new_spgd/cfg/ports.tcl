create_bd_port -dir I TRIG_IN

### ADC

create_bd_port -dir I -from 5 -to 0 adc_dat_a_p_i
create_bd_port -dir I -from 5 -to 0 adc_dat_a_n_i
create_bd_port -dir I -from 5 -to 0 adc_dat_b_p_i
create_bd_port -dir I -from 5 -to 0 adc_dat_b_n_i

create_bd_port -dir I adc_clk_p
create_bd_port -dir I adc_clk_n


#create_bd_port -dir I adc_clk_p_i
#create_bd_port -dir I adc_clk_n_i

#create_bd_port -dir IO adc_spi_sdio_o
#create_bd_port -dir O adc_spi_clk_o
#create_bd_port -dir O adc_sync_o
#create_bd_port -dir O adc_spi_csb_o

### DAC

create_bd_port -dir O -from 13 -to 0 dac_dat_a_o
create_bd_port -dir O -from 13 -to 0 dac_dat_b_o

create_bd_port -dir O dac_spi_csb_o
create_bd_port -dir IO dac_spi_sdio_o
create_bd_port -dir O dac_spi_clk_o
create_bd_port -dir O dac_spi_reset_o
#create_bd_port -dir I dac_spi_dco_i

### XADC

#create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vp_Vn
#create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux0
#create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux1
#create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux9
#create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux8

### Expansion connector

#create_bd_port -dir IO -from 7 -to 0 exp_p_tri_io
#create_bd_port -dir IO -from 7 -to 0 exp_n_tri_io

### SATA connector

#create_bd_port -dir O -from 1 -to 0 daisy_p_o
#create_bd_port -dir O -from 1 -to 0 daisy_n_o

#create_bd_port -dir I -from 1 -to 0 daisy_p_i
#create_bd_port -dir I -from 1 -to 0 daisy_n_i

### LED

create_bd_port -dir O -from 7 -to 0 led_o
