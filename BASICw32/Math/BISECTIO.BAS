! “ñ•ª–@‚ð—p‚¢‚Ä•½•ûª‚ð‹‚ß‚é
INPUT n
LET a=0
LET b=n
DO  
   LET m=(a+b)/2
   IF a=m OR m=b THEN EXIT DO
   IF n<m^2 THEN
      LET b=m
   ELSE
      LET a=m
   END IF
   PRINT a,b
LOOP
END




