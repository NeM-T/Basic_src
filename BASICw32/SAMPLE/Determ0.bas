REM 配列引数の使用例
REM 小行列式を用いて行列式を計算する。
REM この算法は，行列の次数が高くなると効率が悪化する。
DECLARE EXTERNAL FUNCTION determinant
DECLARE NUMERIC s
DIM A(10,10)      ! 大きめの配列を用意
DATA 4                  ! 行列の次数
DATA   3,  9, 12, -6
DATA   1,  3,  4,  5
DATA   5,  6, 11,-37
DATA   1,  5, -4,  2
READ s
MAT READ A(s,s)
PRINT determinant(A)
END
EXTERNAL FUNCTION determinant(A(,))
DECLARE NUMERIC i,j,k,l,n,sum
DIM D(9,9)
LET n=UBOUND(A,1)  
! LBOUND(A,1)=LBOUND(A,2)=1, UBOUND(A,1)=UBOUND(A,2)と仮定
IF n=1 THEN
   LET determinant=a(1,1)
ELSE
   MAT D=ZER(n-1,n-1)
   LET sum=0
   FOR j=1 TO n
   ! (1,j)成分を除いた行列Dを作る
      FOR k=1 TO n-1   
         FOR l=1 TO n-1
            IF l<j THEN   
               LET  D(k,l)=A(k+1,l)
            ELSE
               LET  D(k,l)=A(k+1,l+1)
            END IF
         NEXT l
      NEXT k
      ! 余因数との積を加算する
      LET sum=sum+A(1,j)*(-1)^(1+j)*determinant(D)
   NEXT j
   LET determinant=sum
END IF
END FUNCTION
 
