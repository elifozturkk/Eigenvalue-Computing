`timescale 1ns / 1ps

module module_2(
    input clk,
    input enable,
    input [15:0] in_ai_t0,
    input [15:0] in_ai_t1,
    input [15:0] in_ai_t2,
    input [15:0] in_ai_t3,
    input [15:0] in_aj0,
    input [15:0] in_aj1,
    input [15:0] in_aj2,
    input [15:0] in_aj3,
    input [15:0] in_rii,
    output [15:0] out_ai_t_x_aj,
    output [15:0] out_rij
    );
    
    
      wire [15:0] aj [0:3];
      wire [15:0] ai_t [0:3];
      wire [31:0] p [0:3];
      wire [31:0] s1,s2,s3;
      wire [31:0] s3_buf;
      wire [31:0] out_rij_2;
      wire  buf1_done,buf2_done,rij_done;
      
      assign aj[0] = in_aj0;
      assign aj[1] = in_aj1;
      assign aj[2] = in_aj2;
      assign aj[3] = in_aj3;
      assign ai_t[0] = in_ai_t0;
      assign ai_t[1] = in_ai_t1;
      assign ai_t[2] = in_ai_t2;
      assign ai_t[3] = in_ai_t3;
      
    
      
       genvar i;
        generate
           for (i=0; i < 4; i=i+1)
           begin
              multiplier mult(
               .enable(enable),
               .A(aj[i]),
               .B(ai_t[i]),
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
      
      buffer buf_1(
      .d(s3),
      .done(buf1_done),
      .q(s3_buf),
      .clk(clk));
    
     assign out_ai_t_x_aj = s3_buf[26:10];
    
     divider2 div(
         .aclk(clk),
         .s_axis_dividend_tdata(out_ai_t_x_aj),
         .s_axis_dividend_tvalid(enable),
         .s_axis_divisor_tdata(in_rii),
         .s_axis_divisor_tvalid(enable),
         .m_axis_dout_tdata(out_rij_2),
         .m_axis_dout_tvalid(rij_done));
    
       
         assign out_rij[9:0] = {out_rij_2[14:6],1'b0};
         assign out_rij[15:10] = out_rij_2[21:16]; 
    
endmodule
