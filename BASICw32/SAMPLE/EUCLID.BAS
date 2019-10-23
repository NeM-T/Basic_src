! ax+by=GCD(a,b)Ç∆Ç»ÇÈêÆêîx,yÇ∆GCD(a,b)ÇãÅÇﬂÇÈ
INPUT a,b  
CALL Euclid(a,b,x,y,g)
PRINT x,y,g
END
!
EXTERNAL SUB Euclid(a,b,x,y,g)
LET q=int(a/b)
LET r=mod(a,b) 
IF r=0 THEN
  LET x=0
  LET y=1
  LET g=b
ELSE 
  CALL Euclid(b,r,u,v,g)
  LET x=v
  LET y=u-q*v
END IF
END SUB
