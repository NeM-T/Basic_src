100 ! 正四面体
110 DECLARE EXTERNAL PICTURE tetra
120 OPTION ANGLE DEGREES
130 LET z0=10          ! 視点
140 DIM p(4,4)         ! 点 0,0,z0を中心とする射影               
150 MAT p=IDN
160 LET p(3,4)=-1/z0
170 LET theta0=45      ! z軸のまわりの回転角
180 LET t=-60          ! x軸のまわりの回転角初期値
190 LET s=0            ! y軸のまわりの回転角初期値
200 REM z軸のまわりにtheta0回転し，
210 REM x軸のまわりにt°回転，
220 REM y軸のまわりにs°回転したtetraを
230 REM 点(0, 0, z0) から見たように描く。
240 REM 画面上でマウスを横方向にドラッグすると図形をy軸のまわりに回転させ，
250 REM マウスを縦方向にドラッグすると，図形をx軸のまわりに回転させる。
260 DIM m(4,4)
270 MAT m=ROTATE(theta0)
280 SET WINDOW -2, 2, -2, 2
290 DO 
300    DIM rotx(4,4)      ! x軸のまわりの回転
310    MAT rotx=IDN
320    LET rotx(2,2)=COS(t)
330    LET rotx(2,3)=SIN(t)
340    LET rotx(3,2)=-SIN(t)
350    LET rotx(3,3)=COS(t)
360    DIM roty(4,4)      ! y軸のまわりの回転
370    MAT roty=IDN
380    LET roty(1,1)=COS(s)
390    LET roty(1,3)=-SIN(s)
400    LET roty(3,1)=SIN(s)
410    LET roty(3,3)=COS(s)
420    MAT m=m * rotx * roty 
430    SET DRAW mode hidden
440    CLEAR
450    DRAW tetra WITH m * p
460    PLOT TEXT, AT -2,-2: "マウスでドラッグすると回転。右クリックで終了"
470    SET DRAW mode explicit
480    MOUSE POLL x,y,l,r
490    IF r<>0 THEN EXIT DO
500    LET t=0
510    LET s=0
520    IF l<>0 THEN    
530       LET t=-20*(y-y0)
540       LET s= 20*(x-x0)
550    END IF 
560    LET x0=x
570    LET y0=y
580 LOOP
590 END 
600 !
980 ! 正四面体を描く
990 ! 底面をxy平面上に置き，底面の重心を原点とする。
1000 EXTERNAL PICTURE tetra
1010 DECLARE EXTERNAL PICTURE face
1020 OPTION ANGLE DEGREES
1030 DIM rx(4,4),ry(4,4)
1040 MAT rx=IDN           ! rxはx軸のまわりのACOS(1/3)の回転
1050 LET a=ACOS(1/3)  ! 面角
1060 LET rx(2,2)=COS(a)
1070 LET rx(2,3)=SIN(a)
1080 LET rx(3,2)=-SIN(a)
1090 LET rx(3,3)=COS(a)
1100 MAT ry=IDN           ! ryはy軸のまわりの180°回転
1110 LET ry(1,1)=-1
1120 LET ry(3,3)=-1
1130 DRAW face WITH rx * SHIFT(0,-SQR(3)/3)              ! 側面
1140 DRAW face WITH rx * SHIFT(0,-SQR(3)/3) * ROTATE(120)
1150 DRAW face WITH rx * SHIFT(0,-SQR(3)/3) * ROTATE(240)
1160 DRAW face WITH ry * SHIFT(0,-SQR(3)/3) !　底面
1170 END PICTURE
1180 !
1190 ! 面を描く
1200 EXTERNAL PICTURE face
1210 DECLARE EXTERNAL SUB makeNormal, setBrightness
1220 DIM N(3)
1230 CALL makeNormal(N)
1240 IF N(3)>0 THEN     ! 外側が手前なら面を描く
1250    CALL setBrightness(N)
1260    PLOT AREA: -1,0; 1,0; 0, SQR(3)  
1270 END IF 
1280 END PICTURE
1290 !
1300 ! 変換された座標系における法線ベクトルを求める
1310 EXTERNAL SUB makeNormal(N())
1320 DIM m(4,4),A(4),B(4),C(4)
1330 MAT m=TRANSFORM
1340 MAT READ A
1350 DATA 0,0,0,1
1360 MAT READ B
1370 DATA 1,0,0,1
1380 MAT READ C
1390 DATA 1,1,0,1
1400 MAT A=A*M
1410 MAT B=B*M
1420 MAT C=C*M
1430 MAT A=(1/A(4))*A
1440 MAT B=(1/B(4))*B
1450 MAT C=(1/C(4))*C
1460 MAT REDIM A(3)
1470 MAT REDIM B(3)
1480 MAT REDIM C(3)
1490 MAT A=B-A
1500 MAT B=C-B
1510 MAT N=CROSS(A,B)
1520 END SUB 
1530 !
1540 ! 法線ベクトルの向きから面の明るさを決定する
1550 EXTERNAL SUB setBrightness(N())
1560 DIM A(3)
1570 MAT READ A      ! 光源の向き
1580 DATA -1,1,1
1590 LET s=DOT(A,N)/(SQR(DOT(A,A))*SQR(DOT(N,N)))
1600 LET s=(0.8*s+1)/2
1610 SET COLOR MIX(8) s,s,s
1620 SET AREA COLOR 8
1630 END SUB
   
