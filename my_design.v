Or gate
module or_gate(a,b,y);
  input a,b;
  output y;
  assign y=(a|b);
endmodule

tb in random mode
module tb;
  reg a,b;
  wire y;
  or_gate dut(a,b,y);
  initial begin
    repeat(10) begin
      a=$random;
      b=$random;
      #10;
      $display("time=%0t,a value=%b,b value=%b,output y=%b",$time,a,b,y);
    end
  end
endmodule
 
