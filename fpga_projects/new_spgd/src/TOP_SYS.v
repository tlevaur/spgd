module TOP_SYS
#(
	parameter FP_WIDTH = 32,
	parameter GPIO_WIDTH = 32,
	parameter CFG_WIDTH = 1024,
	parameter ADC_WIDTH = 12,
	parameter DAC_WIDTH = 14,
	parameter LED_WIDTH = 8
)
(
	input ADC_CLK,
	input TRIG_IN,
	input  [GPIO_WIDTH - 1 : 0] GP_IN,
	output [GPIO_WIDTH - 1 : 0] GP_OUT,
	input  [ADC_WIDTH  - 1 : 0] ADC_A_IN,
	input  [ADC_WIDTH  - 1 : 0] ADC_B_IN,
	output [DAC_WIDTH  - 1 : 0] DAC_A_OUT,
	output [DAC_WIDTH  - 1 : 0] DAC_B_OUT,
	input  [CFG_WIDTH  - 1 : 0] CFG_IN,
	output [LED_WIDTH  - 1 : 0] LED_O,
	output val_0,
	output val_1
);
	assign val_0 = 1'b0;
	assign val_1 = 1'b1;

	wire [FP_WIDTH 	- 1 : 0] IN1_ADC_CAL_GAIN;
	wire [FP_WIDTH 	- 1 : 0] IN1_ADC_CAL_OFFSET;
	wire [FP_WIDTH 	- 1 : 0] IN2_ADC_CAL_GAIN;
	wire [FP_WIDTH 	- 1 : 0] IN2_ADC_CAL_OFFSET;
	wire [FP_WIDTH 	- 1 : 0] OUT1_DAC_CAL_GAIN;
	wire [FP_WIDTH 	- 1 : 0] OUT1_DAC_CAL_OFFSET;
	wire [FP_WIDTH 	- 1 : 0] OUT2_DAC_CAL_GAIN;
	wire [FP_WIDTH 	- 1 : 0] OUT2_DAC_CAL_OFFSET;
	wire [FP_WIDTH 	- 1 : 0] SIGMA;
	wire [FP_WIDTH 	- 1 : 0] GAMMA;
	wire [FP_WIDTH  - 1 : 0] J_TIME;
	wire [FP_WIDTH  - 1 : 0] ADC_NORMAL;
	wire [FP_WIDTH  - 1 : 0] SPGD_IN;

	assign IN1_ADC_CAL_GAIN		= CFG_IN[   FP_WIDTH -1 :		    0];
	assign IN1_ADC_CAL_OFFSET	= CFG_IN[ 2*FP_WIDTH -1 :    FP_WIDTH];
	assign IN2_ADC_CAL_GAIN		= CFG_IN[ 3*FP_WIDTH -1 :  2*FP_WIDTH];
	assign IN2_ADC_CAL_OFFSET	= CFG_IN[ 4*FP_WIDTH -1 :  3*FP_WIDTH];
	assign OUT1_DAC_CAL_GAIN	= CFG_IN[ 5*FP_WIDTH -1 :  4*FP_WIDTH];
	assign OUT1_DAC_CAL_OFFSET	= CFG_IN[ 6*FP_WIDTH -1 :  5*FP_WIDTH];
	assign OUT2_DAC_CAL_GAIN	= CFG_IN[ 7*FP_WIDTH -1 :  6*FP_WIDTH];
	assign OUT2_DAC_CAL_OFFSET	= CFG_IN[ 8*FP_WIDTH -1 :  7*FP_WIDTH];
	assign SIGMA				= CFG_IN[ 9*FP_WIDTH -1 :  8*FP_WIDTH];
	assign GAMMA				= CFG_IN[10*FP_WIDTH -1 :  9*FP_WIDTH];
	assign J_TIME				= CFG_IN[11*FP_WIDTH -1 : 10*FP_WIDTH];
	assign ADC_NORMAL			= CFG_IN[12*FP_WIDTH -1 : 11*FP_WIDTH];

	wire [ADC_WIDTH - 1:0] selected_ADC;
	wire ADC_EN;
	wire ADC_DONE;
	wire ADC_SELECT;
	wire REG_RST;
	wire [FP_WIDTH - 1 : 0] ADC_CAL_OUT;

	wire [FP_WIDTH - 1 : 0] SPGD_DAC_A;
	wire [FP_WIDTH - 1 : 0] SPGD_DAC_B;

	wire [FP_WIDTH - 1 : 0] selected_ADC_CAL_GAIN;
	wire [FP_WIDTH - 1 : 0] selected_ADC_CAL_OFFSET;

	assign ADC_SELECT = GP_IN[GPIO_WIDTH - 2];
	assign SYS_EN = GP_IN[GPIO_WIDTH - 1];
	assign selected_ADC_CAL_GAIN	= ADC_SELECT ? IN1_ADC_CAL_GAIN : IN2_ADC_CAL_GAIN;
	assign selected_ADC_CAL_OFFSET	= ADC_SELECT ? IN1_ADC_CAL_OFFSET : IN2_ADC_CAL_OFFSET;


	ADC_MUX #(
		.ADC_WIDTH(ADC_WIDTH)
	) mux0 (
		.ADC_A(ADC_A_IN),
		.ADC_B(ADC_B_IN),
		.ADC_SEL(ADC_SELECT),
		.ADC_OUT(selected_ADC)
	);
	
	ADC_fp #(
		.FP_WIDTH(FP_WIDTH),
		.ADC_WIDTH(ADC_WIDTH)
	) ADC_fp (
		.ADC_CLK(ADC_CLK),
		.ADC_EN(ADC_EN),
		.REG_RST(REG_RST),
		.ADC_IN(selected_ADC),
		.ADC_DONE(ADC_DONE),
		.ADC_CAL_OUT(ADC_CAL_OUT),
		.ADC_CAL_GAIN(selected_ADC_CAL_GAIN),
		.ADC_CAL_OFFSET(selected_ADC_CAL_OFFSET)
	);

	custom_gen_mult #(.DATA_WIDTH(FP_WIDTH)) NORMALIZER (.a(ADC_CAL_OUT), .b(ADC_NORMAL), .p(SPGD_IN));

	SPGD_SYS #(
		.FP_WIDTH(FP_WIDTH),
		.GPIO_WIDTH(GPIO_WIDTH)
	) SYS0 (
		.ADC_IN(SPGD_IN),
		.SYS_EN(SYS_EN),
		.ADC_CLK(ADC_CLK),
		.ADC_DONE(ADC_DONE),
		.ADC_EN(ADC_EN),
		.J_time(J_TIME),
		.REG_RESET(REG_RST),
		.DAC_A_OUT(SPGD_DAC_A),
		.DAC_B_OUT(SPGD_DAC_B),
		.SIGMA(SIGMA),
		.GAMMA(GAMMA),
		.GP_IN(GP_IN),
		.GP_OUT_SPGD_SYS(GP_OUT_SPGD_SYS),
		.GP_OUT_SPGD_FSM(GP_OUT_SPGD_FSM),
		.LED_O(LED_O)
	);

	fp_DAC #(
		.FP_WIDTH(FP_WIDTH),
		.DAC_WIDTH(DAC_WIDTH)
	) fp_DAC0 (
		.fp_in(SPGD_DAC_A),
		.DAC_CAL_GAIN(OUT1_DAC_CAL_GAIN),
		.DAC_CAL_OFFSET(OUT1_DAC_CAL_OFFSET),
		.DAC_out(DAC_A_OUT)
	);

	fp_DAC #(
		.FP_WIDTH(FP_WIDTH),
		.DAC_WIDTH(DAC_WIDTH)
	) fp_DAC1 (
		.fp_in(SPGD_DAC_B),
		.DAC_CAL_GAIN(OUT2_DAC_CAL_GAIN),
		.DAC_CAL_OFFSET(OUT2_DAC_CAL_OFFSET),
		.DAC_out(DAC_B_OUT)
	);

	GPIO_PARAMS #(
		.GPIO_WIDTH(GPIO_WIDTH),
		.PARAM_COUNT(16)
	) PARAMS (
		.GP_IN(GP_IN),
		.GP_OUT(GP_OUT_TOP_SYS),
		.SET(0),
		.PARAMS_DATA({
			selected_ADC,	 //* PARAM 16
			DAC_A_OUT,		 //* PARAM 15
			DAC_B_OUT,		 //* PARAM 14
			{32'h0000_000C}, //* PARAM 13
			{32'h0000_000B}, //* PARAM 12
			{32'h0000_000A}, //* PARAM 11
			{32'h0000_0009}, //* PARAM 9
			{32'h0000_0008}, //* PARAM 8
			{32'h0000_0007}, //* PARAM 7
			{32'h0000_0006}, //* PARAM 6
			{32'h0000_0005}, //* PARAM 5
			{32'h0000_0004}, //* PARAM 4
			{32'h0000_0003}, //* PARAM 3
			{32'h0000_0002}, //* PARAM 2
			{32'h0000_0001}, //* PARAM 1
			{32'h0000_0000}  //* PARAM 0
		}),
		.PARAMS_NAME({
			"ADC ", //* PARAM 15
			"DACA", //* PARAM 14
			"DACB", //* PARAM 13
			"BPRM",	//* PARAM 12
			"BPRM",	//* PARAM 11
			"BPRM",	//* PARAM 10
			"BPRM",	//* PARAM 9
			"BPRM", //* PARAM 8
			"BPRM", //* PARAM 7
			"BPRM", //* PARAM 6
			"BPRM", //* PARAM 5
			"BPRM", //* PARAM 4
			"BPRM", //* PARAM 3
			"BPRM",	//* PARAM 2
			"BPRM",	//* PARAM 1
			"BPRM"	//* PARAM 0
		})
	);

	wire [3:0] parameter_set = GP_IN[GPIO_WIDTH - 5: GPIO_WIDTH - 8];
	reg [GPIO_WIDTH - 1 : 0] GP_OUT_SET = {GPIO_WIDTH{1'b0}};
	assign GP_OUT = GP_OUT_SET;
	wire [GPIO_WIDTH - 1 : 0] GP_OUT_TOP_SYS;
	wire [GPIO_WIDTH - 1 : 0] GP_OUT_SPGD_SYS;
	wire [GPIO_WIDTH - 1 : 0] GP_OUT_SPGD_FSM;

	localparam [3:0]
		GP_OUT_TOP_SYS_CASE = 4'h0,
		GP_OUT_SPGD_SYS_CASE = 4'h1,
		GP_OUT_SPGD_FSM_CASE = 4'h2,
		GP_OUT_PARAM_SET4 = 4'h3,
		GP_OUT_PARAM_SET5 = 4'h4,
		GP_OUT_PARAM_SET6 = 4'h5,
		GP_OUT_PARAM_SET7 = 4'h6,
		GP_OUT_PARAM_SET8 = 4'h7,
		GP_OUT_PARAM_SET9 = 4'h8,
		GP_OUT_PARAM_SET10 = 4'h9,
		GP_OUT_PARAM_SET11 = 4'hA,
		GP_OUT_PARAM_SET12 = 4'hB,
		GP_OUT_PARAM_SET13 = 4'hC,
		GP_OUT_PARAM_SET14 = 4'hD,
		GP_OUT_PARAM_SET15 = 4'hE,
		GP_OUT_PARAM_SET16 = 4'hF;

	always @(GP_OUT_TOP_SYS or GP_OUT_SPGD_SYS or GP_OUT_SPGD_FSM or parameter_set)
		begin
			case(parameter_set)
				GP_OUT_TOP_SYS_CASE: GP_OUT_SET = GP_OUT_TOP_SYS;
				GP_OUT_SPGD_SYS_CASE: GP_OUT_SET = GP_OUT_SPGD_SYS;
				GP_OUT_SPGD_FSM_CASE: GP_OUT_SET = GP_OUT_SPGD_FSM;
				default: GP_OUT_SET = GP_OUT_TOP_SYS;
			endcase
		end
endmodule