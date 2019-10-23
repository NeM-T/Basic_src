100 REM 歪み絵              
110 SET TEXT FONT "ＭＳ 明朝",0
120 SET WINDOW -10,10,0,20          
130 DRAW grid0                      ! 1升＝1ｍ×1ｍ
140 DIM m(4,4)                      ! 変換を行列で指定する。 
150 MAT m=IDN
160 LET m(2,2)=10/1.5
170 LET m(2,4)=-1/1.5
180 DRAW pict1 WITH m               ! 行列を用いて変換して描く 
190 PICTURE pict1
200    SET TEXT HEIGHT 0.8  
210    SET TEXT JUSTIFY "CENTER","BOTTOM"         
220    PLOT TEXT ,AT 0,0:"東京"    ! 変換対象画像として文字を描く
230 END PICTURE
240 END 
  
