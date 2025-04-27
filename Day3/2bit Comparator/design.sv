module comparator2bit(A,B,E,G,L);
 input [1:0]A,B; // Declare 2-bit input ports A and B
 output E,G,L; // Declare output ports: E for Equal, G for Greater, L for Less
 assign E=(A==B)?1'b1:1'b0; // If A is equal to B, set E to 1 (true), else 0 (false)
 assign G=(A>B)?1'b1:1'b0; // If A is greater than B, set G to 1 (true), else 0 (false)
 assign L=(A<B)?1'b1:1'b0; // If A is less than B, set L to 1 (true), else 0 (false)
endmodule