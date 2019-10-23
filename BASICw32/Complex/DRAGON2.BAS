OPTION ARITHMETIC COMPLEX
SUB selfsim(m,n)
   IF ABS(m)<1/200 THEN
      PLOT POINTS:n
   ELSE
      CALL selfsim(a*m, a*n+b)
      CALL selfsim(c*m, c*n+d)
   END IF
END SUB
LET i=SQR(-1)
SET WINDOW -2,2,-2,2
SET POINT STYLE 1
DRAW grid
LET a=1/2+1/2*i
LET b=0
LET c=a
LET d=-a+1
CALL selfsim(1,0)
END
