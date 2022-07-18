module GPIO_BOX_tb;

	reg [31:0] GPIO_IN = 32'h00000000;
	reg [11:0] ADC_A = 12'h666;
	reg [11:0] ADC_B = 12'h777;
	reg [11:0] JP = 12'h222;
	reg [11:0] JM = 12'h420;
	reg [13:0] DAC_A = 14'b00_1011_1101_1011;
	reg [13:0] DAC_B = 14'b01_0101_1101_0101;
	reg [13:0] U0 = 14'b00_1110_1010_1001;
	reg [13:0] U1 = 14'b11_0101_1111_1010;
	reg [13:0] DELTA_U0 = 14'b01_1111_1010_1011;
	reg [13:0] DELTA_U1 = 14'b00_1100_1010_1011;
	reg [13:0] UP_0 = 14'b10_1010_1000_0110;
	reg [13:0] UP_1 = 14'b10_1010_1010_0001;
	reg [13:0] UM_0 = 14'b01_0110_0110_1110;
	reg [13:0] UM_1 = 14'b01_0111_0111_1101;
	reg [13:0] NEW_U0 = 14'b00_1011_1100_0011;
	reg [13:0] NEW_U1 = 14'b00_1101_1110_1011;
	wire [31:0] GPIO_OUT;

	localparam gap_time = 2;
GPIO_BOX #(.DAC_WIDTH(), .ADC_WIDTH(), .GPIO_WIDTH()) gp_con(.GPIO_IN(GPIO_IN), .ADC_A(ADC_A), .ADC_B(ADC_B), .JP(JP), .JM(JM), .DAC_A(DAC_A), .DAC_B(DAC_B), .U0(U0), .U1(U1), .DELTA_U0(DELTA_U0), .DELTA_U1(DELTA_U1), 
	.UP_0(UP_0), .UP_1(UP_1), .UM_0(UM_0), .UM_1(UM_1), .NEW_U0(NEW_U0), .NEW_U1(NEW_U1), .GPIO_OUT(GPIO_OUT));

	initial
	begin
		GPIO_IN = 32'h00000000; //start
		#gap_time;
		GPIO_IN = 32'h0AFAFAFA; //nothing should change
		#gap_time;

		GPIO_IN = 32'h14389418; //adc_written_out
		#gap_time;
		ADC_A = 12'h320;
		ADC_B = 12'h671;
		GPIO_IN = 32'h1A5A5A5A; //adc_written_out
		#gap_time;
		ADC_A = 12'h320;
		ADC_B = 12'h671;
		#gap_time;
		ADC_A = 12'h555;
		ADC_B = 12'h671;
		GPIO_IN = 32'h12621231; //adc_written_out
		#gap_time;
		ADC_A = 12'h555;
		ADC_B = 12'h666;
		#gap_time;
		ADC_A = 12'h420;
		ADC_B = 12'h386;
		#gap_time;

		GPIO_IN = 32'h27776666; //dac_follow_gpio
		#gap_time;
		GPIO_IN = 32'h2A5A5A5A; //dac_follow_gpio
		DAC_A = 14'b10_0110_0110_0110;
		DAC_B = 14'b01_1101_1101_1101;
		#gap_time;

	end
endmodule
