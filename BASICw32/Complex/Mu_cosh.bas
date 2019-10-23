OPTION ARITHMETIC COMPLEX
! f(z)=cosh z+�ʂ̔������L�E�ƂȂ镡�f���ʂ̏W��
! 400��J��Ԃ��Č����ӂ�ɂȂ�Ȃ���ΗL�E�Ɣ��f���č����h��B
! ���w�I��conj(cosh(z))=cosh(conj(z))����������̂ŁC
! �㔼���ʂ̂݌v�Z���C�㉺�Ώ̂ɕ`�悵�Čv�Z���Ԃ�ߖ񂵂Ă���B
DEF cosh(z)=(EXP(z)+EXP(-z))/2            ! �g���֐���COSH�͕��f���ɑΉ����Ă��Ȃ��̂�DEF���Œ�`����B
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
      LET z = 0                        ! �J��Ԃ��̏����l                            
      WHEN EXCEPTION IN
         FOR n=1 TO 400                ! �ő�J��Ԃ���                     
            LET z=f(z)     
         NEXT n                         
         PLOT POINTS: u,v
         PLOT POINTS: u,-v
      USE
      ! ���U�Ɣ��f
      END WHEN
   NEXT u                                        
NEXT v                                      
END                                             
 
