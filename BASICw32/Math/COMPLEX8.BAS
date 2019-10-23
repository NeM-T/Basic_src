! z‚ª0‚ğ’†S‚Æ‚·‚é”¼Œar‚Ì‰~ã‚ğ“®‚­‚Æ‚« 
!                  w=z+1/z ‚Ì‹OÕ‚ğ•`‚­
let r=2
let a=4
set window -a,a,-a,a
draw grid
set point style 1
for t=0 to 2*pi step pi/360
   let x=r*cos(t)
   let y=r*sin(t)
   set point color 3
   plot points: x,y
   set point color 2
   let r0=sqr(x^2+y^2)
   let a0=angle(x,y)
   let r1=1/r0
   let a1=-a0
   let u=x+r1*cos(a1)
   let v=y+r1*sin(a1) 
   plot points: u,v
next t  
end
