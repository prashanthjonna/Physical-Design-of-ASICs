module sel_sense (A, S, B);
     input A, S;
     output B;

     assign B = S?~A:A;

endmodule
