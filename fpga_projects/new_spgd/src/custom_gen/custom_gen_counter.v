module custom_gen_counter
#(
	parameter DATA_WIDTH = 5
)
(
	input clk,
	input en,
	output [DATA_WIDTH - 1:0] count
);

	reg [DATA_WIDTH - 1:0] int_count = 5'b00000;

	always @(posedge clk)
	begin
		if(!en)
		begin
			int_count = 0;
		end
		else
		begin
			int_count = int_count + 1;
		end
	end

	assign count = int_count;
endmodule
