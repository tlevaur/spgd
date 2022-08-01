module ADC_fp
#(
	parameter FP_WIDTH = 64,
	parameter ADC_WIDTH = 12,
	parameter NUM_SAMPS = 1024
)
(
	input ADC_CLK,
	input ADC_EN,
	input REG_RST,
	input [FP_WIDTH  - 1 : 0] ADC_CAL_GAIN,
	input [FP_WIDTH  - 1 : 0] ADC_CAL_OFFSET,
	input [ADC_WIDTH - 1 : 0] ADC_IN,
	output ADC_DONE,
	output [FP_WIDTH - 1 : 0] ADC_CAL_OUT
);

	reg [FP_WIDTH - 1:0] ADC_IDEAL_GAIN = {{16'h0014}, {FP_WIDTH-16{1'b0}}};
    
    wire REG_WRITE;
    wire [FP_WIDTH   - 1 : 0] REG_DATA;
    wire [FP_WIDTH   - 1 : 0] ADC_16QM_OUT;

    wire [FP_WIDTH   - 1 : 0] ADC_CAL_MUL_DATA_OUT;
    wire [FP_WIDTH   - 1 : 0] ADC_CAL_ADD_DATA_OUT;

	ADC_IN  #(
        .FP_WIDTH(FP_WIDTH),
        .ADC_WIDTH(ADC_WIDTH),
        .NUM_SAMPS(NUM_SAMPS-1)
    ) ADC0 (
        .ADC_CLK(ADC_CLK),
        .ADC_DATA_IN(ADC_IN),
        .enable(ADC_EN),
        .DONE(ADC_DONE),
        .ADC_16QM_OUT(ADC_16QM_OUT),
        .REG_WRITE(REG_WRITE)
    );

	custom_gen_mult #(
        .DATA_WIDTH(FP_WIDTH)
    ) MULT1 (
        .a(ADC_16QM_OUT),
		.b(ADC_CAL_GAIN),
		.p(ADC_CAL_MUL_DATA_OUT)
    );

    custom_gen_subber #(
	    .IN_WIDTH(FP_WIDTH)
    ) ADD0 (
	    .a(ADC_CAL_MUL_DATA_OUT),
	    .b(ADC_CAL_OFFSET),
	    .s(ADC_CAL_ADD_DATA_OUT)
    );

	gen_reg #(
        .DATA_WIDTH(FP_WIDTH)
    ) REG0 (
        .data_in(ADC_CAL_ADD_DATA_OUT[FP_WIDTH - 1 : 0]),
        .clk(ADC_CLK),
        .wrt(REG_WRITE),
        .rst(REG_RST),
        .data_out(ADC_CAL_OUT)
    );
endmodule
