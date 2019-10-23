REM Haferman Carpet
REM http://mathworld.wolfram.com/HafermanCarpet.html
OPTION BASE 0
DIM H1(2,2), H2(8,8),H3(26,26),H4(80,80),H5(242,242)
SET bitmap SIZE 243 ,243
FOR i=0 TO 2
   FOR j=0 TO 2
      LET H1(i,j)=MOD(i+j,2)
   NEXT j
NEXT i
MAT PRINT H1;
MAT PLOT CELLS, IN  0,0; 1,1: H1
WAIT DELAY 0.5
FOR a=0 TO 2
   FOR b=0 TO 2
      IF H1(a,b)=0 THEN
         FOR i=0 TO 2
            FOR j=0 TO 2
               LET H2(3*a+i,3*b+j)=1
            NEXT j
         NEXT i
      ELSE 
         FOR i=0 TO 2
            FOR j=0 TO 2
               LET H2(3*a+i,3*b+j)=MOD(i+j,2)
            NEXT j
         NEXT i
      END IF
   NEXT b
NEXT a
MAT PRINT H2;
MAT PLOT CELLS, IN  0,0; 1,1: H2
WAIT DELAY 0.5
FOR a=0 TO 8
   FOR b=0 TO 8
      IF H2(a,b)=0 THEN
         FOR i=0 TO 2
            FOR j=0 TO 2
               LET H3(3*a+i,3*b+j)=1
            NEXT j
         NEXT i
      ELSE 
         FOR i=0 TO 2
            FOR j=0 TO 2
               LET H3(3*a+i,3*b+j)=MOD(i+j,2)
            NEXT j
         NEXT i
      END IF
   NEXT b
NEXT a
MAT PRINT H3;
MAT PLOT CELLS, IN  0,0; 1,1: H3
WAIT DELAY 0.5
FOR a=0 TO 26
   FOR b=0 TO 26
      IF H3(a,b)=0 THEN
         FOR i=0 TO 2
            FOR j=0 TO 2
               LET H4(3*a+i,3*b+j)=1
            NEXT j
         NEXT i
      ELSE 
         FOR i=0 TO 2
            FOR j=0 TO 2
               LET H4(3*a+i,3*b+j)=MOD(i+j,2)
            NEXT j
         NEXT i
      END IF
   NEXT b
NEXT a
MAT PRINT H4;
MAT PLOT CELLS, IN  0,0; 1,1: H4
WAIT DELAY 0.5
FOR a=0 TO 80
   FOR b=0 TO 80
      IF H4(a,b)=0 THEN
         FOR i=0 TO 2
            FOR j=0 TO 2
               LET H5(3*a+i,3*b+j)=1
            NEXT j
         NEXT i
      ELSE 
         FOR i=0 TO 2
            FOR j=0 TO 2
               LET H5(3*a+i,3*b+j)=MOD(i+j,2)
            NEXT j
         NEXT i
      END IF
   NEXT b
NEXT a
MAT PRINT H5;
MAT PLOT CELLS, IN  0,0; 1,1: H5
END
 
