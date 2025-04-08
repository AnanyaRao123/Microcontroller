	AREA PRGM3, CODE, READONLY
START
	LDR RO, MEMORY; Number is loaded to RO
	MOV R1, #0; Rl will hold the sum of squares
	MOV R2, #5; Counter for 5 numbers
LOOP LDR R3, [R0], #4; Load RO from memory and post-increment pointer
	MUL R4,R3,R3; R4=R3*R3
	ADD R1, R1, R4; R1=R1+R4
	SUBS R2, R2, #1; R2=R2-1
	BNE LOOP; If not zero, repeat the loop
STOP B STOP;
MEMORY DCD 0x40000000;
HERE B HERE
	END