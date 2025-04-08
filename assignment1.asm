	AREA PRGM2,CODE,READONLY
START
	MOV R0,#0; Loading first fibonacci nummber R0=0
	MOV R1,#1; Loading second fibonacci nummber R1=1
	MOV R2,#10; Loading R2=10 to the loop 10 times
LOOP ADD R3,R0,R1; Adding R1 and R2 value, LOOP is a label
				 ; Jump back to addition till value not equal to zero
				 ; if zero stop looping
	MOV R0,R1; Move R1 to R0
	MOV R1,R3; Move new number R3 to R1
	SUBS R2,R2,#1; R2=R2-1
	BNE LOOP; Repeat if R2 is not zero
HERE B HERE
	END