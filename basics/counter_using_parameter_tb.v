// Code your testbench here
// or browse Examples
module test;
  localparam N=3; // USE OF THE LOCAL PARAMETER
  reg clk,reset;
  wire [N-1:0]out;
  
  counter_up_down#(N,0) dut (clk,reset,out);
  
  initial clk=0;
  always #5 clk=~clk;
  initial begin
    $monitor("reset=%b  out=%d ",reset,out);
    clk=0;
    reset=0;
    
    @(negedge clk) reset=1;
    @(negedge clk) reset=0; 
    #100;
 
    
    
    
    
    
  end
    
    
    
  
  
endmodule
