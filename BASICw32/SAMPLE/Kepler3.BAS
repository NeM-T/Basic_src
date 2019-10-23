REM 両対数グラフ
REM 軌道半径, 公転周期（地球を１とする）
DATA  0.39,  0.241 ,水星
DATA  0.72,  0.615 ,金星
DATA  1   ,  1     ,地球
DATA  1.52,  1.88  ,火星
DATA  5.20, 11.86  ,木星
DATA  9.55, 29.46  ,土星
DATA 19.2 , 84.01  ,天王星
DATA 30.1 , 164.8  ,海王星
SET WINDOW -1,3,-1,3
SET LINE COLOR 15
SET TEXT COLOR 15
FOR n=-1 TO 2
   FOR a=1 TO 9
      LET x=a*10^n
      PLOT LINES : LOG10(x),-1; LOG10(x),3
   NEXT a
   PLOT TEXT , AT n,-1: STR$(10^n)
NEXT n
FOR m=-1 TO 3
   FOR b=1 TO 9
      LET y=b*10^m
      PLOT LINES : -1,LOG10(y);3,LOG10(y)
   NEXT b
   PLOT TEXT , AT -1, m:STR$(10^m)
NEXT m
SET TEXT COLOR 1
SET TEXT JUSTIFY "left","top"
DO 
   READ IF MISSING THEN EXIT DO: x,y,s$
   LET a=LOG10(x)
   LET b=LOG10(y)
   PLOT POINTS: a, b
   PLOT TEXT ,AT a,b: s$
LOOP 
END
