`timescale 1ns / 1ps

module sqrt(
    input [31:0] D,
    input clk,
    input enable,
    output [15:0] Result,
    output  done
    );
    
    wire [51:0] D_new;
    wire [15:0] Result_new;
    wire [31:0] Result_div;
    wire done_new;
    reg enable_inner;
    integer m=0;
    

    mult_gen_1 mult(
     .A(D),
     .B(20'b11110100001001000000),
     .CLK(clk),
     .P(D_new));
    
    always@(posedge clk) begin
        if (enable == 1'b1) begin
            if (m < 28) begin //28
               m = m+1;
            end else if (m<60)begin //68
               m = m+1;
               enable_inner <= enable;
            end
            else begin
                m=0;
                enable_inner<=1'b0;
            end
        end else begin
            m=0;
            enable_inner<=1'b0;
        end
    end
    
      sqrt_root inner_sqrt(
      .clk(clk),
      .enable(enable_inner),
      .D(D_new[51:20]),//36:20
      .done(done_new),
      .Result(Result_new)
      );
    
    div_gen_0 div(
    .aclk(clk),
    .s_axis_dividend_tdata(Result_new),
    .s_axis_dividend_tvalid(done_new),
    .s_axis_divisor_tdata(16'b0000001111101000),//0111111010000000),
    .s_axis_divisor_tvalid(1'b1),
    .m_axis_dout_tdata(Result_div),
    .m_axis_dout_tvalid(done));
    
         
  
   assign Result[9:0] = {Result_div[14:6],1'b0};
   assign Result[15:10] = Result_div[21:16];
    
endmodule
