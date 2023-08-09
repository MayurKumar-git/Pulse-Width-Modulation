module jk_ff(input j,k,clk,rst, output reg q, output q_bar);
always@(posedge clk or negedge rst)
begin
if(!rst) q<=0;
else
begin
case({j,k})
 2'b00:
	q<=q;
 2'b01:
	q<=0;
 2'b10:
	q<=1;
 2'b11:
	q<=~q;
endcase
end
end
assign q_bar=~q;

endmodule
