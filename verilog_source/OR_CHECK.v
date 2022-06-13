module OR_CHECK
#(
	parameter IN_WIDTH = 14
)
(
	input [IN_WIDTH - 1:0] a,
	input [IN_WIDTH - 1:0] b,
	input sub_sel, // 0 = add, 1 = sub
	input [IN_WIDTH - 1:0] request,
	output [IN_WIDTH - 1:0] actual
);

    localparam ones_field = {(IN_WIDTH-1){1'b1}};
	reg [IN_WIDTH - 1:0] min_out_val = {IN_WIDTH{1'b0}};
	reg [IN_WIDTH - 1:0] max_out_val = ones_field;

	reg [IN_WIDTH - 1:0] out_val;
	
	assign actual = out_val;

	always @(a or b or request)
	begin
		if (~request[IN_WIDTH - 1])
		begin
			out_val = request;
		end
		else
		begin
			if (~sub_sel && ~b[IN_WIDTH -1]) // if add and not neg
			begin
				out_val = max_out_val;
			end
			else if (~sub_sel && b[IN_WIDTH -1]) // if add and neg
			begin
				out_val = min_out_val;
			end
			else if (sub_sel && ~b[IN_WIDTH -1]) // if sub and not neg
			begin
				out_val = min_out_val;
			end
			else // if sub and neg
			begin
				out_val = max_out_val;
			end
		end
	end
endmodule
