`timescale 1ns/1ps
module d_ff 
//#(
//                  parameter    DATA_WIDTH = 8
//              )
	          (
		          input 	    [7:0]i_data,
//		          input         [2:0]i_wrAddr,
		          input 		     i_clk,
		          input         [7:0]i_en,
		          input 		     i_rst_n,
		          output 	reg [7:0]o_data
	           );

always@(posedge i_clk )begin
    if(i_rst_n == 1'b0)begin
	    o_data <= 0;
	end else begin
	if(i_en == 1'b1 | i_rst_n == 1'b1) begin
	    o_data <= i_data;
	end 
	end
 end
//reg [7:0] reg0,reg1, reg2,reg3,reg4;

//always@( posedge i_clk) begin
//    if(i_rst_n == 0) begin
//        o_data <= 0;
//    end else begin
//        if( i_en)begin
//            case(i_wrAddr)
//                0: begin reg0 <= i_data; 
//                         o_data <= i_data;
//                   end
//                1: begin reg1 <= i_data;
//                         o_data <= i_data;
//                   end
//                2: begin reg2 <= i_data;
//                         o_data <= i_data;
//                   end
//                3: begin reg3 <= i_data;
//                         o_data <= i_data;
//                   end
//            endcase
////            case(i_wrAddr)
////                   0: o_wrData <= reg0;
////                   1: o_wrData <= reg1;
////                   2: o_wrData <= reg2;
////                   3: o_wrData <= reg3;
////             endcase
         
endmodule
 


         
