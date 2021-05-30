`timescale 1ns / 1ps
 
module module_1(
    input clk,
    input enable,
    output reg done,
    output o_start,
    input [15:0] in_ai0,
    input [15:0] in_ai1,
    input [15:0] in_ai2,
    input [15:0] in_ai3,
    output reg [15:0] out_rii,
    output  [15:0] out_qi0,
    output  [15:0] out_qi1,
    output  [15:0] out_qi2,
    output  [15:0] out_qi3,
    output reg [15:0] out_rii_2
    );
    
    reg [15:0] ai [0:3];
    reg [15:0] ai_t [0:3];
    wire [31:0] p [0:3];
    wire [31:0] s1,s2,s3;
    wire [31:0] sqrt_in;
    wire [15:0] sqrtRoot,sqrt_out;
    reg [15:0] sqrt_in2;
    wire sqrt_done, buf1_done,buf2_done;
    reg  sqrt_en;
    wire [3:0] qi_done;
    wire [31:0] qi [0:3];
    integer j = 0;
    reg start = 0;
      
      always@(posedge enable) begin
        start <= ~ start;
      end
      
      assign o_start = start;
      
      assign out_qi0[9:0] = {qi[0][14:6],1'b0};
      assign out_qi0[15:10] = qi[0][21:16];
      assign out_qi1[9:0] = {qi[1][14:6],1'b0};
      assign out_qi1[15:10] = qi[1][21:16];
      assign out_qi2[9:0] = {qi[2][14:6],1'b0};
      assign out_qi2[15:10] = qi[2][21:16];
      assign out_qi3[9:0] = {qi[3][14:6],1'b0};
      assign out_qi3[15:10] = qi[3][21:16];
      
      
      always@(posedge clk ) begin

      if ( enable == 1'b1)begin //start
      
        ai[0] = in_ai0;
        ai[1] = in_ai1;
        ai[2] = in_ai2;
        ai[3] = in_ai3;
        ai_t[0] = in_ai0;
        ai_t[1] = in_ai1;
        ai_t[2] = in_ai2;
        ai_t[3] = in_ai3;
        
        out_rii_2 = sqrt_in[26:10];
        out_rii = sqrt_out;
        
        //sqrt_in2 = sqrt_in[26:10];
        sqrt_en = buf1_done;
 
 
 
      if(j<100) begin
              j=j+1;
              done <= 1'b0;
           end else begin
              j=0;
              done <= 1'b1;
           end    
    
    end
    else j=0;
end

     genvar i;
      generate
         for (i=0; i < 4; i=i+1)
         begin
            multiplier mult(
             .enable(enable),
             .A(ai[i]),
             .B(ai_t[i]),
             .CLK(clk),
             .P(p[i]));
             
            
            divider div(
            .aclk(clk),
            .s_axis_dividend_tdata(ai[i]),
            .s_axis_dividend_tvalid(enable),
            .s_axis_divisor_tdata(sqrtRoot),
            .s_axis_divisor_tvalid(enable),
            .m_axis_dout_tdata(qi[i]),
            .m_axis_dout_tvalid(qi_done[i]));
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
    .q(sqrt_in),
    .clk(clk));
    
  
    sqrt sqrt_root(
    .clk(clk),
    .enable(enable),
    .D(sqrt_in),
    .Result(sqrtRoot),
    .done(sqrt_done));
    
    buffer2 #(.SIZE(16)) buf_2(
    .d(sqrtRoot),
    .done(buf2_done),
    .q(sqrt_out),
    .clk(clk));
    
 
endmodule
