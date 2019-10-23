DECLARE EXTERNAL SUB sort
DIM A(4)
INPUT PROMPT "4Œ…‚Ì” ":n
PRINT n;
DO
   LET prev=n
   FOR i=1 TO 4 
      LET A(i)=MOD(n,10)
      LET n=INT(n/10)
   NEXT i
   CALL sort(A) 
   LET MAX=1000*A(4)+100*A(3)+10*A(2)+A(1)
   LET MIN=1000*A(1)+100*A(2)+10*A(3)+A(4)
   LET n=MAX-MIN
   IF n=prev THEN EXIT DO 
   PRINT n;
LOOP
END
!
EXTERNAL SUB sort(A())
FOR n=UBOUND(A) TO 2 STEP -1
   LET b=A(1)
   LET k=1
   FOR i=2 TO n
      IF A(i)>b THEN
         LET b=A(i)
         LET k=i
      END IF
   NEXT i
   LET A(k)=A(n)
   LET A(n)=b
NEXT n
END SUB





