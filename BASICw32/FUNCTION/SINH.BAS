! SINH(x)=(EXP(x)-EXP(-x))/2  ëoã»ê¸ê≥å∑
DEF f(x)=SINH(x)
SET WINDOW -4,4,-4,4
DRAW grid
FOR x=-4 TO 4 STEP 0.01
   PLOT x,f(x)
NEXT x
END





