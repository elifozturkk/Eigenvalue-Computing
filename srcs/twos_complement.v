`timescale 1ns / 1ps

module twos_complement(
    input [15:0] A,
    output [15:0] A_2scomp
    );
    
    wire [15:0] xored_A;
    
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
  
    assign A_2scomp = (xored_A+1'b1);
    
endmodule
