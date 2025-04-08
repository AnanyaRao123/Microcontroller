	AREA PRGM4, CODE, READONLY
START
	LDR RO, MEMORY; Load address of number
	LDR R1, [R0]; Load RO to R1
	MOV R2, #2; Move 2 to R2, Ued as divisor
	MOV R3, #1; Move 1 to R3
LOOP CMP R2,Rl; If R2 >= Rl then stop
	BGE CHECK; Branch if Greater than or Equal to instruction
	MOV R4, Rl; Copy Rl into R4
MODULUS CMP R4, R2;
	BLT DIVISOR; Branch if Less Than Instruction
	SUB R4,R4,R2; R4=R4-R2
	B MODULUS
DIVISOR CMP R4, #0; If remainder is 0 then not prime
	BEQ NOT PRIME; Branch if Equal
	ADD R2, R2, #1; Move to next divisor
	B LOOP
NOT PRIME MOV R3, #0; Set R3=0
CHECK B CHECK; R3=1 if prime else 0
MEMORY DCD 0x40000000;
	END