module gen_reg
#(
	parameter DATA_WIDTH = 64
)
(
	(* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
	input wire [DATA_WIDTH - 1:0] data_in,
	input wire clk,
	input wire wrt,
	input wire rst,
	output wire [DATA_WIDTH - 1:0] data_out
);

reg [DATA_WIDTH - 1:0] int_data_reg = {DATA_WIDTH{1'b0}};

always @(negedge clk)
begin
    if (rst)
        int_data_reg = 0;
    else if (wrt)
        int_data_reg = data_in;
    else
        int_data_reg = int_data_reg;
end
assign data_out = int_data_reg;
endmodule

