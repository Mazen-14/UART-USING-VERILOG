module register (input clk,clr,output reg [7:0]iout);
always@(posedge clk,negedge clr)
begin
    if(!clr)
    iout<=0;
    else
    iout<=iout+1;
end
endmodule