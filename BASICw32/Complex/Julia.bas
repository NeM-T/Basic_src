! �[�U�W�����A�W��
! ���f�֐� f(z)=z^2+�ʁi��=a+bi�j�ɂ����āC
! ���f���̗�{z(n)}�� z(n+1)=f(z(n)) �ɂ���Ē�߂�B
! ���̂Ƃ��C{z(n)�bn=1,2,3,�c}���L�E�ƂȂ鏉���lz(0)�̏W���B

OPTION ARITHMETIC COMPLEX
LET a=-0.2       ! ���l��                
LET b=0.75       ! ���l��
!  INPUT a,b      ! �萔���ʂ���͂���Ƃ��́C�s����!���폜����B    
LET mu=COMPLEX(a,b)
LET left = -1.4                    ! left                 
LET right = 1.4                    ! right               
LET h = (right - left)             ! height
SET WINDOW left,right,-h/2,h/2
DRAW axes    
ASK PIXEL SIZE(left,-h/2;right,h/2) px,py     
LET px=px-1
LET py=py-1
SET POINT STYLE 1
FOR u= left TO right step (right-left)/px                               
   FOR v = -h/2 to h/2 step h/py                            
      LET z=COMPLEX(u,v)                                
      FOR n = 1 TO 1000                   !�ő�J��Ԃ���                         
         LET z=z^2+mu                           
         IF ABS(z)>2 THEN EXIT FOR        !���U�̔���
      NEXT n                                  
      IF n>1000 THEN PLOT POINTS: u,v
   NEXT v                                      
NEXT u                                        
END                                             

