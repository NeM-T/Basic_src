100 ! 挿入ソート
110 DATA 58,19,40,28,79,45,38,16,30,52
120 DIM a(10)
130 MAT READ a
140 !  a(1)..a(i-1)が整列されているものとして，a(i)を適切な位置に挿入して，a(1)..a(i)が整列された状態となるようにする。
150 FOR i=2 TO 10 
160    LET b=a(i)
170    LET j=i-1
180    DO WHILE j>0 AND a(j)>b
190       LET a(j+1)=a(j)
200       LET j=j-1
210    LOOP
220    LET a(j+1)=b
230    MAT PRINT a;
240 NEXT i
250 END
