`timescale 1ns / 1ps

module ikinci_dereceden_denklem_cozme(
    input [15:0] x11,
    input [15:0] x12,
    input [15:0] x21,
    input [15:0] x22,
    output [15:0] eig_comp,
    output [15:0] eig_reel,
    input clk,
    input enable
    );
    
    wire [15:0] s1,b, sqrt_delta;
    wire done_sqrt;
    wire [31:0] p1,p2;
    wire [31:0] c,b2,c4,delta,delta_2s;
    
    c_addsub_0 add (
        .A (x11),
        .B (x22),
        .CLK (clk),
        .S (s1)
      );
    
    multiplier mult1(
        .CLK(clk),
        .A(x11),
        .B(x22),
        .P(p1),
        .enable(enable)
      );
 
    multiplier mult2(
          .CLK(clk),
          .A(x12),
          .B(x21),
          .P(p2),
          .enable(enable)
        );    
 
    c_addsub_1 sub1 (
            .A (p1),
            .B (p2),
            .CLK (clk),
            .S (c)
          ); 

    assign c4 = c << 2;

    twos_complement twos_comp1(
        .A(s1),
        .A_2scomp(b)
        );  
 
     mult_gen_0 mult3(
          .CLK(clk),
          .A(b),
          .B(b),
          .P(b2)
        );    
    
    c_addsub_1 sub2 (
            .A (b2),
            .B (c4),
            .CLK (clk),
            .S (delta)
          );   
          
    twos_complement32 twos_comp2(
          .A(delta),
          .A_2scomp(delta_2s)
          );  
    
    sqrt  sqrt_root(
        .D(delta_2s),
        .clk(clk),
        .enable(enable),
        .Result(sqrt_delta),
        .done(done_sqrt)
        );
       
//    assign eig_comp = sqrt_delta >> 1;   
        
//    assign eig_reel = s1 >> 1; 

      assign eig_comp = sqrt_delta[15] ? {1'b1, sqrt_delta [15:1]} : {1'b0, sqrt_delta [15:1]};
      assign eig_reel = s1[15] ? {1'b1, s1 [15:1]} : {1'b0, s1 [15:1]};
      
endmodule
