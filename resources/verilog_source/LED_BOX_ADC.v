module LED_BOX_ADC
#(	
	parameter IN_WIDTH = 12,
	parameter LED_WIDTH = 8,
	parameter OFFSET = 0
)
(
	input wire [IN_WIDTH - 1:0] ADC_in,
	output wire [LED_WIDTH - 1:0] LED_OUT
);
	assign LED_OUT[LED_WIDTH - 1] = ADC_in[7+OFFSET];
	assign LED_OUT[LED_WIDTH - 2] = ADC_in[6+OFFSET];
	assign LED_OUT[LED_WIDTH - 3] = ADC_in[5+OFFSET];
	assign LED_OUT[LED_WIDTH - 4] = ADC_in[4+OFFSET];
	assign LED_OUT[LED_WIDTH - 5] = ADC_in[3+OFFSET];
	assign LED_OUT[LED_WIDTH - 6] = ADC_in[2+OFFSET];
	assign LED_OUT[LED_WIDTH - 7] = ADC_in[1+OFFSET];
	assign LED_OUT[LED_WIDTH - 8] = ADC_in[0+OFFSET];

endmodule
