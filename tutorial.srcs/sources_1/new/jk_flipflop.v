`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2023 02:32:17 PM
// Design Name: 
// Module Name: jk_flipflop
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


module jk_flipflop(
        input j, k, rstn, clk, 
        output reg q
    );
    always @(posedge clk or negedge rstn) begin
        if (!rstn)
            q <= 0;
        else
            q <= (j & ~q) | (~k & q);
    end
endmodule
