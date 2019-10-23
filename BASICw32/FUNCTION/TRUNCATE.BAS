! TRUNCATE(x,y) 　xの小数点以下y桁未満を切り捨てた値。　IP(x*10^y)/10^y
DEF f(x)=TRUNCATE(x,0)
SET WINDOW -4,4,-4,4
DRAW grid
FOR x=-4 TO 4 STEP 0.01
   PLOT x,f(x)
NEXT x
END










