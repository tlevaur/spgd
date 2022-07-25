module CLT_RNG_HIST_tb;

	localparam rng_samps = 1000000;
	localparam seed1 = 697757461;
	localparam seed2 = 1885540239;
	localparam seed3 = 1505946904;
	localparam seed4 = 2693445;
	localparam seed_width = 32;
	localparam out_width = 12;

	localparam rng_clk_h_period = 5;
	//localparam period_1 = 40 * rng_clk_h_period;
	//localparam period_2 = 60 * rng_clk_h_period;
	//localparam period_3 = 6 * rng_clk_h_period;

	reg rng_clk = 1'b0;
	reg rng_rst = 1'b0;
	wire [out_width - 1:0] rng_out;

	integer write_data;
	integer i;

	//CLT_RNG #(.SEED1(seed1), .SEED2(seed2), .SEED3(seed3), .SEED4(seed4), .SEED_WIDTH(seed_width), .OUT_WIDTH(out_width)) rng_0(.clk(rng_clk), .rst(rng_rst), .out(rng_out));

	TOP_RNG #(.OUT_WIDTH(out_width), .SEED_WIDTH(seed_width), .A_SEED1(seed1), .A_SEED2(seed2), .A_SEED3(seed3), .A_SEED4(seed4), 
	.B_SEED1(seed1), .B_SEED2(seed2), .B_SEED3(seed3), .B_SEED4(seed4)) DELTA_U(.clk(rng_clk), .rst(rng_rst), .out_0(rng_out), .out_1());

	always
	begin
		rng_clk = 1'b0;
		#rng_clk_h_period;
		rng_clk = 1'b1;
		#rng_clk_h_period;
	end

	initial
	begin
		write_data = $fopen("samp_generation.txt");
		rng_rst = 1'b1;
		#rng_clk_h_period;
		rng_rst = 1'b0;
		#rng_clk_h_period;
		
		repeat(rng_samps)
		begin
			#rng_clk_h_period;
			$fdisplay(write_data, "%x", rng_out);
			//$fmonitor(write_data, txt_reg);
		end
		$fclose(write_data);
		$finish;
	end
endmodule
