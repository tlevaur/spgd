module new_top
#(
	parameter LED_WIDTH = 8,
	parameter ADC_WIDTH = 12,
	parameter DAC_WIDTH = 14,
	parameter GPIO_WIDTH = 32,
	parameter PADDED_WIDTH = 16,
	parameter COUNTER_WIDTH = 4,
	parameter A_SEED1 = 697757461,
	parameter A_SEED2 = 1885540239,
	parameter A_SEED3 = 1505976904,
	parameter A_SEED4 = 2693445,
	parameter B_SEED1 = 1278945763,
	parameter B_SEED2 = 1666777420,
	parameter B_SEED3 = 2568756,
	parameter B_SEED4 = 845689748,
	parameter ADC_LATENCY_CYCLES = 10,
	parameter DAC_LATENCY_CYCLES = 7
)
(
	input TRIG_IN,
	input ADC_CLK,
	input [ADC_WIDTH - 1:0] ADC_IN,
	input [GPIO_WIDTH - 1:0] GPIO_IN,
	output DAC_SPI_SDIO,
	output DAC_SPI_CLK,
	output DAC_SPI_CSB,
	output DAC_SPI_RST,
	output [DAC_WIDTH - 1:0] DAC_A_OUT,
	output [DAC_WIDTH - 1:0] DAC_B_OUT,
	output [GPIO_WIDTH - 1:0] GPIO_OUT,
	output [LED_WIDTH - 1:0] LED_OUT
);

reg [ADC_WIDTH - 1:0] GAIN = 12'h004;

wire [ADC_WIDTH - 1:0] JP_O;
wire [ADC_WIDTH - 1:0] JM_O;
wire [ADC_WIDTH - 1:0] DELTA_J;

wire [DAC_WIDTH - 1:0] U_0;
wire [DAC_WIDTH - 1:0] U_1;
wire [DAC_WIDTH - 1:0] new_U_0;
wire [DAC_WIDTH - 1:0] new_U_1;

wire [DAC_WIDTH - 1:0] U_0_P;
wire [DAC_WIDTH - 1:0] U_0_M;
wire [DAC_WIDTH - 1:0] U_1_P;
wire [DAC_WIDTH - 1:0] U_1_M;

wire [DAC_WIDTH - 1:0] DELTA_U_0;
wire [DAC_WIDTH - 1:0] DELTA_U_1;

wire [DAC_WIDTH - 1:0] proc_U_0_P;
wire [DAC_WIDTH - 1:0] proc_U_0_M;
wire [DAC_WIDTH - 1:0] proc_new_U_0;
wire [DAC_WIDTH - 1:0] proc_U_1_P;
wire [DAC_WIDTH - 1:0] proc_U_1_M;
wire [DAC_WIDTH - 1:0] proc_new_U_1;

wire [PADDED_WIDTH - 1:0] padded_GAIN;
wire [PADDED_WIDTH - 1:0] padded_DELTA_J;
wire [PADDED_WIDTH + PADDED_WIDTH - 1:0] DELTA_GAIN;
wire [PADDED_WIDTH - 1:0] split_DELTA_GAIN;
wire [PADDED_WIDTH - 1:0] padded_DELTA_U0;
wire [PADDED_WIDTH - 1:0] padded_DELTA_U1;
wire [PADDED_WIDTH + PADDED_WIDTH - 1:0] padded_U0_new_term;
wire [PADDED_WIDTH + PADDED_WIDTH - 1:0] padded_U1_new_term;
wire [DAC_WIDTH - 1:0] U0_new_term;
wire [DAC_WIDTH - 1:0] U1_new_term;

wire [1:0] FSM_DAC_SEL;
wire FSM_TRIG_RST;
wire FSM_U_WRT;
wire FSM_JP_WRT;
wire FSM_JM_WRT;
wire FSM_RST;
wire FSM_ADC_COUNTER_RST;
wire FSM_ADC_COUNTER_START;
wire FSM_ADC_COUNTER_TRIG;
wire FSM_DAC_COUNTER_RST;
wire FSM_DAC_COUNTER_START;
wire FSM_DAC_COUNTER_TRIG;
wire [15:0] FSM_STATE;

wire triggered;

assign GPIO_OUT = {16'h0000, FSM_STATE};
assign LED_OUT = FSM_STATE[7:0];

assign split_DELTA_GAIN = DELTA_GAIN[PADDED_WIDTH - 1:0];
assign U0_new_term = padded_U0_new_term[DAC_WIDTH - 1:0];
assign U1_new_term = padded_U1_new_term[DAC_WIDTH - 1:0];

gen_reg #(.DATA_WIDTH(DAC_WIDTH)) U0_REG(.data_in(proc_new_U_0), .clk(ADC_CLK), .wrt(FSM_U_WRT), .rst(FSM_RST), .data_out(U_0));
gen_reg #(.DATA_WIDTH(DAC_WIDTH)) U1_REG(.data_in(proc_new_U_1), .clk(ADC_CLK), .wrt(FSM_U_WRT), .rst(FSM_RST), .data_out(U_1));
gen_reg #(.DATA_WIDTH(ADC_WIDTH)) JP_REG(.data_in(ADC_IN), .clk(ADC_CLK), .wrt(FSM_JP_WRT), .rst(FSM_RST), .data_out(JP_O));
gen_reg #(.DATA_WIDTH(ADC_WIDTH)) JM_REG(.data_in(ADC_IN), .clk(ADC_CLK), .wrt(FSM_JM_WRT), .rst(FSM_RST), .data_out(JM_O));

gen_subber #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(ADC_WIDTH)) j_delta(.a(JP_O), .b(JM_O), .s(DELTA_J));
gen_l_padder #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(PADDED_WIDTH), .L_PAD_WIDTH(PADDED_WIDTH - ADC_WIDTH)) gain_pad(.in(DELTA_J), .out(padded_DELTA_J));
gen_l_padder #(.IN_WIDTH(ADC_WIDTH), .OUT_WIDTH(PADDED_WIDTH), .L_PAD_WIDTH(PADDED_WIDTH - ADC_WIDTH)) delta_pad(.in(GAIN), .out(padded_GAIN));
gen_mult #(.DATA_WIDTH(PADDED_WIDTH)) delta_gain(.a(padded_DELTA_J), .b(padded_GAIN), .p(DELTA_GAIN));

gen_adder #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(DAC_WIDTH)) U_0_PLUS(.a(U_0), .b(DELTA_U_0), .s(U_0_P));
gen_subber #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(DAC_WIDTH)) U_0_MINUS(.a(U_0), .b(DELTA_U_0), .s(U_0_M));
gen_adder #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(DAC_WIDTH)) U_1_PLUS(.a(U_1), .b(DELTA_U_1), .s(U_1_P));
gen_subber #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(DAC_WIDTH)) U_1_MINUS(.a(U_1), .b(DELTA_U_1), .s(U_1_M));

gen_l_padder #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(PADDED_WIDTH), .L_PAD_WIDTH(PADDED_WIDTH - DAC_WIDTH)) DELTA_U0_pad(.in(DELTA_U_0), .out(padded_DELTA_U0));
gen_l_padder #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(PADDED_WIDTH), .L_PAD_WIDTH(PADDED_WIDTH - DAC_WIDTH)) DELTA_U1_pad(.in(DELTA_U_1), .out(padded_DELTA_U1));

gen_mult #(.DATA_WIDTH(PADDED_WIDTH)) U_MULT_0(.a(split_DELTA_GAIN), .b(padded_DELTA_U0), .p(padded_U0_new_term));
gen_mult #(.DATA_WIDTH(PADDED_WIDTH)) U_MULT_1(.a(split_DELTA_GAIN), .b(padded_DELTA_U1), .p(padded_U1_new_term));

gen_adder #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(DAC_WIDTH)) NEW_U_0(.a(U_0), .b(U0_new_term), .s(new_U_0));
gen_adder #(.IN_WIDTH(DAC_WIDTH), .OUT_WIDTH(DAC_WIDTH)) NEW_U_1(.a(U_1), .b(U1_new_term), .s(new_U_1));

DAC_MUX #(.DATA_WIDTH(DAC_WIDTH)) DAC_CON(.adc_clk(ADC_CLK), .DAC_SEL(FSM_DAC_SEL), .U0(U_0), .U1(U_1), .U0_p(proc_U_0_P), .U0_m(proc_U_0_M), .U1_p(proc_U_1_P), .U1_m(proc_U_1_M), .DAC_A_OUT(DAC_A_OUT), .DAC_B_OUT(DAC_B_OUT));


gen_counter #(.COUNT_DATA_WIDTH(COUNTER_WIDTH), .COUNTER_TRIG_VAL(ADC_LATENCY_CYCLES)) ADC_SAMP_COUNTER(.clk(ADC_CLK), .rst(FSM_ADC_COUNTER_RST), .en(FSM_ADC_COUNTER_START), .f(FSM_ADC_COUNTER_TRIG));
gen_counter #(.COUNT_DATA_WIDTH(COUNTER_WIDTH), .COUNTER_TRIG_VAL(DAC_LATENCY_CYCLES)) DAC_SAMP_COUNTER(.clk(ADC_CLK), .rst(FSM_DAC_COUNTER_RST), .en(FSM_DAC_COUNTER_START), .f(FSM_DAC_COUNTER_TRIG));

TOP_RNG #(.OUT_WIDTH(DAC_WIDTH), .SEED_WIDTH(GPIO_WIDTH), .A_SEED1(A_SEED1), .A_SEED2(A_SEED2), .A_SEED3(A_SEED3), .A_SEED4(A_SEED4), 
	.B_SEED1(B_SEED1), .B_SEED2(B_SEED2), .B_SEED3(B_SEED3), .B_SEED4(B_SEED4)) DELTA_U(.clk(triggered), .rst(FSM_RST), .out_0(DELTA_U_0), .out_1(DELTA_U_1));

FSM CON_BOX(.TRIG_IN(triggered), .adc_clk(ADC_CLK), .start(GPIO_IN[0]), .FSM_ADC_COUNTER_TRIG(FSM_ADC_COUNTER_TRIG), .FSM_DAC_COUNTER_TRIG(FSM_DAC_COUNTER_TRIG),
.FSM_JP_WRT(FSM_JP_WRT), .FSM_JM_WRT(FSM_JM_WRT), .FSM_REG_RST(FSM_RST), .FSM_U_WRT(FSM_U_WRT), .FSM_DAC_SEL(FSM_DAC_SEL), .FSM_ADC_COUNTER_START(FSM_ADC_COUNTER_START), 
.FSM_ADC_COUNTER_RST(FSM_ADC_COUNTER_RST), .FSM_DAC_COUNTER_START(FSM_DAC_COUNTER_START), .FSM_DAC_COUNTER_RST(FSM_DAC_COUNTER_RST), .FSM_STATE(FSM_STATE));

pulse_FSM pulser(.s(TRIG_IN), .clk(ADC_CLK), .rst(GPIO_IN[0]), .P(triggered), .L(), .A(), .B());


OR_CHECK #(.IN_WIDTH(DAC_WIDTH)) U0_PLUS_CHECK(.a(U_0), .b(DELTA_U_0), .sub_sel(1'b0), .request(U_0_P), .actual(proc_U_0_P));
OR_CHECK #(.IN_WIDTH(DAC_WIDTH)) U0_MINUS_CHECK(.a(U_0), .b(DELTA_U_0), .sub_sel(1'b1), .request(U_0_M), .actual(proc_U_0_M));
OR_CHECK #(.IN_WIDTH(DAC_WIDTH)) U0_UPDATE_CHECK(.a(U_0), .b(U0_new_term), .sub_sel(1'b0), .request(new_U_0), .actual(proc_new_U_0));

OR_CHECK #(.IN_WIDTH(DAC_WIDTH)) U1_PLUS_CHECK(.a(U_1), .b(DELTA_U_1), .sub_sel(1'b0), .request(U_1_P), .actual(proc_U_1_P));
OR_CHECK #(.IN_WIDTH(DAC_WIDTH)) U1_MINUS_CHECK(.a(U_1), .b(DELTA_U_1), .sub_sel(1'b1), .request(U_1_M), .actual(proc_U_1_M));
OR_CHECK #(.IN_WIDTH(DAC_WIDTH)) U1_UPDATE_CHECK(.a(U_1), .b(U1_new_term), .sub_sel(1'b0), .request(new_U_1), .actual(proc_new_U_1));

	assign DAC_SPI_SDIO = 1;
	assign DAC_SPI_CLK = 0;
	assign DAC_SPI_CSB = 0;
	assign DAC_SPI_RST = 0;
endmodule
