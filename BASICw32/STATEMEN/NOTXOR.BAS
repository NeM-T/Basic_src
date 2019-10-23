REM NOTXOR描画を利用した高速アニメーション技法
REM NOTXOR描画モードはJIS規格外の独自拡張なので取り扱いに注意。

DECLARE EXTERNAL PICTURE circle0
LET a=4      
SET WINDOW -1.2,1.2,-1.2,1.2
DRAW axes
DRAW circle
SET DRAW MODE NOTXOR
SET DRAW MODE HIDDEN 
FOR t=0 TO 2*PI STEP PI/720
   DRAW circle0 WITH ROTATE(-(a-1)*t)*SCALE(1/a)*SHIFT((1-1/a)*COS(t),(1-1/a)*SIN(t))
   SET LINE COLOR 7
   LET x=(1-1/a)*COS(t)+(1/a)*COS((a-1)*t)
   LET y=(1-1/a)*SIN(t)-(1/a)*SIN((a-1)*t)
   PLOT LINES:x,y;
   SET DRAW MODE EXPLICIT
   SET DRAW MODE HIDDEN
   !　2度書きすると消えるが，消えるところは見せない
   DRAW circle0 WITH ROTATE(-(a-1)*t)*SCALE(1/a)*SHIFT((1-1/a)*COS(t),(1-1/a)*SIN(t))
NEXT t
SET DRAW MODE EXPLICIT
END

EXTERNAL PICTURE circle0
SET AREA COLOR 3
DRAW disk
SET AREA COLOR 7
DRAW disk WITH SCALE(0.05)*SHIFT(1,0)     ! ちょっと大き目の点をかく
END PICTURE
