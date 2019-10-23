! COT(x)  xÇÃó]ê⁄ÅBCOT(x)=1/TAN(x)
OPTION ANGLE DEGREES
DEF f(x)=COT(x)
SET WINDOW -100,500,-5,5
DRAW grid(90,1)
FOR x=-100 TO 500 
   WHEN EXCEPTION IN  
      PLOT x,f(x);
   USE
      PLOT
   END WHEN
NEXT x
END





