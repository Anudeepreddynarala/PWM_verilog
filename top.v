`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////


module top(input clk,output led);
reg [7:0] counter=1;
reg [7:0]D=4;
always @(posedge clk)
begin
    if(counter==10)
        counter<=1;
    else
        counter<=counter+1;    
end
assign led=(counter<=D)?1:0;


endmodule
