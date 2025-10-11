module RippleCarryCounter(
    input clk,
    input reset,
    output [3:0] q,
    output [3:0] qbar
    );

    tflipflop t1(.t(1'b1), .q(q[0]), .qbar(qbar[0]), .clk(clk),    .reset(reset));
    tflipflop t2(.t(1'b1), .q(q[1]), .qbar(qbar[1]), .clk(q[0]), .reset(reset));
    tflipflop t3(.t(1'b1), .q(q[2]), .qbar(qbar[2]), .clk(q[1]), .reset(reset));
    tflipflop t4(.t(1'b1), .q(q[3]), .qbar(qbar[3]), .clk(q[2]), .reset(reset));

endmodule
