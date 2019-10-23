PICTURE Levy(n)
   IF n=0 THEN 
      PLOT AREA : 0,0; 1,0; 1/2,1/2; 0,0
   ELSE 
      DRAW Levy(n-1) WITH ROTATE(alfa)*SCALE(r)
      DRAW Levy(n-1) WITH SHIFT(-1,0)*ROTATE(-alfa)*SCALE(r)*SHIFT(1,0)
   END IF
END PICTURE
LET alfa=PI/4
LET r=1/sqr(2)
SET WINDOW -1/2,3/2,-1,1
FOR n=0 TO 17
   CLEAR
   DRAW Levy(n)
   WAIT DELAY 1
NEXT n
END

