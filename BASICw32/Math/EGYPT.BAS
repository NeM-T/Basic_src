100 REM エジプトの分数
110 REM a/bを分子が1の分数の和に表す。
120 REM 入力は，a<bと仮定する。
130 INPUT a,b
140 DO UNTIL a=0
150    LET n=CEIL(b/a)
160    PRINT "+ 1/" ; n ; 
170    LET a=n*a-b
180    LET b=n*b
190 LOOP
200 END
