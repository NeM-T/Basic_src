! Lorenz attractor
OPTION ARITHMETIC NATIVE
OPTION ANGLE DEGREES
LET theta0=45      ! z軸のまわりの回転角
LET t=-60          ! x軸のまわりの回転角初期値
LET s=0            ! y軸のまわりの回転角初期値
REM z軸のまわりにtheta0回転し，
REM x軸のまわりにt°回転，
REM y軸のまわりにs°回転したLorenzを
REM 画面上でマウスを横方向にドラッグすると図形をy軸のまわりに回転させ，
REM マウスを縦方向にドラッグすると，図形をx軸のまわりに回転させる。
DIM m(4,4),mm(4,4)
MAT m=ROTATE(theta0)
SET POINT STYLE 1
SET WINDOW -90, 90, -90, 90
DO 
   DIM rotx(4,4)      ! x軸のまわりの回転
   MAT rotx=IDN
   LET rotx(2,2)=COS(t)
   LET rotx(2,3)=SIN(t)
   LET rotx(3,2)=-SIN(t)
   LET rotx(3,3)=COS(t)
   DIM roty(4,4)      ! y軸のまわりの回転
   MAT roty=IDN
   LET roty(1,1)=COS(s)
   LET roty(1,3)=-SIN(s)
   LET roty(3,1)=SIN(s)
   LET roty(3,3)=COS(s)
   MAT m=m *  rotx * roty 
   SET DRAW mode hidden
   CLEAR
   PLOT TEXT, AT -90,-90: "マウスでドラッグすると回転。右クリックで終了"
    
   REM Lorenz
   LET s=11
   LET b=8/4
   LET r=88
   LET x=15
   LET y=25
   LET z=75 
   LET dt=1/256
   FOR t=0 TO 75 STEP dt
      LET xx=x+(-s*x+s*y)*dt
      LET yy=y+(r*x-y-x*z)*dt
      LET zz=z+(-b*z+x*y)*dt
      LET x=xx
      LET y=yy
      LET z=zz
      CALL PLOT(x,y,z)
   NEXT t
    
   REM x軸
   CALL PenUp
   CALL PLOT(0,0,0)
   CALL PLOT(50,0,0)
   CALL PLOTLABEL(50,0,0,"x") 
   REM y軸
   CALL PenUp
   CALL PLOT(0,0,0)
   CALL PLOT(0,50,0)
   CALL PLOTLABEL(0,50,0,"y") 
   REM z軸
   CALL PenUp
   CALL PLOT(0,0,0)
   CALL PLOT(0,0,150)
   CALL PLOTLABEL(0,0,150,"z") 
    
   SET DRAW mode explicit
   MOUSE POLL x,y,l,r
   IF r<>0 THEN EXIT DO
   LET t=0
   LET s=0
   IF l<>0 THEN    
      LET t=-2*(y-y0)
      LET s= 2*(x-x0)
   END IF 
   LET x0=x
   LET y0=y
LOOP

DIM POINT(4)
SUB PLOT(x,y,z)
   LET POINT(1)=x
   LET POINT(2)=y
   LET POINT(3)=z-70
   MAT POINT=POINT*m
   PLOT LINES:POINT(1),POINT(2);
END SUB

SUB PenUp
   PLOT LINES
END SUB

SUB PLOTLABEL(x,y,z,s$)
   LET POINT(1)=x
   LET POINT(2)=y
   LET POINT(3)=z-70
   MAT POINT=POINT*m
   PLOT LABEL ,AT POINT(1),POINT(2):s$
END SUB

END 
!
