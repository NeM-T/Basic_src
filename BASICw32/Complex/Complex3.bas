option arithmetic complex
! z������y=ax+b��𓮂��Ƃ� 
!        w=z^2 �̋O�Ղ�`��
input prompt "a,b= ": a,b
let s=8
set window -s,s,-s,s
draw grid
set point style 1
for x=-s to s step s/1000
   let y=a*x+b
   let z=complex(x,y)
   let w=z^2
   set point color 3
   plot points: re(z),im(z)
   set point color 2
   plot points: re(w),im(w)
next x  
end
