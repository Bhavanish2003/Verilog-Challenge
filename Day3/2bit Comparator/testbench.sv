module comparator2bit_test;
 reg [1:0]A,B;
 wire E,G,L;
 comparator2bit dut(A,B,E,G,L);
 initial begin
 A=2'b00; B=2'b00;
 #5 A=2'b00; B=2'b01;
 #5 A=2'b01; B=2'b00;
 #5 A=2'b01; B=2'b01;
 end
 initial begin
 $monitor("Sim time=%0t,A=%b,B=%b,E=%b,G=%b,L=%b",$time,A,B,E,G,L);
 end
 initial begin
 $dumpfile("dump.vcd");
 $dumpvars(0,A,B,E,G,L);
 end
endmodule