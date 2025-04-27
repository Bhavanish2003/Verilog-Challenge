module decoder2to4(A,B,D0,D1,D2,D3);
  input A,B;
  output D0,D1,D2,D3;
input A,B;
  output D0,D1,D2,D3;
  wire w1,w2;
  not n1(w1,A);
  not n2(w2,B);
  and a1(D0,w1,w2);
  and a2(D1,w1,B);
  and a3(D2,A,w2);
  and a4(D3,A,B);
endmodule
