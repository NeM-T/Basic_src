! solving the equation x=f(x)
def f(x)=2*sin(x)
let x0=1                       ! initial value
let left=-0.5
let right=3.5
let bottom=-0.5
let top=3.5
set window left,right,bottom,top
set line color 7
draw axes
set line color 4
for x=left to right step 0.1   ! graph of y=f(x)
   plot lines:x,f(x);
next x
plot lines
plot left,left;right,right     ! straight line y=x
set line color 7
let x=x0                       ! initial value
do until abs(x-f(x))<=eps(x)*10
   plot lines: x,x;x,f(x);
   let x=f(x)
   print x
loop
end



