option arithmetic complex
! z��1�𒆐S�Ƃ��锼�a1�̉~��𓮂��Ƃ� 
! w^2=z �ƂȂ�w�̋O�Ղ�`��
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
