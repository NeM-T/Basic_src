100 ! •¡‘f”•½–Êã‚Åz‚ª1‚ð’†S‚Æ‚·‚é‰~ã‚ð“®‚­‚Æ‚«‚Ìw=z^2‚Ì‹OÕ
110 LET a=4
120 SET WINDOW -a,a,-a,a
130 DRAW grid
140 SET POINT STYLE 1
150 FOR t=0 TO 2*pi STEP pi/180
160    LET x=cos(t)+1
170    LET y=sin(t)
180    SET POINT COLOR 4 
190    PLOT POINTS: x,y
200    LET r0=sqr(x^2+y^2)
210    LET a0=angle(x,y)
220    LET r=r0^2
230    LET a=a0*2
240    SET POINT COLOR 2
250    PLOT POINTS: r*cos(a),r*sin(a)
260 NEXT t 
270 END






