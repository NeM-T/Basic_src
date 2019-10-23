! 一筆書き
! 最初に頂点の数を入力（2以上25以下）
! 次に，辺を端点の数字をコンマで区切って入力
! たとえば，頂点2と頂点3を結ぶ辺は，2,3 と入力
! ひとつの辺を入力するごとにEnterキーを押す
! 頂点1を含む辺を必ず含める
! 同じ点を端点とする辺（たとえば,3,3）は不可
! 同じ2点を複数回指定しても2点を結ぶ辺は1本
! 最後に　0,0　を入力
! 奇点が4個以上ある場合や非連結の場合は，辺を追加入力することができる
!
DECLARE EXTERNAL SUB  Euler.Draw_Start, Euler.Draw_Name, Euler.Draw_Path
DECLARE EXTERNAL SUB  Euler.Build_Circuit, Euler.Build_Trail
DECLARE EXTERNAL FUNCTION Euler.Test_Connected, Euler.Ix_OddPoint, Euler.N_OddPoints
DECLARE EXTERNAL NUMERIC Euler.N_Max  ! 頂点の個数の最大値≦25
DIM m(25,25)
SET ECHO "OFF"
DO
   INPUT PROMPT "頂点の数(2以上25以下)":N_Max 
LOOP UNTIL N_Max>=2 AND N_Max<=25 
MAT m=ZER(N_Max,N_Max)
!
SET WINDOW -1.2,1.2,-1.2,1.2
SET TEXT JUSTIFY "CENTER","HALF"
FOR i=1 TO N_MAX
   CALL Draw_Name(i)
NEXT i
! 
SET LINE COLOR 7 
DO
   INPUT a,b
   IF a>0 AND b>0 THEN
      IF a<>b THEN
         CALL Add(m,a,b)
         CALL Draw_Path(a,b)
      ELSE
         PAUSE "異なる2点を結ぶ辺のみ入力できます"
      END IF
   ELSE
      LET N_Odd=N_OddPoints(m)
      IF N_Odd>2 THEN 
         PAUSE "奇点が" & STR$(N_Odd) &"個ある"
      ELSEIF Test_Connected(m,1)=1 THEN
         PAUSE "非連結"
      ELSE 
         EXIT DO
      END IF
   END IF
LOOP
! 
SET LINE COLOR 1
LET a=Ix_OddPoint(m,1)
IF a=0 THEN           ! 偶点のみ
   CALL Draw_Start(1)
   CALL Build_Circuit(m,1)
ELSE                  ! 奇点あり 
   CALL Draw_Start(a)
   LET b=Ix_OddPoint(m,a+1)
   CALL Build_Trail(m,a,b)
END IF 
END
! 
EXTERNAL SUB Add(m(,),a,b)
LET m(a,b)=1
LET m(b,a)=1
END SUB
! 
EXTERNAL SUB Del(m(,),a,b)
LET m(a,b)=0
LET m(b,a)=0
END SUB
! 
MODULE Euler          ! 大域変数 N_Max を管理するのが目的
PUBLIC NUMERIC N_Max
PUBLIC SUB  Draw_Start, Draw_Name, Draw_Path
PUBLIC SUB  Build_Circuit, Build_Trail
PUBLIC FUNCTION Test_Connected, Ix_OddPoint, N_OddPoints
SHARE FUNCTION degree, Ix_Any_Vertex
! 
EXTERNAL FUNCTION Test_Connected(m(,),a)
! 点aの連結成分が全体と一致すれば0,そうでないなら1
   DIM p(25,25),q(25,25)
   MAT p=ZER(N_Max,N_Max)
   MAT q=IDN(N_Max)
   FOR i=1 TO N_Max
      MAT q=q*m
      MAT p=p+q
   NEXT i
   LET t=0
   FOR i=2 TO N_Max
      IF p(1,i)=0 THEN 
         LET t=1
      END IF
   NEXT i
   LET  Test_Connected=t 
END FUNCTION
! 
EXTERNAL SUB Build_Trail(m(,),a,b)
! a,bが奇点であるとき，aからbに至る小道を作図
   IF m(a,b)=1 THEN
      CALL del(m,a,b)
      CALL Build_Circuit(m,a)
      CALL Draw_Arrow(a,b)
      CALL Build_Circuit(m,b)
   ELSE
      LET c=Ix_Any_Vertex(m,b)
      CALL del(m,b,c)
      CALL Build_Trail(m,a,c)
      CALL Draw_Arrow(c,b)
      CALL Build_Circuit(m,b)
   END IF
END SUB
! 
EXTERNAL SUB build_circuit(m(,),a)
! mは奇点を持たないものとする
! aから始まりaで終わる回路を描く
   LET b=Ix_Any_Vertex(m,a)
   IF b>0 THEN
      CALL Draw_Arrow(a,b)
      CALL Del(m,a,b)
      CALL Build_Trail(m,b,a)
   END IF
END SUB
! 
EXTERNAL FUNCTION Ix_Any_Vertex(M(,),a)
! aと辺を共有する頂点のうち最小番号のもの
! 存在しなければ0
   LET t=0
   FOR i=1 TO N_Max
      IF m(a,i)=1 THEN 
         LET t=i
         EXIT FOR
      END IF
   NEXT i
   LET Ix_Any_Vertex=t
END FUNCTION
! 
EXTERNAL FUNCTION degree(m(,),n)
   LET t=0
   FOR i=1 TO N_Max
      IF m(n,i)=1 THEN LET t=t+1
   NEXT i
   LET degree=t
END FUNCTION 
! 
EXTERNAL FUNCTION N_OddPoints(m(,))
   LET t=0
   FOR i=1 TO N_Max
      IF MOD(degree(m,i),2)=1 THEN LET t=t+1
   NEXT i
   LET N_OddPoints=t
END FUNCTION
! 
EXTERNAL FUNCTION Ix_OddPoint(m(,),k)
   FOR i=k TO N_Max
      IF MOD(degree(m,i),2)=1 THEN
         LET Ix_OddPoint=i
         EXIT FUNCTION
      END IF
   NEXT i
   LET Ix_OddPoint=0
END FUNCTION
! 
EXTERNAL SUB Draw_Start(a)
   OPTION ANGLE DEGREES
   LET t=a*360/N_Max
   LET x2=COS(t)
   LET y2=SIN(t)
   SET AREA COLOR 4
   DRAW arrowhead WITH ROTATE(ANGLE(-x2,-y2))*SHIFT(x2,y2)
   SET AREA COLOR 1
END SUB
! 
EXTERNAL SUB Draw_Name(a)
   OPTION ANGLE DEGREES
   LET t=a*360/N_Max
   LET x2=1.12*COS(t)
   LET y2=1.12*SIN(t)
   PLOT TEXT ,AT x2,y2: STR$(a)
   SET AREA COLOR 1
END SUB
! 
EXTERNAL SUB Draw_Path(a1,a2)
   OPTION ANGLE DEGREES
   LET t1=a1*360/N_Max
   LET t2=a2*360/N_Max
   PLOT LINES: COS(t1),SIN(t1) ; COS(t2),SIN(t2)
END SUB
! 
EXTERNAL SUB Draw_Arrow(a1,a2)
   OPTION ANGLE DEGREES
   PRINT a1;a2
   LET t1=a1*360/N_Max
   LET t2=a2*360/N_Max
   LET x1=COS(t1)
   LET y1=SIN(t1)
   LET x2=COS(t2)
   LET y2=SIN(t2)
   PLOT LINES: x1,y1 ; x2,y2
   DRAW arrowhead WITH ROTATE(ANGLE(x2-x1,y2-y1))*SHIFT(x2,y2)
END SUB
! 
END MODULE 
! 
EXTERNAL PICTURE arrowhead
PLOT AREA : 0,0; -0.1,0.02; -0.1,-0.02
END PICTURE
