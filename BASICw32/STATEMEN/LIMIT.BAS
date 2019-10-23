DIM A(1000,2)
INPUT n
! ê≥Çéäpå`Çï`Ç≠
FOR i=1 TO n
   LET A(i,1)=COS(2*PI/n*i)
   LET A(i,2)=SIN(2*PI/n*i)
NEXT i
SET WINDOW -2,2,-2,2
MAT PLOT AREA, LIMIT n : A
END


