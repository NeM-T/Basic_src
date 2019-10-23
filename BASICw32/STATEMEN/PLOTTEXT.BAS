! PLOT TEXT,AT x,y 文字列式
! 点(x,y)に指定された文字列を描く
SET WINDOW -4,4,-4,4
DRAW axes0
FOR x=-4 TO 4
   SET TEXT COLOR x+5
   PLOT TEXT ,AT x,0 :STR$(x)
NEXT x
FOR y=-4 TO 4 
   SET TEXT COLOR y+11
   PLOT TEXT,AT 0,y:STR$(y)
NEXT y
END
! 基準点を変えるにはset text justify 文を用いる。（ textjust.bas参照）



