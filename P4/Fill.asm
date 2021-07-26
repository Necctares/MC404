// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

@telaBrancaBool
M=0

(TelaBranca)
@telaBrancaBool
D=M
@LOOP
D-1;JEQ
@telaBrancaBool
M=1
@i
M=0
(LOOPBRANCO)
@8192
D=A
@i
D=M-D
@LOOP
D;JEQ
@SCREEN
D=A
@i
A=D+M
M=0
@i
M=M+1
@LOOPBRANCO
0;JMP

(LOOP)
@KBD
D=M
@TelaBranca
D;JEQ

@telaBrancaBool
D=M
@LOOP
D;JEQ
@telaBrancaBool
M=0
@i
M=0
(LOOPPRETO)
@8192
D=A
@i
D=M-D
@LOOP
D;JEQ
@SCREEN
D=A
@i
A=D+M
M=-1
@i
M=M+1
@LOOPPRETO
0;JMP