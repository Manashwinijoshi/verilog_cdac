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

//use of the defparam to change the values of the parameter
// Code your testbench here
// or browse Examples
module test;
  
  reg clk,reset;
  wire [3-1:0]out;
  //using defparam to change the parameter values
  defparam dut.N=3;
  defparam dut.up_down=0;
  
  counter_up_down#(3,0) dut (clk,reset,out);
  
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
