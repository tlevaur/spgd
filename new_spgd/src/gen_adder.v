// gen_adder.v
// Generic Adder
// Takes two inputs, a and b, and output their sum on s.
// Usage: gen_adder #(.IN_WIDTH(), .OUT_WIDTH()) add_0(.a(), .b(), .s())
module gen_adder
#(
	parameter IN_WIDTH = 32,
	parameter OUT_WIDTH = IN_WIDTH + 1
)
(
	input wire [IN_WIDTH - 1:0] a,
	input wire [IN_WIDTH - 1:0] b,
	output wire [OUT_WIDTH - 1:0] s
);
	reg [OUT_WIDTH - 1:0] int_s;
	assign s = int_s;
	always @(a or b)
	begin
		int_s <= a + b;
	end	
endmodule
