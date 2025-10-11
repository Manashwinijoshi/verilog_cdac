`timescale 1ns / 1ps

module tb_tff_using_dff;

	// Inputs
	reg t;
	reg reset;
	reg clk;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	tff_using_dff uut (
		.t(t), 
		.reset(reset), 
		.clk(clk), 
		.q(q), 
		.qbar(qbar)
	);
  initial clk=0;
  always #5 clk=~clk;
	initial begin
		// Initialize Inputs
		t = 0;
		reset = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		@(negedge clk) reset=1;
	   @(negedge clk) reset=0;
		@(negedge clk) t=0;
		@(negedge clk) t=1;
		@(negedge clk) t=1;
		@(negedge clk) t=1;
		@(negedge clk) t=0;
		@(negedge clk) t=0;
		

	end
      
endmodule

