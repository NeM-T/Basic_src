100 REM 左目,赤，右目,青(シアン)のフィルタを通して見る
110 OPTION ANGLE DEGREES
120 ASK DEVICE SIZE w, h, s$
130 LET h=h*100        ! cm単位に換算
140 LET w=w*100        ! cm単位に換算
150 SET WINDOW 0, w, 0, h
160 SET DRAW MODE MASK ! 減色混合 
170 DIM rotx(4,4)      ! x軸のまわりの-90°回転
180 MAT rotx=IDN
190 LET rotx(2,2)=0
200 LET rotx(2,3)=-1
210 LET rotx(3,2)=1
220 LET rotx(3,3)=0
230 LET theta0=-115    ! z軸のまわりの回転角
240 DIM p(4,4)         ! 点 0,0,z0を中心とする射影               
250 MAT p=IDN
260 LET y0=20          ! 視点の高さ
270 LET z0=80          ! ディスプレーまでの距離
280 SET COLOR "CYAN"   ! 左目用の画像
290 LET x0=-3
300 GOSUB 1000
310 SET COLOR "RED"    ! 右目用の画像
320 LET x0=3
330 GOSUB 1000
340 STOP
1000 REM z軸のまわりにtheta0回転し，
1010 REM x軸のまわりに-90°回転したcubeを，
1020 REM 点x0, y0, z0から見たように描く。
1030 LET p(3,4)=-1/z0
1040 DRAW cube WITH ROTATE(theta0) * rotx *  SCALE(h/3) * SHIFT(-x0,-y0) * p * SHIFT(x0,y0) * SHIFT(w/3,h/3)
1050 RETURN
1060 END 
1070 ! 単位立方体を描く
1080 EXTERNAL PICTURE cube
1090 DIM rx(4,4),ry(4,4),sz(4,4)
1100 MAT READ rx
1110 DATA  1, 0, 0, 0
1120 DATA  0, 0, 1, 0
1130 DATA  0,-1, 0, 0
1140 DATA  0, 0, 0, 1
1150 MAT READ ry
1160 DATA  0, 0,-1, 0
1170 DATA  0, 1, 0, 0
1180 DATA  1, 0, 0, 0
1190 DATA  0, 0, 0, 1
1200 MAT READ sz
1210 DATA  1, 0, 0, 0
1220 DATA  0, 1, 0, 0
1230 DATA  0, 0, 1, 0
1240 DATA  0, 0, 1, 1
1250 PICTURE side
1260    PLOT LINES:0,0; 1,0; 1,1; 0,1; 0,0
1270 END PICTURE
1280 DRAW side
1290 DRAW side WITH rx 
1300 DRAW side WITH rx * SHIFT(0,1)
1310 DRAW side WITH SHIFT(-1,0)* ry 
1320 DRAW side WITH SHIFT(-1,0)* ry * SHIFT(1,0)
1330 DRAW side WITH sz
1340 PLOT LABEL, AT 0,0: "O"
1350 SET TEXT FONT "Times New Roman Italic" ,0
1360 PLOT LABEL ,AT 1,0: "x"
1370 PLOT LABEL ,AT 0,1: "y"
1380 PICTURE LABELz
1390    PLOT LABEL , AT 0,0: "z"
1400 END PICTURE
1410 DRAW LABELz WITH sz
1420 PLOT 
1430 END PICTURE
