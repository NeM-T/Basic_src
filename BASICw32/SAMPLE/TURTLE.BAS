DECLARE EXTERNAL SUB turtle.fd, turtle.rt
SET WINDOW -1,1,-1,1
CALL fd(0)
FOR i=1 TO 5
   CALL fd(1)
   CALL rt(144)
   WAIT DELAY 0.2  ! 0.2秒休止
NEXT i
END
! LOGO風タートルグラフィックス
MODULE turtle
MODULE OPTION ANGLE DEGREES
PUBLIC SUB fd, rt
SHARE NUMERIC curX, curY, direction
LET curX=0
LET curY=0
LET direction=90
EXTERNAL SUB fd(r)  ! Forward 前進
   LET curX=curX+r*COS(direction)
   LET curY=curY+r*SIN(direction)
   PLOT LINES: curX, curY;
END SUB
EXTERNAL SUB rt(t)  ! Right Turn 右転
   LET direction=direction - t
END SUB
END MODULE

