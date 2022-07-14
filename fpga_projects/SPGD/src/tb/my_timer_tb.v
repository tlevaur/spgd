module my_timer_tb;

	reg [31:0] GP_I = 32'h00000000;
	reg ADC_CLK = 1'b0;

	wire [13:0] A_out;
	wire [13:0] B_out;

	localparam ADC_h_period = 2;

	my_timer #(.GPIO_WIDTH(32), .DAC_WIDTH(14)) my_time(.GP_IN(GP_I), .ADC_CLK(ADC_CLK), .DAC_A_OUT(A_out), .DAC_B_OUT(B_out), .val_0(), .val_1());

always
begin
	ADC_CLK = 1'b0;
	#ADC_h_period;
	ADC_CLK = 1'b1;
	#ADC_h_period;
end

initial
begin
	#ADC_h_period;
	#ADC_h_period;
//	GP_I = 32'h8EE6B280;
	GP_I = 32'h80000020;
end
endmodule
