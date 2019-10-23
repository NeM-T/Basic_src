100 SET WINDOW -4,4,-4,4
110 DRAW grid
120 FOR t=0 TO 2*pi STEP pi/180
130    LET x=cos(t)+1
140    LET y=sin(t)
150    LET r=x^2+y^2
160    LET a=ANGLE(x,y)*2
170    PLOT LINES: r*cos(a),r*sin(a);
180 NEXT t 
190 END


