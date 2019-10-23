100 REM  Fibonacci sequence
110 LET a=0
120 LET b=1
130 INPUT n
140 FOR k=0 TO n
150    PRINT k,a
160    LET c=a+b
170    LET a=b
180    LET b=c
190 NEXT k
200 END
