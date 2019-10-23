OPTION ARITHMETIC COMPLEX
LET i=SQR(-1)
! f(z)=cos z+ƒÊ‚Ì”½•œ‚ª—LŠE‚Æ‚È‚é•¡‘f”ƒÊ‚ÌW‡
! ”Šw“I‚Éconj(cos(z))=cos(conj(z))‚ª¬—§‚·‚é‚Ì‚ÅC
! ã”¼•½–Ê‚Ì‚ÝŒvŽZ‚µCã‰º‘ÎÌ‚É•`‰æ‚µ‚ÄŒvŽZŽžŠÔ‚ðß–ñ‚µ‚Ä‚¢‚éB
DEF cos(z)=(EXP(i*z)+EXP(-i*z))/2            ! ‘gžŠÖ”‚ÌCOS‚Í•¡‘f”‚É‘Î‰ž‚µ‚Ä‚¢‚È‚¢‚Ì‚ÅDEF•¶‚Å’è‹`‚·‚éB
LET nmax=250            ! Å‘åŒJ‚è•Ô‚µ‰ñ”
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
         IF ABS(z)>100 THEN       ! ”­ŽU‚Ì”»’è
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

