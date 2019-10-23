! çáìØïœä∑ÇóòópÇµÇƒåJÇËï‘ÇµñÕólÇï`Ç≠
SET WINDOW -10,10,-10,10
FOR x=-8 TO 8 STEP 2
   FOR y=-10 TO 10 STEP 2 
      SET AREA COLOR  MOD(x-y,7)+1
      SET LINE COLOR MOD(x-y,7)+1
      DRAW crotchet WITH ROTATE((x+y)*pi/3)*SHIFT(x,y)
   NEXT y
NEXT x
END

EXTERNAL PICTURE crotchet
OPTION ANGLE DEGREES
PICTURE wave
   FOR t=-90 TO 180 STEP 20
      PLOT (t+90)/180,(sin(t)+1)/3;
   NEXT t
   PLOT LINES
END PICTURE
PICTURE circle
   DIM P(18,2)
   FOR t=1 TO 18  
      LET P(t,1)=cos(20*t)
      LET P(t,2)=sin(20*t)
   NEXT t
   MAT PLOT AREA: P
END PICTURE
DRAW circle WITH SCALE(1,0.7)*ROTATE(30)*SCALE(0.22)
PLOT LINES: 0.2,0.1; 0.2,1
DRAW wave WITH ROTATE(-90) *SCALE(0.5) *SHIFT(0.2,1)
END PICTURE



