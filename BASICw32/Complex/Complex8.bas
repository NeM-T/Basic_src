option arithmetic complex
! z‚ª0‚ğ’†S‚Æ‚·‚é”¼Œar‚Ì‰~ã‚ğ“®‚­‚Æ‚« 
!                  w=z+1/z ‚Ì‹OÕ‚ğ•`‚­
let r=2
let a=4
set window -a,a,-a,a
draw grid
set point style 1
for t=0 to 2*pi step pi/360
   let z=r*complex(cos(t),sin(t))
   let w=z+1/z
   set point color 3
   plot points: re(z),im(z)
   set point color 2
   plot points: re(w),im(w)
next t  
end
