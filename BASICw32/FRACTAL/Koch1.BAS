! コッホ曲線の別の定義（再帰による定義）
! 2点(0,0),(1,0)を結ぶ4つの線分
! (0,0)-(1/3,0)
! (1/3,0)-(1/2,√3/6)
! (1/2,√3/6)-(2/3,0)
! (2/3,0)-(1,0)
! を，それぞれ，自身を1/3倍に縮小した曲線で置き換えて得られる曲線
! 再帰の深さを引数nで示す。
PICTURE Koch(n)
   IF n=6 THEN
      PLOT LINES:0,0;1,0
   ELSE
      DRAW Koch(n+1) WITH SCALE(1/3) 
      DRAW Koch(n+1) WITH SCALE(1/3)*ROTATE(PI/3)*SHIFT(1/3,0)
      DRAW Koch(n+1) WITH SCALE(1/3)*ROTATE(-PI/3)*SHIFT(1/2,SQR(3)/6)
      DRAW Koch(n+1) WITH SCALE(1/3)*SHIFT(2/3,0)
   END IF
END picture
SET WINDOW 0,1,0,1
DRAW Koch(0)
END

