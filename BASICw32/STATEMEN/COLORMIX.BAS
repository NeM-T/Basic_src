! SET COLOR MIX(色指標) red,green,blue
! 色指標（色番号）に対応する色をred,green,blueの値で設定します。
! red,green,blueは0以上1以下の数値を指定します。
! この文を実行しても，それ以前に描いた図形の色は変化しません。

SET COLOR MIX(0) 0,0,0
SET COLOR MIX(1) 0,0,1
SET COLOR MIX(2) 0,1,0
SET COLOR MIX(3) 0,1,1
SET COLOR MIX(4) 1,0,0
SET COLOR MIX(5) 1,0,1
SET COLOR MIX(6) 1,1,0
SET COLOR MIX(7) 1,1,1
CLEAR                     ! 背景色（0番の色）で全体を塗りつぶす
SET WINDOW 0,8,0,4
FOR x=0 TO 7
   SET AREA COLOR x
   PLOT AREA: x,0; x+1,0; x+1,1; x,1
   SET TEXT COLOR x
   PLOT TEXT ,AT x,1 :str$(x)
NEXT x

! 本BASICでは，SET COLOR MIXを実行してもすでに描かれた部分の色は変化しないので，グラデーションが可能。
SET AREA COLOR 1
FOR x=0 TO 8 STEP 0.1
   SELECT CASE x
   CASE 0 TO 2
      LET red=1
      LET green=x/2
      LET blue=0
   CASE 2 TO 4
      LET red=2-x/2
      LET green=1
      LET blue=0
   CASE 4 TO 6
      LET red=0
      LET green=1
      LET blue=x/2-2
   CASE 6 TO 8
      LET red=0
      LET green=4-x/2
      LET blue=1
   END SELECT
   SET COLOR MIX(1) red,green,blue
   PLOT AREA : x,2; x+0.1,2; x+0.1,3; x,3
NEXT x
! 備考 256色ビデオカードを使用する機種では，Windowsが用意したパレットの中で近い色になります。
END
 


