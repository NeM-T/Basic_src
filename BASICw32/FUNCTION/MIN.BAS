! MIN(x,y)‚ÍAx,y‚Ì¬‚³‚¢‚Ù‚¤‚ð•\‚·
DEF f(x)=MIN(x,1)
SET WINDOW -4,4,-4,4
DRAW grid
FOR x=-4 TO 4 STEP 0.01
   PLOT x,f(x)
NEXT x
END









