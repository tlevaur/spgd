module new_FSM
(
    input wire TRIG_IN,
	input wire adc_clk,
	input wire start,
	output wire FSM_JP_WRT,
	output wire FSM_JM_WRT,
	output wire FSM_U_WRT,
	output wire [1:0] FSM_DAC_SEL,
	output wire [5:0] FSM_STATE
);

reg int_FSM_JP_WRT = 1'b0;
reg int_FSM_JM_WRT = 1'b0;
reg int_FSM_U_WRT = 1'b0;
reg [1:0] int_FSM_DAC_SEL = 2'b00;

reg [5:0] current_state;
reg [5:0] next_state;

assign FSM_STATE = current_state;
assign FSM_JP_WRT = int_FSM_JP_WRT;
assign FSM_JM_WRT = int_FSM_JM_WRT;
assign FSM_U_WRT = int_FSM_U_WRT;
assign FSM_DAC_SEL = int_FSM_DAC_SEL;


localparam [5:0]
	stopped = 6'b000000,
	trig_wait = 6'b000001,
	dac_wait_A_0 = 6'b000010,
	dac_wait_A_1 = 6'b000011,
	dac_wait_A_2 = 6'b000100,
	dac_wait_A_3 = 6'b000101,
	dac_wait_A_4 = 6'b000110,
	dac_wait_A_5 = 6'b000111,
	dac_wait_A_6 = 6'b001000,
	adc_wait_A_0 = 6'b001001,
	adc_wait_A_1 = 6'b001010,
	adc_wait_A_2 = 6'b001011,
	adc_wait_A_3 = 6'b001100,
	adc_wait_A_4 = 6'b001101,
	adc_wait_A_5 = 6'b001110,
	adc_wait_A_6 = 6'b001111,
	adc_wait_A_7 = 6'b010000,
	adc_wait_A_8 = 6'b010001,
	adc_wait_A_9 = 6'b010010,
	adc_wait_A_10 = 6'b010011,
	J_plus_write = 6'b010100,
	dac_wait_B_0 = 6'b010101,
	dac_wait_B_1 = 6'b010110,
	dac_wait_B_2 = 6'b010111,
	dac_wait_B_3 = 6'b011000,
	dac_wait_B_4 = 6'b011001,
	dac_wait_B_5 = 6'b011010,
	dac_wait_B_6 = 6'b011011,
	adc_wait_B_0 = 6'b011100,
	adc_wait_B_1 = 6'b011101,
	adc_wait_B_2 = 6'b011110,
	adc_wait_B_3 = 6'b011111,
	adc_wait_B_4 = 6'b100000,
	adc_wait_B_5 = 6'b100001,
	adc_wait_B_6 = 6'b100010,
	adc_wait_B_7 = 6'b100011,
	adc_wait_B_8 = 6'b100100,
	adc_wait_B_9 = 6'b100101,
	adc_wait_B_10 = 6'b100110,
	J_minus_write = 6'b100111,
	U_write = 6'b101000;	
	
	 
always @(posedge adc_clk)
begin
	if(~start)
	begin
		current_state <= stopped;
	end	
	else
	begin
		current_state <= next_state;
	end
end

always @(negedge adc_clk)
begin
	case (current_state)
		stopped: 
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b00;
			if(start)
			begin
				next_state = trig_wait;
			end			
			else
			begin
				next_state = stopped;
			end		
		end
		trig_wait:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b11;
			if(TRIG_IN)
			begin
				next_state = dac_wait_A_0;
			end
			else
			begin
				next_state = trig_wait;
			end
		end
		dac_wait_A_0:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = dac_wait_A_1;
		end
		dac_wait_A_1:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = dac_wait_A_2;
		end
		dac_wait_A_2:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = dac_wait_A_3;
		end
		dac_wait_A_3:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = dac_wait_A_4;
		end
		dac_wait_A_4:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = dac_wait_A_5;
		end
		dac_wait_A_5:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = dac_wait_A_6;
		end
		dac_wait_A_6:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = adc_wait_A_0;
		end
		adc_wait_A_0:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = adc_wait_A_1;
		end
		adc_wait_A_1:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = adc_wait_A_2;
		end
		adc_wait_A_2:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = adc_wait_A_3;
		end
		adc_wait_A_3:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = adc_wait_A_4;
		end
		adc_wait_A_4:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = adc_wait_A_5;
		end
		adc_wait_A_5:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = adc_wait_A_6;
		end
		adc_wait_A_6:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = adc_wait_A_7;
		end
		adc_wait_A_7:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = adc_wait_A_8;
		end
		adc_wait_A_8:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = adc_wait_A_9;
		end
		adc_wait_A_9:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = adc_wait_A_10;
		end
		adc_wait_A_10:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = J_plus_write;
		end
		J_plus_write:
		begin
			int_FSM_JP_WRT = 1'b1;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b01;
			next_state = dac_wait_B_0;
		end
		dac_wait_B_0:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = dac_wait_B_1;
		end
		dac_wait_B_1:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = dac_wait_B_2;
		end
		dac_wait_B_2:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = dac_wait_B_3;
		end
		dac_wait_B_3:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = dac_wait_B_4;
		end
		dac_wait_B_4:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = dac_wait_B_5;
		end
		dac_wait_B_5:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = dac_wait_B_6;
		end
		dac_wait_B_6:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = adc_wait_B_0;
		end
		adc_wait_B_0:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = adc_wait_B_1;
		end
		adc_wait_B_1:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = adc_wait_B_2;
		end
		adc_wait_B_2:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = adc_wait_B_3;
		end
		adc_wait_B_3:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = adc_wait_B_4;
		end
		adc_wait_B_4:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = adc_wait_B_5;
		end
		adc_wait_B_5:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = adc_wait_B_6;
		end
		adc_wait_B_6:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = adc_wait_B_7;
		end
		adc_wait_B_7:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = adc_wait_B_8;
		end
		adc_wait_B_8:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = adc_wait_B_9;
		end
		adc_wait_B_9:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = adc_wait_B_10;
		end
		adc_wait_B_10:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = J_minus_write;
		end
		J_minus_write:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b1;
			int_FSM_U_WRT = 1'b0;
			int_FSM_DAC_SEL = 2'b10;
			next_state = U_write;
		end
		U_write:
		begin
			int_FSM_JP_WRT = 1'b0;
			int_FSM_JM_WRT = 1'b0;
			int_FSM_U_WRT = 1'b1;
			int_FSM_DAC_SEL = 2'b11;
			next_state = trig_wait;
		end
		default:
		begin
			next_state = next_state;
		end
	endcase
end

endmodule
