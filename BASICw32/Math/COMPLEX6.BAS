! z‚ª1‚ğ’†S‚Æ‚·‚é”¼Œa1‚Ì‰~ã‚ğ“®‚­‚Æ‚« 
!                  w=z+1/z ‚Ì‹OÕ‚ğ•`‚­
let a=8
set window -a,a,-a,a
draw grid
set point style 1
for t=0 to 2*pi step pi/360
   let x=cos(t)+1
   let y=sin(t)
   set point color 3
   plot points: x,y
   let r0=sqr(x^2+y^2)
   let a0=angle(x,y)
   let r1=1/r0
   let a1=-a0
   let u=r1*cos(a1)
   let v=r1*sin(a1) 
   set point color 2
   plot points: x+u,y+v
next t  
end



