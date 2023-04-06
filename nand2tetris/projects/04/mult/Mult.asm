// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
    
    @2
    M = 0    //initially RAM[2]=0
    @3
    M = 0 ;  //RAM[3]=0

(LOOP)
    @3
    D = M ;  //Get the value of RAM[3], D = RAM[3]
    @1
    D = D - M;  // RAM[3] - M 
    @END
    D; JGE

    @3
    M = M + 1
    @0
    D = M
    @2
    D = D + M 
    M = D

    @LOOP
    0;JMP

(END)
    @END
    0;JMP    // set the end opcode