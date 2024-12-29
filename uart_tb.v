module uart_tb();
reg clk,clr;
wire [7:0]iout;
always #20 clk=~clk;
uart y(clk,clr,iout);
initial
begin
    clr<=0;
    clk<=0;
    #20
    clr<=1;
    #60000;
    $stop;
end
endmodule
