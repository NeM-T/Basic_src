! マンデルブローのλ-map
! f(z)=λz(1-z) の反復が有界となる複素数λの集合
! λ=u+iv, z=x+y ,f(z)=x1+iy1 とおくと，
! x1=ux0-vy0, y1=vx0-uy0, ここで x0=x(1-x)+y^2, y0=y(1-2x)
! となることを利用して複素数の演算を行う。
LET left = -2                                  
LET right = 4                                
LET h = (right - left)           ! height
SET WINDOW left, right,-h/2,h/2    
ASK PIXEL SIZE(left,-h;right,h) px,py
LET px=px-1
LET py=py-1     
DRAW grid
SET POINT STYLE 1
FOR u= left TO right step (right-left)/px                               
   FOR v = 0 to h/2 step h/py                            
      LET x = 0.5                                
      LET y = 0                                
      WHEN EXCEPTION IN                        
         FOR n = 1 TO 250                        
            LET x0=x*(1-x)+y^2
            LET y0=y*(1-2*x)
            LET x =u*x0 - v*y0       
            LET y =v*x0 + u*y0               
         NEXT n                                  
         PLOT POINTS: u,v
         PLOT POINTS: u,-v   
      USE
      END WHEN                           
   NEXT v                                      
NEXT u                                        
END                                             


