! MAT GET POINTに不定長配列を指定すると，
! マウス左ボタンが押されてる間，点の座標を取得し続ける。
! ただし，配列要素が足りなくなりと，一般の警告音を発して 座標の取得をやめる。
DIM a(100,2)
MAT GET POINT: a(?,)
MAT PLOT LINES: a
END

