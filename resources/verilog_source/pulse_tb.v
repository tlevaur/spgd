module pulse_tb;
	reg s;
	reg rst;
	reg clk;

	wire P;
	wire L;
	wire A;
	wire B;

	pulse_FSM pulse(.s(s), .clk(clk), .rst(rst), .P(P), .L(L), .A(A), .B(B));

	initial
	begin
		s = 0;
		rst = 0;
		clk = 0;
		#10 clk = ~clk;
		#10 clk = ~clk;
		#10 rst = 1;
		#10 clk = ~clk;
		#10 clk = ~clk;
		#10 s = 1;
		#10 clk = ~clk;
		#10 clk = ~clk;
		#10 clk = ~clk;
		#10 clk = ~clk;
		#10 clk = ~clk;
		#10 clk = ~clk;
		#10 clk = ~clk;
		#10 clk = ~clk;
		#10 s = 0;
		#10 clk = ~clk;
		#10 clk = ~clk;
		#10 s = 1;
		repeat(8)
		#10 clk = ~clk;
		#10 s = 0;
		#10 clk = ~clk;
		#10 clk = ~clk;
		#10 $finish;
	end
endmodule
