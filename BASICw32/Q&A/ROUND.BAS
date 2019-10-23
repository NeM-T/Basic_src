REM このプログラムの実行結果は，十進モードと2進モードとで異なります。
REM 十進モードではJIS Full BASICの丸めを行うのに対し，
REM 2進モードでは，JIS Z8401（数値の丸め方）に従うからです。
FOR x=-10.5 TO 10.5
   PRINT ROUND(x)
NEXT x
END

