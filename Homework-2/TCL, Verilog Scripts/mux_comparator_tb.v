//Testbench for the mux_comparator
`timescale 1ns/1ns
`include "mux_comparator.v"

module mux_comparator_tb;

    // declaring inputs
    reg [2:0] x;
    reg [2:0] y;
    wire [2:0] z;

    // Instantiate the Unit Under Test (UUT)
    mux_comparator uut (.x(x),.y(y),.z(z));

    initial begin
	//for creating vcd waveform file to view in gtkwave
	
	$dumpfile ("mux_comparator.vcd"); 
	$dumpvars(0, mux_comparator_tb);

        // Applying inputs
        x = 0;
        y = 0;

        #20;
        
        //some of the cases to verify the working of the mux_comparator
        x = 3;     y = 0;      #10;    $write(" x value = "); $write(x); $write(" , y value = "); $write(y); $write(" --> z value = "); $display(z);
        x = 4;     y = 1;      #10;    $write(" x value = "); $write(x); $write(" , y value = "); $write(y); $write(" --> z value = "); $display(z);
        x = 1;     y = 2;      #10;    $write(" x value = "); $write(x); $write(" , y value = "); $write(y); $write(" --> z value = "); $display(z);
        x = 4;     y = 4;      #10;    $write(" x value = "); $write(x); $write(" , y value = "); $write(y); $write(" --> z value = "); $display(z);
        x = 1;     y = 0;      #10;    $write(" x value = "); $write(x); $write(" , y value = "); $write(y); $write(" --> z value = "); $display(z);
        x = 6;     y = 5;      #10;    $write(" x value = "); $write(x); $write(" , y value = "); $write(y); $write(" --> z value = "); $display(z);
        x = 4;     y = 6;      #10;    $write(" x value = "); $write(x); $write(" , y value = "); $write(y); $write(" --> z value = "); $display(z);
        x = 6;     y = 3;      #10;    $write(" x value = "); $write(x); $write(" , y value = "); $write(y); $write(" --> z value = "); $display(z);

    end
      
endmodule