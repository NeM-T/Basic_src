REM 行列の階数(rank)
DATA 4,5      ! 行列の次数
DATA 2,1,3,5,4
DATA 1,-1,3,-2,5
DATA 1,2,0,7,1
DATA 1,0,2,1,4
DECLARE EXTERNAL FUNCTION rank
DECLARE NUMERIC m,n
DIM A(10,10)  ! 大き目の配列を用意しておく
READ m,n
MAT READ A(m,n)
PRINT using "rank=##":rank(A)
END
EXTERNAL FUNCTION rank(A(,))
DECLARE EXTERNAL FUNCTION gcd
DECLARE NUMERIC i,j,k,m,n,t,u,g
LET m=UBOUND(A,1)
LET n=UBOUND(A,2)
FOR k=1 TO MIN(m,n)
   LET i=k
   DO WHILE i<=m AND A(i,k)=0 
      LET i=i+1
   LOOP
   IF k<i AND i<=m THEN
      PRINT i;"行と";k;"行を入れ替える"
      FOR j=1 TO n 
         LET t=A(i,j)
         LET A(i,j)=A(k,j)
         LET A(k,j)=t
      NEXT j
      MAT PRINT A;
   ELSEIF m<i THEN
      LET i=k
      DO WHILE i<=n AND A(k,i)=0 
         LET i=i+1
      LOOP
      IF i<=n THEN
         PRINT i;"列と";k;"列を入れ替える"
         FOR j=1 TO m 
            LET t=A(j,i)
            LET A(j,i)=A(j,k)
            LET A(j,k)=t
         NEXT j
         MAT PRINT A;
      ELSE
         EXIT FOR
      END IF  
   END IF
   !掃き出し計算
   FOR j=k+1 TO m
      LET t=A(k,k)
      LET u=A(j,k)
      LET g=gcd(t,u)
      LET t=t/g
      LET u=u/g
      PRINT j;"行を";t;"倍し，";k;"行の";u;"倍を引く"
      FOR i=1 TO n
         LET A(j,i)=A(j,i)*t-A(k,i)*u
      NEXT i
   NEXT j  
   MAT PRINT A;
NEXT k
LET rank=k-1
END FUNCTION
 
EXTERNAL FUNCTION gcd(a,b)
IF b=0 THEN LET gcd=a ELSE LET  gcd=gcd(B,MOD(a,b))
END FUNCTION
