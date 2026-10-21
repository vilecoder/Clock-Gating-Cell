`timescale 1ns / 1ps

module tb();

reg clk;
reg clk_en;
wire gated_clk;

clk_gate dut (
    .clk(clk),
    .clk_en(clk_en),
    .gated_clk(gated_clk)
    );
    
initial begin
clk = 0;
clk_en =0;
#200;
$finish;

end

always#5 clk = ~clk;

always#20 clk_en = ~ clk_en;



endmodule
