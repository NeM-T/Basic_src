! z‚ª1‚ğ’†S‚Æ‚·‚é”¼Œa1‚Ì‰~ã‚ğ“®‚­‚Æ‚« 
! w^2=z ‚Æ‚È‚éw‚Ì‹OÕ‚ğ•`‚­
let a=2
set window -a,a,-a,a
draw grid
set point style 1
for t=0 to 2*pi step pi/180
   let x=cos(t)+1
   let y=sin(t)
   set point color 3
   plot points: x,y
   let r0=sqr(x^2+y^2)
   let a0=angle(x,y)
   let r=sqr(r0)
   let a=a0/2
   set point color 2
   plot points: r*cos(a),r*sin(a)
   let a=a+pi
   plot points: r*cos(a),r*sin(a)
next t  
end
