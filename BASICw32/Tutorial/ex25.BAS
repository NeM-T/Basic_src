10 INPUT a,b,c
20 LET D=b^2-4*a*c
30 IF D>=0 THEN
40    PRINT (-b-SQR(D))/(2*a), (-b+SQR(D))/(2*a)
50 ELSE
60    PRINT "‰ð‚È‚µ"
70 END IF
80 END


