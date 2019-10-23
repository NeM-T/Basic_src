! INT(x) ‚ÍAx‚ð’´‚¦‚È‚¢Å‘å‚Ì®”‚ð•\‚·
DEF f(x)=INT(x)
SET WINDOW -4,4,-4,4
DRAW grid
FOR x=-4 TO 4 STEP 0.01
   PLOT x,f(x)
NEXT x
END
