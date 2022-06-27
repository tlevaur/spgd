module gen_counter
#(
	parameter DATA_WIDTH = 32
)
(
	input clk,
	input en,
	input [DATA_WIDTH - 1:0] wait_val,
	output f
);

	reg [DATA_WIDTH - 1:0] count = 0;
	reg F_O = 0;
	assign f = F_O;
	always @ (posedge clk)
	begin
	if (!en)
	begin
		count <= 0;
		F_O = 0;
	end
	else if (count < wait_val)
		count <= count + 1;
	else if (count >= wait_val)
		F_O = 1;
	end
endmodule
