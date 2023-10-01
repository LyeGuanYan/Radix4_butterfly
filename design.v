`timescale 1ns/1ps 

`define width 4 

module R4_butter(Xro,Xio, xr0,xi0, xr1,xi1, xr2,xi2, xr3,xi3, c1,c2,c3); 

parameter width=`width; 

input [width-1:0] xr0,xi0, xr1,xi1, xr2,xi2, xr3,xi3; 
output [width-1:0] Xro,Xio; 
wire [width-1:0] m0,m1,m2,m3, s0,s1,s2,s3; 
wire m4;
input c1,c2,c3; 

addsub a0(.A(m0), .B(xr1), .ADD_SUB(c2), .SUM(s0)); 
addsub a1(.A(m2), .B(xr3), .ADD_SUB(c2), .SUM(s1)); 
addsub a2(.A(m1), .B(xi1),  .ADD_SUB(c3), .SUM(s2)); 
addsub a3(.A(m3), .B(xi3),  .ADD_SUB(c3), .SUM(s3)); 
addsub b0(.A(s0), .B(s1), .ADD_SUB(m4), .SUM(Xro)); 
addsub b1(.A(s3), .B(s2), .ADD_SUB(m4), .SUM(Xio)); 

mux2 mux0(.out(m0),.in0(xr0),.in1(xi0),.cont(c1)); 
mux2 mux1(.out(m1),.in0(xi0),.in1(xr0),.cont(c1)); 
mux2 mux2(.out(m2),.in0(xr2),.in1(xi2),.cont(c1)); 
mux2 mux3(.out(m3),.in0(xi2),.in1(xr2),.cont(c1)); 
XOR xor1(.Y(m4),.A(c2),.B(c3)); 
endmodule


module addsub(A, B, ADD_SUB, SUM);

   input [3:0] A;
   input [3:0] B;
   input ADD_SUB;
  output [3:0] SUM;
  reg [3:0] SUM;

   always @ (A or B)
   begin
     if (ADD_SUB == 0)
      SUM <= A + B;
      else
      SUM <= A - B;
   end

endmodule

module XOR(Y, A, B);
  input A;
  input B;
  output Y;

  assign Y= A^B;
  
  endmodule
  
  
module mux2(out, in0, in1, cont);

  input [3:0] in0;
  input [3:0] in1;
  input cont;
  output [3:0] out;

  assign out = (cont)?in1:in0;

endmodule
