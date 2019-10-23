REM 射影変換
OPTION ANGLE DEGREES
LET t=10                       ! 仰角
LET v=16                       ! 垂直方向画角の半分
SET COLOR MODE "NATIVE"         ! 24ビットの色(true color)が使えるようにする。
GLOAD "zenkouji.jpg" 
ASK PIXEL SIZE (0,0; 1,1) a,b   ! 図の縦横の長さ(ピクセル単位)を調べる
DIM p(a,b)                      ! 図の大きさに対応する配列要素を用意する。
ASK PIXEL ARRAY (0,1) p         ! 図の各点の色情報を配列に格納する。
CLEAR                           ! 図を消去
SET BITMAP SIZE 401,401            ! ウィンドウの大きさを変更
SET WINDOW -200, 200, -100, 300    ! 座標系を再設定
DRAW grid(100,100)                 ! 座標軸を描く  
LET d=b/2/TAN(v)/COS(t)
LET c=d*SIN(t) 
DIM m(4,4)                         ! 変換を行列で指定する。 
MAT m=IDN
LET m(2,2)=COS(t)
LET m(2,4)=-SIN(t)/d
DRAW pict1 WITH m                  ! 行列を用いて変換して描く 
PICTURE pict1
   MAT PLOT CELLS, IN  -a/2 + 1, c+b/2 ; a/2  , c-b/2 + 1 : p
END PICTURE
END 
 
