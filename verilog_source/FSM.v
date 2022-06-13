module FSM
(
    input wire TRIG_IN,
	input wire adc_clk,
	input wire start,
	input wire FSM_ADC_COUNTER_TRIG,
	input wire FSM_DAC_COUNTER_TRIG,
	output wire FSM_JP_WRT,
	output wire FSM_JM_WRT,
	output wire FSM_REG_RST,
	output wire FSM_U_WRT,
	output wire [1:0] FSM_DAC_SEL,
	output wire FSM_ADC_COUNTER_START,
	output wire FSM_ADC_COUNTER_RST,
	output wire FSM_DAC_COUNTER_START,
	output wire FSM_DAC_COUNTER_RST,
	output wire [15:0] FSM_STATE
);
//reg int_FSM_JP_WRT;
//reg int_FSM_JM_WRT;
//reg int_FSM_REG_RST,
//reg int_U_WRT;
//reg [1:0] int_FSM_DAC_SEL;
//reg int_FSM_ADC_COUNTER_START;
//reg int_FSM_ADC_COUNTER_RST;
//reg int_FSM_DAC_COUNTER_START;
//reg int_FSM_DAC_COUNTER_RST;

reg [15:0] current_state;
reg [15:0] next_state;

assign FSM_STATE = current_state;
//localparam [1:0]
//	DAC_OFF = 2'b00,
//	PERB_PLUS = 2'b01,
//	PERB_MINUS = 2'b10,
//	U_OUT = 2'b11;

localparam [15:0]
	stopped = 16'b0000_0010_1010_0000,
	initialized = 16'b0000_0000_0000_0000,
	dac_wait_1 = 16'b0000_0000_0100_0001,
	adc_wait_1 = 16'b0000_0001_0010_0001,
	J_plus_write = 16'b0000_0000_1010_0101,
	dac_wait_2 = 16'b0000_0000_0100_0010,
	adc_wait_2 = 16'b0000_0001_0010_0010,
	J_minus_write = 16'b0000_0000_1010_1010,
	U_write = 16'b0000_0000_0001_0010,
	trig_wait = 16'b0000_0000_1010_0011;
	
	 
always @(posedge adc_clk)
begin
	if(~start)
		current_state <= stopped;
	else
		current_state <= next_state;
end

always @(posedge adc_clk)
begin
	case (current_state)
		stopped: 
		begin
			if(start)
				next_state = initialized;
			else
				next_state = stopped;
		end
		initialized:
		begin
			if(TRIG_IN)
				next_state = dac_wait_1;
			else
				next_state = initialized;
		end
		dac_wait_1:
		begin
			if(FSM_DAC_COUNTER_TRIG)
				next_state = adc_wait_1;
			else
				next_state = dac_wait_1;
		end
		adc_wait_1:
		begin
			if(FSM_ADC_COUNTER_TRIG)
				next_state = J_plus_write;
			else
				next_state = adc_wait_1;
		end
		J_plus_write:
		begin
			next_state = dac_wait_2;
		end 
		dac_wait_2:
		begin
			if(FSM_DAC_COUNTER_TRIG)
				next_state = adc_wait_2;
			else
				next_state = dac_wait_2;
		end
		adc_wait_2:
		begin
			if(FSM_ADC_COUNTER_TRIG)
				next_state = J_minus_write;
			else
				next_state = adc_wait_2;
		end
		J_minus_write:
		begin
			next_state = U_write;
		end
		U_write:
		begin
			
			next_state = trig_wait;
		end
		trig_wait:
		begin
			if (TRIG_IN)
				next_state = dac_wait_1;
			else
				next_state = trig_wait;
		end
		default:
		begin
			next_state = stopped;
		end
	endcase
end

assign FSM_REG_RST = current_state[9];
assign FSM_ADC_COUNTER_START = current_state[8];
assign FSM_ADC_COUNTER_RST = current_state[7];
assign FSM_DAC_COUNTER_START = current_state[6];
assign FSM_DAC_COUNTER_RST = current_state[5];
assign FSM_U_WRT = current_state[4];
assign FSM_JM_WRT = current_state[3];
assign FSM_JP_WRT = current_state[2];
assign FSM_DAC_SEL[1] = current_state[1];
assign FSM_DAC_SEL[0] = current_state[0];
endmodule
