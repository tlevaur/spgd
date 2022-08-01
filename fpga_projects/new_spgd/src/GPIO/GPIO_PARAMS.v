module GPIO_PARAMS #(
	parameter GPIO_WIDTH = 32,
	parameter PARAM_COUNT = 16
)(
	input  [GPIO_WIDTH - 1 : 0] GP_IN,
	input [PARAM_COUNT*GPIO_WIDTH - 1 : 0] PARAMS_DATA,
	input [3:0] SET,
	output [GPIO_WIDTH - 1 : 0] GP_OUT
);

	wire en;
	wire [3:0] parameter_set;
	reg [GPIO_WIDTH - 1 : 0] GP_OUT_PARAM = {GPIO_WIDTH{1'b0}};
	assign en = GP_IN[GPIO_WIDTH - 3];
	assign parameter_set = GP_IN[GPIO_WIDTH - 5: GPIO_WIDTH - 8];
	assign GP_OUT = GP_OUT_PARAM;
	integer i = 0;

	always @(GP_IN or PARAMS_DATA or en or parameter_set or SET)
	begin
		if(en) begin
			for(i=0; i<= PARAM_COUNT; i=i+1) begin
				if(GP_IN[3:0] == i%32 & parameter_set==SET) begin
					GP_OUT_PARAM = PARAMS_DATA[i * GPIO_WIDTH +: GPIO_WIDTH];
				end
			end
		end
	end
endmodule