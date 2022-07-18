module my_mult_tb;
localparam NUM_SAMPS = 3;
localparam F_period=4;
localparam H_period=F_period/2;
localparam DATA_WIDTH = 64;
localparam INT_WIDTH = 16;
localparam BIT_SHIFT = 11;
localparam  ON = 1'b1;
localparam  OFF = 1'b0;

reg  ADC_CLK = OFF;
reg	 [DATA_WIDTH - 1	: 0] A = {DATA_WIDTH{1'b0}};
reg  [DATA_WIDTH - 1	: 0] B = {DATA_WIDTH{1'b0}};
wire [DATA_WIDTH - 1    : 0] PRODUCT;


reg	 [DATA_WIDTH - 1	: 0] DAC_A = {DATA_WIDTH{1'b0}};
reg  [DATA_WIDTH - 1	: 0] DAC_B = {DATA_WIDTH{1'b0}};
wire [DATA_WIDTH - 1    : 0] DAC_PRODUCT;

my_mult #(
	.DATA_WIDTH(DATA_WIDTH),
	.INT_WIDTH(INT_WIDTH),
	.BIT_SHIFT(BIT_SHIFT)
) MUL0 (
	.a(A),
	.b(B),
	.p(PRODUCT)
);

my_mult #(
	.DATA_WIDTH(DATA_WIDTH),
    .OUT_WIDTH(DAC_WIDTH),
    .INT_FORMAT(INT_WIDTH-DAC_WIDTH),
    .DEC_FORMAT(DATA_WIDTH-INT_WIDTH)
) MUL_DAC (
	.a(DAC_A),
	.b(DAC_B),
	.p(DAC_PRODUCT)
);

always begin
    ADC_CLK = OFF;
    #H_period;
    ADC_CLK = ON;
    #H_period;
end
initial
begin
    repeat(NUM_SAMPS) begin
        #F_period;
        A = {{16'h0001}, {DATA_WIDTH-INT_WIDTH{1'b0}}};
        DAC_A = {{16'h0001}, {DATA_WIDTH-INT_WIDTH{1'b0}}};
        #F_period;
        B = {{16'h8000}, {DATA_WIDTH-INT_WIDTH{1'b0}}};
        DAC_B = {{16'h800A}, {DATA_WIDTH-INT_WIDTH{1'b0}}};
    end
    $finish;
end
endmodule
