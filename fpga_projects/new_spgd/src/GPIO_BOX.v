module GPIO_BOX
#(
	parameter GPIO_WIDTH = 32,
	parameter ADC_WIDTH = 12,
	parameter DAC_WIDTH = 14
)
(
	input [GPIO_WIDTH - 1:0] GP_IN,
	input [ADC_WIDTH - 1:0] ADC_A,
	input [ADC_WIDTH - 1:0] ADC_B,
	output [GPIO_WIDTH - 1:0] GP_OUT,
	output [DAC_WIDTH - 1:0] DAC_A,
	output [DAC_WIDTH - 1:0] DAC_B
);

	assign GP_OUT = {4'b0000, ADC_B, 4'b0000, ADC_A};
	assign DAC_A = GP_IN[DAC_WIDTH - 1:0];
	assign DAC_B = GP_IN[DAC_WIDTH + DAC_WIDTH - 1: DAC_WIDTH];
endmodule
