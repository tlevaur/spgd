module gen_mult
#(
	parameter DATA_WIDTH = 16
)
(
	input [DATA_WIDTH - 1:0] a,
	input [DATA_WIDTH - 1:0] b,
	output [DATA_WIDTH + DATA_WIDTH - 1:0] p
);
	reg signed [DATA_WIDTH + DATA_WIDTH - 1:0] int_p;

	reg signed [DATA_WIDTH - 1:0] A_in;
	reg signed [DATA_WIDTH - 1:0] B_in;
	assign p = int_p;
	always @(a or b)
	begin
	   A_in = a;
	   B_in = b;
	   int_p = A_in * B_in; 
	end
endmodule
