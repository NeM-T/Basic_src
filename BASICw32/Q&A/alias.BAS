REM Alias(変数の別名)
REM このプログラムで，a,b,cは同じ変数を指す。
DECLARE SUB s
LET a=0
CALL s(a,a)
SUB s(b,c)
   LET  a=1
   LET  b=2
   LET  c=3
   PRINT a;b;c
END SUB
END
 
