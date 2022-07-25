module gen_counter
#(
	parameter COUNT_DATA_WIDTH = 4,
	parameter COUNTER_TRIG_VAL = 10
)
(
	input wire clk,
	input wire en,
	output wire f
);

	reg [COUNT_DATA_WIDTH - 1:0] count = 0;
	reg F_O = 0;
	assign f = F_O;
	always @ (posedge clk)
	begin
	if (!en)
	begin
		count <= 0;
		F_O = 0;
	end
	else if (count < COUNTER_TRIG_VAL)
		count <= count + 1;
	else if (count >= COUNTER_TRIG_VAL)
		F_O = 1;
	end
endmodule
