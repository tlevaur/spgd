// 2 timing modes, GPIO driven and external trig driven

module my_timer
#(
	parameter GPIO_WIDTH = 32,
	parameter DAC_WIDTH = 14
)
(
	input [GPIO_WIDTH - 1:0] GP_IN,
//	input TRIG_IN,
	input ADC_CLK,
	output [DAC_WIDTH - 1:0] DAC_A_OUT,
	output [DAC_WIDTH - 1:0] DAC_B_OUT,
	output val_0,
	output val_1
);

	localparam [DAC_WIDTH - 1:0] 
		DAC_OUT_VALUE_A = 14'b01_1111_1111_1111,
		DAC_OUT_VALUE_B = 14'b00_0000_0000_0000,
		DAC_OUT_VALUE_C = 14'b10_0000_0000_0000;

	localparam [2:0]
		stopped = 3'b000,
		timer_a_wait = 3'b001,
		timer_b_wait = 3'b010,
		timer_c_wait = 3'b011;

	reg [DAC_WIDTH - 1:0] int_DAC_A = DAC_OUT_VALUE_B;
	reg [DAC_WIDTH - 1:0] int_DAC_B = DAC_OUT_VALUE_B;
	reg [GPIO_WIDTH - 1:0] timer_A_wait = 32'h00000000;
	reg [GPIO_WIDTH - 1:0] timer_B_wait = 32'h00000000;
	reg [GPIO_WIDTH - 1:0] timer_C_wait = 32'h00000000;

	reg timer_rst = 1'b0;
	reg timer_a_en = 1'b0;
	reg timer_b_en = 1'b0;
	reg timer_c_en = 1'b0;

	wire timer_A_out;
	wire timer_B_out;
	wire timer_C_out;

	reg [2:0] current_state = 3'b000;
	reg [2:0] next_state = 3'b000;

	gen_counter #(.DATA_WIDTH(GPIO_WIDTH)) timer_a(.clk(ADC_CLK), .rst(timer_rst), .en(timer_a_en), .wait_val(timer_A_wait), .f(timer_A_out));
	gen_counter #(.DATA_WIDTH(GPIO_WIDTH)) timer_b(.clk(ADC_CLK), .rst(timer_rst), .en(timer_b_en), .wait_val(timer_B_wait), .f(timer_B_out));
	gen_counter #(.DATA_WIDTH(GPIO_WIDTH)) timer_c(.clk(ADC_CLK), .rst(timer_rst), .en(timer_c_en), .wait_val(timer_C_wait), .f(timer_C_out));

assign DAC_A_OUT = int_DAC_A;
assign DAC_B_OUT = int_DAC_B;

assign val_0 = 1'b0;
assign val_1 = 1'b1;

always @(posedge ADC_CLK)
begin
	case (GP_IN[GPIO_WIDTH - 1])
		1'b0:
		begin
			current_state = stopped;
		end
		1'b1:
		begin
			timer_A_wait = {2'b00, GP_IN[GPIO_WIDTH-2:1]};
			timer_B_wait = {3'b000, GP_IN[GPIO_WIDTH-2:2]};
			timer_C_wait = {3'b000, GP_IN[GPIO_WIDTH-2:2]};
			current_state = next_state;
		end
	endcase
end

always @(posedge ADC_CLK)
begin
	case (current_state)
		stopped:
		begin
			timer_rst = 1'b1;
			timer_a_en = 1'b0;
			timer_b_en = 1'b0;
			timer_c_en = 1'b0;
			int_DAC_A = DAC_OUT_VALUE_B;
			int_DAC_B = DAC_OUT_VALUE_B;
			if(GP_IN[GPIO_WIDTH - 1])
				next_state = timer_a_wait;
			else
				next_state = stopped;
		end
		timer_a_wait:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b1;
			timer_b_en = 1'b0;
			timer_c_en = 1'b0;
			int_DAC_A = DAC_OUT_VALUE_A;
			int_DAC_B = DAC_OUT_VALUE_C;
			if(timer_A_out)
				next_state = timer_b_wait;
			else
				next_state = timer_a_wait;
		end
		timer_b_wait:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b0;
			timer_b_en = 1'b1;
			timer_c_en = 1'b0;
			int_DAC_A = DAC_OUT_VALUE_B;
			int_DAC_B = DAC_OUT_VALUE_B;
			if(timer_B_out)
				next_state = timer_c_wait;
			else
				next_state = timer_b_wait;
		end
		timer_c_wait:
		begin
			timer_rst = 1'b0;
			timer_a_en = 1'b0;
			timer_b_en = 1'b0;
			timer_c_en = 1'b1;
			int_DAC_A = DAC_OUT_VALUE_C;
			int_DAC_B = DAC_OUT_VALUE_A;
			if(timer_C_out)
				next_state = timer_a_wait;
			else
				next_state = timer_c_wait;
		end
	endcase
end
endmodule
