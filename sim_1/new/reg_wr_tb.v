`timescale 1ns / 1ps
module reg_wr_tb();
reg         i_clk;
reg         i_wr_en;
reg         i_rd_en;
reg         i_rstn;
reg    [2:0]i_wrAddr;
reg    [7:0]i_wrData;
wire   [7:0]o_Data;



reg_rw inst_reg_rw(
		             .i_clk(i_clk),
		             .i_wr_en(i_clk),
		             .i_rd_en(i_rd_en),
		             .i_rstn(i_rstn),
	    	             .i_wrAddr(i_wrAddr),
		             .i_wrData(i_wrData),
		             .o_Data(o_Data)
	               );
	               
 always #10 i_clk    = ~i_clk;
 initial i_wr_en =0; 
 initial i_rd_en =0; 
 initial i_rstn  =0;
 
	initial begin
	    i_wrData = 100;
	    i_clk    = 1; #10;
	    i_wr_en  = 1; #10;
	    i_rd_en  = 1; #10;
	    i_rstn   = 1; #10;
	    i_wrAddr = 3'b000;
	    
	    #10;
	    i_rstn   = 0; #10;
	    i_wrAddr = 3'b001; #10;
	    
	    #10;
	    i_wrData = 100;
	    i_rstn =1;
	    i_wrAddr = 3'b010; #10;
	    
	    #10;
	    i_rd_en  = 0; #10;
	    i_wrData = 100;
	    i_rstn = 0;
	    i_wrAddr = 3'b011; #10;
	    
	    #10 i_rd_en = 1;
	    #10 i_rstn =0;
	    #10 i_wrAddr = 3'b100;
	    
	    #10 i_rd_en = 1;
	    #10 i_rstn =0;
        #10 i_wrAddr = 3'b101;
	    
	    
	    #10 $finish;
	     
	end

endmodule
