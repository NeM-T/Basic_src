! Dragon集合は，点Aを中心とする1/sqr(2)倍の縮小とπ/4ラジアンの回転の合成写像f1と，
! 点Bを中心とする1/sqr(2)倍の縮小とπ/4ラジアンの回転の合成写像f2とによって，
! f1(D)∪f2(D)=Dという条件で定まる自己相似図形です。
! このプログラムは，この定義を忠実に近似してdragon集合を描きます。
! 点Aを原点，点Bを(1,0)と仮定しています。
! なお，この集合は，平面を敷き詰めることのできる図形としても有名です。
! 参考文献 
!「カオスとフラクタル入門」山口昌哉 （放送大学印刷教材）
!「コンピュータによるグラフィックス」片桐重延・白石和夫（東京電気大学出版局） 
PICTURE D(n)
   IF n=20 THEN        !  bitmapを拡大したときはこの数値を大きくする。
      PLOT POINTS: 0,0
   ELSE
      DRAW D(n+1) WITH ROTATE(alfa)*SCALE(r)
      DRAW D(n+1) WITH SHIFT(-1,0)*ROTATE(alfa)*SCALE(r)*SHIFT(1,0)
   END IF
END PICTURE
SET WINDOW -1/2,3/2,-1,1
DRAW axes
SET POINT STYLE 1
LET alfa=PI/4
LET r=1/SQR(2)
DRAW D(1)
END

