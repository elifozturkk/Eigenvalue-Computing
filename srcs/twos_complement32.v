`timescale 1ns / 1ps

module twos_complement32(
    input [31:0] A,
    output [31:0] A_2scomp
    );
    
    wire [31:0] xored_A;
    
    assign xored_A[0] = (A[0] ^ 1);
    assign xored_A[1] = (A[1] ^ 1);
    assign xored_A[2] = (A[2] ^ 1);
    assign xored_A[3] = (A[3] ^ 1);
    assign xored_A[4] = (A[4] ^ 1);
    assign xored_A[5] = (A[5] ^ 1);
    assign xored_A[6] = (A[6] ^ 1);
    assign xored_A[7] = (A[7] ^ 1);
    assign xored_A[8] = (A[8] ^ 1);
    assign xored_A[9] = (A[9] ^ 1);
    assign xored_A[10] = (A[10] ^ 1);
    assign xored_A[11] = (A[11] ^ 1);
    assign xored_A[12] = (A[12] ^ 1);
    assign xored_A[13] = (A[13] ^ 1);
    assign xored_A[14] = (A[14] ^ 1);
    assign xored_A[15] = (A[15] ^ 1);
    assign xored_A[16] = (A[16] ^ 1);
    assign xored_A[17] = (A[17] ^ 1);
    assign xored_A[18] = (A[18] ^ 1);
    assign xored_A[19] = (A[19] ^ 1);
    assign xored_A[20] = (A[20] ^ 1);
    assign xored_A[21] = (A[21] ^ 1);
    assign xored_A[22] = (A[22] ^ 1);
    assign xored_A[23] = (A[23] ^ 1);
    assign xored_A[24] = (A[24] ^ 1);
    assign xored_A[25] = (A[25] ^ 1);
    assign xored_A[26] = (A[26] ^ 1);
    assign xored_A[27] = (A[27] ^ 1);
    assign xored_A[28] = (A[28] ^ 1);
    assign xored_A[29] = (A[29] ^ 1);
    assign xored_A[30] = (A[30] ^ 1);
    assign xored_A[31] = (A[31] ^ 1);
  
    assign A_2scomp = (xored_A+1'b1);
    
endmodule
