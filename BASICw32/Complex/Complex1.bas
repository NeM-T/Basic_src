! z‚ª’¼üy=axã‚ð“®‚­‚Æ‚« 
!        w=z+1/z ‚Ì‹OÕ‚ð•`‚­
OPTION ARITHMETIC COMPLEX
INPUT a
LET s=8
SET WINDOW -s,s,-s,s
DRAW grid
SET POINT STYLE 1
FOR x=-s TO s STEP s/10000
   LET y=a*x
   SET POINT COLOR 3
   PLOT POINTS: x,y
   LET p=-1
   IF x<>0 THEN 
      LET z=COMPLEX(x,y)
      LET w=z+1/z
      SET POINT COLOR 2
      PLOT POINTS: Re(w),Im(w)
   END IF
NEXT x
END


