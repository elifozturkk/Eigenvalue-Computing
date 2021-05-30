`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2021 15:23:02
// Design Name: 
// Module Name: divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module divider3(
    input aclk,
    input [15:0] s_axis_dividend_tdata,
    input s_axis_dividend_tvalid,
    input [15:0] s_axis_divisor_tdata,
    input s_axis_divisor_tvalid,
    output reg [31:0] m_axis_dout_tdata,
    output m_axis_dout_tvalid
    );
    
    reg [15:0] dividend_data, divisor_data;
    reg [15:0] xored_dividend, xored_divisor;
    reg [15:0] dividend_2scomp, divisor_2scomp ;
    reg [31:0] data_out_2scomp,xored_data_out ;
    wire [31:0] data_out;
    reg data_cond;
    reg data_cond2;
    reg start = 1'b0;
    reg [15:0] ffff = 16'b1111111111111111;
    integer j=0;
    
    
//    assign dividend_data= (((s_axis_dividend_tdata ^ 16'h1111)+1)& s_axis_dividend_tdata[15]) | (s_axis_dividend_tdata ^ s_axis_dividend_tdata[15]) ;
//    assign divisor_data= (((s_axis_divisor_tdata ^ 16'h1111)+1)& s_axis_divisor_tdata[15]) | (s_axis_divisor_tdata ^ s_axis_divisor_tdata[15]) ;
//    assign m_axis_dout_tdata= (((data_out ^ 16'h1111)+1)& data_out[15]) | (data_out ^ data_out[15]) ;
   
   
   always@(posedge s_axis_divisor_tvalid) begin
     start <= ~ start;
   end
   
   always@(posedge aclk ) begin

   
   if ( start == 1'b1)begin

         if(j<65) begin
             j=j+1;
         end else if (j<120) begin
             j=j+1; 
            
              xored_dividend[0] = (s_axis_dividend_tdata[0] ^ ffff[0]);
              xored_dividend[1] = (s_axis_dividend_tdata[1] ^ ffff[1]);
              xored_dividend[2] = (s_axis_dividend_tdata[2] ^ ffff[2]);
              xored_dividend[3] = (s_axis_dividend_tdata[3] ^ ffff[3]);
              xored_dividend[4] = (s_axis_dividend_tdata[4] ^ ffff[4]);
              xored_dividend[5] = (s_axis_dividend_tdata[5] ^ ffff[5]);
              xored_dividend[6] = (s_axis_dividend_tdata[6] ^ ffff[6]);
              xored_dividend[7] = (s_axis_dividend_tdata[7] ^ ffff[7]);
              xored_dividend[8] = (s_axis_dividend_tdata[8] ^ ffff[8]);
              xored_dividend[9] = (s_axis_dividend_tdata[9] ^ ffff[9]);
              xored_dividend[10] = (s_axis_dividend_tdata[10] ^ ffff[10]);
              xored_dividend[11] = (s_axis_dividend_tdata[11] ^ ffff[11]);
              xored_dividend[12] = (s_axis_dividend_tdata[12] ^ ffff[12]);
              xored_dividend[13] = (s_axis_dividend_tdata[13] ^ ffff[13]);
              xored_dividend[14] = (s_axis_dividend_tdata[14] ^ ffff[14]);
              xored_dividend[15] = (s_axis_dividend_tdata[15] ^ ffff[15]);
          
              xored_divisor[0] = (s_axis_divisor_tdata[0] ^ ffff[0]);
              xored_divisor[1] = (s_axis_divisor_tdata[1] ^ ffff[1]);
              xored_divisor[2] = (s_axis_divisor_tdata[2] ^ ffff[2]);
              xored_divisor[3] = (s_axis_divisor_tdata[3] ^ ffff[3]);
              xored_divisor[4] = (s_axis_divisor_tdata[4] ^ ffff[4]);
              xored_divisor[5] = (s_axis_divisor_tdata[5] ^ ffff[5]);
              xored_divisor[6] = (s_axis_divisor_tdata[6] ^ ffff[6]);
              xored_divisor[7] = (s_axis_divisor_tdata[7] ^ ffff[7]);
              xored_divisor[8] = (s_axis_divisor_tdata[8] ^ ffff[8]);
              xored_divisor[9] = (s_axis_divisor_tdata[9] ^ ffff[9]);
              xored_divisor[10] = (s_axis_divisor_tdata[10] ^ ffff[10]);
              xored_divisor[11] = (s_axis_divisor_tdata[11] ^ ffff[11]);
              xored_divisor[12] = (s_axis_divisor_tdata[12] ^ ffff[12]);
              xored_divisor[13] = (s_axis_divisor_tdata[13] ^ ffff[13]);
              xored_divisor[14] = (s_axis_divisor_tdata[14] ^ ffff[14]);
              xored_divisor[15] = (s_axis_divisor_tdata[15] ^ ffff[15]);
             
              
             
              dividend_2scomp = (xored_dividend+1'b1);
              divisor_2scomp = (xored_divisor+1'b1);
              
             
              data_cond = (s_axis_divisor_tdata[15] ^ s_axis_dividend_tdata[15]);
             
             if(j==100) begin
                data_cond2 <= data_cond;
             end
             
              dividend_data = s_axis_dividend_tdata[15]  ? dividend_2scomp : s_axis_dividend_tdata;
              divisor_data = s_axis_divisor_tdata[15]  ? divisor_2scomp : s_axis_divisor_tdata;
                    
      
          
          end else if (j<160) begin
             j=j+1; 
//             dividend_data = 16'h00000000;
//             divisor_data = 16'h00000000;
             xored_data_out[0] = (data_out[0] ^ ffff[0]);
            xored_data_out[1] = (data_out[1] ^ ffff[1]);
            xored_data_out[2] = (data_out[2] ^ ffff[2]);
            xored_data_out[3] = (data_out[3] ^ ffff[3]);
            xored_data_out[4] = (data_out[4] ^ ffff[4]);
            xored_data_out[5] = (data_out[5] ^ ffff[5]);
            xored_data_out[6] = (data_out[6] ^ ffff[6]);
            xored_data_out[7] = (data_out[7] ^ ffff[7]);
            xored_data_out[8] = (data_out[8] ^ ffff[8]);
            xored_data_out[9] = (data_out[9] ^ ffff[9]);
            xored_data_out[10] = (data_out[10] ^ ffff[10]);
            xored_data_out[11] = (data_out[11] ^ ffff[11]);
            xored_data_out[12] = (data_out[12] ^ ffff[12]);
            xored_data_out[13] = (data_out[13] ^ ffff[13]);
            xored_data_out[14] = (data_out[14] ^ ffff[14]);
            xored_data_out[15] = (data_out[15] ^ ffff[15]);    
            xored_data_out[16] = (data_out[16] ^ ffff[0]);
            xored_data_out[17] = (data_out[17] ^ ffff[1]);
            xored_data_out[18] = (data_out[18] ^ ffff[2]);
            xored_data_out[19] = (data_out[19] ^ ffff[3]);
            xored_data_out[20] = (data_out[20] ^ ffff[4]);
            xored_data_out[21] = (data_out[21] ^ ffff[5]);
            xored_data_out[22] = (data_out[22] ^ ffff[6]);
            xored_data_out[23] = (data_out[23] ^ ffff[7]);
            xored_data_out[24] = (data_out[24] ^ ffff[8]);
            xored_data_out[25] = (data_out[25] ^ ffff[9]);
            xored_data_out[26] = (data_out[26] ^ ffff[10]);
            xored_data_out[27] = (data_out[27] ^ ffff[11]);
            xored_data_out[28] = (data_out[28] ^ ffff[12]);
            xored_data_out[29] = (data_out[29] ^ ffff[13]);
            xored_data_out[30] = (data_out[30] ^ ffff[14]);
            xored_data_out[31] = (data_out[31] ^ ffff[15]);  
             data_out_2scomp = (xored_data_out+1'b1);
             m_axis_dout_tdata = data_cond2  ? data_out_2scomp : data_out; 
          end    
          else j=0;
          
   end
      else j=0;
   end
  
 
    
          div_gen_0 div(
          .aclk(aclk),
          .s_axis_dividend_tdata(dividend_data),
          .s_axis_dividend_tvalid(s_axis_dividend_tvalid),
          .s_axis_divisor_tdata(divisor_data),
          .s_axis_divisor_tvalid(s_axis_divisor_tvalid),
          .m_axis_dout_tdata(data_out),
          .m_axis_dout_tvalid(m_axis_dout_tvalid));
          
          
          
endmodule
