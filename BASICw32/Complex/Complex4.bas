option arithmetic complex
! 写像 w=1/z
! マウスの左ボタンを押しながら動かすと， w=1/zで変換した点を描きます。
! マウス右ボタンを押すと終了します
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

