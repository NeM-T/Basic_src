100 REM 掃き出し法により逆行列を計算する。
110 REM 途中の計算で除算を避けて計算する。
120 DATA 4                  ! 行列の次数
130 DATA 0,0,1,-2
140 DATA 3,2,1,4
150 DATA 3,2,2,0
160 DATA 5,0,-4,0
170 DECLARE EXTERNAL FUNCTION gcd
180 DECLARE NUMERIC i,j,k,s,t,u,g
190 DIM A(10,10),B(10,10)   ! 大きめの配列を用意
200 READ s
210 MAT READ A(s,s)
220 MAT B=IDN(s)     ! プログラム終了時のBが求める逆行列
230 CALL Display
240  
250 FOR k=1 TO s
260    ! 枢軸交換
270    LET i=k
280    DO WHILE i<=s AND A(i,k)=0 
290       LET i=i+1
300    LOOP
310    IF i>s THEN
320       PRINT "逆行列は存在しない"
330       STOP
340    ELSEIF i<>k THEN
350       PRINT i;"行と";k;"行を入れ替える"
360       FOR j=1 TO s 
370          LET t=A(i,j)
380          LET A(i,j)=A(k,j)
390          LET A(k,j)=t
400       NEXT j
410       FOR j=1 TO s 
420          LET t=B(i,j)
430          LET B(i,j)=B(k,j)
440          LET B(k,j)=t
450       NEXT j
460       CALL Display
470    END IF
480    !掃き出し計算
490    FOR j=1 TO s
500       IF j<>k THEN
510          LET t=A(k,k)
520          LET u=A(j,k)
530          LET g=gcd(t,u)
540          LET t=t/g
550          LET u=u/g
560          PRINT J;"行を";t;"倍し，";k;"行の";u;"倍を引く"
570          FOR i=1 TO s
580             LET A(j,i)=A(j,i)*t-A(k,i)*u
590             LET b(j,i)=B(j,i)*t-B(k,i)*u
600          NEXT i
610       END IF
620    NEXT j  
630    CALL Display
640 NEXT k
650 FOR k=1 TO s
660    LET t=A(k,k)
670    PRINT k;"行を";t;"で割る"
680    FOR i=1 TO s
690       LET A(k,i)=A(k,i)/t
700    NEXT i
710    FOR i=1 TO s
720       LET B(k,i)=B(k,i)/t
730    NEXT i
740 NEXT k
750 CALL Display
760  
770 SUB Display
780    PRINT "A"
790    MAT PRINT A;
800    PRINT "B"
810    MAT PRINT B;
820 END SUB
830  
840 END
850  
860 EXTERNAL FUNCTION gcd(a,b)
870 IF b=0 THEN LET gcd=a ELSE LET  gcd=gcd(B,MOD(a,b))
880 END FUNCTION
