! SET MARGIN文は，出力の行幅を設定する。
! そのまま出力すると行幅を超えてしまうとき，
! 改行してから出力する。
FOR x=1 TO 10
   PRINT x,
NEXT X
PRINT
PRINT
SET MARGIN 80
FOR x=1 TO 10
   PRINT x,
NEXT x
END

