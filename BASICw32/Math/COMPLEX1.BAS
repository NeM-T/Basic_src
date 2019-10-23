100 ! zÇ™íºê¸y=axè„ÇìÆÇ≠Ç∆Ç´ 
110 !        w=z+1/z ÇÃãOê’Çï`Ç≠
120 INPUT a
130 LET s=8
140 SET WINDOW -s,s,-s,s
150 DRAW grid
160 SET POINT STYLE 1
170 FOR x=-s TO s STEP s/2000
180    LET y=a*x
190    SET POINT COLOR 3
200    PLOT POINTS: x,y
210    LET p=-1
220    IF x<>0 THEN 
230       LET r1=SQR(x^2+y^2)^p
240       LET a1=ANGLE(x,y)*p
250       LET u=x+r1*COS(a1)
260       LET v=y+r1*SIN(a1)
270       SET POINT COLOR 2
280       PLOT POINTS: u,v
290    END IF
300 NEXT X
310 END
     
     
