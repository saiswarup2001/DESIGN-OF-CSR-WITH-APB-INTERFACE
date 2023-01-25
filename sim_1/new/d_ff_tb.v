`timescale 1ns/1ps
module d_ff_tb();
	reg         [7:0]i_data;  //
	//reg    [3:0]i_wrAddr;
	reg              i_clk;
	reg         [7:0]i_en;
	reg              i_rst_n;
	wire        [7:0]o_data; //

d_ff instan_d_ff(	
                    .o_data(o_data),
			        .i_data(i_data),
			        //.i_wrAddr(i_wrAddr),
			        .i_en(i_en),
			        .i_clk(i_clk), 
			        .i_rst_n(i_rst_n)
		        );
		        
initial i_clk   = 0;
initial i_data  = 8'b0;
initial i_en  = 1;
initial	i_rst_n = 0;
always #5 i_clk = ~i_clk;
initial begin
    
   #5  i_rst_n = 1;
      //i_wrAddr = 3'b111;
       i_data  = 8'b1;
   #10 i_rst_n = 0;
       i_data  = 8'b0;

   #15 i_data = 8'b1;
   #10 i_rst_n = 1;
      //i_wrAddr = 3'b001;
   
   #15 i_en = 1;
   #10 i_rst_n = 0;
   #15 i_en = 0;
   #80 $finish;
end
endmodule
//    initial begin
    
//    i_clk = 0;
//    i_rst_n = 1;
//    i_en = 1;
//    //i_wrAddr = 3'b000;
//    i_data = 8'b11111111;

//   #20
//   i_rst_n = 0;
//   i_en = 1;
//   //i_wrAddr = 3'b001;
//   //i_wrData = 8'h110;
   
//   #20
//   i_rst_n = 1;
//   i_en = 1;
//   //i_wrAddr = 3'b010;;
//   i_data = 8'h120;
   
//   #20 
//   i_rst_n = 1;
//   i_en = 1;
//   i_wrAddr = 3'b111;
   
//   #20 $finish;
//end
//endmodule
