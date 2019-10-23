! シルピンスキーのガスケット
! 正三角形ABCの各頂点を中心とする1/2倍の縮小写像をそれぞれ，f1,f2,f3とします。
! f1,f2,f3に対して，f1(D)∪f2(D)∪f3(D)=D となる自己相似図形をシルピンスキーのガスケットといいます。
! このプログラムは，上の定義をほとんどそのままに実行してシルピンスキーのガスケットの近似解を描きます。
! このプログラムでは，３頂点の座標をA(0,0)，B(2,0)，C(1,SQR(3)) と仮定します。
PICTURE gasket(n)
   IF n=0 THEN 
      PLOT AREA: 0,0; 2,0; 1,SQR(3)
   ELSE
      DRAW gasket(n-1) WITH SCALE(1/2) 
      DRAW gasket(n-1) WITH SHIFT(-2,0)*SCALE(1/2)*SHIFT(2,0)
      DRAW gasket(n-1) WITH SHIFT(-1,-SQR(3))*SCALE(1/2)*SHIFT(1,SQR(3))
   END IF
END PICTURE
SET WINDOW 0,2,0,2
FOR n=0 TO 10
   CLEAR
   DRAW gasket(n)
   WAIT DELAY 1
NEXT n
END