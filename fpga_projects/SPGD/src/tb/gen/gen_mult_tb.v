module gen_mult_tb;
localparam NUM_SAMPS = 10;
localparam F_period=4;
localparam H_period=F_period/2;
localparam DATA_WIDTH = 64;
localparam  ON = 1'b1;
localparam  OFF = 1'b0;

reg  ADC_CLK = OFF;
reg	 [DATA_WIDTH	- 1	: 0] A = {DATA_WIDTH{1'b0}};
reg  [DATA_WIDTH 	- 1	: 0] B = {DATA_WIDTH{1'b0}};
wire [DATA_WIDTH*2	- 1	: 0] PRODUCT;

gen_mult #(
	.DATA_WIDTH(DATA_WIDTH)
) MUL0 (
	.a(A),
	.b(B),
	.p(PRODUCT)
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
        A = $random;
        #F_period;
        B = $random;
    end
    $finish;
end
endmodule
