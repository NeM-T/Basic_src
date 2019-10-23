PICTURE D(n,c)
   IF n=depth THEN 
      PLOT POINTS: 0,0
   ELSE 
      IF n=6 THEN SET POINT COLOR MOD(c,13)+2
      DRAW D(n+1,2*c) WITH ROTATE(alfa)*SCALE(r)
      DRAW D(n+1,2*c+1) WITH SHIFT(-1,0)*ROTATE(alfa)*SCALE(r)*SHIFT(1,0)
   END IF
END PICTURE
LET left=-1/2
LET right=3/2
LET h=1
SET WINDOW left,right,-h,h
SET POINT STYLE 1
LET alfa=PI/4
LET r=1/SQR(2)
ASK PIXEL SIZE(left,-h;right,h) px,py
LET depth=CEIL(-LOG(px)/LOG(r))
DRAW D(1,0)
END

