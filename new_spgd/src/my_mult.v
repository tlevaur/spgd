/*
    my_mult must take a DATA_WIDTH >= INT_WIDTH >= BIT_SHIFT
    DATA_WIDTH - Indicates the size of the DATA
        For INT_WIDTH = 16: 
        * DATA_WIDTH = 64 -> 16Q48
        * DATA_WIDTH = 48 -> 16Q32
        * DATA_WIDTH = 32 -> 16Q16
    INT_WIDTH - Indicates the integer size
    BIT_SHIFT - divides the output by 2^BITSHIFT
    DEC_FORMAT - REDUCE LEAST SIGNIFICANT BITS
    INT_FORMAT - REDUCE MOST SIGNIFICANT BITS
*/
module my_mult
#(
	parameter DATA_WIDTH = 64,
	parameter OUT_WIDTH = DATA_WIDTH,
	parameter INT_WIDTH = 16,
	parameter BIT_SHIFT = 0,
	parameter DEC_FORMAT = 0,
	parameter INT_FORMAT = 0
)
(
	input  [DATA_WIDTH - 1 : 0] a,
	input  [DATA_WIDTH - 1 : 0] b,
	output [OUT_WIDTH - 1 : 0] p
);
	wire [DATA_WIDTH + DATA_WIDTH - 1:0] int_p;

	reg MSB = (DATA_WIDTH*2-1-INT_WIDTH)+BIT_SHIFT-INT_FORMAT;
	reg LSB = (DATA_WIDTH-1-INT_WIDTH)+BIT_SHIFT+DEC_FORMAT;
	assign p = int_p[((DATA_WIDTH*2-1-INT_WIDTH)+BIT_SHIFT)-INT_FORMAT : ((DATA_WIDTH-INT_WIDTH)+BIT_SHIFT)+DEC_FORMAT];
       
	gen_mult #(.DATA_WIDTH(DATA_WIDTH)) MULT1 (.a(a), .b(b), .p(int_p));
endmodule
