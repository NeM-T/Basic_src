10 LET c=0
20 LET s=1
30 FOR k=2 TO 30
40    LET c=SQR((1+c)/2)
50    LET s=s/c/2
60    PRINT 2^k,2^k*s
70 NEXT k
80 END
