DEF f(x)=a*SIN(x)
LET x1=1
LET x2=3
LET y1=0
LET y2=4 
SET WINDOW x1,x2,y1,y2
ASK PIXEL SIZE(x1,y1; x2,y2) p,q
LET px=px-1
LET py=py-1
DRAW grid
SET POINT STYLE 1
FOR a=x1 TO x2 STEP (x2-x1)/p
   LET x=1
   FOR n=1 TO 200
      LET x=f(x)
   NEXT n
   FOR n=201 TO 400
      LET x=f(x)
      PLOT POINTS:a,x
   NEXT n
NEXT a
END




