`timescale 1ns / 1ps

module ripplecarrycounter_tb;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] q;
	wire [3:0] qbar;

	// Instantiate the Unit Under Test (UUT)
	RippleCarryCounter uut (
		.clk(clk), 
		.reset(reset), 
		.q(q), 
		.qbar(qbar)
	);
	
	initial clk=0;
	always #5 clk=~clk;

	initial begin
		// Initialize Inputs
		
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		@(negedge clk) reset=1;
		
		@(negedge clk) reset=0;
		
		#100;
		

	end
      
endmodule

