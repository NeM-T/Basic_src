100 SUB rotx(x,y,z,a)
110    LET y0=y*cos(a)-z*sin(a)
120    LET z0=y*sin(a)+z*cos(a)
130    LET y=y0
140    LET z=z0
150 END SUB
160 SUB roty(x,y,z,a)
170    LET x0=x*cos(a)+z*sin(a)
180    LET z0=-x*sin(a)+z*cos(a)
190    LET x=x0
200    LET z=z0
210 END SUB
220 SUB rotz(x,y,z,a)
230    LET x0=x*cos(a)-y*sin(a)
240    LET y0=x*sin(a)+y*cos(a)
250    LET x=x0
260    LET y=y0
270 END SUB
280 SUB convert(x,y,z)
290    CALL rotz(x,y,z,-30*PI/180)
300    CALL rotx(x,y,z,-70*PI/180)
310 END SUB
320 SUB plotTo(x,y,z)
330    LET x1=x
340    LET y1=y
350    LET z1=z
360    CALL convert(x1,y1,z1)
370    PLOT LINES:x1,y1;
380 END SUB
390 SUB PenUp
400    PLOT LINES
410 END SUB
420 SUB PlotText(x,y,z,s$)
430    CALL convert(x,y,z)
440    PLOT TEXT ,AT x,y: s$
450 END SUB
460 !
470 DEF f(x,y)=x^2-y^2
480 LET s=1.4
490 SET WINDOW -s,s,-s,s
500 ! Ž²‚ð•`‚­
510 CALL PlotTo(0,0,0)
520 CALL PlotTo(1,0,0)
530 CALL PlotTo(0,0,0)
540 CALL PlotTo(0,1,0)
550 CALL PlotTo(0,0,0)
560 CALL PlotTo(0,0,1)
570 CALL PenUp
580 CALL PlotText(1,0,0,"x")
590 CALL PlotText(0,1,0,"y")
600 CALL PlotText(0,0,1,"z")
610 ! ‹È–Ê‚ð•`‚­
620 FOR x=-1 TO 1 step 0.1
630    FOR y=-1 TO 1 step 0.1
640       LET z=f(x,y)
650       CALL PlotTo(x,y,z)
660    NEXT y
670    CALL PenUp
680 NEXT x
690 FOR y=-1 TO 1 step 0.1
700    FOR x=-1 TO 1 step 0.1
710       LET z=f(x,y)
720       CALL PlotTo(x,y,z)
730    NEXT x
740    call PenUp
750 NEXT y
760 END

