! f(z)=λ sin z の反復が有界となる複素数λの集合
! 250回，反復し，その間に桁あふれのエラーにならなければ有界と判定している。
! 描画終了後，マウスで正方形領域を指定すると，その範囲を拡大して描画する。
! マウス左ボタンを押しながらマウスポインタを動かし，指定したい正方形になったら左ボタンを離す。
! マウスポインタを移動しないでクリックしただけのときは終了。
OPTION ARITHMETIC COMPLEX
LET i=sqr(-1)
DEF sin(z)=(EXP(i*z)-EXP(-i*z))/(2*i)
ASK PIXEL SIZE(0,0;1,1) px,py
LET px=px-1
LET py=py-1
SET POINT STYLE 1

LET left=0
LET right=2
LET bottom=0
LET top=2

DO 
   CLEAR
   SET WINDOW left,right,bottom,top    
   DRAW grid
   FOR u= left TO right STEP (right-left)/px                               
      FOR v = bottom TO top STEP (top-bottom)/py
         LET Lambda=COMPLEX(u,v)                            
         LET z=0.5             ! 初期値                             
         WHEN EXCEPTION IN                        
            FOR n = 1 TO 250                        
               LET z=lambda*sin(z)   
            NEXT n                                  
            PLOT POINTS: u,v
         USE
         END WHEN                           
      NEXT v                                      
   NEXT u   
   PAUSE "拡大する範囲を指定してください"                                     
   CALL GetSquare(left,top,right,bottom)      ! 正方形領域を取得する 
   IF left=right  THEN EXIT DO           ! 正方形の大きさが0だと終了 
LOOP
END                                             

EXTERNAL SUB GetSquare(l,t,r,b)
OPTION ARITHMETIC COMPLEX
ASK LINE STYLE LStyle
SET DRAW MODE NOTXOR
SET LINE STYLE 2
DO 
   MOUSE POLL l,t,i,j
LOOP WHILE i=0
LET l0=l
LET t0=t
LET r0=l0
LET b0=t0
PLOT LINES: l0,t0; l0,b0; r0,b0; r0,t0; l0,t0
DO WHILE i=1
   MOUSE POLL r,b,i,j
   LET w=r-l
   LET h=t-b
   IF ABS(h) < ABS(w) THEN
      LET b=t-SGN(h)*ABS(w)
   ELSE 
      LET r=l+SGN(w)*ABS(h)
   END IF
   IF l0<>l OR r0<>r OR b0<>b OR t0<>t THEN
      PLOT LINES: l0,t0; l0,b0; r0,b0; r0,t0; l0,t0
      PLOT LINES: l,t; l,b; r,b; r,t; l,t
      LET l0=l
      LET t0=t
      LET r0=r
      LET b0=b
   END IF
LOOP
WAIT DELAY 1
PLOT LINES: l,t; l,b; r,b; r,t; l,t
SET DRAW MODE OVERWRITE
SET LINE STYLE LStyle
IF l>r THEN SWAP l,r
IF b>t THEN SWAP b,t
END SUB
