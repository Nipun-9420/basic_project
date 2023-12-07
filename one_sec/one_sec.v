module one_sec
(
     input clk, rst,
     output out
);
reg [31:0] counter;
reg [3:0] clk_o;
reg LED;
initial begin
     LED = 1'b0;
     counter = 32'b0;
	  clk_o=0;
end
always @ (posedge(clk))
begin
     if(rst==1)                //hold the current state of LED
     begin
          if(counter<25000000)
               counter <= counter + 1'b1;
          else
          begin
               counter <= 32'b0;
					clk_o=~clk_o;
          end
     end
     else
          counter <= 32'b0;

end
always @ (posedge(clk_o))
begin
 LED <= !LED;
end
assign out = LED;
endmodule
