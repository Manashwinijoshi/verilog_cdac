`timescale 1ns / 1ps

module dff(
    input d,
    input reset,
    input clk,
    output reg q,
    output qbar
    );


 always@(posedge clk)
 begin
   if(reset)
	  q<=0;
   else 
	 begin
	   q<=d;
	   
	 end
 end
 
 assign qbar=~q;

endmodule
