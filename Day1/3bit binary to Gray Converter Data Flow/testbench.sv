module binarytogray_test;
  reg [2:0]b;
  wire [2:0]g;
  binarytogray dut(b,g);
  initial begin
       
    b = 3'b000; 
   #5 b = 3'b001; 
   #5 b = 3'b010; 
   #5 b = 3'b011; 
   #5 b = 3'b100; 
   #5 b = 3'b101; 
   #5 b = 3'b110; 
   #5 b = 3'b111; 
   
  end
  initial begin
    $monitor("Sim time=%0t,b=%b,g=%b",$time,b,g);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,b,g);
  end 
endmodule
