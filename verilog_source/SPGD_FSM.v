module SPGD_FSM
#(
	parameter A_COUNT_VALUE = 6250,
	parameter B_COUNT_VALUE = 6250,
	parameter MATH_WAIT_VALUE = 5
)
(
	input TRIG_IN,
	input START,
	input ADC_CLK,
	output FSM_JP_WRT,
	output FSM_JM_WRT,
	output FSM_U_WRT,
	output [1:0] FSM_DAC_SEL,
	output [2:0] FSM_STATE
);

	// MSB = COUNTER_C_EN, 6 = COUNTER_B_EN, 5 = COUNTER_C_EN, 4 = U_WRT, 3 = JM_WRT, 2 = JP_WRT, 1 = DAC_SEL_1, 0 = DAC_SEL_0
	localparam [7:0] OFF = 8'b0000_0000,
			TRIG_WAIT = 8'b0000_0011,
			PHASE_A_WAIT = 8'b0010_0001,
			JP_WRT = 8'b0000_0101,
			PHASE_B_WAIT = 8'b0100_0010,
			JM_WRT = 8'b0000_1010,
			MATH_WAIT = 8'b1000_0010,
			U_WRT = 8'b0001_0010;

	reg [7:0] current_state = OFF;
	reg [7:0] next_state = OFF;

	assign FSM_U_WRT = current_state[4];
	assign FSM_JM_WRT = current_state[3];
	assign FSM_JP_WRT = current_state[2];
	assign FSM_DAC_SEL = {current_state[1],current_state[0]};
			
	wire COUNTER_A;
	wire COUNTER_B;
	wire COUNTER_C;

	gen_counter #(.COUNT_DATA_WIDTH(13), .COUNTER_TRIG_VAL(A_COUNT_VALUE)) count_0(.clk(ADC_CLK), .en(current_state[5]), .f(COUNTER_A));
	gen_counter #(.COUNT_DATA_WIDTH(13), .COUNTER_TRIG_VAL(B_COUNT_VALUE)) count_1(.clk(ADC_CLK), .en(current_state[6]), .f(COUNTER_B));
	gen_counter #(.COUNT_DATA_WIDTH(3), .COUNTER_TRIG_VAL(MATH_WAIT_VALUE)) count_2(.clk(ADC_CLK), .en(current_state[7]), .f(COUNTER_C));

	always @(posedge ADC_CLK)
	begin
		if(~START)
			current_state = OFF;
		else
			current_state = next_state;
	end

	always @(posedge ADC_CLK)
	begin
		case(current_state)
			OFF:
			begin
				if(START)
					next_state = TRIG_WAIT;
				else
					next_state = OFF;
			end
			TRIG_WAIT:
			begin
				if(TRIG_IN)
					next_state = PHASE_A_WAIT;
				else
					next_state = TRIG_WAIT;
			end
			PHASE_A_WAIT:
			begin
				if(COUNTER_A)
					next_state = JP_WRT;
				else
					next_state = PHASE_A_WAIT;
			end
			JP_WRT:
			begin
				next_state = PHASE_B_WAIT;
			end
			PHASE_B_WAIT:
			begin
				if(COUNTER_B)
					next_state = JM_WRT;
				else
					next_state = PHASE_B_WAIT;
			end
			JM_WRT:
			begin
				next_state = MATH_WAIT;
			end
			MATH_WAIT:
			begin
				if(COUNTER_C)
					next_state = U_WRT;
				else
					next_state = MATH_WAIT;
			end
			U_WRT:
			begin
				next_state = TRIG_WAIT;
			end
			default:
			begin
				next_state = OFF;
			end
		endcase	
	end
endmodule
