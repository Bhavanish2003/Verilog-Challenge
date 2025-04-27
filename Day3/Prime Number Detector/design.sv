module Prime_Number_Detector(A,B,C,Y)
  input A,B,C;
  output Y;
  assign Y=((~A)&B)|(A&c);
endmodule