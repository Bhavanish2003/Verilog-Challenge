module Prime_Number_Detector_test;
  reg A,B,C;
  wire Y;
  Prime_Number_Detector dut(A,B,C,Y);
  integer i;
  initial begin
    for(i=0;i<=8;i++)
      begin
        #5 {A,B,C}=i;
      end
  end
  initial begin
    $monitor("Sim time=%0t,A=%b,B=%b,C=%b,Y=%b",$time,A,B,C,Y);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,A,B,C,Y);
  end
endmodule
        
   

    
  