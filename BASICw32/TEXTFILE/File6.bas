! 内部形式ファイル
LET F$="a:abcd.txt"
OPEN #1:NAME F$ ,RECTYPE INTERNAL
ERASE #1
FOR i=1 TO 10
   WRITE #1:i,SQR(i)
NEXT i
CLOSE #1
OPEN #2:NAME F$ ,RECTYPE INTERNAL
DO 
   READ #2,IF MISSING THEN EXIT DO:a,b
   PRINT a,b
LOOP
CLOSE #2
END



