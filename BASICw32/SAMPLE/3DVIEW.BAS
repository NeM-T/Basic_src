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
LET theta0=-115    ! z軸のまわりの回転角
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
PICTURE side
   PLOT LINES:0,0; 1,0; 1,1; 0,1; 0,0
END PICTURE
DRAW side
DRAW side WITH rx 
DRAW side WITH rx * SHIFT(0,1)
DRAW side WITH SHIFT(-1,0)* ry 
DRAW side WITH SHIFT(-1,0)* ry * SHIFT(1,0)
DRAW side WITH sz
PLOT LABEL, AT 0,0: "O"
SET TEXT FONT "Times New Roman Italic" ,0
PLOT LABEL ,AT 1,0: "x"
PLOT LABEL ,AT 0,1: "y"
PICTURE LABELz
   PLOT LABEL , AT 0,0: "z"
END PICTURE
DRAW LABELz WITH sz
PLOT 
END PICTURE

