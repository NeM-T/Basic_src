! 充填ジュリア集合
! 複素関数 f(z)=z^2+μ（μ=a+bi）において，
! 複素数の列{z(n)}を z(n+1)=f(z(n)) によって定める。
! そのとき，{z(n)｜n=1,2,3,…}が有界となる初期値z(0)の集合。

OPTION ARITHMETIC COMPLEX
LET a=-0.2       ! 数値例                
LET b=0.75       ! 数値例
!  INPUT a,b      ! 定数項μを入力するときは，行頭の!を削除する。    
LET mu=COMPLEX(a,b)
LET left = -1.4                    ! left                 
LET right = 1.4                    ! right               
LET h = (right - left)             ! height
SET WINDOW left,right,-h/2,h/2
DRAW axes    
ASK PIXEL SIZE(left,-h/2;right,h/2) px,py     
LET px=px-1
LET py=py-1
SET POINT STYLE 1
FOR u= left TO right step (right-left)/px                               
   FOR v = -h/2 to h/2 step h/py                            
      LET z=COMPLEX(u,v)                                
      FOR n = 1 TO 1000                   !最大繰り返し回数                         
         LET z=z^2+mu                           
         IF ABS(z)>2 THEN EXIT FOR        !発散の判定
      NEXT n                                  
      IF n>1000 THEN PLOT POINTS: u,v
   NEXT v                                      
NEXT u                                        
END                                             

