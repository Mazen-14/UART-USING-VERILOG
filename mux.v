module mux(input[3:0]sel,input[7:0]in,output reg q);
always @(*)
begin
    case(sel)
        4'b0000: q <= 0;
        4'b0001: q <= in[0];
        4'b0010: q <= in[1];
        4'b0011: q <= in[2];
        4'b0100: q <= in[3];
        4'b0101: q <= in[4];
        4'b0110: q <= in[5];
        4'b0111: q <= in[6];
        4'b1000: q <= in[7];
        4'b1001: q <= 0;
   
        default : 
        q<=0;
    endcase

end
endmodule