module fulladder(A,B,C,S,Cout);
  input A,B,C;
  output S,Cout;
  wire w1,w2,w3;
  xor x1(S,A,B,C);
  and a1(w1,A,B);
  and a2(w2,B,C);
  and a3(w3,A,C);
  or o1(Cout,w1,w2,w3);
endmodule
