! exit for•¶‚ðŽÀs‚·‚é‚ÆCfor`next‚ÌŒJ‚è•Ô‚µ‚©‚ç”²‚¯‚éB
INPUT n
FOR k=2 TO SQR(n)
   IF MOD(n,k)=0 THEN EXIT FOR
NEXT k
IF k<=SQR(n) THEN LET s$="‡¬”" ELSE LET s$="‘f”"
PRINT n;"‚Í";s$
END

