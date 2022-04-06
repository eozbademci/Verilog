module CycleProject(
    input clk,rst,
    output o
    );
    
    reg ox;
    reg[1:0] durum = 2'b00;
    reg[4:0] say = 4'b00000;
    
    assign o=ox;
    
    always @(posedge clk)
    begin
        if (rst == 1'b1) begin
            ox=1'b0;
            durum=2'b00;
            say=4'b00000;
        end
        else begin
            case(durum)
            0:begin
                say=say+1;
                if (say > 4'h9) begin
                durum=2'b01;
                say=4'b00000;
                end
            end
            
            1:begin
            say=say+1;
            if (say > 4'h9) begin
                durum=2'b10;
                say=4'h00;
            end
            end
            
            2:begin
            say=say+1;
                if(say > 5'hf) begin
                durum = 2'b11;
                say= 4'h00;
                
                end
            end
            
            3:begin
                ox=1'b1;
             end
            endcase
        end
    end
endmodule
