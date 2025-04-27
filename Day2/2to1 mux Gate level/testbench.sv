module mux21_test;
reg I0,I1,S;
wire Y;
  mux21 dut(I0,I1,S,Y);
  initial begin
      I0=1'b0; I1=1'b0; S=1'b0;
   #5 I0=1'b0; I1=1'b0; S=1'b1;
   #5 I0=1'b0; I1=1'b1; S=1'b0;
   #5 I0=1'b0; I1=1'b1; S=1'b1;
   #5 I0=1'b1; I1=1'b0; S=1'b0;
   #5 I0=1'b1; I1=1'b0; S=1'b1;
   #5 I0=1'b1; I1=1'b1; S=1'b0;
   #5 I0=1'b1; I1=1'b1; S=1'b1;
  end
  initial begin
    $monitor("Sim time=%0t,I1=%b,I0=%b,S=%b,Y=%b",$time,I1,I0,S,Y);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,I1,I0,S,Y);
  end 
endmodule
