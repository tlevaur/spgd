module fp_DAC
#(
	parameter FP_WIDTH = 64,
	parameter DAC_WIDTH = 14
)
(
	input [FP_WIDTH - 1:0] fp_in,
	output [DAC_WIDTH - 1:0] DAC_out
);
	reg [FP_WIDTH - 1:0] DAC_IDEAL_GAIN = 64'hFCCC_CCCC_CCCC_CCCC;
	wire [DAC_WIDTH - 1:0] DAC_OR_out;
	wire [2*FP_WIDTH - 1:0] DAC_MULT_OUT;
	gen_mult #(.DATA_WIDTH(FP_WIDTH)) DAC_MULT(.a(fp_in), .b(DAC_IDEAL_GAIN), .p(DAC_MULT_OUT));
	DAC_OR_CHECK #(.DAC_WIDTH(DAC_WIDTH)) OR_CHECK(.DAC_in(DAC_MULT_OUT[111:98]), .DAC_out(DAC_OR_out));
	assign DAC_out = DAC_OR_out;
endmodule
