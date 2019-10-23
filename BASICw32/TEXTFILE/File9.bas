! 経路を副プログラムの引数にする例です。
! BASICでは，経路番号はプログラム単位ごとに独立しています。
LET F$="a:1221.txt"
OPEN #1:NAME F$
ERASE #1
FOR i=1 TO 10
   CALL sub1(#1,i)
NEXT i
CLOSE #1
OPEN #2:NAME F$
DO 
   LINE INPUT #2,IF MISSING THEN EXIT DO:s$
   PRINT s$
LOOP
CLOSE #2
END
EXTERNAL SUB sub1(#3,i)
PRINT #3:i 
END SUB
