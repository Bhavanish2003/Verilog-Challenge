module fulladder_test;
reg A,B,C;
wire S,Cout;
  fulladder dut(A,B,C,S,Cout);
  initial begin
      A=1'b0; B=1'b0; C=1'b0;
   #5 A=1'b0; B=1'b0; C=1'b1;
   #5 A=1'b0; B=1'b1; C=1'b0;
   #5 A=1'b0; B=1'b1; C=1'b1;
   #5 A=1'b1; B=1'b0; C=1'b0;
   #5 A=1'b1; B=1'b0; C=1'b1;
   #5 A=1'b1; B=1'b1; C=1'b0;
   #5 A=1'b1; B=1'b1; C=1'b1;
  end
  initial begin
    $monitor("Sim time=%0t,A=%b,B=%b,C=%b,S=%b,Cout=%b",$time,A,B,C,S,Cout);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,A,B,C,S,Cout);
  end 
endmodule
