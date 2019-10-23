! set text justify文は、plot text文で描かれる文字列の基準点を設定する。
! 第１パラメータは、"left","center","right" のいずれか。
! 第２パラメータは、"top","cap","half","base","bottom" のいずれか。
! 指定するための文字列は大文字でもよく、また、文字列変数で与えてもよい。
SET WINDOW -4,4,-4,4
DRAW axes0
SET TEXT JUSTIFY "right","top"
FOR x=-4 TO 4
   PLOT TEXT ,AT x,0 :str$(x)
NEXT x
FOR y=-4 TO 4 
   PLOT TEXT,AT 0,y:str$(y)
NEXT y
END





