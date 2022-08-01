// Usage: SPGD_SYS #(.FP_WIDTH(), .ADC_IN(), .GAIN(), .SIGMA(), .SPGD_EN(), .ADC_CLK(), .DAC_A_OUT(), .DAC_B_OUT())
// Usage: (if SIGMA is hardcoded) SPGD_SYS #(.FP_WIDTH(), .ADC_IN(), .GAIN(), .SPGD_EN(), .ADC_CLK(), .DAC_A_OUT(), .DAC_B_OUT())
module SPGD_SYS
#(
	parameter FP_WIDTH = 32,
	parameter GPIO_WIDTH = 32,
	parameter INT_WIDTH = 16
)
(
	input [FP_WIDTH		- 1 : 0] ADC_IN,
	input [FP_WIDTH		- 1 : 0] SIGMA,
	input [FP_WIDTH		- 1 : 0] GAMMA,
	input [GPIO_WIDTH 	- 1 : 0] GP_IN,
	input SYS_EN,
	input ADC_CLK,
	input ADC_DONE,
	output ADC_EN,
	output REG_RESET,
	input [32 - 1:0] J_time,
	output [FP_WIDTH - 1:0] DAC_A_OUT,
	output [FP_WIDTH - 1:0] DAC_B_OUT,
	output [GPIO_WIDTH - 1 : 0] GP_OUT_SPGD_SYS,
	output [GPIO_WIDTH - 1 : 0] GP_OUT_SPGD_FSM,
	output [7:0] LED_O,
	output val_0,
	output val_1
);
	// Constants
	// reg [FP_WIDTH - 1:0] SIGMA = 64'h0000_170A_3D70_A3D7; // 0.09
	// reg [FP_WIDTH - 1:0] SIGMA = 64'h0000_0000_B851_EB85; // 0.09 / 8192
	// reg [FP_WIDTH - 1:0] GAIN  = 64'h0004_0000_0000_0000;
	assign val_0 = 1'b0;
	assign val_1 = 1'b1;

	// Register Outputs
	wire [FP_WIDTH - 1:0] J_P;
	wire [FP_WIDTH - 1:0] J_M;
	wire [FP_WIDTH - 1:0] U_0;
	wire [FP_WIDTH - 1:0] U_1;
	wire [FP_WIDTH - 1:0] DELTA_U_0;
	wire [FP_WIDTH - 1:0] DELTA_U_1;

	// Adder or Subber Outputs
	wire [FP_WIDTH :0] DELTA_J;
	wire [FP_WIDTH :0] U_0_PLUS;
	wire [FP_WIDTH :0] U_0_MINUS;
	wire [FP_WIDTH :0] U_1_PLUS;
	wire [FP_WIDTH :0] U_1_MINUS;
	wire [FP_WIDTH :0] new_U_0;
	wire [FP_WIDTH :0] new_U_1;

	// Multiplier Outputs
	wire [FP_WIDTH - 1:0] J_GAIN;
	wire [FP_WIDTH - 1:0] U_0_TERM;
	wire [FP_WIDTH - 1:0] U_1_TERM;

	// RNG Outputs
	wire [FP_WIDTH - 1:0] new_DELTA_U_0;
	wire [FP_WIDTH - 1:0] new_DELTA_U_1;

	// Control Signals
	wire J_P_WRT;
	wire J_M_WRT;
	wire U_WRT;
	wire DELTA_U_WRT;
	wire REG_RST;
	wire [1:0] DAC_SEL;
	wire [3:0] FSM_STATE;
	wire RNG_CLK;
	wire [GPIO_WIDTH - 1 : 0] GP_OUT_SPGD_SYS;
	wire [GPIO_WIDTH - 1 : 0] GP_OUT_SPGD_FSM;

	GPIO_PARAMS #(
		.GPIO_WIDTH(GPIO_WIDTH),
		.PARAM_COUNT(16)
	) PARAMS1 (
		.GP_IN(GP_IN),
		.SET(1),
		.GP_OUT(GP_OUT_SPGD_SYS),
		.PARAMS_DATA({
			{GPIO_WIDTH{1'b0}},		//* PARAM 15
			{GPIO_WIDTH{1'b0}}, 		//* PARAM 14
			{GPIO_WIDTH{1'b0}}, 		//* PARAM 13
			U_0_PLUS[FP_WIDTH - 1 :0],	//* PARAM 12
			U_0_MINUS[FP_WIDTH - 1 :0],	//* PARAM 11
			U_1_PLUS[FP_WIDTH - 1 :0],	//* PARAM 10
			U_1_MINUS[FP_WIDTH - 1 :0],	//* PARAM 9
			J_P,				//* PARAM 8
			J_M,				//* PARAM 7
			U_0,				//* PARAM 6
			U_1,				//* PARAM 5
			DELTA_U_0,			//* PARAM 4
			DELTA_U_1,			//* PARAM 3
			DELTA_J[FP_WIDTH - 1 :0],	//* PARAM 2
			new_U_0[FP_WIDTH - 1 :0],	//* PARAM 1
			new_U_1[FP_WIDTH - 1 :0]	//* PARAM 0
		})
	);
	// assign SPGD_EN = GP_IN[GPIO_WIDTH - 1];
	// assign ADC_SEL = GP_IN[GPIO_WIDTH - 2];
	assign REG_RESET = REG_RST;
	//assign GP_OUT = {ADC_IN[63:38], 2'b00, FSM_STATE};
	//assign GP_OUT = {J_P[55:40], J_M[55:40]};
	//assign GP_OUT = {new_U_1[55:40], new_U_0[55:40]};
	// assign GP_OUT = {U_0_TERM[FP_WIDTH*2-3-INT_WIDTH:FP_WIDTH-INT_WIDTH], DELTA_J[55:40]};
	// assign GP_OUT = U_0;
	assign LED_O = {ADC_DONE, 3'b000, FSM_STATE};
	
	// Control Modules
	SPGD_FSM #(
		.GPIO_WIDTH(GPIO_WIDTH)
		) FSM_0 (
			.ADC_CLK(ADC_CLK),
			.FSM_EN(SYS_EN),
			.ADC_DONE(ADC_DONE),
			.ADC_EN(ADC_EN),
			.REG_RST(REG_RST),
			.RNG_CLK(RNG_CLK),
			.J_P_WRT(J_P_WRT),
			.J_M_WRT(J_M_WRT),
			.J_time(J_time),
			.U_WRT(U_WRT),
			.DELTA_U_WRT(DELTA_U_WRT),
			.DAC_SEL(DAC_SEL),
			.FSM_STATE(FSM_STATE),
			.GP_IN(GP_IN),
			.GP_OUT_SPGD_FSM(GP_OUT_SPGD_FSM)
	);

	DAC_MUX DAC_MUX0 (.DAC_SEL(DAC_SEL), .U_0(U_0), .U_1(U_1), .U_0_P(U_0_PLUS[FP_WIDTH-1:0]), .U_0_M(U_0_MINUS[FP_WIDTH-1:0]), 
			.U_1_P(U_1_PLUS[FP_WIDTH-1:0]), .U_1_M(U_1_MINUS[FP_WIDTH-1:0]), .DAC_A_OUT(DAC_A_OUT), .DAC_B_OUT(DAC_B_OUT));

	PRNG #(.FP_WIDTH(FP_WIDTH)) PRNG_0 (.SIGMA(SIGMA), .clk(RNG_CLK), .rst(REG_RST), .PERT_A(new_DELTA_U_0), .PERT_B(new_DELTA_U_1));

	// Registers
	gen_reg #(.DATA_WIDTH(FP_WIDTH)) J_P_REG (.data_in(ADC_IN), .clk(ADC_CLK), .wrt(J_P_WRT), .rst(REG_RST), .data_out(J_P));
	gen_reg #(.DATA_WIDTH(FP_WIDTH)) J_M_REG (.data_in(ADC_IN), .clk(ADC_CLK), .wrt(J_M_WRT), .rst(REG_RST), .data_out(J_M));
	gen_reg #(.DATA_WIDTH(FP_WIDTH)) U_0_REG (.data_in(new_U_0[FP_WIDTH-1:0]), .clk(ADC_CLK), .wrt(U_WRT), .rst(REG_RST), .data_out(U_0));
	gen_reg #(.DATA_WIDTH(FP_WIDTH)) U_1_REG (.data_in(new_U_1[FP_WIDTH-1:0]), .clk(ADC_CLK), .wrt(U_WRT), .rst(REG_RST), .data_out(U_1));
	gen_reg #(.DATA_WIDTH(FP_WIDTH)) DELTA_U_0_REG (.data_in(new_DELTA_U_0), .clk(ADC_CLK), .wrt(DELTA_U_WRT), .rst(REG_RST), .data_out(DELTA_U_0));
	gen_reg #(.DATA_WIDTH(FP_WIDTH)) DELTA_U_1_REG (.data_in(new_DELTA_U_1), .clk(ADC_CLK), .wrt(DELTA_U_WRT), .rst(REG_RST), .data_out(DELTA_U_1));

	// Adders and Subbers
	gen_subber #(.IN_WIDTH(FP_WIDTH)) J_SUB   (.a(J_P), .b(J_M),       .s(DELTA_J));	// DELTA_J = J_P - J_M
	gen_adder  #(.IN_WIDTH(FP_WIDTH)) U_0_ADD (.a(U_0), .b(DELTA_U_0), .s(U_0_PLUS));	// U_0 + DELTA_U_0
	gen_subber #(.IN_WIDTH(FP_WIDTH)) U_0_SUB (.a(U_0), .b(DELTA_U_0), .s(U_0_MINUS));	// U_0 - DELTA_U_0
	gen_adder  #(.IN_WIDTH(FP_WIDTH)) U_1_ADD (.a(U_1), .b(DELTA_U_1), .s(U_1_PLUS));	// U_1 + DELTA_U_1
	gen_subber #(.IN_WIDTH(FP_WIDTH)) U_1_SUB (.a(U_1), .b(DELTA_U_1), .s(U_1_MINUS));	// U_1 - DELTA_U_1
	
	// Update Rule
	gen_adder #( //U_0 + GAIN * DELTA_J * DELTA_U_0
		.IN_WIDTH(FP_WIDTH)
		) update_0 (
			.a(U_0), .b(U_0_TERM), .s(new_U_0)
	);
	
	gen_adder #( //U_1 + GAIN * DELTA_J * DELTA_U_1
		.IN_WIDTH(FP_WIDTH)
		) update_1 (
			.a(U_1), .b(U_1_TERM), .s(new_U_1)
	);
	
	// Multipliers
	custom_gen_mult #( // GAIN * DELTA_J
		.DATA_WIDTH(FP_WIDTH)
		) J_MULT (
			.a(DELTA_J[FP_WIDTH-1:0]), .b(GAMMA), .p(J_GAIN)
	);
	custom_gen_mult #( // GAIN * DELTA_J * DELTA_U_0
		.DATA_WIDTH(FP_WIDTH),
		.INT_WIDTH(INT_WIDTH)
		) U_0_MULT (
			.a(J_GAIN), .b(DELTA_U_0), .p(U_0_TERM)
	);
	custom_gen_mult #( // GAIN * DELTA_J * DELTA_U_1
		.DATA_WIDTH(FP_WIDTH)
		) U_1_MULT (
			.a(J_GAIN), .b(DELTA_U_1), .p(U_1_TERM)
	);
endmodule
