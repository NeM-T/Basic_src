100 ! コッホ曲線
110 ! 底辺ABの長さが3で高さがsqr(3)/2の二等辺三角形CABで，頂点Aを不動点として，点Bを点Cに移し，点Cを線分AB上の点に移すような相似変換をf1，
120 ! 頂点Bを不動点として，点Aを点Cに移し，点Cを線分BA上の点に移すような相似変換をf2とするとき，
130 ! f1,f2に対して，f1(D)∪f2(D)=D となる自己相似図形Dをコッホ曲線といいます（曲線という名前がついていますが，定義自体からは曲線かどうかわかりません。）
140 ! このプログラムは，上の定義をほとんどそのままに実行してコッホ曲線の近似解を描きます。
150 ! このプログラムでは，３頂点の座標をA(0,0)，B(3,0)，C(3/2,SQR(3)/2) と仮定します。
160 ! 縮小写像f1,f2の倍率rを270行で計算しています。線分ACの長さを線分ABの長さで割って求めています。
170 ! 再帰呼び出しの度に絵Kochの引数nを１だけ減らし，n=0になったら三角形ABCを書きます。
180 ! 参考文献 「カオスとフラクタル入門」山口昌哉 （放送大学印刷教材）ISBN4-595-56791-X
190 PICTURE Koch(n)
200    IF n=0 THEN 
210       PLOT AREA : 0,0; 3,0; 3/2, SQR(3)/2; 0,0
220    ELSE
230       DRAW Koch(n-1) WITH SCALE(1,-1)*ROTATE(alfa)*SCALE(r) 
240       DRAW Koch(n-1) WITH SHIFT(-3,0)*SCALE(1,-1)*ROTATE(-alfa)*SCALE(r)*SHIFT(3,0)
250    END IF
260 END PICTURE
270 LET r=SQR((3/2)^2+(SQR(3)/2)^2) / 3
280 LET alfa=ANGLE(3/2,SQR(3)/2)
290 SET WINDOW 0,3,0,3
300 SET POINT STYLE 1
310 FOR n=0 TO 12
320    CLEAR
330    DRAW Koch(n)
340    WAIT DELAY 1
350 NEXT n
360 END
