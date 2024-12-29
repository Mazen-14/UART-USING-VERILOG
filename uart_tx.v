module uart_tx(input clk,clr,output i);
wire [3:0]q;
wire en;
wire [7:0]iout;
counter x(clk,clr,q,en);
register m(en,clr,iout);
mux n(q,iout,i);
endmodule