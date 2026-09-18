`timescale 1ns / 1ps
module slow_clock_4Hz(
    input clk,              //100Mhz Basys3 Clock
    output reg clk4Hz = 0  //4Hz clock
    );
    
    reg [25:0] count = 0;  //2^25 will be greater than 12.5 million
    
    always@(posedge clk)
    begin
      if(count == 26'd12500000)
        begin
          count <= 0;          //Reset itself to zero
          clk4Hz <= ~clk4Hz;  //Inverts the clock
        end
      else
        begin
          count <= count + 1;
        end
    end
    
endmodule
