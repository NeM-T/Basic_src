REM 平面全体を単位円に移す変換
SET COLOR MODE "NATIVE"         ! 24ビットの色(true color)が使えるようにする。
GLOAD "zenkouji.JPG" 
ASK PIXEL SIZE (0,0; 1,1) a,b   ! 図の縦横の長さ(ピクセル単位)を調べる
DIM p(a,b)                      ! 図の大きさに対応する配列要素を用意する。
ASK PIXEL ARRAY (0,1) p         ! 図の各点の色情報を配列に格納する。
SET BITMAP SIZE 1001,1001         ! ウィンドウの大きさを変更
CLEAR                           ! 図を消去
SET POINT STYLE 1
SET WINDOW -1, 1, -1, 1         ! 座標系を再設定
FOR i=PIXELx(-1) TO PIXELx(1)
   FOR j=PIXELy(-1) TO PIXELy(1)
      LET x=PROBLEMx(i)               ! 描画点のx座標
      LET y=PROBLEMy(j)               ! 描画点のx座標
      LET r=SQR(x^2+y^2)
      IF r<1 THEN
         LET x0=x/SQR(1-r^2)                ! 元絵におけるx座標
         LET y0=y/SQR(1-r^2)                ! 元絵におけるy座標
         LET u=MOD(ROUND(x0*2*a), 2*a)-a       ! -a～a-1 に変換
         LET v=MOD(ROUND(y0*2*b), 2*b)-b       ! -b～b-1 に変換
         IF u<0 THEN LET u=-u ELSE LET u=u+1   ! 1～a
         IF v<0 THEN LET v=-v ELSE LET v=v+1   ! 1～b
         SET POINT COLOR p(u,v)
         PLOT POINTS: x,y
      END if
   NEXT j
NEXT i
END


