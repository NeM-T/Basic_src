! TANH(x)=(EXP(x)-EXP(-x))/(EXP(x)+EXP(-x))  ëoã»ê¸ê≥ê⁄
DEF f(x)=TANH(x)
SET WINDOW -4,4,-4,4
DRAW grid
FOR x=-4 TO 4 STEP 0.01
   PLOT x,f(x)
NEXT x
END






