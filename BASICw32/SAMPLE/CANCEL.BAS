! ³Œ·ŠÖ”‚Ì”÷•ªŒW”‚Ì‹ßŽ—
! Œ…—Ž‚¿‚ÌŒ»Û‚ªŠÏŽ@‚³‚ê‚é
OPTION ARITHMETIC DECIMAL !\i
DEF f(x)=SIN(x)
DEF g(x)=(f(x+h)-f(x))/h
FOR t=1 TO 16
   LET h=0.1^t
   PRINT h,g(PI/6),g(PI/4)
NEXT t    
END





