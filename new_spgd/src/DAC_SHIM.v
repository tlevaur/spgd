module DAC_SHIM
#(
	parameter DAC_WIDTH = 14,
	parameter ADC_WIDTH = 12,
	parameter GPIO_WIDTH = 32
)
(
	input [2:0] DAC_SEL,
	input [DAC_WIDTH - 1:0] SPGD_A_OUT,
	input [DAC_WIDTH - 1:0] SPGD_B_OUT,
	input [DAC_WIDTH - 1:0] PC_A_OUT,
	input [DAC_WIDTH - 1:0] PC_B_OUT,
	input [ADC_WIDTH - 1:0] ADC_A,
	input [ADC_WIDTH - 1:0] ADC_B,
	input [GPIO_WIDTH - 1:0] GPIO_IN,
	output [DAC_WIDTH - 1:0] DAC_A_OUT,
	output [DAC_WIDTH - 1:0] DAC_B_OUT
);

reg [DAC_WIDTH - 1:0] int_DAC_A_OUT = 14'b00_0000_0000_0000;
reg [DAC_WIDTH - 1:0] int_DAC_B_OUT = 14'b00_0000_0000_0000;

localparam [2:0] SYSTEM_OFF = 3'b000,
	SPGD_RUN = 3'b001,
	DAC_GPIO = 3'b010,
	DAC_ADC = 3'b011,
	DAC_PC = 3'b100;

assign DAC_A_OUT = int_DAC_A_OUT;
assign DAC_B_OUT = int_DAC_B_OUT;

always @(DAC_SEL)
begin
	case (DAC_SEL)
		SYSTEM_OFF:
		begin
			int_DAC_A_OUT = 14'b00_0000_0000_0000;
			int_DAC_B_OUT = 14'b00_0000_0000_0000;
		end
		SPGD_RUN:
		begin
			int_DAC_A_OUT = SPGD_A_OUT;
			int_DAC_B_OUT = SPGD_B_OUT;			
		end
		DAC_GPIO:
		begin
			int_DAC_A_OUT = GPIO_IN[DAC_WIDTH-1:0];
			int_DAC_B_OUT = GPIO_IN[DAC_WIDTH+DAC_WIDTH-1:DAC_WIDTH];	
		end
		DAC_ADC:
		begin
			int_DAC_A_OUT = {ADC_A[ADC_WIDTH - 1], ADC_A[ADC_WIDTH - 1], ADC_A};
			int_DAC_B_OUT = {ADC_B[ADC_WIDTH - 1], ADC_B[ADC_WIDTH - 1], ADC_B};			
		end
		DAC_PC:
		begin
			int_DAC_A_OUT = PC_A_OUT;
			int_DAC_B_OUT = PC_B_OUT;	
		end
		default:
		begin
			int_DAC_A_OUT = 14'b00_0000_0000_0000;
			int_DAC_B_OUT = 14'b00_0000_0000_0000;
		end
	endcase
end
endmodule
