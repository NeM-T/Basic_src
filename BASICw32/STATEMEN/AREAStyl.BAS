! SET AREA STYLEで，PLOT AREA文の塗りつぶし方を指定する。
! SET AREA STYLE INDEXは，指定されたarea styleが"HATCH"のときの
! ハッチパターンを1から6までの数値で指定する。
PICTURE arrow
   PLOT AREA: 0,0 ; 3,0 ; 2,1 ; 2,0.5 ; 0,0.5
END PICTURE
SET WINDOW 0,8,0,8
FOR i=1 TO 6
   SET AREA COLOR 1
   SET AREA STYLE "HATCH"
   SET AREA STYLE INDEX i
   DRAW arrow WITH SHIFT(0,i)
   PLOT TEXT, AT 3,i : "AREA STYLE INDEX " & STR$(i) 
   SET AREA COLOR i+1
   DRAW arrow WITH SHIFT(5,i)
NEXT i   
END



