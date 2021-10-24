module mux_comparator (
    input [2:0] x,
    input [2:0] y,
    output reg [2:0] z
    );

    always @(x or y) 
    begin

      if (x < y) 
        z = x; 

      else 
        z = y;
      
    end
    
endmodule
