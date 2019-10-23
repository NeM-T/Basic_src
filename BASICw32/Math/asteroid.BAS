DECLARE EXTERNAL PICTURE circle0
LET a=4      
! LET a=3 ! a‚Ì’l‚ð•Ï‚¦‚Ä‚Ý‚æ‚¤
SET WINDOW -1.2,1.2,-1.2,1.2
FOR tt=0 TO 2*PI STEP PI/180
   SET DRAW MODE hidden 
   CLEAR
   DRAW axes
   SET LINE color 1
   DRAW circle
   DRAW circle0 WITH ROTATE(-(a-1)*t)*SCALE(1/a)*SHIFT((1-1/a)*COS(t),(1-1/a)*SIN(t))
   SET LINE COLOR 7
   FOR t=0 TO tt STEP PI/180
      LET x=(1-1/a)*COS(t)+(1/a)*COS((a-1)*t)
      LET y=(1-1/a)*SIN(t)-(1/a)*SIN((a-1)*t)
      PLOT LINES:x,y;
   NEXT t
   SET DRAW MODE explicit
   WAIT DELAY 0.04
NEXT tt
END

EXTERNAL PICTURE circle0
SET AREA COLOR 3
DRAW disk
SET AREA COLOR 7
DRAW disk WITH SCALE(0.05)*SHIFT(1,0)     ! ‚¿‚å‚Á‚Æ‘å‚«–Ú‚Ì“_‚ð‚©‚­
END PICTURE
