10 REM ÉsÉ^ÉSÉâÉXêî
20 FOR x=1 TO 100
30    FOR y=x+1 TO 100
40       LET z=SQR(x^2+y^2)
50       IF INT(z)=z THEN PRINT x;y;z
60    NEXT y
70 NEXT x
80 END
