! Cayleyの問題
! f(z)=z^3-1 として，
! Newton法の反復
! z←z-f(z)/f'(z)
! によって1の3乗根のうちのいずれに収束するか？
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
         LET x=x0
         LET y=y0
         FOR i=1 to 100                    ! 最大繰り返し回数
            LET a=2*(x^3-3*x*y^2)+1
            LET b=2*(3*x^2*y-y^3)
            LET c=3*(x^2-y^2)
            LET d=6*x*y
            LET den=c^2+d^2
            LET x=(a*c+b*d)/den
            LET y=(b*c-a*d)/den
            IF (x-1)^2+y^2<0.0001 THEN     ! 収束先によって色分け
               SET POINT COLOR 3
               PLOT POINTS : x0, y0
               EXIT FOR  
            ELSEIF (x+0.5)^2+(y-sqr(3)/2)^2<0.0001 THEN
               SET POINT COLOR 2
               PLOT POINTS : x0, y0
               EXIT FOR  
            ELSEIF (x+0.5)^2+(y+sqr(3)/2)^2<0.0001 THEN
               SET POINT COLOR 4
               PLOT POINTS : x0, y0
               EXIT FOR  
            END IF
         NEXT i
      USE
      END WHEN
   NEXT py
NEXT px
END

