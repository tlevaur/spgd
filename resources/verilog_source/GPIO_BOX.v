module GPIO_BOX
#(
	parameter DAC_WIDTH = 14,
	parameter ADC_WIDTH = 12,
	parameter GPIO_WIDTH = 32
	
)
(
	input [GPIO_WIDTH - 1:0] GPIO_IN,
	input [ADC_WIDTH - 1:0] ADC_A,
	input [ADC_WIDTH - 1:0] ADC_B,
	input [ADC_WIDTH - 1:0] JP,
	input [ADC_WIDTH - 1:0] JM,
	input [DAC_WIDTH - 1:0] DAC_A,
	input [DAC_WIDTH - 1:0] DAC_B,
	input [DAC_WIDTH - 1:0] U0,
	input [DAC_WIDTH - 1:0] U1,
	input [DAC_WIDTH - 1:0] DELTA_U0,
	input [DAC_WIDTH - 1:0] DELTA_U1,
	input [DAC_WIDTH - 1:0] UP_0,
	input [DAC_WIDTH - 1:0] UP_1,
	input [DAC_WIDTH - 1:0] UM_0,
	input [DAC_WIDTH - 1:0] UM_1,
	input [DAC_WIDTH - 1:0] NEW_U0,
	input [DAC_WIDTH - 1:0] NEW_U1,
	output [GPIO_WIDTH - 1:0] GPIO_OUT,
	output [2:0] TOP_DAC_SEL,
	output TOP_RST
);

localparam [3:0] SYSTEM_OFF = 4'b0000,
	OFF_ADC_OUT = 4'b0001,
	DAC_FOLLOW_GPIO = 4'b0010,	
	DAC_FOLLOW_ADC = 4'b0011,
	PC_TRIG_LO_CLK_LO = 4'b0100,
	PC_TRIG_LO_CLK_HI = 4'b0101,
	PC_TRIG_HI_CLK_LO = 4'b0110,
	PC_TRIG_HI_CLK_HI = 4'b0111,
	SPGD_ADC = 4'b1000,
	SPGD_J = 4'b1001,
	SPGD_U = 4'b1010,
	SPGD_DELTA = 4'b1011,
	SPGD_DAC = 4'b1100,
	SPGD_UP = 4'b1101,
	SPGD_UM = 4'b1110,
	SPGD_NEW = 4'b1111;
	
	reg [GPIO_WIDTH - 1:0] int_GPIO_OUT = 32'h0000_0000;
	reg [2:0] int_DAC_SEL = 3'b000;
	reg int_TOP_RST = 1'b0;

	assign GPIO_OUT = int_GPIO_OUT;
	assign TOP_DAC_SEL = int_DAC_SEL;
	assign TOP_RST = int_TOP_RST;

	always @(GPIO_IN,ADC_A,ADC_B,JP,JM,DAC_A,DAC_B,U0,U1,DELTA_U0,DELTA_U1,UP_0,UP_1,UM_0,UM_1,NEW_U0,NEW_U1)
	begin
		case (GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4])
			SYSTEM_OFF:
			begin
				int_GPIO_OUT = 32'h0000_0000;
				int_DAC_SEL = 3'b000;
				int_TOP_RST = 1'b1;
			end
			OFF_ADC_OUT:
			begin
				int_GPIO_OUT = {GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4],2'b00,ADC_B,2'b00,ADC_A};
				int_DAC_SEL = 3'b000;
				int_TOP_RST = 1'b0;
			end
			DAC_FOLLOW_GPIO:
			begin
				int_GPIO_OUT = {GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4],2'b00,ADC_B,2'b00,ADC_A};
				int_DAC_SEL = 3'b010;
				int_TOP_RST = 1'b0;
			end
			DAC_FOLLOW_ADC:
			begin
				int_GPIO_OUT = {GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4],DAC_A,2'b00,ADC_A};
				int_DAC_SEL = 3'b011;
				int_TOP_RST = 1'b0;
			end
			PC_TRIG_LO_CLK_LO:
			begin
				int_GPIO_OUT = {GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4],DAC_A,2'b00,ADC_A};
				int_DAC_SEL = 3'b100;
				int_TOP_RST = 1'b0;
			end
			PC_TRIG_LO_CLK_HI:
			begin
				int_GPIO_OUT = {GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4],DAC_A,2'b00,ADC_A};
				int_DAC_SEL = 3'b100;
				int_TOP_RST = 1'b0;
			end
			PC_TRIG_HI_CLK_LO:
			begin
				int_GPIO_OUT = {GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4],DAC_A,2'b00,ADC_A};
				int_DAC_SEL = 3'b100;
				int_TOP_RST = 1'b0;
			end
			PC_TRIG_HI_CLK_HI:
			begin
				int_GPIO_OUT = {GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4],DAC_A,2'b00,ADC_A};
				int_DAC_SEL = 3'b100;
				int_TOP_RST = 1'b0;
			end
			SPGD_ADC:
			begin
				int_GPIO_OUT = {GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4],2'b00,ADC_B,2'b00,ADC_A};
				int_DAC_SEL = 3'b001;
				int_TOP_RST = 1'b0;
			end
			SPGD_J:
			begin
				int_GPIO_OUT = {GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4],2'b00,JM,2'b00,JP};
				int_DAC_SEL = 3'b001;
				int_TOP_RST = 1'b0;
			end
			SPGD_U:
			begin
				int_GPIO_OUT = {GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4],U1,U0};
				int_DAC_SEL = 3'b001;
				int_TOP_RST = 1'b0;
			end
			SPGD_DELTA:
			begin
				int_GPIO_OUT = {GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4],DELTA_U1,DELTA_U0};
				int_DAC_SEL = 3'b001;
				int_TOP_RST = 1'b0;
			end
			SPGD_DAC:
			begin
				int_GPIO_OUT = {GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4],DAC_B,DAC_A};
				int_DAC_SEL = 3'b001;
				int_TOP_RST = 1'b0;
			end
			SPGD_UP:
			begin
				int_GPIO_OUT = {GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4],UP_1,UP_0};
				int_DAC_SEL = 3'b001;
				int_TOP_RST = 1'b0;
			end
			SPGD_UM:
			begin
				int_GPIO_OUT = {GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4],UM_1,UM_0};
				int_DAC_SEL = 3'b001;
				int_TOP_RST = 1'b0;
			end
			SPGD_NEW:
			begin
				int_GPIO_OUT = {GPIO_IN[GPIO_WIDTH-1:GPIO_WIDTH-4],NEW_U1,NEW_U0};
				int_DAC_SEL = 3'b001;
				int_TOP_RST = 1'b0;
			end
			default:
			begin
				int_GPIO_OUT = 32'h0000_0000;
				int_DAC_SEL = 3'b000;
				int_TOP_RST = 1'b0;
			end
		endcase
	end
endmodule
