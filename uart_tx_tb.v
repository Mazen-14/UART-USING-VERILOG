module uart_tx_tb();
reg clk;
reg clr;
wire i;
uart_tx tt(clk,clr,i);
always #20 clk=~clk;
initial
begin
    clr=0;
    clk=0;
    #20
    clr=1;
    #7777;
    $stop;
end
initial 
begin
    $monitor ("out = %b",i);
end
endmodule