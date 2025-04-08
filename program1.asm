	AREA PRGM1,CODE,READONLY
START
	MOV r1,#0; load r1 with value 0
	MOV r2,#15; load r2 with value 15
	MOV r3,#12; load r3 with value 12
	MVN r0, r1; move negative of r1 to r0
	AND r4, r0,r2; r4=r0&r2
	EOR r4, r4, r3; r4=r4^r2
HERE B HERE
	END
