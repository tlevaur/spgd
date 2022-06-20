module DAC_offset_to_twos
#(
	parameter WIRE_WIDTH = 14
)
(
    input [WIRE_WIDTH - 1:0] data_in,
	output [WIRE_WIDTH - 1:0] data_out
);

    reg [WIRE_WIDTH - 1:0] data_register1 = 14'h00000000;
    
    always @(data_in)
    begin
        if(data_in < 12'h200 )
            data_register1 = data_in - 14'h1FFF;
        else 
            data_register1 = 14'h00005FFF - data_in; 
    end
    
    assign data_out = data_register1;
endmodule
