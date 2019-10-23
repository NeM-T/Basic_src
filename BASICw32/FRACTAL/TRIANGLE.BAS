100 REM 少し待つと，三角形がダンスを始めます。
110 REM エンドレスなので，中断をクリックして終了させてください。
120 OPTION ARITHMETIC NATIVE
130 OPTION ANGLE DEGREES
140 PICTURE tragon(n,red,green,blue)
150    IF n=depth THEN
160       SET COLOR MIX (1) red,green,blue
170       PLOT POINTS: 0,0
180    ELSE
190       DRAW tragon(n+1,red+2^(-n),green,blue) WITH SCALE(1/SQR(3))*ROTATE(alpha) 
200       DRAW tragon(n+1,red,green+2^(-n),blue) WITH SHIFT(-2,0)*SCALE(1/SQR(3))*ROTATE(alpha)*SHIFT(2,0)
210       DRAW tragon(n+1,red,green,blue+2^(-n)) WITH SHIFT(-1,-SQR(3))*SCALE(1/SQR(3))*ROTATE(alpha)*SHIFT(1,SQR(3))
220    END IF
230 END PICTURE
240 SET POINT STYLE 1
250 SET POINT COLOR 1
260 SET WINDOW -3,5,-3,5
270 ASK PIXEL SIZE(-3,-3;5,5) px,py
280 LET depth=CEIL(-LOG(px-1)/LOG(1/SQR(3)))
290 LET alpha=0
300 DO
310    SET DRAW mode hidden
320    CLEAR 
330    DRAW tragon(1,0,0,0)
340    SET DRAW mode explicit
350    LET alpha=alpha+5
360 LOOP
370 END
