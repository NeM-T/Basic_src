! (1+1/x)^xのeへの収束の様子を調べる。
! この結果から，仮説を作ってみてください。
! そして，その根拠を数学的に追求してみてください。
OPTION ARITHMETIC DECIMAL
LET e=EXP(1)
PRINT "e=";e
LET i=1
DO
   LET k=10^i
   LET x=1+1/k
   IF x=1 THEN EXIT DO
   LET y=x^k
   PRINT k,y,y-e
   LET i=i+1
LOOP
END
