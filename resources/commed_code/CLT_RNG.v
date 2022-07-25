module CLT_RNG
#(
	parameter SEED1 = 697757461,
	parameter SEED2 = 1885540239,
	parameter SEED3 = 1505946904,
	parameter SEED4 = 2693445,
	parameter SEED_WIDTH = 32,
	parameter OUT_WIDTH = 7
)
(
	input wire clk,
	input wire rst,
	output [OUT_WIDTH - 1:0] out
);
wire [OUT_WIDTH - 3:0] uniform1;
wire [OUT_WIDTH - 3:0] uniform2;
wire [OUT_WIDTH - 3:0] uniform3;
wire [OUT_WIDTH - 3:0] uniform4;

wire [OUT_WIDTH - 1:0] adder1_o;
wire [OUT_WIDTH - 1:0] adder2_o;
//wire [RAND_WIDTH - 1:0] adder3_o;

wire [OUT_WIDTH - 1:0] add0_a = {uniform1[OUT_WIDTH-3], uniform1[OUT_WIDTH-3], uniform1[OUT_WIDTH-3], uniform1[OUT_WIDTH-4:0]};
wire [OUT_WIDTH - 1:0] add0_b = {uniform2[OUT_WIDTH-3], uniform2[OUT_WIDTH-3], uniform2[OUT_WIDTH-3], uniform2[OUT_WIDTH-4:0]};
wire [OUT_WIDTH - 1:0] add1_a = {uniform3[OUT_WIDTH-3], uniform3[OUT_WIDTH-3], uniform3[OUT_WIDTH-3], uniform3[OUT_WIDTH-4:0]};
wire [OUT_WIDTH - 1:0] add1_b = {uniform4[OUT_WIDTH-3], uniform4[OUT_WIDTH-3], uniform4[OUT_WIDTH-3], uniform4[OUT_WIDTH-4:0]};

//gen_l_padder #(.IN_WIDTH(OUT_WIDTH), .OUT_WIDTH(RAND_WIDTH), .L_PAD_WIDTH(RAND_WIDTH - OUT_WIDTH)) pad0(.in(adder3_o[OUT_WIDTH-1:0]), .out(out));

gen_adder #(.IN_WIDTH(OUT_WIDTH), .OUT_WIDTH(OUT_WIDTH)) add1 (.a(add0_a), .b(add0_b), .s(adder1_o));
gen_adder #(.IN_WIDTH(OUT_WIDTH), .OUT_WIDTH(OUT_WIDTH)) add2 (.a(add1_a), .b(add1_b), .s(adder2_o));
gen_adder #(.IN_WIDTH(OUT_WIDTH), .OUT_WIDTH(OUT_WIDTH)) add3 (.a(adder1_o), .b(adder2_o), .s(out));

LFSR #(.REG_WIDTH(SEED_WIDTH - 1), .OUT_WIDTH(OUT_WIDTH), .SEED(SEED1)) reg1(.clk(clk), .rst(rst), .random(uniform1));
LFSR #(.REG_WIDTH(SEED_WIDTH - 1), .OUT_WIDTH(OUT_WIDTH), .SEED(SEED2)) reg2(.clk(clk), .rst(rst), .random(uniform2));
LFSR #(.REG_WIDTH(SEED_WIDTH - 1), .OUT_WIDTH(OUT_WIDTH), .SEED(SEED3)) reg3(.clk(clk), .rst(rst), .random(uniform3));
LFSR #(.REG_WIDTH(SEED_WIDTH - 1), .OUT_WIDTH(OUT_WIDTH), .SEED(SEED4)) reg4(.clk(clk), .rst(rst), .random(uniform4));

//assign out = adder3_o;

endmodule
