! コッホ曲線の別の定義（再帰による定義）
! 2点P，Qに対し，
! 線分PQの3等分点を順にP1，P3とし，
! P1を中心にP3を60°回転した点をP2とする。
! P,P1
! P1,P2
! P2,P3
! P3,Q
! を端点として，この手続きを再帰的に適用する。
! ただし，2点間の距離が短いときは2点を線分でむすぶ。
SET WINDOW 0,1,0,1
CALL Koch(0,0,1,0)
END

EXTERNAL SUB Koch(x0,y0,x4,y4)
IF SQR((x4-x0)^2+(y4-y0)^2)<0.001 THEN   ! 定数0.001は画面解像度に応じて増減する
   PLOT LINES:x0,y0; x4,y4
ELSE
   LET x1=(2*x0+x4)/3
   LET y1=(2*y0+y4)/3
   LET x3=(x0+2*x4)/3
   LET y3=(y0+2*y4)/3
   LET x2=x1+COS(PI/3)*(x3-x1)-SIN(PI/3)*(y3-y1)
   LET y2=y1+SIN(PI/3)*(x3-x1)+COS(PI/3)*(y3-y1)
   CALL Koch(x0,y0,x1,y1)
   CALL Koch(x1,y1,x2,y2)
   CALL Koch(x2,y2,x3,y3)
   CALL Koch(x3,y3,x4,y4)
END IF
END SUB
