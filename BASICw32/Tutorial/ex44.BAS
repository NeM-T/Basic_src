100 DIM a(10)
110 MAT INPUT a
120 FOR i=2 TO 10 
130    LET b=a(i)                   ! a(i)をbに退避する  
140    LET j=i                      ! bを挿入すべき位置をjに求める
150    DO WHILE j>1 AND a(j-1)>b
160       LET a(j)=a(j-1)           ! データを後方にずらす処理も同時に行う
170       LET j=j-1
180    LOOP
190    LET a(j)=b
200 NEXT i
210 MAT PRINT a;
220 END


