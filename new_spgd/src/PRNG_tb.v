module PRNG_tb;

	localparam rng_samps = 1000000;
	localparam seed_width = 32;
	localparam out_width = 64;
	localparam rng_width = 14;

	localparam rng_clk_h_period = 5;
	//localparam period_1 = 40 * rng_clk_h_period;
	//localparam period_2 = 60 * rng_clk_h_period;
	//localparam period_3 = 6 * rng_clk_h_period;

	reg rng_clk = 1'b0;
	reg rng_rst = 1'b0;
	//reg [out_width - 1:0] SIGMA = 64'h0000_170A_3D70_A3D7;
	reg [out_width - 1:0] SIGMA = 64'h0000_0000_B851_EB85;
	wire [out_width - 1:0] rng_out_0;
	wire [out_width - 1:0] rng_out_1;

	integer write_data;
	integer i;

	//CLT_RNG #(.SEED1(seed1), .SEED2(seed2), .SEED3(seed3), .SEED4(seed4), .SEED_WIDTH(seed_width), .OUT_WIDTH(out_width)) rng_0(.clk(rng_clk), .rst(rng_rst), .out(rng_out));

	PRNG #(.FP_WIDTH(out_width), .RNG_WIDTH(rng_width)) PRNG_0(.SIGMA(SIGMA), .clk(rng_clk), .rst(rng_rst), .PERT_A(rng_out_0), .PERT_B(rng_out_1));



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
			$fdisplay(write_data, "%x, %x", rng_out_0, rng_out_1);
			//$fmonitor(write_data, txt_reg);
		end
		$fclose(write_data);
		$finish;
	end
endmodule
