module Cycle(
    input clk,rst,
    output o
    
    );
    
    reg ox;
    reg[1:0] state = 2'b00;
    reg[4:0] count = 4'b00000;
    
    assign o=ox;
    
    always @(posedge clk)
    begin
        if (rst == 1'b1) begin
            ox=1'b0;
            state=2'b00;
            count=4'b00000;
        end
        else begin
            case(state)
            0:begin
                count=count+1;
                if (count > 4'h9) begin
                state=2'b01;
                count=4'b00000;
                end
            end
            
            1:begin
            count=count+1;
            if (count > 4'h9) begin
                state=2'b10;
                count=4'h00;
            end
            end
            
            2:begin
            count=count+1;
                if(count > 5'hf) begin
                state = 2'b11;
                count= 4'h00;
                
                end
            end
            
            3:begin
                ox=1'b1;
             end
            endcase
        end
    end
endmodule
