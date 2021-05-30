`timescale 1ns / 1ps

module sqrt_root(
    input [31:0] D,
    input clk,
    input enable,
    output reg [15:0] Result,
    output reg done
    );

    reg [31:0] Q= 32'h00000000;
    reg [31:0] F  = 32'h00000000;
    reg [31:0] Q_new ;// = 16'h0000;
    reg [31:0] R  = 32'h00000000;
    reg [31:0] Q_n;//  = 16'h0000;
    reg [31:0] cbm;//  = 16'h0000;
    reg [31:0] F_n;// = 16'h0000;    
    reg [31:0] R_n= 32'h00000000;    
    reg [31:0] FS ;// = 16'h0000;
    reg [31:0] c ;//= 16'h0000;
    reg [31:0] a ;// = 16'h0000;
    reg [31:0] b = 32'h00000000;
    reg [1:0] D_n= 2'b00;
    reg CR ;//= 1'b0;
    integer i=0;
    reg [3:0] k = 4'b1111;


   
       always @(posedge clk)  begin
       if (enable==1) begin 
    
        case (k)
        
          4'b0000 : begin
                     D_n <= D[1:0];
                   end
          4'b0001 : begin
                     D_n <= D[3:2];
                   end
          4'b0010 : begin
                     D_n <= D[5:4];
                   end
          4'b0011 : begin
                     D_n <= D[7:6];
                   end
          4'b0100 : begin
                     D_n <= D[9:8];
                   end
          4'b0101 : begin
                     D_n <= D[11:10];
                   end
          4'b0110 : begin
                     D_n <= D[13:12];
                   end
          4'b0111 : begin
                     D_n <= D[15:14];
                   end
          4'b1000 : begin
                     D_n <= D[17:16];
                   end
          4'b1001 : begin
                     D_n <= D[19:18];
                   end
          4'b1010 : begin
                     D_n <= D[21:20];
                   end
          4'b1011 : begin
                     D_n <= D[23:22];
                   end
          4'b1100 : begin
                     D_n <= D[25:24];
                   end
          4'b1101 : begin
                     D_n <= D[27:26];
                   end
          4'b1110 : begin
                     D_n <= D[29:28];
                   end
          4'b1111 : begin
                     D_n <= D[31:30];
                   end                   
                   
          default: begin
                    
                   end
       endcase    
    
        
           FS = F << 1;
           a = FS | 1;
           b = D_n | (R << 2);
          
           if (a > b) begin
               CR = 1'b0; 
           end
           else begin
               CR = 1'b1; 
           end
           cbm = FS|CR;
           if (CR==1) begin
               c = FS|CR; 
           end
           else begin
               c = CR; 
           end
           
           Q_new = Q | CR;
           F_n = Q_new[0] + (FS|Q_new[0]);
           Q_n = Q_new << 1;
           R_n = b - c;
       
           
       //------------------------------------------
           
           if (i<1) begin
              i = i+1;
           end
           else begin
              i=0;
              k=k-1;
              F = F_n;
              Q = Q_n;
              R = R_n;
              
              if (k==4'b1111)begin
                done<= 1'b1;
                Result<= Q_new;
                F_n <= 0;
                Q_n <= 0;
                R_n <= 0;
              end
              else 
                done <= 1'b0;
           end
       

       end
       
       else begin
       k<=4'b1111;
       i=0;
       F_n <= 0;
       Q_n <= 0;
       R_n <= 0;
       F<=0;
       R<=0;
       Q<=0;
       cbm<=0;
       Q_new<=0;
       FS<=0;
       a<=0;
       b<=0;
       c<=0;
       CR<=0;
       end

    end
    
    

endmodule
