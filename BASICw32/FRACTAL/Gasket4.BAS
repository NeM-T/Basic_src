SUB gasket(x,y,s)
   IF s<1/2000 THEN
      PLOT POINTS : x,y
   ELSE
      CALL gasket(x,y,s/2)
      CALL gasket(x+(s/2)*COS(PI/3),y+(s/2)*SIN(PI/3),s/2)
      CALL gasket(x+s/2,y,s/2)
   END IF
END SUB
SET WINDOW 0,1,0,1
SET POINT STYLE 1
CALL gasket(0,0,1)

END
