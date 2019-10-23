10 LET a=2
20 INPUT k
30 LET x=1
40 FOR i=1 TO k-1
50    LET x=MOD(x*a,k)
60 NEXT i
70 IF x<>1 AND k>a THEN PRINT k;"‚Í‡¬”‚Å‚·." ELSE PRINT k;"‚Í‘f”‚©‚à’m‚ê‚È‚¢"
80 END
