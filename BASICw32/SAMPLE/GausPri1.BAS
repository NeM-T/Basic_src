REM Gaussian Primes
REM ƒKƒEƒX‘f”
REM ƒKƒEƒX•½–Êã‚ÌŠiŽq“_‚ðƒKƒEƒX®”‚Æ‚¢‚¤B
REM Ž©–¾‚È–ñ”ˆÈŠO‚Ì–ñ”‚ð‚à‚½‚È‚¢ƒKƒEƒX®”‚ðƒKƒEƒX‘f”‚Æ‚¢‚¤B
REM â¿‚ð—˜—p‚µ‚Ä‘f”‚ð‹‚ß‚é‘f–p‚ÈƒAƒ‹ƒSƒŠƒYƒ€
OPTION ARITHMETIC NATIVE
LET N=100
DIM s(-N TO N, -N TO N)
MAT s=CON
LET s(0,0), s(1,0), s(-1,0), s(0,1), s(0,-1) = 0
FOR a=0 TO N
   FOR b=0 TO N
      IF s(a,b)=1 THEN   
      ! a+bi‚ª‘f”‚È‚çC‚»‚Ì”{”‚ð‘f”‚©‚ç‚Í‚¸‚·B
         LET m=INT(SQR((N^2+N^2)/(a^2+b^2)))
         FOR c=0 TO m 
            FOR d=-m TO m 
               IF c^2+d^2 > 1 THEN
                  LET x=a*c-b*d
                  LET y=a*d+b*c
                  ! x+yi = (a+bi)(c+di)
                  IF ABS(x)<=N AND ABS(y)<=N THEN LET s(x,y), s(-x,-y) = 0
               END IF
            NEXT d
         NEXT c
      END if
   NEXT b
NEXT a
! Œ‹‰Ê‚ð}Ž¦‚·‚é 
SET WINDOW -N, N, -N, N
MAT PLOT CELLS, IN -N,-N ; N, N : s
END
