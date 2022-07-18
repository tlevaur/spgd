module ADC_filter_tb;
	
	reg [11:0] ADC_in = 12'h000;
	reg ADC_clk = 1'b0;
	wire [11:0] ADC_out;

	localparam clk_h_period = 2;
	localparam wait_period = clk_h_period * 32;
	ADC_filter #(.ADC_WIDTH(12)) filter0 (.ADC_in(ADC_in), .ADC_clk(ADC_clk), .ADC_out(ADC_out));

	always
	begin
		ADC_clk = 1'b0;
		#clk_h_period;
		ADC_clk = 1'b1;
		#clk_h_period;
	end

	initial
	begin
		#clk_h_period;
		ADC_in = 12'hAAA;
		#wait_period;
		#clk_h_period;
		#clk_h_period;
		ADC_in = 12'h555;
		#wait_period;
		#wait_period;
		$finish;
	end
endmodule
