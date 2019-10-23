! 定義域が必ずしも実数全体とは限らない関数のグラフを描くプログラムです。
! 例外処理(when構文)の使い方に注目してください。
DEF f(x)=(1+1/x)^x
SET WINDOW -4,4,-1,7
DRAW AXES
FOR x=-4 TO 4 STEP 0.01
   WHEN EXCEPTION IN
      PLOT LINES:x,f(x);
   USE
      PLOT LINES
   END WHEN
NEXT x
END
