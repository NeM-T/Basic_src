PICTURE tragon(n,red,green,blue)
!  print n,red,green,blue 
   IF n=12 THEN
      SET COLOR MIX (1) red,green,blue
      PLOT POINTS: 0,0
   ELSE
      DRAW tragon(n+1,red+2^(-n),green,blue) WITH SCALE(1/SQR(3))*ROTATE(alpha) 
      DRAW tragon(n+1,red,green+2^(-n),blue) WITH SHIFT(-2,0)*SCALE(1/SQR(3))*ROTATE(alpha)*SHIFT(2,0)
      DRAW tragon(n+1,red,green,blue+2^(-n)) WITH SHIFT(-1,-SQR(3))*SCALE(1/SQR(3))*ROTATE(alpha)*SHIFT(1,SQR(3))
   END IF
END PICTURE
LET alpha=PI/6
SET WINDOW -2,3,-2,3
SET POINT STYLE 1
set point color 1
DRAW tragon(1,0,0,0)
END