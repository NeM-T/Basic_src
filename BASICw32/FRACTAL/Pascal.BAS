LET modulus=6
LET Nmax=162

OPTION BASE 0
DIM c(NMax,NMax)
MAT c=ZER
FOR n=0 TO NMax
   LET c(n,0)=1
   LET c(n,n)=1
NEXT n
FOR n=0 TO NMax
   FOR r=1 TO n-1
      LET c(n,r)=MOD(c(n-1,r-1)+c(n-1,r),modulus)
   NEXT r
NEXT n

SET BITMAP SIZE (Nmax+1)*4+1,(NMax+1)*3+1 
SET WINDOW -(NMax+1)/2,(NMax+1)/2,NMax+1,0
FOR n=0 TO NMax
   FOR r=0 TO n
      SET AREA COLOR c(n,r)
      DRAW rect WITH SHIFT(r-n/2, n)
   NEXT r
NEXT n
END

EXTERNAL PICTURE rect
PLOT AREA : -0.5,0; 0.5,0; 0.5,1; -0.5,1
END PICTURE 