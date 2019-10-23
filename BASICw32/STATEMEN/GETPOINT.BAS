! GET POINT: x,y
! マウスカーソルを表示してボタンが押されるのを待ち、
! 指定された点の座標を変数x,yに代入する。
! 3点を指定すると，3点を結ぶ三角形を描く。
GET POINT: x1,y1
GET POINT: x2,y2
GET POINT: x3,y3
PLOT LINES: x1,y1 ; x2,y2 ; x3,y3 ; x1,y1
END
 

