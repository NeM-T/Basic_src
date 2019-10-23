! 剰余系における累乗
INPUT n
FOR a=1 TO n-1
   LET x=a
   FOR k=1 TO n-1
      PRINT USING "###": x ;
      LET x=MOD(x*a,n)
   NEXT k
   PRINT
NEXT a
END
! 入力した数が素数であると出力結果の右端がすべて1となることに注目。
