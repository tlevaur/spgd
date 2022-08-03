module PRNG
#(
	parameter FP_WIDTH = 64,
	parameter INT_WIDTH = 16,
	parameter RNG_WIDTH = 14
)
(
	input [FP_WIDTH - 1:0] SIGMA,
	input clk,
	input rst,
	output [FP_WIDTH - 1:0] PERT_A,
	output [FP_WIDTH - 1:0] PERT_B
);

	wire [RNG_WIDTH - 1:0] RNG_0_out;
	wire [RNG_WIDTH - 1:0] RNG_1_out;

	wire [2*FP_WIDTH - 1:0] MULT_0_out;
	wire [2*FP_WIDTH - 1:0] MULT_1_out;

	wire [FP_WIDTH - 1 : 0] MULT_0_in;
	wire [FP_WIDTH - 1 : 0] MULT_1_in;

	CLT_RNG #(.SEED1(697757461), .SEED2(1885540239), .SEED3(1505946904), .SEED4(2693445), .SEED_WIDTH(32), .OUT_WIDTH(14)) RNG_0 (.clk(clk), .rst(rst), .out(RNG_0_out));
	CLT_RNG #(.SEED1(222033391), .SEED2(50239), .SEED3(1323031904), .SEED4(2111122345), .SEED_WIDTH(32), .OUT_WIDTH(14)) RNG_1 (.clk(clk), .rst(rst), .out(RNG_1_out));

	assign MULT_0_in = {{INT_WIDTH-1{RNG_0_out[RNG_WIDTH-1]}}, RNG_0_out, {FP_WIDTH-INT_WIDTH+1-RNG_WIDTH{1'b0}}};
	assign MULT_1_in = {{INT_WIDTH-1{RNG_1_out[RNG_WIDTH-1]}}, RNG_1_out, {FP_WIDTH-INT_WIDTH+1-RNG_WIDTH{1'b0}}};

	gen_mult #(.DATA_WIDTH(FP_WIDTH)) RNG_0_MULT (.a(MULT_0_in), .b(SIGMA), .p(MULT_0_out)); 
	gen_mult #(.DATA_WIDTH(FP_WIDTH)) RNG_1_MULT (.a(MULT_1_in), .b(SIGMA), .p(MULT_1_out));

	assign PERT_A = MULT_0_out[FP_WIDTH*2-1-INT_WIDTH:FP_WIDTH-INT_WIDTH];
	assign PERT_B = MULT_1_out[FP_WIDTH*2-1-INT_WIDTH:FP_WIDTH-INT_WIDTH];
endmodule
