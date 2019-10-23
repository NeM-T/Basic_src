10 REM 大学入試センター追試験 数学B 2002年
100 L=19
110 A=7 : B=6 : C=4
120 MI = L
130 AN = INT(L/A)
140 BN = INT(L/B)
150 FOR IA= 0 TO AN
160   FOR IB=0 TO BN
170      US = A * IA + B * IB
180      IF US > L THEN GOTO 240
190      IC = INT((L-US)/C)
200      RE = L - US - C * IC


230      PRINT IA, IB, IC, RE
240   NEXT IB
250 NEXT IA
260 END
        
