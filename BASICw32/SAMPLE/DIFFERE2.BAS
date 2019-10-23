! ”÷•ª•û’öŽ®y''=ay,y'(0)=b,y(0)=c‚Ì‹ßŽ—‰ð
INPUT a,b,c      !‚½‚Æ‚¦‚ÎC-1,1,0
LET x=0
LET y1=b
LET y=c
LET dx=0.01
SET WINDOW 0,10,-5,5
DRAW grid
SET POINT STYLE 1
DO WHILE x<=10
   PLOT POINTS:x,y
   LET y1=y1+a*y*dx
   LET y=y+y1*dx
   LET x=x+dx
LOOP
END



