! z‚ª’¼üx=t+1,y=2tã‚ğ“®‚­‚Æ‚« w=sqr(z) ‚Ì‹OÕ‚ğ•`‚­
let a=8
set window -a,a,-a,a
draw grid
set point style 1
for t=-2*a to 2*a step 0.05
   let x=t+1
   let y=2*t
   set point color 3
   plot points: x,y
   set point color 2
   let r0=sqr(x^2+y^2)
   let a0=angle(x,y)
   let r1=sqr(r0)
   let a1=a0/2
   plot points: r1*cos(a1),r1*sin(a1)
   let a1=a1+pi
   plot points: r1*cos(a1),r1*sin(a1)
next t  
end

