10 'センター試験 2002年 数学A
20 'ｵﾌﾟｼｮﾝ－文法でMicrosoft BASIC互換を選択してください。
100 INPUT "a=";A
110 INPUT "b=";B
120 INPUT "c=";C
130 U=C
140 V=C
150 FOR X=0 TO 9
160     Y=A*X*X+B*X+C
170     IF Y>=U THEN GOTO 190
180     U=Y
190     IF Y<=V THEN GOTO 210
200     V=Y
210 NEXT X
220 PRINT "最小値=";U
230 PRINT "最大値=";V
240 END

