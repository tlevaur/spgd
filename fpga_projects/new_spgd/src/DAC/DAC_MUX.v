// DAC_MUX.v
// Usage: DAC_MUX #(.DATA_WIDTH()) MUX0(.DAC_SEL(), .U_0(), .U_1(), .U_0_P(), .U_0_M(), .U_1_P(), .U_1_M(), .DAC_A_OUT(), .DAC_B_OUT())
module DAC_MUX
#(
	parameter DATA_WIDTH = 64
)
(
	input [1:0] DAC_SEL,
	input [DATA_WIDTH - 1:0] U_0,
	input [DATA_WIDTH - 1:0] U_1,
	input [DATA_WIDTH - 1:0] U_0_P,
	input [DATA_WIDTH - 1:0] U_0_M,
	input [DATA_WIDTH - 1:0] U_1_P,
	input [DATA_WIDTH - 1:0] U_1_M,
	output [DATA_WIDTH - 1:0] DAC_A_OUT,
	output [DATA_WIDTH - 1:0] DAC_B_OUT
);

reg [DATA_WIDTH - 1:0] int_DAC_A_out;
reg [DATA_WIDTH - 1:0] int_DAC_B_out;
reg [DATA_WIDTH - 1:0] zero_init = {DATA_WIDTH{1'b0}};

assign DAC_A_OUT = int_DAC_A_out;
assign DAC_B_OUT = int_DAC_B_out;

always @(DAC_SEL, U_0, U_1, U_0_P, U_0_M, U_1_P, U_1_M)
begin
    case (DAC_SEL)
        2'b11:
        begin
            int_DAC_A_out = U_0;
            int_DAC_B_out = U_1;
        end
        2'b10:
        begin
            int_DAC_A_out = U_0_M;
            int_DAC_B_out = U_1_M;
        end
        2'b01:
        begin
            int_DAC_A_out = U_0_P;
            int_DAC_B_out = U_1_P;
        end
        2'b00:
        begin
            int_DAC_A_out = zero_init;
            int_DAC_B_out = zero_init;
        end
    endcase
end
endmodule
