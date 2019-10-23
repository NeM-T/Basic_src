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
         let r0=sqr(x^2+y^2)
         let a0=angle(x,y)
         let r1=1/r0
         let a1=-a0
         plot points: r1*cos(a1),r1*sin(a1)
      use
      end when
   end if
loop until R=1 
end

