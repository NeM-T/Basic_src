option arithmetic complex
! z��1�𒆐S�Ƃ��锼�a1�̉~��𓮂��Ƃ� w=1/z �̋O�Ղ�`��
let a=4
set window -a,a,-a,a
draw grid
set point style 1
for t=0 to 2*pi step pi/360
   let z=complex(1+cos(t),sin(t))
   set point color 3
   plot points: re(z),im(z)
   let w=1/z
   set point color 2
   plot points: re(w),im(w)
next t  
end
