100 ! 自然数の分割
110 DECLARE EXTERNAL SUB p
120 INPUT n
130 FOR k=1 TO n
140    CALL p(n,k,"",0)
150 NEXT k
160 END
170 EXTERNAL SUB p(n,k,s$,a)
180 ! nをk個の自然数の和に分割する
190 ! s$に続き，aを加算して表示する
200 IF k=1 THEN
210    PRINT s$; n+a
220 ELSEIF k<n THEN
230    CALL p(n-1, k-1, s$ & " " & STR$(1+a) & " +", a)
240    CALL p(n-k, k, s$, a+1)
250 ELSEIF k=n THEN 
260    PRINT s$; 
270    FOR j=1 TO k-1
280       PRINT 1+a; "+";
290    NEXT j
300    PRINT 1+a
310 END IF
320 END SUB
     
