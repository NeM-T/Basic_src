DEF f(x)=x^x
SET WINDOW 0,4,0,4
DRAW grid
FOR x=0 TO 4 STEP 0.01
   PLOT LINES: x,f(x);
NEXT x
END







