`timescale 1ns / 1ps

module complex_conjugate(
    input [255:0] A_new,
    input clk,
    input enable,
    output [15:0] eig_reel_1,
    output [15:0] eig_comp_1,
    output [15:0] eig_reel_2,
    output [15:0] eig_comp_2,
    output [15:0] eig_reel_3,
    output [15:0] eig_comp_3
    );
    
    
    reg [15:0] x11_1;
    reg [15:0] x12_1;
    reg [15:0] x21_1;
    reg [15:0] x22_1;
    reg [15:0] x11_2;
    reg [15:0] x12_2;
    reg [15:0] x21_2;
    reg [15:0] x22_2;
    reg [15:0] x11_3;
    reg [15:0] x12_3;
    reg [15:0] x21_3;
    reg [15:0] x22_3;
    
    ikinci_dereceden_denklem_cozme denklem_cozme1(
        .x11(x11_1),
        .x12(x12_1),
        .x21(x21_1),
        .x22(x22_1),
        .eig_comp(eig_comp_1),
        .eig_reel(eig_reel_1),
        .clk(clk),
        .enable(enable)
        );
    
    ikinci_dereceden_denklem_cozme denklem_cozme2(
        .x11(x11_2),
        .x12(x12_2),
        .x21(x21_2),
        .x22(x22_2),
        .eig_comp(eig_comp_2),
        .eig_reel(eig_reel_2),
        .clk(clk),
        .enable(enable)
        );
    
    ikinci_dereceden_denklem_cozme denklem_cozme3(
        .x11(x11_3),
        .x12(x12_3),
        .x21(x21_3),
        .x22(x22_3),
        .eig_comp(eig_comp_3),
        .eig_reel(eig_reel_3),
        .clk(clk),
        .enable(enable)
        );
    
     always@(*)
     begin
     
         if(A_new[79:64] != 16'b0000000000000000  ) begin
            
            x11_1 = A_new[15:0];
            x12_1 = A_new[31:16];
            x21_1 = A_new[79:64];
            x22_1 = A_new[95:80];
         
         end
         
         if(A_new[159:144]  != 16'b0000000000000000  ) begin
         
            x11_2 = A_new[95:80];
            x12_2 = A_new[111:96];
            x21_2 = A_new[159:144];
            x22_2 = A_new[175:160];
         
         end
         
         if(A_new[239:224]  != 16'b0000000000000000  ) begin
 
             x11_3 = A_new[175:160];
             x12_3 = A_new[191:176];
             x21_3 = A_new[239:224];
             x22_3 = A_new[255:240];
                     
         end
                
       
     end
  
    
endmodule
