! MOD(x,y) 　xをyで割った余り。　x-y*INT(x/y)
DEF f(x)=MOD(x,2)
SET WINDOW -4,4,-4,4
DRAW grid
FOR x=-4 TO 4 STEP 0.01
   PLOT x,f(x)
NEXT x
END








