REM 射影変換
DIM m(4,4)                         ! 変換を行列で指定する。 
MAT m=IDN
LET m(2,4)=1/400
SET COLOR MODE "NATIVE"         ! 24ビットの色(true color)が使えるようにする。
GLOAD "ZENKOUJI.JPG" 
ASK PIXEL SIZE (0,0; 1,1) a,b   ! 図の縦横の長さ(ピクセル単位)を調べる
DIM p(a,b)                      ! 図の大きさに対応する配列要素を用意する。
ASK PIXEL ARRAY (0,1) p         ! 図の各点の色情報を配列に格納する。
SET BITMAP SIZE 421,421         ! ウィンドウの大きさを変更
CLEAR                           ! 図を消去
SET WINDOW -210, 210, -20, 400    ! 座標系を再設定
DRAW grid(100,100)                 ! 座標軸を描く  
DRAW pict1                         ! 原画を描く  
WAIT DELAY 2                       ! 2秒間，休止
CLEAR                              ! 原画を消す
DRAW grid(100,100)
DRAW pict1 WITH m                  ! 行列を用いて変換して描く 
PICTURE pict1
   MAT PLOT CELLS, IN  -a/2 + 1, b ; a/2  , 1 : p
END PICTURE
END

