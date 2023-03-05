`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2023 02:59:51 PM
// Design Name: 
// Module Name: tb_gen_loop
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


module tb_gen_loop(

    );
    parameter N = 4;
    reg [N-1:0] a, b;
    wire [N-1:0] sum, cout;

    gen_loop #(.N(N)) gl(a, b, sum, cout);

    initial begin
        a <= 0;
        b <= 0;
        $monitor("a=0x%0h, b=00x%0h, sum=0x%00h, cout=0x%0h", a, b, sum, cout);

        #10 a <= 'h2;
        b <= 'h3;
        #20 b <= 'h4;
        #10 a <= 'h5;
    end
endmodule
