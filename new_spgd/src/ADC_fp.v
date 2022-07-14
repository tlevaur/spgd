module ADC_fp
#(
	parameter FP_WIDTH = 64,
	parameter ADC_WIDTH = 12
)
(
	input ADC_CLK,
	input ADC_SEL,
	input ADC_EN,
	input REG_RST,
	input [ADC_WIDTH - 1:0] ADC_A,
	input [ADC_WIDTH - 1:0] ADC_B,
	output ADC_DONE,
	output [FP_WIDTH - 1:0] ADC_16Q48_OUT
);

	reg [FP_WIDTH - 1:0] ADC_IDEAL_GAIN = 64'h0014_0000_0000_0000;

	wire [ADC_WIDTH - 1:0] selected_ADC;	
	wire [ADC_WIDTH - 1:0] ADC_AVERAGE_OUT;
	wire [ADC_WIDTH - 1:0] REG_AVERAGE_OUT;
	wire [2*FP_WIDTH - 1:0] ADC_MUL_DATA_OUT;
    
	assign ADC_16Q48_OUT = ADC_MUL_DATA_OUT[112+11:48+11];

	ADC_MUX #(.ADC_WIDTH(ADC_WIDTH)) mux0(.ADC_A(ADC_A), .ADC_B(ADC_B), .ADC_SEL(ADC_SEL), .ADC_OUT(selected_ADC));

	ADC_AVERAGE  #(.ADC_WIDTH(ADC_WIDTH), .NUM_SAMPS(1024)) ADC_AVERAGE0 (.CLK(ADC_CLK), .EN(ADC_EN), .DATA_IN(selected_ADC), .DONE(ADC_DONE), .DATA_OUT(ADC_AVERAGE_OUT));

	gen_reg #(.DATA_WIDTH(ADC_WIDTH)) AVG_REG(.data_in(ADC_AVERAGE_OUT), .clk(ADC_CLK), .wrt(ADC_DONE), .rst(REG_RST), .data_out(REG_AVERAGE_OUT));
	
//	FSM FSM0 (.done(DONE), .enable(enable), .adc_clk(ADC_CLK), .ADC_RST(RST), .REG_RST(in_REG_RST), .REG_WRITE(VALID));

	gen_mult #(.DATA_WIDTH(FP_WIDTH)) MULT1 (.a({{4{REG_AVERAGE_OUT[ADC_WIDTH-1]}}, REG_AVERAGE_OUT, {48{1'b0}}}), .b(ADC_IDEAL_GAIN), .p(ADC_MUL_DATA_OUT));
endmodule
