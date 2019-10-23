REM Levy C curve
REM f1(z)=(1+i)/2*z
REM f2(z)=(1-i)/2*(z-1)+1
REM èkè¨é ëúf1Ç∆f2Ç™íËÇﬂÇÈé©å»ëäéóê}å`
OPTION ARITHMETIC COMPLEX
SET WINDOW -1/2,3/2,-1,1
LET i=SQR(-1)
LET alpha=(1+i)/2
PICTURE D(n)
   IF n=0 THEN 
      PLOT LINES:0,0;  1,0
   ELSE
      DRAW D(n-1) WITH SCALE(alpha)                           ! f1
      DRAW D(n-1) WITH SHIFT(-1)*SCALE(CONJ(alpha))*SHIFT(1)  ! f2
   END IF
END PICTURE
FOR n=0 TO 16
   CLEAR
   DRAW D(n)
   WAIT DELAY 1
NEXT n
END
