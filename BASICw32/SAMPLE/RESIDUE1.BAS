! è—]Œn‚É‚¨‚¯‚éæŽZ
INPUT n
FOR a=1 TO n-1
  FOR b=1 TO n-1
    PRINT USING "###": MOD(a*b,n);
  NEXT b
  PRINT
NEXT a
END

