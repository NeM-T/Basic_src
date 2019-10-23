! z‚ª’¼üy=ax+bã‚ğ“®‚­‚Æ‚« 
!        w=z^2 ‚Ì‹OÕ‚ğ•`‚­
input prompt "a,b= ": a,b
let s=8
set window -s,s,-s,s
draw grid
set point style 1
for x=-s to s step s/400
   let y=a*x+b
   set point color 3
   plot points: x,y
   let r0=sqr(x^2+y^2)
   when exception in
      let a0=angle(x,y)
   use
      let a0=0
   end when 
   let r1=r0^2
   let a1=a0*2
   set point color 2
   plot points: r1*cos(a1),r1*sin(a1)
next x  
end
