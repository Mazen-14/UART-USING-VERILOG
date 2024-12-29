module counter (input clk,clr,output reg [3:0]q,output reg en);
always @(posedge clk,negedge clr)
begin
    if(!clr)
    q<=0;
    else if(q==9)
    begin
      q<=0;
     en<=1;
    end
    else
    begin
      q<=q+1;
      en<=0;
    end
end         

endmodule