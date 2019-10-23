! �}���f���u���[�̃�-map
! f(z)=z^2+�ʂ̔������L�E�ƂȂ镡�f���ʂ̏W��
! ���U�̔���Ɏ���܂ł̌J��Ԃ��񐔂ŐF��������B
OPTION ARITHMETIC COMPLEX
LET left = -2                  ! left                 
LET right = .8                   ! right               
LET h = (right - left)              ! height
SET WINDOW left, right,-h/2,h/2  
DRAW axes  
ASK PIXEL SIZE(left,-h/2; right,h/2) px,py
LET px=px-1
LET py=py-1     
SET POINT STYLE 1
FOR u= left TO right step (right-left)/px                               
   FOR v = 0 to h/2 step h/py                            
      LET mu=COMPLEX(u,v)
      LET z = 0                                
      FOR n = 1 TO 250                        
         LET z=z^2+mu     
         IF ABS(z)>2 THEN
            SET POINT COLOR n
            PLOT POINTS: u,v
            PLOT POINTS: u,-v   
            EXIT FOR
         END IF  
      NEXT n                                  
   NEXT v                                      
NEXT u                                        
END                                             

