! z‚ª’¼üy=ax+bã‚ğ“®‚­‚Æ‚« 
!        w=1/z ‚Ì‹OÕ‚ğ•`‚­
input prompt "a,b=": a,b
let s=8
set window -s,s,-s,s
draw grid
set point style 1
for x=-s to s step s/320
   let y=a*x+b
   set point color 3
   plot points:x,y
   let p=-1
   when exception in
      let r1=sqr(x^2+y^2)^p
      let a1=angle(x,y)*p
      let u=r1*cos(a1)
      let v=r1*sin(a1)
      set point color 2
      plot points: u,v
   use
   end when
next x  
end





