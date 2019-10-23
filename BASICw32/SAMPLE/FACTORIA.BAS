! äKèÊÇãÅÇﬂÇÈ
DECLARE EXTERNAL FUNCTION fact
INPUT n
PRINT fact(n)    
END

EXTERNAL FUNCTION fact(n)
   IF n=1 THEN
      LET fact=1
   ELSE 
      LET fact=n*fact(n-1)
   END IF
END FUNCTION

