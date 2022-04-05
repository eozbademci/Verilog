module Counter(
    input clk,rst,
    output wire[4:0] Q
    );
    
    reg[4:0] outreg=5'b00000;
    
    parameter MAX_VALUE = 5'b11001;
    
    assign Q = outreg;
    
    always @(posedge clk)
    begin
    if(rst) begin
    outreg = 0;
    end
    else begin
    if(outreg >= MAX_VALUE) begin
    outreg = 0;       
    end
    else begin
    outreg = outreg + 1;
    end
    end
    end
    
endmodule
