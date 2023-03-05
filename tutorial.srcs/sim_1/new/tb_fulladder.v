`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2023 01:58:03 PM
// Design Name: 
// Module Name: tb_fulladder
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


module tb_fulladder();
    reg a, b, cin;
    wire sum, cout;
    integer i;

    fulladder u0(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

    initial begin
        a <= 0;
        b <= 0;
        $monitor("a=%0b, b=%0b, cin=%0b, sum=%0b, cout=%0b", a, b, cin, sum, cout);

        for (i = 0; i < 7; i = i + 1) begin
            {a, b, cin} = i;
            #10;
        end    
    end
endmodule
