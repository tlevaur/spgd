module TOP_RNG
#(
	parameter OUT_WIDTH = 14,
	parameter SEED_WIDTH = 32,
	parameter ADD_VALUE = 3,
	parameter A_SEED1 = 697757461,
	parameter A_SEED2 = 1885540239,
	parameter A_SEED3 = 1505946904,
	parameter A_SEED4 = 2693445,
	parameter B_SEED1 = 1278945763,
	parameter B_SEED2 = 1666777420,
	parameter B_SEED3 = 2568756,
	parameter B_SEED4 = 845689748
)
(
	input wire clk,
	input wire rst,
	output [OUT_WIDTH - 1:0] out_0,
	output [OUT_WIDTH - 1:0] out_1
);

wire [OUT_WIDTH - 1:0] out_add_0;
wire [OUT_WIDTH - 1:0] out_add_1;

reg [OUT_WIDTH - 1:0] add_const = ADD_VALUE;

CLT_RNG #(.SEED1(A_SEED1), .SEED2(A_SEED2), .SEED3(A_SEED3), .SEED4(A_SEED4), .SEED_WIDTH(SEED_WIDTH), .OUT_WIDTH(OUT_WIDTH)) rng0(.clk(clk), .rst(rst), .out(out_add_0));
CLT_RNG #(.SEED1(B_SEED1), .SEED2(B_SEED2), .SEED3(B_SEED3), .SEED4(B_SEED4), .SEED_WIDTH(SEED_WIDTH), .OUT_WIDTH(OUT_WIDTH)) rng1(.clk(clk), .rst(rst), .out(out_add_1));

gen_adder #(.IN_WIDTH(OUT_WIDTH), .OUT_WIDTH(OUT_WIDTH)) add_0(.a(out_add_0), .b(add_const), .s(out_0));
gen_adder #(.IN_WIDTH(OUT_WIDTH), .OUT_WIDTH(OUT_WIDTH)) add_1(.a(out_add_1), .b(add_const), .s(out_1));

endmodule
