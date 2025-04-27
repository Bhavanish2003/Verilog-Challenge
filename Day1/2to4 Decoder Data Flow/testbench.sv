module decoder2to4_test;
reg A,B;
wire D0,D1,D2,D3;
  decoder2to4 dut(A,B,D0,D1,D2,D3);
  initial begin
        A=1'b0; B=1'b0; 
   #5 A=1'b0; B=1'b1; 
   #5 A=1'b1; B=1'b0; 
   #5 A=1'b1; B=1'b1; 
   
  end
  initial begin
    $monitor("Sim time=%0t,A=%b,B=%b,D0=%b,D1=%b,D2=%b,D3=%b",$time,A,B,D0,D1,D2,D3);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,A,B,D0,D1,D2,D3);
  end 
endmodule
