module custom_gen_subber
#(
	parameter IN_WIDTH = 32,
	parameter OUT_WIDTH = IN_WIDTH + 1
)
(
	input wire [IN_WIDTH - 1:0] a,
	input wire [IN_WIDTH - 1:0] b,
	output wire [IN_WIDTH - 1:0] s
);
	reg [OUT_WIDTH - 1:0] int_s;
	assign s = int_s [IN_WIDTH - 1:0];
	always @(a or b)
	begin
		int_s <= a - b;
	end	
endmodule
