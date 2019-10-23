REM コラッツ予想
REM 任意の自然数に対し，
REM 偶数のとき，2で割り， 
REM 奇数のとき，3倍して1を加える 
REM という操作を繰り返すと，
REM 有限回で1に到達すると予想されている。
REM 証明はまだない。
OPTION ARITHMETIC RATIONAL
INPUT n
DO 
   IF MOD(n,2)=0 THEN 
      LET n=n/2 
   ELSE
      LET n=3*n+1
      PRINT n
   END IF
LOOP UNTIL n=1
END
