module uart (input clk,clr,output [7:0]iout);
wire i;
uart_tx m (clk,clr,i);
uart_rx n (clk,clr,i,iout);
endmodule 