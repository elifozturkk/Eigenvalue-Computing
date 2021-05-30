`timescale 1ns / 1ps

module buffer2
#(parameter SIZE=32)
(
    input [SIZE-1:0] d,
    output reg [SIZE-1:0] q,
    output reg done,
    input clk
    );
    integer k=0;
    always@(posedge clk) begin
        if (k < 50) begin
            k <= k+1;
        end else begin
            k <= 0;
            q <= d;
            done <= 1'b1;
            end
    end
endmodule
