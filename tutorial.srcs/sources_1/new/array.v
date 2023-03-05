`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2023 03:58:39 PM
// Design Name: 
// Module Name: array
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


module array(
    input clk, rstn, wr, sel, 
    input [1:0] addr, 
    input [15:0] wdata,
    output [15:0] rdata
);
    reg [15:0] register [0:3];
    integer i;

    always @(posedge clk) begin
        if (!rstn)
            for (i = 0; i < 4; i = i + 1) begin
                register[i] <= 0;
            end
        else begin
            if (sel & wr)
                register[addr] <= wdata;
            else
                register[addr] <= register[addr];
        end 
    end
    assign rdata = (sel & ~wr) ? register[addr] : 0;
endmodule
