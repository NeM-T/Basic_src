! 共分散，相関係数を求める関数定義の例
DECLARE EXTERNAL FUNCTION covariance,correlation
DATA 6,4
DATA 7,6
DATA 8,3
DATA 9,5
DATA 10,7
DIM x(5,2)
MAT READ x
PRINT "共分散";covariance(x,1,2),"相関係数"; correlation(x,1,2)
END
! 以下の関数は統計ライブラリとして利用可能
! 
! 平均
EXTERNAL FUNCTION mean(x(,),n)
! 第n列の平均  
DECLARE NUMERIC k,t
LET t=0
FOR k=LBOUND(x,1) TO UBOUND(x,1)
   LET t=t+x(k,n)
NEXT k
LET mean=t/SIZE(x,1)
END FUNCTION
! 
! 共分散
EXTERNAL FUNCTION covariance(x(,),i,j)
! i列とj列の共分散
DECLARE EXTERNAL FUNCTION mean
DECLARE NUMERIC mi,mj,k,s
LET mi=mean(x,i)
LET mj=mean(x,j)
LET s=0
FOR k=LBOUND(x,1) TO UBOUND(x,1)
   LET s=s+(x(k,i)-mi)*(x(k,j)-mj)
NEXT k
LET covariance=s/SIZE(x,1)
END FUNCTION
! 
! 分散
EXTERNAL FUNCTION variance(x(,),n)
! 第n列の分散
DECLARE EXTERNAL FUNCTION covariance
LET variance=covariance(x,n,n)
END FUNCTION
!
! 標準偏差
EXTERNAL FUNCTION sd(x(,),n)
! 第n列の標準偏差
DECLARE EXTERNAL FUNCTION variance
LET sd=SQR(variance(x,n))
END FUNCTION
!
! 相関係数
EXTERNAL FUNCTION correlation(x(,),i,j)
! i列とj列の相関係数
DECLARE EXTERNAL FUNCTION covariance,sd
LET correlation=covariance(x,i,j)/(sd(x,i)*sd(x,j))
END FUNCTION

