module top_math
#(
	parameter ADC_WIDTH = 12,
	parameter DAC_WIDTH = 14,
	parameter PADDED_WIDTH = 16
)
(
	input [ADC_WIDTH - 1:0] J_p,
	input [ADC_WIDTH - 1:0] J_m,
	input [DAC_WIDTH - 1:0] U0,
	input [DAC_WIDTH - 1:0] U1,
	input [DAC_WIDTH - 1:0] DELTA_U0,
	input [DAC_WIDTH - 1:0] DELTA_U1,
	output [DAC_WIDTH - 1:0] new_U0,
	output [DAC_WIDTH - 1:0] new_U1
);

	reg [ADC_WIDTH - 1:0] GAIN = 12'h004;
	wire [PADDED_WIDTH - 1:0] padded_GAIN;

	wire [ADC_WIDTH - 1:0] DELTA_J;
	wire [PADDED_WIDTH - 1:0] padded_DELTA_J;
	

	wire [PADDED_WIDTH + PADDED_WIDTH - 1:0] DELTA_GAIN;
	wire [PADDED_WIDTH - 1:0] split_DELTA_GAIN;

	wire [PADDED_WIDTH - 1:0] padded_DELTA_U0;
	wire [PADDED_WIDTH - 1:0] padded_DELTA_U1;

	wire [PADDED_WIDTH + PADDED_WIDTH - 1:0] padded_U0_new_term;
	wire [PADDED_WIDTH + PADDED_WIDTH - 1:0] padded_U1_new_term;
	wire [DAC_WIDTH - 1:0] U0_new_term;
	wire [DAC_WIDTH - 1:0] U1_new_term;

	wire [DAC_WIDTH - 1:0] new_U_0;
	wire [DAC_WIDTH - 1:0] new_U_1;
	assign split_DELTA_GAIN = DELTA_GAIN[PADDED_WIDTH - 1:0];



	assign U0_new_term = padded_U0_new_term[DAC_WIDTH - 1:0];
	assign U1_new_term = padded_U1_new_term[DAC_WIDTH - 1:0];



	gen_subber #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(ADC_WIDTH)) j_delta(.a(J_p), .b(J_m), .s(DELTA_J));
	gen_l_padder #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(PADDED_WIDTH), .L_PAD_WIDTH(PADDED_WIDTH - ADC_WIDTH)) gain_pad(.in(DELTA_J), .out(padded_DELTA_J));
	gen_l_padder #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(PADDED_WIDTH), .L_PAD_WIDTH(PADDED_WIDTH - ADC_WIDTH)) delta_pad(.in(GAIN), .out(padded_GAIN));
	gen_mult #(.DATA_WIDTH(PADDED_WIDTH)) delta_gain(.a(padded_DELTA_J), .b(padded_GAIN), .p(DELTA_GAIN));

	gen_l_padder #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(PADDED_WIDTH), .L_PAD_WIDTH(PADDED_WIDTH - DAC_WIDTH)) DELTA_U0_pad(.in(DELTA_U0), .out(padded_DELTA_U0));
	gen_l_padder #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(PADDED_WIDTH), .L_PAD_WIDTH(PADDED_WIDTH - DAC_WIDTH)) DELTA_U1_pad(.in(DELTA_U1), .out(padded_DELTA_U1));

	gen_mult #(.DATA_WIDTH(PADDED_WIDTH)) U_MULT_0(.a(split_DELTA_GAIN), .b(padded_DELTA_U0), .p(padded_U0_new_term));
	gen_mult #(.DATA_WIDTH(PADDED_WIDTH)) U_MULT_1(.a(split_DELTA_GAIN), .b(padded_DELTA_U1), .p(padded_U1_new_term));

	gen_adder #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(DAC_WIDTH)) NEW_U_0(.a(U0), .b(U0_new_term), .s(new_U_0));
	gen_adder #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(DAC_WIDTH)) NEW_U_1(.a(U1), .b(U1_new_term), .s(new_U_1));


	OR_CHECK #(.IN_WIDTH(DAC_WIDTH)) U0_UPDATE_CHECK(.a(U0), .b(U0_new_term), .sub_sel(1'b0), .request(new_U_0), .actual(new_U0));
	OR_CHECK #(.IN_WIDTH(DAC_WIDTH)) U1_UPDATE_CHECK(.a(U1), .b(U1_new_term), .sub_sel(1'b0), .request(new_U_1), .actual(new_U1));
endmodule
