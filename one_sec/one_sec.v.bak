module LED_Blink

(

     input clk, rst,

     output out

);

 

reg [31:0] counter;

reg LED;

 

initial

begin

     LED = 1'b0;

     counter = 32'b0;

end

 

always @ (posedge(clk))

begin

     if(rst==1)                //hold the current state of LED

     begin

          if(counter<2500000)

               counter <= counter + 1'b1;

          else

          begin

               LED <= !LED;

               counter <= 32'b0;

          end

     end

     else

          counter <= 32'b0;

end

 

assign out = LED;

 

endmodule