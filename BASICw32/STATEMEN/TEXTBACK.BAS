! set text background文は、JIS規格外の独自拡張。
! plot text文で描かれる文字列の背景の描き方を設定する。
! パラメータは、"TRANSPARENT","OPAQUE" のいずれかに限る。
! "OPAQUE"を指定すると，文字の背景を背景色に塗る。
! この文を実行する前の状態は"TRANSPARENT"
SET WINDOW -4,4,-4,4
DRAW axes0
SET TEXT JUSTIFY "CENTER","HALF"
SET TEXT background "OPAQUE"
FOR x=-4 TO 4
   PLOT TEXT ,AT x,0 :str$(x)
NEXT x
SET TEXT background "TRANSPARENT"
FOR y=-4 TO 4 
   PLOT TEXT,AT 0,y:str$(y)
NEXT y
END





