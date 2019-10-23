! コッホ曲線の別の定義（再帰による定義）
! タートルグラフィックスを利用して描く
DECLARE EXTERNAL SUB turtle.fd, turtle.rt, turtle.lt, turtle.pu, turtle.pd
SET WINDOW 0,1,0,1
CALL rt(90)
CALL Koch(1)
SUB Koch(d)
   IF d<0.001 THEN   ! 定数値0.001は解像度に応じて修正する
      CALL fd(d)
   ELSE
      CALL Koch(d/3)
      CALL lt(60)
      CALL Koch(d/3)
      CALL rt(120)
      CALL Koch(d/3)
      CALL lt(60)
      CALL Koch(d/3)
   END IF
END SUB
END
! LOGO風タートルグラフィックス
MODULE turtle
MODULE OPTION ANGLE DEGREES
PUBLIC SUB fd, rt, lt, pu, pd
SHARE NUMERIC curX, curY, direction
SHARE STRING pen$
LET curX=0
LET curY=0
LET direction=90
LET pen$="up"
EXTERNAL SUB fd(r)  ! Forward 前進
   LET x0=curX
   LET y0=curY
   LET curX=curX+r*COS(direction)
   LET curY=curY+r*SIN(direction)
   IF pen$="up" THEN PLOT LINES: x0,y0; curX, curY
END SUB
EXTERNAL SUB rt(t)  ! Right Turn 右転
   LET direction=direction - t
END SUB
EXTERNAL SUB lt(t)  ! Left Turn 左転
   LET direction=direction + t
END SUB
EXTERNAL SUB pu     ! Pen Up 
   LET pen$="up"
END SUB
EXTERNAL SUB pd     ! Pen Down
   LET pen$="down"
END SUB
END MODULE
