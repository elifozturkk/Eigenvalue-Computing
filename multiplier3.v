`timescale 1ns / 1ps

module multiplier3(
        input CLK,
        input [15:0] A,
        input [15:0] B,
        output reg [31:0] P,
        input enable
    );
    
    reg [15:0] A_data, B_data;
    reg [15:0] xored_A, xored_B;
    reg [15:0] A_2scomp, B_2scomp ;
    reg [31:0] data_out_2scomp,xored_data_out ;
    wire [31:0] data_out;
    reg data_cond;
    reg data_cond2;
    reg start = 1'b0;
    reg [15:0] ffff = 16'b1111111111111111;
    integer j=0;
    
       always@(posedge enable) begin
         start <= ~ start;
       end
       
       always@(posedge CLK ) begin
    
       if ( start == 1'b1)begin
    
             if(j<0) begin
                 j=j+1;
             end else if (j<2) begin
                 j=j+1; 
                
                  xored_A[0] = (A[0] ^ 1);
                  xored_A[1] = (A[1] ^ 1);
                  xored_A[2] = (A[2] ^ 1);
                  xored_A[3] = (A[3] ^ 1);
                  xored_A[4] = (A[4] ^ 1);
                  xored_A[5] = (A[5] ^ 1);
                  xored_A[6] = (A[6] ^ 1);
                  xored_A[7] = (A[7] ^ 1);
                  xored_A[8] = (A[8] ^ 1);
                  xored_A[9] = (A[9] ^ 1);
                  xored_A[10] = (A[10] ^ 1);
                  xored_A[11] = (A[11] ^ 1);
                  xored_A[12] = (A[12] ^ 1);
                  xored_A[13] = (A[13] ^ 1);
                  xored_A[14] = (A[14] ^ 1);
                  xored_A[15] = (A[14] ^ 1);
              
                    xored_B[0] = (B[0] ^ 1);
                    xored_B[1] = (B[1] ^ 1);
                    xored_B[2] = (B[2] ^ 1);
                    xored_B[3] = (B[3] ^ 1);
                    xored_B[4] = (B[4] ^ 1);
                    xored_B[5] = (B[5] ^ 1);
                    xored_B[6] = (B[6] ^ 1);
                    xored_B[7] = (B[7] ^ 1);
                    xored_B[8] = (B[8] ^ 1);
                    xored_B[9] = (B[9] ^ 1);
                    xored_B[10] = (B[10] ^ 1);
                    xored_B[11] = (B[11] ^ 1);
                    xored_B[12] = (B[12] ^ 1);
                    xored_B[13] = (B[13] ^ 1);
                    xored_B[14] = (B[14] ^ 1);
                    xored_B[15] = (B[14] ^ 1);
                 
                  
                 
                  A_2scomp = (xored_A+1'b1);
                  B_2scomp = (xored_B+1'b1);
                  
                 
                  data_cond = (A[15] ^ B[15]);
                 
                 if(j==1) begin
                    data_cond2 <= data_cond;
                 end
                 
                  A_data = A[15]  ? A_2scomp : A;
                  B_data = B[15]  ? B_2scomp : B;
                        
          
              
              end else if (j<3) begin
                 j=j+1; 
                 B_data = 16'h00000000;
                 A_data = 16'h00000000;
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
                 P = data_cond2  ? data_out_2scomp : data_out; 
              end    
              else j=0;
              
       end
       end
    
    mult_gen_0 mult(
         .A(A_data),
         .B(B_data),
         .CLK(CLK),
         .P(data_out));
         
         
endmodule
