REM 対数方眼紙を印刷する
REM 用紙は縦
REM ファイルメニューの印刷でプリンタを設定した後，実行してください。
GRAPHICS DEVICE PRINTER
ASK DEVICE VIEWPORT dvleft,      dvright,      dvbottom,      dvtop
SET DEVICE VIEWPORT dvleft+0.015, dvright-0.015, dvbottom+0.01, dvtop-0.015
SET DEVICE WINDOW 0, 2.1/3.05, 0, 1
SET VIEWPORT      0, 2.1/3.05, 0, 1
SET WINDOW -.1, 2, -.05, 3
SET LINE COLOR 1
SET TEXT COLOR 1
SET TEXT JUSTIFY "CENTER","TOP"
FOR n=0 TO 1
   FOR a=1 TO 10 STEP 0.1
      LET x=a*10^n
      IF INT(a)=a THEN SET LINE width 4 ELSE SET LINE width 1
      PLOT LINES : LOG10(x),0; LOG10(x),3
      IF INT(a)=a AND x<100 THEN PLOT TEXT , AT LOG10(x),0: STR$(x)
   NEXT a
NEXT n
SET TEXT JUSTIFY "RIGHT","HALF"
FOR m=0 TO 2
   FOR b=1 TO 10 STEP 0.1
      LET y=b*10^m
      IF INT(b)=b THEN SET LINE width 4 ELSE SET LINE width 1
      PLOT LINES : 0,LOG10(y);2,LOG10(y)
      IF INT(b)=b AND y<1000 THEN PLOT TEXT , AT 0, LOG10(y):STR$(y)
   NEXT b
NEXT m

END

