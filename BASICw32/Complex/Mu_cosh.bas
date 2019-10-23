OPTION ARITHMETIC COMPLEX
! f(z)=cosh z+μの反復が有界となる複素数μの集合
! 400回繰り返して桁あふれにならなければ有界と判断して黒く塗る。
! 数学的にconj(cosh(z))=cosh(conj(z))が成立するので，
! 上半平面のみ計算し，上下対称に描画して計算時間を節約している。
DEF cosh(z)=(EXP(z)+EXP(-z))/2            ! 組込関数のCOSHは複素数に対応していないのでDEF文で定義する。
DEF f(z)=cosh(z)+mu
LET left = -4                  ! left                 
LET right =  4                  ! right               
LET h = (right - left)             ! height
SET WINDOW left, right,-h/2,h/2  
DRAW axes  
ASK PIXEL SIZE(left,-h/2;right,h/2) px,py
LET px=px-1
LET py=py-1     
SET POINT STYLE 1
FOR v = 0 to h/2 step h/py                            
   FOR u= left TO right step (right-left)/px                               
      LET mu=COMPLEX(u,v)
      LET z = 0                        ! 繰り返しの初期値                            
      WHEN EXCEPTION IN
         FOR n=1 TO 400                ! 最大繰り返し回数                     
            LET z=f(z)     
         NEXT n                         
         PLOT POINTS: u,v
         PLOT POINTS: u,-v
      USE
      ! 発散と判断
      END WHEN
   NEXT u                                        
NEXT v                                      
END                                             
 
