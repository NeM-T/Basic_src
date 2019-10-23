! MAT PLOT CELLSは，長方形の対角位置にある頂点を指定して，
! 長方形を2次元配列で指定された色に塗る。
! MAT PLOT CELLSを絵定義中に書くと，DRAW文で変形することができる。

DECLARE EXTERNAL PICTURE p
OPTION BASE 0
DIM a(3,3)
FOR i=0 TO 3
   FOR j=0 TO 3
      LET  a(i,j)=1+i+j*4
   NEXT j
NEXT i 
SET WINDOW -2,2,-2,2
DRAW grid
DRAW p 
WAIT DELAY 1.5   !　1.5秒，休止
CLEAR
DRAW grid
DRAW p WITH SHEAR(pi/6)*ROTATE(pi/10)
PICTURE p
   MAT PLOT CELLS,IN 0,1;1,0 :a  
END PICTURE
END

