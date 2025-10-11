`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module tff_using_dff(
    input t,
    input reset,
    input clk,
    output q,
    output qbar
	 
	 
    );
  wire w1;
  assign w1= t^q;
 
 dff d1 (
    w1,
  reset,
  clk,
 q,
 qbar
    );
  
endmodule
