10 ! ê≥ótê¸(rose curve) r=sin nÉ∆
20 LET n=2                    ! INPUT n
30 SET WINDOW -1,1,-1,1
40 DRAW axes
50 FOR t=0 TO 2*PI STEP PI/180
60    LET r=sin(n*t)
70    PLOT LINES: r*cos(t),r*sin(t);
80 NEXT t
90 END

