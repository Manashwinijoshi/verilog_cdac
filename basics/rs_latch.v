`timescale 1ns / 1ps

module rs_latch(
    input r,
    input s,
    output q,
    output qbar
    );
   nor #(1) ins1(q,r,qbar);
   nor #(1) ins2(qbar,s,q);
endmodule


`timescale 1ns / 1ps

module tb_rs_latch;

reg r,s;
wire q,qbar;

rs_latch dut (r,s,q,qbar);

initial begin

r=0;s=0;
#100;
$display("r=%b s=%b q=%b qbar=%b",r,s,q,qbar);


r=1;s=0;
#100;
$display("r=%b s=%b q=%b qbar=%b",r,s,q,qbar);

r=0;s=0;
#100;
$display("r=%b s=%b q=%b qbar=%b",r,s,q,qbar);

r=0;s=1;
#100;
$display("r=%b s=%b q=%b qbar=%b",r,s,q,qbar);

r=0;s=0;
#100;
$display("r=%b s=%b q=%b qbar=%b",r,s,q,qbar);

r=1;s=1;
#100;
$display("r=%b s=%b q=%b qbar=%b",r,s,q,qbar);

r=1;s=1;
#100;
$display("r=%b s=%b q=%b qbar=%b",r,s,q,qbar);

end
endmodule
