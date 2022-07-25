module GPIO_PARAMS_tb;
	localparam GPIO_WIDTH = 32;
	localparam H_period=2;
	localparam F_period=4;
	reg  [GPIO_WIDTH - 1 : 0] GP_IN = {GPIO_WIDTH{1'b0}};
	wire [GPIO_WIDTH - 1 : 0] GP_OUT;

	GPIO_PARAMS #(
		.GPIO_WIDTH(GPIO_WIDTH),
		.PARAM_COUNT(16),
		.SET(0)
	) PARAMS (
		.GP_IN(GP_IN),
		.GP_OUT(GP_OUT),
		.PARAMS_DATA({
			{32'h0000_0000F},
			{32'h0000_0000E},
			{32'h0000_0000D},
			{32'h0000_0000C},
			{32'h0000_0000B},
			{32'h0000_0000A},
			{32'h0000_00009},
			{32'h0000_00008},
			{32'h0000_00007},
			{32'h0000_00006},
			{32'h0000_00005},
			{32'h0000_00004},
			{32'h0000_00003},
			{32'h0000_00002},
			{32'h0000_00001},
			{32'h0000_00000}
		})
	);

	initial
	begin
		// GP_IN = 32'hC0000000;
		#F_period;
		// #F_period;
		// #F_period;
		// #F_period;
		GP_IN = 32'h20000000;
		// DATA_IN = DATA_IN + 1;
		// #F_period;
		// write_data = $fopen("filter_output_a.txt","w");
		repeat(16) begin
			// $fdisplay(write_data, "%x", DACA_CODE_WIRE_OUT);
			#F_period;
			GP_IN = GP_IN + 1;
		end
		//$fclose(write_data);
		$finish;
	end
endmodule

			// {1'h2, {6{1'b0}}, 2'h0F},
