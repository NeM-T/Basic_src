SET COLOR MODE "NATIVE"         ! 24ビットの色(true color)が使えるようにする。
GLOAD "ZENKOUJI.JPG"
ASK PIXEL SIZE (0,0; 1,1) a,b   ! 図の縦横の長さ(ピクセル単位)を調べる
DIM p(a,b)                      ! 図の大きさに対応する配列要素を用意する。
ASK PIXEL ARRAY (0,1) p         ! 図の各点の色情報を配列に格納する。
CLEAR                           ! 図を消去
SET BITMAP SIZE 501,501         ! ウィンドウの大きさを拡大
SET AREA COLOR COLORINDEX(1,1,1)   ! area colorを白にする。
PLOT AREA : 0,0; 0,1; 1,1; 1,0     ! 全体を白で塗りつぶす。
SET WINDOW 0,500/a, 0,500/a        ! 座標系を再設定
DRAW grid                          ! 座標軸を描く  
DRAW pict1                           
WAIT DELAY 2                       ! 2秒間，休止
PLOT AREA : 0,0; 1,0; 1,b/a; 0,b/a ! 原画を消す
DRAW grid
DRAW pict1 WITH SHEAR(PI/4)*ROTATE(PI/6) 
PICTURE pict1
   MAT PLOT CELLS, IN  0, b/a; 1,0  :p
END PICTURE
END

