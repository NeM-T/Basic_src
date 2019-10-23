! zが点-0.75を中心とする半径1の円の周上を動くとき，
! zの平方根の軌跡を描く。
OPTION ARITHMETIC COMPLEX
OPTION ANGLE DEGREES
SET WINDOW -2,2,-2,2
DRAW AXES
SET POINT STYLE 1
FOR t=0 TO 360
   LET z=-0.75+COMPLEX(COS(T),SIN(T))
   SET POINT COLOR 3  !green
   PLOT POINTS:RE(z),IM(z)
   LET w=SQR(z)
   SET POINT COLOR 2  !blue
   PLOT POINTS:RE(w),IM(w)
   LET w=-SQR(z)
   SET POINT COLOR 2  !blue
   PLOT POINTS:RE(w),IM(w)
NEXT t
END

