REM Chaos Game
SET WINDOW 0,1,0,1
SET POINT STYLE 1
LET x=1/2
LET y=1/2
FOR i=1 TO 100000
   SELECT CASE INT(RND*3)
   CASE 0   
      LET x=x/2
      LET y=y/2
   CASE 1
      LET x=(1+x)/2
      LET y=y/2
   CASE 2
      LET x=(x+1/2)/2
      LET y=(y+SQR(3)/2)/2
   END SELECT
   PLOT POINTS: x, y
NEXT i

END
