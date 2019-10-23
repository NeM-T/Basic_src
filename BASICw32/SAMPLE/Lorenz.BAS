REM ローレンツ・アトラクタ
REM 左赤，右シアンのフィルターを通して立体視する。
SET WINDOW -60,60,-60,60
SET DRAW MODE MASK

SET POINT STYLE 1
LET s=11
LET b=8/4
LET r=88

LET x=-10
LET y=-10
LET z=-30

LET dt=0.00001
FOR t=0 TO 50 STEP dt
   LET xx=x+(-s*x+s*y)*dt
   LET yy=y+(r*x-y-x*z)*dt
   LET zz=z+(-b*z+x*y)*dt
   LET x=xx
   LET y=yy
   LET z=zz
   SET POINT COLOR "cyan"  ! 左目
   PLOT POINTS:x+0.02*z ,y
   SET POINT COLOR "red"   ! 右目
   PLOT POINTS:x-0.02*z ,y
    
NEXT t
END

