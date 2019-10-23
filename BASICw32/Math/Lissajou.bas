! ÉäÉTÅ[ÉWÉÖ
LET m=5
LET n=6
SET WINDOW -1.2,1.2,-1.2,1.2
DRAW AXES
FOR t=0 TO 4*PI STEP PI/180
   LET x=SIN(m*t)
   LET y=COS(n*t)
   PLOT LINES: x, y;
NEXT t
END

