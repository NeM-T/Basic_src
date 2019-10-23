10 REM センター試験2003年 数学Ⅱ・Ｂ第6問
20 REM オプションメニューから，文法－Microsoft BASIC互換を選択してください。
100 INPUT "x,y=";X,Y
110 INPUT "a=";A
120 P=(X-2)*(X-2)+Y*Y
130 Q=(X-9)*(X-9)+(Y-7)*(Y-7)
140 R=(X-8)*(X-8)+(Y-A)*(Y-A)
150 D=P
160 E=Q
170 F=R
180 IF D<E THEN G=D:D=E:E=G
190 IF E<F THEN G=E:E=F:F=G
200 PRINT "距離の2乗は";F
210 PRINT "その点は"
220 IF F=P THEN PRINT "点P"
230 IF F=Q THEN PRINT "点Q"
240 IF F=R THEN PRINT "点R"
250 END