module ADC_shift_reg
#(
	parameter ADC_WIDTH = 12
)
(
	input ADC_clk,
	input [ADC_WIDTH - 1:0] data_in,
	output [ADC_WIDTH - 1:0] data_out
);
	reg [ADC_WIDTH - 1:0] int_data_reg = {ADC_WIDTH{1'b0}};
	assign data_out = int_data_reg;
	always @(posedge ADC_clk)
	begin
		int_data_reg = data_in;
	end
endmodule
