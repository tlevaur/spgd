`timescale 1 ns/1 ps

module OR_tb;

localparam sub_test_0 = 0; //okay add
localparam U_test_0 = 14'h1FF7;
localparam delta_test_0 = 14'h0005;
localparam req_test_0 = 14'h1FFC;

localparam sub_test_1 = 0; //overflow
localparam U_test_1 = 14'h1FFC;
localparam delta_test_1 = 14'h0005;
localparam req_test_1 = 14'h2001;

localparam sub_test_2 = 0; //underflow
localparam U_test_2 = 14'h0005;
localparam delta_test_2 = 14'h3FF9;
localparam req_test_2 = 14'h3FFE;

localparam sub_test_3 = 1; //okay sub
localparam U_test_3 = 14'h1FFC;
localparam delta_test_3 = 14'h0005;
localparam req_test_3 = 14'h1FF7;

localparam sub_test_4 = 1; //underflow
localparam U_test_4 = 14'h0005;
localparam delta_test_4 = 14'h0007;
localparam req_test_4 = 14'h3FFE;

localparam sub_test_5 = 1; //overflow
localparam U_test_5 = 14'h1FFC;
localparam delta_test_5 = 14'h3FFB;
localparam req_test_5 = 14'h2001;


reg [13:0] U = 14'h0000;
reg [13:0] delta_U = 14'h0000;
reg [13:0] req = 14'h0000;
reg sub_sel = 0;

wire [13:0] actual_out;


OR_CHECK #(.IN_WIDTH()) check0(.a(U), .b(delta_U), .sub_sel(sub_sel), .request(req), .actual(actual_out));

initial
begin
	#1;
	U = U_test_0;
	delta_U = delta_test_0;
	req = req_test_0;
	sub_sel = sub_test_0;
	#1;
	U = U_test_1;
	delta_U = delta_test_1;
	req = req_test_1;
	sub_sel = sub_test_1;
	#1;
	U = U_test_2;
	delta_U = delta_test_2;
	req = req_test_2;
	sub_sel = sub_test_2;
	#1;
	U = U_test_3;
	delta_U = delta_test_3;
	req = req_test_3;
	sub_sel = sub_test_3;
	#1;
	U = U_test_4;
	delta_U = delta_test_4;
	req = req_test_4;
	sub_sel = sub_test_4;
	#1;
	U = U_test_5;
	delta_U = delta_test_5;
	req = req_test_5;
	sub_sel = sub_test_5;
end

endmodule
