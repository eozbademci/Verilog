

module karsilastirma(
    input wire[1:0] Select, wire[3:0] muxin,
    output muxout
    
    );
    assign muxout = (Select == 2'b00) ? muxin[0]:
                    (Select == 2'b01) ? muxin[1]:
                    (Select == 2'b10) ? muxin[2]:
                    (Select == 2'b11) ? muxin[3]:
                    1'bx;
endmodule
