module ADC_MUX
#(
	parameter ADC_WIDTH = 12
)
(
	input [ADC_WIDTH - 1:0] ADC_A,
	input [ADC_WIDTH - 1:0] ADC_B,
	input ADC_SEL,
	output [ADC_WIDTH - 1:0] ADC_OUT
);
	reg [ADC_WIDTH - 1:0] int_ADC_OUT = 12'b000;
	assign ADC_OUT = int_ADC_OUT;
	always @(ADC_SEL, ADC_A, ADC_B)
	begin
		if(ADC_SEL)
			int_ADC_OUT = ADC_B;
		else
			int_ADC_OUT = ADC_A;
	end
endmodule
