module custom_gen_timer #(
	
) (
	input en,
	input clk,
	// input rst,
	output [31:0] J_time // Shift once for U_time
);

	reg [31:0] final_count = {32{1'b0}};

	assign J_time = {2'b00, final_count[31:2]};

	wire [31:0] count_out;

	custom_gen_counter #(
		.DATA_WIDTH(32)
	) COUNT0 (
		.clk(clk),
		.en(en),
		.count(count_out)
	);
	always @(negedge en) begin
		final_count = count_out + 1'b1;
	end

endmodule