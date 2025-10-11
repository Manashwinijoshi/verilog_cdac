`timescale 1ns / 1ps

module dff_tb;

	// Inputs
	reg d;
	reg reset;
	reg clk;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	dff uut (
		.d(d), 
		.reset(reset), 
		.clk(clk), 
		.q(q), 
		.qbar(qbar)
	);
  
  initial clk=0;
  always #5 clk=~clk;
	initial begin
		// Initialize Inputs
		$monitor("reset=%b d=%b q=%b qbar=%b",reset,d,q,qbar);
		d = 0;
		reset = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		@(negedge clk) reset=1;
		
		@(negedge clk) reset=0;
		
		@(negedge clk) d=1;
		
		@(negedge clk) d=1;
		@(negedge clk) d=1;
		@(negedge clk) d=0;
		@(negedge clk) d=0;
		@(negedge clk) d=1;
		
		@(negedge clk) d=1;
		
		@(negedge clk) reset=1;
		
	   @(negedge clk) reset=0;
		
		@(negedge clk) d=1;
		@(negedge clk) d=1;
		@(negedge clk) d=0;

	
        
		// Add stimulus here

	end
      
endmodule

