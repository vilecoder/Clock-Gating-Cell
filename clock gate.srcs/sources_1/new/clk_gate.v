`timescale 1ns / 1ps


module clk_gate(
    input clk,
    input clk_en,
    output gated_clk
    );
    
    reg latch_out;
    
    always@(clk or clk_en)
        begin
        if(!clk)
            begin
            latch_out <= clk_en;
            end    
        end
    assign gated_clk = clk && latch_out;
endmodule
