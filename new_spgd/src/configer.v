// configer.v
// This module implements an initialization/configuration procedure,
// which is run every time there is a rising edge on the MSB of GPIO_0.

module configer
#(
	parameter GPIO_WIDTH = 32,
	parameter ADC_WIDTH = 12,
	parameter DAC_WIDTH = 14,
	parameter LED_WIDTH = 8
)
(
	input ADC_CLK,
	input [GPIO_WIDTH - 1:0] GPIO_0,
	input [GPIO_WIDTH - 1:0] GPIO_1,
	output [LED_WIDTH - 1:0] LED_OUT,	
	output [GPIO_WIDTH - 1:0] param_0,
	output [GPIO_WIDTH - 1:0] param_1,
	output [GPIO_WIDTH - 1:0] param_2,
	output [GPIO_WIDTH - 1:0] param_3,
	output [GPIO_WIDTH - 1:0] param_4,
	output [GPIO_WIDTH - 1:0] param_5,
	output [GPIO_WIDTH - 1:0] param_6,
	output [GPIO_WIDTH - 1:0] param_7,
	output [GPIO_WIDTH - 1:0] param_8,
	output [GPIO_WIDTH - 1:0] param_9,
	output [GPIO_WIDTH - 1:0] param_10,
	output [GPIO_WIDTH - 1:0] param_11,
	output [GPIO_WIDTH - 1:0] param_12,
	output [GPIO_WIDTH - 1:0] param_13,
	output [GPIO_WIDTH - 1:0] param_14,
	output [GPIO_WIDTH - 1:0] param_15
);

	reg [GPIO_WIDTH - 1:0] int_param_0 = 32'h00000000;
	reg [GPIO_WIDTH - 1:0] int_param_1 = 32'h00000000;
	reg [GPIO_WIDTH - 1:0] int_param_2 = 32'h00000000;
	reg [GPIO_WIDTH - 1:0] int_param_3 = 32'h00000000;

	reg [GPIO_WIDTH - 1:0] int_param_4 = 32'h00000000;
	reg [GPIO_WIDTH - 1:0] int_param_5 = 32'h00000000;
	reg [GPIO_WIDTH - 1:0] int_param_6 = 32'h00000000;
	reg [GPIO_WIDTH - 1:0] int_param_7 = 32'h00000000;

	reg [GPIO_WIDTH - 1:0] int_param_8 = 32'h00000000;
	reg [GPIO_WIDTH - 1:0] int_param_9 = 32'h00000000;
	reg [GPIO_WIDTH - 1:0] int_param_10 = 32'h00000000;
	reg [GPIO_WIDTH - 1:0] int_param_11 = 32'h00000000;

	reg [GPIO_WIDTH - 1:0] int_param_12 = 32'h00000000;
	reg [GPIO_WIDTH - 1:0] int_param_13 = 32'h00000000;
	reg [GPIO_WIDTH - 1:0] int_param_14 = 32'h00000000;
	reg [GPIO_WIDTH - 1:0] int_param_15 = 32'h00000000;

	reg [3:0] param_count = 4'h0;


	assign LED_OUT = {3'b000,current_state};

	reg [4:0] current_state = 5'b00000;
	reg [4:0] next_state = 5'b00000;

	localparam [4:0]
		stopped = 5'b00000,
		s_param_0 = 5'b00001,
		s_param_1 = 5'b00010,
		s_param_2 = 5'b00011,
		s_param_3 = 5'b00100,
		s_param_4 = 5'b00101,
		s_param_5 = 5'b00110,
		s_param_6 = 5'b00111,
		s_param_7 = 5'b01000,
		s_param_8 = 5'b01001,
		s_param_9 = 5'b01010,
		s_param_10 = 5'b01011,
		s_param_11 = 5'b01100,
		s_param_12 = 5'b01101,
		s_param_13 = 5'b01110,
		s_param_14 = 5'b01111,
		s_param_15 = 5'b10000,
		done = 5'b10001;

	wire [4:0] count;

	new_counter #(.DATA_WIDTH(5)) GP_TICK_COUNTER(.clk(GPIO_0[GPIO_WIDTH - 2]), .en(GPIO_0[GPIO_WIDTH-1]), .count(count));

	always @(posedge ADC_CLK)
	begin
		if(~GPIO_0[GPIO_WIDTH - 1])
		begin
			current_state = 0;
		end
		else
		begin
			current_state = next_state;
		end
	end

	always @(posedge ADC_CLK)
	begin
		case(current_state)
			stopped:
			begin
				int_param_0 = 32'h00000000;
				int_param_1 = 32'h00000000;
				int_param_2 = 32'h00000000;
				int_param_3 = 32'h00000000;
				int_param_4 = 32'h00000000;
				int_param_5 = 32'h00000000;
				int_param_6 = 32'h00000000;
				int_param_7 = 32'h00000000;
				int_param_8 = 32'h00000000;
				int_param_9 = 32'h00000000;
				int_param_10 = 32'h00000000;
				int_param_11 = 32'h00000000;
				int_param_12 = 32'h00000000;
				int_param_13 = 32'h00000000;
				int_param_14 = 32'h00000000;
				int_param_15 = 32'h00000000;
				if(count == 1)
				begin
					int_param_0 = GPIO_1;
					next_state = s_param_0;
				end
				else
				begin
					next_state = stopped;
				end
			end
			s_param_0:
			begin
				if(count == 2)
				begin
					int_param_1 = GPIO_1;
					next_state = s_param_1;
				end
				else
				begin
					next_state = s_param_0;
				end
			end
			s_param_1:
			begin
				if(count == 3)
				begin
					int_param_2 = GPIO_1;
					next_state = s_param_2;
				end
				else
				begin
					next_state = s_param_1;
				end
			end
			s_param_2:
			begin
				if(count == 4)
				begin
					int_param_3 = GPIO_1;
					next_state = s_param_3;
				end
				else
				begin
					next_state = s_param_2;
				end
			end
			s_param_3:
			begin
				if(count == 5)
				begin
					int_param_4 = GPIO_1;
					next_state = s_param_4;
				end
				else
				begin
					next_state = s_param_3;
				end
			end
			s_param_4:
			begin
				if(count == 6)
				begin
					int_param_5 = GPIO_1;
					next_state = s_param_5;
				end
				else
				begin
					next_state = s_param_4;
				end
			end
			s_param_5:
			begin
				if(count == 7)
				begin
					int_param_6 = GPIO_1;
					next_state = s_param_6;
				end
				else
				begin
					next_state = s_param_5;
				end
			end
			s_param_6:
			begin
				if(count == 8)
				begin
					int_param_7 = GPIO_1;
					next_state = s_param_7;
				end
				else
				begin
					next_state = s_param_6;
				end
			end
			s_param_7:
			begin
				if(count == 9)
				begin
					int_param_8 = GPIO_1;
					next_state = s_param_8;
				end
				else
				begin
					next_state = s_param_7;
				end
			end
			s_param_8:
			begin
				if(count == 10)
				begin
					int_param_9 = GPIO_1;
					next_state = s_param_9;
				end
				else
				begin
					next_state = s_param_8;
				end
			end
			s_param_9:
			begin
				if(count == 11)
				begin
					int_param_10 = GPIO_1;
					next_state = s_param_10;
				end
				else
				begin
					next_state = s_param_9;
				end
			end
			s_param_10:
			begin
				if(count == 12)
				begin
					int_param_11 = GPIO_1;
					next_state = s_param_11;
				end
				else
				begin
					next_state = s_param_10;
				end
			end
			s_param_11:
			begin
				if(count == 13)
				begin
					int_param_12 = GPIO_1;
					next_state = s_param_12;
				end
				else
				begin
					next_state = s_param_11;
				end
			end
			s_param_12:
			begin
				if(count == 14)
				begin
					int_param_13 = GPIO_1;
					next_state = s_param_13;
				end
				else
				begin
					next_state = s_param_12;
				end
			end
			s_param_13:
			begin
				if(count == 15)
				begin
					int_param_14 = GPIO_1;
					next_state = s_param_14;
				end
				else
				begin
					next_state = s_param_13;
				end
			end
			s_param_14:
			begin
				if(count == 16)
				begin
					int_param_15 = GPIO_1;
					next_state = s_param_15;
				end
				else
				begin
					next_state = s_param_14;
				end
			end
			s_param_15:
			begin
				if(count == 17)
				begin
					next_state = done;
				end
				else
				begin
					next_state = s_param_15;
				end
			end
			done:
			begin
				next_state = done;
			end
			default:
			begin
				next_state = stopped;
			end
		endcase
	end
	assign param_0 = int_param_0;
	assign param_1 = int_param_1;
	assign param_2 = int_param_2;
	assign param_3 = int_param_3;
	assign param_4 = int_param_4;
	assign param_5 = int_param_5;
	assign param_6 = int_param_6;
	assign param_7 = int_param_7;
	assign param_8 = int_param_8;
	assign param_9 = int_param_9;
	assign param_10 = int_param_10;
	assign param_11 = int_param_11;
	assign param_12 = int_param_12;
	assign param_13 = int_param_13;
	assign param_14 = int_param_14;
	assign param_15 = int_param_15;
endmodule
