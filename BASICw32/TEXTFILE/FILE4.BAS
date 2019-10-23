LET F$="a:123.txt"
OPEN #1:NAME F$ ,ACCESS OUTPUT    ! 追加書き出し
!                       ! access outputでopenすると、erase文は実行できません。
FOR i=1 TO 10
   PRINT #1,USING "##   #.#####":i,SQR(i)
NEXT i
CLOSE #1
OPEN #2: NAME F$ ,ACCESS INPUT
DO 
   LINE INPUT #2,IF MISSING THEN EXIT DO:s$
   PRINT s$
LOOP
CLOSE #2
END







