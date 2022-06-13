// top_level_tb.v

`timescale 1 ns/1 ps

module top_level_tb;

	reg trig_clk;
	reg adc_clk;

	reg [11:0] ADC_data = 12'h7FF;
	reg [31:0] GPIO_IN = 32'h00000002;
	wire [31:0] GPIO_OUT;

	wire [7:0] leds;

	wire [13:0] DAC_A;
	wire [13:0] DAC_B;

	localparam ADC_CLK_HPERIOD = 2; // 4 ns => 250 MHz
	localparam T_OFFSET = 150;
	localparam TRIG_CLK_HPERIOD = 250; //50k ns = 50us => 20kHz 

	newer_top TL(.TRIG_IN(trig_clk), .ADC_CLK(adc_clk), .ADC_IN(ADC_data),  .GPIO_IN(GPIO_IN), .DAC_SPI_SDIO(), .DAC_SPI_CLK(), .DAC_SPI_CSB(), .DAC_SPI_RST(),
	.DAC_A_OUT(DAC_A), .DAC_B_OUT(DAC_B), .GPIO_OUT(GPIO_OUT), .LED_OUT(leds));

	always 
	begin
		adc_clk = 1'b0; 
		#ADC_CLK_HPERIOD;
		adc_clk = 1'b1;
		#ADC_CLK_HPERIOD;
	end

	always 
	begin
		trig_clk = 1'b0; 
		#TRIG_CLK_HPERIOD;
		trig_clk = 1'b1;
		#TRIG_CLK_HPERIOD;
	end

	initial
	begin
		#ADC_CLK_HPERIOD
		#ADC_CLK_HPERIOD
		GPIO_IN = 32'h00000002;
		#ADC_CLK_HPERIOD;
		#ADC_CLK_HPERIOD;
		GPIO_IN = 32'h00000000;
		#ADC_CLK_HPERIOD;

		#TRIG_CLK_HPERIOD;
		#ADC_CLK_HPERIOD;
		#ADC_CLK_HPERIOD;
		#ADC_CLK_HPERIOD;
		#ADC_CLK_HPERIOD;
		#ADC_CLK_HPERIOD;
		#ADC_CLK_HPERIOD;
		#ADC_CLK_HPERIOD;
		GPIO_IN = 32'h00000001;
		ADC_data = 12'h523;
		#TRIG_CLK_HPERIOD;
		#T_OFFSET;
		ADC_data = 12'h520;
		#TRIG_CLK_HPERIOD;
		ADC_data = 12'h4FA;
		#TRIG_CLK_HPERIOD;
		ADC_data = 12'h4EA;
		#TRIG_CLK_HPERIOD;
		ADC_data = 12'h4FC;
		#TRIG_CLK_HPERIOD;
		ADC_data = 12'h4DA;
		#TRIG_CLK_HPERIOD;
		ADC_data = 12'h50A;
	end

endmodule
