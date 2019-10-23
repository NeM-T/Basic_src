100 ! ìÒçÄï™ïz B(n,p)
110 LET n=30
120 LET p=1/6
130 SET WINDOW -1,n+1,-0.04,1
140 DRAW AXES
150 FOR x=0 TO n
160    LET Prob=Comb(N,x)*p^x*(1-p)^(n-x)
170    PLOT LINES: x-0.5,0 ; x-0.5,Prob ; x+0.5,Prob ; x+0.5,0
180 NEXT x
190 END
