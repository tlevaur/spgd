// 2 timing modes, GPIO driven and external trig driven

module SPGD_FSM
#(
	parameter GPIO_WIDTH = 32,
	parameter COUNT_WIDTH = 15,
	parameter DAC_WIDTH = 14
)
(
	input ADC_CLK,
	input FSM_EN,
	input ADC_DONE,
	input GP_IN,
	output ADC_EN,
	output REG_RST,
	output RNG_CLK,
	output J_P_WRT,
	output J_M_WRT,
	output U_WRT,
	output DELTA_U_WRT,
	output [1:0] DAC_SEL,
	output [3:0] FSM_STATE,
	output [GPIO_WIDTH - 1 : 0] GP_OUT_SPGD_FSM
);

	localparam [3:0]
		stopped = 4'b0000,
		timer_a_wait = 4'b0001,
		ADC_a_wait = 4'b0010,
		MATH_a_wait = 4'b0011,
		J_P_wrt = 4'b0100,
		timer_b_wait = 4'b0101,
		ADC_b_wait = 4'b0110,
		MATH_b_wait = 4'b0111,
		J_M_wrt = 4'b1000,
		MATH_c_wait = 4'b1001,
		U_wrt = 4'b1010,
		RNG_wait = 4'b1011,
		DELTA_U_wrt = 4'b1100,
		timer_c_wait = 4'b1101;

	reg int_REG_RST = 1'b0;
	reg int_RNG_CLK = 1'b0;
	reg int_J_P_WRT = 1'b0;
	reg int_J_M_WRT = 1'b0;
	reg int_U_WRT = 1'b0;
	reg int_DELTA_U_WRT = 1'b0;
	reg [1:0] int_DAC_SEL = 2'b00;

	assign REG_RST = int_REG_RST;
	assign RNG_CLK = int_RNG_CLK;
	assign J_P_WRT = int_J_P_WRT;
	assign J_M_WRT = int_J_M_WRT;
	assign U_WRT = int_U_WRT;
	assign DELTA_U_WRT = int_DELTA_U_WRT;
	assign DAC_SEL = int_DAC_SEL;

	reg [COUNT_WIDTH - 1:0] timer_A_wait = 13'h0828;
	reg [COUNT_WIDTH - 1:0] ADC_A_wait = 13'h0402;
	reg [COUNT_WIDTH - 1:0] MATH_A_wait = 13'h000A;
	reg [COUNT_WIDTH - 1:0] timer_B_wait = 13'h0801;
	reg [COUNT_WIDTH - 1:0] ADC_B_wait = 13'h0402;
	reg [COUNT_WIDTH - 1:0] MATH_B_wait = 13'h000A;
	reg [COUNT_WIDTH - 1:0] MATH_C_wait = 13'h0028;
	reg [COUNT_WIDTH - 1:0] rng_wait = 13'h0064;
	reg [COUNT_WIDTH - 1:0] timer_C_wait = 13'h1806;

	reg timer_rst = 1'b0;

	reg timer_a_en = 1'b0;
	reg ADC_a_en = 1'b0;
	reg MATH_a_en = 1'b0;

	reg timer_b_en = 1'b0;
	reg ADC_b_en = 1'b0;
	reg MATH_b_en = 1'b0;
	reg MATH_c_en = 1'b0;

	reg RNG_a_en = 1'b0;
	reg timer_c_en = 1'b0;

	wire timer_A_out;
	wire ADC_a_out;
	wire MATH_a_out;

	wire timer_B_out;
	wire ADC_b_out;
	wire MATH_b_out;
	wire MATH_c_out;

	wire RNG_a_out;
	wire timer_C_out;

	assign ADC_EN = ADC_a_en || ADC_b_en;

	reg [3:0] current_state = 4'b0000;
	reg [3:0] next_state = 4'b0000;

	assign FSM_STATE = current_state;

	wire [GPIO_WIDTH - 1 : 0] GP_OUT_SPGD_FSM;
	GPIO_PARAMS #(
		.GPIO_WIDTH(GPIO_WIDTH),
		.PARAM_COUNT(16)
	) PARAMS1 (
		.GP_IN(GP_IN),
		.SET(2),
		.GP_OUT(GP_OUT_SPGD_FSM),
		.PARAMS_DATA({
			{GPIO_WIDTH{1'b0}}, 		//15
			{GPIO_WIDTH{1'b0}},		//14
			{GPIO_WIDTH{1'b0}},		//13
			{GPIO_WIDTH{1'b0}},		//12
			{GPIO_WIDTH{1'b0}},		//11
			{GPIO_WIDTH{1'b0}},		//10
			{GPIO_WIDTH{1'b0}},		//9
			{{GPIO_WIDTH-1{1'b0}}, DELTA_U_WRT},	//8
			{{GPIO_WIDTH-1{1'b0}}, U_WRT},	//7
			{{GPIO_WIDTH-1{1'b0}}, J_M_WRT},	//6
			{{GPIO_WIDTH-1{1'b0}}, J_P_WRT},	//5
			{{GPIO_WIDTH-1{1'b0}}, REG_RST},	//4
			{{GPIO_WIDTH-1{1'b0}}, ADC_EN},	//3
			{{GPIO_WIDTH-1{1'b0}}, FSM_EN},	//2
			{{GPIO_WIDTH-2{1'b0}}, DAC_SEL},	//1
			{{GPIO_WIDTH-4{1'b0}}, FSM_STATE}	//0
		})
	);

	gen_counter #(.DATA_WIDTH(COUNT_WIDTH)) timer_a(.clk(ADC_CLK), .en(timer_a_en), .wait_val(timer_A_wait), .f(timer_A_out));
	gen_counter #(.DATA_WIDTH(COUNT_WIDTH)) ADC_a(.clk(ADC_CLK), .en(ADC_a_en), .wait_val(ADC_A_wait), .f(ADC_a_out));
	gen_counter #(.DATA_WIDTH(COUNT_WIDTH)) MATH_a(.clk(ADC_CLK), .en(MATH_a_en), .wait_val(MATH_A_wait), .f(MATH_a_out));

	gen_counter #(.DATA_WIDTH(COUNT_WIDTH)) timer_b(.clk(ADC_CLK), .en(timer_b_en), .wait_val(timer_B_wait), .f(timer_B_out));
	gen_counter #(.DATA_WIDTH(COUNT_WIDTH)) ADC_b(.clk(ADC_CLK), .en(ADC_b_en), .wait_val(ADC_B_wait), .f(ADC_b_out));
	gen_counter #(.DATA_WIDTH(COUNT_WIDTH)) MATH_b(.clk(ADC_CLK), .en(MATH_b_en), .wait_val(MATH_B_wait), .f(MATH_b_out));
	gen_counter #(.DATA_WIDTH(COUNT_WIDTH)) MATH_c(.clk(ADC_CLK), .en(MATH_c_en), .wait_val(MATH_C_wait), .f(MATH_c_out));
	
	gen_counter #(.DATA_WIDTH(COUNT_WIDTH)) RNG_a(.clk(ADC_CLK), .en(RNG_a_en), .wait_val(rng_wait), .f(RNG_a_out));
	gen_counter #(.DATA_WIDTH(COUNT_WIDTH)) timer_c(.clk(ADC_CLK), .en(timer_c_en), .wait_val(timer_C_wait), .f(timer_C_out));

always @(posedge ADC_CLK)
begin
	if(~FSM_EN)
		current_state = stopped;
	else
		current_state = next_state;
end

always @(posedge ADC_CLK)
begin
	case (current_state)
		stopped:
		begin
			timer_rst = 1'b1;
			timer_a_en = 1'b0;
			ADC_a_en = 1'b0;
			MATH_a_en = 1'b0;
			timer_b_en = 1'b0;
			ADC_b_en = 1'b0;
			MATH_b_en = 1'b0;
			MATH_c_en = 1'b0;
			RNG_a_en = 1'b0;
			timer_c_en = 1'b0;

			int_REG_RST = 1'b1;
			int_RNG_CLK = 1'b0;
			int_J_P_WRT = 1'b0;
			int_J_M_WRT = 1'b0;
			int_U_WRT = 1'b0;
			int_DELTA_U_WRT = 1'b0;
			int_DAC_SEL = 2'b00;
			if(FSM_EN)
				next_state = timer_a_wait;
			else
				next_state = stopped;
		end
		timer_a_wait:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b1;
			ADC_a_en = 1'b0;
			MATH_a_en = 1'b0;
			timer_b_en = 1'b0;
			ADC_b_en = 1'b0;
			MATH_b_en = 1'b0;
			MATH_c_en = 1'b0;
			RNG_a_en = 1'b0;
			timer_c_en = 1'b0;

			int_REG_RST = 1'b0;
			int_RNG_CLK = 1'b0;
			int_J_P_WRT = 1'b0;
			int_J_M_WRT = 1'b0;
			int_U_WRT = 1'b0;
			int_DELTA_U_WRT = 1'b0;
			int_DAC_SEL = 2'b01;
			if(timer_A_out)
				next_state = ADC_a_wait;
			else
				next_state = timer_a_wait;
		end
		ADC_a_wait:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b0;
			ADC_a_en = 1'b1;
			MATH_a_en = 1'b0;
			timer_b_en = 1'b0;
			ADC_b_en = 1'b0;
			MATH_b_en = 1'b0;
			MATH_c_en = 1'b0;
			RNG_a_en = 1'b0;
			timer_c_en = 1'b0;

			int_REG_RST = 1'b0;
			int_RNG_CLK = 1'b0;
			int_J_P_WRT = 1'b0;
			int_J_M_WRT = 1'b0;
			int_U_WRT = 1'b0;
			int_DELTA_U_WRT = 1'b0;
			int_DAC_SEL = 2'b01;
			if(ADC_DONE)
				next_state = MATH_a_wait;
			else
				next_state = ADC_a_wait;
		end
		MATH_a_wait:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b0;
			ADC_a_en = 1'b1;
			MATH_a_en = 1'b1;
			timer_b_en = 1'b0;
			ADC_b_en = 1'b0;
			MATH_b_en = 1'b0;
			MATH_c_en = 1'b0;
			RNG_a_en = 1'b0;
			timer_c_en = 1'b0;

			int_REG_RST = 1'b0;
			int_RNG_CLK = 1'b0;
			int_J_P_WRT = 1'b0;
			int_J_M_WRT = 1'b0;
			int_U_WRT = 1'b0;
			int_DELTA_U_WRT = 1'b0;
			int_DAC_SEL = 2'b01;
			if(MATH_a_out)
				next_state = J_P_wrt;
			else
				next_state = MATH_a_wait;
		end
		J_P_wrt:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b0;
			ADC_a_en = 1'b1;
			MATH_a_en = 1'b0;
			timer_b_en = 1'b0;
			ADC_b_en = 1'b0;
			MATH_b_en = 1'b0;
			MATH_c_en = 1'b0;
			RNG_a_en = 1'b0;
			timer_c_en = 1'b0;

			int_REG_RST = 1'b0;
			int_RNG_CLK = 1'b0;
			int_J_P_WRT = 1'b1;
			int_J_M_WRT = 1'b0;
			int_U_WRT = 1'b0;
			int_DELTA_U_WRT = 1'b0;
			int_DAC_SEL = 2'b01;
			next_state = timer_b_wait;
		end
		timer_b_wait:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b0;
			ADC_a_en = 1'b0;
			MATH_a_en = 1'b0;
			timer_b_en = 1'b1;
			ADC_b_en = 1'b0;
			MATH_b_en = 1'b0;
			MATH_c_en = 1'b0;
			RNG_a_en = 1'b0;
			timer_c_en = 1'b0;

			int_REG_RST = 1'b0;
			int_RNG_CLK = 1'b0;
			int_J_P_WRT = 1'b0;
			int_J_M_WRT = 1'b0;
			int_U_WRT = 1'b0;
			int_DELTA_U_WRT = 1'b0;
			int_DAC_SEL = 2'b10;
			if(timer_B_out)
				next_state = ADC_b_wait;
			else
				next_state = timer_b_wait;
		end
		ADC_b_wait:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b0;
			ADC_a_en = 1'b0;
			MATH_a_en = 1'b0;
			timer_b_en = 1'b0;
			ADC_b_en = 1'b1;
			MATH_b_en = 1'b0;
			MATH_c_en = 1'b0;
			RNG_a_en = 1'b0;
			timer_c_en = 1'b0;

			int_REG_RST = 1'b0;
			int_RNG_CLK = 1'b0;
			int_J_P_WRT = 1'b0;
			int_J_M_WRT = 1'b0;
			int_U_WRT = 1'b0;
			int_DELTA_U_WRT = 1'b0;
			int_DAC_SEL = 2'b10;
			if(ADC_DONE)
				next_state = MATH_b_wait;
			else
				next_state = ADC_b_wait;
		end
		MATH_b_wait:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b0;
			ADC_a_en = 1'b0;
			MATH_a_en = 1'b0;
			timer_b_en = 1'b0;
			ADC_b_en = 1'b1;
			MATH_b_en = 1'b1;
			MATH_c_en = 1'b0;
			RNG_a_en = 1'b0;
			timer_c_en = 1'b0;

			int_REG_RST = 1'b0;
			int_RNG_CLK = 1'b0;
			int_J_P_WRT = 1'b0;
			int_J_M_WRT = 1'b0;
			int_U_WRT = 1'b0;
			int_DELTA_U_WRT = 1'b0;
			int_DAC_SEL = 2'b10;
			if(MATH_b_out)
				next_state = J_M_wrt;
			else
				next_state = MATH_b_wait;
		end
		J_M_wrt:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b0;
			ADC_a_en = 1'b0;
			MATH_a_en = 1'b0;
			timer_b_en = 1'b0;
			ADC_b_en = 1'b1;
			MATH_b_en = 1'b0;
			MATH_c_en = 1'b0;
			RNG_a_en = 1'b0;
			timer_c_en = 1'b0;

			int_REG_RST = 1'b0;
			int_RNG_CLK = 1'b0;
			int_J_P_WRT = 1'b0;
			int_J_M_WRT = 1'b1;
			int_U_WRT = 1'b0;
			int_DELTA_U_WRT = 1'b0;
			int_DAC_SEL = 2'b10;
			next_state = MATH_c_wait;
		end
		MATH_c_wait:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b0;
			ADC_a_en = 1'b0;
			MATH_a_en = 1'b0;
			timer_b_en = 1'b0;
			ADC_b_en = 1'b0;
			MATH_b_en = 1'b0;
			MATH_c_en = 1'b1;
			RNG_a_en = 1'b0;
			timer_c_en = 1'b0;

			int_REG_RST = 1'b0;
			int_RNG_CLK = 1'b0;
			int_J_P_WRT = 1'b0;
			int_J_M_WRT = 1'b0;
			int_U_WRT = 1'b0;
			int_DELTA_U_WRT = 1'b0;
			int_DAC_SEL = 2'b10;
			if(MATH_c_out)
				next_state = U_wrt;
			else
				next_state = MATH_c_wait;
		end
		U_wrt:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b0;
			ADC_a_en = 1'b0;
			MATH_a_en = 1'b0;
			timer_b_en = 1'b0;
			ADC_b_en = 1'b0;
			MATH_b_en = 1'b0;
			MATH_c_en = 1'b0;
			RNG_a_en = 1'b0;
			timer_c_en = 1'b0;

			int_REG_RST = 1'b0;
			int_RNG_CLK = 1'b0;
			int_J_P_WRT = 1'b0;
			int_J_M_WRT = 1'b0;
			int_U_WRT = 1'b1;
			int_DELTA_U_WRT = 1'b0;
			int_DAC_SEL = 2'b10;
			next_state = RNG_wait;
		end
		RNG_wait:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b0;
			ADC_a_en = 1'b0;
			MATH_a_en = 1'b0;
			timer_b_en = 1'b0;
			ADC_b_en = 1'b0;
			MATH_b_en = 1'b0;
			MATH_c_en = 1'b0;
			RNG_a_en = 1'b1;
			timer_c_en = 1'b0;

			int_REG_RST = 1'b0;
			int_RNG_CLK = ~int_RNG_CLK;
			int_J_P_WRT = 1'b0;
			int_J_M_WRT = 1'b0;
			int_U_WRT = 1'b0;
			int_DELTA_U_WRT = 1'b0;
			int_DAC_SEL = 2'b11;
			if(RNG_a_out)
				next_state = DELTA_U_wrt;
			else
				next_state = RNG_wait;
		end
		DELTA_U_wrt:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b0;
			ADC_a_en = 1'b0;
			MATH_a_en = 1'b0;
			timer_b_en = 1'b0;
			ADC_b_en = 1'b0;
			MATH_b_en = 1'b0;
			MATH_c_en = 1'b0;
			RNG_a_en = 1'b0;
			timer_c_en = 1'b0;

			int_REG_RST = 1'b0;
			int_RNG_CLK = 1'b0;
			int_J_P_WRT = 1'b0;
			int_J_M_WRT = 1'b0;
			int_U_WRT = 1'b0;
			int_DELTA_U_WRT = 1'b1;
			int_DAC_SEL = 2'b11;
			next_state = timer_c_wait;
		end
		timer_c_wait:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b0;
			ADC_a_en = 1'b0;
			MATH_a_en = 1'b0;
			timer_b_en = 1'b0;
			ADC_b_en = 1'b0;
			MATH_b_en = 1'b0;
			MATH_c_en = 1'b0;
			RNG_a_en = 1'b0;
			timer_c_en = 1'b1;

			int_REG_RST = 1'b0;
			int_RNG_CLK = 1'b0;
			int_J_P_WRT = 1'b0;
			int_J_M_WRT = 1'b0;
			int_U_WRT = 1'b0;
			int_DELTA_U_WRT = 1'b0;
			int_DAC_SEL = 2'b11;
			if(timer_C_out)
				next_state = timer_a_wait;
			else
				next_state = timer_c_wait;
		end
		default:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b0;
			ADC_a_en = 1'b0;
			MATH_a_en = 1'b0;
			timer_b_en = 1'b0;
			ADC_b_en = 1'b0;
			MATH_b_en = 1'b0;
			MATH_c_en = 1'b0;
			RNG_a_en = 1'b0;
			timer_c_en = 1'b0;

			int_REG_RST = 1'b0;
			int_RNG_CLK = 1'b0;
			int_J_P_WRT = 1'b0;
			int_J_M_WRT = 1'b0;
			int_U_WRT = 1'b0;
			int_DELTA_U_WRT = 1'b0;
			int_DAC_SEL = 2'b00;
			next_state = stopped;
		end
	endcase
end
endmodule
