! ”÷•ª•û’öŽ®y'=ay,y(0)=b‚Ì‹ßŽ—‰ð
INPUT a,b         ! ‚½‚Æ‚¦‚ÎC-1,5
LET x=0
LET y=b
LET dx=0.01
SET WINDOW 0,10,-5,5
DRAW grid
SET POINT STYLE 1
DO WHILE X<=10
   PLOT POINTS:x,y
   LET y=y+a*y*dx
   LET x=x+dx
LOOP
END

