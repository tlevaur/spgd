module newer_top
#(
	parameter LED_WIDTH = 8,
	parameter ADC_WIDTH = 12,
	parameter DAC_WIDTH = 14,
	parameter GPIO_WIDTH = 32,
	parameter PADDED_WIDTH = 16,
	parameter A_SEED1 = 697757461,
	parameter A_SEED2 = 1885540239,
	parameter A_SEED3 = 1505976904,
	parameter A_SEED4 = 2693445,
	parameter B_SEED1 = 1278945763,
	parameter B_SEED2 = 1666777420,
	parameter B_SEED3 = 2568756,
	parameter B_SEED4 = 845689748,
	parameter A_COUNT_VALUE = 6250,
	parameter B_COUNT_VALUE = 6250,
	parameter MATH_WAIT_VALUE = 5
)
(
	input TRIG_IN,
	input ADC_CLK,
	input [ADC_WIDTH - 1:0] ADC_A,
	input [ADC_WIDTH - 1:0] ADC_B,	
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

wire [ADC_WIDTH - 1:0] JP_O;
wire [ADC_WIDTH - 1:0] JM_O;

wire [DAC_WIDTH - 1:0] U_0;
wire [DAC_WIDTH - 1:0] U_1;
wire [DAC_WIDTH - 1:0] new_U_0;
wire [DAC_WIDTH - 1:0] new_U_1;

//wire [DAC_WIDTH - 1:0] U_0_P;
//wire [DAC_WIDTH - 1:0] U_0_M;
//wire [DAC_WIDTH - 1:0] U_1_P;
//wire [DAC_WIDTH - 1:0] U_1_M;

wire [DAC_WIDTH - 1:0] DELTA_U_0;
wire [DAC_WIDTH - 1:0] DELTA_U_1;

wire [DAC_WIDTH - 1:0] proc_U_0_P;
wire [DAC_WIDTH - 1:0] proc_U_0_M;
wire [DAC_WIDTH - 1:0] proc_new_U_0;
wire [DAC_WIDTH - 1:0] proc_U_1_P;
wire [DAC_WIDTH - 1:0] proc_U_1_M;
wire [DAC_WIDTH - 1:0] proc_new_U_1;

wire [DAC_WIDTH - 1:0] SPGD_OUT_0;
wire [DAC_WIDTH - 1:0] SPGD_OUT_1;

wire [2:0] TOP_DAC_SEL;

wire [1:0] FSM_DAC_SEL;
wire FSM_U_WRT;
wire FSM_JP_WRT;
wire FSM_JM_WRT;
wire [5:0] FSM_STATE;

wire TOP_RST;

wire triggered;

reg [DAC_WIDTH - 1:0] DAC_ZERO = {DAC_WIDTH{1'b0}};

//assign GPIO_OUT = {14'b000000_00000000, ADC_IN, FSM_STATE};
assign LED_OUT = {2'b00, FSM_STATE[5:0]};

gen_reg #(.DATA_WIDTH(DAC_WIDTH)) U0_REG(.data_in(proc_new_U_0), .clk(ADC_CLK), .wrt(FSM_U_WRT), .rst(TOP_RST), .data_out(U_0));
gen_reg #(.DATA_WIDTH(DAC_WIDTH)) U1_REG(.data_in(proc_new_U_1), .clk(ADC_CLK), .wrt(FSM_U_WRT), .rst(TOP_RST), .data_out(U_1));
gen_reg #(.DATA_WIDTH(ADC_WIDTH)) JP_REG(.data_in(ADC_A), .clk(ADC_CLK), .wrt(FSM_JP_WRT), .rst(TOP_RST), .data_out(JP_O));
gen_reg #(.DATA_WIDTH(ADC_WIDTH)) JM_REG(.data_in(ADC_A), .clk(ADC_CLK), .wrt(FSM_JM_WRT), .rst(TOP_RST), .data_out(JM_O));

DAC_MUX #(.DATA_WIDTH(DAC_WIDTH)) DAC_CON(.adc_clk(ADC_CLK), .DAC_SEL(FSM_DAC_SEL), .U0(U_0), .U1(U_1), .U0_p(proc_U_0_P), .U0_m(proc_U_0_M), .U1_p(proc_U_1_P), .U1_m(proc_U_1_M), .DAC_A_OUT(SPGD_OUT_0), .DAC_B_OUT(SPGD_OUT_1));

DAC_SHIM #(.DAC_WIDTH(DAC_WIDTH), .ADC_WIDTH(ADC_WIDTH), .GPIO_WIDTH(GPIO_WIDTH)) shim(.DAC_SEL(TOP_DAC_SEL), .SPGD_A_OUT(SPGD_OUT_0), .SPGD_B_OUT(SPGD_OUT_1), .PC_A_OUT(DAC_ZERO), .PC_B_OUT(DAC_ZERO), .ADC_A(ADC_A), .ADC_B(ADC_B), .GPIO_IN(GPIO_IN), .DAC_A_OUT(DAC_A_OUT), .DAC_B_OUT(DAC_B_OUT)); 

top_math #(.ADC_WIDTH(ADC_WIDTH), .DAC_WIDTH(DAC_WIDTH), .PADDED_WIDTH(PADDED_WIDTH)) math0(.J_p(JP_O), .J_m(JM_O), .U0(U_0), .U1(U_1), .DELTA_U0(DELTA_U_0), .DELTA_U1(DELTA_U_1), .new_U0(proc_new_U_0), .new_U1(proc_new_U_1));

U_adds #(.DAC_WIDTH(DAC_WIDTH)) U_addsub(.U0(U_0), .U1(U_1), .DELTA_U0(DELTA_U_0), .DELTA_U1(DELTA_U_1), .U0_P(proc_U_0_P), .U0_M(proc_U_0_M), .U1_P(proc_U_1_P), .U1_M(proc_U_1_M));

TOP_RNG #(.OUT_WIDTH(DAC_WIDTH), .SEED_WIDTH(GPIO_WIDTH), .A_SEED1(A_SEED1), .A_SEED2(A_SEED2), .A_SEED3(A_SEED3), .A_SEED4(A_SEED4), 
	.B_SEED1(B_SEED1), .B_SEED2(B_SEED2), .B_SEED3(B_SEED3), .B_SEED4(B_SEED4)) DELTA_U(.clk(triggered), .rst(TOP_RST), .out_0(DELTA_U_0), .out_1(DELTA_U_1));

//new_FSM CON_BOX(.TRIG_IN(triggered), .adc_clk(ADC_CLK), .start(GPIO_IN[0]), .FSM_JP_WRT(FSM_JP_WRT), .FSM_JM_WRT(FSM_JM_WRT), .FSM_U_WRT(FSM_U_WRT), .FSM_DAC_SEL(FSM_DAC_SEL), .FSM_STATE(FSM_STATE));
GPIO_BOX #(.DAC_WIDTH(DAC_WIDTH), .ADC_WIDTH(ADC_WIDTH), .GPIO_WIDTH(GPIO_WIDTH)) gp_con(.GPIO_IN(GPIO_IN), .ADC_A(ADC_A), .ADC_B(ADC_B), .JP(JP_O), .JM(JM_O), .DAC_A(DAC_A_OUT), .DAC_B(DAC_B_OUT), .U0(U_0), .U1(U_1), .DELTA_U0(DELTA_U_0), .DELTA_U1(DELTA_U_1), .UP_0(proc_U_0_P), 
.UP_1(proc_U_1_P), .UM_0(proc_U_0_M), .UM_1(proc_U_1_M), .NEW_U0(proc_new_U_0), .NEW_U1(proc_new_U_1), .GPIO_OUT(GPIO_OUT), .TOP_DAC_SEL(TOP_DAC_SEL), .TOP_RST(TOP_RST));

SPGD_FSM #(.A_COUNT_VALUE(A_COUNT_VALUE), .B_COUNT_VALUE(B_COUNT_VALUE), .MATH_WAIT_VALUE(MATH_WAIT_VALUE)) CON_BOX(.TRIG_IN(triggered), .START(GPIO_IN[GPIO_WIDTH -1]), 
.ADC_CLK(ADC_CLK), .FSM_JP_WRT(FSM_JP_WRT), .FSM_JM_WRT(FSM_JM_WRT), .FSM_U_WRT(FSM_U_WRT), .FSM_DAC_SEL(FSM_DAC_SEL), .FSM_STATE(FSM_STATE));

pulse_FSM pulser(.s(TRIG_IN), .clk(ADC_CLK), .rst(~TOP_RST), .P(triggered), .L(), .A(), .B());

	assign DAC_SPI_SDIO = 1;
	assign DAC_SPI_CLK = 0;
	assign DAC_SPI_CSB = 0;
	assign DAC_SPI_RST = 0;
endmodule
