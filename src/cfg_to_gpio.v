module cfg_to_gpio
#(
	parameter GPIO_WIDTH = 32,
	parameter CFG_WIDTH = 1024
)
(
	input [CFG_WIDTH - 1:0] cfg_data,
	output [GPIO_WIDTH - 1:0] GP_OUT
);

	assign GP_OUT = cfg_data[GPIO_WIDTH - 1:0];
endmodule
