module pulse_FSM_tb;
	localparam TRIG_H_period=50;
	localparam ADC_H_period=2;

	wire P;
	reg ADC_CLK = 1'b0;
	reg TRIG_CLK = 1'b0;
	reg PULSE_RST = 1'b0;
	wire [32-1:0] PULSE_COUNT;
	reg [32-1:0] REG_OUT = 32'h0000_0000;
	// reg PULSE_COUNT_NEXT = 32'h0000_0000;
	wire DONE;

	pulse_FSM FSM0 (
		.s(TRIG_CLK),
		.clk(ADC_CLK),
		.rst(PULSE_RST),
		.P(P),
		.L(),
		.A(),
		.B()
	);
	// pulse_DAC #(.DAC_WIDTH(14)) DAC0 (.P(P), .DAC_A(), .DAC_B());
	pulse_counter #(
		.DATA_WIDTH(32)
	) PULSE_COUNT0 (
		.clk(ADC_CLK),
		.en(!P),
		.count_val(PULSE_COUNT)
	);

	gen_reg #(
		.DATA_WIDTH(32)
	) REG0 (
		.data_in(PULSE_COUNT),
		.clk(ADC_CLK),
		.wrt(P),
		.rst(REG_RST),
		.data_out(REG_OUT)
);

	always
	begin
		ADC_CLK = 1'b0;
		#ADC_H_period;
		ADC_CLK = 1'b1;
		#ADC_H_period;
	end

	always
	begin
		TRIG_CLK = 1'b0;
		#TRIG_H_period;
		TRIG_CLK = 1'b1;
		#TRIG_H_period;
	end

	initial
	begin
		PULSE_RST = 1'b0;
		#ADC_H_period;
		PULSE_RST = 1'b1;
	end
endmodule
