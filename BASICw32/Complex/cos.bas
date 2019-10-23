OPTION ARITHMETIC COMPLEX
LET i=SQR(-1)
! f(z)=cos z+�ʂ̔������L�E�ƂȂ镡�f���ʂ̏W��
! ���w�I��conj(cos(z))=cos(conj(z))����������̂ŁC
! �㔼���ʂ̂݌v�Z���C�㉺�Ώ̂ɕ`�悵�Čv�Z���Ԃ�ߖ񂵂Ă���B
DEF cos(z)=(EXP(i*z)+EXP(-i*z))/2            ! �g���֐���COS�͕��f���ɑΉ����Ă��Ȃ��̂�DEF���Œ�`����B
LET nmax=250            ! �ő�J��Ԃ���
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
         IF ABS(z)>100 THEN       ! ���U�̔���
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

