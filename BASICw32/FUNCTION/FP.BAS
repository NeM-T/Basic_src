! FP(x) ‚ÍAx‚Ì¬”•”‚ğ•\‚·
DEF f(x)=FP(x)
LET left=-4
LET right=4
LET bottom=-4
LET top=4
SET WINDOW left,right,bottom,top
DRAW grid
FOR x=left TO right STEP (right-left)/800
   PLOT x,f(x)
NEXT x
END








