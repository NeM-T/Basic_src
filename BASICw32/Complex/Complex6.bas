option arithmetic complex
! zが1を中心とする半径1の円上を動くとき 
!                  w=z+1/z の軌跡を描く
let a=8
set window -a,a,-a,a
draw grid
set point style 1
for t=0 to 2*pi step pi/360
   let z=complex(cos(t)+1,sin(t))
   set point color 3
   plot points: re(z),im(z)
   let w=z+1/z
   set point color 2
   plot points: re(w),im(w)
next t  
end



