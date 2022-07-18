module pulse_FSM
(
	input s,
	input clk,
	input rst,
	output P,
	output L,
	output A,
	output B
);

wire ad;
wire bd;

my_D_FF FF_0(.d(ad), .clk(clk), .rst(rst), .q(A));
my_D_FF FF_1(.d(bd), .clk(clk), .rst(rst), .q(B));

assign ad = ~B&s | A&~B | A&~s;
assign bd = A | B&s;
assign P = A&~B;
assign L = B;

endmodule
