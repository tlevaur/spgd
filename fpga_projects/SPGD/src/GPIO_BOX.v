module GPIO_BOX
#(
	parameter GPIO_WIDTH = 32,
	parameter ADC_WIDTH = 12,
	parameter DAC_WIDTH = 14,
	parameter LED_VAL_WIDTH = 8
)
(
	input [GPIO_WIDTH - 1:0] GP_IN,
	input [ADC_WIDTH - 1:0] ADC_A,
	input [ADC_WIDTH - 1:0] ADC_B,
	output [GPIO_WIDTH - 1:0] GP_OUT,
	output [DAC_WIDTH - 1:0] DAC_A,
	output [DAC_WIDTH - 1:0] DAC_B,
	output [LED_VAL_WIDTH - 1:0] LED_OUT, 
	output pulse_RST
);

	assign GP_OUT = {4'b0000, ADC_B, 4'b0000, ADC_A};
	assign DAC_A = GP_IN[DAC_WIDTH - 1:0];
	assign DAC_B = GP_IN[DAC_WIDTH + DAC_WIDTH - 1: DAC_WIDTH];
	assign pulse_RST = GP_IN[0];
	assign LED_OUT = GP_IN[LED_VAL_WIDTH - 1:0];
endmodule
