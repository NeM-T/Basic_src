! ユークリッドの互除法により2数の最大公約数を求める
! 2数は、小数でもよい.
FUNCTION gcd(a,b)
   IF b=0 THEN
      LET gcd=a
   ELSE
      LET gcd=gcd(b,MOD(a,b))
   END IF
END FUNCTION
INPUT a,b
PRINT gcd(a,b)
END


