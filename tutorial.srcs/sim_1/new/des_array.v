`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2023 03:40:28 PM
// Design Name: 
// Module Name: des_array
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


module des_array();
    reg [7:0] mem1;
    reg [7:0] mem2 [0:3];
    reg [15:0] mem3 [0:3][0:1];
    
    integer i, j;

    initial begin
        

        mem1 = 8'ha9;
        mem2[0] = 8'haa;
        mem2[1] = 8'hbb;
        mem2[2] = 8'hcc;
        mem2[3] = 8'hdd;

        for (i = 0; i < 4; i = i + 1) begin
            $display ("mem2[%0d] = 0x%0h", i, mem2[i]);
        end

        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 2; j = j + 1) begin
                mem3[i][j] = i + j;
                $display ("mem3[%0d][%0d] = 0x%0h", i, j, mem3[i][j]);
            end
        end
    end
    
endmodule
