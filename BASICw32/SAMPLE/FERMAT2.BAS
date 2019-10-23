! ‘f”‚Å‚È‚¢‚±‚Æ‚ð”»’è‚·‚é
!i‘f”‚Å‚ ‚é‚Æ’f’è‚·‚é‚±‚Æ‚Í‚Å‚«‚È‚¢j
LET a=2
INPUT k
LET n=k-1
LET x=1
LET p=a
DO WHILE n>0
   IF MOD(n,2)=1 THEN LET x=MOD(x*p,k)
   LET n=INT(n/2)
   LET p=MOD(p*p,k)
LOOP
IF x<>1 AND k>a THEN PRINT k;"‚Í‡¬”‚Å‚·." ELSE PRINT k;"‚Í‘f”‚©‚à’m‚ê‚Ü‚¹‚ñ"
END


