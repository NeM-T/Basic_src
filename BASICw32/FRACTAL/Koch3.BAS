! コッホ曲線の別の定義（再帰による定義）
! 複素数を用いるとプログラムの記述が簡略化される。
! 2点α，βに対し，
! 線分αβの3等分点を順にz1，z3とし，
! z1を中心にz3を60°回転した点をz2とする。
! α,z1
! z1,z2
! z2,z3
! z3,β
! を端点として，この手続きを適用する。
! ただし，2点間の距離が短いときは2点を線分でむすぶ。
OPTION ARITHMETIC complex
SET WINDOW 0,1,0,1
CALL Koch(0,1)
END

EXTERNAL SUB Koch(a,b)
OPTION ARITHMETIC complex
IF ABS(b-a)<0.001 THEN   ! 定数0.001は画面解像度に応じて増減する
   PLOT LINES:RE(a),IM(a);RE(b),IM(b)
ELSE
   LET z1=(2*a+b)/3
   LET z3=(a+2*b)/3
   LET z2=z1+(z3-z1)*EXP((PI/3)*SQR(-1))
   CALL Koch(a,z1)
   CALL Koch(z1,z2)
   CALL Koch(z2,z3)
   CALL Koch(z3,b)
END IF
END SUB
