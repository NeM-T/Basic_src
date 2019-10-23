REM Gaussian Primes
REM ガウス素数
REM ガウス平面上の格子点をガウス整数という。
REM 自明な約数以外の約数をもたないガウス整数をガウス素数という。
REM ガウス素数に関する公式を利用してガウス素数を求める。
REM http://mathworld.wolfram.com/GaussianPrime.html
OPTION ARITHMETIC NATIVE
LET N=100
! 通常の素数を求める
LET NN=2*N^2
DIM s(NN)
MAT s=CON
LET s(1)=0
FOR i=2 TO NN
   IF s(i)=1 THEN
      FOR j=i*i TO NN STEP i
         LET s(j)=0
      NEXT j
   END if
NEXT i
! 以後，s(i)=1 のとき i は素数
DIM p(-N TO N, -N TO N)
MAT p=ZER
FOR a=1 TO N
   FOR b=1 TO N
      IF s(a^2+b^2)=1 THEN LET p(a,b),p(a,-b),p(-a,b),p(-a,-b)=1
   NEXT b
NEXT a
FOR a=3 TO n STEP 4
   IF s(a)=1 THEN LET p(a,0),p(-a,0)=1
NEXT a 
FOR b=3 TO n STEP 4
   IF s(b)=1 THEN LET p(0,b),p(0,-b)=1
NEXT b
! 結果を図示する 
SET WINDOW -N, N, -N, N
MAT PLOT CELLS, IN -N,-N ; N, N : p
END
