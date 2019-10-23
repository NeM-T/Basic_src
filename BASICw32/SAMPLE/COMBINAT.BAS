100 REM 1～nの集合からr個を選ぶ組合せを生成する。
110 DECLARE EXTERNAL SUB comb
120 DIM a(1000)
130 INPUT n,r
140 MAT a=ZER(n)
150 CALL comb(a,1,r)
160 END
170 EXTERNAL SUB comb(a(),k,r)
180 ! k以降の数からr個を選択する
190 IF r=0 THEN 
200    FOR i=1 TO UBOUND(a)
210       IF a(i)=1 THEN PRINT i;
220    NEXT i
230    PRINT 
240 ELSE
250    FOR i=k TO UBOUND(a)-r+1
260       LET a(i)=1
270       CALL comb(a,i+1,r-1)
280       LET a(i)=0
290    NEXT i
300 END IF 
310 END SUB
