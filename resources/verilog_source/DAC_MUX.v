module DAC_MUX
#(
	parameter DATA_WIDTH = 14
)
(
    input adc_clk,
	input [1:0] DAC_SEL,
	input [DATA_WIDTH - 1:0] U0,
	input [DATA_WIDTH - 1:0] U1,
	input [DATA_WIDTH - 1:0] U0_p,
	input [DATA_WIDTH - 1:0] U0_m,
	input [DATA_WIDTH - 1:0] U1_p,
	input [DATA_WIDTH - 1:0] U1_m,
	output [DATA_WIDTH - 1:0] DAC_A_OUT,
	output [DATA_WIDTH - 1:0] DAC_B_OUT
);


reg [DATA_WIDTH - 1:0] int_DAC_A_out;
reg [DATA_WIDTH - 1:0] int_DAC_B_out;
wire [DATA_WIDTH - 1:0] zero_init = {DATA_WIDTH{1'b0}};

assign DAC_A_OUT=DAC_SEL[1]?(DAC_SEL[0]?U0:U0_m):(DAC_SEL[0]?U0_p:zero_init);
assign DAC_B_OUT=DAC_SEL[1]?(DAC_SEL[0]?U1:U1_m):(DAC_SEL[0]?U1_p:zero_init); 

always @(posedge adc_clk)
begin
    case (DAC_SEL)
        2'b11:
        begin
            int_DAC_A_out = U0;
            int_DAC_B_out = U1;
        end
        2'b10:
        begin
            int_DAC_A_out = U0_m;
            int_DAC_B_out = U1_m;
        end
        2'b01:
        begin
            int_DAC_A_out = U0_p;
            int_DAC_B_out = U1_p;
        end
        2'b00:
        begin
            int_DAC_A_out = zero_init;
            int_DAC_B_out = zero_init;
        end
    endcase
end

endmodule
