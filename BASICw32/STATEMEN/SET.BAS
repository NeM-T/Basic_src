SET WINDOW -4,4,-4,4      ! 左端、右端、下端、上端の座標を-4,4,-4,4とする。
FOR a=1 TO 4
   SET POINT COLOR a      ! マークの色番号をaとする
   SET POINT STYLE a      ! マークの形をa番の形にする
   FOR x=-4 TO 4 STEP 0.1
      PLOT POINTS:x,x^3-a*x
   NEXT x
NEXT a
END


