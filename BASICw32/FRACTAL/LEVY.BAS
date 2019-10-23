PICTURE K(n)
   IF n=depth THEN 
      PLOT POINTS: 0,0
   ELSE 
      DRAW K(n+1) WITH ROTATE(alfa)*SCALE(r)
      DRAW K(n+1) WITH SHIFT(-1,0)*ROTATE(-alfa)*SCALE(r)*SHIFT(1,0)
   END IF
END PICTURE
LET alfa=PI/4
LET r=1/sqr(2)
LET left=-1/2
LET right=3/2
LET h=1
SET WINDOW left,right,-h,h
ASK PIXEL SIZE(left,-h;right,h) px,py
LET depth=INT(-LOG(px-1)/LOG(r))
SET POINT STYLE 1
DRAW K(1)
END

