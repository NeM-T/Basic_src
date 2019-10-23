! set point style は，plot points文で描くマークの形状を設定します。
! point styleは， 1・   2＋   3＊  4○   5×  6■　7●
! ただし，point style 6,7 は規格外の独自拡張(使用を推奨しない)
ASK MAX POINT STYLE n
DEF f(x)=x^3-a*x
SET WINDOW -4,4,-8,8
DRAW grid
FOR a=1 TO n
   SET POINT STYLE a
   FOR x=-4 TO 4 STEP 0.05
      PLOT POINTS:x,f(x)
   NEXT x
NEXT a
END





