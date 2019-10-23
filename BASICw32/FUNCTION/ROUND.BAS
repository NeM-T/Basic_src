! ROUND(x,y) 　xを小数点以下y桁に丸めた値。　INT(x*10^y+0.5)/10^y
DEF f(x)=ROUND(x,0)
SET WINDOW -5,5,-5,5
DRAW grid
FOR x=-5 TO 5 STEP 0.01
   PLOT x,f(x)
NEXT x
END


