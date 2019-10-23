! 平均，分散，標準偏差を求める関数定義の例
DECLARE EXTERNAL FUNCTION mean, variance, sd
DATA 1,2,3,4,5
DIM x(5)
MAT READ x
PRINT "平均";mean(x),"分散";variance(x),"標準偏差";sd(x)
END
! 以下の関数は統計ライブラリとして利用できる
! 平均
EXTERNAL FUNCTION mean(a())
DECLARE NUMERIC i,t
LET t=0
FOR i=LBOUND(a) TO UBOUND(a)
   LET t=t+a(i)
NEXT i
LET mean=t/SIZE(a)
END FUNCTION
!
! 分散 
EXTERNAL FUNCTION variance(a())
DECLARE EXTERNAL FUNCTION mean
DECLARE NUMERIC i,s,m
LET m=mean(a)
LET s=0
FOR i=LBOUND(a) TO UBOUND(a)
   LET s=s+(a(i)-m)^2
NEXT i
LET variance=s/SIZE(a)
END FUNCTION
!
! 標準偏差
EXTERNAL FUNCTION sd(a())
DECLARE EXTERNAL FUNCTION variance
LET sd=SQR(variance(a))
END FUNCTION

