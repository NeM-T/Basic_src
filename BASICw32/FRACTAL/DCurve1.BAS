DECLARE EXTERNAL SUB DCurve
SET WINDOW -0.5,1.5,-0.5,1.5
LET n=10
CALL DCurve(0,0,1,0,n)
END
EXTERNAL SUB DCurve(x0,y0,x2,y2,n)
IF n=0 THEN  
   PLOT LINES: x0,y0; x2,y2
ELSE
   LET x1=x0+SQR(1/2)*(COS(PI/4)*(x2-x0)-SIN(PI/4)*(y2-y0))
   LET y1=y0+SQR(1/2)*(SIN(PI/4)*(x2-x0)+COS(PI/4)*(y2-y0))
   CALL DCurve(x0,y0,x1,y1,n-1) 
   CALL DCurve(x2,y2,x1,y1,n-1) 
END IF
END SUB

