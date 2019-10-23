! a/bを2進小数に変換する
! a,bは正の整数で，a<bと仮定します。
! いつまでも止まらないときは,強制終了させてください。
INPUT a,b
DO 
   LET a=2*MOD(a,b)
   IF a=0 THEN EXIT DO
   PRINT INT(a/b);
LOOP
END



