10 FOR x=1 TO 100
20    FOR y=x TO 100
30       LET z=SQR(x^2+y^2)
40       IF INT(z)=z THEN PRINT x,y,z
50    NEXT y
60 NEXT x
70 END
