! ”½•œ–@‚É‚æ‚èC•û’ö®x=f(x)‚Ì‰ğ‚ğ‹‚ß‚é
def f(x)=cos(x)
let x0=0                       ! initial value
let left=-0.1
let right=1.9
let bottom=-0.1
let top=1.9
set window left,right,bottom,top
set line color 2
draw axes
set line color 3
for x=left to right step 0.1   ! graph of y=f(x)
   plot lines:x,f(x);
next x
plot lines
plot left,left;right,right     ! straight line y=x
set line color 2
let x=x0                       ! initial value
do until abs(x-f(x))<=eps(x)*10
   plot lines: x,x;x,f(x);
   let x=f(x)
   print x
loop
end




