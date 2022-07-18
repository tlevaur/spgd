module U_adds
#(
	parameter DAC_WIDTH = 14
)
(
	input [DAC_WIDTH - 1:0] U0,
	input [DAC_WIDTH - 1:0] U1,
	input [DAC_WIDTH - 1:0] DELTA_U0,
	input [DAC_WIDTH - 1:0] DELTA_U1,
	output [DAC_WIDTH - 1:0] U0_P,
	output [DAC_WIDTH - 1:0] U0_M,
	output [DAC_WIDTH - 1:0] U1_P,
	output [DAC_WIDTH - 1:0] U1_M	
);

wire [DAC_WIDTH - 1:0] U_0_P;
wire [DAC_WIDTH - 1:0] U_0_M;
wire [DAC_WIDTH - 1:0] U_1_P;
wire [DAC_WIDTH - 1:0] U_1_M;

gen_adder #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(DAC_WIDTH)) U_0_PLUS(.a(U0), .b(DELTA_U0), .s(U_0_P));
gen_subber #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(DAC_WIDTH)) U_0_MINUS(.a(U0), .b(DELTA_U0), .s(U_0_M));
gen_adder #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(DAC_WIDTH)) U_1_PLUS(.a(U1), .b(DELTA_U1), .s(U_1_P));
gen_subber #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(DAC_WIDTH)) U_1_MINUS(.a(U1), .b(DELTA_U1), .s(U_1_M));

OR_CHECK #(.IN_WIDTH(DAC_WIDTH)) U0_PLUS_CHECK(.a(U0), .b(DELTA_U0), .sub_sel(1'b0), .request(U_0_P), .actual(U0_P));
OR_CHECK #(.IN_WIDTH(DAC_WIDTH)) U0_MINUS_CHECK(.a(U0), .b(DELTA_U0), .sub_sel(1'b1), .request(U_0_M), .actual(U0_M));

OR_CHECK #(.IN_WIDTH(DAC_WIDTH)) U1_PLUS_CHECK(.a(U1), .b(DELTA_U1), .sub_sel(1'b0), .request(U_1_P), .actual(U1_P));
OR_CHECK #(.IN_WIDTH(DAC_WIDTH)) U1_MINUS_CHECK(.a(U1), .b(DELTA_U1), .sub_sel(1'b1), .request(U_1_M), .actual(U1_M));
endmodule


