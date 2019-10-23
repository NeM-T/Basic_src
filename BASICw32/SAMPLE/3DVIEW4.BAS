! 正八面体
OPTION ANGLE DEGREES
READ x0,y0,z0      ! 視点
DATA 0, 1, 10
DIM p(4,4)         ! 点 0,0,z0を中心とする射影               
MAT p=IDN
LET p(3,4)=-1/z0
DIM rotx(4,4)      ! x軸のまわりの-90°回転
MAT rotx=IDN
LET rotx(2,2)=0
LET rotx(2,3)=-1
LET rotx(3,2)=1
LET rotx(3,3)=0
REM z軸のまわりにtheta0回転し，x軸のまわりに-90°回転したoctaを，
REM 点x0, y0, z0から見たように描く。
SET WINDOW -2, 2, -2, 2
FOR THETA0=0 TO 340 STEP 0.1
   SET DRAW MODE HIDDEN
   CLEAR 
   DRAW octa WITH ROTATE(theta0) * rotx * SHIFT(-x0,-y0) * p * SHIFT(x0,y0)
   SET DRAW MODE EXPLICIT
NEXT THETA0
END 
! 正八面体を描く
EXTERNAL PICTURE octa
OPTION ANGLE DEGREES
LET theta=ACOS(1/SQR(3))  ! 面角
DIM rx(4,4),m(4,4)
MAT rx=IDN
LET rx(2,2)=COS(theta)
LET rx(2,3)=SIN(theta)
LET rx(3,2)=-SIN(theta)
LET rx(3,3)=COS(theta)
MAT m = rx * SHIFT(0,-1)
DRAW side(1) WITH m 
DRAW side(1) WITH m * ROTATE(90)
DRAW side(1) WITH m * ROTATE(180)
DRAW side(1) WITH m * ROTATE(270)
LET rx(2,2)=COS(-theta)
LET rx(2,3)=SIN(-theta)
LET rx(3,2)=-SIN(-theta)
LET rx(3,3)=COS(-theta)
MAT m = rx * SHIFT(0,-1)
DRAW side(-1) WITH m 
DRAW side(-1) WITH m * ROTATE(90)
DRAW side(-1) WITH m * ROTATE(180)
DRAW side(-1) WITH m * ROTATE(270)
END PICTURE
! 面を描く
EXTERNAL PICTURE side(v)  ! vは面の表の向きを示す
DIM N(3)
CALL makeNormal(N)
MAT N=v*N
IF N(3)>0 THEN     ! 外側が手前なら面を描く
   CALL setBrightness(N)
   PLOT AREA: -1,0; 1,0; 0, SQR(3)  
END IF 
END PICTURE
! 変換された座標系における法線ベクトルを求める
EXTERNAL SUB makeNormal(N())
DIM m(4,4),A(4),B(4),C(4)
MAT m=TRANSFORM
MAT READ A
DATA 0,0,0,1
MAT READ B
DATA 1,0,0,1
MAT READ C
DATA 1,1,0,1
MAT A=A*M
MAT B=B*M
MAT C=C*M
MAT A=(1/A(4))*A
MAT B=(1/B(4))*B
MAT C=(1/C(4))*C
MAT REDIM A(3)
MAT REDIM B(3)
MAT REDIM C(3)
MAT A=B-A
MAT B=C-B
MAT N=CROSS(A,B)
END SUB 
! 面の明度の決定
EXTERNAL SUB setBrightness(N())
DIM A(3)
MAT READ A      ! 光源の向き
DATA -1,1,1
LET s=DOT(A,N)/(SQR(DOT(A,A))*SQR(DOT(N,N)))
LET s=(0.8*s+1)/2
SET COLOR MIX(8) s,s,s
SET AREA COLOR 8
END SUB
