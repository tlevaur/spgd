/*
	gen_counter_tb counts for COUNT_T0 clock ticks NUM_SAMP times 
*/

module gen_counter_tb;
localparam COUNT_TO = 1024;
localparam F_period=4;
localparam H_period=F_period/2;
localparam COUNT_period=F_period*COUNT_TO;
localparam DATA_WIDTH = 64;
localparam  ON = 1'b1;
localparam  OFF = 1'b0;

reg  CLK = ON;
reg  ENABLE = OFF;
reg	 [DATA_WIDTH - 1 : 0] COUNT = {DATA_WIDTH{1'b0}};
wire FINISH;

gen_counter #(
	.DATA_WIDTH(DATA_WIDTH)
) COUNT0 (
	.clk(CLK),
	.en(ENABLE),
	.wait_val(COUNT),
	.f(FINISH)
);

always begin
    CLK = OFF;
    #H_period;
    CLK = ON;
    #H_period;
end
initial
begin
    repeat(COUNT_TO) begin
        COUNT = COUNT + 1;
        #F_period;
        #F_period;
		ENABLE= ON;
		#COUNT_period;
		ENABLE= OFF;
    end
    $finish;
end

endmodule
