module counter(input clk,rst,j,k, input [4:0] duty_cycle,
output [4:0] q, output [4:0] q_bar, output reg pwm);
jk_ff ff1(clk,rst,j,k,q[0],q_bar[0]);
jk_ff ff2(q[0],rst,j,k,q[1],q_bar[1]);
jk_ff ff3(q[1],rst,j,k,q[2],q_bar[2]);
jk_ff ff4(q[2],rst,j,k,q[3],q_bar[3]);
jk_ff ff5(q[3],rst,j,k,q[4],q_bar[4]);
always @(*)
if(q_bar == 5'b00000)
pwm = 1'b1;
else if (q_bar >= duty_cycle)
pwm = 1'b0;
endmodule
