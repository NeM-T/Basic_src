100 REM 掃き出し法により連立方程式の解を求める
110 DIM A(3,4)
120 DATA 0, 2, 3, 1                   !    2y+3z= 1
130 DATA 1, 1, 1, 6                   !  x +y +z= 6
140 DATA 3, 1,-1,-2                   ! 3x +y -z=-2
150 MAT READ A
160 FUNCTION GCD(A,B)
170    IF B=0 THEN
180       LET GCD=A
190    ELSE
200       LET GCD=GCD(B,MOD(A,B))
210    END IF
220 END FUNCTION
230 SET ZONEWIDTH 9
240 FOR I=1 TO 3
250    FOR J=1 TO 3
260       LET G=0
270       FOR K=1 TO 4
280          LET G=GCD(G,A(J,K))
290       NEXT K
300       IF G<>1 AND G<>-1 AND G<>0 THEN
310          PRINT "第";J;"行を";G;"で割る。"
320          FOR K=1 TO 4
330             LET A(J,K)=A(J,K)/G
340          NEXT K
350          MAT PRINT A
360       END IF
370    NEXT J
380    IF A(I,I)=0 THEN
390       LET J=I+1
400       DO UNTIL J=4 OR A(J,I)<>0
410          LET J=J+1
420       LOOP
430       IF J<4 THEN
440          PRINT "第";I;"行と第";J;"行を入れ換える。"
450          FOR K=1 TO 4
460             LET W=A(I,K)
470             LET A(I,K)=A(J,K)
480             LET A(J,K)=W
490          NEXT K
500          MAT PRINT A
510       END IF
520    END IF
530    IF A(I,I)<>0 THEN
540       FOR J=1 TO 3
550          IF J<>I THEN
560             LET C=A(J,I)
570             LET D=A(I,I)
580             LET G=GCD(C,D)
590             LET C=C/G
600             LET D=D/G
610             IF D<>1 THEN
620                PRINT "第";J;"行を";D;"倍する。"
630                FOR K=1 TO 4
640                   LET A(J,K)=A(J,K)*D
650                NEXT K
660                MAT PRINT A
670             END IF
680             PRINT "第";J;"行から第";I;"行の";C;"倍を引く。"
690             FOR K=1 TO 4
700                LET A(J,K)=A(J,K)-A(I,K)*C
710             NEXT K
720             MAT PRINT A
730          END IF
740       NEXT J
750    END IF
760 NEXT I
770 FOR I=1 TO 3
780    LET D=A(I,I)
790    IF D<>0 THEN
800       PRINT "第";I;"行を";D;"で割る。"
810       FOR K=1 TO 4
820          LET A(I,K)=A(I,K)/D
830       NEXT K
840    END IF
850 NEXT I
860 MAT PRINT A
870 END
