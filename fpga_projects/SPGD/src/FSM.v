// module FSM
// (
//     input wire done,
// 	input wire adc_clk,
// 	input wire start,
// 	output wire [1:0] FSM_STATE,
//     output wire RST
// );

// localparam [1:0]
// 	waiting = 2'b10,
// 	ADC_RST = 2'b01;

// reg [1:0] current_state = waiting;
// reg [1:0] next_state = waiting;

// assign FSM_STATE = current_state;
// assign RST = FSM_RST;
// reg FSM_RST = 1'b0;


// always @(posedge adc_clk)
// begin
// 	if(~start)
// 	begin
// 		current_state = waiting;
// 	end	
// 	else
// 	begin
// 		current_state = next_state;
// 	end
// end

// always @(posedge adc_clk)
// begin
// 	case (current_state)
// 		waiting: 
// 		begin
// 			FSM_RST = 1'b0;
//             valid = 1'b0;
// 			if(done)
// 			begin
// 				next_state = ADC_RST;
// 			end			
// 			else
// 			begin
// 				next_state = waiting;
// 			end		
// 		end
// 		ADC_RST:
// 		begin
//             valid = 1'b1;
// 			if(~done && valid)
// 			begin
// 				next_state = waiting;
// 			end
// 			else
// 			begin
// 				next_state = ADC_RST;
// 			end
// 		end
// 		default:
// 		begin
// 			next_state = current_state;
// 		end
// 	endcase
// end
// endmodule



module FSM
(
    input adc_clk, 
    output REG_RST, 
    output REG_WRITE, 
    output ADC_RST, 
    input done, 
    input enable
);
//  REG_WRITE is MSB, REG_RST is first/midddle bit and ADC_RST is LSB bit
localparam [2:0]
	stopped = 3'b011,
	waiting = 3'b000,
	reg_write = 3'b100,
	sADC_RST = 3'b001;

localparam
    ON = 1'b1,
    OFF = 1'b0;


     reg [2:0] state = stopped;

     assign REG_WRITE = state[2];
     assign REG_RST = state[1];
     assign ADC_RST = state[0];

   always @(posedge adc_clk, posedge done )
   begin
   if (~enable) begin
        state = stopped;
   end
   else
   begin
       case( state )
       stopped:
       begin
          if(enable) begin
                state = waiting;
          end
       end
       waiting:
       begin
            if( done ) begin
                state = reg_write;
            end
            else begin
                state = waiting;
            end
       end
       reg_write:
       begin
            state = sADC_RST;
       end
       sADC_RST:
       begin
            state = waiting;
       end

       default:
       begin
            state = stopped;
       end
       endcase
   end
end


endmodule

// module FSM
// (
//     input adc_clk, 
//     output RST, 
//     input done, 
//     input enable,
//     output valid,
//     output [1:0] FSM_STATE
// );

// localparam [1:0]
// 	stopped = 2'b00,
// 	waiting = 2'b01,
// 	ADC_RST = 2'b10,
//     RSTADC = 2'b11;


// localparam
// 	OFF = 1'b0,
// 	ON = 1'b1;

//    reg internal_valid = 1'b0;
//     reg [1:0]next_state = stopped;
//     reg [1:0]current_state = stopped;
//     assign valid = internal_valid;
//     assign FSM_STATE = current_state;
//     reg internal_RST = 1'b0;

//     assign RST = internal_RST;

//     always @( posedge adc_clk )
//         begin
//         if( ~enable ) begin
//                 current_state = stopped;
//         end
//         else 
//         begin
//             current_state = next_state;
//         end
//    end
//    always @( posedge adc_clk )
//    begin
//        case( current_state )
//        stopped:
//        begin
//             internal_valid = OFF;
//             internal_RST = OFF;
//             if (enable) begin
//                 next_state = waiting;
//             end
//             else begin
//                 next_state = stopped;
//             end
//        end
//        waiting:
//        begin
//             internal_valid = OFF;
//             internal_RST = OFF;
//             if( done ) begin
//                 next_state = ADC_RST;
//             end
//             else begin
//                 next_state = waiting;
//             end
//        end
//        ADC_RST:
//        begin
//             internal_valid = ON;
//             internal_RST = OFF;
//             next_state = RSTADC;
//        end
//        RSTADC:
//        begin
//             internal_RST = ON;
//             next_state = waiting;
//        end

//        default:
//        begin
//             next_state = stopped;
//        end
//        endcase
//    end
// endmodule
