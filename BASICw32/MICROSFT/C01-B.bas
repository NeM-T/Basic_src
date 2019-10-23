10  REM センター試験 2001年 数学B
20  REM オプションメニューから文法
30  REM Microsoft BASIC互換を選択してください 
100 INPUT "a1,a2,c=";A,B,C
110 INPUT "n=";N
120 S = A
130 FOR J=3 TO N
140   A = B+INT(S/C)
150   PRINT "a(";J;")=";A
160   B = A
170   S = S+A
180 NEXT J
190 END
