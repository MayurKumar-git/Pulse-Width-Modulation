module testbench();
reg clk,rst,j,k;
reg [4:0] duty_cycle;
wire [4:0] q;
wire [4:0] q_bar;
wire pwm;
counter uut(clk,rst,j,k,duty_cycle,q,q_bar,pwm);
initial
begin
j = 1;
k = 1;
// Set "value" from given formula in duty_cycle variable
duty_cycle = 24; // Duty Cycle = value/32 * 100;
clk = 1;
rst = 0;
#5;
rst = 1;
#95;
end
always #5 clk=~clk;
endmodule
