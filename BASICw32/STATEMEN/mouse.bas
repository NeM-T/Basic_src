! MOUSE POLLはJIS規格外の命令。
! MOUSE POLL x,y,l,r  は，現在のマウスカーソルの位置を
! 変数x,yに代入し，マウス左右ボタンの状態を変数l,rに代入する。
! ボタンが押されていると，l,rの値は1になる。
! ボタンが押されていないときの値は0である。
!
! 次のプログラムは，
! マウス左ボタンを押しながらマウスを移動すると曲線を描く。
! マウス右ボタンを押すと終了する。
DO
   MOUSE POLL x,y,l,r
   IF l=1 THEN PLOT LINES: x,y; ELSE PLOT LINES
LOOP UNTIL r=1
END