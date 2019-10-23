OPTION ANGLE DEGREES
READ x0,y0,z0      ! 視点
DATA 1, 2, 5
DIM p(4,4)         ! 点 0,0,z0を中心とする射影               
MAT p=IDN
LET p(3,4)=-1/z0
DIM rotx(4,4)      ! x軸のまわりの-90°回転
MAT rotx=IDN
LET rotx(2,2)=0
LET rotx(2,3)=-1
LET rotx(3,2)=1
LET rotx(3,3)=0
LET theta0=70
REM z軸のまわりにtheta0回転し，
REM x軸のまわりに-90°回転したcubeを，
REM 点x0, y0, z0から見たように描く。
SET WINDOW -1, 2, -1, 2
DRAW cube WITH ROTATE(theta0) * rotx * SHIFT(-x0,-y0) * p * SHIFT(x0,y0)
END 
! 単位立方体を描く
EXTERNAL PICTURE cube
DIM rx(4,4),ry(4,4),sz(4,4)
MAT READ rx
DATA  1, 0, 0, 0
DATA  0, 0, 1, 0
DATA  0,-1, 0, 0
DATA  0, 0, 0, 1
MAT READ ry
DATA  0, 0,-1, 0
DATA  0, 1, 0, 0
DATA  1, 0, 0, 0
DATA  0, 0, 0, 1
MAT READ sz
DATA  1, 0, 0, 0
DATA  0, 1, 0, 0
DATA  0, 0, 1, 0
DATA  0, 0, 1, 1
DRAW side(-1)
DRAW side(1) WITH rx 
DRAW side(-1) WITH rx * SHIFT(0,1)
DRAW side(-1) WITH SHIFT(-1,0)* ry 
DRAW side(1) WITH SHIFT(-1,0)* ry * SHIFT(1,0)
DRAW side(1) WITH sz
END PICTURE
!
EXTERNAL PICTURE side(v)      ! vは外側の向き
DIM N(3)
CALL makeNormal(N)
MAT N=v*N
IF N(3)>0 THEN     ! 外側が手前なら面を描く
   CALL setBrightness(N)
   PLOT AREA: 0,0; 1,0; 1,1; 0,1  
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

EXTERNAL SUB setBrightness(N())
DIM A(3)
MAT READ A      ! 光源の向き
DATA -1,1,1
LET s=DOT(A,N)/(SQR(DOT(A,A))*SQR(DOT(N,N)))
LET s=(s+1)/2
SET COLOR MIX(8) s,s,s
SET AREA COLOR 8
END SUB
