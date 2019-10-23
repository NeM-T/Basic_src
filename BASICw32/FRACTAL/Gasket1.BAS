DECLARE EXTERNAL SUB gasket
LET n=6
CALL gasket (0,0,1,0,1,n)
END
EXTERNAL SUB gasket(x0,y0,x3,y3,s,n)
LET x1=x0+COS(PI/3*s)*(x3-x0)/2-SIN(PI/3*s)*(y3-y0)/2
LET y1=y0+SIN(PI/3*s)*(x3-x0)/2+COS(PI/3*s)*(y3-y0)/2
LET x2=x1+(x3-x0)/2
LET y2=y1+(y3-y0)/2
IF n=0 THEN
   PLOT LINES: x0,y0; x1,y1; x2,y2; x3,y3
ELSE
   CALL gasket(x0,y0,x1,y1,s*(-1),n-1)
   CALL gasket(x1,y1,x2,y2,s     ,n-1)
   CALL gasket(x2,y2,x3,y3,s*(-1),n-1)
END IF
END SUB
