module sqaure2numbers_test;
reg [1:0]A;
wire [3:0]Y;
  square2numbers dut(A,Y);

integer i;

initial begin
  for (i = 0; i < 4; i = i + 1) begin
    {A} = i; // Concatenate and assign bits
    #5;
  end
end

initial begin
  $monitor("Sim time=%0t, A=%b, Y=%b", $time, A,Y);
end

initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0,A,Y);
end

endmodule