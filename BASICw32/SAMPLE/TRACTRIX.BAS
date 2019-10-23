! í«ê’ê¸(tractrix)ÇÃãﬂéó
DECLARE PICTURE axes
SET WINDOW 0,1,0,1
DRAW axes
SET POINT STYLE 1
LET x1=0
LET y1=1
LET x2=0
LET y2=0
LET dt=0.001
LET t=0
DO WHILE x1<=1
  LET dx=x2-x1
  LET dy=y2-y1
  LET r=SQR(dx^2+dy^2)
  LET x1=x1+dx/r*dt
  LET y1=y1+dy/r*dt
  LET x2=x2+dt
  PLOT POINTS: x1,y1
LOOP
END




