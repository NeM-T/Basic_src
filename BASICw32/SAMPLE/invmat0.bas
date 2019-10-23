100 REM 掃き出し法により逆行列を計算する。
110 DATA 4                  ! 行列の次数
120 DATA 0,0,1,-2
130 DATA 3,2,1,4
140 DATA 3,2,2,0
150 DATA 5,0,-4,0
160 DECLARE NUMERIC i,j,k,s,t,u
170 DIM A(10,10),B(10,10)   ! 大きめの配列を用意
180 READ s
190 MAT READ A(s,s)
200 MAT B=IDN(s)     ! プログラム終了時のBが求める逆行列
210 FOR k=1 TO s
220    ! 枢軸交換
230    LET i=k
240    DO WHILE i<=s AND A(i,k)=0 
250       LET i=i+1
260    LOOP
270    IF i>s THEN
280       PRINT "逆行列は存在しない"
290       STOP
300    ELSEIF i<>k THEN
310       PRINT k;"行と";i;"行を入れ替える"
320       FOR j=1 TO s 
330          LET t=A(i,j)
340          LET A(i,j)=A(k,j)
350          LET A(k,j)=t
360       NEXT j
370       FOR j=1 TO s 
380          LET t=B(i,j)
390          LET B(i,j)=B(k,j)
400          LET B(k,j)=t
410       NEXT j
420       CALL Display
430    END IF
440    !掃き出し計算
450    LET t=A(k,k)
460    PRINT k;"行を";t;"で割る"
470    FOR i=1 TO s
480       LET A(k,i)=A(k,i)/t
490    NEXT i
500    FOR i=1 TO s
510       LET B(k,i)=B(k,i)/t
520    NEXT i
530    CALL Display
540    ! 
550    FOR j=1 TO s
560       IF j<>k THEN
570          LET u=A(j,k)
580          PRINT j;"行から";k;"行の";u;"倍を引く"
590          FOR i=1 TO s
600             LET A(j,i)=A(j,i)-A(k,i)*u
610          NEXT i
620          FOR i=1 TO s
630             LET B(j,i)=B(j,i)-B(k,i)*u
640          NEXT i
650       END IF
660    NEXT j  
670    CALL Display
680 NEXT k
690  
700 SUB Display
710    PRINT "A"
720    MAT PRINT A
730    PRINT "B"
740    MAT PRINT B
750 END SUB
760  
770 END
