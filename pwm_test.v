`timescale 1ns / 1ps


module pwm_test();
reg clk=0;
wire led;
top UUT(.clk(clk),.led(led));
always #5 clk=~clk;
endmodule
