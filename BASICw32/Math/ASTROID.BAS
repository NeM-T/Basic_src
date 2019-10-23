DEF f(t)=(cos(t))^3
DEF g(t)=(sin(t))^3
SET WINDOW -2,2,-2,2
DRAW axes
FOR t=0 TO 2*pi STEP pi/180
  PLOT LINES: f(t),g(t);
NEXT t
END





