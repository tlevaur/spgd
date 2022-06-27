module gen_padder
#(
	parameter IN_WIDTH = 12,
	parameter OUT_WIDTH = 64,
	parameter L_PAD_WIDTH = 4,
	parameter R_PAD_WIDTH = 48
)
(
	input wire [IN_WIDTH - 1:0] in,
	output wire [OUT_WIDTH - 1:0] out
);
	// reg [L_PAD_WIDTH - 1 :0] left_pad;
	// wire [L_PAD_WIDTH - 1:0] left_zeros_pad = {L_PAD_WIDTH{1'b0}};
	// wire [L_PAD_WIDTH - 1:0] left_ones_pad = {L_PAD_WIDTH{1'b1}};
	wire [OUT_WIDTH - 1:0] PADDER_OUT;
	wire [OUT_WIDTH : 0] adder_out;

	reg [OUT_WIDTH - 1:0] step_correction = 64'hFFFF_8000_0000_0000;
	// reg [OUT_WIDTH - 1:0] step_correction = 64'h0000_0000_0000_0000;

	assign PADDER_OUT = {{4{1'b0}}, in, {R_PAD_WIDTH{1'b0}}};
	
	gen_adder #(.IN_WIDTH(OUT_WIDTH)) ADD0 (.a(PADDER_OUT) , .b(step_correction), .s(adder_out));

	assign out = adder_out[OUT_WIDTH -1 : 0];
	
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
