// AXIS_to_GPIO.v
// This module converts some AXI value to a form
// usable by the GPIO.
module AXIS_to_GPIO
#(
	parameter AXIS_TDATA_WIDTH = 32,
	parameter GPIO_WIDTH = 32
)
(
	input [AXIS_TDATA_WIDTH - 1:0] s_axis_tdata,
	input s_axis_tvalid,
	output s_axis_tready,
	output [GPIO_WIDTH - 1:0] GP_OUT	
);
	assign s_axis_tready = 1'b1;
	assign GP_OUT = s_axis_tdata;
endmodule
