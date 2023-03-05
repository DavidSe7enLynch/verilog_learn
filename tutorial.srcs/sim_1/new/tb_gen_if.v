`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2023 03:16:34 PM
// Design Name: 
// Module Name: tb_gen_if
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_gen_if(

    );
    reg a, b, sel;
    wire out;
    integer i;

    gen_if #(.USE_CASE(1)) u0(a, b, sel, out);

    initial begin
        a <= 0;
        b <= 0;
        sel <= 0;

        for (i = 0; i < 5; i = i + 1) begin
            #10 a <= $random;
            b <= $random;
            sel <= $random;
        end
    end
endmodule
