! draw文は絵定義を実行する。そのとき，shift,rotate,scaleなどの変形を指定することもできる。
PICTURE arrow
   PLOT AREA: 0,0 ; 3,0 ; 2,1 ; 2,0.5 ; 0,0.5
END PICTURE
SET WINDOW -4,4,-4,4
DRAW arrow                                  ! 絵定義arrowを実行する
DRAW arrow WITH rotate(pi/3)*shift(-2,1)    ! pi/3回転し、さらに-2,1だけ平行移動して描く。
END


