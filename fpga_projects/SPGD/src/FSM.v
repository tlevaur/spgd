// module FSM
// (
//     input wire done,
// 	input wire adc_clk,
// 	input wire start,
// 	output wire [1:0] FSM_STATE,
//     output wire RST
// );

// localparam [1:0]
// 	notDONE = 2'b10,
// 	DONE = 2'b01;

// reg [1:0] current_state = notDONE;
// reg [1:0] next_state = notDONE;

// assign FSM_STATE = current_state;
// assign RST = FSM_RST;
// reg FSM_RST = 1'b0;


// always @(posedge adc_clk)
// begin
// 	if(~start)
// 	begin
// 		current_state = notDONE;
// 	end	
// 	else
// 	begin
// 		current_state = next_state;
// 	end
// end

// always @(posedge adc_clk)
// begin
// 	case (current_state)
// 		notDONE: 
// 		begin
// 			FSM_RST = 1'b0;
//             valid = 1'b0;
// 			if(done)
// 			begin
// 				next_state = DONE;
// 			end			
// 			else
// 			begin
// 				next_state = notDONE;
// 			end		
// 		end
// 		DONE:
// 		begin
//             valid = 1'b1;
// 			if(~done && valid)
// 			begin
// 				next_state = notDONE;
// 			end
// 			else
// 			begin
// 				next_state = DONE;
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
    output RST, 
    input done, 
    input enable,
    output valid,
    output [1:0] FSM_STATE
);

localparam [1:0]
	notDONE = 2'b00,
	WRITTEN = 2'b01,
	DONE = 2'b10;

localparam
    ON = 1'b1,
    OFF = 1'b0;

   reg state = notDONE;
   reg internal_valid = OFF;
   reg internal_RST = OFF;

    assign valid = internal_valid;
    assign RST = internal_RST;
    assign FSM_STATE = state;

   always @( posedge adc_clk, posedge done )
   begin
//    if( RST ) begin
//         state = notDONE;
//         internal_valid = OFF;
//    end
   if (~enable) begin
        state = state;
   end
   else
   begin
       case( state )
       notDONE:
       begin
            internal_RST = OFF;
            if( done && ~RST) begin
                internal_valid = ON;
                state = WRITTEN;
            end
            else begin
                internal_valid = OFF;
                state = notDONE;
            end
       end
       WRITTEN:
       begin
            internal_valid = OFF;
            internal_RST = ON;
            state = DONE;
       end
       DONE:
       begin
            internal_valid = OFF;
            internal_RST = OFF;
            state = notDONE;
       end

       default:
       begin
            internal_valid = OFF;
            internal_RST = OFF;
            state = notDONE;
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
// 	notDONE = 2'b01,
// 	DONE = 2'b10,
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
//                 next_state = notDONE;
//             end
//             else begin
//                 next_state = stopped;
//             end
//        end
//        notDONE:
//        begin
//             internal_valid = OFF;
//             internal_RST = OFF;
//             if( done ) begin
//                 next_state = DONE;
//             end
//             else begin
//                 next_state = notDONE;
//             end
//        end
//        DONE:
//        begin
//             internal_valid = ON;
//             internal_RST = OFF;
//             next_state = RSTADC;
//        end
//        RSTADC:
//        begin
//             internal_RST = ON;
//             next_state = notDONE;
//        end

//        default:
//        begin
//             next_state = stopped;
//        end
//        endcase
//    end
// endmodule
