`timescale 1ns/1ps
module reg_rw #(
	                parameter    ADDR_WIDTH = 3,
		            parameter    DATA_WIDTH = 8	
	            )
	            (
		             input                              i_clk,
		             input                              i_wr_en,
		             input                              i_rd_en,
		             input                              i_rstn,
	    	         input             [ADDR_WIDTH-1:0] i_wrAddr,
	    	         //input         [ADDR_WIDTH-1:0] i_rdAddr,
		             input             [DATA_WIDTH-1:0] i_wrData,
		             output            [DATA_WIDTH-1:0] o_Data
		            
	             );
	             wire [DATA_WIDTH-1:0] reg0,reg1,reg2,reg3,reg4,reg5,reg6,reg7,o_data;
	             wire [DATA_WIDTH-1:0] r0,r1,r2,r3,r4,r5,r6,r7;
                 
	             
   decoder inst_decoder (
                            .i_addr(i_wrAddr),
                            .i_en(i_wr_en),
                            .o_a(r0),
                            .o_b(r1),
                            .o_c(r2),
                            .o_d(r3),
                            .o_e(r4),
                            .o_f(r5),
                            .o_g(r6),
                            .o_h(r7)
                         );

    d_ff inst_dff0(
                      .i_data(i_wrData),
                      .i_clk(i_clk),
                      .i_en(r0),
                      .i_rst_n(i_rstn),
                      .o_data(reg0)   
                  );
                  
    d_ff inst_dff1(
                      .i_data(i_wrData),
                      .i_clk(i_clk),
                      .i_en(r1),
                      .i_rst_n(i_rstn),
                      .o_data(reg1)    
                  );
    d_ff inst_dff2(
                      .i_data(i_wrData),
                      .i_clk(i_clk),
                      .i_en(r2),
                      .i_rst_n(i_rstn),
                      .o_data(reg2)    
                  );
    d_ff inst_dff3(
                      .i_data(i_wrData),
                      .i_clk(i_clk),
                      .i_en(r3),
                      .i_rst_n(i_rstn),
                      .o_data(reg3)    
                  ); 
                  
    d_ff inst_dff4(
                        .i_data(i_wrData),
                        .i_clk(i_clk),
                        .i_en(r4),
                        .i_rst_n(i_rstn),
                        .o_data(reg4)    
                    );
                    
     d_ff inst_dff5(
                        .i_data(i_wrData),
                        .i_clk(i_clk),
                        .i_en(r5),
                        .i_rst_n(i_rstn),
                        .o_data(reg5)    
                   );
                   
    d_ff inst_dff6(
                        .i_data(i_wrData),
                        .i_clk(i_clk),
                        .i_en(r6),
                        .i_rst_n(i_rstn),
                        .o_data(reg6)    
                  );
    d_ff inst_dff7(
                        .i_data(i_wrData),
                        .i_clk(i_clk),
                        .i_en(r7),
                        .i_rst_n(i_rstn),
                        .o_data(reg7)    
                   );
   
  mux41 inst_mux411 (
                          .a(reg0),
                          .b(reg1),
                          .c(reg2),
                          .d(reg3),
                          .e(reg4),
                          .f(reg5),
                          .g(reg6),
                          .h(reg7),
                          .sel(i_wrAddr),
                          .en(i_rd_en),
                          .out(o_Data)      
                    );

endmodule                

