`timescale 1ns / 1ps

module D_FF(
    input  wire clk4Hz,
    input  wire D,
    output reg  Q
    );
    
    always @(posedge clk4Hz)
    begin
       Q <= D;
    end
endmodule
