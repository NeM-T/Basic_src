OPTION ARITHMETIC COMPLEX
LET i=SQR(-1)
! f(z)=cos z+μの反復が有界となる複素数μの集合
! 数学的にconj(cos(z))=cos(conj(z))が成立するので，
! 上半平面のみ計算し，上下対称に描画して計算時間を節約している。
DEF cos(z)=(EXP(i*z)+EXP(-i*z))/2            ! 組込関数のCOSは複素数に対応していないのでDEF文で定義する。
LET nmax=250            ! 最大繰り返し回数
LET left = -5                  ! left                 
LET right =  5                  ! right               
LET h = (right - left)             ! height
SET WINDOW left, right,-h/2,h/2  
DRAW axes  
ASK PIXEL SIZE(left,-h/2;right,h/2) px,py
LET px=px-1
LET py=py-1     
SET POINT STYLE 1
FOR u= left TO right step (right-left)/px                               
   FOR v = 0 to h/2 step h/py                            
      LET mu=COMPLEX(u,v)
      LET z = 0                                
      FOR n = 1 TO nmax                     
         LET z=cos(z)+mu     
         IF ABS(z)>100 THEN       ! 発散の判定
            EXIT FOR
         END IF  
      NEXT n                                  
      IF n>nmax THEN
         PLOT POINTS: u,v
         PLOT POINTS: u,-v
      END IF
   NEXT v                                      
NEXT u                                        
END                                             

