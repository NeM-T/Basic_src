! TIME は、その日の午前0時からの経過秒数
! TIME$ は，hh:mm:ss の形の文字列
PRINT TIME$
LET t0=TIME
DIM s(2 TO 1000)
LET n=1000
MAT s=ZER(2 TO n)
FOR i=2 TO n
   IF s(i)=0 THEN
      PRINT i;
      LET j=2*i
      DO WHILE j<=n
         LET s(j)=1
         LET j=j+i
      LOOP
   END IF
NEXT i
PRINT
PRINT TIME$
PRINT TIME-t0;"秒経過した"
END




