OPTION BASE 0
OPTION ANGLE DEGREES
PICTURE ellipse
   LET a=4
   LET b=3
   LET c=SQR(a^2-b^2)
   DIM x(360),y(360)
   FOR i=0 TO 360
      LET x(i)=a*COS(i)
      LET y(i)=b*SIN(i)
   NEXT i
   MAT PLOT LINES:x,y
   SET LINE COLOR 3      ! óŒ
   PLOT LINES: -c,0; c,0 ! è≈ì_ä‘ÇåãÇ‘íºê¸Åií∑é≤Åj
   SET LINE COLOR 4      ! ê‘
   PLOT LINES: 0,-b; 0,b ! íZé≤   
END PICTURE
SET WINDOW -6,6,-6,6
DRAW axes
DRAW ellipse WITH SHEAR(45)
END

