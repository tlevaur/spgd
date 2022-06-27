// LED_CONTROLLER is a module to control the redpitaya LEDs 0-7
// this controller takes in an 8-bit input mapping to LEDs 0-7
// a high bit at an index represents ON and low bit represents OFF. 

module LED_CONTROLLER
#(
    parameter LED_WIDTH = 1
)
(
    input [LED_WIDTH - 1:0] val,
    output [LED_WIDTH - 1:0] led_o
);

    integer i;
    reg [LED_WIDTH-1:0] LED=8'b00000000;
    assign led_o = LED;
    localparam
        ON = 1'b1,
        OFF = 1'b0;

    always @(val) 
    begin
        for(i = 0; i < LED_WIDTH; i = i + 1) begin
            case (val[i])
                1'b1: LED[i] = ON;      // LED ON
                1'b0: LED[i] = OFF;     // LED OFF
                default: LED[i] = 1'b0; // Set LED OFF by default
            endcase
        end
    end
endmodule
