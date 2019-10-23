def f(x)=a*sin(x)
let a=2.95
let x0=2                       ! initial value
let left=-0.5
let right=3.5
let bottom=-0.5
let top=3.5
set window left,right,bottom,top
draw axes
set line color 7
for x=left to right step 0.1   ! graph of y=f(x)
   plot lines:x,f(x);
next x
plot lines
plot left,left;right,right     ! straight line y=x
let x=x0                       ! initial value
set line color 3
for i=1 to 300
   if i=200 then set line color 2 
   plot lines:x,x;x,f(x);
   let x=f(x)
   print x
next i
end

