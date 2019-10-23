! Cayleyの問題
! f(z)=z^3-1 として，
! Newton法の反復
! z←z-f(z)/f'(z)
! によって1の3乗根のうちのいずれに収束するか？
OPTION ARITHMETIC COMPLEX
DEF f(z)=z^3-1
DEF g(z)=3*z^2                    ! f'(z) 
LET i=SQR(-1)
LET w1=(-1+SQR(3)*i)/2            ! 1の虚3乗根のひとつ
LET w2=CONJ(w1)                   ! もうひとつの虚3乗根
LET left=-4
LET right=4
LET h=(right-left)/2
SET WINDOW left,right,-h,h
DRAW axes
SET POINT STYLE 1
FOR px=0 TO PIXELX(right)
   FOR py=0 TO PIXELY(h)
      WHEN EXCEPTION IN
         LET x0=PROBLEMX(px)
         LET y0=PROBLEMY(py) 
         LET z=COMPLEX(x0,y0)
         FOR n=1 to 100                    ! 最大繰り返し回数
            LET z=z-f(z)/g(z)  
            IF ABS(z-1)<0.01 THEN     ! 収束先によって色分け
               SET POINT COLOR 3
               PLOT POINTS : x0, y0
               EXIT FOR  
            ELSEIF ABS(z-w1)<0.01 THEN
               SET POINT COLOR 2
               PLOT POINTS : x0, y0
               EXIT FOR  
            ELSEIF ABS(z-w2)<0.01 THEN
               SET POINT COLOR 4
               PLOT POINTS : x0, y0
               EXIT FOR  
            END IF
         NEXT n
      USE
      END WHEN
   NEXT py
NEXT px
END

