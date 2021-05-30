`timescale 1ns / 1ps

module eig_estimation(
    input clk
    );
    
   wire [255:0] A,R,Q,A_new,A_diag,bram_in,bram_out,A_initial;
   wire done_qr ,exit_flag,enable_diag,we;
   wire [15:0] eig_reel_1, eig_comp_1,eig_reel_2, eig_comp_2,eig_reel_3, eig_comp_3;
   wire [3:0] addr;
   
   reg [255:0] A_diag2,A2;
   reg enable_diag2;
   
   assign A_diag = A_diag2;
   assign A = A2;
   assign enable_diag = enable_diag2;
   

//   assign A_initial[15:0]    = 16'b0000010000000000; 
//   assign A_initial[79:64]   = 16'b0000010000000000; 
//   assign A_initial[143:128] = 16'b0000010000000000; 
//   assign A_initial[207:192] = 16'b0000011000000000; 
//   assign A_initial[31:16]   = 16'b0000011000000000; 
//   assign A_initial[95:80]   = 16'b0000011000000000; 
//   assign A_initial[159:144] = 16'b0000010000000000; 
//   assign A_initial[223:208] = 16'b0000011000000000; 
//   assign A_initial[47:32]   = 16'b0000011000000000; 
//   assign A_initial[111:96]  = 16'b0000011000000000; 
//   assign A_initial[175:160] = 16'b0000011000000000; 
//   assign A_initial[239:224] = 16'b0000010000000000; 
//   assign A_initial[63:48]   = 16'b0000010000000000; 
//   assign A_initial[127:112] = 16'b0000010000000000; 
//   assign A_initial[191:176] = 16'b0000011000000000; 
//   assign A_initial[255:240] = 16'b0000011000000000; 

   assign A_initial[15:0]    = 16'b0000000010000000; 
   assign A_initial[79:64]   = 16'b0000010000000000; 
   assign A_initial[143:128] = 16'b0000001100000000; 
   assign A_initial[207:192] = 16'b0000001000000000; 
   assign A_initial[31:16]   = 16'b0000001000000000; 
   assign A_initial[95:80]   = 16'b0000001000000000; 
   assign A_initial[159:144] = 16'b0000010000000000; 
   assign A_initial[223:208] = 16'b0000001000000000; 
   assign A_initial[47:32]   = 16'b0000001000000000; 
   assign A_initial[111:96]  = 16'b0000001000000000; 
   assign A_initial[175:160] = 16'b0000001000000000; 
   assign A_initial[239:224] = 16'b0000010000000000; 
   assign A_initial[63:48]   = 16'b0000010000000000; 
   assign A_initial[127:112] = 16'b0000010000000000; 
   assign A_initial[191:176] = 16'b0000001000000000; 
   assign A_initial[255:240] = 16'b0000001000000000;
   

   
   gram_schmidt qr_w_gram(
        .clk(clk),
        .in_A(A),
        .out_Q(Q),
        .out_R(R),
        .done(done_qr)
        );
        
   matrix_multiplication mat_mult(
        .clk(clk),
        .enable(done_qr),
        .in_R(R),
        .in_Q(Q),
        .out_a_new(A_new)
        ); 
        
   check_diagonality diagonal_check(
        .A_new(A_new),
        .clk(clk),
        .exit_flag(exit_flag)
       ); 
   
//   blk_mem_gen_0 bram(
//       .clka(clk),
//       .ena(~exit_flag),
//       .wea(we),
//       .addra(addr),
//       .dina(bram_in),
//       .douta(bram_out)
//         );
    
   complex_conjugate comp_conj(
        .A_new(A_diag),
        .clk(clk),
        .enable(enable_diag),
        .eig_reel_1(eig_reel_1),
        .eig_comp_1(eig_comp_1),
        .eig_reel_2(eig_reel_2),
        .eig_comp_2(eig_comp_2),
        .eig_reel_3(eig_reel_3),
        .eig_comp_3(eig_comp_3)
           ); 
    
    
      parameter state1 = 2'b00;
      parameter state2 = 2'b01;
      parameter state3 = 2'b10;
      parameter state4 = 2'b11;
   
      reg [1:0] state = state1;
      integer i=0;
   
      always @(posedge clk)
        
        case (state)
           state1 : begin
           
            A2 <= A_initial;
            
              if (i > 800) begin
                 state <= state2;
                 i = 0;
              end else begin
                 state <= state1;
                 i = i+1;

              end
              
           end
           state2 : begin
           
              if (exit_flag) begin
                  state <= state3;
                  A_diag2 <= A_new;
              end else begin
                  state <= state4;
                  A2 <= A_new;
              end
                   
           end
           
           state3 : begin
           
              enable_diag2 <= 1'b1;    
              state <= state3;
              
           end
           
           state4 : begin
           
              if (i > 800) begin
                 state <= state2;
                 i = 0;
            
              end else begin
                 state <= state4;
                 i = i+1;
              end
              
           end
           default : begin  // Fault Recovery
              state <= state1;
           end
        endcase
                                       
  
   
endmodule
