10 'センター試験2002年 数学B
20 'ｵﾌﾟｼｮﾝ－文法でMicrosoft BASIC互換を選択してください。
100 INPUT "P=";P
110 FOR A=1 TO P-1
120   B=A
130   FOR I=1 TO P-1
140     IF B=1 THEN PRINT "f(";A;")=";I:GOTO 180
150     B=A*B-P*INT(A*B/P)
160   NEXT I
170   PRINT "f(";A;")= 0"
180 NEXT A
190 END
