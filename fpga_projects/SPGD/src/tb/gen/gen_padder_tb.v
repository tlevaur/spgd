module gen_padder_tb;

gen_padder #(
	.IN_WIDTH(),
	.OUT_WIDTH(),
	.L_PAD_WIDTH(),
	.R_PAD_WIDTH()
) PAD0 (
	.in(),
	.out()
);

endmodule
