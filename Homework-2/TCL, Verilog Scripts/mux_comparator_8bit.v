module comparator (
    input reg [7:0] x,
    input reg [7:0] y,
    output reg [7:0] z
    );

    always @* begin

      if (x < y) 
        z = x; 

      else 
        z = y;
      
    end
    
endmodule
