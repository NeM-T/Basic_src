REM 掃き出し法により行列式の値を計算する。
DATA 4                  ! 行列の次数
DATA   3,  9, 12, -6
DATA   1,  3,  4,  5
DATA   5,  6, 11,-37
DATA   1,  5, -4,  2
DECLARE NUMERIC i,j,k,s,t,u,g,determ
DIM A(10,10)   ! 大きめの配列を用意
READ s
MAT READ A(s,s)
MAT PRINT A;
LET determ=1
FOR k=1 TO s
! 枢軸交換
   LET i=k
   DO WHILE i<=s AND A(i,k)=0 
      LET i=i+1
   LOOP
   IF i>s THEN
      LET determ=0
      EXIT FOR
   ELSEIF i<>k THEN
      PRINT i;"行と";k;"行を入れ替える"
      LET determ=-determ
      FOR j=1 TO s 
         LET t=A(i,j)
         LET A(i,j)=A(k,j)
         LET A(k,j)=t
      NEXT j
      MAT PRINT A;
   END IF
   !掃き出し計算
   LET t=A(k,k)
   PRINT k;"行を";t;"で割る"
   LET determ=determ*t
   FOR i=1 TO s
      LET A(k,i)=A(k,i)/t
   NEXT i
   MAT PRINT A;
   FOR j=k+1 TO s
      LET u=A(j,k)
      PRINT j;"行から";k;"行の";u;"倍を引く"
      FOR i=1 TO s
         LET A(j,i)=A(j,i)-A(k,i)*u
      NEXT i
   NEXT j  
   MAT PRINT A;
NEXT k

PRINT determ  
END
 
