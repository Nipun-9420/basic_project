module N_count (
input clk,
output[6:0] numb_0,
output[6:0] numb_1,
output[6:0] numb_2,
output[6:0] numb_3,
output[6:0] numb_4,
output[6:0] numb_5
);
reg [6:0] cnt_0;
reg [6:0] cnt_1;
reg [6:0] cnt_2;
reg [6:0] cnt_3;
reg [6:0] cnt_4;
reg [6:0] cnt_5;

reg [3:0] clk_o;
reg [3:0] clk_o1;

reg [31:0] counter_0;
reg [31:0] counter_1;

reg [3:0] n_count;
reg[6:0] segment_0;
reg[6:0] segment_1;
reg[6:0] segment_2;
reg[6:0] segment_3;
reg[6:0] segment_4;
reg[6:0] segment_5;
initial begin
		cnt_0 <= 4'b0000;
		cnt_1 <= 4'b0100;
		segment_0=7'b1111111;
		segment_1=7'b1111111;
		counter_0 = 32'b0;
		clk_o=0;
		clk_o1=0;
end

always @ (posedge clk) 
begin
          if(counter_0<25000000)
               counter_0 <= counter_0 + 1'b1;
          else
          begin
               counter_0 <= 32'b0;
					clk_o=~clk_o;
          end
			 
end

always @ (posedge(clk_o))
begin
			
			if(counter_1<=6)
               counter_1 <= counter_1 + 1'b1;
          else
          begin
               counter_1 <= 32'b0;
					clk_o1=~clk_o1;
          end
			


		case(cnt_0)			 // 6543210
			4'b0000:segment_0=7'b1111001;//1
			4'b0001:segment_0=7'b0100100;//2
			4'b0010:segment_0=7'b0110000;//3
			4'b0011:segment_0=7'b0011001;//4
			4'b0100:segment_0=7'b0010010;//5
			4'b0101:segment_0=7'b0000010;//6
			4'b0110:segment_0=7'b1111000;//7
			4'b0111:segment_0=7'b0000000;//8
			4'b1000:segment_0=7'b0010000;//9
			4'b1001:segment_0=7'b1000000;//0
		endcase
		cnt_0=cnt_0+1;
		if ((cnt_0==4'b1001) && (cnt_1==4'b0101))
			begin
			cnt_0=4'b0000;
			cnt_1=4'b0000;
			end
			
		if (cnt_0==4'b1010)
			cnt_1=cnt_1+1;
		if (cnt_0==10)
			cnt_0=0;

		
		case(cnt_1)			 // 6543210
			4'b0000:segment_1=7'b1111111;//None
			4'b0001:segment_1=7'b1111001;//1
			4'b0010:segment_1=7'b0100100;//2
			4'b0011:segment_1=7'b0110000;//3
			4'b0100:segment_1=7'b0011001;//4
			4'b0101:segment_1=7'b0010010;//5
			4'b0110:segment_1=7'b0000010;//6
			4'b0111:segment_1=7'b1111000;//7
			4'b1000:segment_1=7'b0000000;//8
			4'b1001:segment_1=7'b0010000;//9
			4'b1001:segment_1=7'b1000000;//0
		endcase
		
		case(cnt_2)			 // 6543210
			4'b0000:segment_2=7'b1111111;//None
			4'b0001:segment_2=7'b1111001;//1
			4'b0010:segment_2=7'b0100100;//2
			4'b0011:segment_2=7'b0110000;//3
			4'b0100:segment_2=7'b0011001;//4
			4'b0101:segment_2=7'b0010010;//5
			4'b0110:segment_2=7'b0000010;//6
			4'b0111:segment_2=7'b1111000;//7
			4'b1000:segment_2=7'b0000000;//8
			4'b1001:segment_2=7'b0010000;//9
			4'b1001:segment_2=7'b1000000;//0


		endcase
		//cnt_1=cnt_1+1;
		if (cnt_1==10)
			cnt_1=0;
end
		
		



assign numb_0[6:0]=segment_0;//7'b0000000;
assign numb_1[6:0]=segment_1;//
assign numb_2[6:0]=7'b1111111;
assign numb_3[6:0]=7'b1111111;
assign numb_4[6:0]=7'b1111111;
assign numb_5[6:0]=7'b1111111 ;
endmodule
