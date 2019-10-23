OPTION ANGLE DEGREES 
SET WINDOW -1,1,-1,1
!INPUT n
LET n = 4

DO 
   LET o=0
   LET a=5
   LET flag=0
   DO 
      SET DRAW mode hidden
      CLEAR 
      LET o=o+a
      SET LINE width 1
      DRAW circle WITH SCALE (0.25)
      FOR c=1 TO n
         PLOT LINES:0,0;0.25*COS(c*360/n+o),0.25*SIN(c*360/n+o)
      NEXT c
      mouse poll x,y,left,right
      IF left =1 THEN LET flag=1
      IF flag=1 THEN LET a=a-.01
      SET LINE width 3
      PLOT LINES:0,0;0.25,0
      SET DRAW MODe explicit
      WAIT DELAY 0.001
   LOOP UNTIL a<=0
   INPUT q
LOOP UNTIL q=1
END
