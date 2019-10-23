! do行からloop行の間の各行が繰り返し実行される。
! exit do文を実行すると繰り返しを抜ける。
LET A=1
DO
   PRINT A
   IF A=10 THEN EXIT DO
   LET A=A+1
LOOP
END

