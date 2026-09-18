`timescale 1ns / 1ps

module top(
    input  wire pushbutton,
    input  wire clk,
    output wire led
    );
    
    wire clk4Hz;
    wire pb_sync;
    wire Q1, Q2;
    
    //Clock Divider
    slow_clock_4Hz u1 (.clk(clk), .clk4Hz(clk4Hz));
    
    //// Button synchronizer
    button_sync b1(.clk4Hz(clk4Hz), .button(pushbutton), .button_sync(pb_sync));
    
    //Flip-flops
    D_FF d1 (.D(pb_sync), .clk4Hz(clk4Hz), .Q(Q1));
    D_FF d2 (.D(Q1),.clk4Hz(clk4Hz), .Q(Q2));
    
    //LED Logic
    assign led = Q1 & ~Q2;
endmodule