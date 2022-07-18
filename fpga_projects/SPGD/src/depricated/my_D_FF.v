module my_D_FF
(
	input d,
	input clk,
	input rst,
	output q
);
reg int_q;

assign q = int_q;

always @(posedge clk or negedge rst)
	if (~rst)
	begin
		int_q = 1'b0;
	end
	else
	begin
		int_q = d;
	end

endmodule
