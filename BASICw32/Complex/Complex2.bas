option arithmetic complex
! z������y=ax+b��𓮂��Ƃ� 
!        w=1/z �̋O�Ղ�`��
input prompt "a,b=": a,b
let s=8
set window -s,s,-s,s
draw grid
set point style 1
for x=-s to s step s/3200
   let y=a*x+b
   set point color 3
   plot points:x,y
   when exception in
      let w=1/complex(x,y)
      set point color 2
      plot points: re(w),im(w)
   use
   end when
next x  
end





