OPTION BASE 0
LET p=0.1
PICTURE parabola
   DIM x(1000),y(1000)
   FOR i=0 TO 1000
      LET y(i)=0.01*i-5
      LET x(i)=y(i)^2/(4*p)
   NEXT i
   MAT PLOT LINES:x,y
   SET LINE COLOR 3      ! óŒ
   PLOT LINES :0,0; 10,0 ! ï˙ï®ê¸ÇÃé≤
END PICTURE
SET WINDOW -2,8,-5,5
DRAW axes
DRAW parabola WITH SHEAR(PI/4)
END

