REM 1`n‚Ì‡—ñ‚ðŽ«‘Ž®‡˜‚Å¶¬‚·‚éB
DECLARE EXTERNAL SUB perm
DIM a(100)
INPUT n
MAT a=ZER(n)
FOR i=1 TO n
   LET a(i)=i
NEXT i
CALL perm(a,1)
END
EXTERNAL SUB perm(a(),n)
LET m=UBOUND(a)
IF n=m THEN
   MAT PRINT a;
ELSE
   FOR i=n TO m
      LET t=a(i)
      FOR j=i-1 TO n STEP -1 
         LET a(j+1)=a(j)
      NEXT j
      LET a(n)=t
      CALL perm(a,n+1)
      LET t=a(n)
      FOR j=n TO i-1
         LET a(j)=a(j+1)
      NEXT j
      LET a(i)=t
   NEXT i
END IF
END SUB
