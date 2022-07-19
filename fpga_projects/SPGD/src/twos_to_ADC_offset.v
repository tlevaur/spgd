module twos_to_ADC_offset
#(
	parameter WIRE_WIDTH = 12
)
(
    input [WIRE_WIDTH - 1:0] data_in,
	output [WIRE_WIDTH - 1:0] data_out
);

    reg [WIRE_WIDTH - 1:0] data_register1 = 14'h0;
    
    always @(data_in)
    begin
        if(data_in[WIRE_WIDTH - 1])
            data_register1 = data_in - 14'h800;
        else 
            data_register1 = data_in + 14'h800;
    end
    
    assign data_out = data_register1;

endmodule

// if msb is 1 do a 2 com 
// 12 bit input and 12 or 14 make it run so it is pipe line combinational code only no
// The greatest neg val is x800 unsigned bin is -2048
// the least neg val gives greates unsigned bin val -1 = all Fs
// 
