! LOG10(x) x‚Ìí—p‘Î”(10‚ð’ê‚Æ‚·‚é‘Î”)
DEF f(x)=LOG10(x)
SET WINDOW -1,7,-4,4
DRAW grid
FOR x=0.0001 TO 7 STEP 0.0001
   PLOT x,f(x);
NEXT x
END









