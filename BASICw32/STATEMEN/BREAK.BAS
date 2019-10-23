FUNCTION gcd(a,b)
   IF b=0 THEN
      LET gcd=a
   ELSE
      LET gcd=gcd(b,mod(a,b))
   END IF
END FUNCTION
INPUT a,b
DEBUG ON                   ! break文を有効にする。
BREAK                      ! プログラムの実行を中断してﾃﾞﾊﾞｯｸﾞを可能にする。
PRINT gcd(a,b)
END




