/*
	gen_adder_tb adds two random numbers with data length IN_WIDTH 
	and repeats with new random numbers NUM_SAMPS times.
*/
module gen_adder_tb;
localparam NUM_SAMPS = 10;
localparam F_period=4;
localparam H_period=F_period/2;
localparam IN_WIDTH = 32;
localparam  ON = 1'b1;
localparam  OFF = 1'b0;

reg  ADC_CLK = OFF;
reg	 [IN_WIDTH - 1	: 0] A = {IN_WIDTH{1'b0}};
reg  [IN_WIDTH - 1	: 0] B = {IN_WIDTH{1'b0}};
wire [IN_WIDTH  	: 0] SUM;

gen_adder #(
	.IN_WIDTH(IN_WIDTH)
) ADD0 (
	.a(A),
	.b(B),
	.s(SUM)
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
