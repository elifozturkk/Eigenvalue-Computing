`timescale 1ns / 1ps

module module_3(
    input clk,
    input enable,
    input [15:0] in_rii_2,
    input [15:0] in_ai_t_x_aj,
    input [15:0] in_ai0,
    input [15:0] in_ai1,
    input [15:0] in_ai2,
    input [15:0] in_ai3,
    input [15:0] in_aj0,
    input [15:0] in_aj1,
    input [15:0] in_aj2,
    input [15:0] in_aj3,
    output [15:0] out_aj_new0,
    output [15:0] out_aj_new1,
    output [15:0] out_aj_new2,
    output [15:0] out_aj_new3
    );
    
    wire [15:0] aj [0:3];
    wire [15:0] aj_new [0:3];
    wire [15:0] ai [0:3];
    wire [31:0] p [0:3];
    wire [31:0] div_out;
    wire [15:0] div_out_2;
    wire div_done;
    
    assign aj[0] = in_aj0;
    assign aj[1] = in_aj1;
    assign aj[2] = in_aj2;
    assign aj[3] = in_aj3;
    assign ai[0] = in_ai0;
    assign ai[1] = in_ai1;
    assign ai[2] = in_ai2;
    assign ai[3] = in_ai3;
    assign out_aj_new0 = aj_new[0];
    assign out_aj_new1 = aj_new[1];
    assign out_aj_new2 = aj_new[2];
    assign out_aj_new3 = aj_new[3];
    
    
    divider3 div(
    .aclk(clk),
    .s_axis_dividend_tdata(in_ai_t_x_aj),
    .s_axis_dividend_tvalid(enable),
    .s_axis_divisor_tdata(in_rii_2),
    .s_axis_divisor_tvalid(enable),
    .m_axis_dout_tdata(div_out),
    .m_axis_dout_tvalid(div_done));
    
    assign div_out_2[9:0] = {div_out[14:6],1'b0};
    assign div_out_2[15:10] = div_out[21:16]; 
    
    
     genvar i;
      generate
         for (i=0; i < 4; i=i+1)
         begin
            multiplier3 mult(
             .enable(enable),
             .A(ai[i]),
             .B(div_out_2),
             .CLK(clk),
             .P(p[i]));
             
            c_addsub_1 sub(
              .A(aj[i]),
              .B(p[i][26:10]),
              .CLK(clk),
              .S(aj_new[i]));
         end
         
      endgenerate
endmodule
