option arithmetic complex
! �ʑ� w=1/z
! �}�E�X�̍��{�^���������Ȃ��瓮�����ƁC w=1/z�ŕϊ������_��`���܂��B
! �}�E�X�E�{�^���������ƏI�����܂�
let a=4
set window -a,a,-a,a
draw grid
do 
   mouse poll x,y,L,R
   if L=1 then
      set point color 3
      plot points: x,y
      set point color 2
      when exception in
         let z=complex(x,y)
         let w=1/z
         plot points: re(w),im(w)
      use
      end when
   end if
loop until R=1 
end

