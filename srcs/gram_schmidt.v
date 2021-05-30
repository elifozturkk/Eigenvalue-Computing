`timescale 1ns / 1ps

module gram_schmidt(
    input clk,
    input [255:0] in_A,
    output reg [255:0] out_Q,
    output reg [255:0] out_R,
    output reg done
    );
    

    wire [15:0] a1 [0:3];
    wire [15:0] a2 [0:3];
    wire [15:0] a3 [0:3];
    wire [15:0] a4 [0:3];
    wire [15:0] q1 [0:3];
    wire [15:0] q2 [0:3];
    wire [15:0] q3 [0:3];
    wire [15:0] q4 [0:3];

    wire [15:0] a_next11_1, a_next11_2, a_next11_3, a_next11_4;
    wire [15:0] a_next12_1, a_next12_2, a_next12_3, a_next12_4;
    wire [15:0] a_next13_1, a_next13_2, a_next13_3, a_next13_4;
    wire [15:0] a_next21_1, a_next21_2, a_next21_3, a_next21_4;
    wire [15:0] a_next22_1, a_next22_2, a_next22_3, a_next22_4;
    wire [15:0] a_next31_1, a_next31_2, a_next31_3, a_next31_4;
    
    wire [15:0] r11,r12,r13,r14,r22,r23,r24,r33,r34,r44;
    
    wire [15:0] rii_2_1, rii_1;
    wire [15:0] rii_2_2, rii_2;
    wire [15:0] rii_2_3, rii_3;
    wire [15:0] rii_2_4, rii_4;
    wire [15:0] ai_t_x_aj_1_1;
    wire [15:0] ai_t_x_aj_1_2;
    wire [15:0] ai_t_x_aj_1_3;
    wire [15:0] ai_t_x_aj_2_1;
    wire [15:0] ai_t_x_aj_2_2;
    wire [15:0] ai_t_x_aj_3_1;
    wire [15:0] ai_t_x_aj_2;
    wire [15:0] ai_t_x_aj_3;
    wire [15:0] ai_t_x_aj_4;
    
    wire done_1_1_1;
    wire done_1_2_1;
    wire done_1_3_1;
    wire done_1_4_1;
    
    wire enable1,enable2,enable3,enable4;
    reg enable_1,enable_2,enable_3;
    reg enable_m11,enable_m12,enable_m13,enable_m14;
 
 //1  = 0000010000000000
 //1.5= 0000011000000000
//    assign a1[0] = 16'b0000010000000000; 
//    assign a1[1] = 16'b0000010000000000; 
//    assign a1[2] = 16'b0000010000000000; 
//    assign a1[3] = 16'b0000011000000000; 
//    assign a2[0] = 16'b0000011000000000; 
//    assign a2[1] = 16'b0000011000000000; 
//    assign a2[2] = 16'b0000010000000000; 
//    assign a2[3] = 16'b0000011000000000; 
//    assign a3[0] = 16'b0000011000000000; 
//    assign a3[1] = 16'b0000011000000000; 
//    assign a3[2] = 16'b0000011000000000; 
//    assign a3[3] = 16'b0000010000000000; 
//    assign a4[0] = 16'b0000010000000000; 
//    assign a4[1] = 16'b0000010000000000; 
//    assign a4[2] = 16'b0000011000000000; 
//    assign a4[3] = 16'b0000011000000000;   

    assign a1[0] = in_A[15:0]; 
    assign a1[1] = in_A[79:64]; 
    assign a1[2] = in_A[143:128]; 
    assign a1[3] = in_A[207:192]; 
    assign a2[0] = in_A[31:16]; 
    assign a2[1] = in_A[95:80]; 
    assign a2[2] = in_A[159:144]; 
    assign a2[3] = in_A[223:208]; 
    assign a3[0] = in_A[47:32]; 
    assign a3[1] = in_A[111:96]; 
    assign a3[2] = in_A[175:160]; 
    assign a3[3] = in_A[239:224]; 
    assign a4[0] = in_A[63:48]; 
    assign a4[1] = in_A[127:112]; 
    assign a4[2] = in_A[191:176]; 
    assign a4[3] = in_A[255:240];     
    
//    assign out_Q = {q4[3],q4[2],q4[1],q4[0],q3[3],q3[2],q3[1],q3[0],q2[3],q2[2],q2[1],q2[0],q1[3],q1[2],q1[1],q1[0]};
//    assign out_R = {r44,16'd0,16'd0,16'd0,r34,r33,16'd0,16'd0,r24,r23,r22,16'd0,r14,r13,r12,r11};
    
//    assign done = done_1_4_1;
    
    assign r11 = rii_1;
    assign r22 = rii_2;
    assign r33 = rii_3;
    assign r44 = rii_4;
   
      parameter state1 = 3'b000;
      parameter state2 = 3'b001;
      parameter state3 = 3'b010;
      parameter state4 = 3'b011;
      parameter state5 = 3'b100;
    
      reg [2:0] state = state1;
      integer i=0;
    
      always @(posedge clk) begin
        
        case (state)
           state1 : begin
              enable_1 <= 1'b1;
              enable_2 <= 1'b0;
              enable_3 <= 1'b0;
              enable_m11 <= 1'b1;
              enable_m12 <= 1'b0;
              enable_m13 <= 1'b0;
              enable_m14 <= 1'b0;
              if (i > 150) begin
                 state <= state2;
                 i = 0;
              end else begin
                 state <= state1;
                 i = i+1;
                 
              end
              
           end
           state2 : begin
              enable_1 <= 1'b0;
              enable_2 <= 1'b1;
              enable_3 <= 1'b0;
              enable_m11 <= 1'b0;
              enable_m12 <= 1'b1;
              enable_m13 <= 1'b0;
              enable_m14 <= 1'b0;
              if (i > 150) begin
                state <= state3;
                i = 0;
             end else begin
                state <= state2;
                i = i+1;
                
             end
                   
           end
           
           state3 : begin
             enable_1 <= 1'b0;
             enable_2 <= 1'b0;
             enable_3 <= 1'b1;           
             enable_m11 <= 1'b0;
             enable_m12 <= 1'b0;
             enable_m13 <= 1'b1;
             enable_m14 <= 1'b0;     
             if (i > 150) begin
                state <= state4;
                i = 0;
             end else begin
                state <= state3;
                i = i+1;
                
             end
              
           end
           
           state4 : begin
               enable_1 <= 1'b0;
               enable_2 <= 1'b0;
               enable_3 <= 1'b0;
               enable_m11 <= 1'b0;
               enable_m12 <= 1'b0;
               enable_m13 <= 1'b0;
               enable_m14 <= 1'b1;           
              if (i > 150) begin
                 state <= state5;
                 i = 0;
              end else begin
                 state <= state4;
                 i = i+1;
                 
              end
              
           end
           state5 : begin
               enable_1 <= 1'b0;
               enable_2 <= 1'b0;
               enable_3 <= 1'b0;
               enable_m11 <= 1'b0;
               enable_m12 <= 1'b0;
               enable_m13 <= 1'b0;
               enable_m14 <= 1'b0;  
               done <= 1'b1;  
               out_Q = {q4[3],q4[2],q4[1],q4[0],q3[3],q3[2],q3[1],q3[0],q2[3],q2[2],q2[1],q2[0],q1[3],q1[2],q1[1],q1[0]};    
               out_R = {r44,16'd0,16'd0,16'd0,r34,r33,16'd0,16'd0,r24,r23,r22,16'd0,r14,r13,r12,r11};   
              if (i > 200) begin
                 state <= state1;
                 i = 0;
              end else begin
                 state <= state5;
                 i = i+1;
                 
              end
              
           end           
           default : begin  // Fault Recovery
              state <= state1;
           end
        endcase
   end
   // 1. satýr-------------------------------------------------------
          module_1 module1_1_1(
                .clk(clk),
                .o_start(enable1),
                .enable(enable_m11),
                .done(done_1_1_1),
                .in_ai0(a1[0]),
                .in_ai1(a1[1]),
                .in_ai2(a1[2]),
                .in_ai3(a1[3]),
                .out_rii(rii_1),
                .out_qi0(q1[0]),
                .out_qi1(q1[1]),
                .out_qi2(q1[2]),
                .out_qi3(q1[3]),
                .out_rii_2(rii_2_1));
            
            module_2 module2_1_1(
                .clk(clk),
                .enable(enable_1),
                .in_ai_t0(a1[0]),
                .in_ai_t1(a1[1]),
                .in_ai_t2(a1[2]),
                .in_ai_t3(a1[3]),
                .in_aj0(a2[0]),
                .in_aj1(a2[1]),
                .in_aj2(a2[2]),
                .in_aj3(a2[3]),
                .in_rii(rii_1),
                .out_ai_t_x_aj(ai_t_x_aj_1_1),
                .out_rij(r12)
            );
            module_2 module2_1_2(
                .clk(clk),
                .enable(enable_1),
                .in_ai_t0(a1[0]),
                .in_ai_t1(a1[1]),
                .in_ai_t2(a1[2]),
                .in_ai_t3(a1[3]),
                .in_aj0(a3[0]),
                .in_aj1(a3[1]),
                .in_aj2(a3[2]),
                .in_aj3(a3[3]),
                .in_rii(rii_1),
                .out_ai_t_x_aj(ai_t_x_aj_1_2),
                .out_rij(r13)
            );
            module_2 module2_1_3(
                .clk(clk),
                .enable(enable_1),
                .in_ai_t0(a1[0]),
                .in_ai_t1(a1[1]),
                .in_ai_t2(a1[2]),
                .in_ai_t3(a1[3]),
                .in_aj0(a4[0]),
                .in_aj1(a4[1]),
                .in_aj2(a4[2]),
                .in_aj3(a4[3]),
                .in_rii(rii_1),
                .out_ai_t_x_aj(ai_t_x_aj_1_3),
                .out_rij(r14)
            );                      

            module_3 module3_1_1(
                .clk(clk),
                .enable(enable_1),
                .in_rii_2(rii_2_1),
                .in_ai_t_x_aj(ai_t_x_aj_1_1),
                .in_ai0(a1[0]),
                .in_ai1(a1[1]),
                .in_ai2(a1[2]),
                .in_ai3(a1[3]),
                .in_aj0(a2[0]),
                .in_aj1(a2[1]),
                .in_aj2(a2[2]),
                .in_aj3(a2[3]),
                .out_aj_new0(a_next11_1),
                .out_aj_new1(a_next11_2),
                .out_aj_new2(a_next11_3),
                .out_aj_new3(a_next11_4)
            
            );
            
            module_3 module3_1_2(
                .clk(clk),
                .enable(enable_1),
                .in_rii_2(rii_2_1),
                .in_ai_t_x_aj(ai_t_x_aj_1_2),
                .in_ai0(a1[0]),
                .in_ai1(a1[1]),
                .in_ai2(a1[2]),
                .in_ai3(a1[3]),
                .in_aj0(a3[0]),
                .in_aj1(a3[1]),
                .in_aj2(a3[2]),
                .in_aj3(a3[3]),
                .out_aj_new0(a_next12_1),
                .out_aj_new1(a_next12_2),
                .out_aj_new2(a_next12_3),
                .out_aj_new3(a_next12_4)
            
            );
            module_3 module3_1_3(
                .clk(clk),
                .enable(enable_1),
                .in_rii_2(rii_2_1),
                .in_ai_t_x_aj(ai_t_x_aj_1_3),
                .in_ai0(a1[0]),
                .in_ai1(a1[1]),
                .in_ai2(a1[2]),
                .in_ai3(a1[3]),
                .in_aj0(a4[0]),
                .in_aj1(a4[1]),
                .in_aj2(a4[2]),
                .in_aj3(a4[3]),
                .out_aj_new0(a_next13_1),
                .out_aj_new1(a_next13_2),
                .out_aj_new2(a_next13_3),
                .out_aj_new3(a_next13_4)
            
            );                        
   
    
    //-----------------------------------------------------------------
    //2. satýr---------------------------------------------------------
    
              module_1 module1_2_1(
                  .clk(clk),  
                  .o_start(enable2),                
                  .enable(enable_m12),
                  .done(done_1_2_1),
                  .in_ai0(a_next11_1),
                  .in_ai1(a_next11_2),
                  .in_ai2(a_next11_3),
                  .in_ai3(a_next11_4),
                  .out_rii(rii_2),
                  .out_qi0(q2[0]),
                  .out_qi1(q2[1]),
                  .out_qi2(q2[2]),
                  .out_qi3(q2[3]),
                  .out_rii_2(rii_2_2));
              
              module_2 module2_2_1(
                  .clk(clk),
                  .enable(enable_2),
                  .in_ai_t0(a_next11_1),
                  .in_ai_t1(a_next11_2),
                  .in_ai_t2(a_next11_3),
                  .in_ai_t3(a_next11_4),
                  .in_aj0(a_next12_1),
                  .in_aj1(a_next12_2),
                  .in_aj2(a_next12_3),
                  .in_aj3(a_next12_4),
                  .in_rii(rii_2),
                  .out_ai_t_x_aj(ai_t_x_aj_2_1),
                  .out_rij(r23)
              );
              module_2 module2_2_2(
                  .clk(clk),
                  .enable(enable_2),
                  .in_ai_t0(a_next11_1),
                  .in_ai_t1(a_next11_2),
                  .in_ai_t2(a_next11_3),
                  .in_ai_t3(a_next11_4),
                  .in_aj0(a_next13_1),
                  .in_aj1(a_next13_2),
                  .in_aj2(a_next13_3),
                  .in_aj3(a_next13_4),
                  .in_rii(rii_2),
                  .out_ai_t_x_aj(ai_t_x_aj_2_2),
                  .out_rij(r24)
              );
    
              module_3 module3_2_1(
                  .clk(clk),
                  .enable(enable_2),
                  .in_rii_2(rii_2_2),
                  .in_ai_t_x_aj(ai_t_x_aj_2_1),
                  .in_ai0(a_next11_1),
                  .in_ai1(a_next11_2),
                  .in_ai2(a_next11_3),
                  .in_ai3(a_next11_4),
                  .in_aj0(a_next12_1),
                  .in_aj1(a_next12_2),
                  .in_aj2(a_next12_3),
                  .in_aj3(a_next12_4),
                  .out_aj_new0(a_next21_1),
                  .out_aj_new1(a_next21_2),
                  .out_aj_new2(a_next21_3),
                  .out_aj_new3(a_next21_4)
              
              );
              
              module_3 module3_2_2(
                  .clk(clk),
                  .enable(enable_2),
                  .in_rii_2(rii_2_2),
                  .in_ai_t_x_aj(ai_t_x_aj_2_2),
                  .in_ai0(a_next11_1),
                  .in_ai1(a_next11_2),
                  .in_ai2(a_next11_3),
                  .in_ai3(a_next11_4),
                  .in_aj0(a_next13_1),
                  .in_aj1(a_next13_2),
                  .in_aj2(a_next13_3),
                  .in_aj3(a_next13_4),
                  .out_aj_new0(a_next22_1),
                  .out_aj_new1(a_next22_2),
                  .out_aj_new2(a_next22_3),
                  .out_aj_new3(a_next22_4)
              
              );    
 //--------------------------------------------------------------------------
 //3. satýr
             module_1 module1_3_1(
                 .enable(enable_m13),
                 .o_start(enable3),
                 .done(done_1_3_1),
                 .clk(clk),
                 .in_ai0(a_next21_1),
                 .in_ai1(a_next21_2),
                 .in_ai2(a_next21_3),
                 .in_ai3(a_next21_4),
                 .out_rii(rii_3),
                 .out_qi0(q3[0]),
                 .out_qi1(q3[1]),
                 .out_qi2(q3[2]),
                 .out_qi3(q3[3]),
                 .out_rii_2(rii_2_3));
             
             module_2 module2_3_1(
                 .clk(clk),
                 .enable(enable_3),
                 .in_ai_t0(a_next21_1),
                 .in_ai_t1(a_next21_2),
                 .in_ai_t2(a_next21_3),
                 .in_ai_t3(a_next21_4),
                 .in_aj0(a_next22_1),
                 .in_aj1(a_next22_2),
                 .in_aj2(a_next22_3),
                 .in_aj3(a_next22_4),
                 .in_rii(rii_3),
                 .out_ai_t_x_aj(ai_t_x_aj_3_1),
                 .out_rij(r34)
             ); 

              module_3 module3_3_1(
                  .clk(clk),
                  .enable(enable_3),
                  .in_rii_2(rii_2_3),
                  .in_ai_t_x_aj(ai_t_x_aj_3_1),
                  .in_ai0(a_next21_1),
                  .in_ai1(a_next21_2),
                  .in_ai2(a_next21_3),
                  .in_ai3(a_next21_4),
                  .in_aj0(a_next22_1),
                  .in_aj1(a_next22_2),
                  .in_aj2(a_next22_3),
                  .in_aj3(a_next22_4),
                  .out_aj_new0(a_next31_1),
                  .out_aj_new1(a_next31_2),
                  .out_aj_new2(a_next31_3),
                  .out_aj_new3(a_next31_4)
              );   
//-----------------------------------------------------------
//4. satýr  
             module_1 module1_4_1(
                .clk(clk),
                .o_start(enable4),
                .enable(enable_m14),
                .done(done_1_4_1),
                .in_ai0(a_next31_1),
                .in_ai1(a_next31_2),
                .in_ai2(a_next31_3),
                .in_ai3(a_next31_4),
                .out_rii(rii_4),
                .out_qi0(q4[0]),
                .out_qi1(q4[1]),
                .out_qi2(q4[2]),
                .out_qi3(q4[3]),
                .out_rii_2(rii_2_4));            
endmodule
