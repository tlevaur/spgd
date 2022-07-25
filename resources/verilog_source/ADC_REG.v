
// ADC_REG.v
module ADC_REG
(
	(* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
	input wire adc_clk_p,
	input wire adc_clk_n,
	input wire [11:0] data_in,
//	input wire clk,
//	input wire rst,
	output wire [11:0] a_data_out,
	output wire [11:0] b_data_out,
	output wire adc_clk
);
reg [11:0] int_a_data_reg;
reg [11:0] int_b_data_reg;
wire int_clk0;
wire int_clk;

IBUFGDS adc_clk_inst0 (.I(adc_clk_p), .IB(adc_clk_n), .O(int_clk0));
BUFG adc_clk_inst (.I(int_clk0), .O(int_clk));

always @(posedge int_clk)
begin
	int_a_data_reg[0] <= data_in[0];
	int_b_data_reg[0] <= data_in[6];

	int_a_data_reg[2] <= data_in[1];
	int_b_data_reg[2] <= data_in[7];

	int_a_data_reg[4] <= data_in[2];
	int_b_data_reg[4] <= data_in[8];

	int_a_data_reg[6] <= data_in[3];
	int_b_data_reg[6] <= data_in[9];

	int_a_data_reg[8] <= data_in[4];
	int_b_data_reg[8] <= data_in[10];

	int_a_data_reg[10] <= data_in[5];
	int_b_data_reg[10] <= data_in[11];
end
always @(negedge int_clk)
begin
	int_a_data_reg[1] <= data_in[0];
	int_b_data_reg[1] <= data_in[6];

	int_a_data_reg[3] <= data_in[1];
	int_b_data_reg[3] <= data_in[7];

	int_a_data_reg[5] <= data_in[2];
	int_b_data_reg[5] <= data_in[8];

	int_a_data_reg[7] <= data_in[3];
	int_b_data_reg[7] <= data_in[9];

	int_a_data_reg[9] <= data_in[4];
	int_b_data_reg[9] <= data_in[10];

	int_a_data_reg[11] <= data_in[5];
	int_b_data_reg[11] <= data_in[11];
end
assign adc_clk = int_clk;
assign a_data_out = int_a_data_reg;
assign b_data_out = int_b_data_reg;
//		if (rst)
//			data_out = 0;
//		else if (clk)
//			data_out = data_in;
endmodule
