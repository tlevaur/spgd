module TOP_SYS_tb;
	localparam NUM_SAMPS = 4096;
	localparam H_period=2;
	localparam TRIG_IN_H_period=25000;
	localparam F_period=4;
	localparam AVE_period = F_period*1024;
	localparam FP_WIDTH = 32;
	localparam GPIO_WIDTH = 32;
	localparam ADC_WIDTH = 12;
	localparam DAC_WIDTH = 14;
	localparam CFG_WIDTH = 1024;

	reg ADC_CLK = 1'b0;
	reg TRIG_IN = 1'b0;
	reg  [ADC_WIDTH  - 1 : 0] ADC_A_IN = {ADC_WIDTH{1'b0}};
	reg  [ADC_WIDTH  - 1 : 0] ADC_B_IN = {ADC_WIDTH{1'b0}};
	reg  [GPIO_WIDTH - 1 : 0] GP_IN = {GPIO_WIDTH{1'b0}};
	wire [GPIO_WIDTH - 1 : 0] GP_OUT;
	wire [DAC_WIDTH  - 1 : 0] DAC_A_OUT;
	wire [DAC_WIDTH  - 1 : 0] DAC_B_OUT;

	localparam IN1_ADC_CAL_GAIN	= {{32'h0001_1A7B}, {FP_WIDTH-32{1'b0}}};
	localparam IN1_ADC_CAL_OFFSET	= {{32'hFFFF_FD3D}, {FP_WIDTH-32{1'b0}}};
	localparam IN2_ADC_CAL_GAIN	= {{32'h0001_1D8F}, {FP_WIDTH-32{1'b0}}};
	localparam IN2_ADC_CAL_OFFSET	= {{32'hFFFF_FBD1}, {FP_WIDTH-32{1'b0}}};
	localparam OUT1_DAC_CAL_GAIN	= {{32'h0000_EF06}, {FP_WIDTH-32{1'b0}}};
	localparam OUT1_DAC_CAL_OFFSET	= {{32'h0000_046C}, {FP_WIDTH-32{1'b0}}};
	localparam OUT2_DAC_CAL_GAIN	= {{32'h0000_EE0D}, {FP_WIDTH-32{1'b0}}};
	localparam OUT2_DAC_CAL_OFFSET	= {{32'h0000_12EC}, {FP_WIDTH-32{1'b0}}};
	localparam GAMMA		= {{32'h0004_0000}, {FP_WIDTH-32{1'b0}}};
	localparam SIGMA		= {{32'h0000_170A}, {FP_WIDTH-32{1'b0}}};

	reg  [CFG_WIDTH  - 1 : 0] CFG_IN = {{CFG_WIDTH-FP_WIDTH*9{1'b0}},
						GAMMA,
						SIGMA,
						OUT2_DAC_CAL_OFFSET, OUT2_DAC_CAL_GAIN,
						OUT1_DAC_CAL_OFFSET, OUT1_DAC_CAL_GAIN,
						IN2_ADC_CAL_OFFSET, IN2_ADC_CAL_GAIN,
						IN1_ADC_CAL_OFFSET, IN1_ADC_CAL_GAIN
					};
	

	TOP_SYS #(
		.FP_WIDTH(FP_WIDTH),
		.GPIO_WIDTH(GPIO_WIDTH),
		.CFG_WIDTH(CFG_WIDTH),
		.ADC_WIDTH(ADC_WIDTH),
		.DAC_WIDTH(DAC_WIDTH)
	) TOP_SYS0 (
		.ADC_CLK(ADC_CLK),
		.TRIG_IN(TRIG_IN),
		.GP_IN(GP_IN),
		.GP_OUT(GP_OUT),
		.ADC_A_IN(ADC_A_IN),
		.ADC_B_IN(ADC_B_IN),
		.DAC_A_OUT(DAC_A_OUT),
		.DAC_B_OUT(DAC_B_OUT),
		.CFG_IN(CFG_IN)
	);
	always
	begin
		ADC_CLK = 1'b0;
		#H_period;
		ADC_CLK = 1'b1;
		#H_period;
	end

	always
	begin
		TRIG_IN = 1'b0;
		#TRIG_IN_H_period;
		TRIG_IN = 1'b1;
		#TRIG_IN_H_period;
	end
	initial
	begin
		GP_IN = 32'hE0000000;
		// repeat(16) begin
		// 	#F_period;
		// 	GP_IN = GP_IN+1;
		// end
		// GP_IN = 32'hE1000000;
		// repeat(16) begin
		// 	#F_period;
		// 	GP_IN = GP_IN+1;
		// end
		// GP_IN = 32'hE2000000;
		// repeat(16) begin
		// 	#F_period;
		// 	GP_IN = GP_IN+1;
		// end
		// // GP_IN = 32'hE2000000;
		// repeat(12) begin
		// 	#F_period;
		// 	GP_IN = GP_IN+1;
		// end
		// DATA_IN = DATA_IN + 1;
		// #F_period;
		// write_data = $fopen("filter_output_a.txt","w");
		repeat(NUM_SAMPS) begin
			#AVE_period;
			//$fdisplay(write_data, "%x", DACA_CODE_WIRE_OUT);
			#F_period;
			#F_period;
			ADC_A_IN = ADC_A_IN + 16;
			ADC_B_IN = ADC_B_IN - 16;
		end
	end
endmodule
