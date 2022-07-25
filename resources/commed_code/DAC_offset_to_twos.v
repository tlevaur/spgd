// DAC_offset_to_twos.v
// This module takes an offset encoded DAC value and 
// outputs it in a form usable by the DAC chip AD9745.
// Usage: DAC_offset_to_twos #(.DATA_WIDTH()) DAC_twos (.in(), .out())
module DAC_offset_to_twos
#(
	parameter DATA_WIDTH = 14
)
(
	input [WIRE_WIDTH - 1:0] data_in,
	output [WIRE_WIDTH - 1:0] data_out
);

	reg [WIRE_WIDTH - 1:0] data_register1 = 14'h00000000;
    
    always @(data_in)
    begin
        data_register1 = 14'h00005FFF - data_in; 
    end

    assign data_out = data_register1;
endmodule
