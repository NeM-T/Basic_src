! f(z)=z^4-1 として，
! Newton法の反復
! z←z-f(z)/f'(z)
! によって1の4乗根のうちのいずれに収束するか？
LET left=-4
LET right=4
LET h=(right-left)/2
SET WINDOW left,right,-h,h
SET POINT STYLE 1
FOR px=0 TO PIXELX(right)
   FOR py=0 TO PIXELY(h)
      WHEN EXCEPTION IN
         LET x0=PROBLEMX(px)
         LET y0=PROBLEMY(py)
         LET x=x0
         LET y=y0  
         FOR i=1 to 100                    ! 最大繰り返し回数
            LET a=3*x^4-18*x^2*y^2+3*y^4+1
            LET b=12*(x^3*y-x*y^3)
            LET c=4*(x^3-3*x*y^2)
            LET d=4*(3*x^2*y-y^3)
            LET den=c^2+d^2
            LET x=(a*c+b*d)/den
            LET y=(b*c-a*d)/den
            IF (x-1)^2+y^2<0.0001 THEN     ! 収束先によって色分け
               SET POINT COLOR 2
               PLOT POINTS : x0, y0
               EXIT FOR  
            ELSEIF x^2+(y-1)^2<0.0001 THEN
               SET POINT COLOR 3
               PLOT POINTS : x0, y0
               EXIT FOR  
            ELSEIF (x+1)^2+y^2<0.0001 THEN   
               SET POINT COLOR 4
               PLOT POINTS : x0, y0
               EXIT FOR  
            ELSEIF x^2+(y+1)^2<0.0001 THEN
               SET POINT COLOR 6
               PLOT POINTS : x0, y0
               EXIT FOR  
            END IF
         NEXT i
      USE
      END WHEN
   NEXT py
NEXT px
END

