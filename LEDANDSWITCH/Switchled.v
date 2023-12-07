// Module that connects ten switches and lights
module Switchled (SW, LEDR);
input [9:0] SW; // slide switches
output [9:0] LEDR; // red LEDs
reg [5:0]a =1;

SW = a;
a= LEDR;
endmodule