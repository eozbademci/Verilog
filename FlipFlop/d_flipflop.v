module d_flipflop(
    input wire d,    
    input clk,
    output reg Q 
    );
    
    
always @(posedge clk)

begin
case(d)

1'b0: Q <= 0;
1'b1: Q <= 1;


endcase
end
endmodule
