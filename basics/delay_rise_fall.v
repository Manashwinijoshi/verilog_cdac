`timescale 1ns / 1ps


module delay( output out,input in1,in2,in3);

wire w1;

and #(5,4) a1 (w1,in1,in2);
or #(5,4) a2 (out,w1,in3); 

endmodule

module tb_delay;

reg in1,in2,in3;
wire out;

delay dut (out,in1,in2,in3);

initial begin
  $monitor($time,"   in1=%b in2=%b in3=%b out=%b",in1,in2,in3,out);
  in1=0; in2=0;in3=0;
  #100;
  in1=1; in2=1; in3=1;
  #100;
  in1=0; in2=0; in3=1;
  #100;
  in1=1; in2=0; in3=0;
  #100;
  in1=0;in2=0;in3=0;
  #100;
  
  
  

end

endmodule
