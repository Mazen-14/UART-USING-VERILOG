module uart_rx (input clk,clr, s,output reg [7:0]iout);
reg [7:0]old;
integer i;
always @(posedge clk,negedge clr)
begin
    if(!clr)
    begin
    old<=0;
    i<=0;
    iout<=0;
    end
    else if(i==9)
    begin
        iout<=old;
        i<=0;
    end

    else
    begin
        old<={s,old[7:1]};
        i=i+1;
    end
end
endmodule