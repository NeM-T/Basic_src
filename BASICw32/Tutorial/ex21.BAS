10 DEF f(x)=SQR(x)
20 FOR i=1 TO 15
30    LET h=10^(-i)
40    PRINT h, (f(2+h)-f(2))/h 
50 NEXT i
60 END

