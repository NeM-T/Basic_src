! MAT PLOT LINESを利用すると，破線や点線で曲線を描くことができる。
! Windows 2000, Windows XP（多分，Windows NTも）では，
!　line styleとline widthを同時に指定することができる。
! SET LINE WIDTH はJIS規格外の命令です。
OPTION ANGLE DEGREES
OPTION BASE 0
DIM x(360),y(360)
SET WINDOW -2,2,-2,2
DRAW GRID
SET LINE COLOR 2         ! 青
SET LINE STYLE 4         ! 一点鎖線
SET LINE WIDTH 3         ! 通常の3倍の太さ
FOR t=0 TO 360
   LET r=2*SIN(2*t)      !  正葉線
   LET x(t)=r*COS(t)
   LET y(t)=r*SIN(t)
NEXT t
MAT PLOT LINES: x,y 
END
