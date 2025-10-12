// Code your design here
module counter_up_down#(parameter N=2,up_down=1)(input clk,input reset,output reg [N-1:0]out);
  
  always@(posedge clk)
    begin
      if(reset)
        out<=0;
      else begin
        if(up_down)
          
          out<=out+1;
         else
           out<=out-1;
      end
      
    end
  
endmodule
