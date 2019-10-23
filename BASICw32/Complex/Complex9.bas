option arithmetic complex
! z‚ª1‚ğ’†S‚Æ‚·‚é”¼Œa1‚Ì‰~ã‚ğ“®‚­‚Æ‚« 
! w^2=z ‚Æ‚È‚éw‚Ì‹OÕ‚ğ•`‚­
let a=2
set window -a,a,-a,a
draw grid
set point style 1
for t=0 to 2*pi step pi/180
   let z=complex(cos(t)+1,sin(t))
   set point color 3
   plot points: re(z),im(z)
   let w=sqr(z)
   set point color 2
   plot points: re(w),im(w)
   plot points: re(-w),im(-w)
next t  
end
