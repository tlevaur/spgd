module DAC_OR_CHECK
#(
	parameter DAC_WIDTH = 14
)
(
	input [DAC_WIDTH - 1:0] DAC_in,
	output [DAC_WIDTH - 1:0] DAC_out
);
	reg [DAC_WIDTH - 1:0] int_DAC_reg = 14'h0000;
	assign DAC_out = int_DAC_reg;
	always @(DAC_in)
	begin
		if(~DAC_in[DAC_WIDTH-1])
			int_DAC_reg = 14'h0000;
		else
			int_DAC_reg = DAC_in;
	end
endmodule
