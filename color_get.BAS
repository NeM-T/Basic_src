!クリックした座標のRGBをprint(強度は0～1、256段階)
!終了の仕方は中断を押す
SET COLOR mode "native"
INPUT PROMPT "画像ファイルの絶対パス": path$
gload path$
ASK PIXEL SIZE (0,0;1,1) a,b
SET WINDOW 0,a,0,b
DIM g(a,b)
FOR y=1 TO b
   FOR x=1 TO a
      ASK PIXEL VALUE (x,y) g(x,y)
   NEXT x
NEXT y

INPUT PROMPT "画像サイズの倍率指定":multi
SET bitmap SIZE a*multi,b*multi
SET WINDOW 0,a,0,b
MAT PLOT CELLS , IN 0,0; a,b : g
DO 
   GET POINT : x, y
   ASK PIXEL VALUE (x, y) color_num
   ASK COLOR MIX (color_num) r1, g1, b1
   PRINT r1, g1, b1
LOOP 
END
