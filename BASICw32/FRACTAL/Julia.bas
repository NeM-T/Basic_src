! [“UƒWƒ…ƒŠƒAW‡
! •¡‘fŠÖ” f(z)=z^2+ƒÊiƒÊ=a+bij‚É‚¨‚¢‚ÄC
! •¡‘f”‚Ì—ñ{z(n)}‚ð z(n+1)=f(z(n)) ‚É‚æ‚Á‚Ä’è‚ß‚éB
! ‚»‚Ì‚Æ‚«C{z(n)bn=1,2,3,c}‚ª—LŠE‚Æ‚È‚é‰Šú’lz(0)‚ÌW‡B
! 
!  z=x+iy ,f(z)=x1+iy1 ‚Æ‚¨‚­‚ÆC
! x1=x^2-y^2+a, y1=2xy+b ‚Æ‚È‚é‚±‚Æ‚ð—˜—p‚µ‚Ä•¡‘f”‚ÌŒvŽZ‚ðs‚¤B
! ‰Šú’l‚ðz0=u+iv‚Æ‚·‚éB
! 
OPTION ARITHMETIC NATIVE      ! ‚Qi‰‰ŽZ‚Å‘¬‚³‚ð‰Ò‚®
LET a=-0.2       ! ”’l—á                
LET b=0.75       ! ”’l—á
!  INPUT a,b      ! ’è”€ƒÊ‚ð“ü—Í‚·‚é‚Æ‚«‚ÍCs“ª‚Ì!‚ðíœ‚·‚éB    
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
      LET x1 = u                                
      LET y1 = v                                
      FOR n = 1 TO 1000                   !Å‘åŒJ‚è•Ô‚µ‰ñ”                         
         LET x = x1                           
         LET y = y1                           
         LET x1 = x*x - y*y + a       
         LET y1 = 2 * x * y + b 
         IF x1^2+y1^2>4 THEN EXIT FOR        !”­ŽU‚Ì”»’è
      NEXT n                                  
      IF n>1000 THEN PLOT POINTS: u,v
   NEXT v                                      
NEXT u                                        
END                                             

