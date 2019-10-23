100 DIM a(10)
110 MAT INPUT a
120 FOR i=1 TO 9 
130    LET k=i                         ! kは最小値の番号
140    FOR j=i+1 TO 10
150       IF a(j)<a(k) THEN LET k=j
160    NEXT j
170    LET t=a(i)                      ! tを作業用の変数として用いて
180    LET a(i)=a(k)                   ! a(k)とa(i)の値を交換する 
190    LET a(k)=t
200 NEXT i
210 MAT PRINT a;
220 END


