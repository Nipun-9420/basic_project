module blink (a,b,c,d,s);

input wire a,b,c,d;
output wire[6:0]s;
reg[6:0] segment;
assign s=segment;

always @ (a,b,c,d) 
begin
	case({d,c,b,a})// 6543210
	4'b0000:segment=7'b1000000;//0
	4'b0001:segment=7'b1111001;//1
	4'b0010:segment=7'b0100100;//2
	4'b0011:segment=7'b0110000;//3
	4'b0100:segment=7'b0011001;//4
	4'b0101:segment=7'b0010010;//5
	4'b0110:segment=7'b0000010;//6
	4'b0111:segment=7'b1111000;//7
	4'b1001:segment=7'b0000000;//8
	4'b1010:segment=7'b0011000;//9
	4'b1011:segment=7'b0001000;//A
	4'b1100:segment=7'b0000000;//B
	4'b1101:segment=7'b0100011;//c
	endcase
end
endmodule
