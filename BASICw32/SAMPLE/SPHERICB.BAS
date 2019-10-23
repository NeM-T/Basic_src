REM spherical triangle ãÖñ éOäpå`
REM ãÖñ éOäpå`ÇâÒì]ÇµÇƒï\é¶Ç∑ÇÈ
OPTION ARITHMETIC NATIVE
OPTION ANGLE DEGREES
LET theta0=-125
LET z0=10
REM zé≤ÇÃÇ‹ÇÌÇËÇ…theta0ìxâÒì]ÇµÅC
REM xé≤ÇÃÇ‹ÇÌÇËÇ…theta1ìxâÒì]ÇµÇΩsphreÇÅC
REM ì_(0,0,z0)Ç©ÇÁå©ÇΩÇÊÇ§Ç…ï`Ç≠ÅB
DIM p(4,4)         ! ì_ 0,0,z0ÇíÜêSÇ∆Ç∑ÇÈéÀâe               
MAT p=IDN
LET p(3,4)=-1/z0
DIM rotx(4,4)      ! xé≤ÇÃÇ‹ÇÌÇËÇÃ-90ÅãâÒì]
MAT rotx=IDN
LET rotx(2,2)=COS(-90)
LET rotx(2,3)=SIN(-90)
LET rotx(3,2)=-SIN(-90)
LET rotx(3,3)=COS(-90)

ASK PIXEL SIZE (0,1;1,0) a,b
DIM sp(a,b)

SET COLOR mode "NATIVE"
SET WINDOW -2, 2, -2, 2

DRAW sphere0 WITH ROTATE(theta0)  * rotx 
ASK PIXEL ARRAY (-2,2) sp
FOR theta1 =-90 TO 0 STEP 0.5   ! ãÖëÃÇâÒì]Ç≥ÇπÇÈ
   SET DRAW mode hidden
   CLEAR 
   MAT PLOT CELLS ,IN -2,2; 2,-2: sp
   LET rotx(2,2)=COS(theta1)
   LET rotx(2,3)=SIN(theta1)
   LET rotx(3,2)=-SIN(theta1)
   LET rotx(3,3)=COS(theta1)
   DRAW spherical WITH ROTATE(theta0) * rotx  *  p
   SET DRAW mode explicit
   !WAIT DELAY 0.02
NEXT theta1
END 


! íPà ãÖÇï`Ç≠
EXTERNAL PICTURE sphere0
OPTION ARITHMETIC NATIVE
OPTION ANGLE DEGREES

DIM sz(4,4),ry(4,4)
MAT READ sz
DATA 1,0,0,0
DATA 0,1,0,0
DATA 0,0,1,0
DATA 0,0,1,1
MAT READ ry
DATA  0, 0,-1, 0
DATA  0, 1, 0, 0
DATA  1, 0, 0, 0
DATA  0, 0, 0, 1
! ãÖñ Çï`Ç≠
SET AREA STYLE "SOLID"
FOR t=0 TO 180 
   FOR p=0 TO 359 
      LET ry(1,3)=-SIN(t)
      LET ry(3,1)=SIN(t)
      LET ry(1,1)=COS(t)
      LET ry(3,3)=COS(t)  
      DRAW Trapezoid(t) WITH sz*ry*ROTATE(p)
   NEXT p
NEXT t
 
PICTURE Trapezoid(t)      ! tÇÕìVí∏äp
   DIM N(3)
   CALL makeNormal(N)
   IF N(3)>0 THEN     ! äOë§Ç™éËëOÇ»ÇÁñ Çï`Ç≠
      CALL setBrightness(N)
      PLOT AREA: -PI/360, -SIN(t-0.5)*PI/360; PI/360,-SIN(t+0.5)*PI/360; PI/360,SIN(t+0.5)*PI/360; -PI/360,SIN(t-0.5)*PI/360  
   END IF 
END PICTURE
 
END PICTURE

EXTERNAL PICTURE spherical  
OPTION ARITHMETIC NATIVE
OPTION ANGLE DEGREES

DIM sz(4,4),ry(4,4),rx(4,4)
MAT READ sz
DATA 1,0,0,0
DATA 0,1,0,0
DATA 0,0,1,0
DATA 0,0,1,1
MAT READ ry
DATA  0, 0,-1, 0
DATA  0, 1, 0, 0
DATA  1, 0, 0, 0
DATA  0, 0, 0, 1
MAT READ rx
DATA  1, 0, 0, 0
DATA  0, 0, 1, 0
DATA  0,-1, 0, 0
DATA  0, 0, 0, 1

! é≤Çï`Ç≠ 
SET LINE COLOR COLORINDEX(0,0,0)
SET TEXT FONT "Times New Roman Italic" ,0
DRAW axis("x") 
DRAW axis("y") WITH ROTATE(90)
LET ry(1,3)=-SIN(-90)
LET ry(3,1)=-ry(1,3)
LET ry(1,1),ry(3,3)=COS(-90)
DRAW axis("z") WITH ry  ! zé≤
 
PICTURE axis(s$)
   SET LINE STYLE 3
   PLOT LINES:0,0; 1,0
   SET LINE STYLE 1
   PLOT LINES: 1,0; 1.75,0
   PLOT LABEL ,AT 1.75,0:s$
END PICTURE 
 
! ãÖñ éOäpå`Çï`Ç≠
LET AA=67   ! Å⁄AÇÃëÂÇ´Ç≥
LET b=63    ! ï”CAÇÃí∑Ç≥
LET c=78    ! ï”ABÇÃí∑Ç≥
SET LINE COLOR COLORINDEX(1,0,0)
SET AREA COLOR COLORINDEX(0.5, 0, 0)
SET AREA STYLE "HATCH"
SET AREA STYLE index 3
DRAW arc(c) WITH ry*ROTATE(-90)
SET LINE COLOR COLORINDEX(0,1,0)
SET AREA COLOR COLORINDEX(0, 0.5, 0)
SET AREA STYLE index 4
DRAW arc(b) WITH ry*ROTATE(-90)*ROTATE(AA)
SET LINE COLOR COLORINDEX(0,0,1)
SET AREA COLOR COLORInDEX(0,0,0.5)
SET AREA STYLE index 2
LET a=ACOS(SIN(c)*SIN(b)*COS(AA)+COS(c)*COS(b))
LET BB=ACOS((COS(b)-COS(c)*COS(a))/(SIN(c)*SIN(a)))
DIM m(4,4)
MAT m=IDN
MAT m=m*ROTATE(90-c) *rx
LET ry(1,3)=SIN(-90+c)
LET ry(3,1)=-ry(1,3)
LET ry(1,1),ry(3,3)=COS(-90+c)
MAT  m=m*ry
LET rx(2,3)=SIN(-BB)
LET rx(3,2)=-rx(2,3)
LET rx(2,2),rx(3,3)=COS(-BB) 
MAT m=m*rx
LET ry(1,3)=-ry(1,3)
LET ry(3,1)=-ry(3,1)
MAT m=m*ry
DRAW arc(a) WITH m
 
DIM pts(0 TO 361,2)
PICTURE arc(t1)
   FOR t=0 TO t1
      LET pts(t,1)=COS(t)
      LET pts(t,2)=SIN(t)
   NEXT t
   LET pts(t1+1,1)=0
   LET pts(t1+1,2)=0
   MAT PLOT AREA,LIMIT t1+2: pts
   MAT PLOT LINES,LIMIT t1+1: pts
END PICTURE
 
END PICTURE

! ïœä∑Ç≥ÇÍÇΩç¿ïWånÇ…Ç®ÇØÇÈñ@ê¸ÉxÉNÉgÉãÇãÅÇﬂÇÈ
EXTERNAL SUB makeNormal(N())
OPTION ARITHMETIC NATIVE
DIM m(4,4),A(4),B(4),C(4)
MAT m=TRANSFORM
MAT READ A
DATA 0,0,0,1
MAT READ B
DATA 1,0,0,1
MAT READ C
DATA 1,1,0,1
MAT A=A*M
MAT B=B*M
MAT C=C*M
MAT A=(1/A(4))*A
MAT B=(1/B(4))*B
MAT C=(1/C(4))*C
MAT REDIM A(3)
MAT REDIM B(3)
MAT REDIM C(3)
MAT A=B-A
MAT B=C-B
MAT N=CROSS(A,B)
END SUB 

EXTERNAL SUB setBrightness(N())
OPTION ARITHMETIC NATIVE
DIM A(3)
MAT READ A      ! åıåπÇÃå¸Ç´
DATA -4,5,3
LET s=DOT(A,N)/(SQR(DOT(A,A))*SQR(DOT(N,N)))
LET s=(0.8*s+1)/2
SET AREA COLOR COLORINDEX(s,s,s)
END SUB

