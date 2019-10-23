10 DECLARE EXTERNAL SUB solve
20 INPUT a,b,c
30 WHEN EXCEPTION IN
40    CALL solve(a,x,b,y,c)
50    PRINT x,y
60 USE
70    PRINT "‰ð‚È‚µ"
80 END WHEN
90 END
100 EXTERNAL SUB solve(a,x,b,y,c)
110 IF b=0 THEN
120    IF MOD(c,a)=0 THEN
130       LET x=c/a
140       LET y=0
150    ELSE
160       CAUSE EXCEPTION 999
170    END IF
180 ELSE
190    LET q=INT(a/b)
200    LET r=MOD(a,b)
210    CALL solve(b,u,r,v,c)
220    LET x=v
230    LET y=u-q*v
240 END IF
250 END SUB
