module gen_reg_tb;

gen_reg #(
	.DATA_WIDTH(12)
) REG0 (
	.data_in(),
	.clk(),
	.wrt(),
	.rst(),
	.data_out()
);

endmodule

