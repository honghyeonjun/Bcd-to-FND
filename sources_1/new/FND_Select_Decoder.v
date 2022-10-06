`timescale 1ns / 1ps

module FND_Select_Decoder(i_digitSelect,i_en,o_digit);
input [1:0] i_digitSelect;
input i_en;
output [3:0]o_digit;
//input output���� �⺻�� wire type (���� �Ұ�)

reg[3:0] r_digit; // �޸� ���

assign o_digit = r_digit; // rdigit�� odigit �� �����ϰڴ�

always @(i_digitSelect, i_en) begin//�׻� �Ұ�ȣ ���� (�Է�)�� �ٶ󺸰� �ִ�.
    
    if(i_en) begin
        r_digit = 4'b1111;
    end
    
    else begin
        
        case (i_digitSelect)
            2'h0 :r_digit = 4'b1110;
            2'h1 :r_digit = 4'b1101;
            2'h2 :r_digit = 4'b1011;
            2'h3 :r_digit = 4'b0100;
        endcase         
    
    end

end
endmodule
