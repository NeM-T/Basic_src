100 ! マウスで指定した点から直線ax+by+c=0に垂線を引く．
110 INPUT a,b,c
120 LET s=10
130 SET WINDOW -s,s,-s,s
140 IF b<>0 THEN 
150    PLOT LINES: -s,(-a*(-s)-c)/b ; s,(-a*s-c)/b
160 ELSE
170    PLOT LINES: -c/a,-s; -c/a,s
180 END IF
190 GET POINT: x1,y1
200 LET k=-(a*x1+b*y1+c)/(a^2+b^2)
210 LET x2=x1+a*k
220 LET y2=y1+b*k
230 PLOT LINES:x1,y1; x2,y2
240 END
