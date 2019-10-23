! マウスで指定された３点を通る円を描く
! ２つの垂直２等分線の交点が中心であることを利用
OPTION ANGLE DEGREES
SET WINDOW 0,1,0,1
GET POINT: x1,y1
PLOT x1,y1
GET POINT: x2,y2
PLOT x2,y2
GET POINT: x3,y3
PLOT x3,y3
LET a1=2*(x2-x1)
LET b1=2*(y2-y1)
LET c1=x2^2-x1^2+y2^2-y1^2
LET a2=2*(x3-x2)
LET b2=2*(y3-y2)
LET c2=x3^2-x2^2+y3^2-y2^2
LET d=a1*b2-a2*b1
LET d1=c1*b2-c2*b1
LET d2=a1*c2-a2*c1
IF d<>0 then
   LET x=d1/d
   LET y=d2/d
   LET r=sqr((x-x1)^2+(y1-y)^2)
   FOR t=0 TO 360
      PLOT LINES: x+r*cos(t),y+r*sin(t);
   NEXT t
   PLOT
END IF
END
