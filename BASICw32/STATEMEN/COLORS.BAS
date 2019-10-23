! êFî‘çÜàÍóó
SET WINDOW 0,16,16,0
SET TEXT JUSTIFY "left","top"
SET TEXT HEIGHT 0.4
FOR y=0 TO 15
   FOR x=0 TO 15
      LET c=x+y*16
      SET AREA COLOR c
      PLOT AREA : x,y; x+1,y; x+1,y+1; x,y+1
      PLOT TEXT ,AT x,y:STR$(c)
   NEXT x
NEXT y
END 
