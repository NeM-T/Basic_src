!二次スプライン曲線による指定された三点を必ず通る式。
SET bitmap SIZE 600,600
SET WINDOW 0,100,0,100

LET x1=5
LET y1=5
LET x2=50
LET y2=95
LET x3=95
LET y3=5

LET x2=2*x2-x1/2-x3/2
LET y2=2*y2-y1/2-y3/2

FOR t=0 TO 1 step .01
   LET x=(1-t)^2*x1+2*t*(1-t)*x2+t^2*x3
   LET y=(1-t)^2*y1+2*t*(1-t)*y2+t^2*y3
   PLOT LINES:x,y;
NEXT t
END
