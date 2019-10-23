option arithmetic complex
! zが直線x=t+1,y=2t上を動くとき w=sqr(z) の軌跡を描く
let a=8
set window -a,a,-a,a
draw grid
set point style 1
for t=-2*a to 2*a step 0.05
   let z=complex(t+1,2*t)
   set point color 3
   plot points: re(z),im(z)
   set point color 2
   let w=sqr(z)
   plot points: re(w),im(w)
   plot points: re(-w),im(-w)
next t  
end

