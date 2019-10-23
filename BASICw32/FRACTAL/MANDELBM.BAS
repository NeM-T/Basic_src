! マンデルブローのμ-map
! f(z)=z^2+μの反復が有界となる複素数μの集合
! μ=u+iv, z=x+iy ,f(z)=x1+iy1 とおくと，
! x1=x^2-y^2+u, y1=2xy+v となることを利用して複素数の計算を行う。
LET left = -2                             
LET right = .8                     
LET h = (right - left)              ! height
SET WINDOW left, right,-h/2,h/2    
ASK PIXEL SIZE(left,-h;right,h) px,py
LET px=px-1
LET py=py-1     
DRAW grid
SET POINT STYLE 1
FOR u= left TO right step (right-left)/px                               
   FOR v = 0 to h/2 step h/py                            
      LET x = 0                                
      LET y = 0                                
      WHEN EXCEPTION IN                        
         FOR n = 1 TO 250                        
            LET x1 = x^2 - y^2 + u       
            LET y1 = 2 * x * y + v               
            LET x = x1                           
            LET y = y1                           
         NEXT n                                  
         PLOT POINTS: u,v
         PLOT POINTS: u,-v   
      USE
      END WHEN                           
   NEXT v                                      
NEXT u                                        
END                                             

