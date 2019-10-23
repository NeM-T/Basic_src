DEF f(x)=x^3-2*x
SET WINDOW -2,2,-2,2
DRAW grid
FOR x=-2 TO 2 STEP 0.1
   PLOT LINES:x,f(x);
NEXT x
END




