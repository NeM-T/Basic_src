! elseifs
INPUT a,b,c
LET D=b^2-4*a*c
IF D>0 THEN
   PRINT (-b-SQR(D))/2/a,(-b+SQR(D))/2/a
ELSEIF D=0 THEN                          ! ELSE‚ÆIF‚ÌŠÔ‚É‹ó”’‚ð’u‚©‚¸‚É’Ô‚é
   PRINT -b/2/a
ELSE
   PRINT "‰ð‚È‚µ"
END IF
END


