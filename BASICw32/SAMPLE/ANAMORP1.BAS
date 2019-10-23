REM 円錐アナモルフォーシス
REM 変換した絵を円錐の側面に貼り付けて円錐の軸方向から見る
! LET alpha=1/2*PI              ! 円錐の頂角
LET alpha=1/3*PI              ! 円錐の頂角
SET COLOR MODE "NATIVE"
GLOAD "zenkouji.jpg"
ASK PIXEL SIZE (1,0;0,1)a,b
DIM c(a,b)
ASK PIXEL ARRAY (0,1) c
! c(1,1)に左上端，c(a,b)に右下端の画素が入る。
SET bitmap SIZE 801, 801
CLEAR
SET WINDOW -400,400,-400,400
SET POINT STYLE 1
FOR y=-400 TO 400
   FOR x=-400 TO 400
      LET r=SQR(x^2+y^2)*SIN(alpha/2)
      IF r<>0 THEN LET t=ANGLE(x,y)/SIN(alpha/2)
      IF ABS(t)<=PI THEN
         LET i=ROUND(1/2 + a/2 + r*COS(t), 0)  ! 左端 1, 右端 a 
         LET j=ROUND(1/2 + b/2 - r*SIN(t), 0)  ! 上端 1，下端 b
         IF 1<=i AND i<=a AND 1<=j AND j<=b THEN
            SET POINT COLOR c(i,j)            
            PLOT POINTS:x,y
         END IF
      END IF 
   NEXT x
NEXT y
END
 
 
