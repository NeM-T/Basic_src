! 頂点の次数列がd1,d2,d3,…,dnであるようなグラフを生成する。
! 参考文献　「やさしいグラフ論」（田沢、白倉、田村著　現代数学社）第２章
DIM d(20)
MAT INPUT d(?)
CALL construct(d)
END

EXTERNAL SUB construct(d())
OPTION ANGLE DEGREES
DIM c(20),x(20)
LET n=UBOUND(d)
MAT c=d
MAT x=d
MAT PRINT d;
CALL sort(x)
IF d(x(1))>0 THEN
  IF d(x(1))+1>n or d(x(d(x(1))+1))=0 THEN
    PRINT "impposible"
    STOP
  ELSE
    LET c(x(1))=0
    FOR i=2 TO d(x(1))+1
      LET c(x(i))=c(x(i))-1
    NEXT i
    CALL construct(c)
  END IF
  FOR i=2 TO d(x(1))+1
    CALL path(x(1),x(i))
  NEXT i
ELSE
  SET WINDOW -1.2,1.2,-1.2,1.2
END IF  
SUB path(x1,x2)
  LET t1=x1*360/n
  LET t2=x2*360/n
  PLOT LINES: COS(t1),SIN(t1) ; COS(t2),SIN(t2)
END SUB
END SUB

EXTERNAL SUB sort(x())
DIM d(20)
LET n=UBOUND(x)
MAT d=x
FOR i=1 TO n
  LET x(i)=i
NEXT i
FOR i=n-1 TO 1 STEP -1
  FOR j=1 TO i
    IF d(x(j))<d(x(j+1)) THEN
      LET t=x(j)
      LET x(j)=x(j+1)
      LET x(j+1)=t
    END IF
  NEXT j
NEXT i
END SUB 




