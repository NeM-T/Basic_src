100 DEF z(x,y)=COS(SQR(x^2+y^2))
110 LET xmin=-10
120 LET xmax=10
130 LET ymin=-10
140 LET ymax=10
150 SET WINDOW xmin, xmax, ymin, ymax
160 SET POINT STYLE 1
170 LET dx=(xmax-xmin)/8                   ! 同一視するドットの間隔
180 LET c=dx/15                            ! zに対する係数
190 FOR i=1 TO 20000
200    LET y= ymin + (ymax - ymin) * RND   ! [ymin,ymax)の任意の点
210    LET x =xmin + (dx + c*z(xmin+dx/2,y)) * RND 
220    DO WHILE x<xmax
230       PLOT POINTS: x,y
240       LET x = x + dx + c*z(x+dx/2,y)
250    LOOP
260 NEXT i
270 END
 
