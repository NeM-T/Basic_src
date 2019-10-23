OPTION ARITHMETIC COMPLEX
! f(z)=z^7-1 として，
! Newton法の反復
! z←z-f(z)/f'(z)
! によって1の7乗根のうちのいずれに収束するか？
DEF f(z)=z^7-1
DEF g(z)=7*z^6                     !  f'(z) 
DIM a(0 TO 6)
FOR n=0 TO 6
   LET a(n)=EXP(2*PI/7*n*SQR(-1))  ! 1の7乗根 
NEXT n
LET left=-5
LET right=5
LET h=(right-left)/2
SET WINDOW left,right,-h,h
SET POINT STYLE 1
FOR px=0 TO PIXELX(right)
   FOR py=0 TO PIXELY(h)
      WHEN EXCEPTION IN
         LET x0=PROBLEMX(px)
         LET y0=PROBLEMY(py) 
         LET z=COMPLEX(x0,y0)
         LET i=1
         DO WHILE i<100                    ! 最大繰り返し回数
            LET z=z-f(z)/g(z)  
            FOR n=0 TO 6
               IF ABS(z-a(n))<0.01 THEN     ! 収束先によって色分け
                  SET POINT COLOR n+2
                  PLOT POINTS : x0, y0
                  EXIT DO  
               END IF
            NEXT n  
            LET i=i+1   
         LOOP
      USE
      END WHEN
   NEXT py
NEXT px
END

