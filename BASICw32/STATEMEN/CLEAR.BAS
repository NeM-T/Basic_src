! CLEAR文は、グラフィックス画面を消去する。
DEF f(x)=x^2-a*x+a
SET WINDOW -4,4,-4,4
FOR a=-4 TO 4 STEP 0.1
   CLEAR
   FOR x=-4 TO 4 STEP 0.1
      PLOT LINES:x,f(x);
   NEXT x
   PLOT LINES
   WAIT DELAY 0.025  ! 0.025秒待機する。
NEXT a  
END


