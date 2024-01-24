module halfadder(input a, input b, output sumnum, output carryout);

wire w1, w2, w3, w4, w5;
nand notab(w3, a, b);
nand asep(w4, w3, a);
nand bsep(w5, w3, b);
nand sumout(sumnum, w5, w4);
nand carout(carryout, w3);

endmodule


module fulladderr(input a, input b, input c, output summ, output cout);

halfadder ha1(a, b, w2, w1);
halfadder ha2(c, w2, summ, w3);
or or1(cout, w1, w3);

endmodule 
