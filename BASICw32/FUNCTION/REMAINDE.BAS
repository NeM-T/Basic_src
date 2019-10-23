! REMAINDER(x,y) 　xをyで(算術的に)割った余り。　x-y*IP(x/y)
DEF f(x)=REMAINDER(x,2)
SET WINDOW -8,8,-8,8
DRAW grid
FOR x=-8 TO 8 STEP 0.01
   PLOT x,f(x)
NEXT x
END









