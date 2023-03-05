`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2023 03:09:53 PM
// Design Name: 
// Module Name: gen_if
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
module mux_assign(
    input a, b, sel, 
    output out
);
    assign out = sel ? a: b;

    initial
        $display("mux_assign instantiated");
endmodule


module mux_case (
    input a, b, sel, 
    output reg out
);
    always @(a or b or sel) begin
        case (sel)
            0: out = a;
            1: out = b;
        endcase
    end
    
    initial begin
        $display("mux_case instantiated");
    end
endmodule


module gen_if(
    input a, b, sel, 
    output out
);
    parameter USE_CASE = 0;

    generate
        if (USE_CASE)
            mux_assign ma(a, b, sel, out);
        else
            mux_case mc(a, b, sel, out);
    endgenerate

endmodule
