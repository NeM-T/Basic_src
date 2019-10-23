! EXP(x)は、指数関数を表す.底は自然対数の底(2.71828…)
SET WINDOW -4,4,-1,7
DRAW grid
FOR x=-4 TO 4 STEP 0.01
   PLOT x,EXP(x)
NEXT x
END





