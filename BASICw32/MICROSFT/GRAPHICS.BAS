1 '  Microsoft BASICの描画命令
2 '  オプションメニューから  文法 
3 '  Microsoft BASIC互換 を選択してください
10 SCREEN 12 : CLS 1
20 WINDOW(-1,1)-(1,-1/2)
30 LINE (-1,0)-(1,0) : LINE (0,1)-(0,-1/2)
40 COLOR 2
50 PSET (-1,1)
60 FOR X=-1 TO 1 STEP 0.01
70  LINE -(X,X^2)
80 NEXT X
90 END
