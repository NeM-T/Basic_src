! �}���f���u���[�̃�-map
! f(z)=z^2+�ʂ̔������L�E�ƂȂ镡�f���ʂ̏W��
! ��=u+iv, z=x+iy ,f(z)=x1+iy1 �Ƃ����ƁC
! x1=x^2-y^2+u, y1=2xy+v �ƂȂ邱�Ƃ𗘗p���ĕ��f���̌v�Z���s���B
! x^2+y^2>4 �ł���Δ��U���邱�Ƃ𗘗p�B
! ����ɁC�����Ɏ���܂ł̌J��Ԃ��񐔂ŐF��������B
LET left = -2                                
LET right= .8                             
LET h = (right - left) 
SET WINDOW left, right,-h/2,h/2  
DRAW axes  
ASK PIXEL SIZE(left,-h;right,h) px,py
LET px=px-1
LET py=py-1     
SET POINT STYLE 1
FOR u= left TO right step (right-left)/px                               
   FOR v = 0 to h/2 step h/py                            
      LET x = 0                                
      LET y = 0                                
      FOR n = 1 TO 250                        
         LET x1 = x^2 - y^2 + u       
         LET y1 = 2 * x * y + v               
         LET x = x1                           
         LET y = y1                           
         IF x^2+y^2>4 THEN
            SET POINT COLOR MIN(n,15)
            PLOT POINTS: u,v
            PLOT POINTS: u,-v   
            EXIT FOR
         END IF  
      NEXT n                                  
   NEXT v                                      
NEXT u                                        
END                                             

