`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2023 02:34:21 PM
// Design Name: 
// Module Name: tb_jk_flipflop
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


module tb_jk_flipflop(

    );
    reg j, k, rstn, clk;
    wire q;
    integer i;
    reg [2:0] dly;

    always #10 clk = ~clk;

    jk_flipflop u0(.j(j), .k(k), .clk(clk), .rstn(rstn), .q(q));

    initial begin
        {j, k, rstn, clk} <= 0;
        #10 rstn <= 1;
        for (i = 0; i < 10; i = i + 1) begin
            dly = $random;
            #(dly) j <= $random;
            #(dly) k <= $random;
        end
        #20 $finish;
    end
endmodule
