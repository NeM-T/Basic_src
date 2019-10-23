INPUT a,b,c                ! ŽÀsŽžC‚R”‚ðƒRƒ“ƒ}‚Å‹æØ‚Á‚Ä“ü—Í‚·‚é
! ‚QŽŸ•û’öŽ®‚Ì‰ð‚ð‹‚ß‚é
LET D=b^2-4*a*c
IF D>=0 THEN
   PRINT (-b-SQR(D))/2/a,(-b+SQR(D))/2/a
ELSE
   PRINT "‰ð‚È‚µ"
END IF
END




