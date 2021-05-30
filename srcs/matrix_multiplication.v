`timescale 1ns / 1ps

 
module matrix_multiplication(
    input clk,
    input enable,
    input [255:0] in_R,
    input [255:0] in_Q,
    output [255:0] out_a_new
    );
  
      genvar i;
      generate
         for (i=0; i < 4 ; i=i+1)
         begin
            inner_matrix_multiplication mat_mult_1(
                    .clk(clk),
                    .enable(enable),
                    .in_Ri1(in_R[15:0]),
                    .in_Ri2(in_R[31:16]),
                    .in_Ri3(in_R[47:32]),
                    .in_Ri4(in_R[63:48]),
                    .in_Q1j(in_Q[((16*(i+1)-1)+(48*i)):64*i]),
                    .in_Q2j(in_Q[((16*(i+1)-1)+(48*i)+16):(64*i+16)]),
                    .in_Q3j(in_Q[((16*(i+1)-1)+(48*i)+32):(64*i+32)]),
                    .in_Q4j(in_Q[((16*(i+1)-1)+(48*i)+48):(64*i+48)]),
                    .out_a_newij(out_a_new[(16*(i+1)-1):16*i])
                    ); 
            inner_matrix_multiplication mat_mult_2(
                    .clk(clk),
                    .enable(enable),
                    .in_Ri1(in_R[79:64]),
                    .in_Ri2(in_R[95:80]),
                    .in_Ri3(in_R[111:96]),
                    .in_Ri4(in_R[127:112]),
                    .in_Q1j(in_Q[((16*(i+1)-1)+(48*i)):64*i]),
                    .in_Q2j(in_Q[((16*(i+1)-1)+(48*i)+16):(64*i+16)]),
                    .in_Q3j(in_Q[((16*(i+1)-1)+(48*i)+32):(64*i+32)]),
                    .in_Q4j(in_Q[((16*(i+1)-1)+(48*i)+48):(64*i+48)]),
                    .out_a_newij(out_a_new[(16*(i+1)-1+64):(16*i+64)])
                    ); 
            inner_matrix_multiplication mat_mult_3(
                    .clk(clk),
                    .enable(enable),
                    .in_Ri1(in_R[143:128]),
                    .in_Ri2(in_R[159:144]),
                    .in_Ri3(in_R[175:160]),
                    .in_Ri4(in_R[191:176]),
                    .in_Q1j(in_Q[((16*(i+1)-1)+(48*i)):64*i]),
                    .in_Q2j(in_Q[((16*(i+1)-1)+(48*i)+16):(64*i+16)]),
                    .in_Q3j(in_Q[((16*(i+1)-1)+(48*i)+32):(64*i+32)]),
                    .in_Q4j(in_Q[((16*(i+1)-1)+(48*i)+48):(64*i+48)]),
                    .out_a_newij(out_a_new[(16*(i+1)-1+128):(16*i+128)])
                    ); 
            inner_matrix_multiplication mat_mult_4(
                    .clk(clk),
                    .enable(enable),
                    .in_Ri1(in_R[207:192]),
                    .in_Ri2(in_R[223:208]),
                    .in_Ri3(in_R[239:224]),
                    .in_Ri4(in_R[255:240]),
                    .in_Q1j(in_Q[((16*(i+1)-1)+(48*i)):64*i]),
                    .in_Q2j(in_Q[((16*(i+1)-1)+(48*i)+16):(64*i+16)]),
                    .in_Q3j(in_Q[((16*(i+1)-1)+(48*i)+32):(64*i+32)]),
                    .in_Q4j(in_Q[((16*(i+1)-1)+(48*i)+48):(64*i+48)]),
                    .out_a_newij(out_a_new[(16*(i+1)-1+192):(16*i+192)])
                    );                                                           
             
         end
      endgenerate

  
 endmodule 
 
 module inner_matrix_multiplication(
     input clk,
     input enable,
     input [15:0] in_Ri1,
     input [15:0] in_Ri2,
     input [15:0] in_Ri3,
     input [15:0] in_Ri4,
     input [15:0] in_Q1j,
     input [15:0] in_Q2j,
     input [15:0] in_Q3j,
     input [15:0] in_Q4j,
     output  [15:0] out_a_newij
     ); 
    
    wire [15:0] ri [0:3];
    wire [15:0] qj [0:3];
    wire [31:0] p [0:3];
    wire [31:0] s1,s2,s3;

    assign ri[0] = in_Ri1;
    assign ri[1] = in_Ri2;
    assign ri[2] = in_Ri3;
    assign ri[3] = in_Ri4;
    
    assign qj[0] = in_Q1j;
    assign qj[1] = in_Q2j;
    assign qj[2] = in_Q3j;
    assign qj[3] = in_Q4j;

     genvar i;
      generate
         for (i=0; i < 4; i=i+1)
         begin
            multiplier mult(
             .enable(enable),
             .A(ri[i]),
             .B(qj[i]),
             .CLK(clk),
             .P(p[i]));
             
         end
      endgenerate

   
    c_addsub_0 adder_1(
    .A(p[0]),
    .B(p[1]),
    .CLK(clk),
    .S(s1));   
 
     c_addsub_0 adder_2(
    .A(p[2]),
    .B(p[3]),
    .CLK(clk),
    .S(s2)); 
 
     c_addsub_0 adder_3(
    .A(s1),
    .B(s2),
    .CLK(clk),
    .S(s3));       
 
    assign out_a_newij = s3[25:10];
 
endmodule
