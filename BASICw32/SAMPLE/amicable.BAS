! 2数m,nについて，mの自分自身を除く約数の和がnで，nの自分自身を除く約数の和がnとなるとき，m,nは友数であるという。
! このプログラムは，10000 までの範囲で友数を探す。
DECLARE EXTERNAL FUNCTION f
FOR n=1 TO 10000
   LET  m=f(n)
   if n<m AND n=f(m) THEN PRINT n,m
NEXT n 
END
EXTERNAL FUNCTION f(n)
! nの自分自身を除くすべての約数の和
LET s=1
FOR i=2 TO SQR(n ) 
   IF MOD(n,i)=0 THEN
      IF i=n/i THEN LET s=s+i ELSE LET s=s+i+(n/i)
   END IF
NEXT i
LET f=s
END FUNCTION



