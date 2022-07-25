module pulse_counter
#(
	parameter DATA_WIDTH = 32
)
(
	input  clk,
	input  en,
	output  [DATA_WIDTH - 1 : 0] count_val
);

	reg [DATA_WIDTH - 1 : 0] count = 0;
	assign count_val = count;

always @ (posedge clk)
	begin
	if (!en)
	begin
		count <= 0;
	end
	else
	begin
		count = count + 1;
	end
	end
endmodule
