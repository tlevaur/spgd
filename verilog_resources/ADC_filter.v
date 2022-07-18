module ADC_filter
#(
	parameter ADC_WIDTH = 12
)
(
	input [ADC_WIDTH - 1:0] ADC_in,
	input ADC_clk,
	output [ADC_WIDTH - 1:0] ADC_out
);

	wire [ADC_WIDTH - 1:0] reg_0_out;
	wire [ADC_WIDTH - 1:0] reg_1_out;
	wire [ADC_WIDTH - 1:0] reg_2_out;
	wire [ADC_WIDTH - 1:0] reg_3_out;

	wire [ADC_WIDTH - 1:0] reg_4_out;
	wire [ADC_WIDTH - 1:0] reg_5_out;
	wire [ADC_WIDTH - 1:0] reg_6_out;
	wire [ADC_WIDTH - 1:0] reg_7_out;

	wire [ADC_WIDTH - 1:0] reg_8_out;
	wire [ADC_WIDTH - 1:0] reg_9_out;
	wire [ADC_WIDTH - 1:0] reg_10_out;
	wire [ADC_WIDTH - 1:0] reg_11_out;

	wire [ADC_WIDTH - 1:0] reg_12_out;
	wire [ADC_WIDTH - 1:0] reg_13_out;
	wire [ADC_WIDTH - 1:0] reg_14_out;
	wire [ADC_WIDTH - 1:0] reg_15_out;
	
	wire [ADC_WIDTH:0] add0_out;
	wire [ADC_WIDTH:0] add1_out;
	wire [ADC_WIDTH:0] add2_out;
	wire [ADC_WIDTH:0] add3_out;

	wire [ADC_WIDTH:0] add4_out;
	wire [ADC_WIDTH:0] add5_out;
	wire [ADC_WIDTH:0] add6_out;
	wire [ADC_WIDTH:0] add7_out;

	wire [ADC_WIDTH + 1:0] add_b_0_out;
	wire [ADC_WIDTH + 1:0] add_b_1_out;
	wire [ADC_WIDTH + 1:0] add_b_2_out;
	wire [ADC_WIDTH + 1:0] add_b_3_out;

	wire [ADC_WIDTH + 2:0] add_c_0_out;
	wire [ADC_WIDTH + 2:0] add_c_1_out;

	wire [ADC_WIDTH + 3:0] top_add_out;

	assign ADC_out = top_add_out[ADC_WIDTH+3:4];

	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_0 (.ADC_clk(ADC_clk), .data_in(ADC_in), .data_out(reg_0_out));
	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_1 (.ADC_clk(ADC_clk), .data_in(reg_0_out), .data_out(reg_1_out));
	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_2 (.ADC_clk(ADC_clk), .data_in(reg_1_out), .data_out(reg_2_out));
	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_3 (.ADC_clk(ADC_clk), .data_in(reg_2_out), .data_out(reg_3_out));

	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_4 (.ADC_clk(ADC_clk), .data_in(reg_3_out), .data_out(reg_4_out));
	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_5 (.ADC_clk(ADC_clk), .data_in(reg_4_out), .data_out(reg_5_out));
	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_6 (.ADC_clk(ADC_clk), .data_in(reg_5_out), .data_out(reg_6_out));
	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_7 (.ADC_clk(ADC_clk), .data_in(reg_6_out), .data_out(reg_7_out));

	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_8 (.ADC_clk(ADC_clk), .data_in(reg_7_out), .data_out(reg_8_out));
	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_9 (.ADC_clk(ADC_clk), .data_in(reg_8_out), .data_out(reg_9_out));
	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_10 (.ADC_clk(ADC_clk), .data_in(reg_9_out), .data_out(reg_10_out));
	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_11 (.ADC_clk(ADC_clk), .data_in(reg_10_out), .data_out(reg_11_out));

	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_12 (.ADC_clk(ADC_clk), .data_in(reg_11_out), .data_out(reg_12_out));
	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_13 (.ADC_clk(ADC_clk), .data_in(reg_12_out), .data_out(reg_13_out));
	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_14 (.ADC_clk(ADC_clk), .data_in(reg_13_out), .data_out(reg_14_out));
	ADC_shift_reg #(.ADC_WIDTH(ADC_WIDTH)) shift_15 (.ADC_clk(ADC_clk), .data_in(reg_14_out), .data_out(reg_15_out));

	gen_adder #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(ADC_WIDTH+1)) add_0 (.a(reg_0_out), .b(reg_1_out), .s(add0_out));
	gen_adder #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(ADC_WIDTH+1)) add_1 (.a(reg_2_out), .b(reg_3_out), .s(add1_out));
	gen_adder #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(ADC_WIDTH+1)) add_2 (.a(reg_4_out), .b(reg_5_out), .s(add2_out));
	gen_adder #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(ADC_WIDTH+1)) add_3 (.a(reg_6_out), .b(reg_7_out), .s(add3_out));

	gen_adder #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(ADC_WIDTH+1)) add_4 (.a(reg_8_out), .b(reg_9_out), .s(add4_out));
	gen_adder #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(ADC_WIDTH+1)) add_5 (.a(reg_10_out), .b(reg_11_out), .s(add5_out));
	gen_adder #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(ADC_WIDTH+1)) add_6 (.a(reg_12_out), .b(reg_13_out), .s(add6_out));
	gen_adder #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(ADC_WIDTH+1)) add_7 (.a(reg_14_out), .b(reg_15_out), .s(add7_out));

	gen_adder #(.IN_WIDTH(ADC_WIDTH+1), .OUT_WIDTH(ADC_WIDTH+2)) add_b_0 (.a(add0_out), .b(add1_out), .s(add_b_0_out));
	gen_adder #(.IN_WIDTH(ADC_WIDTH+1), .OUT_WIDTH(ADC_WIDTH+2)) add_b_1 (.a(add2_out), .b(add3_out), .s(add_b_1_out));
	gen_adder #(.IN_WIDTH(ADC_WIDTH+1), .OUT_WIDTH(ADC_WIDTH+2)) add_b_2 (.a(add4_out), .b(add5_out), .s(add_b_2_out));
	gen_adder #(.IN_WIDTH(ADC_WIDTH+1), .OUT_WIDTH(ADC_WIDTH+2)) add_b_3 (.a(add6_out), .b(add7_out), .s(add_b_3_out));

	gen_adder #(.IN_WIDTH(ADC_WIDTH+2), .OUT_WIDTH(ADC_WIDTH+3)) add_c_0 (.a(add_b_0_out), .b(add_b_1_out), .s(add_c_0_out));
	gen_adder #(.IN_WIDTH(ADC_WIDTH+2), .OUT_WIDTH(ADC_WIDTH+3)) add_c_1 (.a(add_b_2_out), .b(add_b_3_out), .s(add_c_1_out));

	gen_adder #(.IN_WIDTH(ADC_WIDTH+3), .OUT_WIDTH(ADC_WIDTH+4)) top_add (.a(add_c_0_out), .b(add_c_1_out), .s(top_add_out));

endmodule
