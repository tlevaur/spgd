module configer_tb;

reg ADC_CLK = 1'b0;
reg [31:0] GPIO_0 = 32'h00000000;
reg [31:0] GPIO_1 = 32'h00000000;
wire [31:0] w_param_0;
wire [31:0] w_param_1;
wire [31:0] w_param_2;
wire [31:0] w_param_3;

configer #(.GPIO_WIDTH(32), .DAC_WIDTH(14), .ADC_WIDTH(12)) configs(.ADC_CLK(ADC_CLK), .GPIO_0(GPIO_0), .GPIO_1(GPIO_1), .LED_OUT(), 
	.param_0(w_param_0), .param_1(w_param_1), .param_2(w_param_2), .param_3(w_param_3),
	.param_4(), .param_5(), .param_6(), .param_7(),
	.param_8(), .param_9(), .param_10(), .param_11(),
	.param_12(), .param_13(), .param_14(), .param_15()
);
	
localparam ADC_H_PERIOD = 2;

always
begin
	#ADC_H_PERIOD;
	ADC_CLK = 1'b0;
	#ADC_H_PERIOD;
	ADC_CLK = 1'b1;	
end

initial
begin
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_1 = 32'hA5A5A5A5;
	GPIO_0 = 32'h00000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'h80000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'hC0000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'h80000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'hC0000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'h80000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'hC0000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'h80000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'hC0000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'h80000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'hC0000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'h80000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'hC0000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'h80000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'hC0000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'h80000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'hC0000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'h80000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	GPIO_0 = 32'hC0000000;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
	#ADC_H_PERIOD;
end
endmodule