100 ! 選択ソート
110 DATA 58,19,40,28,79,45,38,16,30,52
120 DIM a(10)
130 MAT READ a
140 FOR i=10 TO 2 STEP -1
150    !  a(1)..a(i)のうちの最大のものをa(i)と交換する。
160    LET k=1
170    FOR j=2 TO i
180       IF a(j)>a(k) THEN LET k=j
190    NEXT j
200    LET b=a(i)
210    LET a(i)=a(k)
220    LET a(k)=b
230    MAT PRINT a;
240 NEXT i
250 END
