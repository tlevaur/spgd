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
        // data_register1 = 14'h00005FFF - data_in;
        data_register1 = data_in;
        // if (data_in > 14'h1FFF)
        // begin
        //     data_register1 = 14'h00005FFF - data_in;
        // end
        // else
        // begin
        //     data_register1 = 14'h00001FFF + data_in;
        // end
    end

    assign data_out = data_register1;
endmodule
