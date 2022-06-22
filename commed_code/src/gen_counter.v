// gen_counter.v
// Generic Counter
// This module takes three inputs, a clock, an enable, and a wait time.
// The internal count register is cleared to zero whenever the enable pin is low.
// This module gives a single output, when the current count has exceeded
// the value present on the wait_val pins, the output f will be high.
// Usage: gen_counter #(.DATA_WIDTH()) count_0(.clk(), .en(), .wait_val(), .f())
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


