// gen_padder.v
// Generic Pad
// This module is used for converting integers into 16Q32 form.
// Usage: gen_adder #(.IN_WIDTH(), .OUT_WIDTH(), .L_PAD_WIDTH(), .R_PAD_WIDTH()) pad_0 (.in(), .out()); 
module gen_padder
#(
	parameter IN_WIDTH = 12,
	parameter OUT_WIDTH = 48,
	parameter L_PAD_WIDTH = 4,
	parameter R_PAD_WIDTH = 32
)
(
	input wire [IN_WIDTH - 1:0] in,
	output wire [OUT_WIDTH - 1:0] out
);
	// reg [L_PAD_WIDTH - 1 :0] left_pad;
	// wire [L_PAD_WIDTH - 1:0] left_zeros_pad = {L_PAD_WIDTH{1'b0}};
	// wire [L_PAD_WIDTH - 1:0] left_ones_pad = {L_PAD_WIDTH{1'b1}};

	assign out = {{4{1'b0}}, in, {R_PAD_WIDTH{1'b0}}};
	
	
	// always @(in)
	// begin
	// 	if (in[IN_WIDTH-1])
	// 	begin
	// 		left_pad = left_ones_pad;
	// 	end
	// 	else
	// 	begin
	// 		left_pad = left_zeros_pad;
	// 	end
	// end

endmodule
