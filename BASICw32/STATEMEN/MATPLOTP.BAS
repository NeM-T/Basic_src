REM mat-plot文にlimit句を書くと，実際に描画に使用する点の個数を指定できる。
DIM x(100),y(100)
SET WINDOW -4,4,-4,4
LET i=0
FOR xx=-4 TO 4 STEP 0.1
   LET i=i+1
   LET x(i)=xx
   LET y(i)=sin(xx)
NEXT xx
MAT PLOT POINTS,LIMIT i :x,y 
END


