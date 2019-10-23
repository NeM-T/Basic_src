PICTURE D(n)
   IF n=depth THEN 
      PLOT POINTS: 0,0
   ELSE 
      IF n=9 THEN SET COLOR MIX (1) RND,RND,RND          ! 乱数で色を変える
      DRAW D(n+1) WITH ROTATE(alfa)*SCALE(r)
      DRAW D(n+1) WITH SHIFT(-1,0)*ROTATE(alfa)*SCALE(r)*SHIFT(1,0)
   END IF
END PICTURE
RANDOMIZE
SET WINDOW -1/2,3/2,-1,1
SET POINT STYLE 1
LET alfa=PI/4
LET r=1/SQR(2)
ASK PIXEL SIZE(-1/2,-1;3/2,1) px,py
LET depth=CEIL(-LOG(px)/LOG(r))
DRAW D(1)
END

