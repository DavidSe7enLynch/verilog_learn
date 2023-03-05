`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/23/2023 03:31:33 PM
// Design Name: 
// Module Name: des
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


module des;
    reg [31:0] data;
    integer i;
    
    initial begin
        data = 32'hface_cafe;
        for (i = 0; i < 4; i = i + 1) begin
            $display ("data[8*%0d + 8] = 0x%0h", i, data[8*i +: 8]);
        end
    
        $display ("data[7:0] = 0x%0h", data[7:0]);
        $display ("data[15:8] = 0x%0h", data[15:8]);
        $display ("data[23:16] = 0x%0h", data[23:16]);
        $display ("data[31:24] = 0x%0h", data[31:24]);
    end    
endmodule
