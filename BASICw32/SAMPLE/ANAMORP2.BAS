REM 円筒アナモルフォーズ
REM 円筒鏡に写すと元の絵が現れる
OPTION ARITHMETIC NATIVE
SET COLOR MODE "NATIVE"        
GLOAD "zenkouji.JPG"                     ! 元画像
ASK PIXEL SIZE (0,0; 1,1) a,b 
DIM c(a,b)                     
ASK PIXEL ARRAY (0,1) c                  ! 元画像の色情報を配列に取り込む
CLEAR    
LET h = b * 5                            ! 視点の高さ
LET d = h * 1.0                          ! 円筒から視点までの水平距離
LET m = 0                                ! 下部マージン(画像の下部に履かせる下駄)
LET e=(b/a)*(d/h)*1.00         ! 正しい虚像に写る点の位置（鏡面の前方，半径に対する比率）
LET k=1/(2+1/e)              ! 虚像を生成する位置（鏡面の前端から後方，半径に対する比率）                          
LET r0 =SQR(1/(2*k-k^2))*(a/2)*1.00      ! 円筒の半径 
LET width=1000                           ! 描画域の幅（大きめに確保）
LET height=800                           ! 描画域の高さ（大きめに確保）
LET top=200                              ! 円柱の中心を置く位置
SET BITMAP SIZE width+1,height+1 
LET bottom=-height+top    
SET WINDOW -width/2, width/2, bottom , top   
DRAW grid(100,100)  
DRAW circle WITH SCALE(r0)   ! 円筒
LET d2=d-r0+r0*k                             ! 虚像面までの距離 
SET POINT STYLE 1   
FOR x=-width/2 TO width/2 
   LET phi=0
   LET psi=0
   FOR y=bottom TO top 
      LET r=SQR(x^2+y^2)                     ! 描画する点の絶対値
      IF r>r0 THEN
         LET t=ANGLE(x,y) +PI/2                
         IF t>PI THEN LET t=t-2*PI           ! 描画する点の偏角(-π～π)下向きが0
         FOR i=1 TO 2
            LET alpha=(t+psi+phi)/2  
            LET phi=ASIN(r0*SIN(alpha)/d) 
            LET psi=ASIN(r0*SIN(alpha)/r)
         NEXT i
         IF ABS(alpha)<=PI/2 THEN
            WHEN EXCEPTION IN 
               LET rr=r*SIN(alpha-psi)/SIN(alpha)
               LET dd=d*SIN(alpha-phi)/SIN(alpha)
            USE
               LET rr=r-r0
               LET dd=d-r0
            END WHEN
            LET y0=h/(1+dd/rr)
            LET x0=d2*TAN(phi)                       ! 元画像のx座標
            LET y0=h-d2*(h-y0)/(d-r0*COS(alpha-phi)) ! 元画像のy座標
            LET i=ROUND(x0+ (a+1)/2,0)               ! x0に対応する配列添字
            LET j=b-ROUND(y0-m)                      ! y0に対応する配列添字
            IF i>0 AND i<=a AND j>0 AND j<=b THEN
               SET POINT COLOR c(i,j)
               PLOT POINTS : x,y  
            END IF
         END if
      END if
   NEXT y
NEXT x
END
