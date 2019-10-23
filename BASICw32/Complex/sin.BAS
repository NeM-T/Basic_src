! f(z)=λ sin z の反復が有界となる複素数λの集合
! 250回，反復し，その間に桁あふれのエラーにならなければ有界と判定している。
! 共役複素数の性質から結果は上下対称になるので，上半平面だけ計算し，下半平面は対称に描画している。
! 組込み関数のSIN(x)は複素数に拡張していないが，
! def文を利用して宣言すれば複素関数のsinも使える。
OPTION ARITHMETIC COMPLEX
LET i=sqr(-1)
DEF sin(z)=(EXP(i*z)-EXP(-i*z))/(2*i)
LET left = -8                 ! left                 
LET right = 8                 ! right               
LET h = (right - left)        ! height
SET WINDOW left, right,-h/2,h/2    
ASK PIXEL SIZE(left,-h/2;right,h/2) px,py
LET px=px-1
LET py=py-1
DRAW grid
SET POINT STYLE 1
FOR u= left TO right step (right-left)/px                               
   FOR v = 0 to h/2 step h/py
      LET Lambda=COMPLEX(u,v)                            
      LET z=0.5             ! 初期値                             
      WHEN EXCEPTION IN                        
         FOR n = 1 TO 250                        
            LET z=lambda*sin(z)   
         NEXT n                                  
         PLOT POINTS: u,v
         PLOT POINTS: u,-v   
      USE
      END WHEN                           
   NEXT v                                      
NEXT u                                        
END                                             


