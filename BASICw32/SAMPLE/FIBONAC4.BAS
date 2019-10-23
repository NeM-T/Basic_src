100 ! フィボナッチ数列の第ｎ項を高速に計算するアルゴリズム
105 !なるべく1000桁モード(または有理数モード)で実行してください。
110 DIM A(2),M(2,2),K(2,2)
120 DATA 0,1 
130 MAT READ A
140 DATA 0,1
150 DATA 1,1
160 MAT READ M
170 MAT K=IDN
180 INPUT n 
190 DO 
200    IF MOD(n,2)=1 THEN MAT K=K*M
210    LET n=INT(n/2)
220    IF n=0 THEN EXIT DO
230    MAT M=M*M 
240 LOOP 
250 MAT A=K*A
260 PRINT A(1)
270 END
     
     
     
     
