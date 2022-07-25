module LFSR
#(
	parameter REG_WIDTH = 31,
	parameter OUT_WIDTH = 11,
	parameter SEED = 24218329
)
(
	input wire clk,
	input wire rst,
	output wire [OUT_WIDTH - 1:0] random
);
reg [REG_WIDTH - 1:0] rand = SEED;
wire feedback;

assign feedback = !(rand[3] ^ rand[0]);

always @(posedge clk)
	if (rst)
		rand <= SEED;
	else
		rand <= {feedback, rand[REG_WIDTH - 1:1]};

assign random = rand[OUT_WIDTH - 1:0];
endmodule


