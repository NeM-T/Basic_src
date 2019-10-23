10 REM MicrosoftのAND演算とJISのANDとの違いが現れるプログラム
15 REM JISのANDは制御を目的としたものですが，MicrosoftのANDは整数に対するビット演算です。
20 REM Microsoft BASICでは，200行で，j=0のときにも，A(j)>bがテストされます。
30 REM JISモードとMicrosoftモードとに切り替えて実行してみてください。
100 REM 挿入ソート
110 DATA 58,19,40,28,79,45,38,16,30,52
120 OPTION BASE 0
130 DIM a(10)
140 FOR k=0 TO 9
150    READ a(k)
160 NEXT k
170 FOR i=1 TO 9 
180    LET b=a(i)
190    LET j=i-1
200    DO WHILE j>=0 AND a(j)>b
210       LET a(j+1)=a(j)
220       LET j=j-1
230    LOOP
240    LET a(j+1)=b
250    FOR k=0 TO 9
260       PRINT a(k);
270    NEXT k
280    PRINT
290 NEXT i
300 END
     
