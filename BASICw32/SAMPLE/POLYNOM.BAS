DECLARE EXTERNAL SUB plot_polynom
DECLARE NUMERIC i,x
SET TEXT HEIGHT 0.1
CALL plot_polynom(0,0,"y=2x~2-3x+1")
SET TEXT HEIGHT 0.06
CALL plot_polynom(0,0.2,"y=a_0x~2-a_1x+a_2")
SET TEXT HEIGHT 0.05
CALL plot_polynom(0,0.4,"y=(x+2)~2(x-1)")
SET TEXT HEIGHT 0.045
CALL plot_polynom(0,0.6, "y=e~2~x~+~1")
SET TEXT HEIGHT 0.03
LET x=0
FOR i=0 TO 9
   CALL plot_polynom(x,0.8,STR$(i))
NEXT i
FOR i=ORD("a") TO ORD("f")
   CALL plot_polynom(x,0.8,CHR$(i))
NEXT i
END

EXTERNAL SUB plot_polynom(x,y,exp$)
REM 多項式を表示する。
REM 上付き文字を~で，下付き文字を_で指定する。
REM x,yに変数を指定すると，値が更新される。

SUB TEXT(s$)
   local w,i,c$
   FOR i=1 TO LEN(s$)
      LET c$=s$(i:i)
      IF (c$>="A" AND c$<="Z") OR (c$>="a" AND c$<="z")  THEN
         SET TEXT FONT "Times New Roman Italic", 0
      ELSEIF c$="-" THEN
         SET TEXT FONT "Courier New", 0
      ELSE
         SET TEXT FONT "Times New Roman", 0
      END IF
      ASK TEXT WIDTH (c$) w
      PLOT TEXT ,AT x,y: c$
      LET x=x+w
   NEXT i
END SUB

SUB superscript(s$)
   LOCAL h,w
   ASK TEXT HEIGHT h
   SET TEXT HEIGHT 0.6*h
   LET y=y+h/2
   CALL TEXT(s$)
   LET y=y-h/2
   SET TEXT HEIGHT h
END SUB

SUB subscript(s$)
   LOCAL h,w
   ASK TEXT HEIGHT h
   SET TEXT HEIGHT 0.6*h
   LET y=y-0.1*h
   CALL TEXT(s$)
   LET y=y+0.1*h
   SET TEXT HEIGHT h
END SUB

DECLARE NUMERIC i,j,w
DECLARE STRING s$
LET i=1
DO UNTIL i>LEN(exp$)
   IF exp$(i:i)="~" THEN 
      LET i=i+1
      CALL superscript(exp$(i:i))
      LET i=i+1
   ELSEIF exp$(i:i)="_" THEN 
      LET i=i+1
      CALL subscript(exp$(i:i))
      LET i=i+1
   END IF
    
   LET j=i
   DO UNTIL j>LEN(exp$) OR exp$(j:j)="~" OR exp$(j:j)="_"
      LET j=j+1
   LOOP
    
   LET s$=exp$(i:j-1)
   CALL TEXT(s$)
   LET i=j
   LET x=x+w
LOOP

END SUB

