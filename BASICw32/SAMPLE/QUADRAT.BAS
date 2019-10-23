INPUT a,b,c

DEF f(x)=a*x^2+b*x+c
SET WINDOW -5,5,-5,5
DRAW axes
FOR x=-5 TO 5 STEP 0.02
   PLOT LINES:x,f(x);
NEXT x

LET D=b^2-4*a*c
IF D>0 THEN 
   PRINT (-b+SQR(D))/(2*a),(-b-SQR(D))/(2*a)
ELSEIF D=0 THEN
   PRINT (-b+SQR(D))/(2*a)
ELSE
   PRINT "no solution"
END IF
END



