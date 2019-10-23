! ellipse
set window -4,4,-4,4
draw grid
for t=0 to 2*pi step pi/180
    plot 3*cos(t),2*sin(t);
next t
END


